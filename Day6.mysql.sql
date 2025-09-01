
CREATE DATABASE IF NOT EXISTS leads_db;


USE leads_db;


CREATE TABLE leads (
  lead_id INT PRIMARY KEY AUTO_INCREMENT,
  lead_name VARCHAR(50) NOT NULL,
  lead_source VARCHAR(30) NOT NULL,   -- e.g., Website, Referral, Social Media
  lead_status VARCHAR(20) NOT NULL,   -- e.g., New, Contacted, Converted
  budget DECIMAL(10,2),
  created_date DATE
);


INSERT INTO leads (lead_name, lead_source, lead_status, budget, created_date) VALUES
('Amit', 'Website', 'New', 50000, '2025-01-05'),
('Sneha', 'Referral', 'Converted', 75000, '2025-01-10'),
('Raj', 'Website', 'Contacted', 60000, '2025-02-15'),
('Priya', 'Social Media', 'New', 40000, '2025-02-20'),
('Arjun', 'Referral', 'Converted', 90000, '2025-03-01'),
('Meera', 'Website', 'Contacted', 35000, '2025-03-05'),
('Vikram', 'Social Media', 'New', 30000, '2025-03-10'),
('Anita', 'Website', 'Converted', 85000, '2025-03-15');



-- 1. Count how many leads came from each source
SELECT lead_source, COUNT(*) AS total_leads
FROM leads
GROUP BY lead_source;

-- 2. Total budget value by source
SELECT lead_source, SUM(budget) AS total_budget
FROM leads
GROUP BY lead_source;

-- 3. Average budget by lead status
SELECT lead_status, AVG(budget) AS avg_budget
FROM leads
GROUP BY lead_status;

-- 4. Show only sources where total budget > 100000
SELECT lead_source, SUM(budget) AS total_budget
FROM leads
GROUP BY lead_source
HAVING SUM(budget) > 100000;

-- 5. Show lead statuses with more than 2 leads
SELECT lead_status, COUNT(*) AS total_leads
FROM leads
GROUP BY lead_status
HAVING COUNT(*) > 2;
