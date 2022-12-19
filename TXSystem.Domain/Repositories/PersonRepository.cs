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

    public async Task<IEnumerable<PersonCategory>> GetAllCatsAsync()
    {
        using var db = await _database.ConnectAsync();
        return await db.QueryAsync<PersonCategory>(@"select * from dbo.PersonCategories");
    }

    public async Task<IEnumerable<Organization>> GetAllOrgsAsync()
    {
        using var db = await _database.ConnectAsync();
        return await db.QueryAsync<Organization>(@"select * from dbo.Organizations");
    }

    //     public async Task<Person> CreateAsync()
    //     {
    //         using var db = await _database.ConnectAsync();
    //         db.ExecuteAsync($@"insert into {TableName} values (FirstName, MiddleName, LastName, VatIdNumber, PassportNumber, BirthDate)
    // ")
    //     }
}