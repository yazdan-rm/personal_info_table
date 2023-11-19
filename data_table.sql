CREATE TABLE StudyData (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    year_category YEAR,
    subject VARCHAR(50),
    country VARCHAR(50)
);

-- Insert 30 records
INSERT INTO StudyData (year_category, subject, country) VALUES
(2020, 'Mathematics', 'USA'),
(2021, 'Physics', 'Canada'),
(2022, 'Biology', 'UK'),
(2023, 'Chemistry', 'Germany'),
(2024, 'Literature', 'France'),
(2025, 'History', 'Japan'),
(2026, 'Geography', 'Australia'),
(2027, 'Computer Science', 'India'),
(2028, 'Economics', 'Brazil'),
(2029, 'Psychology', 'South Africa'),
(2030, 'Sociology', 'China'),
(2031, 'Environmental Science', 'Russia'),
(2032, 'Political Science', 'Mexico'),
(2033, 'Philosophy', 'Italy'),
(2034, 'Art', 'Spain'),
(2035, 'Music', 'Argentina'),
(2036, 'Physical Education', 'South Korea'),
(2037, 'Engineering', 'Turkey'),
(2038, 'Medicine', 'Netherlands'),
(2039, 'Communication Studies', 'Sweden'),
(2040, 'Law', 'Switzerland'),
(2041, 'Nutrition', 'New Zealand'),
(2042, 'Dentistry', 'Norway'),
(2043, 'Film Studies', 'Denmark'),
(2044, 'Astronomy', 'Finland'),
(2045, 'Linguistics', 'Belgium'),
(2046, 'Anthropology', 'Ireland'),
(2047, 'Archaeology', 'Portugal'),
(2048, 'Education', 'Greece'),
(2049, 'Theology', 'Austria'),
(2050, 'Business Administration', 'Singapore');




CREATE TABLE Awards (
    award_id INT PRIMARY KEY AUTO_INCREMENT,
    year_category YEAR,
    subject VARCHAR(50),
    winner VARCHAR(50),
    country VARCHAR(50)
);

-- Insert 30 records
INSERT INTO Awards (year_category, subject, winner, country) VALUES
('2000', 'Science', 'John Doe', 'USA'),
('2001', 'Literature', 'Jane Smith', 'UK'),
('2002', 'Physics', 'Bob Johnson', 'Canada'),
('2003', 'Music', 'Alice Brown', 'Australia'),
('2004', 'Mathematics', 'Charlie Davis', 'Germany'),
('2005', 'Art', 'Eva White', 'France'),
('2006', 'Chemistry', 'Frank Miller', 'Japan'),
('2007', 'History', 'Grace Lee', 'China'),
('2008', 'Economics', 'Henry Wilson', 'Brazil'),
('2009', 'Medicine', 'Ivy Robinson', 'South Africa'),
('2010', 'Engineering', 'Jack Turner', 'India'),
('2011', 'Peace', 'Karen Perez', 'Mexico'),
('2012', 'Literature', 'Larry Garcia', 'Italy'),
('2013', 'Physics', 'Mia Scott', 'Russia'),
('2014', 'Music', 'Nick Taylor', 'Spain'),
('2015', 'Mathematics', 'Olivia Moore', 'Argentina'),
('2016', 'Art', 'Paula Allen', 'South Korea'),
('2017', 'Chemistry', 'Quincy Hall', 'Sweden'),
('2018', 'History', 'Ryan Martinez', 'Netherlands'),
('2019', 'Economics', 'Sara Wright', 'Switzerland'),
('2020', 'Medicine', 'Tom Brown', 'Belgium'),
('2021', 'Engineering', 'Ursula Carter', 'Norway'),
('2022', 'Peace', 'Victor Green', 'Denmark'),
('2023', 'Literature', 'Wendy Hill', 'Finland'),
('2024', 'Physics', 'Xander Adams', 'Poland'),
('2025', 'Music', 'Yvonne Turner', 'Portugal'),
('2026', 'Mathematics', 'Zachary Miller', 'Greece'),
('2027', 'Art', 'Amy Clark', 'Turkey'),
('2028', 'Chemistry', 'Brian Foster', 'Ireland'),
('2029', 'History', 'Cindy Lopez', 'Hungary');


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

