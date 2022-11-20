using TXSystem.Domain.Enums;

namespace TXSystem.Domain.Entities;

public sealed class Income
{
    public int Id { get; init; }
    public IncomeType Type { get; init; }

    public Organization? Organization { get; set; }
    public Person? Persons { get; set; }
}