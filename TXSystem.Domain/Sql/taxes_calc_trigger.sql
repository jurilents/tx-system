create or alter function dbo.fn_CalcPersonTaxCoef(@PersonId as int)
    returns decimal(18, 8) as
begin
    declare @SaleCoef as decimal(18, 8);

    select @SaleCoef = pc.TaxSaleCoef
    from dbo.Persons p
             join PersonCategory pc on pc.Id = p.CategoryId
    where p.Id = @PersonId;

    return iif(@SaleCoef > 1.0, 0.33, 0.33 * @SaleCoef);
end

go

create or alter trigger dbo.tr_ins_CalcTaxes
    on dbo.Incomes
    after insert
    as
    insert into dbo.Taxes (IncomeId, Amount, Requested, Deadline, Completed, Status)
    select ins.Id,
           isnull(ins.Amount * dbo.fn_CalcPersonTaxCoef(ins.PersonId), cast(0 as money)),
           ins.Date,
           dateadd(day, 21, ins.Date),
           null,
           N'Requested'
    from INSERTED ins
             join dbo.Persons p on ins.PersonId = p.Id;

    print 'Taxes updated.';

