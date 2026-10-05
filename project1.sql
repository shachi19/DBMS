create database shachi

use shachi


CREATE TABLE Person(
	SSNO Int Primary Key Not Null,
	DOB Int,
	Gender varchar(50),
	FirstName varchar(50),
	LastName varchar(10),
	);

	select*from Person 

	Insert Into Person 
	Values(001, 2004-05-19, 'Female', 'Shachi', 'Hegde')
Insert Into Person 
	Values(002, 2004-04-25, 'Female', 'Sanya', 'Shresta')
Insert Into Person 
	Values(003, 2003-11-11, 'Female', 'Shravya', 'Shetty')
Insert Into Person 
	Values(004, 2004-02-21, 'Female', 'Shravya', 'Prabhu')
Insert Into Person 
	Values(005, 2004-03-13, 'Male', 'Neel', 'Patel')
Insert Into Person 
	Values(006, 2003-12-05, 'Male', 'Sarthak', 'Gouda')
Insert Into Person 
	Values(007, 2004-02-02, 'Female', 'Saanvi', 'Udupi')
Insert Into Person 
	Values(008, 2004-07-22, 'Female', 'Pratheeksha', 'Nayak')
Insert Into Person 
	Values(009, 2004-10-1, 'Female', 'Sanjana', 'Upadhyaya')
Insert Into Person 
	Values(0010, 2004-04-23, 'Male', 'Vedang', 'Shetty')
Insert Into Person 
	Values(0011, 1999-12-10, 'Female', 'Pinky', 'Sharma')
Insert Into Person 
	Values(0012,1998-02-12 , 'Female', 'Neha', 'Ananda')
Insert Into Person 
	Values(0013, 2008-10-19, 'Male', 'Kanye', 'Swift')
Insert Into Person 
	Values(0014, 2008-11-26, 'Male', 'Obama', 'Bannerjee')
Insert Into Person 
	Values(0015, 2001-09-11, 'Male', 'George', 'Bush')
Insert Into Person 
	Values(0016, 2011-04-11, 'Male', 'Paplu', 'Sharma')
Insert Into Person 
	Values(0017, 2000-12-25, 'Female', 'Medusa', 'Kohli')
Insert Into Person 
	Values(0018, 1973-08-16, 'Female', 'Hema', 'Prabhakar')
Insert Into Person 
	Values(0019, 1979-02-16, 'Female', 'Sharada', 'Shivram')
Insert Into Person 
	Values(0020, 2010-07-05, 'Female', 'Nikki', 'Singh')
Insert Into Person 
	Values(0021, 1999-09-09, 'Male', 'Kattappa', 'Sharma')
Insert Into Person 
	Values(0022, 2000-02-19, 'Female', 'Anya', 'Ambani')
Insert Into Person 
	Values(0023, 1997-05-05, 'Male', 'Adlof', 'Dasler')
Insert Into Person 
	Values(0024, 1999-08-08, 'Male', 'Song', 'Kang')
Insert Into Person 
	Values(0025, 2004-01-13, 'Male', 'Vihan', 'Bhat')
Insert Into Person 
	Values(0026, 2005-05-21, 'Male', 'Gokul', 'Anil')
Insert Into Person 
	Values(0027, 2007-03-10, 'Male', 'Muttuswani', 'Iyer')
Insert Into Person
	Values(0028, 1999-01-15, 'Female', 'Sonam', 'Ahmed')










CREATE TABLE Customer(
CustomerSSNO Int not null foreign key references Person(SSNO));

Insert Into Customer
	Values(005)
Insert Into Customer
	Values(007)
Insert Into Customer
	Values(0010)
Insert Into Customer
	Values(0011)
Insert Into Customer
	Values(0016)
Insert Into Customer
	Values(0018)
Insert Into Customer
	Values(0021)
Insert Into Customer
	Values(0023)
Insert Into Customer
	Values(0026)
Insert Into Customer
	Values(0027)

	select*from Customer







CREATE TABLE Employee(
EmployeeID Int Primary Key Not Null,
EmployeeSSNO Int not null foreign key references Person(SSNO),
EmployeeSalary Int DEFAULT 4253 ,
HireDate Int,
JobTitle varchar(50));

Insert Into Employee
	Values(101, 003, 17750, 2018, 'Butcher')