select author_lname, author_lname
from books
group by author_lname, author_fname;



CREATE TABLE companies
(
    supplier_id INT AUTO_INCREMENT,
    name        VARCHAR(255) NOT NULL,
    phone       VARCHAR(15)  NOT NULL UNIQUE,
    address     VARCHAR(255) NOT NULL,
    PRIMARY KEY (supplier_id)
);


create table partiers
(
    name varchar(50),
    age  int check (age > 18)
);

create table partiers2
(
    name varchar(50),
    age  int,
    constraint age_over_18_ck check (age > 18)
);

CREATE TABLE companies2
(
    supplier_id INT AUTO_INCREMENT,
    name        VARCHAR(255) NOT NULL,
    phone       VARCHAR(15)  NOT NULL UNIQUE,
    address     VARCHAR(255) NOT NULL,
    PRIMARY KEY (supplier_id),
    CONSTRAINT name_address UNIQUE (name, address)
);

alter table companies
    add column city varchar(50)
        after phone;

desc companies;

insert into companies
values (13, 'blackbird auto', '1212 spruce', 'asdf', 'adf');
select *
from companies;

alter table companies
    drop column phone;

alter table partiers
    rename to yazdan;

alter table yazdan
    rename to partiers;

alter table partiers
    rename column name to full_name;

alter table companies
    modify name varchar(100);

alter table companies
    add column company_name varchar(100) after supplier_id;

alter table companies
    modify company_name varchar(100) default 'unknown';

insert into companies(name, city, address)
    value ('Hossien', 'tehran', 'square');

select *
from companies;

ALTER TABLE companies
    ADD CONSTRAINT positive_ck CHECK (name is not null);

alter table companies
    drop constraint positive_ck;

create table customers
(
    id         int primary key auto_increment,
    first_name varchar(50),
    last_name  varchar(50),
    email      varchar(50)
);

create table orders
(
    id          int primary key auto_increment,
    order_date  date,
    amount      decimal(8, 2),
    customer_id int,
    foreign key (customer_id) references customers (id) on delete cascade
);

create database shop;
use shop;
show tables;

insert into customers (first_name, last_name, email)
values ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@ol.com');

insert into orders(order_date, amount, customer_id)
values ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
drop table customers;
select customer_id,
       concat(first_name, ' ', last_name)                as name,
       concat('date: ', order_date, ' amount: ', amount) as ordered
from customers
         join orders o on customers.id = o.customer_id
where customers.first_name = 'George';


# cross join
select *
from customers,
     orders;

select *
from customers
         join orders
              on customers.id = orders.customer_id;

# Combining join with group by
select first_name, last_name, sum(amount) as total
from customers
         join orders o on customers.id = o.customer_id
group by first_name, last_name
order by total;

select first_name, last_name, ifnull(sum(amount), 0) as money_spent
from customers
         left join orders on customers.id = orders.customer_id
group by first_name, last_name;

insert into orders (amount, order_date)
values (100, curdate());

select *
from orders;

select first_name, last_name, sum(amount)
from customers
         right join orders o on customers.id = o.customer_id
group by first_name, last_name;

delete
from customers
where id = 5;

select *
from customers;

create database college;
use college;

create table students
(
    id         int primary key auto_increment,
    first_name varchar(50)
);

create table papers
(
    id         int primary key auto_increment,
    title      varchar(50),
    grade      decimal(4, 2),
    student_id int,
    foreign key (student_id) references students (id) on delete cascade
);

insert into students (first_name)
values ('Caleb'),
       ('Samantha'),
       ('Raj'),
       ('Carlos'),
       ('Lisa');

insert into papers(title, grade, student_id)
values ('My First Book Report', 60, 1),
       ('My Second Book Report', 75, 1),
       ('Russian Lit Through The Ages', 94, 2),
       ('De Montaigne and The Art of The Essay', 98, 2),
       ('Borges and Magical Realism', 89, 4);

select first_name, title, grade
from students
         left outer join papers on students.id = papers.student_id
order by 1 desc;

select first_name, ifnull(title, 'MISSING') as title, ifnull(grade, 0) as grade
from students
         left join papers on students.id = papers.student_id;

