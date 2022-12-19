create index idx_Incomes_Source on Incomes (Source);


select *
from Incomes
where Source = 'Organization'


insert into dbo.Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Organization', 'Salary', 430, '2020-12-17 09:07:42');

update dbo.Incomes
set Amount = 4000,
    Source = 'Organization'
where Id < 5


SELECT i.[name]                     AS IndexName
     , SUM(s.[used_page_count]) * 8 AS IndexSizeKB
FROM sys.dm_db_partition_stats AS s
         INNER JOIN sys.indexes AS i ON s.[object_id] = i.[object_id]
    AND s.[index_id] = i.[index_id]
WHERE i.[name] = 'idx_Incomes_Source'
GROUP BY i.[name]
