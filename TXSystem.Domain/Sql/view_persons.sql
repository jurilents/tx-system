select *
from dbo.Persons
         join Incomes i on Persons.Id = i.PersonId
