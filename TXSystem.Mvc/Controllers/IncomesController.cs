using Microsoft.AspNetCore.Mvc;
using TXSystem.Domain.Models;
using TXSystem.Domain.Repositories;

namespace TXSystem.Mvc.Controllers;

public class IncomesController : Controller
{
    private readonly IncomeRepository _incomeRepository;
    private readonly PersonRepository _personRepository;

    public IncomesController(IncomeRepository incomeRepository, PersonRepository personRepository)
    {
        _incomeRepository = incomeRepository;
        _personRepository = personRepository;
    }

    [HttpPost]
    public async Task<IActionResult> AddIncome([FromForm] IncomeCreateModel model)
    {
        if (model.PersonId is < 1 or > 25 || model.Amount is < 0 or > int.MaxValue)
        {
            return RedirectToAction("ListIncomes");
        }

        await _incomeRepository.CreateAsync(model);
        return RedirectToAction("ListIncomes");
    }

    public async Task<IActionResult> ListIncomes()
    {
        var incomes = await _incomeRepository.GetAllAsync();
        var table = TableUtility.PrepareViewModel(incomes);
        return View(table);
    }

    public async Task<IActionResult> ListTaxes()
    {
        var incomes = await _incomeRepository.GetAllTaxesAsync();
        var table = TableUtility.PrepareViewModel(incomes);
        return View(table);
    }
}