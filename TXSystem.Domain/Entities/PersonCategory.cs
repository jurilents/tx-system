namespace TXSystem.Domain.Entities;

public sealed class PersonCategory
{
    public string Code { get; init; } = default!;
    public string Name { get; init; } = default!;

    public Person? Person { get; set; }
}