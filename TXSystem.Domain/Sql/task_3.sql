select ot.PersonId,
       min(ot.Amount)             as MinTaxesAmount,
       (select top 1 ot_.Requested
        from dbo.v_OrganizationTaxes ot_
        where ot_.PersonId = ot.PersonId
        order by ot_.Amount)      as MinTaxesRequested,
       max(ot.Amount)             as MaxTaxesAmount,
       (select top 1 ot_.Requested
        from dbo.v_OrganizationTaxes ot_
        where ot_.PersonId = ot.PersonId
        order by ot_.Amount desc) as MaxTaxesRequested
from dbo.v_OrganizationTaxes ot
group by ot.PersonId


