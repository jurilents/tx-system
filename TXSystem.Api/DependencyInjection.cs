using NeerCore.Api.Extensions;
using Swashbuckle.AspNetCore.SwaggerGen;
using TXSystem.Api.Filters;
using TXSystem.Api.Swagger;
using TXSystem.Api.Swagger.Filters;

namespace TXSystem.Api;

public static class DependencyInjection
{
    public static void AddWebApi(this IServiceCollection services, IConfiguration configuration)
    {
        services.Configure<SwaggerGenOptions>(options =>
        {
            options.CustomOperationIds(NSwagEndpointNameFactory.Create);
            options.DocumentFilter<ResponsesFilter>();
            options.EnableAnnotations();
        });

        services.AddNeerApiServices();
        services.AddNeerControllers()
            .AddMvcOptions(options => options.Filters.Add<SuccessStatusCodesFilter>());
    }
}