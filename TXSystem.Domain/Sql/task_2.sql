create or alter view v_OrganizationTaxes as
select p.OrganizationId, p.Id as PersonId, t.*
from Taxes t
         join Incomes i on i.Id = t.IncomeId
         join Persons p on p.Id = i.PersonId

go

select month(ot.Requested)                      as MonthNumber,
       datename(month, ot.Requested)            as MonthName,
       isnull(sum(ot.Amount), cast(0 as money)) as TotalTaxes
from dbo.v_OrganizationTaxes ot
         join Organizations o on o.Id = ot.OrganizationId
where year(ot.Requested) = year(getdate() - 1)
group by month(ot.Requested), datename(month, ot.Requested)
order by MonthNumber


