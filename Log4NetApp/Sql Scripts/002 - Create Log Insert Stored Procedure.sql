  
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

DROP PROCEDURE IF EXISTS procLogs_Insert
GO

CREATE PROCEDURE dbo.procLogs_Insert 
	@log_date datetime2, 
  @log_thread varchar(50), 
  @log_level varchar(50), 
  @log_class varchar(300), 
  @log_method varchar(300), 
  @log_line varchar(300), 
  @log_machinename varchar(300), 
  @log_message varchar(4000), 
  @exception varchar(4000)
AS
BEGIN
	SET NOCOUNT ON;

  insert into dbo.Logs (LogDate, LogThread, LogLevel, LogClass, LogMethod, LogLine, LogMessage, Exception, LogMachineName)
  values (@log_date, @log_thread, @log_level, @log_class, @log_method, @log_line, @log_message, @exception, @log_machinename)

END
GO