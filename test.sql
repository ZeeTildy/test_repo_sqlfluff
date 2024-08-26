with cte AS (
    SELECT DISTINCT
        canonical_id,
        FROM_UNIXTIME(first_created_date) AS first_created_date
    FROM email_attributes
)

SELECT
    COUNT(canonical_id) AS cosnumer_count,
    DATE(first_created_date) AS day_mailed
FROM cte
GROUP BY 2
ORDER BY 2 DESC
