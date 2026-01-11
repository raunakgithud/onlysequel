--string function--

use movies

select top 1* from Actors
select top 1 * from MovieCasts
select top 1* from Movies

--1. convert director names to uppercase

select Director, UPPER(Director) as director_upper   from Movies

--get lenth of the movie titles

select Title, len(Title) as title_len  from Movies

--3 extract first 5 characters from movie titles
select Title , SUBSTRING(Title, 1, 5) as title_prefix   from Movies

--4. replace usa with 'United States'

select Title,Country,REPLACE( Country,'USA','United States') as country_updated   from Movies

--5 concatenate firstname and lastname for actors 

select   FirstName, LastName, CONCAT( FirstName,' ', LastName) as fullname    from Actors

--6 remove leading/trailing spaced from Actor Name
select FirstName,TRIM(FirstName) as trimed_name    from Actors

select   FirstName, LastName, CONCAT( FirstName,' ', LastName,' ') as fullname , TRIM(CONCAT( FirstName,' ', LastName,' ')) as trimed_fullname   from Actors


