------ DataBase creation ------

create database if not exists Social_Media_Platform;
use Social_Media_Platform;

------ Table creation --------

------ Table 1 - User_Profiles ------
create table if not exists User_Profiles(
User_ID int primary key auto_increment,
User_Name varchar(50) null,
Date_of_Birth date null,
Gender Enum('Male','Female'),
Mail_ID varchar(20) unique
);

------ Table 2 - Post_Records ------
create table if not exists Post_Records(
Post_ID int primary key auto_increment,
User_ID int,
Caption text,
Posted_at timestamp default current_timestamp,
foreign key(user_id) references user_profiles(user_id)
);

------ Table 3 - Followers ------
create table if not exists Followers(
Follower_ID int,
Following_ID int,
Follow_date timestamp default current_timestamp,
foreign key(Follower_ID) references user_profiles(user_id),
foreign key(Following_ID) references user_profiles(user_id)
);

------ Inserting the data ----------
------ Values - Table-1 - User_Profiles -------
insert into user_profiles(User_Name, Date_of_Birth, Gender, Mail_ID)
VALUES
('Abinaya','2000-11-02','Female','abinaya@gmail.com'),
('Arun Kumar','1998-05-14','Male','arun.kumar@gmail.com'),
('Priya Sharma','2000-11-22','Female','priya@yahoo.com'),
('Karthik Raj','1997-03-09','Male','karthik@hotmail.com'),
('Neha Gupta','1999-07-18','Female','nehagupta@gmail.com'),
('Rahul Verma','1996-12-02','Male','rahul@yahoo.com'),
('Ananya Iyer','2001-04-27','Female','ananya@hotmail.com'),
('Vijay Singh','1995-09-10','Male','vijaysingh@gmail.com'),
('Sneha Reddy','1998-01-30','Female','sneha@yahoo.com'),
('Ajay Patel','1997-06-15','Male','ajay@hotmail.com'),
('Kavya Nair','2000-08-25','Female','kavya@gmail.com'),
('Rohit Mehta','1996-04-11','Male','rohit@yahoo.com'),
('Pooja Kapoor','1999-02-17','Female','pooja@hotmail.com'),
('Sanjay Das','1997-08-21','Male','sanjay@gmail.com'),
('Divya Nair','2001-03-13','Female','divyanair@yahoo.com'),
('Amit Shah','1995-12-19','Male','amit@hotmail.com'),
('Meera Iyer','1998-10-05','Female','meera@gmail.com'),
('Kiran Kumar','1997-01-28','Male','kirankumar@yahoo.com'),
('Nisha Agarwal','2000-06-16','Female','nisha@hotmail.com'),
('Rakesh Yadav','1996-07-09','Male','rakesh@gmail.com'),
('Swathi Rao','1999-09-14','Female','swathi@yahoo.com'),
('Manoj Verma','1995-11-30','Male','manoj@hotmail.com'),
('Aishwarya Nair','2001-05-18','Female','aishwarya@gmail.com'),
('Deepak Singh','1997-02-24','Male','deepak@yahoo.com'),
('Shreya Gupta','1998-08-07','Female','shreya@hotmail.com'),
('Varun Kapoor','1996-03-12','Male','varun@gmail.com'),
('Lakshmi Priya','1999-04-22','Female','lakshmi@yahoo.com'),
('Naveen Kumar','1995-06-08','Male','naveen@hotmail.com'),
('Ritu Sharma','2000-12-15','Female','ritu@gmail.com'),
('Gaurav Jain','1997-07-03','Male','gaurav@yahoo.com'),
('Sonal Patel','1998-01-19','Female','sonal@hotmail.com'),
('Harish Kumar','1996-09-11','Male','harish@gmail.com'),
('Anjali Mehta','1999-10-23','Female','anjali@yahoo.com'),
('Prakash Rao','1995-05-06','Male','prakash@hotmail.com'),
('Komal Singh','2001-02-27','Female','komal@gmail.com'),
('Arvind Das','1997-11-17','Male','arvind@yahoo.com'),
('Pallavi Kapoor','1998-03-29','Female','pallavi@hotmail.com'),
('Suresh Nair','1996-08-14','Male','suresh@gmail.com'),
('Bhavya Jain','2000-07-21','Female','bhavya@yahoo.com'),
('Ravi Patel','1995-04-09','Male','ravi@hotmail.com'),
('Keerthi Reddy','1999-12-03','Female','keerthi@gmail.com'),
('Ashok Kumar','1997-06-28','Male','ashok@yahoo.com'),
('Nandhini Iyer','1998-02-10','Female','nandhini@hotmail.com'),
('Vikram Singh','1996-10-01','Male','vikram@gmail.com'),
('Riya Shah','2001-01-25','Female','riya@yahoo.com'),
('Tarun Verma','1995-03-20','Male','tarun@hotmail.com'),
('Preethi Nair','1999-08-31','Female','preethi@gmail.com'),
('Dinesh Kumar','1997-09-16','Male','dinesh@yahoo.com'),
('Shruthi Rao','2000-04-05','Female','shruthi@hotmail.com'),
('Karthika Devi','1998-06-12','Female','karthika@gmail.com'),
('Mahesh Yadav','1996-11-07','Male','mahesh@yahoo.com');

