using System.Reflection;
using Microsoft.AspNetCore.Mvc;
using TXSystem.Domain;
using TXSystem.Domain.Models;

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

        var table = PrepareViewModel(data);
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

    private static TableInfo PrepareViewModel(IEnumerable<object> source)
    {
        if (source is null)
            throw new ArgumentNullException(nameof(source));

        Type? sourceType = null;
        var table = new TableInfo();
        foreach (object item in source)
        {
            var curType = item.GetType();
            if (sourceType is null)
                sourceType = curType;
            else if (curType != sourceType)
                throw new ArgumentException("Type missmatch", nameof(source));

            table.Data.Add(item.GetType()
                .GetProperties(BindingFlags.Instance | BindingFlags.Public)
                .Select(prop => prop.GetValue(item, null)).ToArray());
        }

        table.Columns = sourceType!
            .GetProperties(BindingFlags.Instance | BindingFlags.Public)
            .Select(prop => prop.Name).ToArray();
        return table;
    }
}