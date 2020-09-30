create database P0018

create table Post (
 id int primary key identity (1,1) not null,
 title  nvarchar(1024) not null,
 avatar nvarchar(255) default 'pencil.png' not null,
 public_date date default getdate() not null,
 content nvarchar(max) not null,
	[like] int default 0,
	comment int default 0,

)

create table Info(
id int IDENTITY(1,1) not null primary key,
name nvarchar(20) not null,
email nvarchar(50) not null,
message nvarchar(max) not null,
)

insert into Info
	(name, email, message)
values
	('duong','duongvh@fpt.edu.vn','aaaaaa')

