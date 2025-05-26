CREATE TABLE IF NOT EXISTS invest_template (
  SerialNo int(5) NOT NULL AUTO_INCREMENT,
  Investment varchar(30) NOT NULL,
  Application varchar(20) NOT NULL,
  Amount int(11) NOT NULL,
  Category varchar(20) NOT NULL,
  SourceBank varchar(20) NOT NULL,
  Frequency varchar(30) NOT NULL,
  NextPayDate date NOT NULL,
  StartDate date NOT NULL,
  EndDate date NOT NULL,
  AvailableBalance varchar(10) NOT NULL,
  Locked tinyint(4) NOT NULL,
  Status varchar(15) NOT NULL DEFAULT 'In Progress',
  UNIQUE KEY SerialNo_UNIQUE (SerialNo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1