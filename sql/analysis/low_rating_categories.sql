WITH UnnestedCategories AS (
 SELECT DISTINCT
 t1.podcast_id,
 individual_category
 FROM
 `podcast_reviews.categories` AS t1,
 UNNEST(SPLIT(t1.category, '-')) AS individual_category
)

SELECT
 uc.individual_category,
 COUNT(DISTINCT uc.podcast_id) AS podcast_count,
 COUNT(r.podcast_id) AS total_reviews,
 ROUND(AVG(r.rating), 2) AS average_rating
FROM
 UnnestedCategories AS uc
LEFT JOIN
 `podcast_reviews.reviews` AS r
ON
 uc.podcast_id = r.podcast_id
GROUP BY
 uc.individual_category
ORDER BY
 average_rating;