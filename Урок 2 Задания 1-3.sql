/* Задание 1
Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
*/
/*Примечание
MySQL установлен. 
Файл my.cnf создан и размещение в папке C:\Program Files\MySQL\MySQL Server 8.0 (скриншот приложен)
Подключение к mysql происходит автоматически (см. скрипты ниже)
Сам файл my.cnf прилагается. 
*/

/* Задание 2
Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
*/

Microsoft Windows [Version 10.0.19043.1288]
(c) Microsoft Corporation. All rights reserved.

C:\Users\biz20>mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 66
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| myshop             |
| mysql              |
| performance_schema |
| sys                |
| test               |
| university         |
+--------------------+
7 rows in set (0.00 sec)

mysql> CREATE DATABASE example;
Query OK, 1 row affected (0.01 sec)

mysql> use example;
Database changed
/*
При создании таблицы исходил из буквального прочтения задачи, т.е., так как в Задаче не требовалось задавать много 
атрибутов к id и name, то я задал минимальные атрибуты - INT и VARCHAR.  
*/
mysql> CREATE TABLE users (id INT, name VARCHAR(40));
Query OK, 0 rows affected (0.06 sec)

mysql> SHOW TABLES;
+-------------------+
| Tables_in_example |
+-------------------+
| users             |
+-------------------+
1 row in set (0.00 sec)




/* Задание 3
Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
*/
Microsoft Windows [Version 10.0.19043.1288]
(c) Microsoft Corporation. All rights reserved.

C:\Users\biz20>mysqldump
Usage: mysqldump [OPTIONS] database [tables]
OR     mysqldump [OPTIONS] --databases [OPTIONS] DB1 [DB2 DB3...]
OR     mysqldump [OPTIONS] --all-databases [OPTIONS]
For more options, use mysqldump --help

C:\Users\biz20>mysqldump -u root -p example
Enter password: *************
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: example
-- ------------------------------------------------------
-- Server version       8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-20 11:07:51

C:\Users\biz20>mysqldump -u root -p example > example.sql
Enter password: *************

C:\Users\biz20>dir
 Volume in drive C is System
 Volume Serial Number is 03AD-9CAD

 Directory of C:\Users\biz20

10/20/2021  11:15 AM    <DIR>          .
10/20/2021  11:15 AM    <DIR>          ..
04/08/2019  07:13 AM    <DIR>          .android
03/06/2019  08:58 AM    <DIR>          .cache
10/10/2021  11:39 AM    <DIR>          .config
10/19/2021  02:40 PM    <DIR>          .eclipse
01/06/2021  11:56 AM    <DIR>          .FBReader
09/15/2021  01:19 PM    <DIR>          .fontconfig
06/10/2021  12:14 AM    <DIR>          .freemind
10/10/2021  11:39 AM                49 .gitconfig
10/12/2021  08:51 PM    <DIR>          .ssh
06/11/2021  09:35 PM    <DIR>          3D Objects
05/10/2021  02:42 PM                41 advanced_ip_scanner_Aliases.bin
05/10/2021  02:42 PM                15 advanced_ip_scanner_Comments.bin
05/10/2021  02:42 PM               562 advanced_ip_scanner_MAC.bin
07/06/2021  11:53 PM    <DIR>          ARISExpress
12/11/2019  09:45 PM    <DIR>          Brains
12/11/2019  09:32 PM    <DIR>          BrnTmp
09/06/2020  12:57 PM    <DIR>          Contacts
10/11/2021  10:17 AM    <DIR>          Desktop
07/26/2021  02:08 PM    <DIR>          Doctor Web
07/07/2021  04:01 PM    <DIR>          Documents
10/17/2021  09:44 AM    <DIR>          Downloads
10/20/2021  11:16 AM             1,868 example.sql
09/06/2020  12:57 PM    <DIR>          Favorites
02/05/2019  11:28 PM    <DIR>          Intel
09/01/2021  09:37 PM    <DIR>          Links
08/22/2021  11:08 PM    <DIR>          Microsoft
10/16/2020  10:07 AM    <DIR>          Music
10/11/2021  08:05 PM                43 my.cnf
08/11/2021  01:40 PM    <DIR>          OneDrive
07/26/2020  08:41 AM    <DIR>          opera autoupdate
08/27/2021  07:24 AM    <DIR>          Pictures
09/06/2020  12:57 PM    <DIR>          Saved Games
09/06/2020  12:57 PM    <DIR>          Searches
03/27/2020  10:24 PM             9,169 Sti_Trace.log
02/22/2019  05:17 PM    <DIR>          streamwriter
09/06/2020  12:57 PM    <DIR>          Videos
10/20/2021  08:24 AM    <DIR>          YandexDisk
               7 File(s)         11,747 bytes
              32 Dir(s)  32,872,996,864 bytes free

C:\Users\biz20>mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 73
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE sample;
Query OK, 1 row affected (0.01 sec)

mysql> exit
Bye

C:\Users\biz20>mysql -u root -p sample < example.sql
Enter password: *************

C:\Users\biz20>mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 75
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> USE sample;
Database changed
mysql> SHOW TABLES;
+------------------+
| Tables_in_sample |
+------------------+
| users            |
+------------------+
1 row in set (0.00 sec)

mysql>

