using Microsoft.AspNetCore.Mvc;
using TXSystem.Api.Controllers.Abstractions;
using TXSystem.Domain.Entities;
using TXSystem.Domain.Repositories;

namespace TXSystem.Api.Controllers;

public sealed class OrganizationsController : ApiController
{
    private readonly OrganizationRepository _repository;
    public OrganizationsController(OrganizationRepository repository) => _repository = repository;

    // [HttpGet("{id:int}")]
    // public async Task<Organization> GetById([FromRoute] int id)
    // {
    //     return await _repository.GetByIdAsync(id);
    // }
}