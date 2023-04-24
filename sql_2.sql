create database empl1;

use empl1;

create table empinfo(empid int,empname varchar(10),empfname varchar(10),dept varchar(10),project varchar(100),address varchar(10),BOD date,gender varchar(1

create table empposition(empid int,empname varchar(20),DOB date,salary int);

alter table empinfo add branch varchar(10);

desc empinfo;  

alter table empinfo drop branch;

alter table empinfo modify address varchar(100);

alter table empinfo rename to emp_info;

insert into empposition (emppid,emppname,dob) values();

create database abc;

use abc;
create  table abinfo(abid int,abname varchar(20),dept varchar(10),project varchar(20),BOD date,salary int,gender varchar(1));

drop database abc;
drop table abcinfo;

create table abcposition(pid int,pname varchar(20),dept varchar(10),project varchar(20),BOD date,salary int,gender varchar(1));
desc abinfo;

alter table abinfo drop salary;
desc abinfo;

alter table abinfo modify dept varchar(30);
desc abinfo;

alter table abinfo rename to ab_info; -- colunm name rename how it is?

insert into abcposition(pid,pname,dept,project,BOD,salary,gender)values(1,"jeegu","HR","a1","2022-05-03",40000,"F");
insert into abcposition values(2,"vibha","manager","a1","2022-05-03",40000,"F"),
(1,"kushef","directer","a1","2022-05-03",40000,"M"),
(1,"nayan","HR","a1","2022-05-03",40000,"M"),
(1,"hirva","manager","a1","2022-05-03",40000,"F");

desc abcposition;
select * from abcposition;

insert into ab_info(abid,abname,dept,project,BOD,gender)values(1,"krisha","HR","a1","2022-05-03","F");
insert into ab_info values(2,"prahaan","manager","a1","2022-05-03","M"),
(3,"daya","HR","a1","2022-05-03","F"),
(4,"uttam","director","a1","2022-05-03","M"),
(5,"sonu","HR","a1","2022-05-03","F");

alter table abcposition rename column pid to paid;

use ab;

create table commitee(cid int,name varchar(10),primary key(cid));
create table member(mid  int, name varchar(10),primary key(mid));

insert into commitee values(1,"jeegu"),(2,"uttam"),(3,"ranjit"),(4,"sonu"),(5,"daya");
insert into member values(1,"jeegu"),(2,"uttam"),(3,"prahaan"),(4,"meena"),(5,"daya");

select*
from commitee;

select*
from member;

alter table commitee  
rename column name to nam;

alter table member 
rename column name to nam;

select c.nam,m.nam as newjoin
from member as m
inner join commitee as c
on member.mid = commitee.cid;

use you1;

create table emp10(eid int,ename varchar(20),dept varchar(10),salary int);
insert into emp10 values(1,"jeegu","hr",50000),(2,"ranjit","mrkt",60000),(3,"prayag","hr",70000),(4,"bhabik","it",60000),(5,"prahaan","mrkt",80000);

select*
from emp10;

select max(salary)
from emp10;

select ename,salary
from emp10
where salary = (select max(salary) from emp10);

select min(salary)
from emp10;

select ename,salary
from emp10
where salary = (select min(salary) from emp10);

select empname,salary
from emp10
where salary >60000;


select*
from emp10
where eid in (select eid from emp10 where salary>60000);


use world

desc city;

select*
from city;

select*
from country;

SET SQL_SAFE_UPDATES = 0;

alter table city
rename to city1;

alter table country
rename to country1;


alter  table city1
rename column name to names;

alter table country1
rename column Region to region;

alter table city1 
modify column names varchar(2452);


update city1
set names = "kaju"
where countrycode = "AFG";

select*
from city1;

select*
from country1;

update country1
set region= "India"
where continent = "Asia";

select*
from country1
where region ="india";

select*
from country1
where region in ("india");

select Name,LocalName,Continent
from country1
where Continent = "Asia";

use world;

select*
from city1;

select District,names,population
from city1
where District in ("kabol");

select*
from country1;

select*
from city1
inner join countrylanguage
on city1.CountryCode = countrylanguage.CountryCode
where countrylanguage.Language = "Dari";

select count(Language),IsOfficial,Language
from countrylanguage
where Language = "English" and IsOfficial = "T";

select CountryCode
from countrylanguage
limit 5;

select Language
from countrylanguage
order by Language asc;

select*
from city1
order by names asc;

select city1.CountryCode,city1.District
from countrylanguage
inner join city1
on city1.CountryCode = countrylanguage.CountryCode
order by CountryCode asc;

select names,Population
from city1
where Population >200000;

select*
from city1
where names like "Haag";

select count(names)
from city1
where names is null;

-- select*
-- from city1
-- where 

SELECT ID,names,CountryCode,District,Population
FROM city1
where idnames,CountryCode,District,population is Null;

select CountryCode
from city1
group by CountryCode;

select count(IsOfficial),IsOfficial
from countrylanguage
group by IsOfficial
having avg(Percentage)>20;

select count(District),District
from city1
group by District
order by District desc;

select max(Percentage)
from countrylanguage;

select avg(percentage)
from countrylanguage;

select CountryCode
from countrylanguage
group by CountryCode
having sum(Percentage)>20;

select Indepyear
from country1;

select IndepYear,Code,Continent
from country1
where IndepYear is NOT Null;

select*
from country1
where IndepYear is Null;

set SQL_SAFE_UPDATES = 0;

update country1
set IndepYear = 0
where IndepYear is null;