select * from User_Profiles;


------ Values - Table-2 - Post_Records -------
insert into Post_Records(Post_ID, User_ID, Caption, Posted_at)
VALUES
(1, 3, 'Enjoying the sunny day!', '2023-12-28'),
(2, 5, 'Morning coffee vibes', '2024-01-12'),
(3, 1, NULL, '2022-07-18'),
(4, 7, 'Weekend trip memories', '2024-02-25'),
(5, 2, 'Learning SQL today', '2021-05-02'),
(6, 4, NULL, '2024-03-10'),
(7, 8, 'Happy moments', '2023-11-14'),
(8, 6, 'Nature is beautiful', '2024-04-20'),
(9, 9, NULL, '2020-08-28'),
(10, 10, 'Workout done', '2024-05-03'),
(11, 11, 'Coding night', '2022-03-08'),
(12, 12, NULL, '2024-06-15'),
(13, 13, 'Road trip fun', '2023-09-22'),
(14, 14, 'Trying new recipes', '2024-07-30'),
(15, 15, NULL, '2021-01-05'),
(16, 16, 'Music and chill', '2024-08-12'),
(17, 17, 'Productive day', '2023-04-18'),
(18, 18, NULL, '2024-09-25'),
(19, 19, 'Good vibes only', '2022-10-02'),
(20, 20, 'Sunset view', '2024-10-10'),
(21, 21, NULL, '2023-05-17'),
(22, 22, 'Reading a new book', '2024-11-23'),
(23, 23, 'Exploring the city', '2021-12-29'),
(24, 24, NULL, '2024-12-04'),
(25, 25, 'Weekend relaxation', '2020-06-12'),
(26, 26, 'SQL practice time', '2024-03-18'),
(27, 27, NULL, '2023-07-25'),
(28, 28, 'Evening walk', '2024-04-03'),
(29, 29, 'Learning Power BI', '2022-02-10'),
(30, 30, NULL, '2024-05-17'),
(31, 31, 'Festival celebrations', '2023-08-24'),
(32, 32, 'Late night coding', '2024-06-01'),
(33, 33, NULL, '2021-09-08'),
(34, 34, 'Coffee break', '2024-07-14'),
(35, 35, 'Travel diaries', '2022-11-21'),
(36, 36, NULL, '2024-08-29'),
(37, 37, 'Photography hobby', '2023-03-05'),
(38, 38, 'Working on projects', '2024-09-12'),
(39, 39, NULL, '2020-12-18'),
(40, 40, 'Nature walk', '2024-10-26'),
(41, 41, 'Movie night', '2022-01-03'),
(42, 42, NULL, '2024-11-11'),
(43, 43, 'Happy weekend', '2023-06-18'),
(44, 44, 'Learning new skills', '2024-12-26'),
(45, 45, NULL, '2021-04-04'),
(46, 46, 'Festival vibes', '2024-01-12'),
(47, 47, 'Evening sunset', '2022-09-20'),
(48, 48, NULL, '2024-02-28'),
(49, 49, 'Year ending memories', '2023-12-10'),
(50, 50, 'Looking forward to 2025', '2024-03-20');

