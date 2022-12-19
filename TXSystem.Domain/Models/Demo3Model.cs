namespace TXSystem.Domain.Models;

public class Demo3Model
{
    public int PersonId { get; set; }
    public decimal MinTaxesAmount { get; set; }
    public DateTime MinTaxesRequested { get; set; }
    public decimal MaxTaxesAmount { get; set; }
    public DateTime MaxTaxesRequested { get; set; }
}