Insert Into Employee 
	Values(102, 008, 16500, 2021, 'Bakery')
Insert Into Employee 
	Values(103, 009,14850, 2021,'Bakery' )
Insert Into Employee 
	Values(104, 0014, 16800 , 2012, 'Cashier')
Insert Into Employee 
	Values(105, 0017, 15540, 2017, 'Cashier')
Insert Into Employee 
	Values(106, 0019, 14890, 2017, 'Bakery')
Insert Into Employee 
	Values(107, 0020, 17725, 2006, 'Cashier')
Insert Into Employee 
	Values(108, 0024, 12360,2022, 'Butcher')
Insert Into Employee 
	Values(109, 0025, 15900, 2020,'Cashier')
Insert Into Employee
	Values(110, 0028, 16800, 2020, 'Butcher')

	select*from Employee







CREATE TABLE Manager(
ManagerID Int Primary Key Not Null,
ManagerSSNO Int not null foreign key references Person(SSNO),
ManagerSalary Int DEFAULT 8000 );


Insert Into Manager
	Values(201,001,17000)

Insert Into Manager
	Values(202,002,19800)

Insert Into Manager 
	Values(203,004,20350)

Insert Into Manager
	Values(204,006,19750)

Insert Into Manager
	Values(205,0012,NULL)

Insert Into Manager
	Values(206,0013,18980)

Insert Into Manager (ManagerID,ManagerSSNO)
	Values(207,0015)
	
Insert Into Manager
	Values(208,0022,18460)


	select*from Manager


CREATE TABLE Product1(
ProductID Int Primary Key Not Null , 
ProductName varchar(50),
ProductType varchar(50),
Price Int,
CustomerSSNOToProduct Int not null foreign key references Person(SSNO),
EmployeeIDToProduct Int not null foreign key references Employee(EmployeeID)
);


Insert Into Product1
	Values(001,'Bread','NonPackaged',30,005,102)

Insert Into Product1
	Values(002,'Cake','Packaged',130,0011,106)

Insert Into Product1
	Values(003,'Cookie','Packaged',250,0021,109)

Insert Into Product1
	Values(004,'Donut','NonPackaged',190,0018,102)

Insert Into Product1
	Values(005,'Cupcake','Packaged',100,007,109)

Insert Into Product1
	Values(101,'Meatball','Packaged',550,0011,101)

Insert Into Product1
	Values(102,'Beaf','Packaged',700,005,108)

Insert Into Product1
	Values(201,'Anchovy','NonPackaged',300,0010,110)

Insert Into Product1
	Values(202,'Salmon','NonPackaged',500,0011,108)

Insert Into Product1
	Values(301,'Milk','Packaged',50,0026,103)

Insert Into Product1
	Values(302,'Chocolate','Packaged',80,0027,104)

Insert Into Product1
	Values(303,'Chips','Packaged',30,007,105)

Insert Into Product1
	Values(304,'Cheese','Packaged',270,005,107)

Insert Into Product1
	Values(401,'Pepper','NonPackaged',100,007,104)

Insert Into Product1
	Values(402,'Tomato','NonPackaged',80,0010,103)

Insert Into Product1
	Values(403,'Eggplant','NonPackaged',100,0018,107)

Insert Into Product1
	Values(501,'Orange','NonPackaged',120,0023,105)

Insert Into Product1
	Values(502,'Strawberry','NonPackaged',200 ,0021,103)

Insert Into Product1
	Values(601,'Pizza','Packaged',300,0016,104)

Insert Into Product1
	Values(602,'Spinach','NonPackaged',40,007,107)


	select*from Product1







CREATE TABLE Payment(
PaymentID Int Primary Key Not Null, 
Currency varchar(50) DEFAULT 'tl' , 
PaymentType varchar(50),
CustomerSSNOToPayment Int not null foreign key references Person(SSNO),
EmployeeIDToPayment Int not null foreign key references Employee(EmployeeID) 
);

Insert Into Payment
	Values(10002,'tl','Cash',005,102)

Insert Into Payment
	Values(20003,'rupees','Cash',0011,106)

Insert Into Payment
	Values(20004,'rupees','Cash',0021,109)

Insert Into Payment
	Values(20005,'rupees','Card',0018,102)