select * from Post_Records;

------ Values - Table-3 - Followers -------
insert into Followers(Follower_ID, Following_ID, Follow_date)
VALUES
(1,2,'2023-05-10'),
(3,5,'2024-02-14'),
(4,1,'2022-11-03'),
(6,7,'2024-06-21'),
(8,3,'2021-08-18'),
(9,10,'2023-09-12'),
(11,4,'2024-01-05'),
(12,8,'2020-07-30'),
(13,6,'2023-03-25'),
(14,9,'2024-10-11'),
(15,11,'2022-04-19'),
(16,12,'2023-12-01'),
(17,13,'2024-07-16'),
(18,14,'2021-01-22'),
(19,15,'2024-05-28'),
(20,16,'2023-02-14'),
(21,17,'2024-08-09'),
(22,18,'2022-09-17'),
(23,19,'2023-11-04'),
(24,20,'2024-03-13');

insert into Followers(Follower_ID, Following_ID)
VALUES
(25,21),
(26,22),
(27,23),
(28,24),
(29,25),
(30,26),
(31,27),
(32,28),
(33,29),
(34,30),
(35,31),
(36,32),
(37,33),
(38,34),
(39,35),
(40,36),
(41,37),
(42,38),
(43,39),
(44,40),
(45,41),
(46,42),
(47,43),
(48,44),
(49,45),
(50,46);

/*---------------------------------------------------------------------------------------------------------------------------
 DISTINCT, WHERE, IN, BETWEEN, NULL checks 
 ---------------------------------------------------------------------------------------------------------------------------*/

--------- Retrieve all users whose username starts with “a” -------------
select * 
from user_profiles
where user_name 
like 'a%';

-------- Get posts posted BETWEEN '2024-01-01' AND '2024-12-31' ---------
select * 
from post_records 
where Posted_at 
BETWEEN '2024-01-01' AND '2024-12-31';

-------- Find posts that have NULL captions ------------------------------
select * from post_records 
where caption is null;

-------- Find users whose email domain is in: (@gmail.com, @hotmail.com, @yahoo.com) --------
select * 
from user_profiles
where substring_index(Mail_ID,'@',-1)
in ('gmail.com', 'hotmail.com', 'yahoo.com');

/*---------------------------------------------------------------------------------------------------------------------------
 Order by, Group by, Limit, Having 
 ---------------------------------------------------------------------------------------------------------------------------*/

Alter table post_records 
add column No_of_post int;

