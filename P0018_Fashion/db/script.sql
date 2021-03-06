USE [P0018]
GO
/****** Object:  Table [dbo].[Aboutme]    Script Date: 30/03/2020 10:10:45 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aboutme](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[age] [int] NOT NULL,
	[img] [nvarchar](20) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Info]    Script Date: 30/03/2020 10:10:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[message] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 30/03/2020 10:10:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](1024) NOT NULL,
	[avatar] [nvarchar](255) NOT NULL,
	[public_date] [date] NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[like] [int] NULL,
	[comment] [int] NULL,
	[shortdes] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aboutme] ON 

INSERT [dbo].[Aboutme] ([id], [name], [age], [img], [description]) VALUES (1, N' Susan Stratton', 25, N'aboutme.jpg', N'abc')
SET IDENTITY_INSERT [dbo].[Aboutme] OFF
SET IDENTITY_INSERT [dbo].[Info] ON 

INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (1, N'duong', N'duongvh@fpt.edu.vn', N'aaaaaa')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (4, N'duong vu hoa', N'123123', N'aaaaaaaaa')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (5, N'duong vu hoa', N'vhd_94@yahoo.com', N'aaaaaaaaaaa')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (6, N'test1', N'vhd_94@yahoo.com', N'test')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (10, N'duong vu hoa', N'1111111111', N'aaaaaaaaaaa')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (11, N'duong vu hoa', N'VHD_94@yahoo.com', N'aaaaaaa')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (12, N'duong', N'abc@yahoo.com', N'abcxyz')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (13, N'duong1', N'abcd@yahoo.com', N'abcxyz1')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (14, N'test2', N'vhd_94@yahoo.com', N'test2')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (16, N'test3', N'vhd_94@yahoo.com', N'test3')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (17, N'test3', N'vhd_94@yahoo.com', N'test3')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (18, N'test4', N'vhd_94@yahoo.com', N'test4')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (19, N'duong vu hoa', N'vhd_94@yahoo.com', N'aaaaaaaaaaaaa')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (20, N'duong vu hoa', N'vhd_94@yahoo.com', N'aaaaaaa')
INSERT [dbo].[Info] ([id], [name], [email], [message]) VALUES (21, N'duong vu hoa', N'vhd_94@yahoo.com', N'11111111')
SET IDENTITY_INSERT [dbo].[Info] OFF
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([id], [title], [avatar], [public_date], [content], [like], [comment], [shortdes]) VALUES (1, N'In New York', N'camera.png', CAST(N'2014-08-17' AS Date), N'<div class="post-content">
                       
						
                                <img src="assets/img/newyork.jpg" alt="">
                        
                          
                               
                           <div class="img-caption">


 <p class="sub2">Claritas est etiam processus dynamicus, qui sequitur.</p>
     <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 

							nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
							sed diam nonummy nibh euismod tincidunt ut laoreet 
							dolore magna aliquam erat volutpat. 
							Ut wisi enim ad minim veniam, quis nostrud exerci tation 
							ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>

                        </div>	
                        </div>', 5, 10, N'<div class="post-content">
                       
						
                                <img src="assets/img/newyork.jpg" alt="">
                        
                          
                               
                           <div class="img-caption">


 <p class="sub2">Claritas est etiam processus dynamicus, qui sequitur.</p>
 
                        </div>
                            
                        </div>')
INSERT [dbo].[Post] ([id], [title], [avatar], [public_date], [content], [like], [comment], [shortdes]) VALUES (8, N'In New York', N'pencil.png', CAST(N'2014-08-17' AS Date), N'
<div class="post-content">
                            <div class="post-img">

                                <img src="assets/img/newyork2.jpg" alt="">
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip 
ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse 
molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et 
iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. 
Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. 
Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. 
Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</p>
                            
                        </div>', 2, 20, N'<div class="post-content">
                            <div class="post-img">

                                <img src="assets/img/newyork2.jpg" alt="">
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                            
                        </div>')
INSERT [dbo].[Post] ([id], [title], [avatar], [public_date], [content], [like], [comment], [shortdes]) VALUES (12, N'Awesome Gucci', N'camera.png', CAST(N'2014-08-17' AS Date), N'<div class="post-content">
                      

                                <img src="assets/img/gucci.jpg" alt="">
                  
                                 <div class="img-caption">
                         
 <p class="sub2">Claritas est etiam processus dynamicus, qui sequitur</p>
 <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 

							nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
							sed diam nonummy nibh euismod tincidunt ut laoreet 
							dolore magna aliquam erat volutpat. 
							Ut wisi enim ad minim veniam, quis nostrud exerci tation 
							ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
                        </div>
                            
                        </div>	', 50, 10, N'<div class="post-content">
                      

                                <img src="assets/img/gucci.jpg" alt="">
                  
                                 <div class="img-caption">
                         
 <p class="sub2">Claritas est etiam processus dynamicus, qui sequitur</p>
                        </div>
                            
                        </div>')
INSERT [dbo].[Post] ([id], [title], [avatar], [public_date], [content], [like], [comment], [shortdes]) VALUES (13, N'Special Offer', N'camera.png', CAST(N'2014-08-17' AS Date), N'<div class="post-content">
                      

                                <img src="assets/img/son.jpg" alt="">
                  
                                                           <div class="img-caption">
                         
 <p class="sub2">Claritas est etiam processus dynamicus, qui sequitur</p>
     <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 

							nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
							sed diam nonummy nibh euismod tincidunt ut laoreet 
							dolore magna aliquam erat volutpat. 
							Ut wisi enim ad minim veniam, quis nostrud exerci tation 
							ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
                        </div>
                            
                        </div>', 20, 15, N'

<div class="post-content">
                      

                                <img src="assets/img/son.jpg" alt="">
                  
                                                           <div class="img-caption">
                         
 <p class="sub2">Claritas est etiam processus dynamicus, qui sequitur</p>
                        </div>
                            
                        </div>')
SET IDENTITY_INSERT [dbo].[Post] OFF
ALTER TABLE [dbo].[Post] ADD  DEFAULT ('pencil.png') FOR [avatar]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT (getdate()) FOR [public_date]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT ((0)) FOR [like]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT ((0)) FOR [comment]
GO
/****** Object:  StoredProcedure [dbo].[addInfo]    Script Date: 30/03/2020 10:10:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[addInfo]
	@name as nvarchar(20),
	@email as nvarchar(20),
	@message as nvarchar(max)
as 
begin
	insert into Info
	(name,email,message) values(@name,@email,@message)
end
GO
/****** Object:  StoredProcedure [dbo].[getAll]    Script Date: 30/03/2020 10:10:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[getAll]
as
	select * from Post
GO
/****** Object:  StoredProcedure [dbo].[getCount]    Script Date: 30/03/2020 10:10:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----------------------------
create procedure [dbo].[getCount]
	as
select count(*) as count from Post
GO
/****** Object:  StoredProcedure [dbo].[getPostById]    Script Date: 30/03/2020 10:10:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getPostById] 
	@id as int
as
	select * from Post where id = @id;
GO
/****** Object:  StoredProcedure [dbo].[getPosts]    Script Date: 30/03/2020 10:10:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getPosts] 
	@PageNumber as int,
	@PageSize as int
as
	--declare @PageSize as bigint; 
	--declare @PageNumber as bigint; 
	--set @PageSize=3; 
	--set @PageNumber=1;   
	With SQLPaging As   ( 
		Select Top(@PageSize * @PageNumber) ROW_NUMBER() OVER (ORDER BY public_date asc) 
		as resultNum, * 
		FROM Post )
	select * from SQLPaging with (nolock) where resultNum > ((@PageNumber - 1) * @PageSize)
GO
/****** Object:  StoredProcedure [dbo].[getTop]    Script Date: 30/03/2020 10:10:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getTop]
	@top as int
as
	select top(@top) * from Post order by public_date desc;
GO
