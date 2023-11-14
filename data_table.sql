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

