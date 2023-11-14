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

