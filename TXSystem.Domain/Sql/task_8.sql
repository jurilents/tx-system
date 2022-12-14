select ot.OrganizationId,
       o.Name,
       sum(ot.Amount) as TotalTaxes
from v_OrganizationTaxes ot
         join Organizations o on o.Id = ot.OrganizationId
where ot.Completed is null
group by ot.OrganizationId, o.Name
