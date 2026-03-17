# Many-to-Many Relationship Assignment (SQL)


## Description
This project demonstrates a **many-to-many relationship** between students and courses using a join table (`Enrollments`) in SQL Server.  

It includes:
- **Schema:** `Dennis`
- **Tables:**
  - `Students` — contains student information
  - `Courses` — contains course information
  - `Enrollments` — join table connecting students and courses
- **Relationships:**
  - `Enrollments.StudentID` → `Students.StudentID`
  - `Enrollments.CourseID` → `Courses.CourseID`
- **Query:** Lists all students enrolled in each course with start and end dates

---

## Files
- `Dennis_ManyToMany.sql` — SQL script with schema, tables, data, and query  
- `diagram.jpeg` — Database diagram showing table structure and relationships  

---

## How to Run
1. Open **SQL Server Management Studio (SSMS)**.
2. Open the file `Dennis_ManyToMany.sql`.
3. Execute the script:
   - Creates the schema and tables
   - Inserts data into tables
   - Runs the final query to display student enrollments per course
4. Check the output — you should see a neatly ordered list of courses with students and dates.

---
