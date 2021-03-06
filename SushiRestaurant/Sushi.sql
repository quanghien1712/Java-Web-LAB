Use Master
Go
Create database Sushi
go
USE [Sushi]
GO
/****** Object:  Table [dbo].[About]    Script Date: 10/7/2020 8:03:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[aAddress] [ntext] NOT NULL,
	[aPhone] [nvarchar](11) NOT NULL,
	[aEmail] [nvarchar](50) NOT NULL,
	[aOpening] [ntext] NOT NULL,
	[aView] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Food]    Script Date: 10/7/2020 8:03:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fName] [nvarchar](50) NOT NULL,
	[fDescription] [ntext] NULL,
	[fType] [int] NOT NULL,
	[fPrice] [decimal](18, 2) NOT NULL,
	[fImage] [ntext] NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Type]    Script Date: 10/7/2020 8:03:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[tId] [int] IDENTITY(1,1) NOT NULL,
	[tName] [nvarchar](50) NOT NULL,
	[tDescription] [ntext] NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[tId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[About] ([aAddress], [aPhone], [aEmail], [aOpening], [aView]) VALUES (N'150 Phan Châu Trinh, Hải Châu, Đà Nẵng', N'02363566079', N'dasushi@gmail.com', N'Daily: 10:30 - 22:30', 171432)
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([fId], [fName], [fDescription], [fType], [fPrice], [fImage]) VALUES (1, N'Kim chi', N'Kim chi muối cải thảo là một món ăn kèm của Hàn Quốc, được tạo từ rau muối lên men,cải thảo và củ cải. Nó được ủ và ướp cùng với các loại gia vị như bột ớt, tỏi, gừng, ớt đỏ và đường, đôi khi còn là đường lên men từ các món cá sốt. Bạn có thể quen với phiên bản phổ biến nhất của kim chi cải thảo được làm từ bắp cải nhưng thực tế có hơn 100 loại khác nhau của món ăn cổ điển này, từ kkakdugi (củ cải), đến oi sobagi (dưa leo) và gat ( lá mù tạc).', 1, CAST(19000.00 AS Decimal(18, 2)), N'1.png')
INSERT [dbo].[Food] ([fId], [fName], [fDescription], [fType], [fPrice], [fImage]) VALUES (3, N'Rong biển trộn ', N'Rong biển tươi trộn mè – Chuaka wakame. Là loại rong biển Nhật Bản được trộn sẵn salad vô cùng tiện dụng, ròn, ngọt và đậm đà mùi biển. Rong biển có các chất khoáng ở biển, tương tự những chất khoáng trong máu của con người. ', 1, CAST(59000.00 AS Decimal(18, 2)), N'3.png')
INSERT [dbo].[Food] ([fId], [fName], [fDescription], [fType], [fPrice], [fImage]) VALUES (4, N'Đậu phụ lạnh', N'Đậu phụ thường dùng cho món ăn này là loại đậu "lụa" "(silken) (người VN vẫn gọi là đậu tươi) vì đặc tính và cảm giác của chính miếng đậu là mịn, mượt và mềm như lụa. Loại đậu phụ "vải" (cotton) cũng có thể được sử dụng nhưng ít phổ biến hơn. Đơn giản chỉ là miếng đậu tươi được làm lạnh trong tủ lạnh (thường loại đậu này mua về đã lạnh rồi), cắt thành miếng to tùy ý, và bên trên sẽ rắc lên "một số thứ".', 1, CAST(39000.00 AS Decimal(18, 2)), N'4.png')
INSERT [dbo].[Food] ([fId], [fName], [fDescription], [fType], [fPrice], [fImage]) VALUES (5, N'Cơm cuộn thịt nướng', N'Món cơm cuộn thịt nướng kim chi sẽ chinh phục mọi người nhờ phần cơm dẻo, quyện với phần thịt béo ngon nhưng không hề ngán nhờ xen lẫn là vị chua cay đặc trưng của kim chi. Ngoài ra, chút thơm thơm beo béo của phô mai vàng cũng là điểm nhấn khiến "dân cuồng phô mai" phải thích mê đấy.', 2, CAST(79000.00 AS Decimal(18, 2)), N'5.jpg')
INSERT [dbo].[Food] ([fId], [fName], [fDescription], [fType], [fPrice], [fImage]) VALUES (6, N'Cơm cuộn cá ngừ', N'Cơm cuộn salad cá ngừ là loại cơm cuộn có nhân là salad cá ngừ. Loại cơm cuộn này được gọi là Makizushi hay Maki, có nghĩa là sushi cuốn trong tiếng Nhật. Các cuộn sushi được cắt thành những miếng đều nhau và sau đó dùng kèm nước tương rất ngon miệng.', 2, CAST(59000.00 AS Decimal(18, 2)), N'6.jpg')
INSERT [dbo].[Food] ([fId], [fName], [fDescription], [fType], [fPrice], [fImage]) VALUES (7, N'Cá hồi nướng muối ', N'Cá hồi là một trong những loại thực phẩm có rất nhiều chất dinh dưỡng tốt cho sức khỏe, chính vì vậy mà chúng được dùng để chế biến các món ăn ngon. Cùng xem 4 cách làm cá hồi nướng thơm ngon tại nhà lại cực kỳ đơn giản dưới đây để thay đổi khẩu vị cho cả nhà nhé!', 3, CAST(159000.00 AS Decimal(18, 2)), N'7.jpg')
INSERT [dbo].[Food] ([fId], [fName], [fDescription], [fType], [fPrice], [fImage]) VALUES (8, N'Thịt heo xào kim chi', N'Món thịt heo xào kim chi ăn nóng kèm với cơm là thích hợp nhất. Món có vị chua cay ngọt ngọt của kim chi, kèm với thịt ba chỉ giòn mềm thấm gia vị. Sẽ là món ngon mang phong cách Hàn đổi gió cho thực đơn bữa cơm nhà bạn đấy.', 3, CAST(69000.00 AS Decimal(18, 2)), N'8.jpg')
INSERT [dbo].[Food] ([fId], [fName], [fDescription], [fType], [fPrice], [fImage]) VALUES (9, N'Lẩu Ishikari', N'Món Ishikari rất được ưa chuộng vào những ngày thời tiết se lạnh, món lẩu thơm ngon này đã vượt ra khỏi vùng Hokkaido và được yêu thich khắp Nhật Bản. Với nguyên liệu tươi, ngon nhất người dân vùng Ishikari đã làm cho món Ishikari-nabe càng thêm phần hấp dẫn và ngon miệng hơn. Chất dinh dưỡng có trong món lẩu Ishikari-nabe rất tốt cho sức khỏe, phần lớn được dùng thủy hải sản và rau củ nên món ăn cũng rất thanh đạm. Những người thiếu chất dinh dưỡng hay cần tẩm bổ sau bệnh món lẩu Ishikari-nabe là một lựa chọn hoàn hảo.', 4, CAST(379000.00 AS Decimal(18, 2)), N'9.jpg')
INSERT [dbo].[Food] ([fId], [fName], [fDescription], [fType], [fPrice], [fImage]) VALUES (10, N'Lẩu thập cẩm với nước Yose', N'Yosenabe là một trong hai món lẩu nổi tiếng nhất ở Nhật Bản. Với ý nghĩa “đặt cùng nhau”, một nồi lẩu Yose luôn có tất cả mọi thứ từ thịt gà, cá, trứng, hải sản, đậu hũ đến các loại rau nấm.', 4, CAST(399000.00 AS Decimal(18, 2)), N'10.jpg')
SET IDENTITY_INSERT [dbo].[Food] OFF
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([tId], [tName], [tDescription]) VALUES (1, N'Khai vị', N'Khai vị là món không thể thiếu trong thực đơn các bữa tiệc, đám cưới hay nhà hàng. Những món ăn khai vị thường có hương vị thơm ngon, khơi dậy vị giác người ăn.')
INSERT [dbo].[Type] ([tId], [tName], [tDescription]) VALUES (2, N'Cơm cuộn', N'Kimbap (hay còn gọi là gimbap) là món cơm cuộn rong biển rất được yêu thích của người Hàn Quốc, với thành phần nguyên liệu gồm cơm, xúc xích, thanh cua, trứng và các loại rau củ đã được sơ chế chín cuộn trong lá rong biển – thường ăn kèm với kim chi hoặc củ cải muối.')
INSERT [dbo].[Type] ([tId], [tName], [tDescription]) VALUES (3, N'Đồ nóng, chiên', N'Chiên ngập dầu không làm cho thức ăn quá béo ngậy, bởi vì độ ẩm làm phần bên trong thực phẩm không thấm dầu. Dầu nóng đun nóng nước trong thực phẩm, hấp nó từ trong ra. Hơi nước đẩy bong bóng và nước từ trong ra về phía bề mặt thực phẩm ngăn cản sự xâm nhập của dầu từ ngoài vào.')
INSERT [dbo].[Type] ([tId], [tName], [tDescription]) VALUES (4, N'Lẩu', N'Lẩu luôn là món ăn được ưa chuộng và những ngày mưa không chỉ với một nồi nước nóng nghi ngút khói mà bên cạnh đó còn hấp dẫn bởi nhiều nguyên liệu khác nhau khi cho vào. Lẩu là một món ăn phổ biến đối với ẩm thực của người Việt trong những bữa tiệc lớn đến những bữa tiệc nhỏ, những dịp tụ họp gia đình hay gặp mặt bạn bè.')
SET IDENTITY_INSERT [dbo].[Type] OFF
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [FK_Food_Type] FOREIGN KEY([fType])
REFERENCES [dbo].[Type] ([tId])
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [FK_Food_Type]
GO
