set identity_insert dbo.Regions on
insert into dbo.Regions (Id, Name)
values (1, 'Ukraine'),
       (2, 'Ireland'),
       (3, 'Japan');
set identity_insert dbo.Regions off

go

set identity_insert dbo.Cities on
insert into dbo.Cities (Id, RegionId, Name)
values (1, 1, 'Kyiv'),
       (2, 1, 'Pavlivka'),
       (3, 1, 'Zhytomyr'),
       (4, 2, 'Dublin'),
       (5, 3, 'Osaka');
set identity_insert dbo.Cities off

go

insert into dbo.Addresses (CityId, StreetName, Building, Apartment)
values (4, 'Stang', '14', '375'),
       (3, 'Meadow Vale', '30', '40'),
       (5, 'Rusk', '26', '372'),
       (1, 'Forest', '20', '14'),
       (1, 'Forest', '20', '15'),
       (3, 'Meadow Vale', '12/66', '63'),
       (2, 'Heath', '20/44', '45'),
       (3, 'Michigan', '11', '178'),
       (5, 'Stoughton', '7', '42-15'),
       (5, 'Stoughton', '17', '16-04'),
       (1, 'Bashford', '1', '3'),
       (4, 'Saint Paul', '18', '13'),
       (5, 'Orin', '5', '300'),
       (3, 'Calypso', '1', '312'),
       (1, 'Donald', '9', '11'),
       (5, 'Rowland', '10', '188'),
       (5, 'Rowland', '10', '152'),
       (5, 'Shelley', '8', '10'),
       (2, 'Kingsford', '17B', '1'),
       (1, 'Holmberg', '15', '36'),
       (2, 'Thierer', '30', '72'),
       (1, 'Talisman', '20', '294K'),
       (1, 'Talisman', '20', '320K'),
       (1, 'Talisman', '20', '383K'),
       (5, 'Walton', '9', '131');

go

set identity_insert dbo.PersonCategory on
insert into dbo.PersonCategory (Id, TaxSaleCoef, Title)
values (1, 0.90, 'Special'),
       (2, 0.25, 'Student'),
       (3, 0.40, 'Adult'),
       (4, 0.05, 'Worker');
set identity_insert dbo.PersonCategory off

go

set identity_insert dbo.Organizations on
insert into dbo.Organizations (Id, Name)
values (1, 'Shindows'),
       (2, 'Azazone'),
       (3, 'Megasoft'),
       (4, 'Boooble'),
       (5, 'Feedbook'),
       (6, 'Netflex'),
       (7, 'Abobas Inc.');
set identity_insert dbo.Organizations off

go

insert into Persons (FirstName, LastName, MiddleName, VatIdNumber,
                     PassportNumber, BirthDate, CategoryId, OrganizationId, AddressId)
values ('Jeanelle', 'Renshell', 'Leonidas', '2001884753', '05-096-8937', '1992-03-12 00:00:00', 4, 3, 1),
       ('Andrea', 'Paolazzi', null, '6971866657', '33-490-4909', '1969-01-09 00:00:00', 4, 6, 2),
       ('Shaina', 'Toplin', 'Matthaeus', '3766981099', '45-819-9820', '1992-10-29 00:00:00', 4, 3, 3),
       ('Averyl', 'Wort', 'Manolo', '5404560606', '35-361-9093', '2001-11-22 00:00:00', 2, 1, 4),
       ('Francene', 'Prati', 'Enrique', '9321674888', '28-873-3036', '1949-10-25 00:00:00', 3, 2, 5),
       ('Price', 'Jefferd', 'Rebbecca', '5312195332', '90-825-9801', '1958-12-22 00:00:00', 3, 4, 6),
       ('Victoir', 'Shedd', null, '2116728630', '60-100-4034', '1980-08-21 00:00:00', 4, 6, 7),
       ('Marna', 'Philips', null, '3841336450', '96-352-9569', '1962-12-01 00:00:00', 4, 1, 8),
       ('Thedric', 'Yeowell', 'Darrelle', '8375951773', '39-382-3916', '1982-12-15 00:00:00', 1, 3, 8),
       ('Kandy', 'Wilbor', 'Astrid', '0672769239', '83-532-5540', '1963-09-16 00:00:00', 4, 1, 10),
       ('Ganny', 'Sallter', 'Gusty', '8230574367', '12-204-2892', '1961-10-30 00:00:00', 4, 5, 11),
       ('Greer', 'Bliben', 'Jameson', '4807708511', '21-322-2232', '1997-10-11 00:00:00', 2, 5, 12),
       ('Federico', 'Wardingley', 'Gaby', '8388693336', '37-890-4328', '1972-08-20 00:00:00', 4, 3, 13),
       ('Shelley', 'Regorz', 'Palmer', '4557484999', '42-462-0762', '1978-05-03 00:00:00', 4, 3, 14),
       ('Bess', 'Peter', null, '0924905700', '00-026-7826', '1982-05-09 00:00:00', 4, 5, 15),
       ('Cly', 'Ellerton', 'Bail', '9525098494', '09-003-4011', '1964-02-24 00:00:00', 4, 2, 16),
       ('Lilah', 'Winterbotham', 'Clayson', '5716440576', '15-104-9306', '1996-10-30 00:00:00', 4, 7, 17),
       ('Burton', 'Monks', null, '6942669342', '56-358-5609', '1994-08-08 00:00:00', 4, 4, 18),
       ('Marten', 'Firminger', 'Rozalin', '3209605521', '33-549-2204', '1976-11-12 00:00:00', 4, 7, 19),
       ('Normand', 'Nardoni', 'Laure', '5084628310', '47-228-2336', '1986-03-24 00:00:00', 1, 5, 20),
       ('Laureen', 'Sherrett', 'Elset', '3227043904', '01-830-1376', '1976-08-21 00:00:00', 4, 7, 21),
       ('Zacherie', 'Cockerell', 'Riane', '4590852993', '77-056-6424', '1961-04-11 00:00:00', 4, 7, 22),
       ('Rica', 'Linner', null, '3201440213', '02-363-1450', '1971-06-12 00:00:00', 1, 1, 23),
       ('Margit', 'Pyrah', null, '2828651290', '11-642-3177', '1951-12-11 00:00:00', 3, 6, 24),
       ('Lulita', 'Harryman', null, '1037149688', '91-127-2567', '1991-10-20 00:00:00', 4, 7, 25);

