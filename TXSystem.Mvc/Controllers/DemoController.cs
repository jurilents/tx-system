using Microsoft.AspNetCore.Mvc;
using TXSystem.Domain;

namespace TXSystem.Mvc.Controllers;

public class DemoController : Controller
{
    private readonly SqlFileService _sqlFileService;
    public DemoController(SqlFileService sqlFileService) => _sqlFileService = sqlFileService;

    public async Task<IActionResult> Index(int idx)
    {
        var data = await GetDemoResultAsync(idx);
        if (data is null)
            return RedirectToAction("Error", "Home");

        var table = TableUtility.PrepareViewModel(data);
        table.DemoIndex = idx;
        return View(table);
    }

    private async Task<IEnumerable<object>?> GetDemoResultAsync(int demoIndex)
    {
        return demoIndex switch
        {
            1 => await _sqlFileService.Demo1Async(),
            2 => await _sqlFileService.Demo2Async(),
            3 => await _sqlFileService.Demo3Async(),
            4 => await _sqlFileService.Demo4Async(),
            5 => await _sqlFileService.Demo5Async(),
            6 => await _sqlFileService.Demo6Async(),
            7 => await _sqlFileService.Demo7Async(),
            8 => await _sqlFileService.Demo8Async(),
            _ => null
        };
    }
}