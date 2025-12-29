# hadoop-clickstream-analytics

E-Commerce Clickstream Analytics using Hadoop & Hive
Overview
This project demonstrates an end-to-end data engineering pipeline for processing and analyzing large-scale clickstream logs using Hadoop and Hive.
It includes data generation, HDFS storage, Hive ETL, and analytical queries.

Tech Stack
Hadoop (HDFS)
Hive
Python (data generation)
ORC format
Partitioning & Bucketing

Architecture

Data Generation
Python script generates 1–5M clickstream events with user_id, page, timestamp, device, and session_id.

Data Storage (HDFS)
Raw CSV files stored in /clickstream/raw/.

Hive Warehouse

  Raw table (external, CSV)

  Cleaned table (partitioned by date, ORC)

  Bucketed table for user-level analytics

Analytics

  Most visited pages

  Device usage distribution

  Average session duration

  Daily activity trends

Key Features

  Efficient Hive ETL pipeline

  Date-based partitioning

  User-based bucketing

  ORC compression + optimized storage

Clean SQL query design with CTEs
