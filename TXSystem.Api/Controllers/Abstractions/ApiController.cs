using Microsoft.AspNetCore.Mvc;

namespace TXSystem.Api.Controllers.Abstractions;

[ApiController]
[Produces("application/json")]
[Route("api/[controller]")]
public class ApiController : ControllerBase { }