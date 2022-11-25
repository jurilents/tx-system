using TXSystem.Domain.Enums;

namespace TXSystem.Domain.Entities;

public sealed class Income
{
    public int Id { get; init; }
    public IncomeSource Source { get; init; }
    public IncomeType Type { get; init; }
    public decimal Amount { get; init; }
    public DateTime Date { get; init; }

    public Organization? Organization { get; set; }
    public Person? Persons { get; set; }
}