SELECT
 p.title,
 COUNT(r.podcast_id) AS total_reviews,
 ROUND(AVG(r.rating), 2) AS average_rating
FROM
 `podcast_reviews.podcasts` AS p
LEFT JOIN
 `podcast_reviews.reviews` AS r
ON
 p.podcast_id = r.podcast_id
GROUP BY
 p.podcast_id,
 p.title
ORDER BY
 total_reviews DESC,
 average_rating DESC
 
LIMIT 10;