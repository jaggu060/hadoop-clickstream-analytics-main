--Important to set 
SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;

-- Insert clean data into partitioned table
INSERT OVERWRITE TABLE clickstream_cleaned
PARTITION (event_date)
SELECT 
user_id,
page,
device,
session_id,
event_time,
DATE(event_time) AS event_date
FROM clickstream_raw
WHERE user_id != 'user_id'; 




