SELECT *
FROM case_data
WHERE nationality = 'korean'
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/korean_subset'
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';