select first_name, ifnull(avg(grade), 0) as average
from students
         left join papers on students.id = papers.student_id
group by first_name
order by 2 desc;

select first_name,
       ifnull(avg(grade), 0)                                  as average,
       IF(ifnull(avg(grade), 0) > 67.5, 'PASSING', 'FAILING') as passing_status
from students
         left join papers on students.id = papers.student_id
group by first_name
order by average desc;

create table reviewers
(
    id         int primary key auto_increment,
    first_name varchar(50) not null,
    last_name  varchar(50) not null
);

create table series
(
    id            int primary key auto_increment,
    title         varchar(100),
    released_year year,
    genre         varchar(100)
);

create table reviews
(
    id          int primary key auto_increment,
    rating      decimal(2, 1),
    series_id   int,
    reviewer_id int,
    foreign key (series_id) references series (id) on delete cascade,
    foreign key (reviewer_id) references reviewers (id) on delete cascade
);

INSERT INTO series (title, released_year, genre)
VALUES ('Archer', 2009, 'Animation'),
       ('Arrested Development', 2003, 'Comedy'),
       ('Bob\'s Burgers', 2011, 'Animation'),
       ('Bojack Horseman', 2014, 'Animation'),
       ('Breaking Bad', 2008, 'Drama'),
       ('Curb Your Enthusiasm', 2000, 'Comedy'),
       ('Fargo', 2014, 'Drama'),
       ('Freaks and Geeks', 1999, 'Comedy'),
       ('General Hospital', 1963, 'Drama'),
       ('Halt and Catch Fire', 2014, 'Drama'),
       ('Malcolm In The Middle', 2000, 'Comedy'),
       ('Pushing Daisies', 2007, 'Comedy'),
       ('Seinfeld', 1989, 'Comedy'),
       ('Stranger Things', 2016, 'Drama');

select *
from reviewers;


INSERT INTO reviewers (first_name, last_name)
VALUES ('Thomas', 'Stoneman'),
       ('Wyatt', 'Skaggs'),
       ('Kimbra', 'Masters'),
       ('Domingo', 'Cortes'),
       ('Colt', 'Steele'),
       ('Pinkie', 'Petit'),
       ('Marlon', 'Crafford');

INSERT INTO reviews(series_id, reviewer_id, rating)
VALUES (1, 1, 8.0),
       (1, 2, 7.5),
       (1, 3, 8.5),
       (1, 4, 7.7),
       (1, 5, 8.9),
       (2, 1, 8.1),
       (2, 4, 6.0),
       (2, 3, 8.0),
       (2, 6, 8.4),
       (2, 5, 9.9),
       (3, 1, 7.0),
       (3, 6, 7.5),
       (3, 4, 8.0),
       (3, 3, 7.1),
       (3, 5, 8.0),
       (4, 1, 7.5),
       (4, 3, 7.8),
       (4, 4, 8.3),
       (4, 2, 7.6),
       (4, 5, 8.5),
       (5, 1, 9.5),
       (5, 3, 9.0),
       (5, 4, 9.1),
       (5, 2, 9.3),
       (5, 5, 9.9),
       (6, 2, 6.5),
       (6, 3, 7.8),
       (6, 4, 8.8),
       (6, 2, 8.4),
       (6, 5, 9.1),
       (7, 2, 9.1),
       (7, 5, 9.7),
       (8, 4, 8.5),
       (8, 2, 7.8),
       (8, 6, 8.8),
       (8, 5, 9.3),
       (9, 2, 5.5),
       (9, 3, 6.8),
       (9, 4, 5.8),
       (9, 6, 4.3),
       (9, 5, 4.5),
       (10, 5, 9.9),
       (13, 3, 8.0),
       (13, 4, 7.2),
       (14, 2, 8.5),
       (14, 3, 8.9),
       (14, 4, 8.9);


select title, rating
from series
         join reviews on series.id = reviews.series_id;

select title, round(avg(rating), 3) as avg_rating
from series
         join reviews on series.id = reviews.series_id
group by title
order by 2;

select first_name, last_name, rating
from reviewers
         join reviews on reviewers.id = reviews.reviewer_id;

select title as unreviewed_series
from series
         left join reviews r on series.id = r.series_id
where r.rating IS NULL;

