CREATE TABLE IF NOT EXISTS users (
  `SerialNo` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(35) NOT NULL,
  `Group` varchar(45) DEFAULT NULL,
  `Enabled` tinyint(4) NOT NULL DEFAULT 0,
  `Admin` tinyint(4) NOT NULL DEFAULT 0,
  `LastLogin` TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ProfilePicture` varchar(45) DEFAULT 'default.png',
  `Theme` varchar(45) DEFAULT 'normalmode',
  PRIMARY KEY (`SerialNo`,`Username`,`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;

INSERT INTO `users` VALUES (1, 'Administrator', 'admin','administrator@admin.com', '21232f297a57a5a743894a0e4a801fc3', NULL, 1, 1, "0000-00-00 00:00:00");

UNLOCK TABLES;