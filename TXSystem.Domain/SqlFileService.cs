using Dapper;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using NeerCore.DependencyInjection;
using TXSystem.Domain.Extensions;
using TXSystem.Domain.Models;

namespace TXSystem.Domain;

[Service]
public sealed class SqlFileService
{
    private const string QuerySeparator = "\ngo\n";
    private const string DatabaseSectionName = "Database=";
    private const string DatabaseSectionNameAlt = "Data Source=";

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
        var dbn = connection.FirstOrDefault(s => s.StartsWith(DatabaseSectionName))
                  ?? connection.FirstOrDefault(s => s.StartsWith(DatabaseSectionNameAlt));
        _databaseName = dbn.Replace(DatabaseSectionName, "").Replace(DatabaseSectionNameAlt, "");
        _rootConnectionString = string.Join(";", connection.Where(s => !s.StartsWith(DatabaseSectionName) && !s.StartsWith(DatabaseSectionNameAlt)));
        _scriptsPath = Path.Join(AppDomain.CurrentDomain.BaseDirectory, "Sql");
    }

    #region Tasks

    public async Task<IEnumerable<Demo1Model>> Demo1Async()
    {
        string sql = await ReadFileAsync("task_1.sql");
        string[] queries = sql.Split(QuerySeparator);
        using var db = await _database.ConnectAsync();
        await db.ExecuteAsync(queries[0]);
        return await db.QueryAsync<Demo1Model>(queries[1]);
    }

    public async Task<IEnumerable<Demo2Model>> Demo2Async()
    {
        string sql = await ReadFileAsync("task_2.sql");
        string[] queries = sql.Split(QuerySeparator);
        using var db = await _database.ConnectAsync();
        await db.ExecuteAsync(queries[0]);
        return await db.QueryAsync<Demo2Model>(queries[1]);
    }

    public async Task<IEnumerable<Demo3Model>> Demo3Async()
    {
        string sql = await ReadFileAsync("task_3.sql");
        using var db = await _database.ConnectAsync();
        return await db.QueryAsync<Demo3Model>(sql);
    }

    public async Task<IEnumerable<Demo4Model>> Demo4Async()
    {
        string sql = await ReadFileAsync("task_4.sql");
        using var db = await _database.ConnectAsync();
        return await db.QueryAsync<Demo4Model>(sql);
    }

    public async Task<IEnumerable<PersonModel>> Demo5Async()
    {
        string sql = await ReadFileAsync("task_5.sql");
        string[] queries = sql.Split(QuerySeparator);
        using var db = await _database.ConnectAsync();
        await db.ExecuteAsync(queries[0]);
        return await db.QueryAsync<PersonModel>(queries[1]);
    }

    public async Task<IEnumerable<Demo6Model>> Demo6Async()
    {
        string sql = await ReadFileAsync("task_6.sql");
        using var db = await _database.ConnectAsync();
        return await db.QueryAsync<Demo6Model>(sql);
    }

    public async Task<IEnumerable<Demo78Model>> Demo7Async()
    {
        string sql = await ReadFileAsync("task_7.sql");
        using var db = await _database.ConnectAsync();
        return await db.QueryAsync<Demo78Model>(sql);
    }

    public async Task<IEnumerable<Demo78Model>> Demo8Async()
    {
        string sql = await ReadFileAsync("task_8.sql");
        using var db = await _database.ConnectAsync();
        return await db.QueryAsync<Demo78Model>(sql);
    }

    #endregion

    #region Db Initialization

    public async Task InstallDatabaseAsync()
    {
        // If migrations already applied, just skip this step
        if (await IsDbAlreadyCreated())
        {
            _logger.LogInformation("Migrations did not apply, because database is already up to date");
            return;
        }

        try
        {
            // Try to create a database
            // string sql = await ReadFileAsync("create_database.sql");
            // await using (var sysDb = new SqlConnection(_rootConnectionString))
            // {
            //     await sysDb.OpenAsync();
            //     await sysDb.ExecuteAsync(sql.Replace("[database_name]", _databaseName));
            // }

            string createTablesSql = await ReadFileAsync("create_tables.sql");
            string taxesCalcTriggerSql = await ReadFileAsync("taxes_calc_trigger.sql");
            string seedDataSql = await ReadFileAsync("seed_defaults.sql");

            using var db = await _database.ConnectAsync();
            using var ts = db.BeginTransaction();
            try
            {
                await db.ExecuteManyAsync(createTablesSql, transaction: ts);
                await db.ExecuteManyAsync(taxesCalcTriggerSql, transaction: ts);
                await db.ExecuteManyAsync(seedDataSql, transaction: ts);
                ts.Commit();
            }
            catch (Exception e)
            {
                _logger.LogError(e, "Oh my! Something went wrong :(");
                ts.Rollback();
            }
        }
        catch (Exception e)
        {
            _logger.LogError(e, "Database initialization error");
        }
    }

    #endregion

    #region Private

    private async Task<string> ReadFileAsync(string filename)
    {
        string path = Path.Join(_scriptsPath, filename);
        return await File.ReadAllTextAsync(path);
    }

    private async Task<bool> IsDbAlreadyCreated()
    {
        string sql = await ReadFileAsync("check_tables_exists.sql");
        var db = await _database.ConnectAsync();
        var result = await db.ExecuteScalarAsync<int>(sql);
        return result > 0;
    }

    #endregion
}