Insert Into Payment
	Values(10006,'tl','Card',007,109)

Insert Into Payment
	Values(30007,'rupees','Cash',0011,101)

Insert Into Payment
	Values(10008,'tl','Card',005,108)

Insert Into Payment
	Values(30009,'rupees','Card',0010,110)

Insert Into Payment
	Values(30010,'rupees','Card',0011,108)

Insert Into Payment
	Values(20011,'rupees','Cash',0026,103)

Insert Into Payment
	Values(30012,'rupees','Card',0027,104)

Insert Into Payment
	Values(10013,'tl','Cash',007,105)

Insert Into Payment
	Values(10014,'rupees','Card',005,107)

Insert Into Payment
	Values(10015,'tl','Cash',007,104)

Insert Into Payment
	Values(20016,'rupees','Card',0010,103)

Insert Into Payment
	Values(30017,'rupees','Card',0018,107)

Insert Into Payment
	Values(20018,'rupees','Card',0023,105)

Insert Into Payment
	Values(10019,'tl','Cash',0021,103)

Insert Into Payment
	Values(30020,'rupees','Card',0016,104)

Insert Into Payment
	Values(10021,'rupees','Cash',007,107)

	select*from Payment


CREATE TABLE ProductStore(
StoreNo Int Primary Key Not Null, 
PhoneNumber Int,
Location varchar(50), 
ProductIDToProductStore Int , 
ManagerIDToProductStore Int
);

Insert Into ProductStore
	Values(1, 98567, 'Manglore', 001 , 201)

Insert Into ProductStore
	Values(2, 97623, 'Udupi', 002 , 203)

Insert Into ProductStore
	Values(3, 87692, 'Banglore', 003 , 202)

Insert Into ProductStore
	Values(4, 83619, 'Udupi', 004 , 208)

Insert Into ProductStore
	Values(5, 98253, 'Banglore', 005, 205)

Insert Into ProductStore
	Values(6, 89456, 'Puttur', 101 , 207)

Insert Into ProductStore
	Values(7,81224, 'Manglore', 102 , 202)

Insert Into ProductStore
	Values(8, 83915, 'Surathkal', 201 , 204)

Insert Into ProductStore
	Values(9, 94480, 'Manglore', 202 , 207)

Insert Into ProductStore
	Values(10, 99645, 'Puttur', 301 , 206)

Insert Into ProductStore
	Values(11, 98034, 'Banglore', 302 , 201)

Insert Into ProductStore
	Values(12,95672, 'Manglore', 303 , 205)
	
Insert Into ProductStore
	Values(13, 84924, 'Puttur', 304, 202)

Insert Into ProductStore
	Values(14, 78361, 'Manglore', 401 , 206)

Insert Into ProductStore
	Values(15, 95672, 'Surathkal', 402 , 203)

Insert Into ProductStore
	Values(16, 83572, 'Manglore', 403 , 202)

Insert Into ProductStore
	Values(17, 70263, 'Banglore', 501 , 207)

Insert Into ProductStore
	Values(18, 98647, 'Surathkal', 502 , 204)

Insert Into ProductStore
	Values(19, 85629, 'Manglore', 601 , 206)

Insert Into ProductStore
	Values(20, 93466, 'Manglore', 602 , 201)

	select*from ProductStore




CREATE TABLE ProductStock(
StockID Int Primary Key Not Null,
StockNumber Int,
ProductIDToProductStock Int not null foreign key references Product(ProductID),
StoreNoToProductStock Int not null foreign key references ProductStore(StoreNo)
);


Insert Into ProductStock
	Values(1000, 500, 001 , 1)

Insert Into ProductStock
	Values(2000, 500,  002 , 2)

Insert Into ProductStock
	Values(3000, 405,  003 , 3)

Insert Into ProductStock
	Values(4000, 0,  004 , 4)

Insert Into ProductStock
	Values(5000, 200,  005, 5)

Insert Into ProductStock
	Values(6000, 0,  101 , 6)

Insert Into ProductStock
	Values(7000, 646,  102 , 7)

Insert Into ProductStock
	Values(8000, 730,  201 , 8)

Insert Into ProductStock
	Values(9000, 954,  202 , 9)

Insert Into ProductStock
	Values(1001, 210,  301 , 10)

