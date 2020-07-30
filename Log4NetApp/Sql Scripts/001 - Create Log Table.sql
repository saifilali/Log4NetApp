SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

DROP TABLE IF EXISTS Logs
GO

CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LogDate] [datetime2](7) NOT NULL,
	[LogThread] [varchar](50) NOT NULL,
	[LogLevel] [varchar](50) NOT NULL,
	[LogClass] [varchar](300) NOT NULL,
	[LogMethod] [varchar](300) NOT NULL,
	[LogLine] [varchar](300) NOT NULL,
	[LogMessage] [varchar](4000) NOT NULL,
	[Exception] [varchar](4000) NULL,
	[LogMachineName] [varchar](300) NOT NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO