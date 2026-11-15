-- =====================================================================
-- Power Learn Project (PLP) - Week 8 Assignment: MySQL Backup & Restore
-- =====================================================================

-- ---------------------------------------------------------------------
-- QUESTION 1: Creating a Complete Database Backup (Single Database)
-- ---------------------------------------------------------------------
-- Explanation: 
-- This command exports the entire 'sales' database (structure and data) 
-- into an SQL backup file. Regular backups are vital for disaster recovery, 
-- protecting your data against hardware crashes or accidental deletions.
-- 
-- Command to test in your terminal:
-- "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump" -u root -p -B sales > sales_backup.sql


-- ---------------------------------------------------------------------
-- QUESTION 2: Backing Up All Databases on the Server
-- ---------------------------------------------------------------------
-- Explanation:
-- This command uses the '-A' flag to export every single database on your 
-- MySQL server at once. This is essential before a planned server migration 
-- to ensure zero data loss across all system and user databases.
-- 
-- Command to test in your terminal:
-- "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump" -u root -p -A > all_databases_backup.sql


-- ---------------------------------------------------------------------
-- QUESTION 3: Generating a Data-Only Database Backup
-- ---------------------------------------------------------------------
-- Explanation:
-- This command uses the '--no-create-info' option to export only the data 
-- (the table rows) from the 'sales' database without recreating the table structure. 
-- This is useful when the tables already exist and you only want to refresh records.
-- 
-- Command to test in your terminal:
-- "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump" -u root -p --no-create-info sales > sales_data_only.sql