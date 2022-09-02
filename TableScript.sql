GO 
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[NewsLetters] [bit] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


SET NOCOUNT ON;
SET XACT_ABORT ON;
GO

SET IDENTITY_INSERT [dbo].[Customers] ON;

BEGIN TRANSACTION;
INSERT INTO [dbo].[Customers]([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [NewsLetters])
SELECT 1, N'Alfreds Futterkiste', N'Maria Anders', N'Sales Representative', N'Obere Str. 57', N'Berlin', NULL, N'12209', N'Germany', N'030-0074321', N'030-0076545', NULL UNION ALL
SELECT 2, N'Ana Trujillo Emparedados y helados', N'Ana Trujillo', N'Owner', N'Avda. de la Constituci�n 2222', N'M�xico D.F.', NULL, N'05021', N'Mexico', N'(5) 555-4729', N'(5) 555-3745', NULL UNION ALL
SELECT 3, N'Antonio Moreno Taquer�a', N'Antonio Moreno', N'Owner', N'Mataderos  2312', N'M�xico D.F.', NULL, N'05023', N'Mexico', N'(5) 555-3932', NULL, 1 UNION ALL
SELECT 4, N'Around the Horn', N'Thomas Hardy', N'Sales Representative', N'120 Hanover Sq.', N'London', NULL, N'WA1 1DP', N'UK', N'(171) 555-7788', N'(171) 555-6750', NULL UNION ALL
SELECT 5, N'Berglunds snabbk�p', N'Christina Berglund', N'Order Administrator', N'Berguvsv�gen  8', N'Lule�', NULL, N'S-958 22', N'Sweden', N'0921-12 34 65', N'0921-12 34 67', NULL UNION ALL
SELECT 6, N'Blauer See Delikatessen', N'Hanna Moos', N'Sales Representative', N'Forsterstr. 57', N'Mannheim', NULL, N'68306', N'Germany', N'0621-08460', N'0621-08924', NULL UNION ALL
SELECT 7, N'Blondesddsl p�re et fils', N'Fr�d�rique Citeaux', N'Marketing Manager', N'24, place Kl�ber', N'Strasbourg', NULL, N'67000', N'France', N'88.60.15.31', N'88.60.15.32', NULL UNION ALL
SELECT 8, N'B�lido Comidas preparadas', N'Mart�n Sommer', N'Owner', N'C/ Araquil, 67', N'Madrid', NULL, N'28023', N'Spain', N'(91) 555 22 82', N'(91) 555 91 99', 1 UNION ALL
SELECT 9, N'Bon app''', N'Laurence Lebihan', N'Owner', N'12, rue des Bouchers', N'Marseille', NULL, N'13008', N'France', N'91.24.45.40', N'91.24.45.41', NULL UNION ALL
SELECT 10, N'Bottom-Dollar Markets', N'Elizabeth Lincoln', N'Accounting Manager', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', N'Canada', N'(604) 555-4729', N'(604) 555-3745', NULL UNION ALL
SELECT 11, N'B''s Beverages', N'Victoria Ashworth', N'Sales Representative', N'Fauntleroy Circus', N'London', NULL, N'EC2 5NT', N'UK', N'(171) 555-1212', NULL, NULL UNION ALL
SELECT 12, N'Cactus Comidas para llevar', N'Patricio Simpson', N'Sales Agent', N'Cerrito 333', N'Buenos Aires', NULL, N'1010', N'Argentina', N'(1) 135-5555', N'(1) 135-4892', NULL UNION ALL
SELECT 13, N'Centro comercial Moctezuma', N'Francisco Chang', N'Marketing Manager', N'Sierras de Granada 9993', N'M�xico D.F.', NULL, N'05022', N'Mexico', N'(5) 555-3392', N'(5) 555-7293', 1 UNION ALL
SELECT 14, N'Chop-suey Chinese', N'Yang Wang', N'Owner', N'Hauptstr. 29', N'Bern', NULL, N'3012', N'Switzerland', N'0452-076545', NULL, NULL UNION ALL
SELECT 15, N'Com�rcio Mineiro', N'Pedro Afonso', N'Sales Associate', N'Av. dos Lus�adas, 23', N'Sao Paulo', N'SP', N'05432-043', N'Brazil', N'(11) 555-7647', NULL, NULL UNION ALL
SELECT 16, N'Consolidated Holdings', N'Elizabeth Brown', N'Sales Representative', N'Berkeley Gardens 12  Brewery', N'London', NULL, N'WX1 6LT', N'UK', N'(171) 555-2282', N'(171) 555-9199', 1 UNION ALL
SELECT 17, N'Drachenblut Delikatessen', N'Sven Ottlieb', N'Order Administrator', N'Walserweg 21', N'Aachen', NULL, N'52066', N'Germany', N'0241-039123', N'0241-059428', 1 UNION ALL
SELECT 18, N'Du monde entier', N'Janine Labrune', N'Owner', N'67, rue des Cinquante Otages', N'Nantes', NULL, N'44000', N'France', N'40.67.88.88', N'40.67.89.89', NULL UNION ALL
SELECT 19, N'Eastern Connection', N'Ann Devon', N'Sales Agent', N'35 King George', N'London', NULL, N'WX3 6FW', N'UK', N'(171) 555-0297', N'(171) 555-3373', NULL UNION ALL
SELECT 20, N'Ernst Handel', N'Roland Mendel', N'Sales Manager', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria', N'7675-3425', N'7675-3426', NULL UNION ALL
SELECT 21, N'Familia Arquibaldo', N'Aria Cruz', N'Marketing Assistant', N'Rua Or�s, 92', N'Sao Paulo', N'SP', N'05442-030', N'Brazil', N'(11) 555-9857', NULL, NULL UNION ALL
SELECT 22, N'FISSA Fabrica Inter. Salchichas S.A.', N'Diego Roel', N'Accounting Manager', N'C/ Moralzarzal, 86', N'Madrid', NULL, N'28034', N'Spain', N'(91) 555 94 44', N'(91) 555 55 93', 1 UNION ALL
SELECT 23, N'Folies gourmandes', N'Martine Ranc�', N'Assistant Sales Agent', N'184, chauss�e de Tournai', N'Lille', NULL, N'59000', N'France', N'20.16.10.16', N'20.16.10.17', NULL UNION ALL
SELECT 24, N'Folk och f� HB', N'Maria Larsson', N'Owner', N'�kergatan 24', N'Br�cke', NULL, N'S-844 67', N'Sweden', N'0695-34 67 21', NULL, NULL UNION ALL
SELECT 25, N'Frankenversand', N'Peter Franken', N'Marketing Manager', N'Berliner Platz 43', N'M�nchen', NULL, N'80805', N'Germany', N'089-0877310', N'089-0877451', 1 UNION ALL
SELECT 26, N'France restauration', N'Carine Schmitt', N'Marketing Manager', N'54, rue Royale', N'Nantes', NULL, N'44000', N'France', N'40.32.21.21', N'40.32.21.20', NULL UNION ALL
SELECT 27, N'Franchi S.p.A.', N'Paolo Accorti', N'Sales Representative', N'Via Monte Bianco 34', N'Torino', NULL, N'10100', N'Italy', N'011-4988260', N'011-4988261', NULL UNION ALL
SELECT 28, N'Furia Bacalhau e Frutos do Mar', N'Lino Rodriguez', N'Sales Manager', N'Jardim das rosas n. 32', N'Lisboa', NULL, N'1675', N'Portugal', N'(1) 354-2534', N'(1) 354-2535', 1 UNION ALL
SELECT 29, N'Galer�a del gastr�nomo', N'Eduardo Saavedra', N'Marketing Manager', N'Rambla de Catalu�a, 23', N'Barcelona', NULL, N'08022', N'Spain', N'(93) 203 4560', N'(93) 203 4561', 1 UNION ALL
SELECT 30, N'Godos Cocina T�pica', N'Jos� Pedro Freyre', N'Sales Manager', N'C/ Romero, 33', N'Sevilla', NULL, N'41101', N'Spain', N'(95) 555 82 82', NULL, NULL UNION ALL
SELECT 31, N'Gourmet Lanchonetes', N'Andr� Fonseca', N'Sales Associate', N'Av. Brasil, 442', N'Campinas', N'SP', N'04876-786', N'Brazil', N'(11) 555-9482', NULL, NULL UNION ALL
SELECT 32, N'Great Lakes Food Market', N'Howard Snyder', N'Marketing Manager', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', N'USA', N'(503) 555-7555', NULL, NULL UNION ALL
SELECT 33, N'GROSELLA-Restaurante', N'Manuel Pereira', N'Owner', N'5� Ave. Los Palos Grandes', N'Caracas', N'DF', N'1081', N'Venezuela', N'(2) 283-2951', N'(2) 283-3397', NULL UNION ALL
SELECT 34, N'Hanari Carnes', N'Mario Pontes', N'Accounting Manager', N'Rua do Pa�o, 67', N'Rio de Janeiro', N'RJ', N'05454-876', N'Brazil', N'(21) 555-0091', N'(21) 555-8765', NULL UNION ALL
SELECT 35, N'HILARION-Abastos', N'Carlos Hern�ndez', N'Sales Representative', N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Crist�bal', N'T�chira', N'5022', N'Venezuela', N'(5) 555-1340', N'(5) 555-1948', NULL UNION ALL
SELECT 36, N'Hungry Coyote Import Store', N'Yoshi Latimer', N'Sales Representative', N'City Center Plaza 516 Main St.', N'Elgin', N'OR', N'97827', N'USA', N'(503) 555-6874', N'(503) 555-2376', NULL UNION ALL
SELECT 37, N'Hungry Owl All-Night Grocers', N'Patricia McKenna', N'Sales Associate', N'8 Johnstown Road', N'Cork', N'Co. Cork', NULL, N'Ireland', N'2967 542', N'2967 3333', NULL UNION ALL
SELECT 38, N'Island Trading', N'Helen Bennett', N'Marketing Manager', N'Garden House Crowther Way', N'Cowes', N'Isle of Wight', N'PO31 7PJ', N'UK', N'(198) 555-8888', NULL, NULL UNION ALL
SELECT 39, N'K�niglich Essen', N'Philip Cramer', N'Sales Associate', N'Maubelstr. 90', N'Brandenburg', NULL, N'14776', N'Germany', N'0555-09876', NULL, NULL UNION ALL
SELECT 40, N'La corne d''abondance', N'Daniel Tonini', N'Sales Representative', N'67, avenue de l''Europe', N'Versailles', NULL, N'78000', N'France', N'30.59.84.10', N'30.59.85.11', NULL UNION ALL
SELECT 41, N'La maison d''Asie', N'Annette Roulet', N'Sales Manager', N'1 rue Alsace-Lorraine', N'Toulouse', NULL, N'31000', N'France', N'61.77.61.10', N'61.77.61.11', NULL UNION ALL
SELECT 42, N'Laughing Bacchus Wine Cellars', N'Yoshi Tannamuri', N'Marketing Assistant', N'1900 Oak St.', N'Vancouver', N'BC', N'V3F 2K1', N'Canada', N'(604) 555-3392', N'(604) 555-7293', NULL UNION ALL
SELECT 43, N'Lazy K Kountry Store', N'John Steel', N'Marketing Manager', N'12 Orchestra Terrace', N'Walla Walla', N'WA', N'99362', N'USA', N'(509) 555-7969', N'(509) 555-6221', NULL UNION ALL
SELECT 44, N'Lehmanns Marktstand', N'Renate Messner', N'Sales Representative', N'Magazinweg 7', N'Frankfurt a.M.', NULL, N'60528', N'Germany', N'069-0245984', N'069-0245874', NULL UNION ALL
SELECT 45, N'Let''s Stop N Shop', N'Jaime Yorres', N'Owner', N'87 Polk St. Suite 5', N'San Francisco', N'CA', N'94117', N'USA', N'(415) 555-5938', NULL, NULL UNION ALL
SELECT 46, N'LILA-Supermercado', N'Carlos Gonz�lez', N'Accounting Manager', N'Carrera 52 con Ave. Bol�var #65-98 Llano Largo', N'Barquisimeto', N'Lara', N'3508', N'Venezuela', N'(9) 331-6954', N'(9) 331-7256', NULL UNION ALL
SELECT 47, N'LINO-Delicateses', N'Felipe Izquierdo', N'Owner', N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'Nueva Esparta', N'4980', N'Venezuela', N'(8) 34-56-12', N'(8) 34-93-93', NULL UNION ALL
SELECT 48, N'Lonesome Pine Restaurant', N'Fran Wilson', N'Sales Manager', N'89 Chiaroscuro Rd.', N'Portland', N'OR', N'97219', N'USA', N'(503) 555-9573', N'(503) 555-9646', NULL UNION ALL
SELECT 49, N'Magazzini Alimentari Riuniti', N'Giovanni Rovelli', N'Marketing Manager', N'Via Ludovico il Moro 22', N'Bergamo', NULL, N'24100', N'Italy', N'035-640230', N'035-640231', NULL UNION ALL
SELECT 50, N'Maison Dewey', N'Catherine Dewey', N'Sales Agent', N'Rue Joseph-Bens 532', N'Bruxelles', NULL, N'B-1180', N'Belgium', N'(02) 201 24 67', N'(02) 201 24 68', NULL
COMMIT;
RAISERROR (N'[dbo].[Customers]: Insert Batch: 1.....Done!', 10, 1) WITH NOWAIT;
GO

BEGIN TRANSACTION;
INSERT INTO [dbo].[Customers]([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax], [NewsLetters])
SELECT 51, N'M�re Paillarde', N'Jean Fresni�re', N'Marketing Assistant', N'43 rue St. Laurent', N'Montr�al', N'Qu�bec', N'H1J 1C3', N'Canada', N'(514) 555-8054', N'(514) 555-8055', NULL UNION ALL
SELECT 52, N'Morgenstern Gesundkost', N'Alexander Feuer', N'Marketing Assistant', N'Heerstr. 22', N'Leipzig', NULL, N'04179', N'Germany', N'0342-023176', NULL, NULL UNION ALL
SELECT 53, N'North/South', N'Simon Crowther', N'Sales Associate', N'South House 300 Queensbridge', N'London', NULL, N'SW7 1RZ', N'UK', N'(171) 555-7733', N'(171) 555-2530', NULL UNION ALL
--SELECT 54, N'Oc�ano Atl�ntico Ltda.', N'Yvonne Moncada', N'Sales Agent', N'Ing. Gustavo Moncada 8585 Piso 20-A', N'Buenos Aires', NULL, N'1010', N'Argentina', N'(1) 135-5333', N'(1) 135-5535', NULL UNION ALL
SELECT 55, N'Old World Delicatessen', N'Rene Phillips', N'Sales Representative', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', N'USA', N'(907) 555-7584', N'(907) 555-2880', NULL UNION ALL
SELECT 56, N'Ottilies K�seladen', N'Henriette Pfalzheim', N'Owner', N'Mehrheimerstr. 369', N'K�ln', NULL, N'50739', N'Germany', N'0221-0644327', N'0221-0765721', NULL UNION ALL
SELECT 57, N'Paris sp�cialit�s', N'Marie Bertrand', N'Owner', N'265, boulevard Charonne', N'Paris', NULL, N'75012', N'France', N'(1) 42.34.22.66', N'(1) 42.34.22.77', NULL UNION ALL
--SELECT 58, N'Pericles Comidas cl�sicas', N'Guillermo Fern�ndez', N'Sales Representative', N'Calle Dr. Jorge Cash 321', N'M�xico D.F.', NULL, N'05033', N'Mexico', N'(5) 552-3745', N'(5) 545-3745', NULL UNION ALL
SELECT 59, N'Piccolo und mehr', N'Georg Pipps', N'Sales Manager', N'Geislweg 14', N'Salzburg', NULL, N'5020', N'Austria', N'6562-9722', N'6562-9723', NULL UNION ALL
SELECT 60, N'Princesa Isabel Vinhos', N'Isabel de Castro', N'Sales Representative', N'Estrada da sa�de n. 58', N'Lisboa', NULL, N'1756', N'Portugal', N'(1) 356-5634', NULL, NULL UNION ALL
--SELECT 61, N'Que Del�cia', N'Bernardo Batista', N'Accounting Manager', N'Rua da Panificadora, 12', N'Rio de Janeiro', N'RJ', N'02389-673', N'Brazil', N'(21) 555-4252', N'(21) 555-4545', NULL UNION ALL
SELECT 62, N'Queen Cozinha', N'L�cia Carvalho', N'Marketing Assistant', N'Alameda dos Can�rios, 891', N'Sao Paulo', N'SP', N'05487-020', N'Brazil', N'(11) 555-1189', NULL, NULL UNION ALL
SELECT 63, N'QUICK-Stop', N'Horst Kloss', N'Accounting Manager', N'Taucherstra�e 10', N'Cunewalde', NULL, N'01307', N'Germany', N'0372-035188', NULL, NULL UNION ALL
SELECT 64, N'Rancho grande', N'Sergio Guti�rrez', N'Sales Representative', N'Av. del Libertador 900', N'Buenos Aires', NULL, N'1010', N'Argentina', N'(1) 123-5555', N'(1) 123-5556', NULL UNION ALL
SELECT 65, N'Rattlesnake Canyon Grocery', N'Paula Wilson', N'Assistant Sales Representative', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', N'USA', N'(505) 555-5939', N'(505) 555-3620', NULL UNION ALL
SELECT 66, N'Reggiani Caseifici', N'Maurizio Moroni', N'Sales Associate', N'Strada Provinciale 124', N'Reggio Emilia', NULL, N'42100', N'Italy', N'0522-556721', N'0522-556722', NULL UNION ALL
SELECT 67, N'Ricardo Adocicados', N'Janete Limeira', N'Assistant Sales Agent', N'Av. Copacabana, 267', N'Rio de Janeiro', N'RJ', N'02389-890', N'Brazil', N'(21) 555-3412', NULL, NULL UNION ALL
SELECT 68, N'Richter Supermarkt', N'Michael Holz', N'Sales Manager', N'Grenzacherweg 237', N'Gen�ve', NULL, N'1203', N'Switzerland', N'0897-034214', NULL, NULL UNION ALL
SELECT 69, N'Romero y tomillo', N'Alejandra Camino', N'Accounting Manager', N'Gran V�a, 1', N'Madrid', NULL, N'28001', N'Spain', N'(91) 745 6200', N'(91) 745 6210', NULL UNION ALL
SELECT 70, N'Sant� Gourmet', N'Jonas Bergulfsen', N'Owner', N'Erling Skakkes gate 78', N'Stavern', NULL, N'4110', N'Norway', N'07-98 92 35', N'07-98 92 47', NULL UNION ALL
SELECT 71, N'Save-a-lot Markets', N'Jose Pavarotti', N'Sales Representative', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', N'USA', N'(208) 555-8097', NULL, NULL UNION ALL
SELECT 72, N'Seven Seas Imports', N'Hari Kumar', N'Sales Manager', N'90 Wadhurst Rd.', N'London', NULL, N'OX15 4NB', N'UK', N'(171) 555-1717', N'(171) 555-5646', NULL UNION ALL
SELECT 73, N'Simons bistro', N'Jytte Petersen', N'Owner', N'Vinb�ltet 34', N'Kobenhavn', NULL, N'1734', N'Denmark', N'31 12 34 56', N'31 13 35 57', NULL UNION ALL
SELECT 74, N'Sp�cialit�s du monde', N'Dominique Perrier', N'Marketing Manager', N'25, rue Lauriston', N'Paris', NULL, N'75016', N'France', N'(1) 47.55.60.10', N'(1) 47.55.60.20', NULL UNION ALL
SELECT 75, N'Split Rail Beer & Ale', N'Art Braunschweiger', N'Sales Manager', N'P.O. Box 555', N'Lander', N'WY', N'82520', N'USA', N'(307) 555-4680', N'(307) 555-6525', NULL UNION ALL
SELECT 76, N'Supr�mes d�lices', N'Pascale Cartrain', N'Accounting Manager', N'Boulevard Tirou, 255', N'Charleroi', NULL, N'B-6000', N'Belgium', N'(071) 23 67 22 20', N'(071) 23 67 22 21', NULL UNION ALL
SELECT 77, N'The Big Cheese', N'Liz Nixon', N'Marketing Manager', N'89 Jefferson Way Suite 2', N'Portland', N'OR', N'97201', N'USA', N'(503) 555-3612', NULL, NULL UNION ALL
SELECT 78, N'The Cracker Box', N'Liu Wong', N'Marketing Assistant', N'55 Grizzly Peak Rd.', N'Butte', N'MT', N'59801', N'USA', N'(406) 555-5834', N'(406) 555-8083', NULL UNION ALL
SELECT 79, N'Toms Spezialit�ten', N'Karin Josephs', N'Marketing Manager', N'Luisenstr. 48', N'M�nster', NULL, N'44087', N'Germany', N'0251-031259', N'0251-035695', NULL UNION ALL
SELECT 80, N'Tortuga Restaurante', N'Miguel Angel Paolino', N'Owner', N'Avda. Azteca 123', N'M�xico D.F.', NULL, N'05033', N'Mexico', N'(5) 555-2933', NULL, NULL UNION ALL
SELECT 81, N'Tradi��o Hipermercados', N'Anabela Domingues', N'Sales Representative', N'Av. In�s de Castro, 414', N'Sao Paulo', N'SP', N'05634-030', N'Brazil', N'(11) 555-2167', N'(11) 555-2168', NULL UNION ALL
SELECT 82, N'Trail''s Head Gourmet Provisioners', N'Helvetius Nagy', N'Sales Associate', N'722 DaVinci Blvd.', N'Kirkland', N'WA', N'98034', N'USA', N'(206) 555-8257', N'(206) 555-2174', NULL UNION ALL
SELECT 83, N'A123456789B123456789C123456789D123456789', N'A123456789B123456789C123456789', N'A123456789B123456789C123456789', N'A123456789B123456789C123456789D123456789E123456789F123456789', N'A123456789B1234', N'A123456789B1234', N'A123456789', N'A123456789B1234', NULL, N'A123456789B123456789C123', NULL UNION ALL
SELECT 84, N'Vaffeljernet', N'Palle Ibsen', N'Sales Manager', N'Smagsloget 45', N'�rhus', NULL, N'8200', N'Denmark', N'86 21 32 43', N'86 22 33 44', NULL UNION ALL
SELECT 85, N'Victuailles en stock', N'Mary Saveley', N'Sales Agent', N'2, rue du Commerce', N'Lyon', NULL, N'69004', N'France', N'78.32.54.86', N'78.32.54.87', NULL UNION ALL
SELECT 86, N'Vins et alcools Chevalier', N'Paul Henriot', N'Accounting Manager', N'59 rue de l''Abbaye', N'Reims', NULL, N'51100', N'France', N'26.47.15.10', N'26.47.15.11', NULL UNION ALL
SELECT 87, N'Die Wandernde Kuh', N'Rita M�ller', N'Sales Representative', N'Adenauerallee 900', N'Stuttgart', NULL, N'70563', N'Germany', N'0711-020361', N'0711-035428', NULL UNION ALL
SELECT 88, N'Wartian Herkku', N'Pirkko Koskitalo', N'Accounting Manager', N'Torikatu 38', N'Oulu', NULL, N'90110', N'Finland', N'981-443655', N'981-443655', NULL UNION ALL
SELECT 89, N'Wellington Importadora', N'Paula Parente', N'Sales Manager', N'Rua do Mercado, 12', N'Resende', N'SP', N'08737-363', N'Brazil', N'(14) 555-8122', NULL, NULL UNION ALL
SELECT 90, N'White Clover Markets', N'Karl Jablonski', N'Owner', N'305 - 14th Ave. S. Suite 3B', N'Seattle', N'WA', N'98128', N'USA', N'(206) 555-4112', N'(206) 555-4115', NULL UNION ALL
SELECT 91, N'Wilman Kala', N'Matti Karttunen', N'Owner/Marketing Assistant', N'Keskuskatu 45', N'Helsinki', NULL, N'21240', N'Finland', N'90-224 8858', N'90-224 8858', NULL UNION ALL
SELECT 92, N'Wolski  Zajazd', N'Zbyszek Piestrzeniewicz', N'Owner', N'ul. Filtrowa 68', N'Warszawa', NULL, N'01-012', N'Poland', N'(26) 642-7012', N'(26) 642-7012', NULL
COMMIT;
RAISERROR (N'[dbo].[Customers]: Insert Batch: 2.....Done!', 10, 1) WITH NOWAIT;
GO

SET IDENTITY_INSERT [dbo].[Customers] OFF;

