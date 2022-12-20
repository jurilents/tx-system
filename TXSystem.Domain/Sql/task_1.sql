create or alter function dbo.fn_CalcPersonDebt(@PersonId as int)
    returns money
as
begin
    declare @Result as money;
    select @Result = sum(t.Amount)
    from Persons p
             join Incomes i on p.Id = i.PersonId
             join Taxes t on i.Id = t.IncomeId and dateadd(day, 21, t.Deadline) < getutcdate()
    where p.Id = @PersonId
    return @Result
end

go

with PersonsWithDept as
         (select p.OrganizationId,
                 dbo.fn_CalcPersonDebt(p.Id) as TotalDebt
          from Persons p)
select o.Id, o.Name, sum(pd.TotalDebt) as TotalDebt
from Organizations o
         join PersonsWithDept pd on o.Id = pd.OrganizationId
group by o.Id, o.Name
order by TotalDebt desc