select genre, round(avg(rating), 6) as avg_rating
from series
         join reviews on series.id = reviews.reviewer_id
group by series.genre;
select *
from reviewers
         join reviews r on reviewers.id = r.reviewer_id;
select first_name,
       last_name,
       ifnull(count(rating), 0)                    as count,
       ifnull(min(rating), 0)                      as min,
       ifnull(max(rating), 0)                      as max,
       ifnull(avg(rating), 0)                      as avg,
       IF(count(rating) = 0, 'INACTIVE', 'ACTIVE') as status
from reviewers
         left join reviews r on reviewers.id = r.reviewer_id
group by first_name, last_name;


select title, rating, concat(first_name, ' ', last_name) as reviewer
from series
         join reviews on series.id = reviews.series_id
         join reviewers on reviews.reviewer_id = reviewers.id;



create view full_reviews as
select title, released_year, genre, rating, first_name, last_name
from series
         join reviews r on series.id = r.series_id
         join reviewers r2 on r.reviewer_id = r2.id;

select * from full_reviews;













    CREATE TABLE NobelPrizes (
    prize_id INT PRIMARY KEY AUTO_INCREMENT,
    year YEAR,
    category VARCHAR(50),
    subject VARCHAR(50),
    winner VARCHAR(50),
    country VARCHAR(50)
);

-- Insert 30 records
INSERT INTO NobelPrizes (year, category, subject, winner, country) VALUES
(2000, 'Physics', 'Quantum Mechanics', 'John Doe', 'USA'),
(2001, 'Literature', 'Poetry', 'Jane Smith', 'UK'),
(2002, 'Chemistry', 'Organic Chemistry', 'Bob Johnson', 'Canada'),
(2003, 'Peace', 'Human Rights', 'Alice Brown', 'Australia'),
(2004, 'Medicine', 'Genetics', 'Charlie Davis', 'Germany'),
(2005, 'Economics', 'Microeconomics', 'Eva White', 'France'),
(2006, 'Physics', 'Particle Physics', 'Frank Miller', 'Japan'),
(2007, 'Literature', 'Fiction', 'Grace Lee', 'China'),
(2008, 'Chemistry', 'Inorganic Chemistry', 'Henry Wilson', 'Brazil'),
(2009, 'Peace', 'Diplomacy', 'Ivy Robinson', 'South Africa'),
(2010, 'Medicine', 'Immunology', 'Jack Turner', 'India'),
(2011, 'Economics', 'Macroeconomics', 'Karen Perez', 'Mexico'),
(2012, 'Physics', 'Astrophysics', 'Larry Garcia', 'Italy'),
(2013, 'Literature', 'Drama', 'Mia Scott', 'Russia'),
(2014, 'Chemistry', 'Physical Chemistry', 'Nick Taylor', 'Spain'),
(2015, 'Peace', 'Social Justice', 'Olivia Moore', 'Argentina'),
(2016, 'Medicine', 'Neuroscience', 'Paula Allen', 'South Korea'),
(2017, 'Economics', 'Behavioral Economics', 'Quincy Hall', 'Sweden'),
(2018, 'Physics', 'Nuclear Physics', 'Ryan Martinez', 'Netherlands'),
(2019, 'Literature', 'Historical Fiction', 'Sara Wright', 'Switzerland'),
(2020, 'Chemistry', 'Biochemistry', 'Tom Brown', 'Belgium'),
(2021, 'Peace', 'Environmental Activism', 'Ursula Carter', 'Norway'),
(2022, 'Medicine', 'Virology', 'Victor Green', 'Denmark'),
(2023, 'Economics', 'Development Economics', 'Wendy Hill', 'Finland'),
(2024, 'Physics', 'Condensed Matter Physics', 'Xander Adams', 'Poland'),
(2025, 'Literature', 'Mystery', 'Yvonne Turner', 'Portugal'),
(2026, 'Chemistry', 'Analytical Chemistry', 'Zachary Miller', 'Greece'),
(2027, 'Peace', 'Conflict Resolution', 'Amy Clark', 'Turkey'),
(2028, 'Medicine', 'Medical Imaging', 'Brian Foster', 'Ireland'),
(2029, 'Economics', 'International Trade', 'Cindy Lopez', 'Hungary');




