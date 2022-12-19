select i.Type, sum(t.Amount) as TotalTaxes
from dbo.Taxes t
         join Incomes i on i.Id = t.IncomeId
where t.Completed is not null
  and t.Requested > dateadd(month, -3, getutcdate())
group by i.Type
