
/* Get subsctring from a field */
select distinct city from station where left(city, 1) IN ('a', 'e', 'i', 'o', 'u');

/* Get the string length size from a string field */
select city, length(city) from station order by length(city), city limit 1;

/* Count entries and calculate results */
select (select count(city) from station) - (select count(distinct city) from station)

/* Calculating using field value */
select distinct city from station where id % 2 = 0 order by city