/*
=========================================================================
Create Database and Schemas
==========================================================================
Script Purpose:
This Script Creates a New Database named 'DWH' and Checks if it Exists or not. If it Exists then it is Dropped and Recreated it Again 
Also it Consists of three user Defined Schemas within the Database :"Bronze", "Silver","Gold".
WARNING!:
Running this Script will drop the Entire Database DWH if it Exists 
All the Data residing will be Deleted, So use it with Caution and Ensure That you have proper backups before running this script
*/
Use master;
GO
--Drop and recreate Data Warehouse (DWH) Database
IF EXISTS(SELECT 1 FROM sys.databases where name='DWH')
Begin
ALTER database DWH set single_user with rollback immediate;
DROP Database DWH;
END;
GO
--Create the DWH Database
Create database DWH
GO
USE  DWH;
GO
--Create Schemas 
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
