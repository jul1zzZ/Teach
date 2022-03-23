CREATE TABLE Clients (
ClientId int not null PRIMARY KEY,
Name nvarchar(50) not null,
TypeIdClient int not null,
Surname nvarchar(50) not null,
Patronymic nvarchar(50) not null,
BirtDate date not null,
PhoneNumber nvarchar(50) not null,
Email nvarchar(50) not null,
Gender nvarchar(50) not null,
DateReg date not null,
Photo nvarchar(50) null,
DealID int not null);

CREATE TABLE TypeClients (
TypeIdClient int not null PRIMARY KEY,
TypeClient nvarchar(50) not null);

CREATE TABLE Staff (
StaffId int not null PRIMARY KEY,
Name nvarchar(50) not null,
CategoryIdStaff int not null,
Surname nvarchar(50) not null,
Patronymic nvarchar(50) not null,
SeriesPass nvarchar(50) not null,
NumberPass nvarchar(50) not null,
DevisionCode nvarchar(50) not null,
Gender nvarchar(50) not null,
PaymentCoef int not null,
BirtDate date not null,
ServiseId int not null,
SpecCategory nvarchar(50) not null,
ManufacturerID int not null);

CREATE TABLE CategoryStaff (
CategoryIdStaff int not null PRIMARY KEY,
CategoryName nvarchar(50) not null);

CREATE TABLE Products (
ProdId int not null PRIMARY KEY,
Name nvarchar(50) not null,
CategoryId int not null,
WarehouseId int not null,
Cost money not null,
Specification nvarchar(50) not null,
Descpription nvarchar(50) not null,
Weight decimal(8,2) not null,
Width decimal(8,2) not null,
Height decimal(8,2) not null,
ManufacturerID nvarchar(50) not null,
Flag bit null,
Photo nvarchar(50) null,
EquipId int not null,
SeasonId int not null);

CREATE TABLE Categories (
CategoryId int not null PRIMARY KEY,
CategoryName nvarchar(50) not null);

CREATE TABLE Servise (
ServiseId int not null PRIMARY KEY,
TimetableId int not null,
ServiseName nvarchar(50) not null,
DetailDesc nvarchar(50) not null,
Cost float not null,
Sale float not null,
Duration time  not null);

CREATE TABLE Warehouse (
WarehouseId int not null PRIMARY KEY,
ProdId int not null,
ProdQuant  int null);

CREATE TABLE SeasonsProducts (
SeasonId int not null PRIMARY KEY,
SeasnProd int not null,
ProdId int not null);

CREATE TABLE Equipment (
EquipId int not null PRIMARY KEY,
ProdId int not null,
ProdEquip nvarchar(50) not null);


CREATE TABLE Timetable (
TimetableId int not null PRIMARY KEY,
ServiseId int not null,
StaffId int not null,
DateVersions date not null);

CREATE TABLE AddPhoto (
PhotoId int not null PRIMARY KEY,
ProdId int  null,
NamePhoto nvarchar(50)  null);

CREATE TABLE Manufacturer (
ManufacturerID int not null PRIMARY KEY,
ManufacturerName nvarchar(50) not null,
DateWork date not null);

CREATE TABLE Deal (
DealID int not null PRIMARY KEY,
ClientId int not null,
ProdId int not null,
DateSell date not null,
TimeSell time not null,
ServiseId int not null);




