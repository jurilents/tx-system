using System.Data.SqlClient;
using Dapper;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using NeerCore.DependencyInjection;
using TXSystem.Domain.Extensions;

namespace TXSystem.Domain;

[Injectable]
public sealed class SqlFileService
{
    private const string DatabaseSectionName = "Database=";

    private readonly string _rootConnectionString;
    private readonly ILogger<SqlFileService> _logger;
    private readonly DatabaseFacade _database;
    private readonly string _databaseName;
    private readonly string _scriptsPath;

    public SqlFileService(ILogger<SqlFileService> logger, IConfiguration configuration, DatabaseFacade database)
    {
        _logger = logger;
        _database = database;
        var connection = configuration.GetDefaultConnectionString().Split(';');
        _databaseName = connection.First(s => s.StartsWith(DatabaseSectionName)).Replace(DatabaseSectionName, "");
        _rootConnectionString = string.Join(";", connection.Where(s => !s.StartsWith(DatabaseSectionName)));
        _scriptsPath = Path.Join(AppDomain.CurrentDomain.BaseDirectory, "Sql");
    }

    public async Task InstallDatabaseAsync()
    {
        try
        {
            // Try to create a database
            string sql = await ReadFileAsync("create_database.sql");
            await using (var sysDb = new SqlConnection(_rootConnectionString))
            {
                await sysDb.OpenAsync();
                await sysDb.ExecuteAsync(sql.Replace("[database_name]", _databaseName));
            }

            string createTablesSql = await ReadFileAsync("create_tables.sql");
            string seedDataSql = await ReadFileAsync("seed_defaults.sql");
            string seedPersonsSql = await ReadFileAsync("seed_persons.sql");
            string seedIncomesSql = await ReadFileAsync("seed_incomes.sql");
            string seedTaxesSql = await ReadFileAsync("seed_taxes.sql");
            using var db = await _database.ConnectAsync();

            await db.ExecuteAsync(@$"
begin transaction [installation]
begin try
    {createTablesSql}
    commit transaction [installation]
    {seedDataSql}
    {seedPersonsSql}
    {seedIncomesSql}
    {seedTaxesSql}
    commit transaction [installation]
end try
begin catch
    print 'Oh my! Something went wrong :('
end catch
");
        }
        catch (Exception e)
        {
            _logger.LogError(e, "Database initialization error");
        }
    }

    private async Task<string> ReadFileAsync(string filename)
    {
        string path = Path.Join(_scriptsPath, filename);
        return await File.ReadAllTextAsync(path);
    }
}