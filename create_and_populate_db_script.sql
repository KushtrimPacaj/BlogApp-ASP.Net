USE [master]
GO
/****** Object:  Database [blogdb]    Script Date: 3/10/2021 3:24:57 AM ******/
CREATE DATABASE [blogdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'blogdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\blogdb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'blogdb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\blogdb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [blogdb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [blogdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [blogdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [blogdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [blogdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [blogdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [blogdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [blogdb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [blogdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [blogdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [blogdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [blogdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [blogdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [blogdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [blogdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [blogdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [blogdb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [blogdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [blogdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [blogdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [blogdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [blogdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [blogdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [blogdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [blogdb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [blogdb] SET  MULTI_USER 
GO
ALTER DATABASE [blogdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [blogdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [blogdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [blogdb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [blogdb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [blogdb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [blogdb] SET QUERY_STORE = OFF
GO
USE [blogdb]
GO
/****** Object:  Table [dbo].[AdminUsers]    Script Date: 3/10/2021 3:24:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminUsers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 3/10/2021 3:24:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[content] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactData]    Script Date: 3/10/2021 3:24:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[content] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdminUsers] ON 
GO
INSERT [dbo].[AdminUsers] ([id], [username], [password]) VALUES (1, N'admin', N'admin')
GO
SET IDENTITY_INSERT [dbo].[AdminUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 
GO
INSERT [dbo].[Blogs] ([id], [name], [content]) VALUES (1, N'First blog', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam interdum venenatis quam. Nulla rhoncus interdum suscipit. Etiam a fermentum odio, sit amet interdum ligula. Mauris pulvinar sapien erat, id vestibulum erat facilisis id. Ut cursus imperdiet pretium. Maecenas ultricies purus iaculis convallis sodales. Proin bibendum mattis quam, vitae iaculis libero.

Praesent venenatis mollis diam, quis dapibus massa posuere nec. Ut molestie risus orci, ac ultrices enim finibus non. Suspendisse posuere arcu non ante finibus, sodales commodo diam porta. Integer ullamcorper arcu eu odio commodo, eget ultrices orci consectetur. Suspendisse potenti. Nam nec rutrum lorem. Mauris at nisi at est finibus viverra. Etiam fermentum enim vitae accumsan placerat. Quisque eu elementum metus. Nunc risus dui, bibendum aliquet augue vel, vulputate sagittis risus. Proin quis elementum dolor, vitae dignissim risus.

Aliquam feugiat tellus at imperdiet placerat. Vestibulum mollis risus sagittis neque imperdiet, eget tincidunt elit accumsan. Duis finibus, sem ac interdum pretium, nulla odio malesuada nisi, quis pulvinar est justo et orci. Aenean vel tristique libero, interdum maximus augue. Praesent interdum in odio dictum commodo. Phasellus quam orci, accumsan eu leo eu, rutrum malesuada metus. Duis nec consequat nisi, ac mattis nunc. Fusce laoreet eget est ultrices aliquet. Fusce sit amet ornare eros. In massa enim, mattis sit amet consectetur eu, sagittis et mi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam sagittis erat ligula, consequat facilisis mauris consequat ac. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent bibendum, odio eget vehicula dignissim, nibh sem eleifend lorem, ac porta urna turpis eget tortor. Aliquam tellus mauris, pellentesque sed dui eu, iaculis tempor ante.

Sed commodo ligula quis vehicula auctor. Vivamus id lectus finibus, semper nulla at, faucibus nisi. Etiam mattis, dui vel sollicitudin laoreet, orci risus tempor ligula, id bibendum felis libero non mi. Nunc sit amet quam non ipsum interdum malesuada quis ultrices enim. Curabitur feugiat laoreet egestas. Sed sagittis sagittis nisi dictum commodo. Ut blandit mauris vel pellentesque luctus. Sed tristique laoreet orci. Donec nec mauris sit amet augue hendrerit tempus id in dui.

Donec tempor sem vel lorem facilisis cursus. Phasellus velit libero, interdum eu fermentum eget, lacinia in eros. Nunc et lacus tempus, rutrum ligula vel, iaculis tellus. Aliquam posuere, lectus non tempor tincidunt, risus sapien convallis est, nec pharetra urna nisi et sem. Suspendisse nec hendrerit augue, et porttitor est. In ultrices maximus sollicitudin. Pellentesque eget semper risus, ac ultricies dolor. Sed enim neque, pulvinar vitae erat ac, mattis tincidunt nisl.

Integer et sapien odio. Suspendisse condimentum libero non congue sollicitudin. Pellentesque in hendrerit tellus, at fermentum quam. In finibus nisi quis orci fermentum, eu ullamcorper mauris sagittis. Phasellus ultricies mi in neque rutrum, et tempor massa faucibus. Suspendisse quis justo sit amet ex rhoncus porta ut luctus libero. Etiam varius erat quis urna placerat, eget laoreet magna porta. Morbi aliquet mollis facilisis. Vivamus in sapien sit amet lacus placerat venenatis non vel eros. Integer efficitur viverra aliquet. Donec a nisl nec arcu aliquet placerat eu quis.')
GO
INSERT [dbo].[Blogs] ([id], [name], [content]) VALUES (2, N'Second blog', N'Aliquam ac finibus eros. Nunc porttitor tincidunt diam, in aliquam ex. Nam vulputate dignissim nunc a congue. Nulla facilisi. Donec vel neque sem. Vestibulum quis imperdiet elit, sed dignissim diam. Mauris non purus et nibh semper maximus vel et lorem.

Nulla est massa, convallis a magna non, bibendum facilisis leo. Praesent consectetur lobortis ligula sit amet dictum. Curabitur lacus tortor, elementum eget sollicitudin et, posuere vestibulum enim. Vivamus malesuada ligula ac urna ultricies, a laoreet ante varius. Donec viverra ultricies viverra. In quis tincidunt dolor. Nulla vel lorem fermentum, lobortis enim et, feugiat dui. Fusce fermentum condimentum fringilla. Curabitur tincidunt turpis vitae erat fringilla condimentum.

Pellentesque nec augue ipsum. Nullam et elit ex. Quisque scelerisque diam a ante placerat efficitur. Quisque non quam ac sem convallis lobortis hendrerit vel ex. Donec at dui scelerisque, ullamcorper sapien ut, dictum risus. Pellentesque quam urna, porta quis leo sit amet, sollicitudin ornare lacus. Nunc gravida augue sit amet sapien ultricies, a convallis purus dignissim.

Sed sed augue lacus. Mauris finibus auctor est ut pretium. Aenean varius consectetur imperdiet. Mauris elementum leo fringilla vulputate dapibus. Vivamus ultricies convallis tellus, ut lacinia sapien pharetra et. In hac habitasse platea dictumst. Mauris vestibulum felis non tincidunt scelerisque. In tristique volutpat viverra. Fusce sit amet porta odio, sit amet venenatis lacus. In diam libero, tempor a pellentesque et, pharetra a eros. Nulla quis pulvinar velit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla eget dui dictum, venenatis massa quis, molestie odio.

Ut eu sapien at elit tempus vestibulum in et quam. Aliquam erat volutpat. Donec venenatis blandit tempor. Etiam ligula justo, cursus vel ultrices sed, viverra eget sem. Proin vitae ex ante. Duis sed convallis magna. Mauris et pharetra sapien. Integer diam ex, pellentesque ut tortor nec, porttitor iaculis leo. Ut lacinia eget diam in aliquam. Nulla tincidunt dui magna. Vivamus nunc nulla, hendrerit a libero at, posuere volutpat nunc. Vivamus ultricies nulla et scelerisque imperdiet. In hac habitasse platea dictumst. Donec rutrum vulputate metus, sed tincidunt tellus volutpat sit amet.

Nulla egestas tempus magna. Curabitur ex felis, iaculis at vestibulum nec, ultrices vel velit. Duis sagittis malesuada justo vel porttitor. Nulla volutpat, erat dignissim aliquam tincidunt, lacus ante dictum lacus, consectetur dapibus nisi neque sit amet nisi. Aliquam at ultricies augue, feugiat volutpat eros. Praesent in pharetra diam. Morbi vehicula placerat mi a vestibulum. Nullam sodales faucibus ipsum, ut elementum leo semper ut. Fusce sodales nec mi sit amet pharetra. Etiam nulla odio, efficitur id purus nec, faucibus tincidunt massa. Sed ornare metus mi, sit amet semper justo vestibulum in.')
GO
INSERT [dbo].[Blogs] ([id], [name], [content]) VALUES (3, N'Third blog', N'Some lorem ipsum here')
GO
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[ContactData] ON 
GO
INSERT [dbo].[ContactData] ([id], [name], [email], [content]) VALUES (1, N'Kushtrim', N'kp@gmail.com', N'Hello hello')
GO
INSERT [dbo].[ContactData] ([id], [name], [email], [content]) VALUES (2, N'Hello', N'test@gmail.com', N'Helloooo')
GO
INSERT [dbo].[ContactData] ([id], [name], [email], [content]) VALUES (3, N'Hello', N'kush@gmail.com', N'qweeq')
GO
SET IDENTITY_INSERT [dbo].[ContactData] OFF
GO
USE [master]
GO
ALTER DATABASE [blogdb] SET  READ_WRITE 
GO
