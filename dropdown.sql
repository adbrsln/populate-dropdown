-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for populatenegeri
CREATE DATABASE IF NOT EXISTS `populatenegeri` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `populatenegeri`;

-- Dumping structure for table populatenegeri.daerah
CREATE TABLE IF NOT EXISTS `daerah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `idNegeri` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_daerah_negeri` (`idNegeri`),
  CONSTRAINT `FK_daerah_negeri` FOREIGN KEY (`idNegeri`) REFERENCES `negeri` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table populatenegeri.daerah: ~1 rows (approximately)
DELETE FROM `daerah`;
/*!40000 ALTER TABLE `daerah` DISABLE KEYS */;
INSERT INTO `daerah` (`id`, `nama`, `idNegeri`) VALUES
	(1, 'Hulu Selangor', 1),
	(2, 'Gombak', 1),
	(3, 'Kodiang', 2);
/*!40000 ALTER TABLE `daerah` ENABLE KEYS */;

-- Dumping structure for table populatenegeri.negeri
CREATE TABLE IF NOT EXISTS `negeri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table populatenegeri.negeri: ~3 rows (approximately)
DELETE FROM `negeri`;
/*!40000 ALTER TABLE `negeri` DISABLE KEYS */;
INSERT INTO `negeri` (`id`, `nama`) VALUES
	(1, 'Selangor'),
	(2, 'Kedah'),
	(3, 'Perlis');
/*!40000 ALTER TABLE `negeri` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
