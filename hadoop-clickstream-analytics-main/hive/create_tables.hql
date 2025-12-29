-- Create RAW external table
create external table checkstream_raw(
	user_id STRING,
	page STRING,
	event_time TIMESTAMP,
	device STRING,
	session_id STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',';

load data inpath '/clickstream/raw/' overwrite into table checkstream_raw;

-- Turn on skipping header during processing if not worked then just skip the header while loading the data
SET hive.skip.header.line.count=1;
SET hive.exec.skip.header.line.count=1;

-- Create CLEANED table with partitions
create table clickstream_cleaned(
user_id STRING,
page STRING,
device STRING,
session_id STRING,
event_time TIMESTAMP
)
PARTITIONED BY(event_date STRING)
STORED AS ORC;
