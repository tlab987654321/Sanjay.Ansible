CREATE TABLE IF NOT EXISTS banks_template (
  SerialNo INT(2) NOT NULL AUTO_INCREMENT,
  Name varchar(10) NOT NULL,
  Type varchar(10) NOT NULL,
  Bank varchar(20) NOT NULL,
  Description varchar(50) NOT NULL,
  Account varchar(80) NULL,
  IFSC varchar(11) NULL,
  UNIQUE KEY UC_Person (SerialNo, Bank));

CREATE TABLE IF NOT EXISTS banks_admin LIKE banks_template;
