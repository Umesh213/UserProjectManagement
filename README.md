# UserProjectManagement
MySQL has used as back-end for this project.
Below is DB details:
Database: taskdb
User: root
pwd: root
Table: PERSON

DROP TABLE IF EXISTS `taskdb`.`person`;
CREATE TABLE  `taskdb`.`person` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `birthdate` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(120) NOT NULL,
  `qualification` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
