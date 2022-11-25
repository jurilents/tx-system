create function fn_CalcPersonDebt(@PersonId as int)
    returns table as
        return select *
               from dbo.Persons
                   
                        join Incomes I on Persons.Id = I.PersonId

select *
from dbo.Organizations
         join Persons P on Organizations.Id = P.OrganizationId
         join Incomes I on P.Id = I.PersonId
         join Taxes T on I.Id = T.IncomeId
where T.Deadline < getutcdate()
