using NeerCore.DependencyInjection;

namespace TXSystem.Domain.Repositories;

[Service]
public class DemoRepository
{
    private readonly DatabaseFacade _database;
    public DemoRepository(DatabaseFacade database) => _database = database;

    public async Task Demo1Async()
    {
        using var db = await _database.ConnectAsync();
        
    }
}