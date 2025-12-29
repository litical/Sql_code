SET SQL_SAFE_UPDATES = 0;
-- 1. Add the new continent column to your table
-- We use a variable length string type, e.g., $VARCHAR(50)$
ALTER TABLE your_table_name 
ADD COLUMN continent VARCHAR(50);
-- 2. Populate the continent column based on nationality
UPDATE case_data
SET continent = CASE 
    -- Asia
    WHEN nationality IN ('Chinese', 'Filipino', 'Taiwanese', 'Thai', 'Indian', 
                         'Singaporean', 'Korean', 'Indonesian', 'Vietnam', 
                         'Mongolia', 'Bangladeshi', 'Malaysian', 'Myanmarian', 
                         'Japanese', 'Emirian', 'Sri lankan') 
         THEN 'Asia'
    
    -- North America
    WHEN nationality IN ('American', 'Canadian') 
         THEN 'North America'
    
    -- Europe
    WHEN nationality IN ('French', 'Swiss', 'German', 'Spanish', 'Italian', 
                         'British', 'Dutch', 'Belgian', 'Swedish', 'Russian', 
                         'Irish', 'Danish') 
         THEN 'Europe'
    
    -- Australia
    WHEN nationality IN ('New zealander', 'Australian') 
         THEN 'Australia'
    
    -- South America
    WHEN nationality IN ('Brazilian', 'Colombian') 
         THEN 'South America'
    
    -- Africa
    WHEN nationality IN ('South african', 'Cameroonian') 
         THEN 'Africa'
    
    -- Default for N/A or any other values
    ELSE 'Unknown'
END;
SET SQL_SAFE_UPDATES = 1;