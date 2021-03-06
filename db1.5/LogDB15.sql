USE [LogDB15]
GO
/****** Object:  Table [dbo].[GameLog]    Script Date: 11/26/2011 20:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GameLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MasterCID] [int] NOT NULL,
	[MapName] [varchar](32) NOT NULL,
	[GameType] [varchar](24) NOT NULL,
	[RegDate] [datetime] NULL,
 CONSTRAINT [PK_GameLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_GameLog_RegDate] ON [dbo].[GameLog] 
(
	[RegDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GambleLog]    Script Date: 11/26/2011 20:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GambleLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CID] [int] NOT NULL,
	[GIID] [int] NOT NULL,
	[RewardItemID] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_GambleLog_CID] ON [dbo].[GambleLog] 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_GambleLog_GIID] ON [dbo].[GambleLog] 
(
	[GIID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_GambleLog_RegDate] ON [dbo].[GambleLog] 
(
	[RegDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_GambleLog_RewardItemID] ON [dbo].[GambleLog] 
(
	[RewardItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConnLog]    Script Date: 11/26/2011 20:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConnLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AID] [int] NOT NULL,
	[Time] [smalldatetime] NULL,
	[IPPart1] [tinyint] NOT NULL,
	[IPPart2] [tinyint] NOT NULL,
	[IPPart3] [tinyint] NOT NULL,
	[IPPart4] [tinyint] NOT NULL,
	[CountryCode3] [char](3) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_ConnLog_AID] ON [dbo].[ConnLog] 
(
	[AID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ConnLog_Time] ON [dbo].[ConnLog] 
(
	[Time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChangeClanNameLog]    Script Date: 11/26/2011 20:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChangeClanNameLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CLID] [int] NULL,
	[OldName] [varchar](24) NULL,
	[NewName] [varchar](24) NULL,
	[MasterCID] [int] NULL,
	[MasterName] [varchar](24) NULL,
	[RegDate] [datetime] NULL,
 CONSTRAINT [PK__ChangeClanNameLo__276EDEB3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IDX_ChangeClanName_CLID] ON [dbo].[ChangeClanNameLog] 
(
	[CLID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ChangeClanName_MasterCID] ON [dbo].[ChangeClanNameLog] 
(
	[MasterCID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IDX_ChangeClanName_RegDate] ON [dbo].[ChangeClanNameLog] 
(
	[RegDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChangeCharNameLog]    Script Date: 11/26/2011 20:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChangeCharNameLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CID] [int] NOT NULL,
	[OldName] [varchar](24) NOT NULL,
	[NewName] [varchar](24) NOT NULL,
	[RegDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_ChangeCharNameLog_CID] ON [dbo].[ChangeCharNameLog] 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spRegularUpdateConnLog]    Script Date: 11/26/2011 20:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROC [dbo].[spRegularUpdateConnLog]
AS
 SET NOCOUNT ON

 DECLARE @Year char(4)
 DECLARE @Mon char(2)
 DECLARE @OldDate smalldatetime
 DECLARE @OldTableName varchar(128)

 SET @OldDate = DATEADD( mm, -1, GETDATE() )
 SET @Year = DATEPART(yy, @OldDate)
 SET @Mon = DATEPART(mm, @OldDate)

 SET @OldTableName = 'ConnLog_' + @Year + 
  CASE WHEN @Mon < 10 THEN '0' + CAST(@Mon AS char(1))
  ELSE CAST(@Mon AS char(2)) END

 EXEC sp_rename 'ConnLog', @OldTableName

 CREATE TABLE ConnLog(
  id int IDENTITY
 , AID int NOT NULL
 , Time smalldatetime
 , IPPart1 tinyint NOT NULL
 , IPPart2 tinyint NOT NULL
 , IPPart3 tinyint NOT NULL
 , IPPart4 tinyint NOT NULL
 , CountryCode3 char(3) )

 CREATE NONCLUSTERED INDEX IX_ConnLog_AID
 ON ConnLog( AID )

 CREATE NONCLUSTERED INDEX IX_ConnLog_Time
 ON ConnLog( Time )
GO
/****** Object:  Table [dbo].[ServerLogStorage]    Script Date: 11/26/2011 20:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServerLogStorage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ServerID] [smallint] NOT NULL,
	[PlayerCount] [int] NOT NULL,
	[GameCount] [int] NOT NULL,
	[BlockCount] [int] NOT NULL,
	[NonBlockCount] [int] NOT NULL,
	[Time] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ServerLogStorage_ServerID] ON [dbo].[ServerLogStorage] 
(
	[ServerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ServerLogStorage_Time] ON [dbo].[ServerLogStorage] 
(
	[Time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocatorLog]    Script Date: 11/26/2011 20:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LocatorLog](
	[LocatorID] [int] NULL,
	[CountryCode3] [varchar](3) NULL,
	[Count] [int] NULL,
	[RegDate] [smalldatetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_LocatorLog_CountryCode3] ON [dbo].[LocatorLog] 
(
	[CountryCode3] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LocatorLog_RegDate] ON [dbo].[LocatorLog] 
(
	[RegDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HackingBlockLog]    Script Date: 11/26/2011 20:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HackingBlockLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AID] [int] NOT NULL,
	[CID] [int] NULL,
	[HackingType] [tinyint] NOT NULL,
	[IPPart1] [tinyint] NOT NULL,
	[IPPart2] [tinyint] NOT NULL,
	[IPPart3] [tinyint] NOT NULL,
	[IPPart4] [tinyint] NOT NULL,
	[RegDate] [datetime] NOT NULL,
	[ServerID] [tinyint] NOT NULL,
	[ChannelName] [varchar](64) NULL,
	[Comment] [varchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_HackingBlockLog_AID] ON [dbo].[HackingBlockLog] 
(
	[AID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_HackingBlockLog_IP] ON [dbo].[HackingBlockLog] 
(
	[IPPart1] ASC,
	[IPPart2] ASC,
	[IPPart3] ASC,
	[IPPart4] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_HackingBlockLog_RegDateDesc] ON [dbo].[HackingBlockLog] 
(
	[RegDate] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spSetHackingBlock]    Script Date: 11/26/2011 20:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROC [dbo].[spSetHackingBlock]  
 @AID int  
, @CID int  
, @HackingType tinyint  
, @IPPart1 tinyint  
, @IPPart2 tinyint  
, @IPPart3 tinyint  
, @IPPart4 tinyint  
, @EndHackingBlockDate smalldatetime  
, @ServerID tinyint  
, @ChannelName varchar(64)  
, @Comment varchar(128)  
, @HackingLevel tinyint  
AS  
BEGIN  
 SET NOCOUNT ON  
  
 -- @HackingLevel : 1.Only log, 2.Set user state and log.  
 IF (@HackingLevel < 1) OR (@HackingLevel > 2)  
  RETURN   
  
 IF NOT EXISTS(SELECT AID FROM GunzDB15.dbo.Account(NOLOCK) WHERE AID = @AID)   
  RETURN  
  
 BEGIN TRAN   
  
 -- 1 : Log only.  
 -- 2 : Set account block and log.  
  
 IF 1 = @HackingLevel BEGIN  
  UPDATE GunzDB15.dbo.Account  
  SET HackingType = @HackingType, HackingRegTime = GETDATE()  
   , EndHackingBlockTime = @EndHackingBlockDate   
  WHERE AID = @AID  AND ISNULL(EndHackingBlockTime, '2000-01-01 00:00') < @EndHackingBlockDate
  IF (0 <> @@ERROR) BEGIN  
   ROLLBACK  
   RETURN  
  END  
 END  
  
 INSERT INTO  HackingBlockLog(AID, CID, HackingType, IPPart1, IPPart2, IPPart3, IPPart4  
  , RegDate, ServerID, ChannelName, Comment)  
 VALUES(@AID, @CID, @HackingType, @IPPart1, @IPPart2, @IPPart3, @IPPart4  
  , GETDATE(), @ServerID, @ChannelName, @Comment)  
 IF (0 <> @@ERROR) OR (0 = @@ROWCOUNT) BEGIN  
  ROLLBACK TRAN   
  RETURN  
 END  
   
 COMMIT TRAN   
END
GO
/****** Object:  Table [dbo].[GamePlayerLog]    Script Date: 11/26/2011 20:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GamePlayerLog](
	[ID] [int] NOT NULL,
	[CID] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL,
	[PlayTime] [int] NOT NULL,
	[Kills] [int] NOT NULL,
	[Deaths] [int] NOT NULL,
	[XP] [int] NOT NULL,
	[BP] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_GamePlayerLog_RegDate] ON [dbo].[GamePlayerLog] 
(
	[RegDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_GamePlayerLog_CID] ON [dbo].[GamePlayerLog] 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_GamePlayerLog_ID] ON [dbo].[GamePlayerLog] 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Default [DF__ChangeCha__RegDa__0DAF0CB0]    Script Date: 11/26/2011 20:09:02 ******/
ALTER TABLE [dbo].[ChangeCharNameLog] ADD  DEFAULT (getdate()) FOR [RegDate]
GO
/****** Object:  Default [DF__GameLog__RegDate__35BCFE0A]    Script Date: 11/26/2011 20:09:02 ******/
ALTER TABLE [dbo].[GameLog] ADD  DEFAULT (getdate()) FOR [RegDate]
GO
/****** Object:  Default [DF__GamePlaye__RegDa__47DBAE45]    Script Date: 11/26/2011 20:09:02 ******/
ALTER TABLE [dbo].[GamePlayerLog] ADD  DEFAULT (getdate()) FOR [RegDate]
GO
/****** Object:  ForeignKey [FK_GamePlayerLog_ID]    Script Date: 11/26/2011 20:09:02 ******/
ALTER TABLE [dbo].[GamePlayerLog]  WITH CHECK ADD  CONSTRAINT [FK_GamePlayerLog_ID] FOREIGN KEY([ID])
REFERENCES [dbo].[GameLog] ([ID])
GO
ALTER TABLE [dbo].[GamePlayerLog] CHECK CONSTRAINT [FK_GamePlayerLog_ID]
GO
