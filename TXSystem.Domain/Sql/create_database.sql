if not EXISTS(select *
          from sys.databases
          where name = '[database_name]')
begin
    create database [database_name]
end