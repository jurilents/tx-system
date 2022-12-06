create or alter function dbo.fn_CalcPersonTaxSale(@PersonId as int)
    returns decimal(18, 8) as
begin
    declare @result as decimal(18, 8)
    select @result = cast(1.25 as decimal(18, 8))
    --     select * from Persons
    return (@result)
end

go

create or alter trigger dbo.tr_ins_CalcTaxes
    on dbo.Incomes
    after insert
    as declare
    @IncomeId         int ,
    @PersonId         int ,
    @PersonCategoryId int ,
    @Type             varchar(10) ,
    @TaxAmount        money ,
    @Date             datetime2 ;

    select @IncomeId = ins.Id,
           @PersonId = ins.PersonId,
           @PersonCategoryId = p.CategoryId,
           @Type = ins.Type,
           @TaxAmount = ins.Amount * 0.15 * dbo.fn_CalcPersonTaxSale(@PersonId),
           @Date = ins.Date
    from INSERTED ins
             join dbo.Persons p on ins.PersonId = p.Id;
    insert into dbo.Taxes (IncomeId, Amount, Requested, Deadline, Completed, Status)
    values (@IncomeId, @TaxAmount, @Date, dateadd(day, 21, @Date), null, N'Requested');

    print 'Taxes updated.';