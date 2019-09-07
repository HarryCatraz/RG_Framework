-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.13-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5164
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para rpframework
CREATE DATABASE IF NOT EXISTS `rpframework` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `rpframework`;

-- Volcando estructura para tabla rpframework.crimecategories
CREATE TABLE IF NOT EXISTS `crimecategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla rpframework.crimecategories: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `crimecategories` DISABLE KEYS */;
INSERT INTO `crimecategories` (`id`, `name`) VALUES
	(1, 'Anticipatory offenses'),
	(2, 'Offenses against persons'),
	(3, 'Offenses involving theft'),
	(4, 'Offenses involving fraud'),
	(5, 'Offenses involving damage to property'),
	(6, 'Offenses against public administration'),
	(7, 'Offenses against public order'),
	(8, 'Offenses against public health and morals'),
	(9, 'Offenses against public safety'),
	(10, 'Offenses involving operation of a vehicle');
/*!40000 ALTER TABLE `crimecategories` ENABLE KEYS */;

-- Volcando estructura para tabla rpframework.crimeclasses
CREATE TABLE IF NOT EXISTS `crimeclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL,
  `punishment` int(15) NOT NULL,
  `maxpunishment` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla rpframework.crimeclasses: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `crimeclasses` DISABLE KEYS */;
INSERT INTO `crimeclasses` (`id`, `class`, `punishment`, `maxpunishment`) VALUES
	(1, 'Infraction', 0, 0),
	(2, 'B Misdemeanor', 5, 10),
	(3, 'A Misdemeanor', 11, 15),
	(4, 'D Felony', 11, 15),
	(5, 'C Felony', 16, 20),
	(6, 'B Felony', 21, 25),
	(7, 'A Felony', 26, 35),
	(8, 'Unclassified', 0, 0);
/*!40000 ALTER TABLE `crimeclasses` ENABLE KEYS */;