Insert Into ProductStock
	Values(1100, 539,  302 , 11)

Insert Into ProductStock
	Values(1200, 789,  303 , 12)
	
Insert Into ProductStock
	Values(1300, 0,  304, 13)

Insert Into ProductStock
	Values(1400, 104,  401 , 14)

Insert Into ProductStock
	Values(1500, 55,  402 , 15)

Insert Into ProductStock
	Values(1600, 76,  403 , 16)

Insert Into ProductStock
	Values(1700, 945,  501 , 17)

Insert Into ProductStock
	Values(1800, 457,  502 , 18)

Insert Into ProductStock
	Values(1900, 783,  601 , 19)

Insert Into ProductStock
	Values(20000, 478,  602 , 20)

	select*from ProductStock

CREATE TABLE DeliveryCompany(
DelCompID Int Primary Key Not Null,
CompanyName varchar(50),
PhoneNumber Int,
StoreNoToDeliveryCompany Int not null foreign key references ProductStore(StoreNo) ,
ManagerIDToDeliveryCompany Int not null foreign key references Manager(ManagerID)
);


Insert Into DeliveryCompany
	Values(1, 'Blinkit', 1000001, 1 , 202)

Insert Into DeliveryCompany
	Values(2, 'Bluedart', 2000002, 2, 204)

Insert Into DeliveryCompany
	Values(3, 'Deh', 3000003, 3 , 208)

Insert Into DeliveryCompany
	Values(4, 'Blinkit', 4000004, 4 , 201)

Insert Into DeliveryCompany
	Values(5, 'Bluedart', 5000005, 5, 203)

Insert Into DeliveryCompany
	Values(6, 'Bluedart', 6000006, 6, 205)

Insert Into DeliveryCompany
	Values(7, 'Deh', 7000007, 7 , 207)

Insert Into DeliveryCompany
	Values(8, 'Blinkit', 8000008, 8 , 202)

Insert Into DeliveryCompany
	Values(9, 'Blinkit', 9000009, 9 , 207)

Insert Into DeliveryCompany
	Values(10, 'Bluedart', 0100010, 10 , 203)

Insert Into DeliveryCompany
	Values(11, 'Bluedart', 1000001, 20 , 201)

Insert Into DeliveryCompany
	Values(12, 'Blinkit', 2000002, 19 , 208)

Insert Into DeliveryCompany
	Values(13, 'Deh', 3000003, 18 , 206)

Insert Into DeliveryCompany
	Values(14, 'Deh', 4000004, 17 , 204)

Insert Into DeliveryCompany
	Values(15, 'Blinkit', 2000002, 16 , 201)

Insert Into DeliveryCompany
	Values(16, 'Deh', 6000006, 15 , 204)

Insert Into DeliveryCompany
	Values(17, 'Bluedart', 3000003, 14 , 207)

Insert Into DeliveryCompany
	Values(18, 'Bluedart', 3000003, 13 , 208)

Insert Into DeliveryCompany
	Values(19, 'Blinkit', 9000009, 12 , 202)

Insert Into DeliveryCompany
	Values(20, 'Deh', 2000002, 11 , 205)

	select*from  DeliveryCompany



CREATE TABLE ProductCategory(
CategoryID Int Primary Key Not Null,
Meat Int,
Seafood Int,
Diary Int,
Vegetables Int,
Fruits Int,
Bakery Int,
FrozenSection Int,
Snacks Int,
ProductIDToProductCategory Int not null foreign key references Product(ProductID)
);


Insert Into ProductCategory
	Values(1000, 0, 0, 0, 0, 0, 1, 0, 0, 1)

Insert Into ProductCategory
	Values(1001, 0, 0, 0, 0, 0, 1, 0, 0, 2)

Insert Into ProductCategory
	Values(1002, 0, 0, 0, 0, 0, 1, 0, 0, 3)

Insert Into ProductCategory
	Values(1003, 0, 0, 0, 0, 0, 1, 0, 0, 4)

Insert Into ProductCategory
	Values(1004, 0, 0, 0, 0, 0, 1, 0, 0, 5)

Insert Into ProductCategory
	Values(2001, 1, 0, 0, 0, 0, 0, 0, 0, 101)

