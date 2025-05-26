CREATE TABLE IF NOT EXISTS data_template (
  SerialNo INT(5) NOT NULL AUTO_INCREMENT,
  Bank varchar(30) NOT NULL,
  Amount varchar(10) NOT NULL,
  PaymentMode varchar(30) NOT NULL,
  Category varchar(30) NOT NULL,
  SubCategory varchar(30) NOT NULL,
  Type VARCHAR(30) NOT NULL,
  Balance varchar(10) NOT NULL,
  AccountBalance varchar(10) NOT NULL,
  Comments varchar(150) NULL,
  AddedOn date NOT NULL DEFAULT current_timestamp(),
  UNIQUE KEY UC_Person (SerialNo)
  ) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS data_admin LIKE data_template;
