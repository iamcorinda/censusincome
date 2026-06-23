SELECT education,
COUNT(*) as total,
SUM(CASE WHEN income LIKE '>50K' THEN 1 ELSE 0 END) as high_earners,
ROUND(100.0 * SUM(CASE WHEN income LIKE '>50K' THEN 1 ELSE 0 END) / COUNT(*), 1) as pct_high_earners 
FROM adult
GROUP BY education
ORDER BY pct_high_earners DESC;