UPDATE post_records
SET No_of_post = CASE Post_ID
    WHEN 1 THEN 2
    WHEN 2 THEN 1
    WHEN 3 THEN 3
    WHEN 4 THEN 2
    WHEN 5 THEN 1
    WHEN 6 THEN 4
    WHEN 7 THEN 2
    WHEN 8 THEN 3
    WHEN 9 THEN 1
    WHEN 10 THEN 2
    WHEN 11 THEN 5
    WHEN 12 THEN 1
    WHEN 13 THEN 2
    WHEN 14 THEN 3
    WHEN 15 THEN 1
    WHEN 16 THEN 4
    WHEN 17 THEN 2
    WHEN 18 THEN 1
    WHEN 19 THEN 3
    WHEN 20 THEN 2
    WHEN 21 THEN 1
    WHEN 22 THEN 4
    WHEN 23 THEN 2
    WHEN 24 THEN 1
    WHEN 25 THEN 3
    WHEN 26 THEN 2
    WHEN 27 THEN 1
    WHEN 28 THEN 3
    WHEN 29 THEN 2
    WHEN 30 THEN 1
    WHEN 31 THEN 4
    WHEN 32 THEN 2
    WHEN 33 THEN 1
    WHEN 34 THEN 3
    WHEN 35 THEN 2
    WHEN 36 THEN 1
    WHEN 37 THEN 4
    WHEN 38 THEN 2
    WHEN 39 THEN 1
    WHEN 40 THEN 3
    WHEN 41 THEN 2
    WHEN 42 THEN 1
    WHEN 43 THEN 3
    WHEN 44 THEN 2
    WHEN 45 THEN 1
    WHEN 46 THEN 4
    WHEN 47 THEN 2
    WHEN 48 THEN 1
    WHEN 49 THEN 3
    WHEN 50 THEN 2
END
WHERE Post_ID BETWEEN 1 AND 50;

select * from post_records;

----- Top 5 users --------------------------------
select User_id from post_records
order by no_of_post desc
limit 5;

----- Group posts by DATE(posted_at) and return: date, total posts Only show days with more than 10 posts (HAVING). -------
update post_records
set no_of_post = 11
where post_id = 11;

update post_records
set no_of_post = 12
where post_id=12;

select date(posted_at), count(*) as Total_Posts
from post_records
group by date(posted_at)
having count(*)>10;

/*---------------------------------------------------------------------------------------------------------------------------
JOINS, UNION, BUILT-IN FUNCTIONS
 ---------------------------------------------------------------------------------------------------------------------------*/


-- Comments table --

create table if not exists comments(
		Comment_id int primary key auto_increment,
        Post_id int not null,
        User_id int not null,
        Comment_text text,
        Commented_at Timestamp default current_timestamp,
        foreign key(post_id) references post_records(post_id),
        foreign key(user_id) references user_profiles(user_id)
        );

-- Likes table --

create table if not exists likes(
		Like_id int primary key auto_increment,
        Post_id int not null,
        user_id int not null,
        liked_at Timestamp default current_timestamp,
        foreign key(post_id) references post_records(post_id),
        foreign key(user_id) references user_profiles(user_id)
		);

-- Inserting values to comments and likes table --

