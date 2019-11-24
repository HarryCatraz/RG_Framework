-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5684
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for retaliation_gaming_fivem
CREATE DATABASE IF NOT EXISTS `retaliation_gaming_fivem` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `retaliation_gaming_fivem`;

-- Dumping structure for table retaliation_gaming_fivem.items
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `isIllegal` tinyint(1) NOT NULL DEFAULT '0',
  `canUse` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table retaliation_gaming_fivem.items: ~11 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`, `label`, `isIllegal`, `canUse`) VALUES
	(1, 'Weed', 1, 1),
	(2, 'Cocaine', 1, 1),
	(3, 'Opium', 1, 1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table retaliation_gaming_fivem.players
CREATE TABLE IF NOT EXISTS `players` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '0',
  `bank` int(11) NOT NULL DEFAULT '0',
  `hunger` int(11) NOT NULL DEFAULT '0',
  `thirst` int(11) NOT NULL DEFAULT '0',
  `pissrelif` int(11) NOT NULL DEFAULT '0',
  `shitrelif` int(11) NOT NULL DEFAULT '0',
  `currentjob` varchar(255) NOT NULL DEFAULT 'Unemployed',
  `copWhitelisting` int(1) NOT NULL DEFAULT '0',
  `medicWhitelisting` int(1) NOT NULL DEFAULT '0',
  `staffWhitelisting` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table retaliation_gaming_fivem.players: ~1 rows (approximately)
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` (`id`, `name`, `money`, `bank`, `hunger`, `thirst`, `pissrelif`, `shitrelif`, `currentjob`, `copWhitelisting`, `medicWhitelisting`, `staffWhitelisting`) VALUES
	('steam:1100001099953cc', 'Harry Catraz', 0, 0, 0, 0, 0, 0, '', 0, 0, 0);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;

-- Dumping structure for table retaliation_gaming_fivem.player_inventory
CREATE TABLE IF NOT EXISTS `player_inventory` (
  `id` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  KEY `item_id` (`item_id`),
  CONSTRAINT `player_inventory_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table retaliation_gaming_fivem.player_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_inventory` DISABLE KEYS */;
INSERT INTO `player_inventory` (`id`, `item_id`, `quantity`) VALUES
	('steam:1100001046a0000', 5, 6),
	('steam:1100001046a0000', 6, 1),
	('steam:1100001046a0000', 9, 0),
	('steam:1100001046a0000', 10, 0),
	('steam:1100001046a0000', 11, 0);
/*!40000 ALTER TABLE `player_inventory` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
