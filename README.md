# 📊 Social Media Platform Database Design and Analysis
## ℹ️ Description:
* This project focuses on designing and implementing a relational database system that simulates a social media platform using SQL.
* It manages user data, posts, interactions, and generates analytical insights.

## 📖 Table of Contents:
>* Project Overview
>* Database Description
>* Database Schema
>* Tools and Technologies
>* Key Insights
>* Recommendations
>* How to Use

## 📘Project Overview:
* The project demonstrates how a social media platform operates by analyzing: 

>* User profiles and activity
>* Post creation and engagement
>* Likes, comments, and follower relationships
>* Hashtag usage and trends
>* User interaction patterns

* The system helps in understanding engagement behavior, identifying influencers, and analyzing content performance.

## 🗂 Data Source:
* The database represents a simplified social media application where users can:

>* Create posts
>* Like and comment on posts
>* Follow other users
>* Use hashtags

## 🏗 Database Schema:
🧑 **User_Profiles**
>* User_ID (Primary Key) – Unique user identifier
>* User_Name – Name of the user
>* Date_of_Birth – User’s date of birth
>* Gender – Male/Female
>* Mail_ID – Unique email address

📝  **Post_Records**
>* Post_ID (Primary Key) – Unique post ID
>* User_ID (Foreign Key) – References User_Profiles
>* Caption – Post content
>* Posted_at – Timestamp

👥 **Followers**
>* Follower_ID – User who follows
>* Following_ID – User being followed
>* Follow_date – Timestamp

💬 **Comments**
>* Comment_ID (Primary Key)
>* Post_ID – Related post
>* User_ID – Comment author
>* Comment_text – Comment content
>* Commented_at – Timestamp

❤️ **Likes**
>* Like_ID (Primary Key)
>* Post_ID – Related post
>* User_ID – User who liked
>* Liked_at – Timestamp

#️⃣ **Hashtags**
>* Post_ID – Related post
>* Hashtag – Hashtag text

🔔 **Notifications**
>* Notification_ID (Primary Key)
>* User_ID – User receiving notification
>* Message – Notification text
>* Created_at – Timestamp

## 🛠 Tools & Technologies:

The following tools and technologies were used in this project:

**SQL (MySQL)**
* Database design and implementation
* Writing queries (DDL, DML)
* Joins, subqueries, and aggregations
  
**Relational Database Design**
* Table creation with primary and foreign keys
* Schema design and normalization
  
**Advanced SQL Concepts**
* Stored Procedures
* User-Defined Functions
* Views and Triggers
  
**Data Analysis**
* Data extraction and transformation
* Generating insights using SQL queries
  
## 🔍 Key Insights

* A small number of users generate higher engagement, identifying potential influencers.
* Only a subset of posts receives high interaction, showing variation in content performance.
* User activity varies across different dates, indicating peak and low usage periods.
* Some users show recent follower growth, suggesting emerging influencers.
* Frequently used hashtags highlight trending topics.
* Engagement is unevenly distributed across posts.

## 💡Recommendations

Based on the analysis, the following improvements can be suggested:

* Identify and promote high-engagement users (influencers) to increase platform activity.
* Improve content visibility strategies to boost engagement on low-performing posts.
* Encourage consistent user activity through notifications and engagement features.
* Enhance hashtag usage by promoting trending and relevant tags.
* Implement personalized recommendations based on user behavior and interactions.
* Monitor follower growth patterns to support emerging influencers.
* Optimize engagement features (likes, comments) to improve user interaction.
  
## ▶️ How to Use

* Import the SQL scripts into MySQL or any relational database system
* Execute schema scripts to create tables
* Insert sample data
* Run queries, procedures, and views for analysis
  
## 👩‍💻 Author
 > Lavanya Madhan Raj