INSERT INTO comments (Post_id, User_id, Comment_text, Commented_at) VALUES
(1,1,'Nice post!','2024-01-01 10:15:30'),
(2,2,'Great!','2024-01-02 11:20:15'),
(3,3,'Awesome content','2024-01-03 09:45:10'),
(4,4,'Loved it','2024-01-04 14:10:05'),
(5,5,'Very helpful','2024-01-05 16:30:25'),
(6,6,'Interesting','2024-01-06 08:25:40'),
(7,7,'Cool post','2024-01-07 12:10:55'),
(8,8,'Amazing','2024-01-08 18:05:20'),
(9,9,'Good job','2024-01-09 07:50:35'),
(10,10,'Well done','2024-01-10 20:15:45'),
(11,11,'Superb','2024-01-11 13:40:10'),
(12,12,'Nice explanation','2024-01-12 17:25:30'),
(13,13,'Very clear','2024-01-13 10:55:15'),
(14,14,'Helpful info','2024-01-14 19:05:50'),
(15,15,'Thanks for sharing','2024-01-15 15:20:05'),
(16,16,'Great effort','2024-01-16 11:35:25'),
(17,17,'Loved this','2024-01-17 09:10:40'),
(18,18,'Fantastic','2024-01-18 21:45:55'),
(19,19,'Keep it up','2024-01-19 06:30:15'),
(20,20,'Excellent','2024-01-20 14:50:35'),
(21,21,'Nice details','2024-01-21 16:05:10'),
(22,22,'Very nice','2024-01-22 12:20:45'),
(23,23,'Good info','2024-01-23 08:40:25'),
(24,24,'Useful','2024-01-24 18:55:05'),
(25,25,'Brilliant','2024-01-25 20:10:30'),
(26,26,'Good read','2024-01-26 07:25:15'),
(27,27,'Perfect','2024-01-27 11:45:50'),
(28,28,'Nice work','2024-01-28 15:30:20'),
(29,29,'Super','2024-01-29 09:15:35'),
(30,30,'Very good','2024-01-30 22:05:10'),
(31,31,'Informative','2024-01-31 13:55:25'),
(32,32,'Loved reading','2024-02-01 17:10:40'),
(33,33,'Great post','2024-02-02 10:25:55'),
(34,34,'Nice content','2024-02-03 19:40:15'),
(35,35,'Helpful','2024-02-04 14:20:35'),
(36,36,'Amazing work','2024-02-05 08:50:05'),
(37,37,'Good one','2024-02-06 12:35:25'),
(38,38,'Interesting post','2024-02-07 18:15:40'),
(39,39,'Well written','2024-02-08 07:05:55'),
(40,40,'Nice effort','2024-02-09 21:30:15'),
(41,41,'Clear explanation','2024-02-10 16:45:30'),
(42,42,'Very useful','2024-02-11 11:20:10'),
(43,43,'Loved it','2024-02-12 09:55:25'),
(44,44,'Nice sharing','2024-02-13 20:10:45'),
(45,45,'Great content','2024-02-14 13:35:05'),
(46,46,'Awesome work','2024-02-15 17:50:20'),
(47,47,'Very nice post','2024-02-16 10:15:35'),
(48,48,'Helpful info','2024-02-17 14:40:50'),
(49,49,'Good explanation','2024-02-18 08:25:10'),
(50,50,'Excellent post','2024-02-19 19:05:30');

INSERT INTO likes (Post_id, user_id, liked_at) VALUES
(1,2,'2024-01-01 10:15:30'),
(2,3,'2024-01-02 11:20:15'),
(3,4,'2024-01-03 09:45:10'),
(4,5,'2024-01-04 14:10:05'),
(5,6,'2024-01-05 16:30:25'),
(6,7,'2024-01-06 08:25:40'),
(7,8,'2024-01-07 12:10:55'),
(8,9,'2024-01-08 18:05:20'),
(9,10,'2024-01-09 07:50:35'),
(10,11,'2024-01-10 20:15:45'),
(11,12,'2024-01-11 13:40:10'),
(12,13,'2024-01-12 17:25:30'),
(13,14,'2024-01-13 10:55:15'),
(14,15,'2024-01-14 19:05:50'),
(15,16,'2024-01-15 15:20:05'),
(16,17,'2024-01-16 11:35:25'),
(17,18,'2024-01-17 09:10:40'),
(18,19,'2024-01-18 21:45:55'),
(19,20,'2024-01-19 06:30:15'),
(20,21,'2024-01-20 14:50:35'),
(21,22,'2024-01-21 16:05:10'),
(22,23,'2024-01-22 12:20:45'),
(23,24,'2024-01-23 08:40:25'),
(24,25,'2024-01-24 18:55:05'),
(25,26,'2024-01-25 20:10:30'),
(26,27,'2024-01-26 07:25:15'),
(27,28,'2024-01-27 11:45:50'),
(28,29,'2024-01-28 15:30:20'),
(29,30,'2024-01-29 09:15:35'),
(30,31,'2024-01-30 22:05:10'),
(31,32,'2024-01-31 13:55:25'),
(32,33,'2024-02-01 17:10:40'),
(33,34,'2024-02-02 10:25:55'),
(34,35,'2024-02-03 19:40:15'),
(35,36,'2024-02-04 14:20:35'),
(36,37,'2024-02-05 08:50:05'),
(37,38,'2024-02-06 12:35:25'),
(38,39,'2024-02-07 18:15:40'),
(39,40,'2024-02-08 07:05:55'),
(40,41,'2024-02-09 21:30:15'),
(41,42,'2024-02-10 16:45:30'),
(42,43,'2024-02-11 11:20:10'),
(43,44,'2024-02-12 09:55:25'),
(44,45,'2024-02-13 20:10:45'),
(45,46,'2024-02-14 13:35:05'),
(46,47,'2024-02-15 17:50:20'),
(47,48,'2024-02-16 10:15:35'),
(48,49,'2024-02-17 14:40:50'),
(49,50,'2024-02-18 08:25:10'),
(50,1,'2024-02-19 19:05:30');

