use exam_movie 

create table Branch(
bname varchar(15),
bcity varchar(15),
assets real,
primary key(bname)
);

create table Account(
accno int,
bname varchar(15) default 'Manipal',
balance real,
primary key(accno),
foreign key(bname) references Branch(bname) on delete cascade on update cascade
);

create table Customer
(
cname varchar(20),
cstreet varchar(25),
ccity varchar(20),
primary key(cname),
);

create table Loan
(loan_no int,
bname varchar(15),
amount real,
primary key(loan_no),
foreign key(bname)references Branch(bname) on delete cascade on update cascade
);

create table Borrower
(cname varchar(20),
loan_no int,
primary key(cname,loan_no),
foreign key(cname)references Customer(cname) on delete cascade on update cascade,
foreign key(loan_no)references Loan(loan_no) on delete cascade on update cascade,
unique(loan_no)
);

create table Depositor
(
cname varchar(20),
accno int,
primary key(cname,accno),
foreign key(accno)references Account(accno) on delete cascade on update cascade,
foreign key(cname)references Customer(cname) on delete cascade on update cascade,
unique(accno)
);insert into Branch values('SBI_Udupi','Udupi','30000')
insert into Branch values('SBI_Mangalore','Mangalore','20000')
insert into Branch values('SBI_Manipal','Udupi','40000')
insert into Branch values('SBI_Karkala','Karkala','30000')
insert into Branch values('SBI_Bangalore','Bangalore','20000')
insert into Branch values('SBI_Sasthana','Udupi','40000')
insert into Branch values('SBI_Surathkal','Mangalore','40000')insert into Account values('123456781','SBI_Udupi','300000')
insert into Account values('123456782','SBI_Bangalore','310000')
insert into Account values('123456783','SBI_Sasthana','200000')
insert into Account values('123456784','SBI_Mangalore','500000')
insert into Account values('123456785','SBI_Surathkal','360000')
insert into Account values('123456786','SBI_Udupi','870000')
insert into Account values('123456787','SBI_Bangalore','650000')
insert into Account values('123456788','SBI_Manipal','40000')
insert into Account values('123456789','SBI_Mangalore','230000')
insert into Account values('123456770','SBI_Karkala','350000')
insert into Account values('123456771','SBI_Manipal','130000')
insert into Account values('123456772','SBI_Bangalore','350000')
insert into Account values('123456773','SBI_Bangalore','360000')
insert into Account values('123456774','SBI_Mangalore','700000')
insert into Account values('123456775','SBI_Udupi','800000')
insert into Account values('123456791','SBI_Bangalore','360000')
insert into Account values('123456792','SBI_Bangalore','380000')
insert into Account values('123456793','SBI_Sasthana','400000')
insert into Account values('123456794','SBI_Surathkal','600000')
insert into Account values('123456795','SBI_Udupi','360000')


insert into Customer values('Nidhi','8th cross','Udupi');
insert into Customer values('Maneesha','4th cross','Mangalore');
insert into Customer values('Mallik','2nd cross','Karkala');
insert into Customer values('Nisha','5th cross','Bangalore');
insert into Customer values('Sanjana','13th cross','Mangalore');
insert into Customer values('Rahul','7th cross','Udupi');


insert into Depositor values('Rahul','123456781')
insert into Depositor values('Mallik','123456785')
insert into Depositor values('Nidhi','123456784')
insert into Depositor values('Sanjana','123456786')
insert into Depositor values('Nidhi','123456783')
insert into Depositor values('Maneesha','123456782')
insert into Depositor values('Sanjana','123456787')
insert into Depositor values('Mallik','123456788')
insert into Depositor values('Nidhi','123456789')
insert into Depositor values('Sanjana','123456771')
insert into Depositor values('Mallik','123456773')
insert into Depositor values('Maneesha','123456772')
insert into Depositor values('Rahul','123456770')
insert into Depositor values('Mallik','123456774')
insert into Depositor values('Nidhi','123456791')
insert into Depositor values('Sanjana','123456775')
insert into Depositor values('Nisha','123456792')
insert into Depositor values('Maneesha','123456793')
insert into Depositor values('Mallik','123456794')
insert into Depositor values('Maneesha','123456795')


insert into Loan values(1,'SBI_Karkala','12000');
insert into Loan values(2,'SBI_Udupi','15000');
insert into Loan values(3,'SBI_Manipal','20000');
insert into Loan values(4,'SBI_Bangalore','30000');
insert into Loan values(5,'SBI_Mangalore','13000');
insert into Loan values(6,'SBI_Surathkal','13000');
insert into Loan values(7,'SBI_Sasthana','13000');
insert into Loan values(8,'SBI_Manipal','25000');
insert into Loan values(9,'SBI_Bangalore','35000');
insert into Loan values(10,'SBI_Udupi','65000');
insert into Loan values(11,'SBI_Mangalore','33000');
insert into Loan values(12,'SBI_Karkala','62000');
insert into Loan values(13,'SBI_Udupi','35000');
insert into Loan values(14,'SBI_Manipal','17000');


insert into Borrower values('Nidhi',9);
insert into Borrower values('Mallik',6);
insert into Borrower values('Maneesha',2);
insert into Borrower values('Nisha',4);
insert into Borrower values('Sanjana',12);
insert into Borrower values('Rahul',3);
insert into Borrower values('Nisha',14);
insert into Borrower values('Nidhi',5);
insert into Borrower values('Mallik',7);
insert into Borrower values('Maneesha',8);
insert into Borrower values('Sanjana',11);
insert into Borrower values('Rahul',13);
insert into Borrower values('Nisha',10);
insert into Borrower values('Sanjana',1);SELECT DISTINCT C.cname
FROM CUSTOMER C, BORROWER B, LOAN L, BRANCH BR
WHERE C.cname = B.cname
AND B.loan_no = L.loan_no
AND L.bname = BR.bname
AND BR.bcity = 'Bangalore';


SELECT A.bname
FROM DEPOSITOR D
JOIN ACCOUNT A ON D.accno = A.accno
JOIN BRANCH B ON A.bname = B.bname
WHERE B.bcity = 'Bangalore'
GROUP BY A.bname
HAVING COUNT(DISTINCT D.cname) = (
    SELECT MAX(customer_count)
    FROM (
        SELECT COUNT(DISTINCT D.cname) AS customer_count
        FROM DEPOSITOR D
        JOIN ACCOUNT A ON D.accno = A.accno
        JOIN BRANCH B ON A.bname = B.bname
        WHERE B.bcity = 'Bangalore'
        GROUP BY A.bname
    ) AS subquery
);