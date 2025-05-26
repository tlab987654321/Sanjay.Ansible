DROP TABLE IF EXISTS transfer;

CREATE TABLE IF NOT EXISTS transfer (
  SerialNo INT(2) NOT NULL AUTO_INCREMENT,
  Mode varchar(20) NOT NULL,
  Description varchar(50) NOT NULL,
  Type smallint(1) NOT NULL,
  UNIQUE KEY UC_Person (SerialNo, Mode));


INSERT INTO transfer ( `Mode`, `Description`, `Type`) VALUES ('UPI', 'UPI Transfer', 3);
INSERT INTO transfer ( `Mode`, `Description`, `Type`) VALUES ('Transfer', 'Account Transfer', 3);
INSERT INTO transfer ( `Mode`, `Description`, `Type`) VALUES ('Card', 'Card Paymnet', 0);
INSERT INTO transfer ( `Mode`, `Description`, `Type`) VALUES ('ATM', 'ATM Withdrawl', 0);
INSERT INTO transfer ( `Mode`, `Description`, `Type`) VALUES ('Cheaque', 'Cheaque Payment', 3);
INSERT INTO transfer ( `Mode`, `Description`, `Type`) VALUES ('Deposit', 'Cash Deposit', 1);
INSERT INTO transfer ( `Mode`, `Description`, `Type`) VALUES ('Other', 'Other', 3);
INSERT INTO transfer ( `Mode`, `Description`, `Type`) VALUES ('Credit Card', 'Credit Card', 0);
INSERT INTO transfer ( `Mode`, `Description`, `Type`) VALUES ('Previous Balance', 'Previous Balance', 4);
INSERT INTO transfer ( `Mode`, `Description`, `Type`) VALUES ('Auto Debit', 'Auto Debit', 0);
INSERT INTO transfer ( `Mode`, `Description`, `Type`) VALUES ('Auto Credit', 'Auto Credit', 1);

DROP TABLE IF EXISTS category;

CREATE TABLE IF NOT EXISTS category (
  SerialNo INT(2) NOT NULL AUTO_INCREMENT,
  Category varchar(20) NOT NULL,
  SubCategory varchar(20) NOT NULL,
  Type smallint(1) NOT NULL,
  UNIQUE KEY UC_Person (SerialNo, SubCategory));


INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Income', 'Salary', '1');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Income', 'Dividents', '1');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Income', 'Rent', '1');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Income', 'Opening Balance', '1');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Income', 'Interest', '1');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Income', 'Investment Returns', '1');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Income', 'Rent', '1');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Income', 'Refund', '1');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Income', 'Lend Return', '1');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Income', 'New Loan', '1');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Income', 'Other', '1');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Investments', 'Mutual Funds', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Investments', 'Gold', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Investments', 'Equity Stocks', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Investments', 'Crypto', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Investments', 'Fixed Deposits', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Investments', 'Recuring Deposits', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Investments', 'Chitti', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Investments', 'Bonds', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Investments', 'LIC', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Investments', 'Other', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Shopping', 'Groceries', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Shopping', 'Electronics', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Shopping', 'Food', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Shopping', 'Home Needs', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Shopping', 'Clothing', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Shopping', 'Stationary', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Shopping', 'Other', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'Rent', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'Electricity', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'Telephone', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'Internet', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'DTH', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'Fuel', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'Vehical Related', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'Gas', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'Water', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'Maintenance', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'Subscription', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'Credit Card', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Utilities', 'Other', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Medical', 'Hospital', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Medical', 'Medicines', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Medical', 'Health Insurance', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Medical', 'Other', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Transport', 'Tickets', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Transport', 'Travel fare', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Transport', 'Vehical Insurance', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Transport', 'Other', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Loans', 'Home Loan', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Loans', 'Personal Loan', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Loans', 'Hand Loan', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Loans', 'Vehical Loan', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Loans', 'Education Loan', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Loans', 'Other', '0');
INSERT INTO category ( `Category`, `Subcategory`, `Type`) VALUES ('Other', 'Other', '3');