using Microsoft.Extensions.Configuration;

namespace TXSystem.Domain.Extensions;

public static class ConfigurationExtensions
{
    public static string GetDefaultConnectionString(this IConfiguration configuration)
    {
        return configuration.GetConnectionString("Default");
    }
}