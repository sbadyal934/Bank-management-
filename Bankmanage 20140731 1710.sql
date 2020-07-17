-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.37-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bankmanagement
--

CREATE DATABASE IF NOT EXISTS bankmanagement;
USE bankmanagement;

--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `User` char(20) default NULL,
  `Password` char(20) default NULL,
  `access` varchar(15) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`User`,`Password`,`access`) VALUES 
 ('admin','0000','admin');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `new_account`
--

DROP TABLE IF EXISTS `new_account`;
CREATE TABLE `new_account` (
  `account` varchar(50) NOT NULL,
  `name` varchar(30) default NULL,
  `sex` varchar(10) default NULL,
  `age` varchar(5) default NULL,
  `mobile` varchar(10) default NULL,
  `address` varchar(50) default NULL,
  `open_date` date default NULL,
  `deposit_date` date default NULL,
  `withdraw_date` date default NULL,
  `balance` varchar(15) default NULL,
  `last_deposit` varchar(15) default NULL,
  `last_withdraw` varchar(15) default NULL,
  PRIMARY KEY  (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_account`
--

/*!40000 ALTER TABLE `new_account` DISABLE KEYS */;
INSERT INTO `new_account` (`account`,`name`,`sex`,`age`,`mobile`,`address`,`open_date`,`deposit_date`,`withdraw_date`,`balance`,`last_deposit`,`last_withdraw`) VALUES 
 ('1000','diddd','male','12','2222222','kjdkj;','2014-07-31','2014-07-31','2014-07-31','1000','213','2558'),
 ('1001','iuiiyiyw','male','21','1111111111','2ujsiuijflk','2014-07-31','2014-07-31',NULL,'3333','3333',NULL),
 ('1002','qweqe','male','12','123','wqre','2014-07-31','2014-07-31',NULL,'12322','12322',NULL);
/*!40000 ALTER TABLE `new_account` ENABLE KEYS */;


--
-- Definition of table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `account` varchar(30) default NULL,
  `action` varchar(20) default NULL,
  `date` date default NULL,
  `amount` varchar(20) default NULL,
  KEY `account` (`account`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`account`) REFERENCES `new_account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;


--
-- Definition of table `transaction1`
--

DROP TABLE IF EXISTS `transaction1`;
CREATE TABLE `transaction1` (
  `transid` varchar(20) NOT NULL,
  `account` varchar(50) NOT NULL,
  `action` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `amount` varchar(15) NOT NULL,
  PRIMARY KEY  (`transid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction1`
--

/*!40000 ALTER TABLE `transaction1` DISABLE KEYS */;
INSERT INTO `transaction1` (`transid`,`account`,`action`,`date`,`amount`) VALUES 
 ('0','1000','deposit','2014-07-31','6799'),
 ('1','1000','deposit','2014-07-31','6799'),
 ('2','1000','deposit','2014-07-31','6799'),
 ('3','1001','deposit','2014-07-31','3333'),
 ('4','1001','deposit','2014-07-31','3333'),
 ('5','1002','deposit','2014-07-31','12322'),
 ('6','1000','deposit','2014-07-31','213'),
 ('7','1000','Withdraw','2014-07-31','3454'),
 ('8','1000','Withdraw','2014-07-31','2558');
/*!40000 ALTER TABLE `transaction1` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
