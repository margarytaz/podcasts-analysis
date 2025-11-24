WITH FilteredPodcasts AS (
 SELECT DISTINCT
 t1.podcast_id
 FROM
 `podcast_reviews.categories` AS t1,
 UNNEST(SPLIT(t1.category, '-')) AS individual_category
 WHERE
 individual_category = 'business'
)

SELECT
 p.title,
 COUNT(r.podcast_id) AS total_reviews,
 ROUND(AVG(r.rating), 2) AS average_rating
FROM
 `podcast_reviews.podcasts` AS p
INNER JOIN
 FilteredPodcasts AS fp
ON
 p.podcast_id = fp.podcast_id
LEFT JOIN
 `podcast_reviews.reviews` AS r
ON
 p.podcast_id = r.podcast_id
GROUP BY
 p.podcast_id,
 p.title
ORDER BY
 average_rating DESC,
 total_reviews DESC
LIMIT 3;
