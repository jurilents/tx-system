namespace TXSystem.Domain.Entities;

public class Organization
{
    public int Id { get; init; }
    public string Name { get; init; } = default!;

    public ICollection<Person>? Persons { get; set; }
}