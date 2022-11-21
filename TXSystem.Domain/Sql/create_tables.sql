CREATE TABLE [Persons]
(
    [Id]             int PRIMARY KEY IDENTITY (1, 1),
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

CREATE TABLE [PersonCategory]
(
    [Id]    int PRIMARY KEY IDENTITY (1, 1),
    [Title] nvarchar
)

CREATE TABLE [Regions]
(
    [Id]   int PRIMARY KEY IDENTITY (1, 1),
    [Name] nvarchar(200)
)

CREATE TABLE [Cities]
(
    [Id]       int PRIMARY KEY IDENTITY (1, 1),
    [RegionId] int,
    [Name]     nvarchar(200)
)

CREATE TABLE [Addresses]
(
    [Id]         int PRIMARY KEY,
    [CityId]     int,
    [StreetName] nvarchar(200),
    [Building]   nvarchar(10),
    [Apartment]  nvarchar(10)
)

CREATE TABLE [Organizations]
(
    [Id]        int PRIMARY KEY,
    [Name]      int,
    [AddressId] int
)


CREATE TABLE [Incomes]
(
    [Id]       int PRIMARY KEY IDENTITY (1, 1),
    [PersonId] int,
    [Source]   varchar(15) NOT NULL CHECK ([Source] IN ('Self', 'Organization', 'Country', 'Other')),
    [Type]     varchar(10) NOT NULL CHECK ([Type] IN ('Salary', 'Prize', 'Benefit', 'Other')),
    [Amount]   money,
    [Date]     datetime2
)

CREATE TABLE [Taxes]
(
    [Id]        int PRIMARY KEY IDENTITY (1, 1),
    [IncomeId]  int,
    [Amount]    money,
    [Requested] datetime2,
    [Deadline]  datetime2,
    [Completed] datetime2,
    [Status]    varchar(10) NOT NULL CHECK ([Status] IN
                                            ('Requested', 'Processing', 'Completed', 'Denied', 'Aborted'))
)

ALTER TABLE [Persons]
    ADD FOREIGN KEY ([CategoryId]) REFERENCES [PersonCategory] ([Id])
ALTER TABLE [Persons]
    ADD FOREIGN KEY ([OrganizationId]) REFERENCES [Organizations] ([Id])
ALTER TABLE [Persons]
    ADD FOREIGN KEY ([AddressId]) REFERENCES [Addresses] ([Id])
ALTER TABLE [Organizations]
    ADD FOREIGN KEY ([AddressId]) REFERENCES [Addresses] ([Id])
ALTER TABLE [Addresses]
    ADD FOREIGN KEY ([CityId]) REFERENCES [Cities] ([Id])
ALTER TABLE [Cities]
    ADD FOREIGN KEY ([RegionId]) REFERENCES [Regions] ([Id])
ALTER TABLE [Taxes]
    ADD FOREIGN KEY ([IncomeId]) REFERENCES [Incomes] ([Id])
ALTER TABLE [Incomes]
    ADD FOREIGN KEY ([PersonId]) REFERENCES [Persons] ([Id])
