CREATE database demo;

CREATE TABLE `demo.customer_demographics_orc`(
`cd_demo_sk` bigint,
`cd_gender` string,
`cd_marital_status` string,
`cd_education_status` string,
`cd_purchase_estimate` int,
`cd_credit_rating` string,
`cd_dep_count` int,
`cd_dep_employed_count` int,
`cd_dep_college_count` int)
CLUSTERED BY (cd_demo_sk) INTO 2 BUCKETS
STORED as ORC
TBLPROPERTIES ('transactional'='true');