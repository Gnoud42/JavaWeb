create database P0017_Photo


create table contact(
	id int primary key not null,
	[address] nvarchar(50) null,
	city nvarchar(50) null,
	country nvarchar(50) null,
	phone nvarchar(50) null,
	email nvarchar(50) null,
	about_me nvarchar(200) null,
)


create table gallary(
	id int PRIMARY KEY identity (1,1) not null,
	name_gallary nvarchar(50)not null,
	[description] nvarchar(200) not null,
)

create table photo(
	id int identity (1,1) not null,
	gallary_id int,
	[path] nvarchar(255)not null,
	FOREIGN KEY(gallary_id) REFERENCES gallary(id)
)