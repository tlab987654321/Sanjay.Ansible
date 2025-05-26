CREATE TABLE IF NOT EXISTS users (
  `SerialNo` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(20) NOT NULL,
  `LastName` VARCHAR(20) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Mobile` varchar(12) NULL,
  `Password` varchar(35) NOT NULL,
  `Enabled` tinyint(4) NOT NULL DEFAULT 0,
  `Admin` tinyint(4) NOT NULL DEFAULT 0,
  `LastLogin` TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ProfilePicture` varchar(45) DEFAULT 'default.png',
  `Theme` varchar(45) DEFAULT 'NormalMode',
  PRIMARY KEY (`SerialNo`,`Username`,`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;


INSERT INTO `users` VALUES (1, 'Default', 'Administrator', 'admin','administrator@admin.com', NULL, '21232f297a57a5a743894a0e4a801fc3', 1, 1, "0000-00-00 00:00:00", 'default.png', 'NormalMode');

UNLOCK TABLES;