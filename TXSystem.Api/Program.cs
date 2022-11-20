using NeerCore.Api;
using NeerCore.Api.Extensions;
using NeerCore.Api.Extensions.Swagger;
using NeerCore.Logging;
using NeerCore.Logging.Extensions;
using NLog;
using TXSystem.Api;
using TXSystem.Domain;

var logger = LoggerInstaller.InitFromCurrentEnvironment();

try
{
    var builder = WebApplication.CreateBuilder(args);
    logger.Debug("Configuring application builder");
    ConfigureBuilder(builder);
    var app = builder.Build();
    logger.Info("Syncing database state");
    InstallDatabase(app);
    logger.Debug("Configuring web application");
    ConfigureWebApp(app);

    app.Run();
}
catch (Exception e)
{
    logger.Fatal(e);
}
finally
{
    logger.Info("Application is now stopping");
    LogManager.Shutdown();
}

// ==========================================

static void ConfigureBuilder(WebApplicationBuilder builder)
{
    builder.Logging.ConfigureNLogAsDefault();

    builder.Services.AddSqlServerDatabase(builder.Configuration);
    builder.Services.AddWebApi(builder.Configuration);
}

static void ConfigureWebApp(WebApplication app)
{
    if (app.Configuration.GetSwaggerSettings().Enabled)
        app.UseCustomSwagger();

    app.UseCors(CorsPolicies.AcceptAll);
    app.UseHttpsRedirection();

    app.UseRequestLocalization();
    app.UseCustomExceptionHandler();

    app.UseAuthentication();
    app.UseAuthorization();

    app.MapControllers();
}

static void InstallDatabase(IHost app)
{
    Task.Run(() =>
    {
        using var scope = app.Services.CreateScope();
        var sqlService = scope.ServiceProvider.GetRequiredService<SqlFileService>();
        sqlService.InstallDatabaseAsync().Wait();
    });
}