use practice
/**
create table links (
   date_of date,
   link_id int,
   link varchar(1000),
   Name_ofuse varchar(1000)
   );
   **/

select * from links

/**
INSERT INTO links VALUES
   (getdate(),1,'https://www.freecodecamp.org/news/graph-algorithms-in-python-bfs-dfs-and-beyond','Python-Graph-DFS/BFS'),
   (getdate()-1,2,'https://students-old.masaischool.com/lectures/130902?tab=concepts','Tutorial Session - 5 - Searching Algorithms'),
   (getdate()-1,3,'https://www.w3schools.com/python/python_dsa_quicksort.asp','quick_short_w3-school'),
   (getdate(),4,'https://students-old.masaischool.com/lectures/130900?tab=concepts','Faculty Session 7 - Quick Sort'),
   (getdate()-1,5,'https://sqliteonline.com/','Online_sql-compiler'),
   (getdate()-4,6,'https://aiven.io/tools/pg-playground','pg_Sql-compilor')**/

select 
case
when link_id % 2 = 0 then 'odd_ids'
when link_id % 2 = 1 then 'even_ids'
else 'Not_exist'
end as id_case,link_id,link,Name_ofuse
from links;




