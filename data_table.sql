
CREATE TABLE Sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    city VARCHAR(20),
    commission DECIMAL(5,2)
);

INSERT INTO Sales (name, city, commission) VALUES
('John Doe', 'New York', 0.05),
('Jane Smith', 'Los Angeles', 0.08),
('Bob Johnson', 'Chicago', 0.06),
('Alice Brown', 'Houston', 0.07),
('Charlie Davis', 'Phoenix', 0.09),
('Eva White', 'Philadelphia', 0.04),
('Frank Miller', 'San Antonio', 0.03),
('Grace Lee', 'Dallas', 0.08),
('Henry Wilson', 'San Diego', 0.06),
('Ivy Robinson', 'San Jose', 0.07),
('Jack Turner', 'Austin', 0.05),
('Karen Perez', 'Jacksonville', 0.08),
('Larry Garcia', 'Fort Worth', 0.06),
('Mia Scott', 'Columbus', 0.07),
('Nick Taylor', 'Charlotte', 0.09),
('Olivia Moore', 'Indianapolis', 0.04),
('Paula Allen', 'San Francisco', 0.03),
('Quincy Hall', 'Seattle', 0.08),
('Ryan Martinez', 'Denver', 0.06),
('Sara Wright', 'Washington', 0.07),
('Tom Brown', 'Boston', 0.05),
('Ursula Carter', 'El Paso', 0.08),
('Victor Green', 'Nashville', 0.06),
('Wendy Hill', 'Las Vegas', 0.07),
('Xander Adams', 'Portland', 0.09),
('Yvonne Turner', 'Oklahoma City', 0.04),
('Zachary Miller', 'Tucson', 0.03),
('Amy Clark', 'Albuquerque', 0.08),
('Brian Foster', 'Long Beach', 0.06),
('Cindy Lopez', 'Fresno', 0.07);
