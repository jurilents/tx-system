using Microsoft.AspNetCore.Mvc;

namespace TXSystem.Mvc.Controllers;

public class DemoController : Controller
{
    public async Task<IActionResult> Index(int idx)
    {
        return View();
    }
}