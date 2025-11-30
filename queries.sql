-- 1. Movies watched by a user
SELECT u.name, m.title, w.watch_date
FROM Watch_history w
JOIN Users u ON w.user_id = u.user_id
JOIN Movies m ON w.movie_id = m.movie_id
WHERE u.user_id = 1;

-- 2. Total watch time
SELECT u.name, SUM(w.watch_time_min) AS total_minutes
FROM Users u
JOIN Watch_history w ON u.user_id = w.user_id
GROUP BY u.name;

-- 3. Highest rated movie by each user
SELECT u.user_id, u.name, m.title, w.rating_given
FROM Users u
JOIN Watch_history w ON u.user_id = w.user_id
JOIN Movies m ON w.movie_id = m.movie_id
WHERE w.rating_given = (
    SELECT MAX(rating_given)
    FROM Watch_history
    WHERE user_id = u.user_id
);

-- 4. Most active users
SELECT u.user_id, u.name,
       COUNT(w.history_id) AS movies_watched
FROM Users u
LEFT JOIN Watch_history w ON u.user_id = w.user_id
GROUP BY u.user_id, u.name
ORDER BY movies_watched DESC;

-- 5. List all movies with their actors
SELECT m.title, a.actor_name
FROM Movies m
JOIN Movie_actors ma ON m.movie_id = ma.movie_id
JOIN Actors a ON ma.actor_id = a.actor_id
ORDER BY m.title;

-- 6. Top-rated movies
SELECT m.movie_id, m.title,
       AVG(w.rating_given) AS avg_rating
FROM Movies m
JOIN Watch_history w ON m.movie_id = w.movie_id
GROUP BY m.movie_id, m.title
ORDER BY avg_rating DESC;

-- 7. Most watched movies
SELECT m.title, COUNT(w.history_id) AS views
FROM Movies m
JOIN Watch_history w ON m.movie_id = w.movie_id
GROUP BY m.movie_id, m.title
ORDER BY views DESC;

-- 8. Movies by genre
SELECT *
FROM Movies
WHERE genre = 'Action';

-- 9. Movies of a particular actor
SELECT a.actor_name, m.title, m.release_year
FROM Actors a
JOIN Movie_actors ma ON a.actor_id = ma.actor_id
JOIN Movies m ON ma.movie_id = m.movie_id
WHERE a.actor_id = 4;

-- 10. Top actors (based on number of movies acted in)
SELECT a.actor_id, a.actor_name,
       COUNT(ma.movie_id) AS total_movies
FROM Actors a
JOIN Movie_actors ma ON a.actor_id = ma.actor_id
GROUP BY a.actor_id, a.actor_name
ORDER BY total_movies DESC;

-- 11. Most binge-watched users (highest total watch time)
SELECT u.user_id, u.name, SUM(w.watch_time_min) AS minutes
FROM Users u
JOIN Watch_history w ON u.user_id = w.user_id
GROUP BY u.user_id, u.name
ORDER BY minutes DESC;

-- 12. Genre popularity (based on views)
SELECT m.genre, COUNT(w.history_id) AS views
FROM Movies m
JOIN Watch_history w ON m.movie_id = w.movie_id
GROUP BY m.genre
ORDER BY views DESC;





