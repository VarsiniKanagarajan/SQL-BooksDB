create database BooksDB;
use BooksDB;
create table Books
(title varchar(20),authorname varchar(20),genre varchar(20),pubyear int,price int);
insert into Books values('Secret','Rhondo Bynre','Non-fiction',2000,200);
insert into Books values('Alchemist','Paulo Coelho','Fiction',2003,300);
insert into Books values('Ikigai','Hector Garcia','Non-fiction',2022,150);
insert into Books values('It endswith us','Collen Hoover','Fiction',2020,400);
insert into Books values('Atomic Habits','James','Non-fiction',2010,250);
select*from Books;
ALTER table Books ADD authorid int;
select*from Books where title='Ikigai';
update Books set price=350 where title='Ikigai';	
delete from Books where title='Atomic Habits';
select AVG(price)from Books;
update Books set authorid=101 where title='Secret';
update Books set authorid=102 where title='Alchemist';
update Books set authorid=103 where title='Ikigai';
update Books set authorid=104 where title='It endswith us';
update Books set authorid=105 where title='Atomic Habits';
ALTER table Books ADD bookid int;
update Books set bookid=001 where title='Secret';
update Books set bookid=002 where title='Alchemist';
update Books set bookid=003 where title='Ikigai';
update Books set bookid=004 where title='It endswith us';
update Books set bookid=005 where title='Atomic Habits';
ALTER table Books ADD PRIMARY KEY(authorid);

create table Author
(authorid int,authorname varchar(20),authorage int,foreign key(authorid)References books(authorid));
insert into Author values(101,'Rhondo Bynre',45);
insert into Author values(102,'Paulo Coelho',35);
insert into Author values(103,'Hector Garcia',40);
insert into Author values(104,'Collen Hoover',50);
insert into Author values(105,'James',30);
select * from Author;
select Books.title,author.authorname from Books,Author where Books.authorid=author.authorid;