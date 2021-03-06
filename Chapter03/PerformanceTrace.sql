/********************************************************************************/
/*                                                                              */
/* Copyright by Author Sajal Dam, ISBN 1590594215                               */
/*                                                                              */
/********************************************************************************/

/****************************************************/
/* Created by: SQL Profiler                         */
/* Date: 05/18/2004  02:11:59 AM                    */
/****************************************************/


-- Create a Queue
declare @rc int
declare @TraceID int
declare @maxfilesize bigint
set @maxfilesize = 500

-- Please replace the text InsertFileNameHere, with an appropriate
-- filename prefixed by a path, e.g., c:\MyFolder\MyTrace. The .trc extension
-- will be appended to the filename automatically. If you are writing from
-- remote server to local drive, please use UNC path and make sure server has
-- write access to your network share

DECLARE @TRACE_FILE_ROLLOVER int
SET @TRACE_FILE_ROLLOVER = 2
exec @rc = sp_trace_create @TraceID output, @TRACE_FILE_ROLLOVER
                           , N'C:\PerformanceTrace', @maxfilesize, NULL 
if (@rc != 0) goto error

-- Client side File and Table cannot be scripted

-- Set the events
declare @on bit
set @on = 1
exec sp_trace_setevent @TraceID, 10, 1, @on
exec sp_trace_setevent @TraceID, 10, 2, @on
exec sp_trace_setevent @TraceID, 10, 3, @on
exec sp_trace_setevent @TraceID, 10, 4, @on
exec sp_trace_setevent @TraceID, 10, 12, @on
exec sp_trace_setevent @TraceID, 10, 13, @on
exec sp_trace_setevent @TraceID, 10, 14, @on
exec sp_trace_setevent @TraceID, 10, 15, @on
exec sp_trace_setevent @TraceID, 10, 16, @on
exec sp_trace_setevent @TraceID, 10, 17, @on
exec sp_trace_setevent @TraceID, 10, 18, @on
exec sp_trace_setevent @TraceID, 10, 21, @on
exec sp_trace_setevent @TraceID, 10, 25, @on
exec sp_trace_setevent @TraceID, 10, 31, @on
exec sp_trace_setevent @TraceID, 12, 1, @on
exec sp_trace_setevent @TraceID, 12, 2, @on
exec sp_trace_setevent @TraceID, 12, 3, @on
exec sp_trace_setevent @TraceID, 12, 4, @on
exec sp_trace_setevent @TraceID, 12, 12, @on
exec sp_trace_setevent @TraceID, 12, 13, @on
exec sp_trace_setevent @TraceID, 12, 14, @on
exec sp_trace_setevent @TraceID, 12, 15, @on
exec sp_trace_setevent @TraceID, 12, 16, @on
exec sp_trace_setevent @TraceID, 12, 17, @on
exec sp_trace_setevent @TraceID, 12, 18, @on
exec sp_trace_setevent @TraceID, 12, 21, @on
exec sp_trace_setevent @TraceID, 12, 25, @on
exec sp_trace_setevent @TraceID, 12, 31, @on
exec sp_trace_setevent @TraceID, 14, 1, @on
exec sp_trace_setevent @TraceID, 14, 2, @on
exec sp_trace_setevent @TraceID, 14, 3, @on
exec sp_trace_setevent @TraceID, 14, 4, @on
exec sp_trace_setevent @TraceID, 14, 12, @on
exec sp_trace_setevent @TraceID, 14, 13, @on
exec sp_trace_setevent @TraceID, 14, 14, @on
exec sp_trace_setevent @TraceID, 14, 15, @on
exec sp_trace_setevent @TraceID, 14, 16, @on
exec sp_trace_setevent @TraceID, 14, 17, @on
exec sp_trace_setevent @TraceID, 14, 18, @on
exec sp_trace_setevent @TraceID, 14, 21, @on
exec sp_trace_setevent @TraceID, 14, 25, @on
exec sp_trace_setevent @TraceID, 14, 31, @on
exec sp_trace_setevent @TraceID, 15, 1, @on
exec sp_trace_setevent @TraceID, 15, 2, @on
exec sp_trace_setevent @TraceID, 15, 3, @on
exec sp_trace_setevent @TraceID, 15, 4, @on
exec sp_trace_setevent @TraceID, 15, 12, @on
exec sp_trace_setevent @TraceID, 15, 13, @on
exec sp_trace_setevent @TraceID, 15, 14, @on
exec sp_trace_setevent @TraceID, 15, 15, @on
exec sp_trace_setevent @TraceID, 15, 16, @on
exec sp_trace_setevent @TraceID, 15, 17, @on
exec sp_trace_setevent @TraceID, 15, 18, @on
exec sp_trace_setevent @TraceID, 15, 21, @on
exec sp_trace_setevent @TraceID, 15, 25, @on
exec sp_trace_setevent @TraceID, 15, 31, @on
exec sp_trace_setevent @TraceID, 16, 1, @on
exec sp_trace_setevent @TraceID, 16, 2, @on
exec sp_trace_setevent @TraceID, 16, 3, @on
exec sp_trace_setevent @TraceID, 16, 4, @on
exec sp_trace_setevent @TraceID, 16, 12, @on
exec sp_trace_setevent @TraceID, 16, 13, @on
exec sp_trace_setevent @TraceID, 16, 14, @on
exec sp_trace_setevent @TraceID, 16, 15, @on
exec sp_trace_setevent @TraceID, 16, 16, @on
exec sp_trace_setevent @TraceID, 16, 17, @on
exec sp_trace_setevent @TraceID, 16, 18, @on
exec sp_trace_setevent @TraceID, 16, 21, @on
exec sp_trace_setevent @TraceID, 16, 25, @on
exec sp_trace_setevent @TraceID, 16, 31, @on
exec sp_trace_setevent @TraceID, 17, 1, @on
exec sp_trace_setevent @TraceID, 17, 2, @on
exec sp_trace_setevent @TraceID, 17, 3, @on
exec sp_trace_setevent @TraceID, 17, 4, @on
exec sp_trace_setevent @TraceID, 17, 12, @on
exec sp_trace_setevent @TraceID, 17, 13, @on
exec sp_trace_setevent @TraceID, 17, 14, @on
exec sp_trace_setevent @TraceID, 17, 15, @on
exec sp_trace_setevent @TraceID, 17, 16, @on
exec sp_trace_setevent @TraceID, 17, 17, @on
exec sp_trace_setevent @TraceID, 17, 18, @on
exec sp_trace_setevent @TraceID, 17, 21, @on
exec sp_trace_setevent @TraceID, 17, 25, @on
exec sp_trace_setevent @TraceID, 17, 31, @on
exec sp_trace_setevent @TraceID, 25, 1, @on
exec sp_trace_setevent @TraceID, 25, 2, @on
exec sp_trace_setevent @TraceID, 25, 3, @on
exec sp_trace_setevent @TraceID, 25, 4, @on
exec sp_trace_setevent @TraceID, 25, 12, @on
exec sp_trace_setevent @TraceID, 25, 13, @on
exec sp_trace_setevent @TraceID, 25, 14, @on
exec sp_trace_setevent @TraceID, 25, 15, @on
exec sp_trace_setevent @TraceID, 25, 16, @on
exec sp_trace_setevent @TraceID, 25, 17, @on
exec sp_trace_setevent @TraceID, 25, 18, @on
exec sp_trace_setevent @TraceID, 25, 21, @on
exec sp_trace_setevent @TraceID, 25, 25, @on
exec sp_trace_setevent @TraceID, 25, 31, @on
exec sp_trace_setevent @TraceID, 27, 1, @on
exec sp_trace_setevent @TraceID, 27, 2, @on
exec sp_trace_setevent @TraceID, 27, 3, @on
exec sp_trace_setevent @TraceID, 27, 4, @on
exec sp_trace_setevent @TraceID, 27, 12, @on
exec sp_trace_setevent @TraceID, 27, 13, @on
exec sp_trace_setevent @TraceID, 27, 14, @on
exec sp_trace_setevent @TraceID, 27, 15, @on
exec sp_trace_setevent @TraceID, 27, 16, @on
exec sp_trace_setevent @TraceID, 27, 17, @on
exec sp_trace_setevent @TraceID, 27, 18, @on
exec sp_trace_setevent @TraceID, 27, 21, @on
exec sp_trace_setevent @TraceID, 27, 25, @on
exec sp_trace_setevent @TraceID, 27, 31, @on
exec sp_trace_setevent @TraceID, 33, 1, @on
exec sp_trace_setevent @TraceID, 33, 2, @on
exec sp_trace_setevent @TraceID, 33, 3, @on
exec sp_trace_setevent @TraceID, 33, 4, @on
exec sp_trace_setevent @TraceID, 33, 12, @on
exec sp_trace_setevent @TraceID, 33, 13, @on
exec sp_trace_setevent @TraceID, 33, 14, @on
exec sp_trace_setevent @TraceID, 33, 15, @on
exec sp_trace_setevent @TraceID, 33, 16, @on
exec sp_trace_setevent @TraceID, 33, 17, @on
exec sp_trace_setevent @TraceID, 33, 18, @on
exec sp_trace_setevent @TraceID, 33, 21, @on
exec sp_trace_setevent @TraceID, 33, 25, @on
exec sp_trace_setevent @TraceID, 33, 31, @on
exec sp_trace_setevent @TraceID, 37, 1, @on
exec sp_trace_setevent @TraceID, 37, 2, @on
exec sp_trace_setevent @TraceID, 37, 3, @on
exec sp_trace_setevent @TraceID, 37, 4, @on
exec sp_trace_setevent @TraceID, 37, 12, @on
exec sp_trace_setevent @TraceID, 37, 13, @on
exec sp_trace_setevent @TraceID, 37, 14, @on
exec sp_trace_setevent @TraceID, 37, 15, @on
exec sp_trace_setevent @TraceID, 37, 16, @on
exec sp_trace_setevent @TraceID, 37, 17, @on
exec sp_trace_setevent @TraceID, 37, 18, @on
exec sp_trace_setevent @TraceID, 37, 21, @on
exec sp_trace_setevent @TraceID, 37, 25, @on
exec sp_trace_setevent @TraceID, 37, 31, @on
exec sp_trace_setevent @TraceID, 41, 1, @on
exec sp_trace_setevent @TraceID, 41, 2, @on
exec sp_trace_setevent @TraceID, 41, 3, @on
exec sp_trace_setevent @TraceID, 41, 4, @on
exec sp_trace_setevent @TraceID, 41, 12, @on
exec sp_trace_setevent @TraceID, 41, 13, @on
exec sp_trace_setevent @TraceID, 41, 14, @on
exec sp_trace_setevent @TraceID, 41, 15, @on
exec sp_trace_setevent @TraceID, 41, 16, @on
exec sp_trace_setevent @TraceID, 41, 17, @on
exec sp_trace_setevent @TraceID, 41, 18, @on
exec sp_trace_setevent @TraceID, 41, 21, @on
exec sp_trace_setevent @TraceID, 41, 25, @on
exec sp_trace_setevent @TraceID, 41, 31, @on
exec sp_trace_setevent @TraceID, 43, 1, @on
exec sp_trace_setevent @TraceID, 43, 2, @on
exec sp_trace_setevent @TraceID, 43, 3, @on
exec sp_trace_setevent @TraceID, 43, 4, @on
exec sp_trace_setevent @TraceID, 43, 12, @on
exec sp_trace_setevent @TraceID, 43, 13, @on
exec sp_trace_setevent @TraceID, 43, 14, @on
exec sp_trace_setevent @TraceID, 43, 15, @on
exec sp_trace_setevent @TraceID, 43, 16, @on
exec sp_trace_setevent @TraceID, 43, 17, @on
exec sp_trace_setevent @TraceID, 43, 18, @on
exec sp_trace_setevent @TraceID, 43, 21, @on
exec sp_trace_setevent @TraceID, 43, 25, @on
exec sp_trace_setevent @TraceID, 43, 31, @on
exec sp_trace_setevent @TraceID, 45, 1, @on
exec sp_trace_setevent @TraceID, 45, 2, @on
exec sp_trace_setevent @TraceID, 45, 3, @on
exec sp_trace_setevent @TraceID, 45, 4, @on
exec sp_trace_setevent @TraceID, 45, 12, @on
exec sp_trace_setevent @TraceID, 45, 13, @on
exec sp_trace_setevent @TraceID, 45, 14, @on
exec sp_trace_setevent @TraceID, 45, 15, @on
exec sp_trace_setevent @TraceID, 45, 16, @on
exec sp_trace_setevent @TraceID, 45, 17, @on
exec sp_trace_setevent @TraceID, 45, 18, @on
exec sp_trace_setevent @TraceID, 45, 21, @on
exec sp_trace_setevent @TraceID, 45, 25, @on
exec sp_trace_setevent @TraceID, 45, 31, @on
exec sp_trace_setevent @TraceID, 50, 1, @on
exec sp_trace_setevent @TraceID, 50, 2, @on
exec sp_trace_setevent @TraceID, 50, 3, @on
exec sp_trace_setevent @TraceID, 50, 4, @on
exec sp_trace_setevent @TraceID, 50, 12, @on
exec sp_trace_setevent @TraceID, 50, 13, @on
exec sp_trace_setevent @TraceID, 50, 14, @on
exec sp_trace_setevent @TraceID, 50, 15, @on
exec sp_trace_setevent @TraceID, 50, 16, @on
exec sp_trace_setevent @TraceID, 50, 17, @on
exec sp_trace_setevent @TraceID, 50, 18, @on
exec sp_trace_setevent @TraceID, 50, 21, @on
exec sp_trace_setevent @TraceID, 50, 25, @on
exec sp_trace_setevent @TraceID, 50, 31, @on
exec sp_trace_setevent @TraceID, 55, 1, @on
exec sp_trace_setevent @TraceID, 55, 2, @on
exec sp_trace_setevent @TraceID, 55, 3, @on
exec sp_trace_setevent @TraceID, 55, 4, @on
exec sp_trace_setevent @TraceID, 55, 12, @on
exec sp_trace_setevent @TraceID, 55, 13, @on
exec sp_trace_setevent @TraceID, 55, 14, @on
exec sp_trace_setevent @TraceID, 55, 15, @on
exec sp_trace_setevent @TraceID, 55, 16, @on
exec sp_trace_setevent @TraceID, 55, 17, @on
exec sp_trace_setevent @TraceID, 55, 18, @on
exec sp_trace_setevent @TraceID, 55, 21, @on
exec sp_trace_setevent @TraceID, 55, 25, @on
exec sp_trace_setevent @TraceID, 55, 31, @on
exec sp_trace_setevent @TraceID, 59, 1, @on
exec sp_trace_setevent @TraceID, 59, 2, @on
exec sp_trace_setevent @TraceID, 59, 3, @on
exec sp_trace_setevent @TraceID, 59, 4, @on
exec sp_trace_setevent @TraceID, 59, 12, @on
exec sp_trace_setevent @TraceID, 59, 13, @on
exec sp_trace_setevent @TraceID, 59, 14, @on
exec sp_trace_setevent @TraceID, 59, 15, @on
exec sp_trace_setevent @TraceID, 59, 16, @on
exec sp_trace_setevent @TraceID, 59, 17, @on
exec sp_trace_setevent @TraceID, 59, 18, @on
exec sp_trace_setevent @TraceID, 59, 21, @on
exec sp_trace_setevent @TraceID, 59, 25, @on
exec sp_trace_setevent @TraceID, 59, 31, @on
exec sp_trace_setevent @TraceID, 67, 1, @on
exec sp_trace_setevent @TraceID, 67, 2, @on
exec sp_trace_setevent @TraceID, 67, 3, @on
exec sp_trace_setevent @TraceID, 67, 4, @on
exec sp_trace_setevent @TraceID, 67, 12, @on
exec sp_trace_setevent @TraceID, 67, 13, @on
exec sp_trace_setevent @TraceID, 67, 14, @on
exec sp_trace_setevent @TraceID, 67, 15, @on
exec sp_trace_setevent @TraceID, 67, 16, @on
exec sp_trace_setevent @TraceID, 67, 17, @on
exec sp_trace_setevent @TraceID, 67, 18, @on
exec sp_trace_setevent @TraceID, 67, 21, @on
exec sp_trace_setevent @TraceID, 67, 25, @on
exec sp_trace_setevent @TraceID, 67, 31, @on
exec sp_trace_setevent @TraceID, 69, 1, @on
exec sp_trace_setevent @TraceID, 69, 2, @on
exec sp_trace_setevent @TraceID, 69, 3, @on
exec sp_trace_setevent @TraceID, 69, 4, @on
exec sp_trace_setevent @TraceID, 69, 12, @on
exec sp_trace_setevent @TraceID, 69, 13, @on
exec sp_trace_setevent @TraceID, 69, 14, @on
exec sp_trace_setevent @TraceID, 69, 15, @on
exec sp_trace_setevent @TraceID, 69, 16, @on
exec sp_trace_setevent @TraceID, 69, 17, @on
exec sp_trace_setevent @TraceID, 69, 18, @on
exec sp_trace_setevent @TraceID, 69, 21, @on
exec sp_trace_setevent @TraceID, 69, 25, @on
exec sp_trace_setevent @TraceID, 69, 31, @on
exec sp_trace_setevent @TraceID, 76, 1, @on
exec sp_trace_setevent @TraceID, 76, 2, @on
exec sp_trace_setevent @TraceID, 76, 3, @on
exec sp_trace_setevent @TraceID, 76, 4, @on
exec sp_trace_setevent @TraceID, 76, 12, @on
exec sp_trace_setevent @TraceID, 76, 13, @on
exec sp_trace_setevent @TraceID, 76, 14, @on
exec sp_trace_setevent @TraceID, 76, 15, @on
exec sp_trace_setevent @TraceID, 76, 16, @on
exec sp_trace_setevent @TraceID, 76, 17, @on
exec sp_trace_setevent @TraceID, 76, 18, @on
exec sp_trace_setevent @TraceID, 76, 21, @on
exec sp_trace_setevent @TraceID, 76, 25, @on
exec sp_trace_setevent @TraceID, 76, 31, @on
exec sp_trace_setevent @TraceID, 79, 1, @on
exec sp_trace_setevent @TraceID, 79, 2, @on
exec sp_trace_setevent @TraceID, 79, 3, @on
exec sp_trace_setevent @TraceID, 79, 4, @on
exec sp_trace_setevent @TraceID, 79, 12, @on
exec sp_trace_setevent @TraceID, 79, 13, @on
exec sp_trace_setevent @TraceID, 79, 14, @on
exec sp_trace_setevent @TraceID, 79, 15, @on
exec sp_trace_setevent @TraceID, 79, 16, @on
exec sp_trace_setevent @TraceID, 79, 17, @on
exec sp_trace_setevent @TraceID, 79, 18, @on
exec sp_trace_setevent @TraceID, 79, 21, @on
exec sp_trace_setevent @TraceID, 79, 25, @on
exec sp_trace_setevent @TraceID, 79, 31, @on
exec sp_trace_setevent @TraceID, 80, 1, @on
exec sp_trace_setevent @TraceID, 80, 2, @on
exec sp_trace_setevent @TraceID, 80, 3, @on
exec sp_trace_setevent @TraceID, 80, 4, @on
exec sp_trace_setevent @TraceID, 80, 12, @on
exec sp_trace_setevent @TraceID, 80, 13, @on
exec sp_trace_setevent @TraceID, 80, 14, @on
exec sp_trace_setevent @TraceID, 80, 15, @on
exec sp_trace_setevent @TraceID, 80, 16, @on
exec sp_trace_setevent @TraceID, 80, 17, @on
exec sp_trace_setevent @TraceID, 80, 18, @on
exec sp_trace_setevent @TraceID, 80, 21, @on
exec sp_trace_setevent @TraceID, 80, 25, @on
exec sp_trace_setevent @TraceID, 80, 31, @on


-- Set the Filters
declare @intfilter int
declare @bigintfilter bigint

exec sp_trace_setfilter @TraceID, 10, 0, 7, N'SQL Profiler'
set @bigintfilter = 2
exec sp_trace_setfilter @TraceID, 13, 0, 4, @bigintfilter

set @bigintfilter = 2
exec sp_trace_setfilter @TraceID, 16, 0, 4, @bigintfilter



-- Set the trace status to start
exec sp_trace_setstatus @TraceID, 1

-- Display trace id for future references
select TraceID=@TraceID
goto finish

error: 
select ErrorCode=@rc

finish: 
go
