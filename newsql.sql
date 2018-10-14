USE master
DECLARE @dbname NVARCHAR(128)
SET @dbname = 'zingmp3'
 -- db to drop connections 
DECLARE @processid INT 
SELECT  @processid = MIN(spid)
FROM    master.dbo.sysprocesses
WHERE   dbid = DB_ID(@dbname) 
WHILE @processid IS NOT NULL 
    BEGIN 
        EXEC ('KILL ' + @processid) 
        SELECT  @processid = MIN(spid)
        FROM    master.dbo.sysprocesses
        WHERE   dbid = DB_ID(@dbname) 
    END
if EXISTS(select * from sys.databases where name='zingmp3')
DROP DATABASE zingmp3
go
create database zingmp3
go
use zingmp3
go
/*Default 0 : normal user, 1: admin*/
/*Method 0: get 1 : post 2: delete 3:put*/
create table [Role](
	id int primary key identity(1,1),
	[type] bit default(0),
	method smallint default(1),
	url varchar(250)
)
go
create table [User](
	id int primary key identity(1,1),
	username nvarchar(250) not null, 
	[password] varchar(36) not null,
	email varchar(254) not null,
	roleId int references [Role](id),
	delete_flg bit not null default(0)
)
go
create table Country(
	id int primary key identity(1,1),
	name nvarchar(250) not null,
)
go
create table City(
	id int primary key identity(1,1),
	name nvarchar(250) not null,
	countryid int references Country(id)
)
go
create table Genre(
	id int primary key identity(1,1),
	name nvarchar(250) not null
)

   /*createdby int references [User](id),
   createdTime datetime,
   updatedBy int references [User](id),
   updatedTime datetime,*/
go
create table Singer(
   id int primary key identity(1,1),
   code nvarchar(10),
   nickname nvarchar(100),
   firstname nvarchar(100) not null,
   lastname nvarchar(100) not null,
   gender bit not null default(1),
   cityId int references City(id),
   countryId int references Country(id),
   phone varchar(20) not null,
   email varchar(254) not null,
   company nvarchar(250),
   createdby int references [User](id),
   createdTime datetime,
   updatedBy int references [User](id),
   updatedTime datetime,
   delete_flg bit not null default(0)
)
go
create table Audience(
   id int primary key identity(1,1) references [User](id),
   code nvarchar(10),
   nickname nvarchar(100),
   firstname nvarchar(100) not null,
   lastname nvarchar(100) not null,
   gender bit not null default(1),
   [address] nvarchar(250),
   phone varchar(20) not null,
   email varchar(254) not null,
   createdby int references [User](id),
   createdTime datetime,
   updatedBy int references [User](id),
   updatedTime datetime,
   delete_flg bit not null default(0)
)
go
create table Song(
   id int primary key identity(1,1),
   code nvarchar(10),
   title nvarchar(250) not null,
   genreId int references Genre(id) not null,
   singerId int references Singer(id) not null,
   listenType bit not null,
   [description] nvarchar(1000),
   createdby int references [User](id),
   createdTime datetime,
   updatedBy int references [User](id),
   updatedTime datetime,
   delete_flg bit not null default(0)
)
go
create table CountView(
	id int primary key identity(1,1),
	songId int references Song(id),
	singerId int references Singer(id),
	total bigint not null default(0),
	delete_flg bit not null default(0)
)
insert into Role values (1,2,'/*')
insert into [User](username,[password],email,roleId) values ('admin','1234','a@gmail.com',1)

insert into Genre values ('Rock')
insert into Genre values ('Pop')
insert into Genre values ('R&B')
insert into Genre values ('Jazz')


insert into Country values ('VietNam')
insert into Country values ('Korea')
insert into Country values ('China')
insert into Country values ('Japan')

insert into City( countryid,name) values(1,'HaNoi')
insert into City (countryid,name) values(1,'Ho Chi Minh')
insert into City (countryid,name) values(2,'Seoul')
insert into City (countryid,name) values(2,'Busan')
insert into City (countryid,name) values(3,'Tokyo')
insert into City (countryid,name) values(3,'Yokohama')

insert into [Singer](code,lastname,firstname,gender,cityId,countryId,phone,email,company) values ('1234','Dev','An',1,2,3,'0962049752','a@a.com','ABC Company')

