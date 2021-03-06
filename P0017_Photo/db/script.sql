USE [P0017_Photo]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 19/03/2020 9:11:53 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] NOT NULL,
	[address] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[about] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gallary]    Script Date: 19/03/2020 9:11:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gallary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](1000) NOT NULL,
	[cover] [nchar](255) NULL,
	[shortdes] [nvarchar](200) NULL,
 CONSTRAINT [PK__gallary__3213E83FE84F69E0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[photo]    Script Date: 19/03/2020 9:11:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gallary_id] [int] NULL,
	[path] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[contact] ([id], [address], [city], [country], [phone], [email], [about]) VALUES (1, N'Stockholm', N'NewYork', N'USA', N'0888889999', N'duongvhhe130409@gmail.com', N'Dreamer')
SET IDENTITY_INSERT [dbo].[gallary] ON 

INSERT [dbo].[gallary] ([id], [name], [description], [cover], [shortdes]) VALUES (4, N'Gallery 1', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation-full



', N'i1.jpg                                                                                                                                                                                                                                                         ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit-shortdes')
INSERT [dbo].[gallary] ([id], [name], [description], [cover], [shortdes]) VALUES (5, N'Gallery 2', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation-full



', N'i2.jpg                                                                                                                                                                                                                                                         ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit-shortdes')
INSERT [dbo].[gallary] ([id], [name], [description], [cover], [shortdes]) VALUES (6, N'Gallery 3', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation-full



', N'i3.jpg                                                                                                                                                                                                                                                         ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit-shortdes')
INSERT [dbo].[gallary] ([id], [name], [description], [cover], [shortdes]) VALUES (10, N'Gallery 4', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation-full



', N'i4.jpg                                                                                                                                                                                                                                                         ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit-shortdes')
INSERT [dbo].[gallary] ([id], [name], [description], [cover], [shortdes]) VALUES (11, N'Gallery 5', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation-full



', N'i5.jpg                                                                                                                                                                                                                                                         ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit-shortdes')
INSERT [dbo].[gallary] ([id], [name], [description], [cover], [shortdes]) VALUES (12, N'Gallery 6', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation-full



', N'i6.jpg                                                                                                                                                                                                                                                         ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit-shortdes')
INSERT [dbo].[gallary] ([id], [name], [description], [cover], [shortdes]) VALUES (13, N'Gallery 7', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation,
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation-full



', N'i7.jpg                                                                                                                                                                                                                                                         ', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit-shortdes')
SET IDENTITY_INSERT [dbo].[gallary] OFF
SET IDENTITY_INSERT [dbo].[photo] ON 

INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (1, 4, N'i1.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (2, 4, N'i2.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (3, 4, N'i3.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (4, 4, N'i4.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (5, 4, N'i5.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (6, 4, N'i6.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (7, 4, N'i7.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (8, 4, N'i8.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (9, 5, N'i9.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (10, 5, N'i10.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (11, 5, N'i11.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (12, 5, N'i12.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (13, 5, N'i13.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (14, 5, N'i14.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (15, 5, N'i15.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (16, 5, N'i16.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (17, 6, N'i17.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (18, 6, N'i18.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (19, 6, N'i19.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (20, 6, N'i20.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (21, 6, N'i21.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (22, 6, N'i22.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (23, 6, N'i23.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (24, 6, N'i24.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (25, 10, N'i1.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (26, 10, N'i2.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (27, 10, N'i3.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (28, 10, N'i4.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (29, 10, N'i5.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (30, 10, N'i6.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (31, 10, N'i7.jpg')
INSERT [dbo].[photo] ([id], [gallary_id], [path]) VALUES (32, 10, N'i8.jpg')
SET IDENTITY_INSERT [dbo].[photo] OFF
ALTER TABLE [dbo].[photo]  WITH CHECK ADD  CONSTRAINT [FK__photo__gallary_i__3A81B327] FOREIGN KEY([gallary_id])
REFERENCES [dbo].[gallary] ([id])
GO
ALTER TABLE [dbo].[photo] CHECK CONSTRAINT [FK__photo__gallary_i__3A81B327]
GO
/****** Object:  StoredProcedure [dbo].[getAllGallary]    Script Date: 19/03/2020 9:11:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getAllGallary]
as
	Select * from gallary	
GO
/****** Object:  StoredProcedure [dbo].[getContact]    Script Date: 19/03/2020 9:11:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getContact]
	@top as int
as
	select top(@top) * FROM contact
GO
/****** Object:  StoredProcedure [dbo].[getOneGallaryByID]    Script Date: 19/03/2020 9:11:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getOneGallaryByID]
	@id as int
as
	Select * from gallary where id = @id
GO
/****** Object:  StoredProcedure [dbo].[getPhotoByGallaryId]    Script Date: 19/03/2020 9:11:54 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getPhotoByGallaryId]
	@gallary_id as int
as 
	select * from photo where gallary_id = @gallary_id
GO
