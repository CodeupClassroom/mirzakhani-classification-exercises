USE world;

SELECT *
FROM countrylanguage;

SELECT *
FROM country;

SELECT *
FROM city;

SELECT DISTINCT cl.language
FROM country c
JOIN countrylanguage cl ON c.Code = cl.CountryCode
JOIN city ci ON ci.CountryCode = c.Code
WHERE ci.Name = 'Santa Monica';