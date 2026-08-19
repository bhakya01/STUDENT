 1CREATE DATABASE

CREATE DATABASE StudentsDB;
USE StudentsDB;

-- CREATE TABLES

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Duration VARCHAR(20)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


-- INSERT SAMPLE DATA

INSERT INTO Students VALUES
(1, 'Aarav', 21, 'Chennai'),
(2, 'Meera', 22, 'Bangalore'),
(3, 'Karthik', 23, 'Hyderabad'),
(4, 'Divya', 21, 'Delhi');

INSERT INTO Courses VALUES
(101, 'Data Analytics', '3 Months'),
(102, 'Python Programming', '2 Months'),
(103, 'SQL Basics', '1 Month');

INSERT INTO Enrollments VALUES
(1001, 1, 101, '2025-05-10'),
(1002, 2, 102, '2025-06-01'),
(1003, 3, 103, '2025-06-15');


Inner join

Show students with their enrolled course names.
 Write a query joining Students and Courses through Enrollments.
 
 
 select
  c.CourseID,
c.CourseName,
s.StudentID,
s.StudentName
from enrollments e
join 
students s
on e.StudentID=s.StudentID
join Courses c
on e.CourseID=c.CourseID;
 
 
 – LEFT JOIN and RIGHT JOIN
List all students and their courses, including those without matches.
Use both LEFT JOIN and RIGHT JOIN between Students and Enrollments.
 select
 s.StudentID,
 s.StudentName,
 e.EnrollmentID,
 e.CourseID
 from Students s
 left  join Enrollments e
 on s.StudentID=e.EnrollmentID;
 
 right join 
 
 
 select 
 s.StudentID,
 s.StudentName,
 e.EnrollmentID,
 e.CourseID 
 from Enrollments e
 right join students s
 on e.EnrollmentID=s.StudentID;
 
 

  round()
  select round(1234.567,2) as round_values;
   select  concat(studentName,'_',City) fulldescription from students;
select abs(-25)as postivenumber,
mod(25,4)as reminder;
select length(studentname) from students;