-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for retaliation_gaming_fivem
CREATE DATABASE IF NOT EXISTS `retaliation_gaming_fivem` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `retaliation_gaming_fivem`;

-- Dumping structure for table retaliation_gaming_fivem.players
CREATE TABLE IF NOT EXISTS `players` (
  `id` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `hunger` int(11) DEFAULT NULL,
  `thirst` int(11) DEFAULT NULL,
  `pissrelif` int(11) DEFAULT NULL,
  `shitrelif` int(11) DEFAULT NULL,
  `currentjob` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table retaliation_gaming_fivem.players: ~0 rows (approximately)
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` (`id`, `name`, `money`, `bank`, `hunger`, `thirst`, `pissrelif`, `shitrelif`, `currentjob`) VALUES
	('steam:1100001099953cc', 'Harry Catraz', 5, 5, 10, 10, 10, 10, 'Unemployed');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;