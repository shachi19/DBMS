create database exam_movie

use exam_movie

create table actor(
act_id varchar(10) primary key,
act_name varchar(20),
act_gender char(1) check (act_gender in('m','f'))
);


insert into actor values(101,'Katrina','f')
insert into actor values(102,'Karthik','m')
insert into actor values(103,'Deepika','f')
insert into actor values(104,'Ranveer','m')
insert into actor values(105,'Alia','f')
insert into actor values(106,'Ranbir','m')

select*from actor


create table director(
dir_id varchar(10) primary key,
dir_name varchar(20),
dir_phone int
);

insert into director values(1001,'AAAA',23456)
insert into director values(1002,'BBBB',34570)
insert into director values(1003,'CCCC',78659)
insert into director values(1004,'DDDD',45987)
insert into director values(1005,'EEEE',78934)

select*from director

create table movies1(
mov_id int primary key,
mov_title varchar(30) unique,
mov_year int,
mov_lang varchar(20),
dir_id varchar(10) references director(dir_id)
);
insert into movies1 values(1,'dhoom3',2014,'hindi',1002)
insert into movies1 values(2,'luka chuppi',2018,'hindi',1005)
insert into movies1 values(3,'pathan',2023,'english',1004)
insert into movies1 values(4,'simmba',2011,'kannada',1001)
insert into movies1 values(5,'gangubai',2022,'hindi',1004)
insert into movies1 values(6,'barfi',2010,'english',1003)
insert into movies1 values(7,'ramleela',2011,'kannada',1001)

select*from movies1

create table movie_cast(
act_id varchar(10) references actor(act_id),
mov_id int references movies1(mov_id),
Role varchar(10),
primary key(act_id,mov_id)
);
insert into movie_cast values(101,1,'heroine')
insert into movie_cast values(102,2,'hero')
insert into movie_cast values(103,3,'heroine')
insert into movie_cast values(104,4,'hero')
insert into movie_cast values(105,5,'heroine')
insert into movie_cast values(106,6,'hero')
insert into movie_cast values(104,7,'hero')
insert into movie_cast values(103,7,'heroine')

select*from movie_cast

create table viewer(
viewer_id int primary key,
name varchar(20),
age int,
gender char(1) check (gender in('m','f'))
);

INSERT INTO VIEWER VALUES (1,'ZZZZ',22,'m')
INSERT INTO VIEWER VALUES (2,'YYYY',24,'f')
INSERT INTO VIEWER VALUES (3,'XXXX',24,'m')
INSERT INTO VIEWER VALUES (4,'WWWW',38,'m')
INSERT INTO VIEWER VALUES (5,'NNNN',20,'f')
INSERT INTO VIEWER VALUES (6,'SSSS',20,'m')
INSERT INTO VIEWER VALUES (7,'UUUU',20,'f')
INSERT INTO VIEWER VALUES (8,'VVVV',20,'m')select*from viewer

create table ratings(
viewer_id int references viewer(viewer_id),
mov_id int references movies1(mov_id),
stars int check(stars>=0 and stars<=5),
primary key(viewer_id,mov_id)
);

INSERT INTO RATINGS VALUES (1,3,5)
INSERT INTO RATINGS VALUES (1,4,4)
INSERT INTO RATINGS VALUES (2,6,5)
INSERT INTO RATINGS VALUES (3,3,4)
INSERT INTO RATINGS VALUES (3,1,4)
INSERT INTO RATINGS VALUES (4,5,4)
INSERT INTO RATINGS VALUES (5,1,5)
INSERT INTO RATINGS VALUES (6,7,5)
INSERT INTO RATINGS VALUES (4,1,5)

select*from ratings

1.
select a.act_name from actor a,movie_cast mc,movies1 m
where a.act_id=mc.act_id and mc.mov_id=m.mov_id and mov_year<2012
intersect
select a.act_name from actor a,movie_cast mc,movies1 m
where a.act_id=mc.act_id and mc.mov_id=m.mov_id and mov_year>2017

3.
 update ratings set stars=5 where mov_id in(select m.mov_id from movies1 m,director d where m.dir_id=d.dir_id and dir_name='BBBB')

 select d.dir_name,r.stars from ratings r,movies1 m,director d
 where stars=5 and r.mov_id=m.mov_id and d.dir_id=m.dir_id and d.dir_name='BBBB'

 2.
 select m.mov_title,max(r.stars) as ratings 
 from movies1 m,ratings r
 where m.mov_id=r.mov_id and r.stars>1
 group by m.mov_title