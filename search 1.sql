SET SQL_SAFE_UPDATES = 0;
UPDATE case_data
SET nationality = 'N/A'
WHERE nationality IN ('No Data Available',"",'Unidentified nationality');
SET SQL_SAFE_UPDATES = 1;
