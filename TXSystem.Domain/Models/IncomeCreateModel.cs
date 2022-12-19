using TXSystem.Domain.Enums;

namespace TXSystem.Domain.Models;

public class IncomeCreateModel
{
    public int PersonId { get; set; }
    public IncomeSource Source { get; set; }
    public IncomeType Type { get; set; }
    public decimal Amount { get; set; }
}