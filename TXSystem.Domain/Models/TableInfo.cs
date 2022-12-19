namespace TXSystem.Domain.Models;

public class TableInfo
{
    public int DemoIndex { get; set; }
    public string[] Columns { get; set; } = default!;
    public List<object?[]> Data { get; set; } = new();
}