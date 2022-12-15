using Dapper;
using NeerCore.DependencyInjection;
using TXSystem.Domain.Entities;

namespace TXSystem.Domain.Repositories;

[Service]
public class PersonRepository
{
    private readonly DatabaseFacade _database;
    public PersonRepository(DatabaseFacade database) => _database = database;


    public async Task<Person> GetByIdAsync()
    {
        using var db = await _database.ConnectAsync();
        return await db.QueryFirstAsync<Person>(@"select * from dbo.Persons");
    }
}