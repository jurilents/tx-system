namespace TXSystem.Domain.Entities;

public sealed class Address
{
    public int PersonId { get; set; }
    public int CityId { get; set; }
    public string Street { get; set; } = default!;
    public string Building { get; set; } = default!;
    public string Apartment { get; set; } = default!;

    public City? City { get; set; }
    public Person? Persons { get; set; }
}