go

insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 1200.00, '2022-04-14 07:08:50');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 500.00, '2021-01-08 20:46:09');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 800.00, '2020-11-27 02:05:48');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 200.00, '2022-08-26 11:50:55');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 1000.00, '2020-09-27 07:42:56');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 700.00, '2021-03-14 21:23:19');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (14, 'Organization', 'Salary', 700.00, '2022-04-12 06:49:12');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 600.00, '2021-11-17 04:21:33');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 600.00, '2020-09-02 19:58:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 400.00, '2020-12-28 03:47:19');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Organization', 'Salary', 400.00, '2021-07-05 12:58:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 900.00, '2022-11-27 04:52:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 700.00, '2022-08-05 19:39:32');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 1000.00, '2021-09-30 18:41:16');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (14, 'Organization', 'Salary', 700.00, '2021-04-17 11:34:04');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 800.00, '2021-10-21 12:59:15');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 1200.00, '2022-10-01 14:22:43');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 800.00, '2021-04-02 01:56:13');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Organization', 'Salary', 1100.00, '2022-09-02 08:31:24');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 1100.00, '2021-08-28 02:02:07');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 700.00, '2021-03-29 02:09:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 300.00, '2021-06-23 15:51:40');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 1000.00, '2021-12-04 13:25:10');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 1200.00, '2021-04-14 21:36:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 1200.00, '2021-09-11 18:10:26');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 300.00, '2022-01-22 01:35:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 700.00, '2022-02-16 19:34:51');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 500.00, '2021-02-05 23:21:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 1000.00, '2021-04-11 09:17:54');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Organization', 'Salary', 400.00, '2021-07-04 19:11:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 700.00, '2021-11-30 16:44:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 200.00, '2020-11-15 10:47:01');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Organization', 'Salary', 500.00, '2021-06-30 01:19:05');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 500.00, '2021-10-02 19:56:57');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Salary', 200.00, '2022-01-15 17:51:57');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 1200.00, '2021-02-01 04:18:53');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Organization', 'Salary', 1000.00, '2022-03-03 15:52:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Organization', 'Salary', 300.00, '2022-09-05 18:17:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Organization', 'Salary', 900.00, '2022-07-18 17:14:58');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 200.00, '2020-10-04 16:07:14');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 500.00, '2021-07-13 16:07:47');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (3, 'Organization', 'Salary', 800.00, '2021-10-12 21:21:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (4, 'Organization', 'Salary', 600.00, '2021-09-12 01:46:06');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 800.00, '2020-10-27 18:25:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Organization', 'Salary', 1000.00, '2021-04-27 18:15:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Organization', 'Salary', 1000.00, '2021-06-18 21:16:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 200.00, '2020-09-11 13:33:20');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Salary', 600.00, '2022-06-20 09:48:42');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 700.00, '2021-08-20 03:25:29');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Organization', 'Salary', 1200.00, '2021-07-08 21:09:20');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 500.00, '2021-06-27 17:02:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Organization', 'Salary', 1200.00, '2021-04-04 06:29:20');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Salary', 700.00, '2022-02-27 10:36:09');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Organization', 'Salary', 700.00, '2022-11-01 16:28:49');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 600.00, '2021-08-07 21:29:09');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 700.00, '2022-08-26 16:45:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (14, 'Organization', 'Salary', 500.00, '2020-12-30 15:54:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 1200.00, '2022-06-10 05:33:00');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (4, 'Organization', 'Salary', 1000.00, '2022-05-21 13:29:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 900.00, '2021-03-04 08:29:47');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Organization', 'Salary', 600.00, '2021-12-13 09:08:36');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 900.00, '2021-06-30 08:16:16');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Organization', 'Salary', 1000.00, '2022-06-19 22:08:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (14, 'Organization', 'Salary', 700.00, '2022-04-07 12:03:58');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 600.00, '2021-11-05 16:41:35');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Organization', 'Salary', 1100.00, '2022-09-27 05:04:13');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 400.00, '2022-06-22 00:23:04');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Organization', 'Salary', 900.00, '2022-03-02 19:34:25');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 300.00, '2021-05-06 17:25:42');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 600.00, '2022-03-16 01:49:27');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 200.00, '2020-09-29 18:40:14');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Organization', 'Salary', 1200.00, '2021-08-12 12:10:17');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 400.00, '2021-02-03 09:52:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (3, 'Organization', 'Salary', 200.00, '2021-07-10 22:21:19');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Organization', 'Salary', 800.00, '2021-11-08 23:41:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Salary', 1100.00, '2022-09-24 01:55:05');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Organization', 'Salary', 600.00, '2022-09-15 20:58:48');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 1000.00, '2022-02-06 04:04:21');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 300.00, '2020-12-26 06:16:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 500.00, '2021-08-02 12:29:42');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Organization', 'Salary', 500.00, '2022-07-06 17:06:07');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Organization', 'Salary', 300.00, '2021-05-28 00:14:18');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 1000.00, '2020-12-14 18:31:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 400.00, '2021-10-29 15:39:10');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 1000.00, '2021-05-20 22:01:59');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 1100.00, '2021-06-20 02:06:47');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 800.00, '2022-09-25 20:47:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 300.00, '2021-05-03 11:24:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Organization', 'Salary', 300.00, '2022-01-19 15:33:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 900.00, '2022-09-15 23:51:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Salary', 1000.00, '2021-01-16 15:05:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Salary', 400.00, '2021-06-06 08:39:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 900.00, '2022-08-31 11:41:35');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 400.00, '2020-12-17 19:21:07');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 1100.00, '2021-09-03 14:48:05');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 900.00, '2022-08-04 12:07:54');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 300.00, '2020-11-07 00:35:04');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Salary', 900.00, '2022-03-15 09:44:09');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Organization', 'Salary', 300.00, '2021-12-06 04:19:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 600.00, '2022-10-10 12:18:52');

