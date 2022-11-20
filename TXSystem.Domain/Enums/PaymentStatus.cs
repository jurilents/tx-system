namespace TXSystem.Domain.Enums;

public enum PaymentStatus
{
    Requested,
    Processing,
    Completed,
    Denied,
    Aborted,
    Overdue
}