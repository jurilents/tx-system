// using NeerCore.Api.Extensions;
// using Swashbuckle.AspNetCore.SwaggerGen;
// using TXSystem.Api.Swagger;
// using TXSystem.Api.Swagger.Filters;
//
// namespace TXSystem.Api;
//
// public static class DependencyInjection
// {
//     public static void AddWebApi(this IServiceCollection services)
//     {
//         services.Configure<SwaggerGenOptions>(options =>
//         {
//             options.CustomOperationIds(NSwagEndpointNameFactory.Create);
//             options.DocumentFilter<ResponsesFilter>();
//         });
//
//         services.AddNeerApiServices();
//         services.AddNeerControllers();
//     }
// }