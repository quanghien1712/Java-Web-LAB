USE [LifeBlog]
GO
/****** Object:  Table [dbo].[About]    Script Date: 10/17/2020 4:11:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[aName] [nvarchar](50) NOT NULL,
	[aJob] [nvarchar](50) NOT NULL,
	[aContent] [ntext] NOT NULL,
	[aNewsletter] [ntext] NOT NULL,
	[aParagraph] [ntext] NOT NULL,
	[aImage] [ntext] NULL,
	[aView] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/17/2020 4:11:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[cAddress] [ntext] NOT NULL,
	[cPhone] [nvarchar](15) NOT NULL,
	[cEmail] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post]    Script Date: 10/17/2020 4:11:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[pId] [int] NOT NULL,
	[pType] [nvarchar](50) NOT NULL,
	[pTitle] [nvarchar](150) NOT NULL,
	[pIntroduction] [ntext] NOT NULL,
	[pContent] [ntext] NOT NULL,
	[pDate] [date] NOT NULL,
	[pView] [int] NOT NULL,
	[pImage] [nvarchar](150) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[About] ([aName], [aJob], [aContent], [aNewsletter], [aParagraph], [aImage], [aView]) VALUES (N'Quang Hien', N'Student of FPTU', N'FPT University is well-known for one of the top universities training IT programs for students. FPT University was the first university in Vietnam established by FPT Corporation. It was also the first university in Vietnam to be awarded a 3-star ranking by the QS World University Ranking System in 2012. Additionally, the curriculum of FPT University is designed in accordance with the international standards for professional education.', N'Pursue excellence and success will come chasing you. Pants down.', N'This website was built in maven project using struts 2 framework. This template is copyrighted by Colorlib', N'author.jpg', 171218)
INSERT [dbo].[Contact] ([cAddress], [cPhone], [cEmail]) VALUES (N'FPT University Da Nang', N'+84 901 942 964', N'hientqde140248@fpt.edu.vn')
INSERT [dbo].[Post] ([pId], [pType], [pTitle], [pIntroduction], [pContent], [pDate], [pView], [pImage]) VALUES (1, N'Travel', N'HOW TO PLAN A SUCCESSFUL RV TRIP', N'Since international travel on pause, people have turned to exploring their own backyards. From the U.S. to Canada to England, Europe, and New Zealand, people are getting in cars, campervans, and RVs and heading out on road trips. After all, it allows you to social distance while still getting outside!', N'Today, I’ve invited my friends Mike and Anne from HoneyTrek to share their RV tips and advice. They’re full-time RVers and will help you get your next RV adventure started easily and on a budget!

A couple of years back, the van life craze had everyone curious about rubber-tramping across North America. Maybe you thought, nah, I prefer my city apartment or jet-setting abroad.

Then COVID-19 hit. All of a sudden, getting out of Dodge with a house on wheels started to sound really good, didn’t it?

There is no doubt that RVing is one of the easiest and safest ways to travel right now. No crowded planes or questionable hotel rooms required — an RV gives you the freedom to explore and the peace of mind of having your own space.

Over the course of our eight-year “HoneyTrek” we’ve tried virtually every style of travel — backpacking, house-sitting, small-ship cruising, backcountry camping, five-star honeymooning, etc. — but the day we rented a campervan in New Zealand, we knew this was our preferred mode of travel.

For the past three years, we’ve been traveling full-time in our 1985 Toyota Sunrader “Buddy the Camper,” from the Baja Peninsula to the Arctic Circle and 47 states in between.

We’ve learned a lot along the way and are excited to share what we think are the most important things to know before setting out on your RV journey.', CAST(N'2020-08-27' AS Date), 3, N'post1.jpg')
INSERT [dbo].[Post] ([pId], [pType], [pTitle], [pIntroduction], [pContent], [pDate], [pView], [pImage]) VALUES (2, N'Travel', N'A LOVE LETTER TO MAIN', N'Tucked away up in the northeast corner of the United States, Maine evokes images of endless shorelines, wild forests, Stephen King, iconic lighthouses, and lots and lots of lobster dinners.', N'Despite growing up only 90 minutes from the state, I only visited once in my life. I was in college and my friend George was from there, so one weekend, we drove up to his hometown of Gorham.

Maine was always one of those places that I felt I could visit anytime so was never a rush to do so. There was always a flight to some distant land to get on instead. Maine could wait.

People tend to put off traveling their “backyard” until the end and I was no different.', CAST(N'2020-09-08' AS Date), 60, N'post2.jpg')
INSERT [dbo].[Post] ([pId], [pType], [pTitle], [pIntroduction], [pContent], [pDate], [pView], [pImage]) VALUES (3, N'Technology', N'Linux: 29 Years and Counting as a Powerhouse OS', N'When Linux was born on Aug. 25, 1991, it was little more than a hobby for then 21-year old Linus Torvalds. Today the Linux community is estimated to be more than 86 million users strong.', N'Awareness of Linux in the enterprise was nonexistent 29 years ago. Since then Linux has become the backbone of many large and small enterprises. It''s installed in government systems and embedded in devices worldwide; and is a viable alternative to the expensive hardware wrapped around macOS and the trouble-laden Windows OS.

Software developers have ported Linux to more hardware platforms than any other operating system. That results in no small part from the popularity of the Linux-based Android operating system.

Another member of the Linux family, Chrome OS, is driving the popularity of Chromebooks, which now can run Linux and Android apps. Soon the ability to run Windows Apps may come to Chrome OS as well.

Microsoft recently added the ability to run Linux within Windows. Together, all of these technology expansions are driving a movement that will further link all of these computing platforms with Linux at the center. This mashup of technology proves even more solidly the flexibility and growing popularity of the Linux platform.', CAST(N'2020-09-03' AS Date), 19, N'post3.jpg')
INSERT [dbo].[Post] ([pId], [pType], [pTitle], [pIntroduction], [pContent], [pDate], [pView], [pImage]) VALUES (4, N'Technology', N'Digital Security Is as Easy as PGP', N'Average computer users would be forgiven for not having any idea what PGP is. There is so much going on below the surface of the modern computing experience that even critically important security tools like PGP are tucked away.', N'To be sure, there are specialized circles that make regular explicit use of PGP. Diligent Linux users would have at least a passing familiarity with PGP, since the fact that manufacturers didn''t install our OS for us means we have to verify its integrity ourselves.

Otherwise, if your work doesn''t touch on information security, PGP would understandably be a mystery to you. But like I said, it is no less important for this reality. In fact, PGP played a significant part in why we have secure communications on the Internet. This actually isn''t because it''s widely used, although it definitely is utilized in software installation utilities the world over. Rather, its significance stems from its defiant challenge to an overzealous government that sought to compromise encryption long before most Americans used the Internet regularly.

My aim in treating PGP here is twofold. The first is to shed some light on it for the uninitiated. The second, and more importantly, is to teach the daring among you how to wield this powerful tool. Hopefully, you found your way here after reading my security guide. If not, check out the last installment, and you will see that PGP can be useful in certain high-stakes threat scenarios.

Before we proceed, keep in mind that, as with any tool, the usefulness of PGP adheres to the network effect. Its practicability is extremely limited due to scant adoption software development circles. If you seek to apply PGP toward interpersonal communication, those you communicate with must do the same.', CAST(N'2020-08-17' AS Date), 18, N'post4.jpg')
INSERT [dbo].[Post] ([pId], [pType], [pTitle], [pIntroduction], [pContent], [pDate], [pView], [pImage]) VALUES (5, N'Fashion', N'15 of the Best Fashion Blogs to Follow in 2018', N'Fashion is a highly visual industry, which explains why Instagram is the social network of choice for lovers of style. But there is far more fashion content online than what people share on social media. It has always been a strong niche for blogging.', N'There are many quality fashion blogs, which unsurprisingly feature high-quality photographs of the latest fashion innovations.  Most fashion blogs are full of inspiration for those mornings you open your wardrobe door with your mind in a blank. They make an ideal place to begin your online research into what’s hot this year before you head off to purchase your own outfits. They can also provide you with ideas about what you can mix and match to create that perfect look.

The successful online fashion bloggers are as much influencers as the big names who post fashion images on Instagram. Indeed, most of these fashion bloggers have an active Instagram presence as well.

', CAST(N'2018-10-24' AS Date), 101, N'post5.jpg')
