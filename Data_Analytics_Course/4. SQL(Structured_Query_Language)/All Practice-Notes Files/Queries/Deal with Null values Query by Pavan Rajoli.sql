CREATE TABLE air_conditioners (
    name TEXT,
    main_category TEXT,
    sub_category TEXT,
    image TEXT,
    link TEXT,
    ratings FLOAT,
    no_of_ratings INT,
    discount_price TEXT,
    actual_price TEXT
);

SELECT * FROM air_conditioners;

COPY air_conditioners(name, main_category, sub_category, image, link, ratings, no_of_ratings, discount_price, actual_price)
FROM 'D:\Course Updates\30 Day Series\SQL\Air_Conditioners.csv'
DELIMITER ','
CSV HEADER;

SELECT name, no_of_ratings 
FROM air_conditioners
ORDER BY no_of_ratings DESC;

--Filter out null values from sql Table
SELECT name, no_of_ratings
FROM air_conditioners
WHERE no_of_ratings IS NOT NULL
ORDER BY no_of_ratings DESC;

-- replace null with 0 using COALESCE Condition.
SELECT name, COALESCE(no_of_ratings, 0) AS no_of_ratings
FROM air_conditioners
ORDER BY no_of_ratings DESC;
