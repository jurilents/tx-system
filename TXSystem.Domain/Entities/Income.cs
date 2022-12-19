namespace TXSystem.Domain.Entities;

public sealed class Income
{
    public int Id { get; init; }
    public string Source { get; init; }
    public string Type { get; init; }
    public decimal Amount { get; init; }
    public DateTime Date { get; init; }
}