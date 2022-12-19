using Dapper;
using NeerCore.DependencyInjection;
using TXSystem.Domain.Entities;
using TXSystem.Domain.Models;

namespace TXSystem.Domain.Repositories;

[Service]
public sealed class IncomeRepository
{
    private const string TableName = "dbo.Incomes";
    private readonly DatabaseFacade _database;
    public IncomeRepository(DatabaseFacade database) => _database = database;


    // public async Task<Organization> GetByIdAsync(int id)
    // {
    //     using var db = await _database.ConnectAsync();
    //     return await db.QueryFirstAsync<Organization>($@"select * from {TableName} where Id = {id}");
    // }

    public async Task CreateAsync(IncomeCreateModel model)
    {
        var date = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        using var db = await _database.ConnectAsync();
        await db.ExecuteAsync($@"insert into dbo.Incomes (PersonId, Source, Type, Amount, Date) values
                            ({model.PersonId}, '{model.Source}', '{model.Type}', {model.Amount}, '{date}')");
    }

    public async Task<IEnumerable<Income>> GetAllAsync()
    {
        using var db = await _database.ConnectAsync();
        return await db.QueryAsync<Income>(@"select * from dbo.Incomes order by id desc");
    }

    public async Task<IEnumerable<Tax>> GetAllTaxesAsync()
    {
        using var db = await _database.ConnectAsync();
        return await db.QueryAsync<Tax>(@"select * from dbo.Taxes order by id desc");
    }
}