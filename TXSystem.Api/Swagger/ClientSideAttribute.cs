namespace TXSystem.Api.Swagger;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Method)]
public sealed class ClientSideAttribute : Attribute
{
    public string? Controller { get; set; }
    public string? Action { get; set; }
}