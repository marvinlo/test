/*
 Navicat Premium Data Transfer

 Source Server         : SqlServer
 Source Server Type    : SQL Server
 Source Server Version : 14003015
 Source Host           : localhost
 Source Database       : ouath
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14003015
 File Encoding         : utf-8

 Date: 07/03/2018 17:18:01 PM
*/

-- ----------------------------
--  Table structure for Order_Opreation_Status
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID('[dbo].[Order_Opreation_Status]') AND type IN ('U'))
	DROP TABLE [dbo].[Order_Opreation_Status]
GO
CREATE TABLE [dbo].[Order_Opreation_Status] (
	[master_order_id] bigint NULL,
	[order_status_code] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[order_status_message] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[id] bigint IDENTITY(1,1) NOT NULL,
	[create_time] bigint NULL,
	[operation_type] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [PRIMARY]
GO


-- ----------------------------
--  Primary key structure for table Order_Opreation_Status
-- ----------------------------
ALTER TABLE [dbo].[Order_Opreation_Status] ADD
	CONSTRAINT [PK__Order_Op__3213E83F10153A6A] PRIMARY KEY CLUSTERED ([id]) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = OFF,
		ALLOW_PAGE_LOCKS = OFF)
	ON [default]
GO

-- ----------------------------
--  Uniques structure for table Order_Opreation_Status
-- ----------------------------
ALTER TABLE [dbo].[Order_Opreation_Status] ADD
	CONSTRAINT [key_moid_ot] UNIQUE NONCLUSTERED ([master_order_id] ASC, [operation_type] ASC) 
	WITH (PAD_INDEX = OFF,
		IGNORE_DUP_KEY = OFF,
		ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON)
	ON [PRIMARY]
GO

-- ----------------------------
--  Indexes structure for table Order_Opreation_Status
-- ----------------------------
CREATE NONCLUSTERED INDEX [master_order_id_index]
ON [dbo].[Order_Opreation_Status] ([master_order_id] ASC)
WITH (PAD_INDEX = OFF,
	IGNORE_DUP_KEY = OFF,
	STATISTICS_NORECOMPUTE = OFF,
	SORT_IN_TEMPDB = OFF,
	ONLINE = OFF,
	ALLOW_ROW_LOCKS = ON,
	ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [operation_type_index]
ON [dbo].[Order_Opreation_Status] ([operation_type] ASC)
WITH (PAD_INDEX = OFF,
	IGNORE_DUP_KEY = OFF,
	STATISTICS_NORECOMPUTE = OFF,
	SORT_IN_TEMPDB = OFF,
	ONLINE = OFF,
	ALLOW_ROW_LOCKS = ON,
	ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

-- ----------------------------
--  Options for table Order_Opreation_Status
-- ----------------------------
ALTER TABLE [dbo].[Order_Opreation_Status] SET (LOCK_ESCALATION = TABLE)
GO
DBCC CHECKIDENT ('[dbo].[Order_Opreation_Status]', RESEED, 10001)
GO

