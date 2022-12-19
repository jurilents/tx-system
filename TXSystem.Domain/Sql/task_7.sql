select ot.OrganizationId,
       o.Name,
       sum(ot.Amount) as TotalTaxes
from dbo.v_OrganizationTaxes ot
         join Organizations o on o.Id = ot.OrganizationId
where ot.Completed is not null
group by ot.OrganizationId, o.Name
