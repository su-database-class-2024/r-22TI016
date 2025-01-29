SELECT country_id, COUNT (*) AS citycount FROM city
GROUP BY country_id
ORDER BY citycount DESC;
