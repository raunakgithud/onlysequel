select * from sys.procedures

select * from sys.objects

--sysrowsets
sp_helptext 'sp_MSrepl_startup'

sp_helptext sp_MScleanupmergepublisher

create procedure dbo.sp_MScleanupmergepublisher  
as  
    exec sys.sp_MScleanupmergepublisher_internal  


sp_helptext 'sp_MScleanupmergepublisher_internal'  


/**
--  
-- Name: sp_MScleanupmergepublisher_internal  
--   
-- Description: This procedure currently performs the following function(s):  
--              1) Cleans up all the stale dynamic snapshot views  
--              in all databases enabled for merge replication. This   
--              procedure should normally be called at merge publisher startup.  
--                
-- Notes: 1)This procedure is enabled as a startup procedure when a database is  
--        enabled as a first merge publisher database on the server and it   
--        will be unmarked as a startup procedure when the last merge publisher  
--        database is disabled.  
--        2)Errors within the SP are mostly ignored.  
--        3)This procedure can also be used by admins/securityadmins to perform  
--        manual cleanup of all dynamic snapshot views. Note that cleaning up the   
--        dynamic snapshot views can disrupt dynamic snapshots that are being generated.  
--          
-- Returns: (undefined)  
--  
-- Security: Only members of the sysadmin fixed server role can execute this  
--           procedure successfully. So for this procedure to function proprely   
--           as a startup procedure, the MSSQLServer service account must be a   
--           member of the sysadmin role.  
-- Requires Certificate signature for catalog access  
--  
create procedure sys.sp_MScleanupmergepublisher_internal  
as  
begin  
 set nocount on  
 declare @status_mask int  
 declare @published_mask int  
 declare @published_database_name sysname  
 declare @command nvarchar(4000)  
  
 -- Security check: sysadmin only  
 if (isnull(is_srvrolemember('sysadmin'),0) = 0)  
 begin  
  raiserror(14260,16,-1)  
  return (1)  
 end  
  
 -- Masks off the databases with status that we don't want to deal with  
 select @status_mask = 32 | -- loading  
        64 | -- pre recovery  
        128 | -- recovering  
        256 | -- not recovered  
        512 | -- offline  
        1024  -- read only  
  
 select @published_mask = 4 -- Merge published  
  
 declare hPublishedDatabase cursor local fast_forward for  
  select name from sysdatabases   
   where (status & @status_mask) = 0  
     and (category & @published_mask) <> 0  
  
 open hPublishedDatabase  
  
 fetch hPublishedDatabase into @published_database_name  
 while  (@@fetch_status <> -1)  
 begin  
  
  select @command = QUOTENAME(@published_database_name) + '.sys.sp_MScleanupmergepublisherdb'  
  
  exec @command  
  -- Ignore errors  
  fetch hPublishedDatabase into @published_database_name  
 end  
  
 close hPublishedDatabase  
 deallocate hPublishedDatabase  
  
end  



**/

select * from sysdatabases  
