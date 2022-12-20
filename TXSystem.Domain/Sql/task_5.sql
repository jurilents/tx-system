create or alter function dbo.fn_CalcIncomeTypes(@PersonId as int)
    returns int as
begin
    declare @Result as int;
    select @Result =
           (select count(distinct i.Type)
            from Incomes i
            where i.PersonId = @PersonId)
    return @Result;
end

go

select Id,
       CategoryId,
       OrganizationId,
       FirstName,
       LastName,
       MiddleName,
       VatIdNumber,
       PassportNumber,
       BirthDate
from Persons p
where dbo.fn_CalcIncomeTypes(p.Id) = 4 -- now system has total 4 income types
