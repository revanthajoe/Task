# Notify (Task Management GUI)

A simple desktop app built with CustomTkinter and MySQL to manage tasks: add, view, update status, and delete.

## Features
- Add Task: name, title, description, due date
- View Tasks: list all tasks in the console
- Update Task Status
- Delete Task by ID
- View User IDs (ID and Name)
- Tabbed UI with a short Info page

## Requirements
- Python 3.8+
- MySQL Server
- Python packages: `customtkinter`, `mysql-connector-python`

Install packages:
```bash
pip install customtkinter mysql-connector-python
```

## Database Setup
1. Start MySQL and create the database:
```sql
CREATE DATABASE task_management;
```
2. Update DB credentials in `Notify.py` if needed:
```python
db = mysql.connect(
    host="localhost",
    user="root",
    password="admin",
    database="task_management"
)
```
3. On first run, the `tasks` table is created automatically.

Tasks table structure:
- Id (INT, PK, auto-increment)
- Name (VARCHAR 50, required)
- Title (VARCHAR 40, required)
- Description (TEXT)
- Due_Date (DATE, required)
- Status (VARCHAR 20, default: "Not Started")

## Run
```bash
python Notify.py
```

## Usage Tips
- Date format: use YYYY-MM-DD for Due_Date (e.g., 2025-12-31).
- “View Task” prints results to the terminal/console.
- Use “View User_Id” to see IDs you can use to update or delete tasks.

## Notes
- This is a local demo app; use secure, non-root DB credentials in real use.
- If Tk is missing on Linux, install system packages (e.g., `sudo apt-get install python3-tk`).
