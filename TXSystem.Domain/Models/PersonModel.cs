namespace TXSystem.Domain.Models;

public class PersonModel
{
    public int Id { get; init; }
    public int CategoryId { get; init; }
    public int OrganizationId { get; init; }
    public string FirstName { get; init; } = default!;
    public string LastName { get; init; } = default!;
    public string? MiddleName { get; init; }
    public string VatIdNumber { get; set; } = default!;
    public string PassportNumber { get; set; } = default!;
    public DateTime BirthDate { get; set; }
}