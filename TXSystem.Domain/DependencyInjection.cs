using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using NeerCore.DependencyInjection.Extensions;

namespace TXSystem.Domain;

public static class DependencyInjection
{
    public static void AddSqlServerDatabase(this IServiceCollection services, IConfiguration configuration)
    {
        services.AddAllServices();
    }
}