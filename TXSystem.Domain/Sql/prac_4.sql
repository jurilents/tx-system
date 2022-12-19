SET STATISTICS IO, TIME, PROFILE ON

go

with PersonsWithDept as
         (select p.OrganizationId,
                 dbo.fn_CalcPersonDebt(p.Id) as TotalDebt
          from dbo.Persons p)
select o.Id, o.Name, sum(pd.TotalDebt) as TotalDebt
from dbo.Organizations o
         join PersonsWithDept pd on o.Id = pd.OrganizationId
group by o.Id, o.Name
order by TotalDebt desc 


