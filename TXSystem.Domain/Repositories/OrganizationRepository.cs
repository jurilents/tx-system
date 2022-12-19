using Dapper;
using NeerCore.DependencyInjection;
using TXSystem.Domain.Entities;

namespace TXSystem.Domain.Repositories;

[Service]
public sealed class OrganizationRepository
{
    private const string TableName = "dbo.Organizations";
    private readonly DatabaseFacade _database;
    public OrganizationRepository(DatabaseFacade database) => _database = database;


    public async Task<Organization> GetByIdAsync(int id)
    {
        using var db = await _database.ConnectAsync();
        return await db.QueryFirstAsync<Organization>($@"select * from {TableName} where Id = {id}");
    }
}