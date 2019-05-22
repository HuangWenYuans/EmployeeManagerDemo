/*
 Navicat Premium Data Transfer

 Source Server         : SqlServler
 Source Server Type    : SQL Server
 Source Server Version : 12002000
 Source Catalog        : oa
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12002000
 File Encoding         : 65001

 Date: 22/05/2019 12:55:36
*/


-- ----------------------------
-- Table structure for employee
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[employee]') AND type IN ('U'))
	DROP TABLE [dbo].[employee]
GO

CREATE TABLE [dbo].[employee] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [name] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [work_date] datetime  NULL,
  [address] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [city] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [icon] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[employee] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of employee
-- ----------------------------
SET IDENTITY_INSERT [dbo].[employee] ON
GO

INSERT INTO [dbo].[employee] ([id], [name], [work_date], [address], [city], [icon]) VALUES (N'18', N'曹操', N'1900-01-01 00:00:00.000', N'丰和南大道696号', N'南昌市', N'a0f81fd7-cd73-41d2-b408-f288ab3d39cb.gif')
GO

INSERT INTO [dbo].[employee] ([id], [name], [work_date], [address], [city], [icon]) VALUES (N'19', N'张飞', N'1900-01-01 00:00:00.000', N'浦东新区', N'上海', N'232b585f-e4bf-446a-ab7f-c5219869a7f6.gif')
GO

INSERT INTO [dbo].[employee] ([id], [name], [work_date], [address], [city], [icon]) VALUES (N'20', N'赵云', N'1900-01-01 00:00:00.000', N'白云区', N'广州', N'30454242-0a84-4139-85cd-70ea8209c602.gif')
GO

SET IDENTITY_INSERT [dbo].[employee] OFF
GO


-- ----------------------------
-- Table structure for TFile
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TFile]') AND type IN ('U'))
	DROP TABLE [dbo].[TFile]
GO

CREATE TABLE [dbo].[TFile] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [title] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [content] varchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL,
  [is_top] int  NULL,
  [read_count] int  NULL,
  [source] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [attach] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[TFile] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TFile
-- ----------------------------
SET IDENTITY_INSERT [dbo].[TFile] ON
GO

INSERT INTO [dbo].[TFile] ([id], [title], [content], [create_time], [is_top], [read_count], [source], [attach]) VALUES (N'54', N'哈哈哈', N'abcde', N'1900-01-01 00:00:00.000', N'1', N'0', N'党政办', N'a6106f3a-116a-4b7f-9425-c8f191ffd0bc.docx')
GO

INSERT INTO [dbo].[TFile] ([id], [title], [content], [create_time], [is_top], [read_count], [source], [attach]) VALUES (N'55', N'哈哈', N'abcde', N'1900-01-01 00:00:00.000', N'0', N'0', N'党政办', N'd422e1e1-d21a-4fca-afeb-40abe240c58f.mp4')
GO

INSERT INTO [dbo].[TFile] ([id], [title], [content], [create_time], [is_top], [read_count], [source], [attach]) VALUES (N'56', N'a', N'abcde', N'1900-01-01 00:00:00.000', N'0', N'0', N'教务处', N'efb485ec-44b2-4091-b402-ccb732416830.mp4')
GO

SET IDENTITY_INSERT [dbo].[TFile] OFF
GO


-- ----------------------------
-- Table structure for TUser
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TUser]') AND type IN ('U'))
	DROP TABLE [dbo].[TUser]
GO

CREATE TABLE [dbo].[TUser] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [username] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [password] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [realname] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[TUser] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TUser
-- ----------------------------
SET IDENTITY_INSERT [dbo].[TUser] ON
GO

INSERT INTO [dbo].[TUser] ([id], [username], [password], [realname]) VALUES (N'3', N'123', N'123', N'黄文源')
GO

SET IDENTITY_INSERT [dbo].[TUser] OFF
GO


-- ----------------------------
-- Primary Key structure for table employee
-- ----------------------------
ALTER TABLE [dbo].[employee] ADD CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TFile
-- ----------------------------
ALTER TABLE [dbo].[TFile] ADD CONSTRAINT [PK_TNews] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TUser
-- ----------------------------
ALTER TABLE [dbo].[TUser] ADD CONSTRAINT [PK__TUser__3213E83F2C2B4C94] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

