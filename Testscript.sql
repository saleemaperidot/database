USE [master]
GO
/****** Object:  Database [student_db]    Script Date: 17-10-2022 11:18:51 ******/
CREATE DATABASE [student_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'student_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\student_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'student_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\student_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [student_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [student_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [student_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [student_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [student_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [student_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [student_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [student_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [student_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [student_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [student_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [student_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [student_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [student_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [student_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [student_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [student_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [student_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [student_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [student_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [student_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [student_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [student_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [student_db] SET RECOVERY FULL 
GO
ALTER DATABASE [student_db] SET  MULTI_USER 
GO
ALTER DATABASE [student_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [student_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [student_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [student_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [student_db] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'student_db', N'ON'
GO
USE [student_db]
GO
/****** Object:  Table [dbo].[StudentLoginTable]    Script Date: 17-10-2022 11:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentLoginTable](
	[StudentLogidID] [int] IDENTITY(1,1) NOT NULL,
	[StudentUserNameLoginTable] [varchar](255) NULL,
	[StudentPasswordLoginTable] [varchar](255) NULL,
	[StudentReferenceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentLogidID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentRegistrationTable]    Script Date: 17-10-2022 11:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentRegistrationTable](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](255) NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[StudentUserName] [varchar](255) NOT NULL,
	[StudentPassword] [varchar](255) NOT NULL,
	[FathersName] [varchar](255) NOT NULL,
	[StudentAddress] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[ContactNumber] [varchar](255) NULL,
	[DOB] [date] NULL,
	[DateOfJoining] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StudentLoginTable] ON 

INSERT [dbo].[StudentLoginTable] ([StudentLogidID], [StudentUserNameLoginTable], [StudentPasswordLoginTable], [StudentReferenceID]) VALUES (1, N'saleemaperidot@gmail.com', N'saleemaperidot@gmail.com', 9)
INSERT [dbo].[StudentLoginTable] ([StudentLogidID], [StudentUserNameLoginTable], [StudentPasswordLoginTable], [StudentReferenceID]) VALUES (2, N'vcg', N'bvb', 10)
INSERT [dbo].[StudentLoginTable] ([StudentLogidID], [StudentUserNameLoginTable], [StudentPasswordLoginTable], [StudentReferenceID]) VALUES (3, N'adamaydin@gmail.com', N'adamaydin!', 11)
INSERT [dbo].[StudentLoginTable] ([StudentLogidID], [StudentUserNameLoginTable], [StudentPasswordLoginTable], [StudentReferenceID]) VALUES (4, N'ayanahmed@gmial.com', N'ayanahmed!', 12)
SET IDENTITY_INSERT [dbo].[StudentLoginTable] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentRegistrationTable] ON 

INSERT [dbo].[StudentRegistrationTable] ([StudentID], [LastName], [FirstName], [StudentUserName], [StudentPassword], [FathersName], [StudentAddress], [City], [ContactNumber], [DOB], [DateOfJoining]) VALUES (9, N'NP', N'saleema', N'saleemaperidot@gmail.com', N'saleemaperidot@gmail.com', N'np marakkar', N'madeena', N'pattambi', N'9090909090', CAST(N'1991-01-01' AS Date), CAST(N'2012-01-01' AS Date))
INSERT [dbo].[StudentRegistrationTable] ([StudentID], [LastName], [FirstName], [StudentUserName], [StudentPassword], [FathersName], [StudentAddress], [City], [ContactNumber], [DOB], [DateOfJoining]) VALUES (10, N'Saa', N'cff', N'vcg', N'bvb', N'jjjh', N'bvhv', N'bhb', N'bhbh', CAST(N'2018-10-10' AS Date), CAST(N'2018-10-10' AS Date))
INSERT [dbo].[StudentRegistrationTable] ([StudentID], [LastName], [FirstName], [StudentUserName], [StudentPassword], [FathersName], [StudentAddress], [City], [ContactNumber], [DOB], [DateOfJoining]) VALUES (11, N'adam', N'aydin', N'adamaydin@gmail.com', N'adamaydin!', N'manas', N'kada', N'calicut', N'6786785676', CAST(N'1990-12-12' AS Date), CAST(N'2012-02-02' AS Date))
INSERT [dbo].[StudentRegistrationTable] ([StudentID], [LastName], [FirstName], [StudentUserName], [StudentPassword], [FathersName], [StudentAddress], [City], [ContactNumber], [DOB], [DateOfJoining]) VALUES (12, N'ayan', N'ahmed', N'ayanahmed@gmial.com', N'ayanahmed!', N'manas', N'madeee', N'malapurm', N'1234567890', CAST(N'1990-12-12' AS Date), CAST(N'2018-12-01' AS Date))
SET IDENTITY_INSERT [dbo].[StudentRegistrationTable] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__StudentR__4600E1D4D3C0C16E]    Script Date: 17-10-2022 11:18:52 ******/
ALTER TABLE [dbo].[StudentRegistrationTable] ADD UNIQUE NONCLUSTERED 
(
	[StudentUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StudentLoginTable]  WITH CHECK ADD FOREIGN KEY([StudentReferenceID])
REFERENCES [dbo].[StudentRegistrationTable] ([StudentID])
GO
/****** Object:  StoredProcedure [dbo].[SelectAllStudentDetails]    Script Date: 17-10-2022 11:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllStudentDetails]
AS
begin
SELECT * FROM StudentRegistrationTable with(nolock)
end
GO
/****** Object:  StoredProcedure [dbo].[selectLoginDetailsProcedure]    Script Date: 17-10-2022 11:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectLoginDetailsProcedure]
AS
begin
SELECT * FROM StudentLoginTable
end
GO
/****** Object:  StoredProcedure [dbo].[spLoginId]    Script Date: 17-10-2022 11:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spLoginId](@usename varchar(255),@password varchar(255))
as
begin
select StudentReferenceID from StudentLoginTable
where StudentUserNameLoginTable=@usename and StudentPasswordLoginTable=@password
end
GO
/****** Object:  StoredProcedure [dbo].[spProfile]    Script Date: 17-10-2022 11:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spProfile](@usename varchar(255),@password varchar(255))
as
begin
select *from StudentRegistrationTable
where studentUserName=@usename and studentPassword=@password
end
GO
/****** Object:  StoredProcedure [dbo].[spProfileloggedin]    Script Date: 17-10-2022 11:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spProfileloggedin](@id int)
as
begin
select *from StudentRegistrationTable
where StudentID=@id
end
GO
/****** Object:  StoredProcedure [dbo].[spRecordsBetweenTwoDates]    Script Date: 17-10-2022 11:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spRecordsBetweenTwoDates](@StartDate date,@EndDate date)
as
begin
select *from StudentRegistrationTable where DateOfJoining between @StartDate and @EndDate
end
GO
/****** Object:  StoredProcedure [dbo].[StudentRegistrationProcedure]    Script Date: 17-10-2022 11:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[StudentRegistrationProcedure](

   @LastName varchar(255) ,
    @FirstName varchar(255) ,
	@StudentUserName varchar(255),
	@StudentPassword varchar(255) ,
	@FathersName varchar(255) ,
    @StudentAddress varchar(255),
	@City varchar(255),
	@ContactNumber varchar(255),
	@DOB date,
	@DateOfJoining date
)
as
begin
DECLARE @fk AS INT
IF NOT EXISTS(SELECT StudentUserName FROM StudentRegistrationTable WHERE StudentUserName=@StudentUserName)
	begin try
		begin tran
INSERT INTO StudentRegistrationTable (LastName ,
    FirstName,
	StudentUserName,
	StudentPassword,
	FathersName,
    StudentAddress,
	City,
	ContactNumber,
	DOB,
	DateOfJoining)

VALUES (@LastName, @FirstName,@StudentUserName, @StudentPassword, @FathersName,@StudentAddress, @City,@ContactNumber,@DOB,@DateOfJoining)

set @fk =SCOPE_IDENTITY()
insert into StudentLoginTable(StudentUserNameLoginTable,StudentPasswordLoginTable,StudentReferenceID) 
values(@StudentUserName,@StudentPassword,@fk) 

commit tran
end try
begin catch
rollback tran
select ERROR_MESSAGE()
end catch
end
GO
USE [master]
GO
ALTER DATABASE [student_db] SET  READ_WRITE 
GO
