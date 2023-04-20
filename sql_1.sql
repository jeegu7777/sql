create database ab;

use ab;

create table ab1(abid int,firstname varchar(20),lastname varchar(20),project varchar(10),dept varchar(10),gender varchar(1),DOB varchar(15));

desc abx;

select*
from ab1;

insert into ab1(2,"sonu","katariya","q1","excutive","f","1995-06-01"))values(1,"jeegu","katariya","q1","manager","f","1998-03-05");

insert into ab1 values(2,"sonu","katariya","q1","excutive","f","1995-06-01"),
                      (3,"daya","paradava","q2","mrkt","f","1995-06-01"),
                      (4,"ranjit","vaghamshi","q3","excutive","m","1995-06-01"),
                      (5,"krisha","katariya","q1","manager","f","1995-06-01"),
                      (6,"uttam","katariya","q2","mrkt","f","1995-06-01");
					
select*
from ab1;

alter table ab1 rename to abx;


alter table abx add branch varchar(10);

insert into abx(branch)values("Dhari"),
                            ("amreli"),
                            ("junagadh"),
                            ("bordi");
	
create table aby(id int,firstname varchar(20),lastname varchar(15),salary int);

insert into aby values(1,"vibha","murari",50000),
                      (3,"riddhi","patel",60000),
                      (4,"madhavi","gupta",70000),
                      (5,"prachi","kalal",80000),
                      (6,"mayuri","patel",90000);
			
select*
from aby;

desc aby;

alter table abx modify lastname varchar(30);
desc abx;

use ab;

set SQL_SAFE_UPDATES = 0;

update abx 
set lastname = "paradava"
where firstname = "krisha";

update abx
set gender = "m"
where firstname = "uttam";

update aby
set id = "2"
where firstname = "Riddhi";

update aby
set id = ("3,4,5")
where firstname = ("madhavi,prachi,mayuri");

select*
from aby;

select*
from abx
where dept in ("manager");

select firstname,lastname,project
from abx
where project in ("q1");

select *
from abx
where gender = "f" and project = "q1";

select*
from abx
where gender = "m" and project = "q2";

select firstname,salary
from aby
where firstname = "vibha" or salary = 60000;

select firstname
from aby
limit 3;

select*
from aby
order by firstname asc;

select*
from abx 
order by lastname desc;

select avg(salary) 
from aby;


select count(salary)
from aby;

select upper(firstname)
from abx;

select concat(firstname," ",lastname) as newname
from abx;

select firstname,salary
from aby
where salary >= 60000;

select lastname,salary
from aby
where salary = 70000;

select firstname,DOB
from abx
where DOB ="1998-03-05";

select*
from aby
where salary between 60000 and 90000;

select*
from abx
where firstname = "jeegu" && dept = "Manager";

select*
from abx
order by firstname asc;

select*
from aby
where salary like 60000 && firstname like "riddhi";

select*
from abx 
where lastname like "vaghamshi" || firstname like "ranjit";

select count(lastname),lastname
from abx
group by lastname;

select count(dept),dept
from abx
group by dept
order by dept asc;

select count(dept),dept
from abx
group by dept
having count(dept)>1;


select count(project),project
from abx
group by project
having project = "q1";

select *
from abx;


                      