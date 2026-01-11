use movies

select top 1 * from Actors
select top 1 * from MovieCasts
select top 1 * from Movies
/**
declare  
@Name varchar(200) = (select FirstName  from Actors where ActorID = 2001 )
if @Name = 'Tom'
print @Name
print getdate()
**/
------------------------------------------------------
--classify the content rating 

G
NC-17
PG
PG-13
R

select top 1 * from Movies

select distinct(ContentRating) from Movies

select ContentRating,MovieStatus,IsBlockbuster,Title,ReleaseDate,
case ContentRating
when 'NC-17' then 'adult'
when 'G' then  'general'
when 'PG' then 'kids-friendly'
when 'PG-13' then 'violence'
else 'Other'
end as movietype
from Movies

-- update boxoffice collection of a movie title AVATAR

update Movies set  BoxOfficeCollection = 2500000000.00  where Title = 'AVATAR'

select BoxOfficeCollection from Movies where Title = 'AVATAR'

select * from Movies where Title = 'AVATAR'

-- update  contentrating for all movies with runtime > 150

update movies set ContentRating = 'PG-13' where Runtime > 150

select * from movies where Runtime > 150

--update actors agency and last project year 
--agency as agency p and year 2024 for actorid = 2010

update actors set Agency = 'agency p' , LastProjectYear = 2024 where ActorID = 2010

select * from actors where ActorID = 2010

--5 update moviestatus for movies released before 2010

update movies set MovieStatus = 'Hit' where ReleaseYear < 2010

select * from movies where ReleaseYear < 2010

--6. update salarypaid for a cast member - 3001

--MovieCasts

update MovieCasts set SalaryPaid = 3400000.00 where CastID = 3001

select * from MovieCasts where CastID = 3001

--7. Modify characterdescription for all lead roles as 'lead character in role'

update MovieCasts set CharacterDescription = 'lead character in role' where RoleType = 'LEAD'

select * from MovieCasts where RoleType = 'LEAD'



























