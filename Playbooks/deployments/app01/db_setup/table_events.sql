CREATE TABLE IF NOT EXISTS events (
  `SerialNo` int(11) NOT NULL AUTO_INCREMENT,
  `Date` varchar(2) NOT NULL,
  `Month` varchar(2) NOT NULL,
  `Year` varchar(4) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Event` varchar(25) DEFAULT NULL,
  `Group` varchar(25) DEFAULT NULL,
  `Mobile` varchar(25) DEFAULT NULL,
  UNIQUE KEY `UC_Person` (`SerialNo`,`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=latin1