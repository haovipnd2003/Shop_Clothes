USE [Wish]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/22/2024 9:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 8/22/2024 9:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/22/2024 9:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 8/22/2024 9:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
	[amount] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'Howard', N'TSR5MR', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'Tana', N'EHS8CM', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (15, N'Echo', N'IGE8TN', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (16, N'Slade', N'OFO6QS', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (21, N'Vera', N'CZB2VM', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (23, N'Katell', N'SFS0IW', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (25, N'Robin', N'KIS9AF', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (27, N'admin', N'123', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (28, N'mra', N'mra', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (29, N'mrb', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (30, N'Camden', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (31, N'hao', N'vip', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (32, N'adam1', N'123', 1, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'QUẦN')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'ÁO')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'BỘ QUẦN ÁO')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Giày')
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (1, N'Quần Suông Túi Hộp chất kaki cao cấp 2', N'https://down-vn.img.susercontent.com/file/sg-11134201-23020-ddqzvvy21inve2', 100.0000, N'Quần Suông Túi Hộp chất kaki cao cấp basic nam nữ ống suông rộng, Quần lưng thun co giãn 4 màu tôn dáng, form rộng', N'Tên sản phẩm: QUẦN Suông Túi Hộp LƯNG THUN NAM ỐNG RỘNG PHONG CÁCH HÀN QUỐC
⭐Bảng size bên shop các bạn tham khảo ạ:
Size M: Dành cho người nặng từ 42kg - 55kg
Size L : Dành cho người nặng từ 56kg - 68kg
Size XL: Dành cho người nặng từ 69kg  - 80kg
👉 Bảng size mang tính chất tham khảo bạn có thể lấy size to hơn hoặc nhỏ theo yêu cầu của bạn!
Màu sắc: Đen – Be – Nâu', 1, 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (2, N'Áo sơ mi nam nữ tay ngắn ok', N'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lk0onee5d0qq31', 100.0000, N'Áo sơ mi nam nữ tay ngắn chất nhung tăm cao cấp kiểu dáng form rộng, unisex, basic mặc cực đẹp', N'⭐ Tên sản phẩm : Áo sơ mi nhung tăm tay lỡ nam nữ unisex basic cao cấp

⭐ Chất Liệu: nhung tăm cao cấp ', 2, 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (8, N'Quần áo Thun Nam', N'https://down-vn.img.susercontent.com/file/41b50c165b448fe747b8904a29fbd2c5', 150.0000, N'Quần áo Thun Nam - bộ quần áo nam 3 sọc kẻ thời trang mùa hè', N'Bộ Quần Áo Thun Phông Cổ Tròn Phối Màu Thể Thao

Thiết kế thời trang, đơn giản không kém phần hiện đại

Kiểu dáng gọn nhẹ, năng động

Chất vải thun mềm mại, dễ thấm hút mồ hôi



Hướng dẫn chọn size:

- M (32-45Kg, <1m6)

- L (46-58Kg, <1m7)

- XL (59-68Kg, <1m75)

-XXL(69-85kg, <1m85)', 3, 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (9, N'(Các Mẫu Mới) Bộ Quần Áo Thun', N'https://down-vn.img.susercontent.com/file/55e7f852cbdbcb2c11471822648f0da8', 180.0000, N'Các Mẫu Mới) Bộ Quần Áo Thun - in hình núi đen cực đẹp vải mát mịn', N'Bộ Quần Áo Thun Phông Cổ Tròn Phối Màu Thể Thao

Thiết kế thời trang, đơn giản không kém phần hiện đại

Kiểu dáng gọn nhẹ, năng động

Chất vải thun mềm mại, dễ thấm hút mồ hôi



Hướng dẫn chọn size:

- M (32-45Kg, <1m6)

- L (46-58Kg, <1m7)

- XL (59-68Kg, <1m75)

-XXL(69-85kg, <1m85)

', 3, 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (20, N'Quần Sóc Kèm Đai Lưng basic phối đồ cực dễ', N'https://down-vn.img.susercontent.com/file/vn-11134201-7r98o-lskr2v7w9rwx89', 20.0000, N' Quần Sóc Kèm Đai Lưng basic phối đồ cực dễ, phong cách trẻ trung năng động Q13', N'💥SIÊU PHẨM THẦN THÁNH💥💥
QUẦN SÓC ĐAI LƯNG CỰC ĐẸP
BỐN MÀU TRẮNG ĐEN NÂU TÍM
ĐỦ SZ S-XL 
👉TÔN DÁNG
👉CHẤT LIEU CAO CẤP
👉HÀNG THIẾT KẾ CAO CẤP
👉GIÁ HẠT RẺ', 1, 27, NULL)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (3, N'Áo sơ mi túi basic chất kaki cao cấp', N'https://down-vn.img.susercontent.com/file/ec2e8fba124d342fd5a460bc57b7a625', 130.0000, N'Áo sơ mi túi basic chất kaki cao cấp,nam nữ cực đẹp, thời trang 4 mùa đơn giản, đi học đi chơi, đi làm dễ phối đồ, trend', N'⭐ Tên sản phẩm : Áo sơ mi kaki basic cao cấp
⭐ Chất Liệu: Chất kaki xuất hàn xịn 
⭐ Màu Sắc: Nâu - Vàng Cát - Trắng Kem
⭐ Đặc Tính:  Chất vải áo là chất kaki cao cấp dày dặn, dễ phối hợp đồ, nam nữ mặc đều đẹp ạ ', 2, 27, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (10, N'Set bộ quần áo cộc unisex nam nữ ', N'https://down-vn.img.susercontent.com/file/fa1467482968e4cf2cf476f9d41b823c', 180.0000, N'Set bộ quần áo cộc unisex nam nữ cực đẹp, Set quần áo sơ mi cộc phom rộng mặc đi chơi, đi biển, đi du lịch', N'⭐ Tên sản phẩm : Set bộ quần áo cộc mặc đi chơi, đi du lịch, đi biển, mặc đôi, mặc nhóm cực đẹp
⭐ Chất Liệu: Chất kaki mềm xuất hàn xịn 
⭐ Màu Sắc: Xanh - Trắng
⭐ Đặc Tính:  Chất vải là chất kaki mềm xuất Hàn cao cấp dày dặn, dễ phối hợp đồ, nam nữ mặc đều đẹp ạ ', 3, 27, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (11, N'Bộ Đồ Nam Mùa Hè Tay Ngắn Cổ Bẻ Áo Khuy Cài', N'https://down-vn.img.susercontent.com/file/bfa6fb6e5752291e8dd7674aa775b1d7', 150.0000, N'Bộ Đồ Nam Mùa Hè Tay Ngắn Cổ Bẻ Áo Khuy Cài Quần Short Có Túi Kiểu Dáng Trẻ Trung Thời Trang Zenkonu QA NAM 071V1', N'🔸Chât liệu: vải kaki thô mềm mại, thấm hút mồ hôi.

🔸 Kích thước: XS   S   M   L    XL

🔸 Xuất xứ: Việt Nam', 3, 27, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (5, N'Quần ống rộng mềm mại thoáng khí nhiều túi', N'https://down-vn.img.susercontent.com/file/16eb4b1f9ddb85a054d4903ca9303499', 150.0000, N'Aokang dành cho nam giới Retro của Nhật Bản Quần ống rộng mềm mại thoáng khí nhiều túi', N'Thành phần vải chính: Sợi polyester (polyester)

Hàm lượng các thành phần vải chính: 100 (%)

Cảnh áp dụng: giải trí

Kiểu cổ tay áo quần: thẳng

Quy trình: xử lý không sắt

Chi tiết phong cách: Nhiều túi

Độ đàn hồi: Không đàn hồi

Màu: Đen, Kaki, Xám

Kích thước: S, M, L, XL, 2XL, 3XL', 1, 31, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (6, N'Áo khoác bomber unisex', N'https://down-vn.img.susercontent.com/file/a3a134bf53bbb7fb2b9655f05e24b017', 160.0000, N'Áo khoác bomber unisex, Áo bomber bóng chày Royalty form rộng chất kaki dày dặn', N'⭐Bảng size bên shop các bạn tham khảo ạ:
Size M: Dành cho người nặng từ  40kg - 55kg
Size L : Dành cho người nặng từ  56kg - 68kg
Size XL: Dành cho người nặng từ  69kg  - 80kg', 2, 31, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (12, N'Quần denim Có Dây Thắt Lưng ', N'https://down-vn.img.susercontent.com/file/sg-11134201-7rbme-loot1cew9pxpf4', 165.0000, N'Kyushuad Quần denim Có Dây Thắt Lưng Trang Trí Dành Cho Cặp Đôi', N'✔ Chúng tôi có nhiều kinh nghiệm và sản phẩm chất lượng cao. Chúng tôi sẽ cung cấp cho bạn trải nghiệm tốt nhất.



✔ Sản phẩm của chúng tôi là 100% mới.



✔ Chúng tôi theo đuổi chất lượng cao và giá thấp.



✔ Chúng tôi luôn có sản phẩm mới. Vui lòng tiếp tục theo dõi tin tức mới nhất trong cửa hàng của chúng tôi. Chúng tôi sẽ gửi cho bạn phiếu giảm giá và giảm giá.', 1, 31, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (13, N'Bộ Đồ Nam Nữ Unisex Mùa Hè Ngắn Tay', N'https://down-vn.img.susercontent.com/file/9049cb1f56e2323f800001e4172490f4', 185.0000, N'Bộ Đồ Nam Nữ Unisex Mùa Hè Ngắn Tay Cổ Tròn Họa Tiết Loang Vẩy Sơn Hot Trend Thời Trang Zenkonu QA NAM 104', N'🔸Chât liệu: vải nỉ bông mềm mại, thấm hút mồ hôi.

🔸 Kích thước: XS   S   M   L    XL

🔸 Xuất xứ: Việt Nam', 3, 31, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (7, N'Quần Dài Ống Rộng Họa Tiết Sọc Caro ', N'https://down-vn.img.susercontent.com/file/sg-11134201-7rbko-lmpfg0nmn39n6a', 170.0000, N'Quần Dài Ống Rộng Họa Tiết Sọc Caro Trắng Đen Phong Cách Cổ Điển Cho Nam', N'✔ Chúng tôi có nhiều kinh nghiệm và sản phẩm chất lượng cao. Chúng tôi sẽ cung cấp cho bạn trải nghiệm tốt nhất.



✔ Sản phẩm của chúng tôi là 100% mới.



✔ Chúng tôi theo đuổi chất lượng cao và giá cả thấp.



✔ Chúng tôi luôn có sản phẩm mới. Vui lòng tiếp tục theo dõi tin tức mới nhất trong cửa hàng của chúng tôi. Chúng tôi sẽ gửi cho bạn phiếu giảm giá và giảm giá.', 1, 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (14, N'áo Unisex', N'https://down-vn.img.susercontent.com/file/220acd902a1c9fae63e149f1c0b88b27', 200.0000, N'áo Unisex - In 5D chữ No War phông tay lỡ cực đẹp, form rộng chất cotton khô cao cấp, đi học, đi làm, du lịch, basic', N'✪ Chất Liệu Vải :  cotton khô cao cấp 100%, co giãn 4 chiều, vải mềm, mịn, thoáng mát, không xù lông.
    ✪ Kĩ thuật may: Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn
    ✪ Hình in: Công nghệ in 5D tiên tiến đảm bảo độ bền màu và hình in ngay cả khi giặt máy.
    ✪ Kiểu Dáng :Form Rộng Thoải Mái
    ✪ Full size nam nữ : 40 - 85 kg', 2, 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (15, N'Áo sơ mi nam Basic', N'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lk52pa8cvjxw62', 100.0000, N'Áo sơ mi nam Basic chất kaki cao cấp cực đẹp', N'⭐ Tên sản phẩm : Áo sơ mi kaki basic cao cấp

⭐ Chất Liệu: Chất kaki xuất hàn xịn

⭐ Màu Sắc: Xám - Be - Xanh

⭐ Đặc Tính: Chất vải áo là chất kaki cao cấp dày dặn, dễ phối hợp đồ, nam nữ mặc đều đẹp ạ', 2, 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (16, N'Quần Kaki Nam VICENZO Ống Đứng', N'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lh5sht0oqgxe07', 120.0000, N'Quần Kaki Nam VICENZO Ống Đứng Vải Cotton Mềm Sau Khi Giặt Đường May Chuẩn, Quần Baggy Kaki Unisex Cạp Chun Thoải Mái', N'- Chất liệu: Kaki 

- Màu sắc: Đen, Be, Nâu

- Thiết kế:

- Size:S,  M, L, XL, XXL', 1, 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (17, N'Áo Thun Phối Bóng Đá Karants Cotton ', N'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-ls7yid9qdg2h32', 100.0000, N'Áo Thun Phối Bóng Đá Karants Cotton Cao Cấp Local Brand Hot Trend Phiên Bản Đặc Biệt Form Oversize [BST Thể Thao] - KR63', N'Phong cách
Cơ bản, Hàn Quốc, Đường phố
Tall Fit
Không
Chiều dài áo
Dài
Xuất xứ
Việt Nam
Chiều dài tay áo
Dài 3/4
Dáng kiểu áo
Rộng', 2, 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [amount]) VALUES (18, N'Bộ Quần Áo Nam Áo Sơ Mi Dài Tay Quần Kaki Basic Có Túi ', N'https://down-vn.img.susercontent.com/file/3251977c3cd7ad7dc3b076c88610df27', 120.0000, N'Bộ Quần Áo Nam Áo Sơ Mi Dài Tay Quần Kaki Basic Có Túi Trẻ Trung Thời Trang Zenkonu SO MI NAM 023 + QUAN NAM 060', N'🔸Chât liệu: vải nỉ bông mềm mại, thấm hút mồ hôi.

🔸 Kích thước: XS   S   M   L    XL

🔸 Xuất xứ: Việt Nam', 3, 1, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
