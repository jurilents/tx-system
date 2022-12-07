create table [Persons]
(
    [Id]             int primary key identity (1, 1),
    [CategoryId]     int,
    [AddressId]      int,
    [OrganizationId] int,
    [FirstName]      nvarchar(100),
    [MiddleName]     nvarchar(100),
    [LastName]       nvarchar(100),
    [VatIdNumber]    varchar(10),
    [PassportNumber] varchar(11),
    [BirthDate]      datetime2
)

go

create table [PersonCategory]
(
    [Id]          int primary key identity (1, 1),
    [TaxSaleCoef] decimal(18, 8),
    [Title]       nvarchar(20)
)

go

create table [Regions]
(
    [Id]   int primary key identity (1, 1),
    [Name] nvarchar(200)
)

go

create table [Cities]
(
    [Id]       int primary key identity (1, 1),
    [RegionId] int,
    [Name]     nvarchar(200)
)

go

create table [Addresses]
(
    [Id]         int primary key identity (1, 1),
    [CityId]     int,
    [StreetName] nvarchar(200),
    [Building]   nvarchar(10),
    [Apartment]  nvarchar(10)
)

go

create table [Organizations]
(
    [Id]   int primary key identity (1, 1),
    [Name] nvarchar(100)
)

go

create table [Incomes]
(
    [Id]       int primary key identity (1, 1),
    [PersonId] int,
    [Source]   varchar(20) not null check ([Source] in ('Self', 'Organization', 'Country', 'Other')),
    [Type]     varchar(20) not null check ([Type] in ('Salary', 'Prize', 'Benefit', 'Other')),
    [Amount]   money,
    [Date]     datetime2
)

go

create table [Taxes]
(
    [Id]        int primary key identity (1, 1),
    [IncomeId]  int,
    [Amount]    money,
    [Requested] datetime2,
    [Deadline]  datetime2,
    [Completed] datetime2,
    [Status]    varchar(10) not null check ([Status] in ('Requested', 'Processing', 'Completed', 'Denied', 'Aborted'))
)

go

alter table [Persons]
    add foreign key ([CategoryId]) references [PersonCategory] ([Id])
alter table [Persons]
    add foreign key ([OrganizationId]) references [Organizations] ([Id])
alter table [Persons]
    add foreign key ([AddressId]) references [Addresses] ([Id])
alter table [Addresses]
    add foreign key ([CityId]) references [Cities] ([Id])
alter table [Cities]
    add foreign key ([RegionId]) references [Regions] ([Id])
alter table [Taxes]
    add foreign key ([IncomeId]) references [Incomes] ([Id])
alter table [Incomes]
    add foreign key ([PersonId]) references [Persons] ([Id])
