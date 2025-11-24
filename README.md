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

## 🔎 Key SQL Analysis & Insights