go

insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Self', 'Other', 1290.00, '2022-02-18 16:17:01');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Self', 'Other', 3980.00, '2022-08-27 09:51:36');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Self', 'Other', 170.00, '2022-10-13 10:56:50');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Self', 'Other', 600.00, '2021-06-13 00:01:05');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Self', 'Other', 820.00, '2022-10-30 03:13:40');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Self', 'Other', 590.00, '2021-03-26 03:12:16');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Self', 'Other', 1570.00, '2022-05-31 01:08:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Self', 'Other', 3370.00, '2022-05-24 04:51:45');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Self', 'Other', 170.00, '2021-08-24 20:59:59');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Self', 'Other', 1860.00, '2020-12-01 18:13:44');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Self', 'Other', 290.00, '2021-12-13 22:14:47');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Self', 'Other', 400.00, '2021-10-10 13:44:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Self', 'Other', 3670.00, '2022-09-25 16:25:56');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Self', 'Other', 4820.00, '2021-09-22 06:58:48');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Self', 'Other', 2240.00, '2022-11-06 16:00:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Self', 'Other', 3050.00, '2021-04-19 04:55:52');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (4, 'Self', 'Other', 780.00, '2022-05-07 20:46:25');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Self', 'Other', 3080.00, '2020-11-09 17:49:12');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Self', 'Other', 2190.00, '2021-08-07 04:46:00');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Self', 'Other', 570.00, '2021-12-28 04:00:21');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Self', 'Other', 3200.00, '2022-11-18 03:46:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Self', 'Other', 3750.00, '2021-08-21 01:54:35');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Self', 'Other', 690.00, '2022-06-21 02:11:24');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Self', 'Other', 2530.00, '2020-11-04 02:50:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Self', 'Other', 4900.00, '2021-04-17 02:23:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Self', 'Other', 3210.00, '2021-01-22 23:06:09');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Self', 'Other', 290.00, '2021-05-20 04:55:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Self', 'Other', 920.00, '2022-02-10 08:22:13');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Self', 'Other', 1910.00, '2021-04-29 00:55:06');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Self', 'Other', 2290.00, '2022-08-07 13:28:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Self', 'Other', 730.00, '2021-05-14 12:28:49');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Self', 'Other', 2710.00, '2020-12-03 15:20:47');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Self', 'Other', 2780.00, '2021-12-01 07:02:04');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Self', 'Other', 2260.00, '2021-06-08 04:36:49');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Self', 'Other', 2430.00, '2022-11-09 04:20:52');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Self', 'Other', 4710.00, '2021-07-21 10:31:32');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (4, 'Self', 'Other', 960.00, '2020-11-28 09:27:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Self', 'Other', 1210.00, '2021-06-24 14:38:18');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Self', 'Other', 4220.00, '2022-09-14 23:41:36');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Self', 'Other', 1480.00, '2021-03-20 10:23:03');

go

insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Prize', 7320, '2022-04-24 15:48:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Organization', 'Prize', 530, '2020-12-06 12:21:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (14, 'Organization', 'Prize', 2440, '2021-10-27 02:03:51');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Organization', 'Prize', 2660, '2022-09-14 23:32:46');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Prize', 640, '2022-05-03 23:53:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Prize', 4200, '2021-02-09 02:47:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Prize', 200, '2021-11-14 11:47:04');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Organization', 'Prize', 960, '2020-12-23 04:50:18');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Prize', 8800, '2021-03-16 17:52:07');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Prize', 7620, '2021-12-31 21:46:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Organization', 'Prize', 4470, '2022-04-13 08:30:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Prize', 7610, '2021-11-12 13:11:30');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Prize', 4920, '2021-08-11 15:24:56');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Prize', 5650, '2021-01-21 03:13:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Prize', 3300, '2022-02-24 09:22:56');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Organization', 'Prize', 190, '2022-03-07 14:26:21');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Prize', 5740, '2022-01-22 23:14:12');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Prize', 7230, '2021-05-24 01:13:32');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Prize', 4050, '2021-06-19 05:53:40');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Prize', 710, '2021-12-15 18:31:49');

