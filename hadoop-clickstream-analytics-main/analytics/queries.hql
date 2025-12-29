-- 1. Most visited pages
SELECT page,COUNT(*) AS hits
FROM clickstream_cleaned
GROUP BY page
ORDER BY hits DESC;

-- 2. Device-Wise traffic breakdwon
SELECT device,COUNT(*)
FROM clickstream_cleaned
GROUP BY device;

-- 3. Average session time
SELECT session_id, MAX(event_time) - Min(event_time) as session_duration
FROM clickstream_cleaned
GROUP BY session_id
limit 10;

-- 4. Daily Activity trend
SELECT event_date, count(*)
FROM clickstream_cleaned
GROUP BY event_date
ORDER BY event_date; 
