using NeerCore.Logging;
using NeerCore.Logging.Extensions;
using NLog;
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
    builder.Services.AddControllersWithViews();
}

static void ConfigureWebApp(WebApplication app)
{
    // Configure the HTTP request pipeline.
    if (!app.Environment.IsDevelopment())
    {
        app.UseExceptionHandler("/home/error");
        // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
        app.UseHsts();
    }

    app.UseStaticFiles();
    app.UseRouting();

    app.MapControllerRoute(
        name: "default",
        pattern: "{controller=home}/{action=index}/{id?}");
}

static void InstallDatabase(IHost app)
{
    // Task.Run(() =>
    // {
    using var scope = app.Services.CreateScope();
    var sqlService = scope.ServiceProvider.GetRequiredService<SqlFileService>();
    sqlService.InstallDatabaseAsync().Wait();
    // });
}