go

insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Other', 'Benefit', 4220, '2022-08-08 06:33:10');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Other', 'Benefit', 1660, '2022-02-23 19:37:15');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Other', 'Benefit', 4960, '2021-03-25 16:07:50');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Other', 'Benefit', 1440, '2021-07-01 05:05:24');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Other', 'Benefit', 1850, '2021-05-16 08:47:27');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Other', 'Benefit', 5080, '2021-08-09 14:59:39');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Other', 'Benefit', 1180, '2021-11-01 23:33:42');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Other', 'Benefit', 1110, '2020-10-18 17:21:32');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Other', 'Benefit', 1020, '2021-12-04 11:19:19');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Other', 'Benefit', 4530, '2020-12-09 03:34:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Other', 'Benefit', 940, '2021-09-09 07:37:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Other', 'Benefit', 2960, '2022-02-26 02:36:00');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Other', 'Benefit', 1390, '2022-04-15 13:51:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Other', 'Benefit', 2520, '2021-03-04 20:10:25');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Other', 'Benefit', 3040, '2022-02-05 21:14:58');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 1220, '2021-02-14 14:54:24');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Other', 'Benefit', 2990, '2022-11-15 13:44:49');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Other', 'Benefit', 4990, '2021-09-24 21:04:25');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Other', 'Benefit', 2260, '2022-11-12 04:25:43');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (4, 'Other', 'Benefit', 3710, '2020-11-24 21:02:10');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Other', 'Benefit', 2460, '2022-05-17 18:09:59');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 3930, '2021-04-07 03:47:43');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Other', 'Benefit', 490, '2021-01-02 17:32:39');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (4, 'Other', 'Benefit', 4570, '2021-08-26 15:13:32');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Other', 'Benefit', 3870, '2022-09-12 19:46:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Other', 'Benefit', 5390, '2022-03-23 01:49:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Other', 'Benefit', 1780, '2021-07-23 01:38:18');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Other', 'Benefit', 5050, '2022-01-01 11:08:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (14, 'Other', 'Benefit', 1090, '2021-01-31 06:42:36');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Other', 'Benefit', 1940, '2021-01-14 22:27:18');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Other', 'Benefit', 2900, '2020-09-13 12:40:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Other', 'Benefit', 4750, '2022-06-19 18:11:16');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Other', 'Benefit', 3770, '2021-12-03 00:46:18');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Other', 'Benefit', 3700, '2022-08-09 06:35:48');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (14, 'Other', 'Benefit', 3010, '2021-01-07 12:38:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 3430, '2022-02-08 12:59:39');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Other', 'Benefit', 3920, '2022-02-04 03:24:29');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Other', 'Benefit', 5220, '2021-09-18 19:44:17');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Other', 'Benefit', 3790, '2022-09-28 18:23:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Other', 'Benefit', 1730, '2021-02-12 15:12:26');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Other', 'Benefit', 3120, '2021-07-27 07:28:25');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Other', 'Benefit', 4490, '2022-09-21 08:06:13');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Other', 'Benefit', 4720, '2021-01-13 22:21:48');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Other', 'Benefit', 4800, '2022-11-10 22:04:39');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 1970, '2021-01-12 23:39:40');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Other', 'Benefit', 5370, '2021-03-21 13:56:12');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Other', 'Benefit', 3800, '2021-08-29 01:19:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Other', 'Benefit', 2330, '2020-11-28 15:20:44');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (3, 'Other', 'Benefit', 3360, '2020-12-18 02:05:57');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Other', 'Benefit', 560, '2021-10-21 07:27:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Other', 'Benefit', 1920, '2021-03-25 17:40:09');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Other', 'Benefit', 1530, '2022-10-23 02:22:07');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Other', 'Benefit', 5320, '2020-11-05 10:33:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Other', 'Benefit', 2840, '2022-08-26 10:19:45');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Other', 'Benefit', 5100, '2021-11-17 09:35:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (14, 'Other', 'Benefit', 4380, '2020-10-23 05:23:43');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Other', 'Benefit', 4840, '2020-11-12 20:14:24');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Other', 'Benefit', 100, '2022-05-13 06:06:17');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Other', 'Benefit', 500, '2022-09-18 02:50:29');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Other', 'Benefit', 2460, '2021-10-29 04:47:51');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Other', 'Benefit', 1620, '2020-11-29 14:57:54');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Other', 'Benefit', 5140, '2022-03-30 21:27:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (3, 'Other', 'Benefit', 320, '2022-08-17 06:45:58');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Other', 'Benefit', 1790, '2021-01-28 22:30:04');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Other', 'Benefit', 1720, '2020-09-09 12:27:48');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Other', 'Benefit', 4670, '2020-09-24 11:46:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Other', 'Benefit', 800, '2022-01-02 20:08:50');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (14, 'Other', 'Benefit', 380, '2022-10-17 07:50:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Other', 'Benefit', 4760, '2022-11-14 13:52:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Other', 'Benefit', 3150, '2022-07-02 03:43:26');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Other', 'Benefit', 5340, '2021-07-25 00:56:00');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Other', 'Benefit', 3770, '2020-10-26 14:46:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Other', 'Benefit', 3930, '2022-11-30 06:00:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Other', 'Benefit', 4400, '2020-12-05 23:01:14');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Other', 'Benefit', 3550, '2021-05-08 22:47:26');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Other', 'Benefit', 1500, '2022-09-14 08:10:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Other', 'Benefit', 4500, '2021-10-07 23:07:17');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Other', 'Benefit', 5030, '2021-04-02 16:15:17');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Other', 'Benefit', 160, '2021-05-22 10:56:12');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Other', 'Benefit', 3490, '2021-01-29 06:38:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Other', 'Benefit', 3280, '2022-10-09 18:05:29');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Other', 'Benefit', 4310, '2021-09-09 19:31:24');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 1950, '2021-03-04 19:10:58');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Other', 'Benefit', 3750, '2021-05-11 20:34:14');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Other', 'Benefit', 1160, '2022-11-09 14:02:17');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Other', 'Benefit', 460, '2022-11-23 14:51:40');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 4480, '2021-09-11 05:28:46');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Other', 'Benefit', 1240, '2021-02-07 23:50:19');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Other', 'Benefit', 3900, '2021-12-13 10:16:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Other', 'Benefit', 4630, '2021-10-02 05:20:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Other', 'Benefit', 3060, '2022-08-25 20:27:51');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Other', 'Benefit', 1480, '2020-12-16 16:15:57');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Other', 'Benefit', 3570, '2020-11-21 22:09:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Other', 'Benefit', 2830, '2022-03-02 01:03:56');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Other', 'Benefit', 4470, '2021-09-13 19:43:38');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Other', 'Benefit', 4880, '2021-11-03 06:18:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Other', 'Benefit', 2950, '2021-04-11 18:36:49');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Other', 'Benefit', 3050, '2021-01-01 16:43:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Other', 'Benefit', 5110, '2022-01-12 17:00:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Other', 'Benefit', 3540, '2021-04-11 09:05:01');

