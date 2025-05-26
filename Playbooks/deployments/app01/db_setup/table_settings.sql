CREATE TABLE `settings` (
  `Title` varchar(10) NOT NULL,
  `Application` varchar(10) NOT NULL,
  `SMTPHost` varchar(20) NOT NULL,
  `SMTPPort` int(11) NOT NULL,
  `SMTPUser` varchar(100) NOT NULL,
  `SMTPPass` varchar(100) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Enabled` varchar(45) NOT NULL DEFAULT '0',
  `Logo` varchar(45) NOT NULL,
  `Version` varchar(4) NOT NULL,
  PRIMARY KEY (`SMTPHost`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1