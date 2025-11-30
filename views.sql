-- 1. Movies with average rating
CREATE VIEW movies_with_avg_rating AS
SELECT 
    m.movie_id,
    m.title,
    m.genre,
    AVG(w.rating_given) AS avg_rating,
    COUNT(w.history_id) AS total_ratings
FROM movies m
LEFT JOIN watch_history w ON m.movie_id = w.movie_id
GROUP BY m.movie_id, m.title, m.genre;

SELECT * FROM movies_with_avg_rating;


-- 2. Users with total watch time
CREATE VIEW user_total_watch_time AS
SELECT 
    u.user_id,
    u.name,
    SUM(w.watch_time_min) AS total_watch_minutes
FROM users u
LEFT JOIN watch_history w ON u.user_id = w.user_id
GROUP BY u.user_id, u.name;

SELECT * FROM user_total_watch_time;

-- 3. Movies & their actors
CREATE VIEW movie_actor_details AS
SELECT 
    m.movie_id,
    m.title,
    a.actor_name,
    a.country AS actor_country
FROM movies m
JOIN movie_actors ma ON m.movie_id = ma.movie_id
JOIN actors a ON ma.actor_id = a.actor_id;

SELECT * FROM movie_actor_details;

-- 4. Users full watch history
CREATE VIEW full_watch_history AS
SELECT 
    u.user_id,
    u.name,
    m.title,
    m.genre,
    w.watch_date,
    w.watch_time_min,
    w.rating_given
FROM users u
JOIN watch_history w ON u.user_id = w.user_id
JOIN movies m ON w.movie_id = m.movie_id;

SELECT * FROM full_watch_history;

-- 5. Recently released movies (last 5 years)
CREATE VIEW recent_movies AS
SELECT *
FROM movies
WHERE release_year >= YEAR(CURDATE()) - 5;

SELECT * FROM recent_movies;
