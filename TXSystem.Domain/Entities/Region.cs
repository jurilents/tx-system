namespace TXSystem.Domain.Entities;

public sealed class Region
{
    public int Id { get; init; }
    public string Name { get; init; } = default!;

    public ICollection<City>? Cities { get; init; }
}