go

insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Other', 'Benefit', 4050, '2022-10-10 03:37:00');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Other', 'Benefit', 3280, '2021-01-31 13:30:13');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Other', 'Benefit', 6810, '2021-11-22 00:29:27');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Other', 'Benefit', 3480, '2020-12-01 07:21:50');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Other', 'Benefit', 2740, '2021-09-05 10:09:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Other', 'Benefit', 1590, '2020-11-22 21:45:29');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Other', 'Benefit', 5550, '2021-05-14 00:12:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Other', 'Benefit', 5350, '2021-02-18 05:20:57');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Other', 'Benefit', 4280, '2020-11-22 12:31:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Other', 'Benefit', 5550, '2022-06-14 03:15:44');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Other', 'Benefit', 6150, '2021-05-24 00:21:27');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Other', 'Benefit', 2770, '2020-11-07 22:25:14');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 5380, '2021-05-23 22:30:17');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Other', 'Benefit', 3810, '2022-06-28 19:59:44');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Other', 'Benefit', 3590, '2021-10-17 04:27:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Other', 'Benefit', 3150, '2021-04-18 16:02:21');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Other', 'Benefit', 6600, '2020-10-23 09:59:17');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Other', 'Benefit', 4590, '2022-02-17 17:11:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 4600, '2022-10-26 14:38:40');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Other', 'Benefit', 2630, '2021-10-30 10:22:26');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Other', 'Benefit', 7900, '2022-04-05 09:34:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Other', 'Benefit', 1430, '2021-05-07 07:59:49');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Other', 'Benefit', 6080, '2021-06-05 08:40:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Other', 'Benefit', 3500, '2021-04-19 03:58:09');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Other', 'Benefit', 3830, '2020-12-07 09:17:35');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Other', 'Benefit', 5440, '2022-03-27 09:54:21');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Other', 'Benefit', 5500, '2021-07-03 02:38:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 6470, '2021-06-02 02:24:39');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Other', 'Benefit', 7240, '2021-05-21 05:18:46');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Other', 'Benefit', 3000, '2022-06-22 13:13:33');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Other', 'Benefit', 7480, '2021-09-15 06:13:58');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Other', 'Benefit', 7150, '2022-01-19 05:47:00');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 3080, '2022-11-28 15:52:14');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Other', 'Benefit', 2280, '2021-01-27 20:57:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Other', 'Benefit', 3900, '2021-08-06 00:13:21');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Other', 'Benefit', 5710, '2022-04-21 03:31:43');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Other', 'Benefit', 5310, '2022-01-06 01:40:39');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Other', 'Benefit', 6520, '2022-08-13 18:58:53');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Other', 'Benefit', 6660, '2020-11-06 13:02:29');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Other', 'Benefit', 7970, '2021-12-27 08:54:26');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Other', 'Benefit', 5730, '2020-10-26 18:57:59');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Other', 'Benefit', 7710, '2021-07-25 10:22:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Other', 'Benefit', 3780, '2021-02-23 02:38:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Other', 'Benefit', 7050, '2022-02-09 12:19:47');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Other', 'Benefit', 2800, '2022-09-07 05:43:14');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Other', 'Benefit', 1540, '2021-02-15 08:05:07');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 6020, '2021-01-11 23:46:26');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Other', 'Benefit', 1440, '2021-12-07 07:50:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Other', 'Benefit', 7350, '2022-03-21 07:38:54');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Other', 'Benefit', 7060, '2022-03-15 09:35:56');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Other', 'Benefit', 6890, '2021-01-15 05:33:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 7220, '2021-10-22 19:43:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Other', 'Benefit', 5850, '2022-02-05 12:23:49');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Other', 'Benefit', 2330, '2022-04-22 17:52:12');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Other', 'Benefit', 7220, '2022-09-08 02:00:12');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Other', 'Benefit', 4020, '2022-06-20 19:10:21');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 6320, '2022-07-21 08:41:15');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Other', 'Benefit', 6580, '2022-07-04 05:07:21');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Other', 'Benefit', 7550, '2021-11-26 03:16:16');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Other', 'Benefit', 6100, '2020-11-03 17:02:12');

