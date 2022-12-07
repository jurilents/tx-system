create or alter function dbo.fn_CalcPersonTaxCoef(@PersonId as int)
    returns decimal(18, 8) as
begin
    declare @saleCoef as decimal(18, 8);

    select @saleCoef = pc.TaxSaleCoef
    from dbo.Persons p
             join PersonCategory pc on pc.Id = p.CategoryId
    where p.CategoryId = @PersonId;

    return iif(@saleCoef > 1.0, 0.1, 1.0 - @saleCoef);
end

go

create or alter trigger dbo.tr_ins_CalcTaxes
    on dbo.Incomes
    after insert
    as
    insert into dbo.Taxes (IncomeId, Amount, Requested, Deadline, Completed, Status)
    select ins.Id,
           ins.Amount * dbo.fn_CalcPersonTaxCoef(ins.PersonId),
           ins.Date,
           dateadd(day, 21, ins.Date),
           null,
           N'Requested'
    from INSERTED ins
             join dbo.Persons p on ins.PersonId = p.Id;

    print 'Taxes updated.';