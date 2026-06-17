/*
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order
*/


mysql> create database Demo1;
Query OK, 1 row affected (0.01 sec)

mysql> use Demo1;
Database changed

mysql> create table Student3 (Std_id varchar(50) primary key not null,FirstName varchar(50) not null,LastName varchar(50) not null,Age int not null,PhoneNo varchar(10) not null,Address varchar(100) not null);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into Student3 values (1, 'Aarish', 'Khan', 21, '9876543210', 'Mumbai'),(2, 'Rahul', 'Sharma', 22, '9876543211', 'Delhi'),(3, 'Priya', 'Patel', 20, '9876543212', 'Ahmedabad'),(4, 'Neha', 'Gupta', 23, '9876543213', 'Pune'),(5, 'Amit', 'Verma', 21, '9876543214', 'Nashik');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student3 ORDER BY LastName asc;
+--------+-----------+----------+-----+------------+-----------+
| Std_id | FirstName | LastName | Age | PhoneNo    | Address   |
+--------+-----------+----------+-----+------------+-----------+
| 4      | Neha      | Gupta    |  23 | 9876543213 | Pune      |
| 1      | Aarish    | Khan     |  21 | 9876543210 | Mumbai    |
| 3      | Priya     | Patel    |  20 | 9876543212 | Ahmedabad |
| 2      | Rahul     | Sharma   |  22 | 9876543211 | Delhi     |
| 5      | Amit      | Verma    |  21 | 9876543214 | Nashik    |
+--------+-----------+----------+-----+------------+-----------+
5 rows in set (0.00 sec)

