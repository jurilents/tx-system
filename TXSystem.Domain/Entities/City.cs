namespace TXSystem.Domain.Entities;

public sealed class City
{
    public int Id { get; init; }
    public int RegionId { get; init; }
    public string Name { get; init; } = default!;

    public ICollection<Address>? Addresses { get; init; }
    public Region? Region { get; init; }
}