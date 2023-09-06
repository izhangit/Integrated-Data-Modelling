Data Model DataBase
postgres=# \c myfirstdb
You are now connected to database "myfirstdb" as user "postgres".
myfirstdb=# \l
                                                        List of databases
   Name    |  Owner   | Encoding |      Collate       |       Ctype        | ICU Locale | Locale Provider |   Access privileges
-----------+----------+----------+--------------------+--------------------+------------+-----------------+-----------------------
 myfirstdb | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            |
 postgres  | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            |
 template0 | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            | =c/postgres          +
           |          |          |                    |                    |            |                 | postgres=CTc/postgres
 template1 | postgres | UTF8     | English_India.1252 | English_India.1252 |            | libc            | =c/postgres          +
           |          |          |                    |                    |            |                 | postgres=CTc/postgres
(4 rows)


myfirstdb=# \dt
          List of relations
 Schema |  Name   | Type  |  Owner
--------+---------+-------+----------
 public | student | table | postgres
(1 row)


myfirstdb=# select * from student;
 student_id |   name   | age | gender | subjects | marks
------------+----------+-----+--------+----------+-------
          1 | Izhan    |  20 | Male   | Python   |    85
          2 | Abdullah |  20 | Male   | Python   |    67
          3 | Alia     |  18 | Female | Java     |    28
(3 rows)


myfirstdb=#
