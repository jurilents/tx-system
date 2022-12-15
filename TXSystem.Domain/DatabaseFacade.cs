using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using NeerCore.DependencyInjection;
using TXSystem.Domain.Extensions;

namespace TXSystem.Domain;

public record ConnectionInfo(string ConnectionString, string Server, string Database);

[Service]
public sealed class DatabaseFacade
{
    public ConnectionInfo Connection { get; }

    public DatabaseFacade(IConfiguration configuration)
    {
        var connectionString = configuration.GetDefaultConnectionString();
        string[] connectionParts = connectionString.Split('=', ';');
        Connection = new ConnectionInfo(
            ConnectionString: connectionString,
            Server: connectionParts[Array.IndexOf(connectionParts, "Server") + 1],
            Database: connectionParts[Array.IndexOf(connectionParts, "Database") + 1]);
    }


    public async Task<IDbConnection> ConnectAsync()
    {
        var db = new SqlConnection(Connection.ConnectionString);
        await db.OpenAsync();
        return db;
    }
}