Insert Into ProductCategory
	Values(2002, 1, 0, 0, 0, 0, 0, 0, 0, 102)

Insert Into ProductCategory
	Values(3001, 0, 1, 0, 0, 0, 0, 0, 0, 201)

Insert Into ProductCategory
	Values(3002, 0, 1, 0, 0, 0, 0, 0, 0, 202)

Insert Into ProductCategory
	Values(4001, 0, 0, 1, 0, 0, 0, 0, 0, 301)

Insert Into ProductCategory
	Values(5001, 0, 0, 0, 0, 0, 0, 1, 0, 302)

Insert Into ProductCategory
	Values(5002, 0, 0, 0, 0, 0, 0, 1, 0, 303)

Insert Into ProductCategory
	Values(6001, 0, 0, 1, 0, 0, 0, 0, 0, 304)

Insert Into ProductCategory
	Values(7001, 0, 0, 0, 1, 0, 0, 0, 0, 401)

Insert Into ProductCategory
	Values(7002, 0, 0, 0, 1, 0, 0, 0, 0, 402)

Insert Into ProductCategory
	Values(7003, 0, 0, 0, 1, 0, 0, 0, 0, 403)

Insert Into ProductCategory
	Values(8001, 0, 0, 0, 0, 1, 0, 0, 0, 501)

Insert Into ProductCategory
	Values(8002, 0, 0, 0, 0, 1, 0, 0, 0, 502)

Insert Into ProductCategory
	Values(9001, 0, 0, 0, 0, 0, 0, 1, 0, 601)

Insert Into ProductCategory
	Values(9500, 0, 0, 0, 1, 0, 0, 1, 0, 602)


	select*from ProductCategory


	



CREATE TABLE Has(
ProductIDToHas int not null foreign key references Product(ProductId),
StockIDToHas int not null foreign key references ProductStock(StockId)
Constraint PK_Product_Stock Primary Key (ProductIdToHas,StockIdToHas)
);


Insert Into Has
	Values(1,1000)

Insert Into Has
	Values(2,2000)

Insert Into Has
	Values(3,3000)

Insert Into Has
	Values(4,4000)

Insert Into Has
	Values(5,5000)

Insert Into Has
	Values(101,6000)

Insert Into Has
	Values(102,7000)

Insert Into Has
	Values(201,8000)

Insert Into Has
	Values(202,9000)

Insert Into Has
	Values(301,1001)

Insert Into Has
	Values(302,1100)

Insert Into Has
	Values(303,1200)

Insert Into Has
	Values(304,1300)

Insert Into Has
	Values(401,1400)

Insert Into Has
	Values(402,1500)

Insert Into Has
	Values(403,1600)

Insert Into Has
	Values(501,1700)

Insert Into Has
	Values(502,1800)

Insert Into Has
	Values(601,1900)

Insert Into Has
	Values(602,20000)

	select*from Has

CREATE TABLE Contain (
ProductIDToContain int not null foreign key references Product(ProductId),
CategoryIDToContain int not null foreign key references ProductCategory(CategoryId)
Constraint PK_Product_Category Primary Key (ProductIDToContain,CategoryIDToContain)
);

Insert Into Contain
	Values(1,1000)

Insert Into Contain
	Values(2,1001)

Insert Into Contain
	Values(3,1002)

Insert Into Contain
	Values(4,1003)

Insert Into Contain
	Values(5,1004)

Insert Into Contain
	Values(101,2001)

Insert Into Contain
	Values(102,2002)

Insert Into Contain
	Values(201,3001)

Insert Into Contain
	Values(202,3002)

Insert Into Contain
	Values(301,4001)

Insert Into Contain
	Values(302,5001)

Insert Into Contain
	Values(303,5002)

Insert Into Contain
	Values(304,6001)

Insert Into Contain
	Values(401,7001)

Insert Into Contain
	Values(402,7002)

Insert Into Contain
	Values(403,7003)

Insert Into Contain
	Values(501,8001)

Insert Into Contain
	Values(502,8002)

Insert Into Contain
	Values(601,9001)

Insert Into Contain
	Values(602,9500)

	select*from Contain


1.Find all customers who have purchased products with a price greater than 150:
SELECT FirstName, LastName
FROM Person
WHERE SSNO IN (
    SELECT CustomerSSNOToProduct
    FROM Product
    WHERE Price > 150)