-- Volcando estructura para tabla rpframework.crimes
CREATE TABLE IF NOT EXISTS `crimes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `class` int(15) NOT NULL,
  `penalty` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla rpframework.crimes: ~83 rows (aproximadamente)
/*!40000 ALTER TABLE `crimes` DISABLE KEYS */;
INSERT INTO `crimes` (`id`, `category`, `class`, `penalty`, `name`, `description`) VALUES
	(1, 1, 8, 0, 'Accessory', 'A person is guilty of Accessory when he renders aid to a person who commits such crime.'),
	(2, 1, 8, 0, 'Attempt', 'A person is guilty of Attempt when he engages in conduct which tends to affect commission of such crime.'),
	(3, 1, 8, 0, 'Solicitation', 'A person is guilty of Solicitation when he solicits, requests, or commands a person to commit such crime.'),
	(4, 1, 8, 0, 'Conspiracy', 'A person is guilty of Conspiracy when he plans to commit a crime before the action happens.'),
	(5, 2, 2, 0, 'Assault, 2nd degree', 'A person is guilty of Assault, 2nd degree when he threatens to kill another person.'),
	(6, 2, 4, 0, 'Assault, 1st degree', 'A person is guilty of Assault, 1st degree when he physically hurts another person.'),
	(7, 2, 5, 0, 'Assault, aggravated', 'A person is guilty of Assault, aggravated when he 1) physically hurts another person with a weapon, or 2) threatens to kill a Public Official.'),
	(8, 2, 4, 0, 'Manslaughter, involuntary', 'A person is guilty of Manslaughter, involuntary when he 1) recklessly or accidentally kills another person, or \r\n2) causes or aids another person in suicide.'),
	(9, 2, 5, 0, 'Manslaughter, voluntary', 'A person is guilty of Manslaughter, voluntary when he recklessly or accidentally kills another person with intent to physically hurt the person.'),
	(10, 2, 6, 0, 'Murder, 2nd degree', 'A person is guilty of Murder, 2nd degree when he kills another person with the intent to kill.'),
	(11, 2, 7, 0, 'Murder, 1st degree', 'A person is guilty of Murder, 1st degree when he kills another person with the intent to kill, along with premeditation and deliberation.'),
	(12, 2, 3, 0, 'Unlawful imprisonment', 'A person is guilty of Unlawful imprisonment when he restricts a person\'s movement within any area without justification or consent.'),
	(13, 2, 6, 0, 'Kidnapping, 2nd degree', 'A person is guilty of Kidnapping, 2nd degree when he abducts another person and holds them against their will.'),
	(14, 2, 7, 0, 'Kidnapping, 1st degree', 'A person is guilty of Kidnapping, 1st degree when he abducts a law enforcement officer and holds them against their will.'),
	(15, 3, 6, 0, 'Bank robbery', 'A person is guilty of Bank robbery when he robs a bank.'),
	(16, 3, 4, 0, 'Grand larceny', 'A person is guilty of Grand larceny when he steals a vehicle.'),
	(17, 3, 5, 0, 'Government grand larceny', 'A person is guilty of Government grand larceny when he steals a vehicle that belongs to the government'),
	(18, 3, 4, 0, 'Larceny', 'A person is guilty of Larceny when he steals property excluding vehicles.'),
	(19, 3, 6, 0, 'Robbery', 'A person is guilty of Robbery when he forcibly steals property with a weapon.'),
	(20, 5, 5, 0, 'Burglary', 'A person is guilty of Burglary when he enters knowingly or remains unlawfully in a building with intent to commit a crime.'),
	(21, 5, 3, 0, 'Trespassing', 'A person is guilty of Trespassing when he enters knowingly or remains unlawfully in or upon government premises or private property.'),
	(22, 6, 1, 1000, 'Unlicensed fishing', 'A person is guilty of Unlicensed fishing when he fishes without a proper license.'),
	(23, 6, 4, 0, 'Bribery', 'A person is guilty of Bribery when he confers, or agrees to confer, any benefit upon a public servant upon an\nagreement or understanding that such public servant`s vote, opinion,\njudgment, action, decision or exercise of discretion as a public servant\nwill thereby be influenced.'),
	(24, 6, 7, 0, 'Criminal contempt', 'A person is guilty of Criminal contempt when he acts disruptively in judicial proceedings or intentionally disobeys or resists to the lawful process or other mandate of a court.'),
	(25, 6, 5, 0, 'Criminal possession of stolen property', 'A person is guilty of Criminal possession of stolen property when he possesses any items from a police officer or public official including clothing or weapons.'),
	(26, 6, 5, 0, 'Escaping', 'A person is guilty of Escaping when he escapes the custody of the government.'),
	(27, 6, 7, 0, 'Jailbreak', 'A person is guilty of Jailbreak when he breaks into government buildings designated for detainment or imprisonment with intent to break a prisoner out.'),
	(28, 6, 7, 0, 'Perjury', 'A person is guilty of Perjury when he knowingly lies under oath in judicial proceedings.'),
	(29, 6, 1, 1000, 'Unauthorized practice of law', 'A person is guilty of Unauthorized practice of law when he practices law without a proper bar certification.'),
	(30, 4, 5, 0, 'Extortion', 'A person is guilty of Extortion when he uses threats or force to obtain monetary or material gain.'),
	(31, 4, 4, 0, 'Fraud', 'A person is guilty of Fraud when he wrongfully deceits intending to receive financial or personal gain.'),
	(32, 4, 5, 0, 'Impersonating', 'A person is guilty of Impersonating when he impersonates a law enforcement officer, an emergency medical technician, or other public official.'),
	(33, 7, 3, 0, 'Disobeying a lawful order of police officer', 'A person is guilty of Disobeying a lawful order of police officer when he does not obey an order given by an police officer. '),
	(34, 7, 3, 0, 'Disorderly conduct', 'A person is guilty of Disorderly conduct when he engages in behavior intending to cause public inconvenience.'),
	(35, 7, 1, 2500, 'Disturbing the peace', 'A person is guilty of Disturbing the peace when he plays loud and disturbing music in public.'),
	(36, 7, 2, 0, 'False reporting', 'A person is guilty of False reporting when he reports a false or non existent crime.'),
	(37, 7, 3, 0, 'Harassment', 'A person is guilty of Harassment when he intimidates or pressures another person aggressively with unwelcome words, deeds, actions, or gestures.'),
	(38, 7, 3, 0, 'Obstruction of justice', 'A person is guilty of Obstruction of justice when he hinders the discovery, apprehension, conviction, or punishment of a person who committed a crime.'),
	(39, 7, 2, 0, 'Riot', 'A person is guilty of Riot when he engages in violent conduct or creates a risk of causing public harm with a group of at least four people.'),
	(40, 7, 5, 0, 'Unlawful Surveillance', 'A person is guilty of Unlawful Surveillance when he utilizes a tracking device or taps into a phone.'),
	(41, 9, 5, 0, 'Criminal possession of firearm', 'A person is guilty of Criminal possession of firearm when he possess a class 2 or class 3 weapon.'),
	(42, 9, 5, 0, 'Criminal sale of firearm ', 'A person is guilty of Criminal sale of firearm  when he sells a class 2 or class 3 weapon.'),
	(43, 9, 2, 0, 'Criminal use of firearm', 'A person is guilty of Criminal use of firearm when he discharges a firearm for no legal reason or displays it in a city or town.'),
	(44, 9, 3, 0, 'Evading', 'A person is guilty of Evading when he flees from a police officer to avoid being apprehended, detained, or arrested in a vehicle.'),
	(45, 9, 3, 0, 'Fleeing and eluding', 'A person is guilty of Fleeing and eluding when he flees from a police officer to avoid being apprehended, detained, or arrested while on foot.'),
	(46, 9, 1, 500, 'Jaywalking', 'A person is guilty of Jaywalking when he crosses a road without the use of a crosswalk.'),
	(47, 9, 7, 0, 'Terrorism', 'A person is guilty of Terrorism when he causes mass destruction using explosives, sickness, or extreme violence.'),
	(48, 9, 3, 0, 'Unlicensed possession of a class 2 firearm', 'A person is guilty of Unlicensed possession of a class 2 firearm when he posses a class 2 weapon without a proper license.'),
	(49, 9, 3, 0, 'Unlicensed possession of a class 1 firearm', 'A person is guilty of Unlicensed possession of a class 1 firearm when he posses a class 1 weapon without a proper license.'),
	(50, 10, 3, 0, 'Driving while intoxicated', 'A person is guilty of Driving while intoxicated when he drives while affected by drug or alcohol and intoxication level is 5 or above.'),
	(51, 10, 3, 0, 'Failure to yield to emergency vehicle', 'A person is guilty of Failure to yield to emergency vehicle when he does not pull to the side of the road when an emergency vehicle is trying to pass with sirens enabled.'),
	(52, 10, 1, 1000, 'Failure to yield to stop sign', 'A person is guilty of Failure to yield to stop sign when he does not halt at a stop sign.'),
	(53, 10, 1, 100, 'Failure to use turn signal', 'A person is guilty of Failure to use turn signal when he does not use a turn signal when necessary.'),
	(54, 10, 1, 1000, 'Negligent driving', 'A person is guilty of Negligent driving when he drives in a way that is negligent.'),
	(55, 10, 1, 1000, 'Nonfunctional lights', 'A person is guilty of Nonfunctional lights when he drives with nonfunctional lights at night time.'),
	(56, 10, 1, 250, 'Speeding, 3rd degree ', 'A person is guilty of Speeding, 3rd degree  when he speeds in excess of less than 35 km/h.'),
	(57, 10, 1, 500, 'Speeding, 2nd degree', 'A person is guilty of Speeding, 2nd degree when he speeds in excess of 35 km/h to 70 km/h.'),
	(58, 10, 1, 750, 'Speeding, 1st degree', 'A person is guilty of Speeding, 1st degree when he speeds in excess of more than 70 km/h.'),
	(59, 10, 1, 1000, 'Unauthorized parking', 'A person is guilty of Unauthorized parking when he parks in an area that is unsafe or on government property.'),
	(60, 10, 2, 0, 'Unlicensed operation of aircraft', 'A person is guilty of Unlicensed operation of aircraft when he pilots an aircraft without a proper license.'),
	(61, 10, 1, 2000, 'Unlicensed operation of bus', 'A person is guilty of Unlicensed operation of bus when he drives a bus without a proper license.'),
	(62, 10, 1, 5000, 'Unlicensed operation of truck', 'A person is guilty of Unlicensed operation of truck when he drives a truck without a proper license.'),
	(63, 10, 1, 1000, 'Unlicensed operation of vehicle', 'A person is guilty of Unlicensed operation of vehicle when he drives a car without a proper license.'),
	(64, 10, 1, 1000, 'Window tints', 'A person is guilty of Window tints when he drives with windows above a fifty tint percentage.'),
	(78, 8, 5, 0, 'Manufacturing of controlled substance', 'A person is guilty of Manufacturing of controlled substance when he cooks or posses tools to cook a controlled substance.'),
	(79, 8, 2, 0, 'Possession of controlled substance, 3rd degree', 'A person is guilty of Possession of controlled substance, 3rd degree when he possesses a controlled substance in the amount of one to five.'),
	(80, 8, 3, 0, 'Possession of controlled substance, 2nd degree', 'A person is guilty of Possession of controlled substance, 2nd degree when he possesses a controlled substance in the amount of six to fifteen.'),
	(81, 8, 5, 0, 'Possession of controlled substance, 1st degree', 'A person is guilty of Possession of controlled substance, 1st degree when he possesses a controlled substance in the amount of sixteen or more.'),
	(82, 8, 1, 2500, 'Possession of marijuana, 2nd degree', 'A person is guilty of Possession of marijuana, 2nd degree when he possesses marijuana in the amount of six to fifteen.'),
	(83, 8, 3, 0, 'Possession of marijuana, 1st degree', 'A person is guilty of Possession of marijuana, 1st degree when he possesses marijuana in the amount of sixteen or more.'),
	(84, 8, 3, 0, 'Sale of controlled substance, 3rd degree', 'A person is guilty of Sale of controlled substance, 3rd degree when he sells a controlled substance in the amount of one to five.'),
	(85, 8, 4, 0, 'Sale of controlled substance, 2nd degree', 'A person is guilty of Sale of controlled substance, 2nd degree when he sells a controlled substance in the amount of six to ten.'),
	(86, 8, 5, 0, 'Sale of controlled substance, 1st degree', 'A person is guilty of Sale of controlled substance, 1st degree when he sells a controlled substance in the amount of eleven or more.'),
	(87, 8, 2, 0, 'Sale of marijuana, 3rd degree', 'A person is guilty of Sale of marijuana, 3rd degree when he sells marijuana in the amount of one to five.'),
	(88, 8, 3, 0, 'Sale of marijuana, 2nd degree', 'A person is guilty of Sale of marijuana, 2nd degree when he sells marijuana in the amount of six to ten.'),
	(89, 8, 4, 0, 'Sale of marijuana, 1st degree', 'A person is guilty of Sale of marijuana, 1st degree when he sells marijuana in the amount of eleven or more.'),
	(96, 6, 1, 1000, 'Unlicensed logging', 'A person is guilty of Unlicensed logging when he logs without a proper license.'),
	(97, 6, 1, 1000, 'Unlicensed mining', 'A person is guilty of Unlicensed mining when he mines without a proper license.'),
	(98, 6, 1, 7500, 'Unlicensed oil trading', 'A person is guilty of Unlicensed oil trading when he trades oil without a proper license.'),
	(99, 6, 3, 0, 'Tax evasion, 2nd degree', 'A person is guilty of Tax Evasion, 2nd degree when he has an unpaid amount of $1,000 to $2,000'),
	(100, 6, 5, 0, 'Tax evasion, 1st degree', 'A person is guilty of Tax Evasion, 1st degree when he has an unpaid amount of $2,001 or more.'),
	(101, 6, 7, 0, 'Embezzlement', 'A person is guilty of Embezzlement when he steals or misappropriates funds that are used for a specific purpose.'),
	(102, 6, 5, 0, 'Ethical violation', 'A person is guilty of Ethical violation when, while acting as a sworn law enforcement officer or a public official, he knowingly manipulates the judicial system to benefit a person charged with a crime.');
