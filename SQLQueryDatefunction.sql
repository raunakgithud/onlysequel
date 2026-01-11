use movies

select * from Actors
select * from movies

--calculate the age of movie (years since release)


select Title,
DATEDIFF(Year,ReleaseDate,GETDATE()) as age_of_the_movie
from movies


select Title,
DATEDIFF(MONTH,ReleaseDate,GETDATE()) as age_of_the_movie_month
from movies

--get the current date

select GETDATE() as currentdate

select getdate() - 60 as pastdate


--add 10 years to release date

select DATEADD(year, 10, getdate()) as year_till_now

select Title, DATEADD(year,5, ReleaseDate)      from Movies

select CastID,DATEDIFF(day,CastingDate,ModifiedDate) as Days_difference  from MovieCasts


--5. filter movies released in 2023

select  Title,YEAR(ReleaseDate) as ReleaseYear   from Movies where  ReleaseYear = 2003

--6. Extract month from releasedate

select Month(ReleaseDate) as release_month from Movies

--7. calculate difference in days between casting and modified date for moviecasts

select CastID,DATEDIFF(day,CastingDate,ModifiedDate) as Days_difference  from MovieCasts




