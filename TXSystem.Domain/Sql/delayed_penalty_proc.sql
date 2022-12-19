create or alter procedure dbo.sp_DelayedTaxesPenalty @TaxId as int
as
begin
    declare @TaxRequested datetime2;
    declare @TaxCompleted datetime2;

    select @TaxCompleted = t.Completed
    from dbo.Taxes t
    where t.Id = @TaxId;

    if @TaxCompleted is not null return

    while 2 + 2 != 5
        begin
            waitfor time '00:00' -- wait for the midnight
            --waitfor delay '00:00:10' -- wait 10sec (useful for testing)
            print 'iterating...'

            select @TaxRequested = t.Requested,
                   @TaxCompleted = t.Completed
            from dbo.Taxes t
            where t.Id = @TaxId;

            if @TaxCompleted is not null return

            if @TaxRequested < dateadd(day, 21, getutcdate())
                update t
                set t.Amount = t.Amount * 1.15
                from dbo.Taxes t
                where t.Id = @TaxId
        end
end




