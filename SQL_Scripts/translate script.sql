﻿create procedure getImg @pathImage nvarchar(255)
AS
	declare	
		@pathFolder nvarchar(255)=N'C:\Users\intern\Source\GitHub\SQL_Translate\SQL_Scripts\Images',
		@sql nvarchar(255);
		set @sql=N'SELECT BulkColumn FROM Openrowset( Bulk '''+@pathFolder+@pathImage+''', Single_Blob) as img'
exec sp_executesql @sql;
go


---------------------------------------------------------------------------------------
--		Initializare
use Northwind;
go

---------------------------------------------------------------------------------------
--		dbo.Categories

alter table Categories
alter column CategoryName nvarchar(29);
go

update Categories
set CategoryName = 'Bauturi', Description = 'Apa, Sucuri, si Bauturi alcoolice'
where CategoryName = 'Beverages';

update Categories
set CategoryName = 'Condimente', Description = 'Piper, zahar, sosuri, si alte condimente'
where CategoryName = 'Condiments';

update Categories
set CategoryName = 'Panificatie', Description = 'Desert, dulciuri, si prajituri'
where CategoryName = 'Confections';

update Categories
set CategoryName = 'Produse Lactate', Description = 'Lapte, branza, iaurt, si alte produse lactate'
where CategoryName = 'Dairy Products';

update Categories
set CategoryName = 'Cereale si Produse din cerele', Description = 'Produse de patiserie, cipsuri, biscuiti, paste, si cereale'
where CategoryName like 'Grains%' and CategoryName like '%Cereals';

update Categories
set CategoryName = 'Carne si produse din carne', Description = 'Produse proaspete din carne'
where CategoryName like 'Meat%' and CategoryName like '%Poultry';

update Categories
set CategoryName = 'Fructe si Legume', Description = 'Fructe si legume proaspete'
where CategoryName = 'Produce';

update Categories
set CategoryName = 'Fructe de mare', Description = 'Alge si fructe de mare'
where CategoryName = 'Seafood';
go
--CustomerCustomerDemo, CustomerDemographics <- on change needed
---------------------------------------------------------------------------------------
--		Customers

--todo: din cate vad sunt din tari diferite, deci pot fi lasati/schimbati cu altii/stersi din admin pannel

---------------------------------------------------------------------------------------
--		Employees

alter table Employees
	drop column Extension,
		 column Region
go

update Employees
Set LastName = 'Danciu', 
	FirstName = 'Nicoleta', 
	Title = 'Reprezentant Vanzari',
	TitleOfCourtesy = 'Dra.',
	[Address] = 'Spl. Independentei, nr. 27, ap 27, Bucuresti Sector 6',
	City = 'Bucuresti',
	PostalCode = '050082',
	Country = 'Romania',
	HomePhone = '0751292371',
	Notes = 'Are o diploma de licenta in psihologie de la Universitatea de Stat din Colorado in 1970. Ea a completat, de asemenea, "Arta apelului rece". Nicoleta este membru al Toastmasters International.'
where LastName = 'Davolio';

update Employees
Set LastName = 'Florea', 
	FirstName = 'Andrei', 
	Title = 'Vice Presedinte, Vanzari',
	TitleOfCourtesy = 'Dr.',
	[Address] = 'Str. Hornului, nr. 22, ap 3, Bucuresti Sector 4',
	City = 'Bucuresti',
	PostalCode = '031317',
	Country = 'Romania',
	HomePhone = '0753255371',
	Notes = 'Andrei a primit diploma de tehnician superior in 1974 si un doctorat in marketing international de la Universitatea din Dallas in 1981. Este fluent in franceza si italiana si citeste limba germana. A intrat in companie ca reprezentant de vanzari, a fost promovat in functia de director de vanzari in ianuarie 1992 si vicepresedinte al vanzarilor in martie 1993. Andrew este membru al camerei de comert din Seattle.'
where LastName = 'Fuller';

update Employees
Set LastName = 'Leca', 
	FirstName = 'Ioana', 
	Title = 'Reprezentant Vanzari',
	TitleOfCourtesy = 'Dra.',
	[Address] = 'Str. Cupolei, nr 54, ap 15, Bucuresti Sector 6',
	City = 'Bucuresti',
	PostalCode = '061158',
	Country = 'Romania',
	HomePhone = '0723292441',
	Notes = 'Ioana are o diploma in chimie din Boston College (1984). A finalizat un program de certificare in domeniul managementul vanzarii cu amanuntul a produselor alimentare. Ioana a fost angajata ca vanzatoare in 1991 si a fost promovata pe postul reprezentant vanzari in februarie 1992.'
where LastName = 'Leverling';

update Employees
Set LastName = 'Pescaru', 
	FirstName = 'Margareta', 
	Title = 'Reprezentant Vanzari',
	TitleOfCourtesy = 'Dra',
	[Address] = 'Str. Hornului, nr. 22, ap 4, Bucuresti Sector 4',
	City = 'Bucuresti',
	PostalCode = '031317',
	Country = 'Romania',
	HomePhone = '0752212371',
	Notes = 'Margareta detine o diploma de licenta in literatura engleza de la Concordia College (1958) si o diploma de licenta de la Institutul American de Arta culinara (1966).'
where LastName = 'Peacock';

update Employees
Set LastName = 'Bucurescu', 
	FirstName = 'Stefan', 
	Title = 'Manager Vanzari',
	TitleOfCourtesy = 'Dl.',
	[Address] = 'Str. Preciziei, nr 2, ap 32, Bucuresti Sector 6',
	City = 'Bucuresti',
	PostalCode = '062203',
	Country = 'Romania',
	HomePhone = '0712292991',
	Notes = 'Stefan a absolvit Universitatea din St. Andrews, Scotia, cu diploma in stiinte in 1976. Dupa ce s-a alaturat companiei ca reprezentant de vanzari in 1992, a petrecut 6 luni intr-un program de orientare la biroul din Seattle si apoi a revenit la postul sau permanent in Londra . A fost promovat manager de vanzari in martie 1993. Domnul Buchanan a absolvit cursurile "Telemarketing de succes" si "Managementul vanzarilor internationale". Este fluent in franceza.'
where LastName = 'Buchanan';

update Employees
Set LastName = 'Surdu', 
	FirstName = 'Mihai', 
	Title = 'Reprezentant Vanzari',
	TitleOfCourtesy = 'Dl.',
	[Address] = 'Str Ghirlandei, nr 5, ap 40, Bucuresti Sector 6',
	City = 'Bucuresti',
	PostalCode = '062242',
	Country = 'Romania',
	HomePhone = '0751217471',
	Notes = 'Mihai este absolvent al Universitatii din Sussex (MA, economie, 1983) si al Universitatii din California, Los Angeles (MBA, marketing, 1986). De asemenea, a luat cursurile "Vanzari multiculturale" si "Managementul timpului pentru profesionistii in vanzari". Este fluent in limba japoneza si poate citi si scrie franceza, portugheza si spaniola.'
where LastName = 'Suyama';

update Employees
Set LastName = 'Kiritescu', 
	FirstName = 'Robert', 
	Title = 'Reprezentant Vanzari',
	TitleOfCourtesy = 'Dl.',
	[Address] = 'Str. Fabricii, nr 4, ap 4, Bucuresti Sector 6',
	City = 'Bucuresti',
	PostalCode = '060823',
	Country = 'Romania',
	HomePhone = '0718642371',
	Notes = 'Robert a fost in Corpul Pacii si a calatorit mult inaintae de a-si incheia studiile in limba engleza la Universitatea din Michigan in 1992, anul in care sa alatura companiei. Dupa finalizarea cursului de "Vanzarea in Europa" a fost transferat la biroul din Londra in martie 1993.'
where LastName = 'King';

update Employees
Set LastName = 'Cojocaru', 
	FirstName = 'Laura', 
	Title = 'Coordonator Vanzari Intern',
	TitleOfCourtesy = 'Dra.',
	[Address] = 'Str. Lugoj, nr 2, ap 12, Bucuresti Sector 6',
	City = 'Bucuresti',
	PostalCode = '012212',
	Country = 'Romania',
	HomePhone = '0712392335',
	Notes = 'Laura a obtinut o diploma in psihologie la Universitatea din Washington. De asemenea, a absolvit un curs de afaceri francez. Citeste si scrie franceza.'
where LastName = 'Callahan';

update Employees
Set LastName = 'Dobrescu', 
	FirstName = 'Ana', 
	Title = 'Reprezentant Vanzari',
	TitleOfCourtesy = 'Dra.',
	[Address] = 'Str. Comana, nr 2, ap 23, Bucuresti Sector 6',
	City = 'Bucuresti',
	PostalCode = '011274',
	Country = 'Romania',
	HomePhone = '0764882331',
	Notes = 'Ana are o diploma de licenta in limba engleza de la Colegiul St. Lawrence. Este fluenta in franceza si germana.'
where LastName = 'Dodsworth';

---------------------------------------------------------------------------------------
--  Region

--select * from Region

update Region
set RegionDescription = 'Banat'
where RegionID = '1';

update Region
set RegionDescription = 'Bucovina'
where RegionID = '2';

update Region
set RegionDescription = 'Crisana'
where RegionID = '3';

update Region
set RegionDescription = 'Dobrogea'
where RegionID = '4';

insert into Region values ('5', 'Maramures')
insert into Region values ('6', 'Moldova')
insert into Region values ('7', 'Muntenia')
insert into Region values ('8', 'Oltenia')
insert into Region values ('9', 'Transilvania')
go
---------------------------------------------------------------------------------------
--		Territories

/*#1. drop FOREIGN key*/
alter table EmployeeTerritories
drop constraint FK_EmployeeTerritories_Territories
go

truncate table EmployeeTerritories
truncate table Territories
go

/*#1. create FOREIGN key */
ALTER TABLE [dbo].[EmployeeTerritories]
ADD  CONSTRAINT [FK_EmployeeTerritories_Territories] FOREIGN KEY(TerritoryID)
REFERENCES [dbo].[Territories] ([TerritoryID])
go

/*Banat*/
insert into Territories values('1', 'Timis', 1);
insert into Territories values('2', 'Caras-Severin', 1);
/*Bucovina*/
insert into Territories values('3', 'Botosani', 2);
insert into Territories values('4', 'Suceava', 2);
/*Crisana*/
insert into Territories values('5', 'Bihor', 3);
insert into Territories values('6', 'Arad', 3);
/*Dobrogea*/
insert into Territories values('7', 'Tulcea', 4);
insert into Territories values('8', 'Constanta', 4);
/*Maramures*/
insert into Territories values('9', 'Satu-Mare', 5);
insert into Territories values('10', 'Maramures', 5);
/*Moldova*/
insert into Territories values('11', 'Neamt', 6);
insert into Territories values('12', 'Iasi', 6);
insert into Territories values('13', 'Bacau', 6);
insert into Territories values('14', 'Vaslui', 6);
insert into Territories values('15', 'Vrancea', 6);
insert into Territories values('16', 'Galati', 6);
/*Muntenia*/
insert into Territories values('17', 'Braila', 7);
insert into Territories values('18', 'Buzau', 7);
insert into Territories values('19', 'Calarasi', 7);
insert into Territories values('20', 'Prahova', 7);
insert into Territories values('21', 'Dambovita', 7);
insert into Territories values('22', 'Arges', 7);
insert into Territories values('23', 'Ialomita', 7);
insert into Territories values('24', 'Calarasi', 7);
insert into Territories values('25', 'Ilfov', 7);
insert into Territories values('26', 'Bucuresti', 7);
insert into Territories values('27', 'Giurgiu', 7);
insert into Territories values('28', 'Teleorman', 7);
/*Oltenia*/
insert into Territories values('29', 'Gorj', 8);
insert into Territories values('30', 'Valcea', 8);
insert into Territories values('31', 'Olt', 8);
insert into Territories values('32', 'Dolj', 8);
insert into Territories values('33', 'Mehedinti', 8);
/*Transilvania*/
insert into Territories values('34', 'Salaj', 9);
insert into Territories values('35', 'Bistrita-Nasaud', 9);
insert into Territories values('36', 'Cluj', 9);
insert into Territories values('37', 'Mures', 9);
insert into Territories values('38', 'Harghita', 9);
insert into Territories values('39', 'Covasna', 9);
insert into Territories values('40', 'Brasov', 9);
insert into Territories values('41', 'Sibiu', 9);
insert into Territories values('42', 'Alba', 9);
insert into Territories values('43', 'Hunedoara', 9);
go

---------------------------------------------------------------------------------------
--		EmployeeTerritories

insert into EmployeeTerritories values (1, 9);
insert into EmployeeTerritories values (1, 10);
insert into EmployeeTerritories values (1, 5);
insert into EmployeeTerritories values (1, 34);
insert into EmployeeTerritories values (1, 35);
insert into EmployeeTerritories values (1, 36);
insert into EmployeeTerritories values (2, 12);
insert into EmployeeTerritories values (2, 23);
insert into EmployeeTerritories values (2, 19);
insert into EmployeeTerritories values (2, 26);
insert into EmployeeTerritories values (2, 27);
insert into EmployeeTerritories values (3, 3);
insert into EmployeeTerritories values (3, 4);
insert into EmployeeTerritories values (3, 11);
insert into EmployeeTerritories values (3, 12);
insert into EmployeeTerritories values (3, 37);
insert into EmployeeTerritories values (3, 38);
insert into EmployeeTerritories values (3, 35);
insert into EmployeeTerritories values (4, 11);
insert into EmployeeTerritories values (4, 12);
insert into EmployeeTerritories values (4, 13);
insert into EmployeeTerritories values (4, 14);
insert into EmployeeTerritories values (4, 16);
insert into EmployeeTerritories values (5, 6);
insert into EmployeeTerritories values (5, 1);
insert into EmployeeTerritories values (5, 2);
insert into EmployeeTerritories values (5, 42);
insert into EmployeeTerritories values (5, 43);
insert into EmployeeTerritories values (5, 29);
insert into EmployeeTerritories values (5, 33);
insert into EmployeeTerritories values (6, 29);
insert into EmployeeTerritories values (6, 30);
insert into EmployeeTerritories values (6, 31);
insert into EmployeeTerritories values (6, 32);
insert into EmployeeTerritories values (6, 33);
insert into EmployeeTerritories values (6, 28);
insert into EmployeeTerritories values (6, 22);
insert into EmployeeTerritories values (7, 36);
insert into EmployeeTerritories values (7, 37);
insert into EmployeeTerritories values (7, 38);
insert into EmployeeTerritories values (7, 39);
insert into EmployeeTerritories values (7, 40);
insert into EmployeeTerritories values (7, 41);
insert into EmployeeTerritories values (7, 42);
insert into EmployeeTerritories values (8, 15);
insert into EmployeeTerritories values (8, 16);
insert into EmployeeTerritories values (8, 40);
insert into EmployeeTerritories values (8, 39);
insert into EmployeeTerritories values (8, 18);
insert into EmployeeTerritories values (8, 17);
insert into EmployeeTerritories values (8, 20);
insert into EmployeeTerritories values (8, 21);
insert into EmployeeTerritories values (8, 25);
insert into EmployeeTerritories values (8, 26);
insert into EmployeeTerritories values (8, 7);
insert into EmployeeTerritories values (9, 7);
insert into EmployeeTerritories values (9, 8);
insert into EmployeeTerritories values (9, 17);
insert into EmployeeTerritories values (9, 23);
insert into EmployeeTerritories values (9, 18);
insert into EmployeeTerritories values (9, 20);
insert into EmployeeTerritories values (9, 21);
insert into EmployeeTerritories values (9, 27);
insert into EmployeeTerritories values (9, 24);
insert into EmployeeTerritories values (9, 26);
go

---------------------------------------------------------------------------------------
--		Customers

--select * from Customers

--select * from Customers

update Customers
	set CompanyName = 'Vinyl Fever',
	ContactName = 'Danut Gogean',
	[Address] = 'STR. 10 MAI nr. 15, DaMBOVIŢA',
	City = 'Targoviste',
	Region = 'Muntenia',
	PostalCode = '130062',
	Country = 'Romania',
	Phone = '0245-216 446',
	Fax = NULL
where CompanyName = 'Alfreds Futterkiste';

update Customers
	set CompanyName = 'Kash n',
	ContactName = 'Gabriella  Anghelescu',
	[Address] = 'Strada Caraiman 3, Constanta',
	City = 'Constanta',
	Region = 'Dobrogea',
	PostalCode = '907021',
	Country = 'Romania',
	Phone = '0723-564 218',
	Fax = '0251.411688'
where CompanyName = 'Ana Trujillo Emparedados y helados';

update Customers
	set CompanyName = 'Children',
	ContactName = 'Eugenia  Costiniu',
	[Address] = 'Strada Stelelor 4, Timisoara',
	City = 'Timis',
	Region = 'Banat',
	PostalCode = '373572',
	Country = 'Romania',
	Phone = '+40(256)441727',
	Fax = '0251.411688'
where CompanyName = '';

update Customers
	set CompanyName = 'Tech Hifi',
	ContactName = 'Dorin  Butacu',
	[Address] = 'Piata Revolutiei 3/26, Maramures',
	City = 'Maramures',
	Region = 'Maramures',
	PostalCode = '873309',
	Country = 'Romania',
	Phone = '+40(262)260999',
	Fax = '+40(262)271338'
where CompanyName = 'Antonio Moreno Taquería';

update Customers
	set CompanyName = 'Beatties',
	ContactName = 'Ioana  Draghici',
	[Address] = 'STR. VULCAN SAMUIL nr. 16, BEIUS',
	City = 'BIHOR',
	Region = 'Crisana',
	PostalCode = '653271',
	Country = 'Romania',
	Phone = '0259-320 222',
	Fax = '0251.418803'
where CompanyName = 'Around the Horn';

update Customers
	set CompanyName = 'Cut Above',
	ContactName = 'Varujan  Puscas',
	[Address] = 'Bulevardul Ion Mihalache 148B, Bucuresti',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '666708',
	Country = 'Romania',
	Phone = '+40(21)2246714',
	Fax = '0251.413102'
where CompanyName = 'Berglunds snabbköp';

update Customers
	set CompanyName = 'Sears Homelife',
	ContactName = 'Stefan  Manole',
	[Address] = 'STR. 9 MAI, BACAU',
	City = 'Bacau',
	Region = 'Moldova',
	PostalCode = '546708',
	Country = 'Romania',
	Phone = '0740-082 824',
	Fax = '0251.413102'
where CompanyName = 'Blauer See Delikatessen';

update Customers
	set CompanyName = 'Century House',
	ContactName = 'Varujan  Teodorescu',
	[Address] = 'STR. BARNUŢIU SIMION nr. 67, SALAJ',
	City = 'SALAJ',
	Region = 'Transilvania',
	PostalCode = '437945',
	Country = 'Romania',
	Phone = '0260-616 920',
	Fax = '0251.418803'
where CompanyName = 'Blondesddsl père et fils';

update Customers
	set CompanyName = 'Matrix Interior Design',
	ContactName = 'Lavinia  Ciora',
	[Address] = 'NR. 91/A, COM. BOBOTA',
	City = 'SALAJ',
	Region = 'Transilvania',
	PostalCode = '626705',
	Country = 'Romania',
	Phone = '0260-652 491',
	Fax = '0251.418803'
where CompanyName = 'Bólido Comidas preparadas';

update Customers
	set CompanyName = 'Awthentikz',
	ContactName = 'Diona  Lascar',
	[Address] = 'STR. GIMNASTICII nr. 11, SIBIU',
	City = 'SIBIU',
	Region = 'Transilvania',
	PostalCode = '907892',
	Country = 'Romania',
	Phone = '0269-245 479',
	Fax = '0251.413102'
where CompanyName like 'Bon app%';

update Customers
	set CompanyName = 'Afforda Merchant Services',
	ContactName = 'Amelia  Raducanu',
	[Address] = 'STR. BERZEI nr. 21, Bucuresti - Sector 1',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '749447',
	Country = 'Romania',
	Phone = '0741-108 981',
	Fax = '0251.413102'
where CompanyName = 'Bottom-Dollar Markets';

update Customers
	set CompanyName = 'Prahject Planner',
	ContactName = 'Juana  Kogalniceaunu',
	[Address] = 'STR. EROILOR nr. 749, COM. CORNU',
	City = 'PRAHOVA',
	Region = 'Muntenia',
	PostalCode = '643518',
	Country = 'Romania',
	Phone = '0244-367 481',
	Fax = '0251.413102'
where CompanyName like '%s Beverages';

update Customers
	set CompanyName = 'Club Wholesale',
	ContactName = 'Sergiu  Stinga',
	[Address] = 'STR. PORUMBESCU CIPRIAN nr. 19 bl. A27 sc. A ap. 2, BRASOV',
	City = 'Brasov',
	Region = 'Transilvania',
	PostalCode = '155584',
	Country = 'Romania',
	Phone = '0723-474 265',
	Fax = '0251.413687'
where CompanyName = 'Cactus Comidas para llevar';

update Customers
	set CompanyName = 'Adaptas',
	ContactName = 'Mihail  Serbanescu',
	[Address] = 'NR. 180, COM. SACADAT',
	City = 'BIHOR',
	Region = 'Crisana',
	PostalCode = '835400',
	Country = 'Romania',
	Phone = '0721-517 140',
	Fax = '0251.413687'
where CompanyName = 'Centro comercial Moctezuma';

update Customers
	set CompanyName = 'Flagg Bros. Shoes',
	ContactName = 'Alin  Dita',
	[Address] = 'Strada Lunga 14, Brasov',
	City = 'Brasov',
	Region = 'Transilvania',
	PostalCode = '500058',
	Country = 'Romania',
	Phone = '+40(268)418770',
	Fax = '0251.415899'
where CompanyName = 'Chop-suey Chinese';

update Customers
	set CompanyName = 'Naturohair',
	ContactName = 'Dana  Lahovary',
	[Address] = 'STR. NEGOIU bl. 6, FAGARAS',
	City = 'Brasov',
	Region = 'Transilvania',
	PostalCode = '505200',
	Country = 'Romania',
	Phone = '0268-215 645',
	Fax = '0251.415899'
where CompanyName = 'Comércio Mineiro';

update Customers
	set CompanyName = 'Sunburst Garden Management',
	ContactName = 'Daciana  Diaconu',
	[Address] = 'STR. CALUGARENI nr. 7, BRASOV',
	City = 'Brasov',
	Region = 'Transilvania',
	PostalCode = '516337',
	Country = 'Romania',
	Phone = '0268-420 146',
	Fax = '0251.412479'
where CompanyName = 'Consolidated Holdings';

update Customers
	set CompanyName = 'Garden Management',
	ContactName = 'Tudor  Popescu',
	[Address] = 'Soseaua Dobroiesti 7, Complex Atlantis, Bl.A',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '466966',
	Country = 'Romania',
	Phone = '+40(21)3364941',
	Fax = '0251.412479'
where CompanyName = 'Drachenblut Delikatessen';

update Customers
	set CompanyName = 'Pro Garden Management',
	ContactName = 'Ioana  Izbasa',
	[Address] = 'STR. BRaNCOVEANU CONSTANTIN nr. 32, TIMIS',
	City = 'Timisoara',
	Region = 'Banat',
	PostalCode = '144913',
	Country = 'Romania',
	Phone = '0722-644 846',
	Fax = '0251.419689'
where CompanyName = 'Du monde entier';

update Customers
	set CompanyName = 'Datacorp',
	ContactName = 'Florin  Urzica',
	[Address] = 'STR. ROBESCU F. CONSTANTIN nr. 11, Bucuresti Sector 3',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '071465',
	Country = 'Romania',
	Phone = '021-316 6831',
	Fax = '0251.419689'
where CompanyName = 'Eastern Connection';

update Customers
	set CompanyName = 'Bombay Company',
	ContactName = 'Daria  Rotaru',
	[Address] = 'STR. CUZA I. AL. nr. 1, STREHAIA',
	City = 'MEHEDINŢI',
	Region = 'Oltenia',
	PostalCode = '253792',
	Country = 'Romania',
	Phone = '0722-262 210',
	Fax = '0251.437979'
where CompanyName = 'Ernst Handel';

update Customers
	set CompanyName = 'Tee Town',
	ContactName = 'Adrian  PIrvulescu',
	[Address] = 'STR. PIETAŢII nr. 1, BRAILA',
	City = 'Braila',
	Region = 'Moldova',
	PostalCode = '353968',
	Country = 'Romania',
	Phone = '0723-761 061',
	Fax = '0251.438210'
where CompanyName = 'Familia Arquibaldo';

update Customers
	set CompanyName = 'CompuAdd',
	ContactName = 'Florica  Radu',
	[Address] = 'STR. 9 MAI nr. 23C, MARAMURES',
	City = 'Baia Mare',
	Region = 'Maramures',
	PostalCode = '640213',
	Country = 'Romania',
	Phone = '0744-313 069',
	Fax = '0251.438210'
where CompanyName = 'FISSA Fabrica Inter. Salchichas S.A.';

update Customers
	set CompanyName = 'Isaly',
	ContactName = 'Oana  Mircea',
	[Address] = 'SAT PAUSESTI-OTASAU, COM. PAUSESTI',
	City = 'VaLCEA',
	Region = 'Oltenia',
	PostalCode = '524423',
	Country = 'Romania',
	Phone = '0751-204 789',
	Fax = '0251.411755'
where CompanyName = 'Folies gourmandes';

update Customers
	set CompanyName = 'John F. Lawhon',
	ContactName = 'Florenta  Balan',
	[Address] = 'Bulevardul Schitu Magureanu 39, Et.1, Ap.10',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '702828',
	Country = 'Romania',
	Phone = '+40(727)494463',
	Fax = '0251.413921'
where CompanyName = 'Folk och fä HB';

update Customers
	set CompanyName = 'Plan Smart',
	ContactName = 'Dana  Iagar',
	[Address] = 'STR. LINIEI nr. 13-15 bl. 15-16 sc. 3 ap. 91,Sector 6',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '530264',
	Country = 'Romania',
	Phone = '021-434 1043',
	Fax = '0251.413921'
where CompanyName = 'Frankenversand';

update Customers
	set CompanyName = 'Atlas Architectural Designs',
	ContactName = 'Liviu  Olinescu',
	[Address] = 'STR. MIRCEA CEL BATRaN nr. 102, CONSTANŢA',
	City = 'Constanta',
	Region = 'Dobrogea',
	PostalCode = '782841',
	Country = 'Romania',
	Phone = '0241-550 099',
	Fax = '0251.413405'
where CompanyName = 'France restauration';

update Customers
	set CompanyName = 'Signa Air',
	ContactName = 'Ion  Nita',
	[Address] = 'STR. LUNII nr. 8A, Cluj',
	City = 'Cluj',
	Region = 'Transilvania',
	PostalCode = '779951',
	Country = 'Romania',
	Phone = '0264-430 891',
	Fax = '0251.411753'
where CompanyName = 'Franchi S.p.A.';

update Customers
	set CompanyName = 'Strategic Profit',
	ContactName = 'Mazonn  PIrvulescu',
	[Address] = 'STR. OLTEŢ nr. 5, DOLJ',
	City = 'DOLJ',
	Region = 'Oltenia',
	PostalCode = '522951',
	Country = 'Romania',
	Phone = '0251-410 016',
	Fax = '0251.413405'
where CompanyName = 'Furia Bacalhau e Frutos do Mar';

update Customers
	set CompanyName = 'Gold Touch',
	ContactName = 'Mihaita  Cuza',
	[Address] = 'STR. BABA NOVAC nr. 11 bl. G1 sc. 2 et parter Ap. 46, Sec. 3',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '523951',
	Country = 'Romania',
	Phone = '021-324 0083',
	Fax = '0251.411753'
where CompanyName = 'Galería del gastrónomo';

update Customers
	set CompanyName = 'Luskin',
	ContactName = 'Maria  Barladeanu',
	[Address] = 'STR. TRAIAN nr. 53, IALOMIŢA',
	City = 'Slobozia',
	Region = 'Muntenia',
	PostalCode = '245951',
	Country = 'Romania',
	Phone = '0243-216 565',
	Fax = '0251.411752'
where CompanyName = 'Godos Cocina Típica';

update Customers
	set CompanyName = 'E-zhe Source ',
	ContactName = 'Octavia  Filotti',
	[Address] = 'Strada Nikolai Gogol 1A, et.1, Ap.2',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '479951',
	Country = 'Romania',
	Phone = '+40(21)2302390',
	Fax = '0251.411754'
where CompanyName = 'Gourmet Lanchonetes';

update Customers
	set CompanyName = 'KB Toys',
	ContactName = 'Maria  Tilea',
	[Address] = 'STR. URSU ION nr. 49 bl. N2A sc. A ap. 3, CONSTANŢA',
	City = 'Constanta',
	Region = 'Dobrogea',
	PostalCode = '919951',
	Country = 'Romania',
	Phone = '0241-684 848',
	Fax = '0251.417047'
where CompanyName = 'Great Lakes Food Market';

update Customers
	set CompanyName = 'Isaly',
	ContactName = 'Oana  Mircea',
	[Address] = 'SAT PAUSESTI-OTASAU, COM. PAUSESTI',
	City = 'VaLCEA',
	Region = 'Oltenia',
	PostalCode = '555951',
	Country = 'Romania',
	Phone = '0751-204 789',
	Fax = '0252.319303'
where CompanyName = 'GROSELLA-Restaurante';

update Customers
	set CompanyName = 'Pantry Pride',
	ContactName = 'Tabitha  Filipescu',
	[Address] = 'STR. LIVEZILOR nr. 33, COM. DIOSIG',
	City = 'BIHOR',
	Region = 'Crisana',
	PostalCode = '572351',
	Country = 'Romania',
	Phone = '0259-350 212',
	Fax = '0252.319303'
where CompanyName = 'Hanari Carnes';

update Customers
	set CompanyName = 'Compact Disc Center',
	ContactName = 'Jean  Olinescu',
	[Address] = 'Strada Zlatna 2, Brasov',
	City = 'Brasov',
	Region = 'Transilvania',
	PostalCode = '879951',
	Country = 'Romania',
	Phone = '+40(268)441192',
	Fax = '0252.317219'
where CompanyName = 'HILARION-Abastos';

update Customers
	set CompanyName = 'BASCO',
	ContactName = 'Georgeta  Draghicescu',
	[Address] = 'STR. ODOBESCU ALEXANDRU nr. 1, PRAHOVA',
	City = 'Ploiesti',
	Region = 'Muntenia',
	PostalCode = '779951',
	Country = 'Romania',
	Phone = '0244-512 820',
	Fax = '0252.317219'
where CompanyName = 'Hungry Coyote Import Store';

update Customers
	set CompanyName = 'Mansmann',
	ContactName = 'Eugen  Ciobanu',
	[Address] = 'STR. REPUBLICII nr. 7, VRANCEA',
	City = 'Focsani',
	Region = 'Moldova',
	PostalCode = '579951',
	Country = 'Romania',
	Phone = '0722-788 869',
	Fax = '0251.414021'
where CompanyName = 'Hungry Owl All-Night Grocers';

update Customers
	set CompanyName = 'Team Uno',
	ContactName = 'Ilie  Stanescu',
	[Address] = 'BD. MARASTI nr. 31, Bucuresti - Sector 1',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '799865',
	Country = 'Romania',
	Phone = '021-202 3642',
	Fax = null
where CompanyName = 'Island Trading';

update Customers
	set CompanyName = 'Walt',
	ContactName = 'Catalina  Proca',
	[Address] = 'STR. UNIRII nr. 2, TULCEA',
	City = 'TULCEA',
	Region = 'Dobrogea',
	PostalCode = '915207',
	Country = 'Romania',
	Phone = '0240-511 110',
	Fax = '0251.414021'
where CompanyName = 'Königlich Essen';

update Customers
	set CompanyName = 'Red Owl',
	ContactName = 'Cezar  Hutopila',
	[Address] = 'STR. 1 DECEMBRIE 1918 nr. 29',
	City = 'Galati',
	Region = 'Dobrogea',
	PostalCode = '555207',
	Country = 'Romania',
	Phone = '0236-820 290',
	Fax = '0251.414398'
where CompanyName like 'La corne d%' and CompanyName like '%abondance';

update Customers
	set CompanyName = 'Alladin Realty',
	ContactName = 'Costel  Enache',
	[Address] = 'STR. ALECSANDRI VASILE nr. 1, COMANESTI',
	City = 'Bacau',
	Region = 'Moldova',
	PostalCode = '732207',
	Country = 'Romania',
	Phone = '0234-374 219',
	Fax = '0251.414398'
where CompanyName like 'La maison d%';

update Customers
	set CompanyName = 'Channel Home Centers',
	ContactName = 'Margareta  Ionescu',
	[Address] = 'Strada Septimius Severus, Ap.10, Alba',
	City = 'Alba Iulia',
	Region = 'Transilvania',
	PostalCode = '234207',
	Country = 'Romania',
	Phone = '+40(368)445479',
	Fax = '0251.413844'
where CompanyName = 'Laughing Bacchus Wine Cellars';

update Customers
	set CompanyName = 'Handy City',
	ContactName = 'Flori  Ceausescu',
	[Address] = 'BD. LAPUSNEANU A. nr. 75 bl. LV4 Ap. 20, CONSTANŢA',
	City = 'Constanta',
	Region = 'Dobrogea',
	PostalCode = '125207',
	Country = 'Romania',
	Phone = '0730-006 188',
	Fax = '0251.413844'
where CompanyName = 'Lazy K Kountry Store';

update Customers
	set CompanyName = 'Ukrop',
	ContactName = 'Lucian  Brancoveanu',
	[Address] = 'SOS. NAŢIONALA nr. 64-66 et PARTER, IASI',
	City = 'Iasi',
	Region = 'Moldova',
	PostalCode = '323387',
	Country = 'Romania',
	Phone = '0232-245 471',
	Fax = '0251.419015'
where CompanyName = 'Lehmanns Marktstand';

update Customers
	set CompanyName = 'Widdmann',
	ContactName = 'Leunta  Teodorescu',
	[Address] = 'Strada Istriei 2D, Bucuresti',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '307217',
	Country = 'Romania',
	Phone = '+40(722)950706',
	Fax = '0251.419015'
where CompanyName like '%s Stop N Shop';

update Customers
	set CompanyName = 'Finast',
	ContactName = 'Nina  Georghiou',
	[Address] = 'BD. STIRBEI VODA nr. 19, DOLJ',
	City = 'Craiova',
	Region = 'Oltenia',
	PostalCode = '777287',
	Country = 'Romania',
	Phone = '0251-534 463',
	Fax = '0251.413102'
where CompanyName = 'LILA-Supermercado';

update Customers
	set CompanyName = 'Standard Sales',
	ContactName = 'Ionel  Neagoe',
	[Address] = 'STR. 1 DECEMBRIE 1918, MOLDOVA NOUA',
	City = 'CARAS-SEVERIN',
	Region = 'Banat',
	PostalCode = '707287',
	Country = 'Romania',
	Phone = '0745-610 526',
	Fax = '0251.413102'
where CompanyName = 'LINO-Delicateses';

update Customers
	set CompanyName = 'CAL. SEVERINULUI nr. 11, GORJ',
	ContactName = 'Ioana  Cernat',
	[Address] = 'STR. VINTILA VODA nr. 21, Olt',
	City = 'Targu Jiu',
	Region = 'Oltenia',
	PostalCode = '887287',
	Country = 'Romania',
	Phone = '0249-433 112',
	Fax = '0251.413844'
where CompanyName = 'Lonesome Pine Restaurant';

update Customers
	set CompanyName = 'Galyan',
	ContactName = 'Danut  Dumitrescu',
	[Address] = 'STR. OLTEŢ nr. 5, DOLJ',
	City = 'DOLJ',
	Region = 'Oltenia',
	PostalCode = '127287',
	Country = 'Romania',
	Phone = '0744-479 942',
	Fax = '0251.413844'
where CompanyName = 'Magazzini Alimentari Riuniti';

update Customers
	set CompanyName = 'Atlas Architectural Designs',
	ContactName = 'Liviu  Olinescu',
	[Address] = 'STR. MIRCEA CEL BATRaN nr. 102, CONSTANŢA',
	City = 'Constanta',
	Region = 'Dobrogea',
	PostalCode = '323287',
	Country = 'Romania',
	Phone = '0241-550 099',
	Fax = '0251.413102'
where CompanyName = 'Maison Dewey';

update Customers
	set CompanyName = 'Gold Touch',
	ContactName = 'Mihaita  Cuza',
	[Address] = 'STR. BABA NOVAC nr. 11 bl. G17 sc. 2 et 1 Ap. 46, Sect. 3',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '399287',
	Country = 'Romania',
	Phone = '021-324 0083',
	Fax = '0251.413102'
where CompanyName = 'Mère Paillarde';

update Customers
	set CompanyName = 'Man Business',
	ContactName = 'Diana  Blerinca',
	[Address] = 'CAL. LUI TRAIAN nr. 331, VaLCEA',
	City = 'VaLCEA',
	Region = 'Oltenia',
	PostalCode = '307287',
	Country = 'Romania',
	Phone = '+40(21)3162878',
	Fax = '0251.413102'
where CompanyName = 'Morgenstern Gesundkost';

update Customers
	set CompanyName = 'Circuit City',
	ContactName = 'Virgil  Nicolae',
	[Address] = 'STR. JIULUI nr. 1, GORJ',
	City = 'GORJ',
	Region = 'Oltenia',
	PostalCode = '594203',
	Country = 'Romania',
	Phone = '0728-177 249',
	Fax = '0251.413102'
where CompanyName = 'North/South';

update Customers
	set CompanyName = 'Grossman',
	ContactName = 'Ioan  Fieraru',
	[Address] = 'SOS. COLENTINA nr. 76 bl. 111 et parter, Sector 2',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '511675',
	Country = 'Romania',
	Phone = '539877',
	Fax = '0251.413102'
where CompanyName = 'Océano Atlántico Ltda.';

update Customers
	set CompanyName = 'Roberd',
	ContactName = 'Magdalena  Iliescu',
	[Address] = 'BD. REVOLUŢIEI nr. 45, ARAD',
	City = 'Arad',
	Region = 'Crisana',
	PostalCode = '138106',
	Country = 'Romania',
	Phone = '0257-253 767',
	Fax = '0251.413102'
where CompanyName = 'Old World Delicatessen';

update Customers
	set CompanyName = 'Sportswest',
	ContactName = 'Grigore  Barbu',
	[Address] = 'STR. OZANA nr. 31NEAMŢ, Piatra Neamt',
	City = 'Neamt',
	Region = 'Moldova',
	PostalCode = '822646',
	Country = 'Romania',
	Phone = '0742-028 490',
	Fax = '0251.413041'
where CompanyName = 'Ottilies Käseladen';

update Customers
	set CompanyName = 'National Lumber',
	ContactName = 'Nina  Banica',
	[Address] = 'Strada Simion Barnutiu 12, Bihor',
	City = 'Bihor',
	Region = 'Crisana',
	PostalCode = '138321',
	Country = 'Romania',
	Phone = '+40(259)475320',
	Fax = '0251.413041'
where CompanyName = 'Paris spécialités';

update Customers
	set CompanyName = 'Patterson-Fletcher',
	ContactName = 'Livia  Skutnik',
	[Address] = 'STR. PANU ANASTASIE nr. 13, IASI',
	City = 'Iasi',
	Region = 'Moldova',
	PostalCode = '453993',
	Country = 'Romania',
	Phone = '0232-212 162',
	Fax = '0251.413687'
where CompanyName = 'Pericles Comidas clásicas';

update Customers
	set CompanyName = 'The Flying Hippo ',
	ContactName = 'Anca  Toma',
	[Address] = 'SPL. UNIRII nr. 4 bl. B3 Ap. 20, Bucuresti - Sector 4',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '377738',
	Country = 'Romania',
	Phone = '031-805 3526',
	Fax = '0251.415899'
where CompanyName = 'Piccolo und mehr';

update Customers
	set CompanyName = 'Rainbow Life',
	ContactName = 'Stefana  Mironescu',
	[Address] = 'Bulevardul Iuliu Maniu 69, Bucuresti 6',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '688127',
	Country = 'Romania',
	Phone = '+40(31)4195861',
	Fax = '0251.415899'
where CompanyName = 'Princesa Isabel Vinhos';

update Customers
	set CompanyName = 'Superior Interactive',
	ContactName = 'Melania  Manescu',
	[Address] = 'Bulevardul Regiei 6D, et.2, Bucuresti 6',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '703948',
	Country = 'Romania',
	Phone = '+40(21)3166279',
	Fax = '0251.412479'
where CompanyName = 'Que Delícia';

update Customers
	set CompanyName = 'Just For Fun',
	ContactName = 'Sofia  Lucescu',
	[Address] = 'BD. TOMIS nr. 80, CONSTANŢA',
	City = 'Constanta',
	Region = 'Dobrogea',
	PostalCode = '696505',
	Country = 'Romania',
	Phone = '0241-559 979',
	Fax = '0251.412479'
where CompanyName = 'Queen Cozinha';

update Customers
	set CompanyName = 'All Wound Up',
	ContactName = 'Constantin  Chirila',
	[Address] = 'STR. HORIA nr. 5, DOLJ',
	City = 'DOLJ',
	Region = 'Oltenia',
	PostalCode = '567203',
	Country = 'Romania',
	Phone = '0251-544 521',
	Fax = '0251.598054'
where CompanyName = 'QUICK-Stop';

update Customers
	set CompanyName = 'Datacorp',
	ContactName = 'Florin  Urzica',
	[Address] = 'STR. ROBESCU F. CONSTANTIN nr. 11, Sector 3',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '059698',
	Country = 'Romania',
	Phone = '021-316 6831',
	Fax = '0251.598054'
where CompanyName = 'Rancho grande';

update Customers
	set CompanyName = 'Computer City',
	ContactName = 'Marinela  Cozma',
	[Address] = 'STR. HOREA nr. 40, CLUJ',
	City = 'Cluj-Napoca',
	Region = 'Transilvania',
	PostalCode = '238154',
	Country = 'Romania',
	Phone = '0264-442 044',
	Fax = null
where CompanyName = 'Rattlesnake Canyon Grocery';

update Customers
	set CompanyName = 'Ideal Garden Management',
	ContactName = 'Andrei  Barladeanu',
	[Address] = 'STR. REPUBLICII nr. 65-67, CLUJ',
	City = 'Cluj-Napoca',
	Region = 'Transilvania',
	PostalCode = '786220',
	Country = 'Romania',
	Phone = '0264-599 331',
	Fax = '0251.419689'
where CompanyName = 'Reggiani Caseifici';

update Customers
	set CompanyName = 'Buttrey Food & Drug',
	ContactName = 'Neculai  Calinescu',
	[Address] = 'STR. RARES PETRU nr. 50A, COM. ALEXANDRU CEL BUN',
	City = 'NEAMŢ',
	Region = 'Moldova',
	PostalCode = '070085',
	Country = 'Romania',
	Phone = '0730-330 481',
	Fax = '0251.419689'
where CompanyName = 'Ricardo Adocicados';

update Customers
	set CompanyName = 'Practi-Plan',
	ContactName = 'Corneliu  Preda',
	[Address] = 'Aleea Spitalului 28A, Arges',
	City = 'Arges',
	Region = 'Muntenia',
	PostalCode = '327141',
	Country = 'Romania',
	Phone = '+40(248)280101',
	Fax = '0251.413820'
where CompanyName = 'Richter Supermarkt';

update Customers
	set CompanyName = 'Adaptaz',
	ContactName = 'Traian  Ungur',
	[Address] = 'SOS. CHITILEI nr. 115, Bucuresti - Sector 1',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '798227',
	Country = 'Romania',
	Phone = '0722-414 016',
	Fax = '0251.413820'
where CompanyName = 'Romero y tomillo';

update Customers
	set CompanyName = 'Vinyl Fever',
	ContactName = 'Danut  Gogean',
	[Address] = 'STR. 10 MAI nr. 15, DaMBOVIŢA',
	City = 'Targoviste',
	Region = 'Muntenia',
	PostalCode = '453993',
	Country = 'Romania',
	Phone = '0245-216 446',
	Fax = '0251.437979'
where CompanyName = 'Santé Gourmet';

update Customers
	set CompanyName = 'Handy Andy Home Improvement Center',
	ContactName = 'Valeriu  Moldovanu',
	[Address] = 'BD. MANIU IULIU nr. 7 bl. Corp G ap. 18B, Sector 6',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '460609',
	Country = 'Romania',
	Phone = '0722-121 659',
	Fax = '0251.438844'
where CompanyName = 'Save-a-lot Markets';

update Customers
	set CompanyName = 'MegaSolutions',
	ContactName = 'Marta  Gaina',
	[Address] = 'INT. PATINOARULUI nr. 7 bl. 5 sc. 1 et 2 Ap. 3, Sector 3',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '156963',
	Country = 'Romania',
	Phone = '021-324 3772',
	Fax = '0251.510174'
where CompanyName = 'Seven Seas Imports';

update Customers
	set CompanyName = 'Total Sources',
	ContactName = 'Tara  Dumitru',
	[Address] = 'Strada Regiment 5 Vanatori, nr.4-6',
	City = 'Timisoara',
	Region = 'Banat',
	PostalCode = '410656',
	Country = 'Romania',
	Phone = '+40(256)43250',
	Fax = '0251.510174'
where CompanyName = 'Simons bistro';

update Customers
	set CompanyName = 'Jackhammer Technologies',
	ContactName = 'Vasile  Avramescu',
	[Address] = 'STR. CUZA I. AL. bl. 25 et PARTER ap. 3, GORJ',
	City = 'Targu Jiu',
	Region = 'Oltenia',
	PostalCode = '696505',
	Country = 'Romania',
	Phone = '0722-441 992',
	Fax = '0251.525290'
where CompanyName = 'Spécialités du monde';

update Customers
	set CompanyName = 'Vinyl Fever',
	ContactName = 'David  Stelymes',
	[Address] = 'STR. LAZAR GHEORGHE nr. 17, TIMIS',
	City = 'Timisoara',
	Region = 'Banat',
	PostalCode = '696505',
	Country = 'Romania',
	Phone = '0759926648',
	Fax = '0251.525290'
where CompanyName = 'Split Rail Beer & Ale';

update Customers
	set CompanyName = 'Gene Walter',
	ContactName = 'Nina  Cardei',
	[Address] = 'STR. ZORILOR nr. 4 sc. B, BOTOSANI',
	City = 'Botosani',
	Region = 'Bucovina',
	PostalCode = '696505',
	Country = 'Romania',
	Phone = '0231-582 776',
	Fax = '0251.438730'
where CompanyName = 'Suprêmes délices';

update Customers
	set CompanyName = 'Dream Home Improvements',
	ContactName = 'Vasilescu  Vlaicu',
	[Address] = 'DRUM. TABEREI nr. 94 bl. 519, Sector 6',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '090827',
	Country = 'Romania',
	Phone = '021-322 2289',
	Fax = '0251.438730'
where CompanyName = 'The Big Cheese';

update Customers
	set CompanyName = 'Brendle',
	ContactName = 'Marta  Suciu',
	[Address] = 'Strada Caldarari 1, Bucuresti 3',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '375093',
	Country = 'Romania',
	Phone = '+40(744)318414',
	Fax = '0251.417049'
where CompanyName = 'The Cracker Box';

update Customers
	set CompanyName = 'Rite Solution',
	ContactName = 'Ilie  Stanescu',
	[Address] = 'CAL. LUI TRAIAN nr. 331, VaLCEA',
	City = 'VaLCEA',
	Region = 'Oltenia',
	PostalCode = '224729',
	Country = 'Romania',
	Phone = '0250-746 501',
	Fax = '0251.417049'
where CompanyName = 'Toms Spezialitäten';

update Customers
	set CompanyName = 'Matrix Interior Design',
	ContactName = 'Sanda  Stelymes',
	[Address] = 'CAL. GALATA 340, Galati',
	City = 'Galati',
	Region = 'Dobrogea',
	PostalCode = '624857',
	Country = 'Romania',
	Phone = '0744-755 056',
	Fax = '0251.411755'
where CompanyName = 'Tortuga Restaurante';

update Customers
	set CompanyName = 'StopGrey',
	ContactName = 'Craita  Iliescu',
	[Address] = 'Strada Traian 57, Bucuresti',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '812861',
	Country = 'Romania',
	Phone = '+40(21)3260355',
	Fax = '0251.411755'
where CompanyName = 'Tradição Hipermercados';

update Customers
	set CompanyName = 'W. Bell & Co.',
	ContactName = 'Dorin  Butacu',
	[Address] = 'SOS. MIHAI BRAVU nr. 444 bl. V10 sc. 3 et 1 Ap. 66, Sector 3',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '584908',
	Country = 'Romania',
	Phone = '0734-961 412',
	Fax = '0251.413921'
where CompanyName like '%s Head Gourmet Provisioners';

update Customers
	set CompanyName = 'Sun Foods',
	ContactName = 'Matei  Pop',
	[Address] = 'BD. LACUL TEI nr. 77 bl. N et demisol ap. 17, Sector 2',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '879813',
	Country = 'Romania',
	Phone = '021-243 2721',
	Fax = '0251.414021'
where CompanyName = 'Vaffeljernet';

update Customers
	set CompanyName = 'Chandler',
	ContactName = 'Victoria  Andreescu',
	[Address] = 'STR. MUSCA VASILE nr. 5, Sector 5',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '812056',
	Country = 'Romania',
	Phone = '0723-611 818',
	Fax = '0251.414021'
where CompanyName = 'Victuailles en stock';

update Customers
	set CompanyName = 'Strength Gurus',
	ContactName = 'Livia  Gaina',
	[Address] = 'BD. LAPUSNEANU A. nr. 185, CONSTANŢA',
	City = 'Constanta',
	Region = 'Dobrogea',
	PostalCode = '579782',
	Country = 'Romania',
	Phone = '0726-201 736',
	Fax = '0251.411753'
where CompanyName = 'Vins et alcools Chevalier';

update Customers
	set CompanyName = 'Awthentikz',
	ContactName = 'Diona  Lascar',
	[Address] = 'STR. GIMNASTICII nr. 11, SIBIU',
	City = 'SIBIU',
	Region = 'Transilvania',
	PostalCode = '164270',
	Country = 'Romania',
	Phone = '0269-245 479',
	Fax = '0251.413405'
where CompanyName = 'Die Wandernde Kuh';

update Customers
	set CompanyName = 'Dream Home Improvements',
	ContactName = 'Vasilescu  Vlaicu',
	[Address] = 'DRUM. TABEREI nr. 94 bl. 519, Sector 6',
	City = 'Bucuresti',
	Region = 'Muntenia',
	PostalCode = '432841',
	Country = 'Romania',
	Phone = '021-322 2289',
	Fax = '0251.415032'
where CompanyName = 'Wartian Herkku';

update Customers
	set CompanyName = 'David Weis',
	ContactName = 'Ionus  Sandulescu',
	[Address] = 'nr. 153, COM. GEPIU',
	City = 'BIHOR',
	Region = 'Crisana',
	PostalCode = '250218',
	Country = 'Romania',
	Phone = '0744-963 516',
	Fax = '0251.415036'
where CompanyName = 'Wellington Importadora';

update Customers
	set CompanyName = 'Multi Tech Development',
	ContactName = 'Monica  Preda',
	[Address] = 'STR. MORII nr. 10-12, VALEA LUI MIHAI',
	City = 'BIHOR',
	Region = 'Crisana',
	PostalCode = '757011',
	Country = 'Romania',
	Phone = '0259-355 413',
	Fax = '0251.415036'
where CompanyName = 'White Clover Markets';

update Customers
	set CompanyName = 'Beaver Lumber',
	ContactName = 'Natalia  Zaituc',
	[Address] = 'STR. MIHAI VITEAZU nr. 31, MURES',
	City = 'Targu Mures',
	Region = 'Transilvania',
	PostalCode = '540004',
	Country = 'Romania',
	Phone = '0265-210 902',
	Fax = '0251.411752'
where CompanyName = 'Wilman Kala';

update Customers
	set CompanyName = 'Maxi-Tech',
	ContactName = 'Sebastian  Barnutiu',
	[Address] = 'STR. VALEANCA, COM. BUCOV',
	City = 'PRAHOVA',
	Region = 'Muntenia',
	PostalCode = '100003',
	Country = 'Romania',
	Phone = '0244-274 138',
	Fax = '0251.411754'
where CompanyName = 'Wolski  Zajazd';

update Customers
set ContactTitle = 'Manager Contabilitate'
where ContactTitle = 'Accounting Manager';

update Customers
set ContactTitle = 'Asistent Vanzari'
where ContactTitle = 'Assistant Sales Agent';

update Customers
set ContactTitle = 'Reprezentant Vanzari'
where ContactTitle = 'Assistant Sales Representative';

update Customers
set ContactTitle = 'Asistent Marketing'
where ContactTitle = 'Marketing Assistant';

update Customers
set ContactTitle = 'Director Marketing'
where ContactTitle = 'Marketing Manager';

update Customers
set ContactTitle = 'Administrator Comenzi'
where ContactTitle = 'Order Administrator';

update Customers
set ContactTitle = 'Patron'
where ContactTitle = 'Owner';

update Customers
set ContactTitle = 'Patron/Asistent Marketing'
where ContactTitle = 'Owner/Marketing Assistant';

update Customers
set ContactTitle = 'Agent Vanzari'
where ContactTitle = 'Sales Agent';

update Customers
set ContactTitle = 'Asociat'
where ContactTitle = 'Sales Associate';

update Customers
set ContactTitle = 'Manager Vanzari'
where ContactTitle = 'Sales Manager';

update Customers
set ContactTitle = 'Reprezentant Vanzari'
where ContactTitle = 'Sales Representative';


---------------------------------------------------------------------------------------
--		Shippers

update Shippers
set CompanyName = 'FedEx',
	Phone = '+40213034567 '
where ShipperID = 1;

update Shippers
set CompanyName = 'Urgent Cargus',
	Phone = '021 9330 '
where ShipperID = 2;

update Shippers
set CompanyName = 'FAN Courier',
	Phone = '+40742552233 '
where ShipperID = 3;
go
---------------------------------------------------------------------------------------
--		Products

alter table Products
alter column QuantityPerUnit nvarchar(30);
go

update Products
set QuantityPerUnit = '10 cutii x 20 pungi'
where ProductID = 1;

update Products
set QuantityPerUnit = '24 sticle de 355ml'
where ProductID = 2;

update Products
set QuantityPerUnit = '12 sticle de 550ml'
where ProductID = 3;

update Products
set QuantityPerUnit = '48 borcane de 177ml'
where ProductID = 4;

update Products
set QuantityPerUnit = '36 cutii'
where ProductID = 5;

update Products
set QuantityPerUnit = '12 borcane de 236ml'
where ProductID = 6;

update Products
set QuantityPerUnit = '12 pachete de 5.4kg'
where ProductID = 7;

update Products
set QuantityPerUnit = '12 borcane de 355ml'
where ProductID = 8;

update Products
set QuantityPerUnit = '18 packete de 500g'
where ProductID = 9;

update Products
set QuantityPerUnit = '12 borcane de 200ml'
where ProductID = 10;

update Products
set QuantityPerUnit = 'pachete de 1kg'
where ProductID = 11;

update Products
set QuantityPerUnit = '10 pachete de 500g'
where ProductID = 12;

update Products
set QuantityPerUnit = 'cutii de 2kg'
where ProductID = 13;

update Products
set QuantityPerUnit = '40 pachete de 100g'
where ProductID = 14;

update Products
set QuantityPerUnit = '24 sticle de 250ml'
where ProductID = 15;

update Products
set QuantityPerUnit = '32 cutii de 500g'
where ProductID = 16;

update Products
set QuantityPerUnit = '20 conserve de 1kg'
where ProductID = 17;

update Products
set QuantityPerUnit = 'pachet de 16kg'
where ProductID = 18;

update Products
set QuantityPerUnit = '10 cutii cu 12 piese cutia'
where ProductID = 19;

update Products
set QuantityPerUnit = '30 de cutii de cadou'
where ProductID = 20;

update Products
set QuantityPerUnit = '24 pachete cu 4 piese pachetul'
where ProductID = 21;

update Products
set QuantityPerUnit = '24 pachete de 500g'
where ProductID = 22;

update Products
set QuantityPerUnit = '12 pachete de 250g'
where ProductID = 23;

update Products
set QuantityPerUnit = '12 conserve de 355ml'
where ProductID = 24;

update Products
set QuantityPerUnit = '20 pahare de 450g'
where ProductID = 25;

update Products
set QuantityPerUnit = '100 pungi de 250g'
where ProductID = 26;

update Products
set QuantityPerUnit = '100 bucati de 100g'
where ProductID = 27;

update Products
set QuantityPerUnit = '25 borcane de 825g'
where ProductID = 28;

update Products
set QuantityPerUnit = '50 pungi cu 30 sosuri punga'
where ProductID = 29;

update Products
set QuantityPerUnit = '100 pahare de 200g'
where ProductID = 30;

update Products
set QuantityPerUnit = '12 pachete de 100g'
where ProductID = 31;

update Products
set QuantityPerUnit = '24 pachete de 200g'
where ProductID = 32;

update Products
set QuantityPerUnit = '500g'
where ProductID = 33;

update Products
set QuantityPerUnit = '24 sticle de 355ml'
where ProductID = 34;

update Products
set QuantityPerUnit = '24 sticle de 355ml'
where ProductID = 35;

update Products
set QuantityPerUnit = '24 borcane de 250g'
where ProductID = 36;

update Products
set QuantityPerUnit = '12 pachete de 500g'
where ProductID = 37;

update Products
set QuantityPerUnit = '12 sticle de 750g'
where ProductID = 38;

update Products
set QuantityPerUnit = 'sticla de 750g'
where ProductID = 39;

update Products
set QuantityPerUnit = '24 conserve de 118ml'
where ProductID = 40;

update Products
set QuantityPerUnit = '12 doze de 355ml'
where ProductID = 41;

update Products
set QuantityPerUnit = '32 pachete de 1kg'
where ProductID = 42;

update Products
set QuantityPerUnit = '16 conserve de 500g'
where ProductID = 43;

update Products
set QuantityPerUnit = '20 pungi de 2kg'
where ProductID = 44;

update Products
set QuantityPerUnit = 'pachet de 1kg'
where ProductID = 45;

update Products
set QuantityPerUnit = '4 pahare de 450g'
where ProductID = 46;

update Products
set QuantityPerUnit = '10 cutii de 118g'
where ProductID = 47;

update Products
set QuantityPerUnit = '10 pachete'
where ProductID = 48;

update Products
set QuantityPerUnit = '24 pachete de 50g'
where ProductID = 49;

update Products
set QuantityPerUnit = '12 bauturi de 100g'
where ProductID = 50;

update Products
set QuantityPerUnit = '50 pachete de 300g'
where ProductID = 51;

update Products
set QuantityPerUnit = '16 cutii de 2kg'
where ProductID = 52;

update Products
set QuantityPerUnit = '48 bucati'
where ProductID = 53;

update Products
set QuantityPerUnit = '16 bucati'
where ProductID = 54;

update Products
set QuantityPerUnit = '24 cutii a 2 bucati'
where ProductID = 55;

update Products
set QuantityPerUnit = '24 pachete de 250g'
where ProductID = 56;

update Products
set QuantityPerUnit = '24 pachete de 250g'
where ProductID = 57;

update Products
set QuantityPerUnit = '24 piese'
where ProductID = 58;

update Products
set QuantityPerUnit = 'pachet de 5 kg'
where ProductID = 59;

update Products
set QuantityPerUnit = '15 randuri de 300g'
where ProductID = 60;

update Products
set QuantityPerUnit = '24 sticle de 500ml'
where ProductID = 61;

update Products
set QuantityPerUnit = '48 bucati'
where ProductID = 62;

update Products
set QuantityPerUnit = '15 borcane de 625g'
where ProductID = 63;

update Products
set QuantityPerUnit = '20 pungi cu 4 bucati fiecare'
where ProductID = 64;

update Products
set QuantityPerUnit = '32 sticle de 236ml'
where ProductID = 65;

update Products
set QuantityPerUnit = '24 borcane de 236ml'
where ProductID = 66;

update Products
set QuantityPerUnit = '24 sticle de 355ml'
where ProductID = 67;

update Products
set QuantityPerUnit = '10 cutii cu  8 bucati'
where ProductID = 68;

update Products
set QuantityPerUnit = 'pachet de 10kg'
where ProductID = 69;

update Products
set QuantityPerUnit = '24 sticle de 355ml'
where ProductID = 70;

update Products
set QuantityPerUnit = '10 pachete de 500g'
where ProductID = 71;

update Products
set QuantityPerUnit = '24 pachete de 150g'
where ProductID = 72;

update Products
set QuantityPerUnit = '24 pachete de 200g'
where ProductID = 73;

update Products
set QuantityPerUnit = 'pachet de 5 kg'
where ProductID = 74;

update Products
set QuantityPerUnit = '24 sticle de 0.5l'
where ProductID = 75;

update Products
set QuantityPerUnit = '500ml'
where ProductID = 76;

update Products
set QuantityPerUnit = '12 cutii'
where ProductID = 77;
go

---------------------------------------------------------------------------------------
--		Orders

--select * from Orders
--select * from Customers


declare @count bigint = 1;
declare @customerNum int = (select count(Customers.CompanyName) from Customers);
declare @orderNum bigint = (select count(Orders.OrderID) from Orders);

while(@count <= @orderNum)
begin
	update Orders
	set Orders.CustomerID = (SELECT foo.CustomerID FROM (
									SELECT
										ROW_NUMBER() OVER (ORDER BY Customers.CompanyName ASC) AS rownumber,
										Customers.CustomerID, Customers.CompanyName, Customers.[Address], Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
									  FROM Customers
									) AS foo
								WHERE rownumber = (@count * 2) % @customerNum + 1),
		Orders.ShipName = (SELECT foo.CompanyName FROM (
									SELECT
										ROW_NUMBER() OVER (ORDER BY Customers.CompanyName ASC) AS rownumber,
										Customers.CustomerID, Customers.CompanyName, Customers.[Address], Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
									  FROM Customers
									) AS foo
								WHERE rownumber = (@count * 2) % @customerNum + 1),
		Orders.ShipAddress = (SELECT foo.[Address] FROM (
									SELECT
										ROW_NUMBER() OVER (ORDER BY Customers.CompanyName ASC) AS rownumber,
										Customers.CustomerID, Customers.CompanyName, Customers.[Address], Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
									  FROM Customers
									) AS foo
								WHERE rownumber = (@count * 2) % @customerNum + 1),
		Orders.ShipCity = (SELECT foo.City FROM (
									SELECT
										ROW_NUMBER() OVER (ORDER BY Customers.CompanyName ASC) AS rownumber,
										Customers.CustomerID, Customers.CompanyName, Customers.[Address], Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
									  FROM Customers
									) AS foo
								WHERE rownumber = (@count * 2) % @customerNum + 1),
		Orders.ShipRegion = (SELECT foo.Region FROM (
									SELECT
										ROW_NUMBER() OVER (ORDER BY Customers.CompanyName ASC) AS rownumber,
										Customers.CustomerID, Customers.CompanyName, Customers.[Address], Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
									  FROM Customers
									) AS foo
								WHERE rownumber = (@count * 2) % @customerNum + 1),
		Orders.ShipPostalCode = (SELECT foo.PostalCode FROM (
									SELECT
										ROW_NUMBER() OVER (ORDER BY Customers.CompanyName ASC) AS rownumber,
										Customers.CustomerID, Customers.CompanyName, Customers.[Address], Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
									  FROM Customers
									) AS foo
								WHERE rownumber = (@count * 2) % @customerNum + 1),
		Orders.ShipCountry = (SELECT foo.Country FROM (
									SELECT
										ROW_NUMBER() OVER (ORDER BY Customers.CompanyName ASC) AS rownumber,
										Customers.CustomerID, Customers.CompanyName, Customers.[Address], Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
									  FROM Customers
									) AS foo
								WHERE rownumber = (@count * 2) % @customerNum + 1)
	where OrderID = (	SELECT OrderID FROM (
							SELECT
								ROW_NUMBER() OVER (ORDER BY CustomerID ASC) AS rownumber1,
								OrderID
							  FROM Orders
							) AS sss
						WHERE rownumber1 = @count);
set @count = @count +  1;
end;
go

----------------------------------------------------------------------------------
--	Category Changes


/* Alter table pentu a il putea modifica*/
alter table Products
drop constraint FK_Products_Suppliers
go

-- aici bagi categoriile 

/*#1. create FOREIGN key */
ALTER TABLE [dbo].Products
ADD  CONSTRAINT FK_Products_Suppliers FOREIGN KEY(SupplierID)
REFERENCES [dbo].Suppliers (SupplierID)
go

----------------------------------------------------------------------------------
--	Product changes

/* Alter table pentu a il putea modifica*/
alter table [Order Details]
drop constraint FK_Order_Details_Products
go
-- aici bagi produsele 
select * from Products
	insert into Products values(1,'Nokia 230 Dual SIM Dark Silver',1,1,1,229,10,1,1,'true')
	insert into Products values(2,'CAT B25 Dual SIM Black',1,1,1,244,10,1,1,'true')
	insert into Products values(3,'Nokia 222 Black',1,1,1,169,10,1,1,'true')
	insert into Products values(4,'Nokia 230 Dark Silver',1,1,1,229,10,1,1,'true')
	insert into Products values(5,'Nokia 130 Single SIM Black',1,1,1,99,10,1,1,'true')

	insert into Products values(6,'Apple iPhone 7 32GB Black',1,2,1,2999,10,1,1,'true')
	insert into Products values(7,'Samsung Galaxy J5(2016) J510 Dual SIM Gold',1,2,1,849,10,1,1,'true')
	insert into Products values(8,'Samsung Galaxy S8 G950F 64GB 4G Black',1,2,1,2989,10,1,1,'true')
	insert into Products values(9,'Apple iPhone 6 32GB Space Gray',1,2,1,1899,10,1,1,'true')
	insert into Products values(10,'Samsung Galaxy J1 Mini Prime J106 Dual Sim 3G Black',1,2,1,349,10,1,1,'true')
	
	insert into Products values(11,'Selfie Stick Android iOS',1,3,1,39,10,1,1,'true')
	insert into Products values(12,'Casti JBL T110 Negre',1,3,1,39,10,1,1,'true')
	insert into Products values(13,'Baterie Externa ADATA P20000D Power Bank 20000mAh Black',1,3,1,109,10,1,1,'true')
	insert into Products values(14,'Incarcator Samsung TA20 microUSB 2A AFC Fast Charge White',1,3,1,54,10,1,1,'true')
	insert into Products values(15,'Skin Samsung Galaxy S6 G920 Avengers',1,3,1,9,10,1,1,'true')


GO
----------------------------------------------------------------------------------
--	Change product reference in order
declare @whProductCount int = 1;
declare @productNumber int = (select count(Products.ProductID) from Products);
create table #tempTab(id int, val int);
insert into #tempTab values(1, 0);
while(@productNumber >= @whProductCount)
begin
	update #tempTab
	set val = ((SELECT foo.ProductID as prodid FROM (
		SELECT
			ROW_NUMBER() OVER (ORDER BY ProductID ASC) AS rownumber, ProductID
			FROM [Order Details]
		) AS foo
	WHERE rownumber = @whProductCount))
	where id = 1;

	if((select val from #tempTab) > @productNumber)
	begin
		update [Order Details]
		set ProductID = (select val from #tempTab where id = 1) % @productNumber;
	end
	set @whProductCount = @whProductCount + 1;
end
drop table #tempTab;

/*#1. create FOREIGN key */
ALTER TABLE [dbo].[Order Details]
ADD  CONSTRAINT FK_Order_Details_Products FOREIGN KEY(ProductID)
REFERENCES [dbo].Products (ProductID)
go
drop procedure getImg
go