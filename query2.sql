use zingmp3
go
create table Singer(
	id int primary key identity(1,1),
	name nvarchar(250) not null,
	delete_flg bit not null default(0)
)
create table Genre(
	id int primary key identity(1,1),
	name nvarchar(250) not null,
	delete_flg bit not null default(0)
)
create table Song(
	id int primary key identity(1,1),
	singerId int references Singer(id),
	genreId int references Genre(id),
	name nvarchar(250) not null,
	sPath nvarchar(300) not null,
	[desc] nvarchar (140), 
	delete_flg bit not null default(0)
)
insert into Genre (name) values ('Rock')
insert into Genre (name) values ('Pop')
insert into Genre (name) values ('R&B')
insert into Genre (name) values ('Red')
