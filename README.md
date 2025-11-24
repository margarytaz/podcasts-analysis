# 📊 Podcast Data Analysis (BigQuery SQL)

This project presents an analysis of podcasts database on BigQuery, using advanced SQL techniques for data cleaning, transformation, and complex dimensional aggregation. Datasets containing podcast information, categories, and user reviews were combined to reveal valuable insights.
The project includes several steps, including creation of database schema,  data cleaning, dimensional aggregation and relational data analysis.

## 🚀 Project Goals

The main goal was to explore podcast data to gather information on particular categories' and topics' popularity and ratings, top podcasts' performance in comparison of majority of content.

**Tasks:**
* **Database Design:** Establishing a relational schema to explore the database structure.
* **Data Transformation (Unnesting):** Initial data exploration showcased a common data quality issue: values in ‘category’ column of ‘categories’ table required cleaning by splitting denormalized, delimited string data (e.g., 'arts-sport-journal') into atomic rows.
* **Dimensional Analysis:** Calculating aggregated metrics across transformed dimensions (podcast categories) using Common Table Expressions (CTEs) and appropriate JOIN types (LEFT JOIN vs. INNER JOIN) to ensure accurate and efficient results.
* **Insights:** Formulating insights based on results of analysis.

**Stakeholders:** `podcast platform`, `media researchers`, `podcast authors`.

## 💾 Database Structure

A database titled ‘podcast_reviews’ has three tables: ‘categories’, ‘podcasts’ and ‘reviews’. Tables can be connected through ‘podcast_id’.

**Dataset size:**
‘categories’ table has 212,372 rows.
‘podcasts’ table has 110,023 rows.
‘reviews’ table has 2,067,529 rows.

## 🔎 Analysis

## Insights

**Podcast popularity vs. quality:**

The most popular categories by number of podcasts like `society-culture`, `education`, and `business` all have relatively high podcast counts (13k to 19k) and massive review totals. However, their average ratings cluster tightly between 4.55 and 4.84. This means that there is a mix of high and low quality podcasts that leads to such average values.

In contrast, the categories with the highest ratings like `rugby`, `marketing`, and `entrepreneurship` have smaller podcast counts but their average ratings are much higher, starting at 4.89 and climbing to 4.99. This suggests that the sheer volume of content in major categories leads to an averaging effect, where a high volume of lower-rated podcasts dilutes the score of the top performers. 

**Digest Content has lowest Rating:**

The categories with the lowest ratings are dominated by time-sensitive or high-volume content, indicating audience fatigue or less passionate reviews for general consumption. Content that is produced daily or covers sensitive, polarizing topics like politics or true-crime tends to pull down the overall average rating for its category.

The highest-volume podcast in the `daily` category has a very low rating of 3.34, reinforcing the low average rating of the entire `daily` category (3.97).

**Top Podcasts Dominate the Review Landscape:**

The most popular podcast by review count, "Crime Junkie," has 33,104 reviews, which is more than three times the count of the next podcast, "My Favorite Murder" (10,675). This shows that a few dominant market leaders control the vast majority of engagement in their segments.

**Cross-Category Performance:**

The presence of high-performing podcasts like 'Discover Your Talent...' and 'Loan Officer Freedom' in both the `education` and `business` categories illustrates that successful podcasts often bridge multiple popular categories, a structure that required ad-hoc data transformation (SPLIT/UNNEST) to analyze accurately.
