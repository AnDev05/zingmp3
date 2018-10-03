create database zingmp3
go
use zingmp3

go

create table [user](
	username varchar(25) not null primary key,
	password varchar(32) not null,
	email varchar(254) not null
);

insert into [user] values('admin','1234','a@gmail.com')