SET GLOBAL local_infile = 1;
CREATE TABLE places (
	place_id INT,
    province_state VARCHAR(50),
    country_region VARCHAR(25),
    latitude VARCHAR(25),
    longitude VARCHAR(25)
);
LOAD DATA LOCAL INFILE 'C:/Users/naijt/Documents/Project/SQL Covid/places.csv' 
INTO TABLE places 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

