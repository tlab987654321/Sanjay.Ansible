CREATE DATABASE IF NOT EXISTS tracker;
USE tracker;
CREATE TABLE IF NOT EXISTS accounts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    balance DECIMAL(10,2)
);
CREATE TABLE IF NOT EXISTS expenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    amount DECIMAL(10,2),
    category VARCHAR(100),
    description TEXT,
    account_id INT,
    FOREIGN KEY (account_id) REFERENCES accounts(id)
);