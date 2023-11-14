CREATE TABLE Customers (
    cust_id INT PRIMARY KEY AUTO_INCREMENT,
    cust_name VARCHAR(50),
    city VARCHAR(50),
    grade DECIMAL(3,0),
    salesman_id INT
);

-- Set the AUTO_INCREMENT starting value for cust_id to 5001
ALTER TABLE Customers AUTO_INCREMENT = 5001;

-- Insert 30 records
INSERT INTO Customers (cust_name, city, grade, salesman_id) VALUES
('John Doe', 'New York', 100, 5000),
('Jane Smith', 'Los Angeles', 200, 5002),
('Bob Johnson', 'Chicago', 150, 5004),
('Alice Brown', 'Houston', 300, 5006),
('Charlie Davis', 'Phoenix', 250, 5008),
('Eva White', 'Philadelphia', 180, 5010),
('Frank Miller', 'San Antonio', 120, 5012),
('Grace Lee', 'Dallas', 220, 5014),
('Henry Wilson', 'San Diego', 270, 5016),
('Ivy Robinson', 'San Jose', 190, 5018),
('Jack Turner', 'Austin', 320, 5020),
('Karen Perez', 'Jacksonville', 240, 5022),
('Larry Garcia', 'Fort Worth', 160, 5024),
('Mia Scott', 'Columbus', 210, 5026),
('Nick Taylor', 'Charlotte', 280, 5028),
('Olivia Moore', 'Indianapolis', 130, 5030),
('Paula Allen', 'San Francisco', 170, 5032),
('Quincy Hall', 'Seattle', 230, 5034),
('Ryan Martinez', 'Denver', 300, 5036),
('Sara Wright', 'Washington', 140, 5038),
('Tom Brown', 'Boston', 180, 5040),
('Ursula Carter', 'El Paso', 260, 5042),
('Victor Green', 'Nashville', 200, 5044),
('Wendy Hill', 'Las Vegas', 150, 5046),
('Xander Adams', 'Portland', 280, 5048),
('Yvonne Turner', 'Oklahoma City', 170, 5050),
('Zachary Miller', 'Tucson', 220, 5052),
('Amy Clark', 'Albuquerque', 320, 5054),
('Brian Foster', 'Long Beach', 240, 5056),
('Cindy Lopez', 'Fresno', 160, 5058);

