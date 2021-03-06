USE [Digital]
GO
/****** Object:  Table [dbo].[digital]    Script Date: 12/03/2020 12:02:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[digital](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[description] [nvarchar](3000) NULL,
	[image] [nvarchar](50) NOT NULL,
	[author] [nvarchar](50) NOT NULL,
	[timePost] [date] NOT NULL,
	[shortDes] [nvarchar](300) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[digital] ON 

INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (2, N'Me Devaluke2', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat.', N'a1.jpg', N'Henrry', CAST(N'2018-10-03' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (5, N'Devaluke2', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat.', N'i1.jpg', N'Christoper Robin', CAST(N'2018-10-10' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (12, N'Me Devaluke1', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat.', N'i1.jpg', N'Devalukke Again', CAST(N'2018-10-10' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (14, N'Christoper come back', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat.', N'i1.jpg', N'Hevalukeee', CAST(N'2018-11-11' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (16, N'Devaluke Come Back', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat.', N'i1.jpg', N'Henrry Again', CAST(N'2018-05-09' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (17, N'Sản xuất khẩu trang vải kháng khuẩn', N'Một tháng nay, khu nhà xưởng rộng 1.500 m2 của Công ty GarmentTech Pro trong Khu công nghiệp Tân Đô (huyện Đức Hoà, Long An) được phân ra các dây chuyền may khẩu trang, quần áo riêng biệt. Một nửa công nhân (600 người) đã chuyển sang may khẩu trang. Mỗi ngày họ làm ra khoảng 150.000 chiếc.

Tổng giám đốc Đỗ Đồng Tuấn cho biết, dù không phải đơn vị chuyên về y tế nhưng do dịch đang diễn biến phức tạp, lại sẵn dây chuyền máy móc phù hợp nên lùi lại các đơn hàng quần áo, đào tạo công nhân cách may khẩu trang để kịp cung ứng.
Theo ông Nguyễn Văn Thời, Phó chủ tịch hội Dệt may Việt Nam, vải làm khẩu trang nano là loại đặc biệt cấu tạo từ gỗ sồi. Tính năng quan trọng của khẩu trang nano nằm ở lớp than hoạt tính, có khả năng lọc bụi, mùi và vi khuẩn siêu mạnh nhờ các lỗ xốp trên bề mặt của lớp than, giúp hấp thu chất độc dưới dạng hạt li ti và ngăn chặn chúng đi vào cơ thể. Ngoài ra, sản phẩm có thể chống mùi, chống nhăn, kháng khuẩn, khử mùi mồ hôi.

TNG cho biêt, nguyên liệu để may khẩu trang đặc biệt đã được giám định từ Bộ Y tế. Đây là chất liệu mới được nghiên cứu năm 2019. Loại vải này lần đầu tiên được áp dụng vào may áo và khẩu trang.', N'kt1.jpg', N'Author2', CAST(N'2020-01-29' AS Date), N'Nhiều công ty vốn chỉ sản xuất quần áo nay cũng dừng các dây chuyền để làm khẩu trang vải kháng khuẩn phòng chống Covid-19.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (24, N'Số ca nhiễm mới ở Hàn Quốc vượt 3000', N'WHO kêu gọi tất cả quốc gia dự trữ máy thở khi số ca nhiễm nCoV khắp thế giới đã vượt 88.000, trong đó hơn 3.000 người tử vong.

Hơn 3.000 trường hợp tử vong vì nCoV được ghi nhận trên toàn cầu, sau khi Trung Quốc hôm nay công bố thêm 42 người chết. Số quốc gia và vùng lãnh thổ xuất hiện dịch Covid-19 cũng nâng lên 67, với hơn 88.500 người nhiễm bệnh, trong đó có hơn 80.000 ca tại Trung Quốc đại lục.

Sau khi dịch bệnh khởi phát từ thành phố Vũ Hán, tỉnh Hồ Bắc từ tháng 12 năm ngoái, sự chú ý ban đầu dồn vào Trung Quốc, nơi chiếm đa số bệnh nhân và trường hợp tử vong. Tuy nhiên, không khí căng thẳng tại nước này gần đây hạ nhiệt đáng kể, khi Tổ chức Y tế Thế giới (WHO) cho biết Covid-19 ở Trung Quốc đã đạt đỉnh từ ngày 23/1 đến 2/2. Số ca bệnh mới đang giảm dần và nhiều tỉnh không có thêm trường hợp nhiễm trong nhiều ngày liên tiếp.

Trong khi đó, tình hình dịch bệnh tại nhiều quốc gia ngày càng trở nên nghiêm trọng, đặc biệt là Hàn Quốc, ổ Covid-19 lớn thứ hai thế giới sau Trung Quốc đại lục. Tổng số ca nhiễm nCoV ở nước này đã vượt 4.000 với 22 người tử vong. Hôm 29/2, số ca nhiễm mới ở Hàn Quốc là 813, gần gấp đôi so với con số 427 vào cùng ngày ở Trung Quốc.', N'tg1.jpg', N'Author1', CAST(N'2020-02-03' AS Date), N'WHO kêu gọi tất cả quốc gia dự trữ máy thở khi số ca nhiễm nCoV khắp thế giới đã vượt 88.000, trong đó hơn 3.000 người tử vong')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (25, N'Day La Bai So 2', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat.', N'i1.jpg', N'Henrry', CAST(N'2020-01-24' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (26, N'Devaluke', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat.', N'i1.jpg', N'Christoper Robin', CAST(N'2020-01-23' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (27, N'Me Devaluke2', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat.', N'i1.jpg', N'Devalukke Again', CAST(N'2020-02-22' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (28, N'Christoper come back', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat.', N'i1.jpg', N'Hevalukeee', CAST(N'2018-11-11' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (29, N'Devaluke Come Back', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat.', N'i1.jpg', N'Henrry Again', CAST(N'2018-05-09' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (30, N'What is next', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat.', N'i1.jpg', N'Author4', CAST(N'2020-03-04' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[digital] ([ID], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (31, N'Devaluke Come', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut 
laoreet dolore magna aliquam erat volutpat.', N'i1.jpg', N'Author3', CAST(N'2019-01-21' AS Date), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
SET IDENTITY_INSERT [dbo].[digital] OFF
/****** Object:  StoredProcedure [dbo].[count_txt]    Script Date: 12/03/2020 12:02:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[count_txt]
	@count_txt text
as
	select count(*) from digital where title like @count_txt
GO
/****** Object:  StoredProcedure [dbo].[get5Newst]    Script Date: 12/03/2020 12:02:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[get5Newst] 
	@top as int
as 
	select top(@top) * from digital where timePost not in(select max(timepost) from digital) order by timePost desc
GO
/****** Object:  StoredProcedure [dbo].[getNewById]    Script Date: 12/03/2020 12:02:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getNewById]
	@id as int
as
	select * from digital where id = @id;
GO
/****** Object:  StoredProcedure [dbo].[getTop1]    Script Date: 12/03/2020 12:02:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getTop1]
	@top as int
as
	select top(@top) * from digital order by timePost desc
GO
/****** Object:  StoredProcedure [dbo].[search_by_text]    Script Date: 12/03/2020 12:02:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[search_by_text]
	@text_to_search text,
	@page int,
	@page_size int
as
begin
	select * from 
	(
		select ROW_NUMBER() over (order by ID ASC) as rowNewID, * from digital 
		where title like @text_to_search
	) as TempTable 
	where rowNewID between (@page_size*(@page-1)+1) and @page_size*@page
end
GO