go

insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Country', 'Benefit', 9850, '2021-08-16 10:29:58');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Country', 'Benefit', 13250, '2021-12-31 19:34:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Country', 'Benefit', 11470, '2021-07-03 01:59:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Country', 'Benefit', 11660, '2022-09-24 06:06:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Country', 'Benefit', 13750, '2022-07-24 20:31:29');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Country', 'Benefit', 10470, '2022-09-18 04:25:32');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Country', 'Benefit', 14600, '2021-06-24 17:08:50');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Country', 'Benefit', 7990, '2022-04-24 17:05:24');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Country', 'Benefit', 12400, '2021-11-17 21:26:51');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Country', 'Benefit', 5860, '2021-07-21 06:46:24');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Country', 'Benefit', 5460, '2022-09-01 21:23:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Country', 'Benefit', 7040, '2022-08-21 02:24:29');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Country', 'Benefit', 13310, '2022-08-30 08:23:25');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Country', 'Benefit', 8690, '2021-03-24 03:15:52');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Country', 'Benefit', 7940, '2021-08-08 17:34:18');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Country', 'Benefit', 5290, '2020-10-22 16:17:50');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Country', 'Benefit', 12030, '2022-01-25 08:34:13');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Country', 'Benefit', 10370, '2022-05-24 12:29:07');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Country', 'Benefit', 7780, '2022-10-04 18:44:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Country', 'Benefit', 7500, '2022-10-18 04:06:05');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Country', 'Benefit', 14610, '2022-01-31 17:45:18');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Country', 'Benefit', 6020, '2021-12-06 11:10:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Country', 'Benefit', 8160, '2020-09-18 14:59:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Country', 'Benefit', 7610, '2021-08-21 16:05:19');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Country', 'Benefit', 5500, '2022-05-17 00:05:44');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Country', 'Benefit', 8360, '2022-01-15 03:17:05');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Country', 'Benefit', 14090, '2022-04-06 11:37:26');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Country', 'Benefit', 13590, '2020-11-14 07:49:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Country', 'Benefit', 10580, '2020-11-01 05:26:49');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Country', 'Benefit', 14600, '2022-02-03 01:36:15');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Country', 'Benefit', 6210, '2022-07-06 04:56:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Country', 'Benefit', 8320, '2021-03-12 09:30:10');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Country', 'Benefit', 7870, '2022-11-08 03:27:00');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Country', 'Benefit', 7650, '2020-09-18 18:12:14');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Country', 'Benefit', 10840, '2022-08-06 02:35:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Country', 'Benefit', 13880, '2021-07-17 12:17:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Country', 'Benefit', 8060, '2022-03-22 22:21:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Country', 'Benefit', 14450, '2021-10-18 13:54:13');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Country', 'Benefit', 11440, '2021-08-14 20:00:27');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Country', 'Benefit', 9360, '2021-02-02 15:42:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Country', 'Benefit', 13310, '2021-11-08 13:43:54');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Country', 'Benefit', 13440, '2021-01-19 14:42:09');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Country', 'Benefit', 9870, '2021-05-25 08:57:10');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Country', 'Benefit', 6480, '2021-06-07 13:45:15');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Country', 'Benefit', 13830, '2022-05-22 10:38:36');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Country', 'Benefit', 12250, '2021-10-02 04:38:30');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Country', 'Benefit', 10500, '2021-02-11 13:41:05');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Country', 'Benefit', 10990, '2022-06-25 06:26:32');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Country', 'Benefit', 14540, '2020-12-28 18:53:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Country', 'Benefit', 7970, '2022-01-30 14:05:54');

go

insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Organization', 'Salary', 1580, '2022-02-14 01:17:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 2630, '2021-05-29 19:30:53');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 4630, '2022-02-10 19:10:06');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 1110, '2022-10-22 06:14:38');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 5220, '2022-05-21 06:18:17');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 4110, '2020-11-21 06:08:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 4800, '2022-03-24 16:30:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 3870, '2020-12-05 14:55:42');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 1340, '2021-06-14 01:48:55');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 5220, '2022-11-15 09:57:25');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 1620, '2021-08-22 16:21:59');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 250, '2020-09-29 23:32:39');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Organization', 'Salary', 5550, '2022-05-11 04:17:39');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 3260, '2021-10-06 23:17:40');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Prize', 20600, '2022-03-27 10:05:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Prize', 15000, '2021-12-09 07:08:16');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 4060, '2021-06-01 17:56:17');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 5470, '2020-10-11 23:23:26');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 5370, '2020-10-03 01:43:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 3040, '2021-08-03 13:14:24');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Organization', 'Salary', 3310, '2021-06-18 15:22:30');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Organization', 'Salary', 3610, '2021-05-08 13:32:35');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 280, '2022-08-27 21:59:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Organization', 'Salary', 610, '2022-08-27 14:10:30');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Salary', 900, '2021-03-11 15:31:40');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Organization', 'Salary', 4890, '2021-08-24 23:58:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 2380, '2022-03-03 17:45:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 1450, '2022-09-30 14:49:25');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 4460, '2021-03-07 15:59:47');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 3810, '2022-11-26 05:47:05');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 3740, '2020-10-18 19:53:06');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 1240, '2020-11-18 01:50:35');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 5680, '2022-03-08 21:17:29');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 3510, '2021-06-19 09:16:16');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Salary', 3690, '2022-03-30 00:39:12');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Salary', 1490, '2020-12-19 10:57:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Organization', 'Salary', 280, '2022-02-20 00:32:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Salary', 5810, '2022-03-08 08:22:27');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 1170, '2022-05-08 12:44:52');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 3020, '2020-10-23 07:55:48');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 3680, '2021-10-15 01:18:01');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 3600, '2021-04-30 18:03:38');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 380, '2022-04-25 00:13:21');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 3010, '2020-12-30 03:50:29');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 2530, '2021-07-16 10:08:09');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Prize', 1980, '2020-09-04 09:22:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 1950, '2022-02-01 13:54:33');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 5340, '2022-07-10 15:33:25');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Organization', 'Salary', 4770, '2021-11-17 04:34:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Salary', 5450, '2021-08-06 21:34:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 4310, '2020-12-21 13:59:26');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 1370, '2022-01-07 21:44:54');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 4690, '2022-05-12 02:00:40');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Salary', 5060, '2020-11-01 21:53:04');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Salary', 4300, '2021-09-04 20:12:43');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 1020, '2022-01-04 20:21:20');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 1460, '2021-04-18 13:28:17');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Prize', 3340, '2022-10-13 13:48:26');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 4840, '2022-05-12 01:42:33');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Organization', 'Salary', 1570, '2021-05-23 23:22:06');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Organization', 'Salary', 2650, '2022-02-02 14:23:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 5410, '2022-08-27 05:15:43');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 1590, '2022-08-02 02:13:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 3460, '2022-01-25 17:48:19');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 1250, '2022-04-12 09:40:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Salary', 3910, '2022-06-04 12:03:50');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 1900, '2021-07-30 19:06:32');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 4330, '2022-10-14 11:26:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Organization', 'Salary', 5810, '2022-04-30 05:40:40');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Organization', 'Salary', 3630, '2022-03-08 09:59:21');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 3460, '2020-09-08 20:03:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 3880, '2021-10-22 07:33:46');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Organization', 'Salary', 2950, '2021-09-26 00:54:19');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 4810, '2021-02-12 13:42:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 1890, '2020-10-04 11:38:36');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 1450, '2022-08-02 03:16:58');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 680, '2021-05-11 04:49:55');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 1100, '2021-08-11 04:59:58');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 3100, '2022-07-19 16:32:01');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Organization', 'Prize', 4740, '2022-05-05 22:18:59');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 3080, '2022-09-01 22:30:01');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 1610, '2022-10-13 09:32:45');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Organization', 'Salary', 2980, '2021-06-09 12:59:51');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Prize', 2800, '2022-09-20 06:07:27');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 410, '2022-07-15 17:15:05');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 1260, '2021-06-30 22:55:40');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 4020, '2021-12-25 02:10:56');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Organization', 'Salary', 3810, '2021-02-02 13:26:19');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 5400, '2022-11-20 21:10:15');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Organization', 'Salary', 4790, '2022-04-07 21:17:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 3430, '2021-04-24 02:12:19');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 1180, '2021-11-23 04:40:01');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 2080, '2021-10-10 10:36:00');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 5210, '2022-03-17 02:30:46');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 1120, '2022-09-15 01:15:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 5630, '2021-07-19 01:58:04');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 230, '2021-10-23 21:46:19');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 2000, '2021-10-25 15:07:32');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 5450, '2021-07-13 09:41:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 1730, '2021-06-30 04:19:01');

go

insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 740, '2022-09-24 15:07:50');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 990, '2022-09-06 16:46:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Organization', 'Salary', 420, '2020-11-19 03:24:21');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (3, 'Organization', 'Prize', 880, '2022-05-14 18:08:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Organization', 'Prize', 500, '2020-10-05 10:19:35');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 260, '2021-12-12 19:24:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Salary', 290, '2022-04-09 16:58:50');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 1000, '2021-09-02 15:45:51');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 470, '2021-04-01 12:17:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Organization', 'Salary', 910, '2021-04-23 02:03:57');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Organization', 'Salary', 540, '2022-03-16 04:35:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Organization', 'Salary', 280, '2022-08-23 19:30:42');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Organization', 'Salary', 540, '2022-06-24 08:41:10');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 420, '2021-11-18 17:21:36');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Organization', 'Salary', 560, '2022-06-28 11:19:51');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Organization', 'Salary', 520, '2020-09-29 04:13:55');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 760, '2020-10-10 15:43:48');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Salary', 670, '2022-07-07 16:52:23');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 960, '2020-11-24 15:16:42');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Organization', 'Salary', 840, '2022-11-26 01:33:51');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Organization', 'Salary', 340, '2020-10-12 23:14:01');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 330, '2022-01-08 10:49:48');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 500, '2020-09-01 21:01:36');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Salary', 700, '2021-07-06 11:12:45');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 400, '2021-03-09 08:19:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 970, '2021-08-21 22:36:39');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Organization', 'Salary', 530, '2021-11-20 22:29:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 320, '2022-09-26 19:18:37');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Salary', 490, '2022-05-02 14:40:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (14, 'Organization', 'Salary', 790, '2021-02-15 06:12:20');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Organization', 'Salary', 260, '2022-01-28 19:29:57');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 980, '2022-07-20 17:02:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 940, '2022-08-06 04:10:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Salary', 640, '2022-01-23 20:15:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Organization', 'Salary', 280, '2022-01-08 06:21:43');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 880, '2021-10-05 12:32:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 920, '2021-04-08 20:56:11');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 590, '2021-01-13 03:23:14');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Organization', 'Salary', 910, '2022-07-02 11:17:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Organization', 'Salary', 790, '2020-11-13 23:27:35');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Organization', 'Salary', 810, '2022-06-25 12:13:51');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Organization', 'Salary', 340, '2021-03-07 03:04:24');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 910, '2021-05-18 15:23:29');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (16, 'Organization', 'Salary', 670, '2021-09-17 09:22:55');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (1, 'Organization', 'Salary', 800, '2022-04-04 10:33:53');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 560, '2022-03-05 21:17:04');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (9, 'Organization', 'Salary', 730, '2020-12-26 23:49:12');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Organization', 'Salary', 450, '2022-08-16 14:06:00');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 360, '2022-04-29 10:46:45');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (3, 'Organization', 'Salary', 960, '2022-10-09 00:49:01');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (18, 'Organization', 'Salary', 250, '2020-11-05 04:21:15');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 760, '2020-09-23 23:08:48');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 680, '2022-06-07 01:19:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (4, 'Organization', 'Salary', 590, '2021-02-03 06:05:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 400, '2022-07-12 16:30:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 660, '2021-12-01 22:26:32');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (14, 'Organization', 'Salary', 260, '2022-09-25 03:42:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 330, '2021-12-16 02:05:43');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Organization', 'Salary', 430, '2020-12-17 09:07:42');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 670, '2022-07-07 16:34:22');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 490, '2021-12-02 08:37:32');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 280, '2021-05-18 17:15:20');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Organization', 'Salary', 900, '2022-09-09 21:43:03');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (2, 'Organization', 'Salary', 540, '2022-05-14 09:30:36');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Organization', 'Salary', 980, '2021-02-25 15:02:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 670, '2021-12-14 03:22:28');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Salary', 570, '2021-08-24 18:34:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 850, '2021-12-12 12:59:27');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 840, '2022-05-12 15:03:50');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Organization', 'Salary', 680, '2022-02-22 05:18:24');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Organization', 'Salary', 570, '2020-09-23 12:31:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 390, '2022-06-23 21:36:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Organization', 'Salary', 320, '2021-04-23 20:42:09');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 320, '2022-08-26 00:37:55');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Organization', 'Salary', 780, '2022-02-25 14:45:41');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (24, 'Organization', 'Salary', 660, '2021-04-02 12:06:45');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (11, 'Organization', 'Salary', 900, '2022-10-28 09:49:24');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (19, 'Organization', 'Salary', 610, '2022-08-22 04:48:31');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (25, 'Organization', 'Salary', 730, '2020-09-23 17:49:52');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (23, 'Organization', 'Salary', 400, '2022-08-21 15:23:34');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (7, 'Organization', 'Salary', 760, '2022-02-14 17:39:48');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 890, '2022-03-17 14:17:10');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (17, 'Organization', 'Salary', 310, '2021-09-06 07:08:14');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 320, '2022-07-01 07:54:55');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 390, '2022-01-05 23:00:25');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 870, '2022-04-01 19:52:15');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 530, '2022-05-12 03:25:30');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (21, 'Organization', 'Salary', 250, '2021-11-21 10:03:47');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (12, 'Organization', 'Salary', 760, '2021-11-13 07:05:06');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 340, '2022-12-12 06:16:58');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (5, 'Organization', 'Salary', 890, '2021-12-12 14:18:45');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (10, 'Organization', 'Salary', 760, '2020-09-03 00:27:05');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (8, 'Organization', 'Salary', 370, '2020-11-09 03:45:14');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 420, '2022-03-03 06:09:55');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (22, 'Organization', 'Salary', 350, '2021-05-08 01:45:14');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (3, 'Organization', 'Salary', 320, '2022-05-31 12:07:02');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (6, 'Organization', 'Salary', 440, '2021-05-24 19:36:58');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (13, 'Organization', 'Salary', 590, '2022-09-04 21:15:49');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (20, 'Organization', 'Salary', 330, '2021-11-27 15:18:08');
insert into Incomes (PersonId, Source, Type, Amount, Date)
values (15, 'Organization', 'Salary', 750, '2022-08-19 00:46:21');

go

with TaxesToUpdate as (select top 400 *
                       from dbo.Taxes
                       order by newid())

update t
set t.Completed = dateadd(second, cast(rand(checksum(newid())) * 28 * 24 * 60 * 60 as int) + 60 * 12, t.Requested)
from TaxesToUpdate t
