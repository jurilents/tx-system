namespace TXSystem.Domain.Entities;

public sealed class Person
{
    public int Id { get; init; }
    public int CategoryId { get; init; }
    public int OrganizationId { get; init; }
    public string FirstName { get; init; } = default!;
    public string LastName { get; init; } = default!;
    public string? MiddleName { get; init; }
    public string VatIdNumber { get; set; } = default!;
    public string PasswordNumber { get; set; } = default!;
    public DateTime BirthDate { get; set; }

    public PersonCategory? Category { get; init; }
    public Address? Address { get; init; }
}