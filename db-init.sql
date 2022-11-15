-- Create a new database called 'test-database' with user 'test-database-user' with password 'test-database-password-!@#$@!1'
if db_id('test-database') is null
BEGIN EXEC ('create database [test-database]') END
GO
IF NOT EXISTS (SELECT name FROM master.sys.server_principals WHERE name = 'test-database-user')
BEGIN EXEC sp_addlogin 'test-database-user', 'test-database-password-!@#$@!1', 'master'; END
GO
use [test-database] IF NOT EXISTS (SELECT * FROM [sys].[database_principals] WHERE [type] = 'S' AND name = N'test-database-user') BEGIN CREATE USER [test-database-user] FOR LOGIN [test-database-user] WITH DEFAULT_SCHEMA=[dbo] END
GO
EXEC ('use [test-database] EXEC sp_addrolemember ''db_owner'', ''test-database-user''')