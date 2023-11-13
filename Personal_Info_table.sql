CREATE TABLE  "PERSONAL_INFO" 
   (	"ID" NUMBER(10,0) NOT NULL ENABLE, 
	"IDENTIFY_CODE" NUMBER(10,0) NOT NULL ENABLE, 
	"FNAME" VARCHAR2(50), 
	"LNAME" VARCHAR2(50), 
	"NICKNAME" VARCHAR2(50), 
	"BIRTH_DATE" DATE, 
	"BIRTH_LOC" VARCHAR2(50), 
	"SERIAL_NUMBER" NUMBER(10,0), 
	"DYN" VARCHAR2(50), 
	"MAZHAB" VARCHAR2(50), 
	"TABYAT" VARCHAR2(50), 
	 CONSTRAINT "MOSHAKHSATFARDY_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_MOSHAKHSATFARDY" 
  before insert on "PERSONAL_INFO"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "MOSHAKHSATFARDY_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_MOSHAKHSATFARDY" ENABLE
/


select *
from books
where released_year > 2010
  and author_lname = 'Eggers'
  and title like '%novel%';

select title, pages, char_length(title)
from books
where char_length(title) > 30
  and pages > 500;

select *
from books
where author_lname = 'Eggers'
   or released_year > 2010;

select title, pages
from books
where pages < 200
   or title like '%stores%';

select released_year
from books
where released_year >= 2004
  and released_year <= 2015;

select title, released_year
from books
where released_year between 2004 and 2015;

select title, pages
from books
where pages between 200 and 300;
# not between
select title, released_year
from books
where released_year not between 2004 and 2015;

create table people
(
    name      varchar(50),
    birthdate date,
    birthtime time,
    birthdt   datetime
);

insert into people(name, birthdate, birthtime, birthdt)
values ('Hazel', '2022-10-05', '14:58:29', '2020-08-15 23:59:00');


select *
from people;

select *
from people
where birthtime > '12:00:00';

select *
from people
where year(birthdate) >= 2000;

select *
from people
where hour(birthtime) > 9;

select *
from people
where birthtime
          between cast('12:31:30' as time)
          and cast('16:00:00' as time);

select title, author_lname
from books
where author_lname not in ('Carver', 'Lahiri', 'Smith');# not carver and not lahiri and not smith

select title, released_year
from books
where released_year >= 2000
  and released_year % 2 != 0;

select title, released_year
from books
where released_year not in (2000, 2002, 2004, 2006, 2008, 2010, 2014, 2016, 2012);

select title,
       released_year,
       case
           when released_year >= 2000 then 'Modern Lit'
           else '20th Century Lit'
           end as GENRE
from books;

select stock_quantity,
       case
           when stock_quantity between 0 and 50 then '*'
           when stock_quantity between 51 and 100 then '**'
           when stock_quantity between 101 and 150 then '***'
           when stock_quantity between 151 and 200 then '****'
           else '*****'
           end as STOCK
from books;


select stock_quantity,
       case
           when stock_quantity <= 40 then '*'
           when stock_quantity <= 70 then '**'
           when stock_quantity <= 100 then '***'
           when stock_quantity <= 140 then '****'
           else '*****'
           end as STOCK
from books;

select *
from books;
select *
from books
where author_lname is NULL;

insert into books(title, author_fname, author_lname)
values ('helloooooooo', 'yazdan', null);

delete
from books
where title is null;

select *
from books
where released_year < 1980;
select *
from books
where author_lname in ('Eggers', 'Chabon');
select *
from books
where author_lname = 'Lahiri'
  and released_year > 2000;
select *
from books
where pages between 100 and 200;
select *
from books
where author_lname like 'c%'
   or 's%';
select title,
       author_lname,
       case
           when title like '%stories%' then 'Short Stories'
           when title in ('Just kids', 'Heartbreaking work') then 'Memoir'
           else 'Novel'
           end as Type
FROM books;

select *
from books;

select author_lname, author_lname, concat(count(author_lname), ' books') as COUNT
from books
group by author_lname;
