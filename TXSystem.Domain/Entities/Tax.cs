using TXSystem.Domain.Enums;

namespace TXSystem.Domain.Entities;

public sealed class Tax
{
    public int Id { get; init; }
    public int IncomeId { get; init; }
    public decimal Amount { get; init; }
    public DateTime Requested { get; init; }
    public DateTime Deadline { get; init; }
    public DateTime Completed { get; init; }
    public PaymentStatus Status { get; init; }
}