INSERT INTO comments (Post_id, User_id, Comment_text, Commented_at) VALUES
(1,1,'Nice post!','2024-01-01 10:15:30'),
(1,2,'Great!','2024-01-01 11:20:15'),
(1,3,'Awesome content','2024-01-01 12:10:10'),
(2,4,'Loved it','2024-01-02 14:10:05'),
(2,5,'Very helpful','2024-01-02 16:30:25'),
(3,6,'Interesting','2024-01-03 08:25:40'),
(3,7,'Cool post','2024-01-03 12:10:55'),
(3,8,'Amazing','2024-01-03 18:05:20'),
(4,9,'Good job','2024-01-04 07:50:35'),
(4,10,'Well done','2024-01-04 20:15:45'),
(5,11,'Superb','2024-01-05 13:40:10'),
(5,12,'Nice explanation','2024-01-05 17:25:30'),
(5,13,'Very clear','2024-01-05 19:05:50'),
(6,14,'Helpful info','2024-01-06 15:20:05'),
(6,15,'Thanks for sharing','2024-01-06 11:35:25');

INSERT INTO likes (Post_id, user_id, liked_at) VALUES 
(1,1,'2024-01-01 10:15:30'),
(1,2,'2024-01-01 11:20:15'),
(1,3,'2024-01-01 12:05:10'),
(2,4,'2024-01-02 09:10:25'),
(2,5,'2024-01-02 10:45:50'),
(3,6,'2024-01-03 08:30:15'),
(3,7,'2024-01-03 09:40:35'),
(3,8,'2024-01-03 11:55:20'),
(4,9,'2024-01-04 14:20:10'),
(4,10,'2024-01-04 15:35:45'),
(5,11,'2024-01-05 12:10:05'),
(5,12,'2024-01-05 13:25:30'),
(5,13,'2024-01-05 14:40:50'),
(6,14,'2024-01-06 16:05:15'),
(6,15,'2024-01-06 17:20:40'),
(7,16,'2024-01-07 18:35:25'),
(7,17,'2024-01-07 19:50:10'),
(7,18,'2024-01-07 21:05:55'),
(8,19,'2024-01-08 08:15:30'),
(8,20,'2024-01-08 09:30:45'),
(9,21,'2024-01-09 10:45:20'),
(9,22,'2024-01-09 11:55:35'),
(10,23,'2024-01-10 13:10:50'),
(10,24,'2024-01-10 14:25:15');


CREATE TABLE hashtags (
    post_id INT,
    hashtag VARCHAR(100)
);

