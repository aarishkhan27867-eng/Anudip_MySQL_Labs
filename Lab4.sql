/*
Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName

 and "Course" table with the following a columns: CourseId,CourseName 

and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.

*/

mysql> CREATE DATABASE StudentManagementSystem2;
Query OK, 1 row affected (0.01 sec)

mysql> USE StudentManagementSystem2;
Database changed

mysql> CREATE TABLE Student (StudentID INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50));
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE Course (CourseID INT PRIMARY KEY,CourseName VARCHAR(100));
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE Enrollment (EnrollmentID INT PRIMARY KEY,StudentID INT,CourseID INT,FOREIGN KEY (StudentID) REFERENCES Student(StudentID),FOREIGN KEY (CourseID) REFERENCES Course(CourseID));
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO Student VALUES (1,'John','Doe'),(2,'Alice','Smith'),(3,'Bob','Johnson');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Course VALUES (101,'Java'),(102,'Python'),(103,'Database Systems');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Enrollment VALUES (1,1,101),(2,1,102),(3,2,103),(4,3,101);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT s.StudentID, s.FirstName, s.LastName, c.CourseID, c.CourseName FROM Student s INNER JOIN Enrollment e ON s.StudentID = e.StudentID INNER JOIN Course c ON e.CourseID = c.CourseID;
+-----------+-----------+----------+----------+------------------+
| StudentID | FirstName | LastName | CourseID | CourseName       |
+-----------+-----------+----------+----------+------------------+
|         1 | John      | Doe      |      101 | Java             |
|         1 | John      | Doe      |      102 | Python           |
|         2 | Alice     | Smith    |      103 | Database Systems |
|         3 | Bob       | Johnson  |      101 | Java             |
+-----------+-----------+----------+----------+------------------+
4 rows in set (0.00 sec)