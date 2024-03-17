USE [SSU.ParallelProcessing.Master]
GO

select * from dbo.[User]

USE [SSU.ParallelProcessing.Slave1]
GO

select * from dbo.[User]

USE [SSU.ParallelProcessing.Slave2]
GO

select * from dbo.[User]

USE [SSU.ParallelProcessing.Slave3]
GO

select * from dbo.[User]

USE [SSU.ParallelProcessing.Slave4]
GO

select * from dbo.[User]