INSERT INTO hashtags (post_id, hashtag) VALUES
(1,'#travel'),(1,'#fun'),
(2,'#food'),(2,'#yummy'),
(3,'#travel'),(3,'#adventure'),
(4,'#fitness'),(4,'#gym'),
(5,'#food'),(5,'#delicious'),
(6,'#travel'),(6,'#nature'),
(7,'#music'),(7,'#vibes'),
(8,'#fitness'),(8,'#health'),
(9,'#travel'),(9,'#explore'),
(10,'#food'),(10,'#tasty'),
(11,'#fashion'),(11,'#style'),
(12,'#travel'),(12,'#vacation'),
(13,'#fitness'),(13,'#workout'),
(14,'#food'),(14,'#snacks'),
(15,'#travel'),(15,'#wanderlust'),
(16,'#music'),(16,'#beats'),
(17,'#fitness'),(17,'#strong'),
(18,'#food'),(18,'#chef'),
(19,'#travel'),(19,'#trip'),
(20,'#fashion'),(20,'#outfit'),
(21,'#travel'),(21,'#journey'),
(22,'#fitness'),(22,'#training'),
(23,'#food'),(23,'#meal'),
(24,'#music'),(24,'#song'),
(25,'#travel'),(25,'#holiday'),
(26,'#fitness'),(26,'#fitlife'),
(27,'#food'),(27,'#recipes'),
(28,'#travel'),(28,'#exploring'),
(29,'#fashion'),(29,'#trend'),
(30,'#music'),(30,'#live'),
(31,'#travel'),(31,'#nature'),
(32,'#fitness'),(32,'#gym'),
(33,'#food'),(33,'#yummy'),
(34,'#travel'),(34,'#adventure'),
(35,'#music'),(35,'#vibes'),
(36,'#fitness'),(36,'#health'),
(37,'#food'),(37,'#delicious'),
(38,'#travel'),(38,'#explore'),
(39,'#fashion'),(39,'#style'),
(40,'#music'),(40,'#beats'),
(41,'#travel'),(41,'#trip'),
(42,'#fitness'),(42,'#workout'),
(43,'#food'),(43,'#snacks'),
(44,'#travel'),(44,'#vacation'),
(45,'#music'),(45,'#song'),
(46,'#fitness'),(46,'#strong'),
(47,'#food'),(47,'#chef'),
(48,'#travel'),(48,'#journey'),
(49,'#fashion'),(49,'#outfit'),
(50,'#music'),(50,'#live');

-- Join Report -- 

-- Display:post_id, username, caption, total likes, total comments.
select p.post_id, u.User_name, p.Caption, count(l.like_id) Total_Likes, count(c.comment_id) Total_Comments
from post_records p
join user_profiles u on p.user_id = u.user_id
join likes l on l.post_id = p.post_id
join comments c on c.post_id = p.post_id
group by p.post_id;


-- Built-in Functions --

-- Show usernames in UPPER case. 
select upper(user_name) User_Names from user_profiles;

-- Extract month name from posted_at.
select monthname(posted_at) Posted_Month from post_records;

-- Return the length of each caption.
select length(caption) Caption_Length from post_records
where caption is not null;



-- Union --

-- Combine list of users who commented OR liked.
select u.user_name from user_profiles u 
join comments c on c.user_id = u.user_id 
Union
select u.user_name from user_profiles u 
join likes l on l.user_id = u.user_id;

/*---------------------------------------------------------------------------------------------------------------------------
USER DEFINED FUNCTION
 ---------------------------------------------------------------------------------------------------------------------------*/

-- Create a function: GetUserEngagement(user_id) and Returns total likes + comments made by the user.

DELIMITER //

