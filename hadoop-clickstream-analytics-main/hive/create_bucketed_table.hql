-- Create a BUCKETED table for user-level analytics
CREATE TABLE clickstream_bucked(
user_id STRING,
page STRING,
event_time TIMESTAMP,
device STRING,
session_id STRING
)
CLUSTERED BY (user_id) INTO 8 BUCKETS
STORED AS ORC;

-- Enable bucketing behavior
SET hive.enforce.bucketing=true;

-- Load data into bucketed table
INSERT OVERWRITE TABLE clickstream_bucked
SELECT user_id,page,event_time,device,session_id
FROM clickstream_cleaned;
