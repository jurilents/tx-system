set identity_insert dbo.Regions on
insert into dbo.Regions (Id, Name)
values (1, 'Ukraine'),
       (2, 'Ireland'),
       (3, 'Japan')
set identity_insert dbo.Regions off

set identity_insert dbo.Cities on
insert into dbo.Cities (Id, RegionId, Name)
values (1, 1, 'Kyiv'),
       (2, 1, 'Odessa'),
       (3, 1, 'Zhytomyr'),
       (4, 1, 'Pavlivka'),
       (5, 2, 'Dublin'),
       (6, 3, 'Osaka'),
       (7, 3, 'Kyoto')
set identity_insert dbo.Cities off

set identity_insert dbo.PersonCategory on
insert into dbo.PersonCategory (Id, Title)
values (1, 'Special-A'),
       (2, 'Special-B'),
       (3, 'Student'),
       (4, 'Adult'),
       (5, 'Worker-A'),
       (6, 'Worker-B')
set identity_insert dbo.PersonCategory off

set identity_insert dbo.Organizations on
insert into dbo.Organizations (Id, Name)
values (1, 'Shindows'),
       (2, 'Ububtu'),
       (3, 'Megasoft'),
       (4, 'Hooohle'),
       (5, 'Feedbook'),
       (6, 'Netflex'),
       (7, 'Ubermench'),
       (8, 'Pineapple'),
       (9, 'Nofio'),
       (10, 'Azazone'),
       (11, 'AlterExpertss'),
       (12, 'Cummon Services'),
       (13, 'Sobi'),
       (14, 'Zooline'),
       (15, 'Abobe Technologies'),
       (16, 'Qwerty Founders'),
       (17, 'BWM'),
       (18, 'Boomer Aang'),
       (19, 'Foo Corp.'),
       (20, 'Tilda Symbols'),
       (21, 'RouterFix'),
       (22, 'Xi'),
       (23, 'Cooocker'),
       (24, 'Dogstrot'),
       (25, 'Jurii&Julia'),
       (26, 'DFS-1'),
       (27, 'DFS-2'),
       (28, 'MikkoNI'),
       (29, 'Sunsong'),
       (30, 'JustWeebThings'),
       (31, 'Tweeker'),
       (32, 'Melon Ask'),
       (33, 'Boombass'),
       (34, 'IO Jupiter'),
       (35, 'Dr4er Team'),
       (36, 'Ledner, Howell and DuBuque'),
       (37, 'Abbott Group'),
       (38, 'Wyman-Moen'),
       (39, 'Barton LLC'),
       (40, 'Feest Inc'),
       (41, 'Glover Group'),
       (42, 'Goodwin&Gutmann"'),
       (43, 'Cruickshank LLC'),
       (44, 'Venags MeatMeet'),
       (45, 'Prosacco"'),
       (46, 'Jacobson Group'),
       (47, 'Jakubowski-Dach'),
       (48, 'Christiansen-West'),
       (49, 'Schmidt and his Sons'),
       (50, 'Jojo Fans'),
       (51, 'Huahos Bombino'),
       (52, 'Ghost of a Rose'),
       (53, 'Duch Ducks'),
       (54, 'McClure Group'),
       (55, 'KonDOOR Group')
set identity_insert dbo.Organizations off
