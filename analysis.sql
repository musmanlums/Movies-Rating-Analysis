--'1. Find the titles of all movies directed by Steven Spielberg..

Select *
FROM Movie
WHERE director = 'Steven Spielberg';

-- 2. Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order.

SELECT title
FROM Movie
WHERE mID IN (SELECT mID
	      FROM Rating
	      WHERE (stars = 4 OR stars = 5));

-- 3. Find the titles of all movies that have no ratings

SELECT title
FROM Movie
WHERE mID NOT IN (SELECT mID
		  FROM Rating);

-- 4. For each movie that has at least one rating, find the highest number of stars that movie received. Return the movie title and number of stars. Sort by movie title.

SELECT m.title, max(stars)
FROM Movie m
INNER JOIN Rating r
	  USING(mID)
GROUP BY m.title
ORDER BY m.title;

-- 5. For each movie that has at least one rating, find the movie title and total number of stars, the highest star and the person who gave highest star.

SELECT
	m.title,
	sum(stars) AS 'Total Stars',
	max(stars) AS 'Highest Stars',
	r2.name
FROM Movie m
INNER JOIN Rating r1
	USING(mID)
INNER JOIN Reviewer r2
	USING(rID)
GROUP BY m.title;

-- 6. For all cases where the same reviewer rated the same movie twice and gave it a higher rating the second time, return the reviewer's name and the title of the movie.

SELECT name, title
FROM Movie
INNER JOIN Rating r1
	USING(mID)
INNER JOIN Rating r2
	USIND(rID)
INNER JOIN Reviewer r3
	USING(rID)
WHERE r1.mID = r2.mID AND r1.ratingDate < r2.ratingDate
	AND r1.stars < r2.stars;

-- 7. For each movie, return the title and the 'rating spread', that is, the difference between highest and lowest ratings given to that movie. Sort by rating spread from highest to lowest, then by movie title.

SELECT title,
	(MAX(stars) - MIN(stars)) AS 'Spread of Rating'
FROM Movie
INNER JOIN Rating
	USING(mID)
GROUP BY mID
ORDER BY 'Spread of Rating' DESC, title;

-- 8. Find the names of reviewers for every director (one row per director with all reviewers)

SELECT DISTINCT director, name
FROM Movie
INNER JOIN Rating r1
	USING(mID)
INNER JOIN Reviewer r2
	USING(rID)
GROUP BY director;