/*2.Find the total number of products in each category:
SELECT pc.CategoryID, COUNT(p.ProductID) AS TotalProducts
FROM ProductCategory pc
JOIN Product p ON pc.ProductIDToProductCategory = p.ProductID
GROUP BY pc.CategoryID*/

/*2.Find the total number of products managed by each manager
SELECT ManagerID, COUNT(ProductIDToProductStore) AS TotalProductsManaged
FROM ProductStore ,Manager
WHERE ManagerIDToProductStore IN (SELECT ManagerID FROM Manager)
GROUP BY ManagerIDToProductStore*/

/*2.Find the total number of products in each category managed by managers with a salary greater than 6000
SELECT 
    pc.CategoryID, COUNT(p.ProductID) AS TotalProducts
FROM 
    ProductCategory pc
    JOIN Product p ON pc.ProductIDToProductCategory = p.ProductID
WHERE 
    p.EmployeeIDToProduct IN (
        SELECT 
            EmployeeID
        FROM 
            Employee
        WHERE 
            JobTitle = 'Manager' AND EmployeeSalary > 6000
    )
GROUP BY 
    pc.CategoryID*/


/*2.Find the managers who manage stores with a total stock number greater than the average stock number of all stores
SELECT 
    ManagerIDToProductStore
FROM 
    ProductStore
GROUP BY 
    ManagerIDToProductStore
HAVING 
    SUM(StockIDToHas  > (
        SELECT 
            AVG(StockIDToHas)
        FROM 
            ProductStore
    )*/



2.Find the products that are not in stock at store number 1
SELECT ProductID, ProductName
FROM Product
WHERE 
    ProductID NOT IN (
        SELECT 
            ProductIDToProductStock
        FROM 
            ProductStock
        WHERE 
            StoreNoToProductStock = 1
    )

3.Find the delivery companies associated with stores located in 'Manglore'
SELECT 
    CompanyName, PhoneNumber
FROM 
    DeliveryCompany
WHERE 
    StoreNoToDeliveryCompany IN (
        SELECT 
            StoreNo
        FROM 
            ProductStore
        WHERE 
            Location = 'Manglore'
    )

/*4.Find the employees who have not made any payments
SELECT FirstName, LastName
FROM Person
WHERE SSNO NOT IN (
    SELECT EmployeeIDToPayment
    FROM Payment
)*/

4.Find the average salary of employees in each job title
SELECT JobTitle, AVG(EmployeeSalary) AS AverageSalary
FROM Employee
GROUP BY JobTitle;

5.Find the total payment amount for each currency type
SELECT Currency, SUM(PaymentID) AS TotalAmount
FROM Payment
GROUP BY Currency

create trigger DeleteStock1 on ProductStock
for Delete as
begin
declare @productid int
select @productid = ProductIDToProductStock
From deleted
Delete From Product1 Where ProductID =@productid
End
 


Insert Into Product
	Values(603, 'Deneme', 'Packaged', 29 ,11, 107, '2022-10-17')

Insert Into ProductStock
	Values (30000,500,603 , 20)

	delete From ProductStock
where StockID = 30000;

EXEC sp_helptext 'DeleteStock' ;

/*CREATE TRIGGER PreventStockDeletion
ON ProductStock
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @productid int;
    SELECT @productid = ProductIDToProductStock
    FROM deleted;

    IF EXISTS (
        SELECT 1
        FROM Product
        WHERE ProductID = @productid
    )
    BEGIN
        RAISERROR ('Cannot delete stock record associated with a product.', 16, 1);
    END
    ELSE
    BEGIN
        DELETE ps
        FROM ProductStock ps
        JOIN deleted d ON ps.StockID = d.StockIDToHas;
    END
END*/







create Trigger tr_NoDeletion
on Payment
instead of delete
as
begin
raiserror('No deletion on payment records',1,1)
rollback transaction
end

EXEC sp_helptext 'tr_NoDeletion' ;


Insert Into Payment	
	Values(30021, 'tl', 'Cash', 10, 105)

Delete From Payment
	where PaymentID = 2567;


Insert Into Payment	
	Values(2567, 'rupees', 'Cash', 10, 105)

	select*from Payment


	

