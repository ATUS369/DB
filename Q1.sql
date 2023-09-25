create table Products(
	Name nvarchar(50),
	Description nvarchar(255),
	ProductNo varchar(30) primary key,
	Category nvarchar(50)
)
create table Colors(
	ColorCode varchar(20) primary key,
	Name nvarchar(100)
)
create table Sizes(
	SizeCode varchar(15) primary key,
	Description nvarchar(200)
)
create table Has(
	quantity int ,
	Price decimal(10,2),
	ProductNo varchar(30) foreign key references Products(ProductNo),
	SizeCode varchar(15) foreign key references Sizes(SizeCode),
	ColorCode varchar(20) foreign key references Colors(ColorCode),
	primary key (ProductNo,SizeCode,ColorCode)
)
