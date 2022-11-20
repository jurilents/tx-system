using System.Data.SqlClient;
using Dapper;
using Microsoft.Extensions.Configuration;
using NeerCore.DependencyInjection;
using TXSystem.Domain.Extensions;

namespace TXSystem.Domain;

[Injectable]
public sealed class SqlFileService
{
    private const string DatabaseSectionName = "Database=";

    private readonly string _rootConnectionString;
    private readonly DatabaseFacade _database;
    private readonly string _databaseName;
    private readonly string _scriptsPath;

    public SqlFileService(DatabaseFacade database, IConfiguration configuration)
    {
        _database = database;
        var connection = configuration.GetDefaultConnectionString().Split(';');
        _databaseName = connection.First(s => s.StartsWith(DatabaseSectionName)).Replace(DatabaseSectionName, "");
        _rootConnectionString = string.Join(";", connection.Where(s => !s.StartsWith(DatabaseSectionName)));
        _scriptsPath = Path.Join(AppDomain.CurrentDomain.BaseDirectory, "Sql");
    }

    public async Task InstallDatabaseAsync()
    {
        // Try to create a database
        string sql = await ReadFileAsync("create_database.sql");
        await using (var sysDb = new SqlConnection(_rootConnectionString))
        {
            await sysDb.OpenAsync();
            await sysDb.ExecuteAsync(sql.Replace("[database_name]", _databaseName));
        }

        sql = await ReadFileAsync("install_database.sql");
        using var db = await _database.ConnectAsync();
        await db.ExecuteAsync(sql.Replace("[database_name]", _databaseName));
    }

    private async Task<string> ReadFileAsync(string filename)
    {
        string path = Path.Join(_scriptsPath, filename);
        return await File.ReadAllTextAsync(path);
    }
}