/*
● Create a database with the name StudentManagementSystem. 

Create a table with named Student with attributes

: ● StudentID (Primary Key) ● FirstName ● LastName ● DateOfBirth ● Gender ● Email ● Phone

Insert 5 Records in students table
*/


mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> create table Student(Student_id varchar(10) not null primary key,First_Name varchar(10) not null,Last_Name varchar(10) not null,DateOfBirth DATE not null,Gender varchar(10) not null,Email varchar(20) not null,Phone varchar(10) not null);
Query OK, 0 rows affected (0.02 sec)

mysql> desc Student;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Student_id  | varchar(10) | NO   | PRI | NULL    |       |
| First_Name  | varchar(10) | NO   |     | NULL    |       |
| Last_Name   | varchar(10) | NO   |     | NULL    |       |
| DateOfBirth | date        | NO   |     | NULL    |       |
| Gender      | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(20) | NO   |     | NULL    |       |
| Phone       | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> insert into Student values('s101','Aarish','Khan','2003/05/27','Male','aarishkhan@gmail.com',9594593973),('s102','Vikas','Dubey','2005/03/20','Male','VikasDubey@gmail.com',8664532770),('s103','Suraj','Dobar','2005/12/23','Male','Surajobar@gmail.com',7534269788);
Query OK, 3 rows affected, 3 warnings (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 3

mysql> insert into Student values('s104','Shubham','Chaman','2006/04/07','Male','shubhamC@gmail.com',9590723654),('s105','Vinay','Jha','2006/09/29','Male','vinayj123@gmail.com',9324586744);
Query OK, 2 rows affected, 2 warnings (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 2

mysql> select*from Student;
+------------+------------+-----------+-------------+--------+----------------------+------------+
| Student_id | First_Name | Last_Name | DateOfBirth | Gender | Email                | Phone      |
+------------+------------+-----------+-------------+--------+----------------------+------------+
| s101       | Aarish     | Khan      | 2003-05-27  | Male   | aarishkhan@gmail.com | 9594593973 |
| s102       | Vikas      | Dubey     | 2005-03-20  | Male   | VikasDubey@gmail.com | 8664532770 |
| s103       | Suraj      | Dobar     | 2005-12-23  | Male   | Surajobar@gmail.com  | 7534269788 |
| s104       | Shubham    | Chaman    | 2006-04-07  | Male   | shubhamC@gmail.com   | 9590723654 |
| s105       | Vinay      | Jha       | 2006-09-29  | Male   | vinayj123@gmail.com  | 9324586744 |
+------------+------------+-----------+-------------+--------+----------------------+------------+
5 rows in set (0.00 sec)