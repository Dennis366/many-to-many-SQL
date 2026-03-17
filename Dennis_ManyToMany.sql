CREATE SCHEMA Dennis;

GO

CREATE TABLE Dennis.Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    Lastname NVARCHAR(50),
    Firstname NVARCHAR(50)
);

CREATE TABLE Dennis.Courses (
    CourseID INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(100),
    Description NVARCHAR(255)
);

CREATE TABLE Dennis.Enrollments (
    EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
    CourseID INT,
    StudentID INT,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CourseID) REFERENCES Dennis.Courses(CourseID),
    FOREIGN KEY (StudentID) REFERENCES Dennis.Students(StudentID)
);


INSERT INTO Dennis.Students (Lastname, Firstname) VALUES
('Hanks', 'Tom'),
('DiCaprio', 'Leonardo'),
('Washington', 'Denzel'),
('Johansson', 'Scarlett'),
('Pitt', 'Brad'),
('Lawrence', 'Jennifer'),
('Clooney', 'George'),
('Portman', 'Natalie');


INSERT INTO Dennis.Courses (Title, Description) VALUES
('Introduction to Programming', 'Basics of programming using modern languages. Covers variables, control structures, functions and basic algorithms.'),
('Database Design and SQL', 'Relational database concepts, normalization, ER modeling and hands-on SQL queries with SQL Server.'),
('Network Fundamentals', 'Introduction to computer networks, TCP/IP, routing, switching and basic network security.'),
('Cybersecurity Essentials', 'Core cybersecurity principles including risk management, encryption, authentication and threat mitigation.'),
('Web Development Basics', 'Front-end and back-end web development fundamentals including HTML, CSS, JavaScript and server-side concepts.');


INSERT INTO Dennis.Enrollments (CourseID, StudentID, StartDate, EndDate) VALUES
(4, 4, '2025-05-02', '2025-06-28'),
(4, 5, '2025-05-02', '2025-06-28'),
(4, 8, '2025-05-02', '2025-06-28'),
(2, 1, '2025-01-02', '2025-02-28'),
(2, 2, '2025-01-02', '2025-02-28'),
(2, 3, '2025-01-02', '2025-02-28'),
(1, 1, '2025-11-02', '2026-02-28'),
(1, 2, '2025-11-02', '2026-02-28'),
(1, 3, '2025-11-02', '2026-02-28'),
(3, 4, '2026-02-02', '2025-03-18'),
(3, 5, '2026-02-02', '2025-03-18'),
(3, 8, '2026-02-02', '2025-03-18'),
(5, 4, '2025-10-02', '2025-12-01'),
(5, 5, '2025-10-02', '2025-12-01'),
(5, 8, '2025-10-02', '2025-12-01');


SELECT 
    c.Title AS [Course name],
    s.Lastname,
    s.Firstname,
    e.StartDate AS Started,
    e.EndDate AS Ended
FROM Dennis.Enrollments e
JOIN Dennis.Students s ON e.StudentID = s.StudentID
JOIN Dennis.Courses c ON e.CourseID = c.CourseID
ORDER BY c.Title, s.Lastname;