/*!40000 ALTER TABLE `crimes` ENABLE KEYS */;

-- Volcando estructura para tabla rpframework.garage
CREATE TABLE IF NOT EXISTS `garage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(45) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `finish` varchar(45) DEFAULT NULL,
  `rims` varchar(45) DEFAULT NULL,
  `windows` varchar(45) DEFAULT NULL,
  `lights` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `statuses` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `spoiler` varchar(45) NOT NULL,
  `fuel` varchar(45) NOT NULL,
  `damage` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehicleID_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla rpframework.garage: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `garage` DISABLE KEYS */;
INSERT INTO `garage` (`id`, `license`, `class`, `color`, `finish`, `rims`, `windows`, `lights`, `owner`, `statuses`, `created_at`, `updated_at`, `spoiler`, `fuel`, `damage`) VALUES
	(1, 'vnm7095', 'FerrariF40_Car1', 'awesome', 'PearlescentGreen', 'amaranth', '0.5', '0.5', '76561197995693059', '1', '2017-12-25 19:33:59', '2018-02-10 10:34:15', '0', '0.857645', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]');
/*!40000 ALTER TABLE `garage` ENABLE KEYS */;

-- Volcando estructura para tabla rpframework.general
CREATE TABLE IF NOT EXISTS `general` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla rpframework.general: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `general` DISABLE KEYS */;
INSERT INTO `general` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'casinoRate', '60', '2017-02-12 07:32:41', '2018-03-10 22:35:23'),
	(2, 'taxRate', '5', '2017-02-12 07:32:41', '2017-04-23 17:13:25'),
	(3, 'mafiaStash', '[[["RH_g17"],[1]],[["np_tequila","np_beer","np_ironbar1","NP_Wood","np_copperbar1","np_silverbar1","CG_wheel","np_MetalFenceGrey","RH_17Rnd_9x19_g17"],[3,7,256,114,229,44,2,2,2]],[["TRYK_Headphone_NV","TRYK_TAC_EARMUFF_SHADE","TRYK_Headset_NV","TRYK_G_Shades_Black_NV","CUP_U_C_Labcoat_02","H_Hat_grey","ItemGPS","H_Hat_tan","vvv_traje_mafioso_F_1","TRYK_Kio_Balaclava","TRYK_U_B_wh_blk_Rollup_CombatUniform","TRYK_balaclava_BLACK_NV"],[2,6,2,8,1,1,1,1,1,1,1,1]],[[],[]]]', '2017-02-12 20:02:07', '2017-05-04 09:21:54'),
	(4, 'bikerStash', '[[["CG_PICKAXE","RH_Deagleg","Binocular","epic_fishing_rod","RH_gsh18","CG_BAT","Press_Mic_ZDF_F","RH_Deaglem","RH_g17"],[2,1,4,1,1,2,1,1,2]],[["np_copperbar1","CG_OilCanister","CG_wheel","Fish_Mackerel_7","NP_Wood","np_ironbar1","NP_kPelt","NP_drillitem","RH_7Rnd_50_AE","np_silverbar1","NP_Pelt","np_tequila","NP_uPelt","RH_18Rnd_9x19_gsh","np_tuna","np_chickensoup","np_psoup","np_peasoup","sharp_swing","np_water","CG_Lockpick","RH_6Rnd_357_Mag","nonlethal_swing","NP_DrugTable","NP_GrowingPlot"],[320,274,24,10,193,209,21,2,4,210,200,2,10,10,213,2,3,1,3,1,1,1,1,1,1]],[["Kio_Pirate_Hat","TRYK_balaclava_BLACK_NV","female_default_1","TRYK_H_Bandana_wig_g","acj_casco_calavera","acj_casco_espider","acj_casco_germani"],[2,1,2,1,1,1,1]],[[],[]]]', '2017-02-12 20:02:07', '2017-05-04 16:39:57'),
	(5, 'mobsterStash', '[[["arifle_mas_ww2_mp44","hlc_rifle_M21","arifle_mas_ww2_ppsh","bnae_M97_virtual"],[83,1,1,1]],[["CG_Lockpick","CG_MethBag100","30Rnd_mas_ww2_mp44","NP_DrugTable","np_goldscanner","np_groceries","CG_Cocaine","CG_MetalWire","np_SatchelCharge","CG_C4","np_goldbar","6Rnd_B_00_buckshot","CG_WeedBag4"],[2,6,540,1,2,10,39,1,19,1,84,4,2]],[["U_B_Wetsuit","V_RebreatherB","CUP_U_O_SLA_MixedCamo","TRYK_balaclava_BLACK_NV","TRYK_bandana_NV","CUP_H_RUS_Beret_VDV","vvv_traje_mafioso_F_1"],[1,1,2,1,3,1,1]],[[],[]]]', '2017-02-12 20:02:07', '2018-03-10 22:34:24'),
	(6, 'mafiaBank', '13501', '2017-02-12 20:02:07', '2017-04-28 22:19:37'),
	(7, 'bikerBank', '276625', '2017-02-12 20:02:07', '2017-05-04 18:52:33'),
	(8, 'mobsterBank', '3.03463e+006', '2017-02-12 20:02:07', '2017-05-04 16:47:08'),
	(9, 'currentMayorGUID', '""', '2017-02-12 20:02:07', '2017-04-26 05:59:11'),
	(10, 'currentPresidentSenateGUID', '""', '2017-02-12 20:02:07', '2017-04-26 05:58:59'),
	(11, 'govtBank', '2.18972e+006', '2017-02-12 20:25:30', '2018-03-10 22:32:59'),
	(14, 'currentSenatorsGUID', '[]', '2017-03-24 17:46:43', '2017-04-26 05:59:05'),
	(15, 'casinoVault', '3851', '2017-03-27 02:30:53', '2017-05-04 16:47:11');
/*!40000 ALTER TABLE `general` ENABLE KEYS */;

-- Volcando estructura para tabla rpframework.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steamid` varchar(255) NOT NULL,
  `license` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla rpframework.licenses: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` (`id`, `steamid`, `license`, `created_at`) VALUES
	(1, '76561197995693059', 0, '2017-12-23 20:04:05'),
	(2, '76561197995693059', 18, '2018-01-27 07:00:10'),
	(3, '76561197995693059', 22, '2018-01-27 07:00:25'),
	(4, '76561197995693059', 5, '2018-01-27 07:00:31'),
	(5, '76561197995693059', 21, '2018-01-27 07:00:34'),
	(6, '76561197995693059', 6, '2018-01-27 07:00:38'),
	(7, '76561197995693059', 4, '2018-01-27 07:00:43');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Volcando estructura para tabla rpframework.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `description` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla rpframework.logs: ~33 rows (aproximadamente)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'govtBank', 'florentino perez (76561197995693059) removed $3.54 into the Government bank account because of salary.', '2017-12-23 20:08:52', '2017-12-23 20:08:52'),
	(2, 'govtBank', 'florentino perez (76561197995693059) removed $3.58 into the Government bank account because of salary.', '2017-12-23 20:13:52', '2017-12-23 20:13:52'),
	(3, 'govtBank', 'florentino perez (76561197995693059) removed $3.54 into the Government bank account because of salary.', '2017-12-23 20:18:54', '2017-12-23 20:18:54'),
	(4, 'govtBank', 'florentino perez (76561197995693059) removed $3.57 into the Government bank account because of salary.', '2017-12-23 20:23:53', '2017-12-23 20:23:53'),
	(5, 'govtBank', 'florentino perez (76561197995693059) removed $3.57 into the Government bank account because of salary.', '2017-12-25 19:41:06', '2017-12-25 19:41:06'),
	(6, 'govtBank', 'florentino perez (76561197995693059) removed $3.54 into the Government bank account because of salary.', '2017-12-25 19:46:08', '2017-12-25 19:46:08'),
	(7, 'govtBank', 'florentino perez (76561197995693059) removed $3.56 into the Government bank account because of salary.', '2017-12-25 19:51:08', '2017-12-25 19:51:08'),
	(8, 'govtBank', 'florentino perez (76561197995693059) removed $3.55 into the Government bank account because of salary.', '2017-12-25 19:56:08', '2017-12-25 19:56:08'),
	(9, 'govtBank', 'florentino perez (76561197995693059) removed $3.55 into the Government bank account because of salary.', '2017-12-25 20:03:37', '2017-12-25 20:03:37'),
	(10, 'govtBank', 'florentino perez (76561197995693059) elimino $3.54 de la cuenta del banco del gobierno debido a los salarios.', '2018-01-26 21:47:20', '2018-01-26 21:47:20'),
	(11, 'govtBank', 'florentino perez (76561197995693059) elimino $3.55 de la cuenta del banco del gobierno debido a los salarios.', '2018-01-26 21:52:20', '2018-01-26 21:52:20'),
	(12, 'govtBank', 'florentino perez (76561197995693059) elimino $3.55 de la cuenta del banco del gobierno debido a los salarios.', '2018-01-26 22:10:41', '2018-01-26 22:10:41'),
	(13, 'govtBank', 'florentino perez (76561197995693059) elimino $3.55 de la cuenta del banco del gobierno debido a los salarios.', '2018-01-27 06:45:46', '2018-01-27 06:45:46'),
	(14, 'govtBank', 'florentino perez (76561197995693059) elimino $3.53 de la cuenta del banco del gobierno debido a los salarios.', '2018-01-27 06:50:46', '2018-01-27 06:50:46'),
	(15, 'govtBank', 'florentino perez (76561197995693059) elimino $3.54 de la cuenta del banco del gobierno debido a los salarios.', '2018-01-27 06:55:47', '2018-01-27 06:55:47'),
	(16, 'govtBank', 'florentino perez (76561197995693059) añadio $750.00 a la cuenta bancaria del gobierno.', '2018-01-27 06:58:56', '2018-01-27 06:58:56'),
	(17, 'govtBank', 'florentino perez (76561197995693059) añadio $500.00 a la cuenta bancaria del gobierno.', '2018-01-27 06:59:00', '2018-01-27 06:59:00'),
	(18, 'govtBank', 'florentino perez (76561197995693059) añadio $250.00 a la cuenta bancaria del gobierno.', '2018-01-27 06:59:03', '2018-01-27 06:59:03'),
	(19, 'govtBank', 'florentino perez (76561197995693059) añadio any a la cuenta bancaria del gobierno.', '2018-01-27 07:00:10', '2018-01-27 07:00:10'),
	(20, 'govtBank', 'florentino perez (76561197995693059) añadio any a la cuenta bancaria del gobierno.', '2018-01-27 07:00:25', '2018-01-27 07:00:25'),
	(21, 'govtBank', 'florentino perez (76561197995693059) añadio any a la cuenta bancaria del gobierno.', '2018-01-27 07:00:31', '2018-01-27 07:00:31'),
	(22, 'govtBank', 'florentino perez (76561197995693059) añadio any a la cuenta bancaria del gobierno.', '2018-01-27 07:00:34', '2018-01-27 07:00:34'),
	(23, 'govtBank', 'florentino perez (76561197995693059) añadio any a la cuenta bancaria del gobierno.', '2018-01-27 07:00:38', '2018-01-27 07:00:38'),
	(24, 'govtBank', 'florentino perez (76561197995693059) añadio any a la cuenta bancaria del gobierno.', '2018-01-27 07:00:43', '2018-01-27 07:00:43'),
	(25, 'govtBank', 'florentino perez (76561197995693059) elimino $17.50 de la cuenta del banco del gobierno debido a los salarios.', '2018-01-27 07:00:46', '2018-01-27 07:00:46'),
	(26, 'govtBank', 'florentino perez (76561197995693059) elimino $3.55 de la cuenta del banco del gobierno debido a los salarios.', '2018-02-10 10:29:14', '2018-02-10 10:29:14'),
	(27, 'govtBank', 'florentino perez (76561197995693059) elimino $3.55 de la cuenta del banco del gobierno debido a los salarios.', '2018-02-10 10:34:15', '2018-02-10 10:34:15'),
	(28, 'govtBank', 'florentino perez (76561197995693059) removed $3.57 into the Government bank account because of salary.', '2018-03-10 21:42:05', '2018-03-10 21:42:05'),
	(29, 'govtBank', 'florentino perez (76561197995693059) removed $3.54 into the Government bank account because of salary.', '2018-03-10 21:47:05', '2018-03-10 21:47:05'),
	(30, 'govtBank', 'florentino perez (76561197995693059) removed $3.56 into the Government bank account because of salary.', '2018-03-10 21:52:05', '2018-03-10 21:52:05'),
	(31, 'govtBank', 'florentino perez (76561197995693059) removed $3.54 into the Government bank account because of salary.', '2018-03-10 22:12:42', '2018-03-10 22:12:42'),
	(32, 'govtBank', 'florentino perez (76561197995693059) removed $3.55 into the Government bank account because of salary.', '2018-03-10 22:27:58', '2018-03-10 22:27:58'),
	(33, 'govtBank', 'florentino perez (76561197995693059) removed $3.54 into the Government bank account because of salary.', '2018-03-10 22:32:59', '2018-03-10 22:32:59');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;

-- Volcando estructura para tabla rpframework.mail
CREATE TABLE IF NOT EXISTS `mail` (
  `idmail` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(10000) DEFAULT NULL,
  `title` varchar(145) DEFAULT NULL,
  `sender` varchar(145) DEFAULT NULL,
  `receiver` varchar(45) DEFAULT NULL,
  `readmail` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idmail`),
  UNIQUE KEY `idmail_UNIQUE` (`idmail`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla rpframework.mail: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
INSERT INTO `mail` (`idmail`, `message`, `title`, `sender`, `receiver`, `readmail`, `created_at`, `updated_at`) VALUES
	(1, 'You have been issued a ticket for speeding. Go to the court house to pay it off or face legal consequences.', 'Ticket', 'Silver Lake', '76561197995693059', 1, '2017-12-23 20:14:03', '2017-12-25 19:36:33'),
	(2, 'You have been issued a ticket for speeding. Go to the court house to pay it off or face legal consequences.', 'Ticket', 'Silver Lake', '76561197995693059', 0, '2017-12-25 20:00:50', '2017-12-25 20:00:50'),
	(3, 'You have been issued a ticket for speeding. Go to the court house to pay it off or face legal consequences.', 'Ticket', 'Silver Lake', '76561197995693059', 0, '2017-12-25 20:02:38', '2017-12-25 20:02:38'),
	(4, 'Le han emitido una multa por exceso de velocidad. Vaya al juzgado a pagarla o puede tener consecuencias legales.', 'Ticket', 'Silver Lake', '76561197995693059', 0, '2018-01-27 06:57:32', '2018-01-27 06:57:32');
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;

-- Volcando estructura para tabla rpframework.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `idmessages` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(10000) DEFAULT NULL,
  `title` varchar(145) DEFAULT NULL,
  `sender` varchar(145) DEFAULT NULL,
  `receiver` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idmessages`),
  UNIQUE KEY `idmessages_UNIQUE` (`idmessages`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla rpframework.messages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

-- Volcando estructura para tabla rpframework.racetimes
CREATE TABLE IF NOT EXISTS `racetimes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(45) DEFAULT NULL,
  `name` varchar(245) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla rpframework.racetimes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `racetimes` DISABLE KEYS */;
/*!40000 ALTER TABLE `racetimes` ENABLE KEYS */;

-- Volcando estructura para tabla rpframework.rallyracetimes
CREATE TABLE IF NOT EXISTS `rallyracetimes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(45) DEFAULT NULL,
  `name` varchar(245) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla rpframework.rallyracetimes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `rallyracetimes` DISABLE KEYS */;
/*!40000 ALTER TABLE `rallyracetimes` ENABLE KEYS */;

-- Volcando estructura para tabla rpframework.users
CREATE TABLE IF NOT EXISTS `users` (
  `bankaccount` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) DEFAULT NULL,
  `battleyeid` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `cash` decimal(13,2) DEFAULT NULL,
  `bank` decimal(13,2) DEFAULT NULL,
  `cop` int(13) DEFAULT NULL,
  `ems` int(13) DEFAULT NULL,
  `mafia` int(13) DEFAULT NULL,
  `legal` int(13) DEFAULT NULL,
  `fire` int(13) DEFAULT NULL,
  `mobster` int(13) DEFAULT NULL,
  `biker` int(13) DEFAULT NULL,
  `dmv` int(13) DEFAULT NULL,
  `doc` int(13) DEFAULT NULL,
  `da` int(13) DEFAULT NULL,
  `admin` int(13) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `items` varchar(1500) DEFAULT NULL,
  `phoneBackground` varchar(55) DEFAULT NULL,
  `messages` varchar(2500) DEFAULT NULL,
  `statuses` varchar(2500) DEFAULT NULL,
  `houselevel` int(11) DEFAULT NULL,
  `housecontent` varchar(10000) DEFAULT NULL,
  `shopcontent` varchar(10000) DEFAULT NULL,
  `shopname` varchar(45) DEFAULT NULL,
  `prison` varchar(45) DEFAULT NULL,
  `prisonreason` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bankaccount`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla rpframework.users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`bankaccount`, `uid`, `battleyeid`, `name`, `cash`, `bank`, `cop`, `ems`, `mafia`, `legal`, `fire`, `mobster`, `biker`, `dmv`, `doc`, `da`, `admin`, `position`, `items`, `phoneBackground`, `messages`, `statuses`, `houselevel`, `housecontent`, `shopcontent`, `shopname`, `prison`, `prisonreason`, `created_at`, `updated_at`) VALUES
	(2, '76561197995693059', NULL, 'florentino perez', 666835.81, 20000820.00, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, '[6789.02,4636.34,0.00143814]', '[[],["CG_BAT","","","",[],[],""],[],["U_C_TeeSurfer_shorts_1",[]],["brotherhood_10",[]],[],"acj_casco_gris","",[],["ItemMap","","cg_tabletd_1","ItemCompass","tf_microdagr",""]]', '[80001,1]', '[]', '[[21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],75,72.5,92,0,0,0,[0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],2,[0,0,0,0,0],["nobody",0,"no reason","NO DATE"],["76561197995693059","0"],7.1]', 1, '[[[],[]],[[],[]],[[],[]],[[],[]]]', '[[[],[],[]],[[],[],[]],[[],[],[]],[[],[],[]]]', 'florentino perez\'s Store', '0', 'none', '2017-12-25 19:33:58', '2018-03-10 22:36:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla rpframework.wanted
CREATE TABLE IF NOT EXISTS `wanted` (
  `caseID` int(10) NOT NULL AUTO_INCREMENT,
  `suspect` varchar(45) DEFAULT NULL,
  `suspectGUID` varchar(45) DEFAULT NULL,
  `officer` varchar(45) DEFAULT NULL,
  `officerGUID` varchar(45) DEFAULT NULL,
  `approved` varchar(45) DEFAULT NULL,
  `approvedGUID` varchar(45) DEFAULT NULL,
  `closed` varchar(45) DEFAULT NULL,
  `closedGUID` varchar(45) DEFAULT NULL,
  `charges` varchar(3000) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `evidence` varchar(45) DEFAULT NULL,
  `active` varchar(45) DEFAULT NULL,
  `jailtime` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`caseID`),
  UNIQUE KEY `caseID_UNIQUE` (`caseID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla rpframework.wanted: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `wanted` DISABLE KEYS */;
INSERT INTO `wanted` (`caseID`, `suspect`, `suspectGUID`, `officer`, `officerGUID`, `approved`, `approvedGUID`, `closed`, `closedGUID`, `charges`, `status`, `evidence`, `active`, `jailtime`, `created_at`, `updated_at`) VALUES
	(1, 'florentino perez', '76561197995693059', 'Silver Lake', '0', '', '', 'florentino perez', '76561197995693059', '1x Speeding, 3rd degree.', '2', '1', '0', '250', '2017-12-25 20:00:50', '2018-01-27 06:59:03'),
	(2, 'florentino perez', '76561197995693059', 'Silver Lake', '0', '', '', 'florentino perez', '76561197995693059', '1x Speeding, 2nd degree.', '2', '1', '0', '500', '2017-12-25 20:02:38', '2018-01-27 06:59:00'),
	(3, 'florentino perez', '76561197995693059', 'Silver Lake', '0', '', '', 'florentino perez', '76561197995693059', '1x Speeding, 1st degree.', '2', '1', '0', '750', '2018-01-27 06:57:32', '2018-01-27 06:58:56');
/*!40000 ALTER TABLE `wanted` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
