select year(ot.Requested) as YearNumner,
       sum(ot.Amount)     as TotalTaxes
from dbo.v_OrganizationTaxes ot
where ot.PersonId = 1
group by year(ot.Requested)