CREATE FUNCTION GetUserEngagement(p_user_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_likes INT ;
    DECLARE total_comments INT ;
    
    SELECT COUNT(*) 
    INTO total_likes
    FROM likes
    WHERE user_id = p_user_id;
    
    SELECT COUNT(*) 
    INTO total_comments
    FROM comments
    WHERE user_id = p_user_id;

    RETURN total_likes + total_comments;
    
END //

DELIMITER ;
    
SELECT GetUserEngagement(1) User_Engagement;

/*---------------------------------------------------------------------------------------------------------------------------
SUBQUERY
 ---------------------------------------------------------------------------------------------------------------------------*/

-- Find users who have more followers than the average follower count.

SELECT u.user_name
FROM user_profiles u
JOIN (
    SELECT following_id, COUNT(follower_id) AS cnt
    FROM followers
    GROUP BY following_id
    HAVING COUNT(follower_id) >= (
        SELECT AVG(cnt)
        FROM (
            SELECT COUNT(follower_id) AS cnt
            FROM followers
            GROUP BY following_id
        ) t
    )
) f ON u.user_id = f.following_id;


/*---------------------------------------------------------------------------------------------------------------------------
STORED PROCEDURE
 ---------------------------------------------------------------------------------------------------------------------------*/
-- Stored procedure to retrieve all posts for a given username.

delimiter //
create procedure posts(in p_user_name varchar(50))
deterministic
begin
	select p.post_id,p.caption,p.posted_at
    from post_records p
    join user_profiles u 
		on u.user_id=p.user_id
	WHERE u.user_name = p_user_name;
end //
delimiter ;

call posts('Rahul Verma');
    

/*---------------------------------------------------------------------------------------------------------------------------
VIEWS
 ---------------------------------------------------------------------------------------------------------------------------*/
-- Create a view post_summary showing:post_id,username,caption,total likes,total comments:
 
 Create view post_summary as 
	select p.post_id,u.user_name,p.caption,count(l.like_id) as total_likes,count(c.comment_id) as total_comments
    from post_records p
    join user_profiles u on u.user_id=p.user_id
    join comments c on c.post_id=p.post_id
    join likes l on l.post_id=p.post_id
    group by p.post_id;
    
select * from post_summary;

 /*---------------------------------------------------------------------------------------------------------------------------
TRIGGER
 ---------------------------------------------------------------------------------------------------------------------------*/
-- Trigger on likes table: When a user likes a post, insert a row into a new table: notifications (user_id, message, created_at)

CREATE TABLE notifications (
    notification_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    message VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    foreign key(user_id) references user_profiles(user_id)
);

DELIMITER //

CREATE TRIGGER like_notification_trigger
AFTER INSERT ON likes
FOR EACH ROW
BEGIN
    INSERT INTO notifications (user_id, message,created_at)
    VALUES (
        NEW.user_id,CONCAT('User', NEW.user_id, ' liked post', NEW.post_id),created_at
		);
END //

DELIMITER ;
    
INSERT INTO likes (post_id, user_id)
VALUES (10, 5);

select * from notifications;

/*---------------------------------------------------------------------------------------------------------------------------
Final analysis
 ---------------------------------------------------------------------------------------------------------------------------*/
 
-- Top influencers (users with highest total engagement)

select u.user_id, u.user_name Top_Influencers,count(distinct l.like_id)+count(distinct c.comment_id) as Total_engagement
from user_profiles u
left join post_records p on u.user_id=p.user_id
left join likes l on l.post_id=p.post_id
left join comments c on c.post_id=p.post_id
group by u.user_id
order by total_engagement desc;


-- Virality report (posts with unusually high engagement)

select p.post_id,count(distinct l.like_id)+count(distinct c.comment_id) as Engagement
from post_records p
left join likes l on l.post_id=p.post_id
left join comments c on c.post_id=p.post_id
group by p.post_id
having engagement > (
	select avg(total_engagement) 
	from (
        select count(*) as total_engagement 
        from likes 
        group by post_id
        ) t
);

-- User activity timeline (daily/weekly posting patterns)

select u.user_name, date(p.posted_at) as post_date, count(p.post_id) as Total_posts
from post_records p
left join user_profiles u on u.user_id=p.user_id
group by u.user_name, date(p.posted_at)
order by post_date;


-- Follower growth (who gained the most followers recently)

select following_id as user_id, count(*) as New_followers
from followers
where follow_date>=curdate() - interval 30 day
group by following_id
order by new_followers desc;


-- Trending hashtags (most used hashtags in last 30 days)

SELECT hashtag, COUNT(*) AS usage_count
FROM hashtags h
JOIN post_records p ON p.post_id = h.post_id
WHERE p.posted_at <= CURDATE() - INTERVAL 30 DAY
GROUP BY hashtag
ORDER BY usage_count DESC;


