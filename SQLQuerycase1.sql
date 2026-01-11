use movies

select top 1 * from Actors
select top 1 * from MovieCasts
select top 1 * from Movies

--assign rating based on IMDBraating

select Title , Genre,ReleaseDate,IMDBRating,
case 
when IMDBRating >= 8.5 then 'exellent'
when IMDBRating >= 7.0 then 'Good'
else 'Avarage'
end as ratingcategory
from Movies

---convert ISblockbuster' to descriptive text

select Title , Genre,ReleaseDate,IsBlockbuster,
case IsBlockbuster
when 'Yes' then 'Blockbuster'
else 'NotBlockbuster'
end as Blockbusterstatus
from Movies

