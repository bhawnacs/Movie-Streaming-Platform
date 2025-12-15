# 🎬 Movie Streaming Platform | Analytics Report

A complete **end-to-end data analytics project** built using **MySQL** and **Power BI**, inspired by real-world OTT platforms like **Netflix**. This project covers database design, SQL analytics, views, and an interactive dashboard for insights.

---

## 🚀 Project Overview

The goal of this project is to analyze user behavior, movie performance, and watch trends on a movie streaming platform. The project demonstrates strong fundamentals in:

* Relational database design
* SQL querying & views
* Data modeling
* Business analytics
* Data visualization using Power BI

---

## 🛠 Tech Stack

* **Database:** MySQL
* **Visualization:** Power BI
* **Language:** SQL
* **Theme:** Netflix-inspired (Red & Black)
* **Version Control:** Git & GitHub

---

## 🗂 Database Schema

### Tables Used:

* **Users** (`user_id`, name, email, join_date, country)
* **Subscriptions** (`sub_id`, user_id, plan_type, start_date, end_date)
* **Movies** (`movie_id`, title, release_year, genre, duration_min, rating)
* **Actors** (`actor_id`, actor_name, birth_year, country)
* **Movie_Actors** (`movie_id`, actor_id)
* **Watch_History** (`history_id`, user_id, movie_id, watch_date, watch_time_min, rating_given)

All tables are connected using proper **primary keys and foreign keys**.

---

## 📊 SQL Views Created

The project uses SQL **views** to simplify analytics and enable easy Power BI integration:

* `movies_with_avg_rating`
* `recent_movies`
* `user_total_watch_time`
* `movie_actor_details`
* `full_watch_history`

These views act as clean, analysis-ready datasets for visualization.

---

## 📈 Power BI Dashboard Features

### 🔴 Netflix-Style Dashboard Includes:

* **KPI Cards**

  * Total Users
  * Total Movies
  * Total Watch Time
  * Average Rating

* **Visuals**

  * Watch Time Trend (Line Chart)
  * Watch Time by Genre (Bar Chart)
  * Total Watched Movies
  * Movie & Actor Details Table

* **Interactive Filters (Slicers)**

  * Date Range
  * Genre
  * Movie Name
  * Actor Name
  * User Name
  * Release Year
  * Subscription Type

* **Custom JSON Theme** (Netflix Red & Black)

---

## 🎨 Dashboard Design

* Dark background (#141414)
* Netflix Red highlights (#E50914)
* Clean typography
* Professional alignment & spacing
* Interactive and user-friendly

---

## 📁 Repository Structure

```text
Movie-Streaming-Platform-Analytics/
│
├── sql/
│   ├── table_creation.sql
│   ├── insert_data.sql
│   ├── views.sql
│   └── queries.sql
│
├── powerbi/
│   ├── Movie_Streaming_Analytics.pbix
│   └── netflix_theme.json
│
└── README.md
```

---

## ✅ Key Learnings

* Designing normalized relational databases
* Writing complex SQL queries
* Using SQL views for analytics
* Building professional dashboards
* Data storytelling using visuals

---

## 📌 How to Use

1. Run SQL scripts in MySQL to create tables and views
2. Connect Power BI to MySQL
3. Load SQL views
4. Apply the JSON theme
5. Explore the interactive dashboard

---

## 🙌 Author

**Bhawna**

---

⭐ *If you like this project, don’t forget to star the repository!*
