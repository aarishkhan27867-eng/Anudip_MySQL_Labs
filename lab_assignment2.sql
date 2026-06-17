/*
Consider a simple database  Demo with one tables: Employee Employee Table:

 ● Columns:emp_id (Primary Key), first_name, last_name, age, email 

Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table. 

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years. 

Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 2

 Submission: Create an SQL script file containing your solutions for all tasks (queries). Name the file "lab_assignment2.sql" Provide comments above each query to indicate the task number and the query's purpose
*/
mysql> create database Demo;
Query OK, 1 row affected (0.01 sec)
mysql> use Demo;
Database changed
mysql> create table Employee(Emp_id varchar(20) primary key not null,First_name varchar(50) not null,Last_name varchar(50) not null,Age int not null,Email varchar(50) not null);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into Employee values('e101','Tom','Cruise',60,'tomcruise123@gmail.com'),('e102','Dwayne','Johnson',55,'dwaynej123@gmail.com'),('e103','Virat','Kohli',45,'viratk123@gmail.com'),('e104','Amitabh','Bacchan',90,'AmitabhB123@gmail.com'),('e105','Kartik','Aaryan',30,'kartika123@gmail.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select*from Employee;
+--------+------------+-----------+-----+------------------------+
| Emp_id | First_name | Last_name | Age | Email                  |
+--------+------------+-----------+-----+------------------------+
| e101   | Tom        | Cruise    |  60 | tomcruise123@gmail.com |
| e102   | Dwayne     | Johnson   |  55 | dwaynej123@gmail.com   |
| e103   | Virat      | Kohli     |  45 | viratk123@gmail.com    |
| e104   | Amitabh    | Bacchan   |  90 | AmitabhB123@gmail.com  |
| e105   | Kartik     | Aaryan    |  30 | kartika123@gmail.com   |
+--------+------------+-----------+-----+------------------------+
5 rows in set (0.00 sec)

mysql> insert into Employee values('e106','Ajay','Devgan',12,'ajayd123@gmail.com'),('e107','Raghav','Chaddha',20,'raghavc123@gmail.com');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select*from Employee;
+--------+------------+-----------+-----+------------------------+
| Emp_id | First_name | Last_name | Age | Email                  |
+--------+------------+-----------+-----+------------------------+
| e101   | Tom        | Cruise    |  60 | tomcruise123@gmail.com |
| e102   | Dwayne     | Johnson   |  55 | dwaynej123@gmail.com   |
| e103   | Virat      | Kohli     |  45 | viratk123@gmail.com    |
| e104   | Amitabh    | Bacchan   |  90 | AmitabhB123@gmail.com  |
| e105   | Kartik     | Aaryan    |  30 | kartika123@gmail.com   |
| e106   | Ajay       | Devgan    |  12 | ajayd123@gmail.com     |
| e107   | Raghav     | Chaddha   |  20 | raghavc123@gmail.com   |
+--------+------------+-----------+-----+------------------------+
7 rows in set (0.00 sec)

mysql> select First_name,Last_name from Employee;
+------------+-----------+
| First_name | Last_name |
+------------+-----------+
| Tom        | Cruise    |
| Dwayne     | Johnson   |
| Virat      | Kohli     |
| Amitabh    | Bacchan   |
| Kartik     | Aaryan    |
| Ajay       | Devgan    |
| Raghav     | Chaddha   |
+------------+-----------+
7 rows in set (0.00 sec)

mysql> select First_name,Last_name,age from Employee where Age>30;
+------------+-----------+-----+
| First_name | Last_name | age |
+------------+-----------+-----+
| Tom        | Cruise    |  60 |
| Dwayne     | Johnson   |  55 |
| Virat      | Kohli     |  45 |
| Amitabh    | Bacchan   |  90 |
+------------+-----------+-----+
4 rows in set (0.00 sec)

mysql> update Employee set Age=Age+1 where age>25;
Query OK, 5 rows affected (0.00 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select*from Employee;
+--------+------------+-----------+-----+------------------------+
| Emp_id | First_name | Last_name | Age | Email                  |
+--------+------------+-----------+-----+------------------------+
| e101   | Tom        | Cruise    |  61 | tomcruise123@gmail.com |
| e102   | Dwayne     | Johnson   |  56 | dwaynej123@gmail.com   |
| e103   | Virat      | Kohli     |  46 | viratk123@gmail.com    |
| e104   | Amitabh    | Bacchan   |  91 | AmitabhB123@gmail.com  |
| e105   | Kartik     | Aaryan    |  31 | kartika123@gmail.com   |
| e106   | Ajay       | Devgan    |  12 | ajayd123@gmail.com     |
| e107   | Raghav     | Chaddha   |  20 | raghavc123@gmail.com   |
+--------+------------+-----------+-----+------------------------+
7 rows in set (0.00 sec)