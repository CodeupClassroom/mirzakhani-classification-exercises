-- Use the world database to answer the following question:
    -- What languages are spoken in Santa Monica?

USE world;

SELECT *
FROM countrylanguage;

SELECT *
FROM country;

SELECT *
FROM city;

SELECT DISTINCT cl.Language
FROM countrylanguage cl 
JOIN city ci USING(CountryCode)
WHERE ci.Name = 'Santa Monica';