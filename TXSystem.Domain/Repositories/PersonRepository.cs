using Dapper;
using NeerCore.DependencyInjection;
using TXSystem.Domain.Entities;

namespace TXSystem.Domain.Repositories;

[Service]
public sealed class PersonRepository
{
    private const string TableName = "dbo.Persons";

    private readonly DatabaseFacade _database;
    public PersonRepository(DatabaseFacade database) => _database = database;


    public async Task<Person> GetByIdAsync()
    {
        using var db = await _database.ConnectAsync();
        return await db.QueryFirstAsync<Person>($@"select * from {TableName}");
    }
}