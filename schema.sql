-- Create database and tasks table for Notify app
CREATE DATABASE IF NOT EXISTS task_management;
USE task_management;

CREATE TABLE IF NOT EXISTS tasks (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Title VARCHAR(40) NOT NULL,
  Description TEXT,
  Due_Date DATE NOT NULL,
  Status VARCHAR(20) DEFAULT 'Not Started'
);
