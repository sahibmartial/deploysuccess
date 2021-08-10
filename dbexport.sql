-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

-- CREATE DATABASE `ferme` /*!40100 DEFAULT CHARACTER SET utf8 */;
-- USE `ferme`;

DROP TABLE IF EXISTS `accessoires`;
CREATE TABLE `accessoires` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_achat` date DEFAULT NULL,
  `campagne_id` bigint(20) unsigned NOT NULL,
  `campagne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` int(11) NOT NULL,
  `priceUnitaire` int(11) NOT NULL,
  `obs` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accessoires_campagne_id_foreign` (`campagne_id`),
  CONSTRAINT `accessoires_campagne_id_foreign` FOREIGN KEY (`campagne_id`) REFERENCES `campagnes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `accessoires`;
INSERT INTO `accessoires` (`id`, `date_achat`, `campagne_id`, `campagne`, `libelle`, `quantite`, `priceUnitaire`, `obs`, `created_at`, `updated_at`) VALUES
(1,	NULL,	1,	'campagne1',	'mangoire',	10,	2500,	'renfort campagne5',	'2020-10-15 18:30:20',	'2020-10-15 18:30:20'),
(2,	NULL,	1,	'campagne1',	'abreuvoirs',	5,	3000,	'Testing',	'2020-10-20 16:04:39',	'2020-10-20 16:04:39'),
(3,	'2020-10-16',	2,	'campagne5',	'JAVEL',	1,	500,	'DESINFECTION',	'2020-11-02 19:07:22',	'2020-11-05 18:49:16'),
(4,	'2020-10-16',	2,	'campagne5',	'VIRILET',	1,	1500,	'RAS',	'2020-11-02 19:07:22',	'2020-11-05 18:50:33'),
(5,	'2020-10-16',	2,	'campagne5',	'COPEAUX DE BOIS',	6,	200,	'RAS',	'2020-11-02 19:07:22',	'2020-11-05 18:52:02'),
(6,	'2020-10-16',	2,	'campagne5',	'VACIN ET VITAMINES',	1,	31500,	'RAS',	'2020-11-02 19:08:25',	'2020-11-05 18:54:43'),
(7,	'2020-10-10',	2,	'campagne5',	'MANGEOIRE',	4,	2500,	'RENFORCEMENT EQUIPEMENT',	'2020-11-02 19:09:08',	'2020-11-05 19:04:52'),
(8,	'2020-10-16',	2,	'campagne5',	'ABREUVOIR',	3,	3000,	'RENFORCEMENT EQUIPEMENT',	'2020-11-02 19:10:05',	'2020-11-05 19:05:48'),
(9,	'2020-10-16',	2,	'campagne5',	'CHARBON',	3,	2500,	'SAC DE 50 KG',	'2020-11-02 19:13:47',	'2020-11-05 19:07:02'),
(10,	'2020-10-16',	2,	'campagne5',	'EAU',	1,	2000,	'adduction d\'eau',	'2020-11-02 19:14:33',	'2020-11-05 19:09:47'),
(16,	'2020-11-11',	2,	'campagne5',	'TMPS PLUS',	2,	3500,	'TMPS_PLUS VITAMINE',	'2020-11-25 22:40:28',	'2020-11-25 22:40:28'),
(17,	'2020-11-11',	2,	'campagne5',	'AMINOVITPLUS',	1,	2500,	'VITAMINE',	'2020-11-25 22:50:40',	'2020-11-25 22:50:40'),
(18,	'2020-11-20',	2,	'campagne5',	'MEDICAMENT',	1,	3000,	'SOIN -TOUX CONSTATES',	'2020-11-25 22:50:40',	'2020-11-25 22:50:40'),
(19,	'2020-11-20',	2,	'campagne5',	'MEDIACMENT',	1,	2000,	'SOIN TOUX CONSTATES',	'2020-11-25 22:50:40',	'2020-11-25 22:50:40'),
(20,	'2020-12-01',	2,	'campagne5',	'MEDICAMENT',	1,	3500,	'TOUX CONSTATE',	'2020-12-08 21:02:45',	'2020-12-08 21:02:45'),
(21,	'2020-12-01',	2,	'campagne5',	'EAU',	1,	1500,	'ADDUCTION D\'EAU',	'2020-12-08 21:05:54',	'2020-12-08 21:05:54'),
(22,	'2020-12-14',	2,	'campagne5',	'GRILLAGE',	13,	600,	'GRILLAGE',	'2020-12-14 22:17:34',	'2020-12-14 22:17:34'),
(23,	'2020-12-11',	2,	'campagne5',	'OXYVET PLUS',	2,	6000,	'MEDICAMENTS',	'2020-12-14 22:20:07',	'2020-12-14 22:20:07'),
(24,	'2021-02-02',	4,	'campagne6',	'SEAU',	2,	1300,	'RAS',	'2021-02-14 22:15:16',	'2021-02-14 22:15:16'),
(25,	'2021-02-02',	4,	'campagne6',	'AMPOULE',	1,	2500,	'RAS',	'2021-02-14 22:15:16',	'2021-02-14 22:15:16'),
(26,	'2021-02-02',	4,	'campagne6',	'JAVEL',	1,	500,	'RAS',	'2021-02-14 22:16:42',	'2021-02-14 22:16:42'),
(27,	'2021-02-02',	4,	'campagne6',	'SEAU',	1,	1000,	'RAS',	'2021-02-14 22:16:42',	'2021-02-14 22:16:42'),
(28,	'2021-02-02',	4,	'campagne6',	'CHARBON',	2,	6000,	'RAS',	'2021-02-14 22:19:33',	'2021-02-14 22:19:33'),
(29,	'2021-02-02',	4,	'campagne6',	'VACCIN',	1,	7000,	'RAS',	'2021-02-14 22:19:33',	'2021-02-14 22:19:33'),
(30,	'2021-02-02',	4,	'campagne6',	'VITAMINE ANTICORSE',	2,	3250,	'RAS',	'2021-02-14 22:25:26',	'2021-02-14 22:25:26'),
(31,	'2021-02-02',	4,	'campagne6',	'VITAMINE ALPHACELIM',	2,	2500,	'RAS',	'2021-02-14 22:25:26',	'2021-02-14 22:25:26'),
(32,	'2021-02-02',	4,	'campagne6',	'VITAMINOLITE SUPER',	3,	1000,	'RAS',	'2021-02-14 22:25:26',	'2021-02-14 22:25:26'),
(33,	'2021-02-02',	4,	'campagne6',	'MANGEOIRE',	5,	2500,	'RAS',	'2021-02-14 22:29:03',	'2021-02-14 22:29:03'),
(34,	'2021-02-02',	4,	'campagne6',	'FIL D\'ATTACHE',	1,	1000,	'RAS',	'2021-02-14 22:29:03',	'2021-02-14 22:29:03'),
(35,	'2021-02-06',	4,	'campagne6',	'AMOVIT',	1,	3500,	'RAS',	'2021-02-14 22:42:28',	'2021-02-14 22:42:28'),
(36,	'2021-02-06',	4,	'campagne6',	'EAU',	1,	4000,	'RAS',	'2021-02-14 22:42:28',	'2021-02-14 22:42:28'),
(37,	'2021-02-01',	4,	'campagne6',	'ECART A REGULARISER',	1,	40150,	'Achats non comptabilisés à régulariser',	'2021-04-02 11:32:01',	'2021-04-02 11:32:01'),
(38,	'2021-03-03',	4,	'campagne6',	'MEDICAMENT',	1,	2500,	'RAS',	'2021-04-02 11:32:02',	'2021-04-02 11:32:02'),
(39,	'2021-03-03',	4,	'campagne6',	'MEDICAMENT',	1,	7000,	'RAS',	'2021-04-02 11:32:02',	'2021-04-02 11:32:02'),
(40,	'2021-03-03',	4,	'campagne6',	'MEDICAMENT',	1,	5000,	'RAS',	'2021-04-02 11:32:02',	'2021-04-02 11:32:02'),
(41,	'2021-03-03',	4,	'campagne6',	'MEDICAMENT',	1,	3000,	'RAS',	'2021-04-02 11:32:02',	'2021-04-02 11:32:02'),
(42,	'2021-03-03',	4,	'campagne6',	'EAU',	1,	6000,	'RAS',	'2021-04-02 11:37:23',	'2021-04-02 11:37:23'),
(43,	'2021-03-03',	4,	'campagne6',	'VITAMINE',	1,	5000,	'RAS',	'2021-04-02 11:37:23',	'2021-04-02 11:37:23'),
(44,	'2021-03-03',	4,	'campagne6',	'VITAMINE VETACOX',	1,	4500,	'RAS',	'2021-04-02 11:37:23',	'2021-04-02 11:37:23'),
(45,	'2021-03-03',	4,	'campagne6',	'VITAMINE KENFLOX',	1,	4000,	'RAS',	'2021-04-02 11:37:23',	'2021-04-02 11:37:23'),
(46,	'2021-03-03',	4,	'campagne6',	'MEDICAMENT',	1,	7000,	'RAS',	'2021-04-02 11:37:23',	'2021-04-02 11:37:23'),
(47,	'2021-03-17',	4,	'campagne6',	'EAU',	1,	1500,	'RAS',	'2021-04-02 11:48:00',	'2021-04-02 11:48:00'),
(48,	'2021-03-17',	4,	'campagne6',	'NOURRITURE EDMOND',	1,	1000,	'NOURRITURE EDMOND',	'2021-04-02 11:48:01',	'2021-04-02 11:48:01'),
(49,	'2021-03-23',	4,	'campagne6',	'MEDICAMENT',	1,	16000,	'RAS',	'2021-04-02 11:48:01',	'2021-04-02 11:48:01'),
(50,	'2021-03-26',	4,	'campagne6',	'MEDICAMENT',	1,	15000,	'maladie à traiter',	'2021-04-02 11:48:01',	'2021-04-02 11:48:01'),
(51,	'2021-03-26',	4,	'campagne6',	'MEDICAMENT VIRILET',	1,	3000,	'RAS',	'2021-04-02 11:48:01',	'2021-04-02 11:48:01'),
(52,	'2021-03-26',	4,	'campagne6',	'MEDICAMENT',	1,	5000,	'RAS',	'2021-04-02 11:48:01',	'2021-04-02 11:48:01'),
(53,	'2021-04-07',	4,	'campagne6',	'facture electricité',	1,	10000,	'facture électricité pour conservation',	'2021-04-21 15:12:17',	'2021-04-21 15:12:17'),
(54,	'2021-04-07',	4,	'campagne6',	'SACHET',	1,	2150,	'Achat sachet pour la vente des poulets',	'2021-04-21 15:12:17',	'2021-04-21 15:12:17'),
(55,	'2021-04-07',	4,	'campagne6',	'ecart',	1,	3400,	'RAS',	'2021-04-21 19:03:09',	'2021-04-21 19:03:09'),
(56,	'2021-05-03',	5,	'campagne7',	'VIRKON S',	1,	20000,	'MÉDICAMENT-DÉSINFECTANT',	'2021-05-03 19:36:54',	'2021-05-03 19:36:54'),
(57,	'2021-05-03',	5,	'campagne7',	'NETTOYAGE',	1,	2000,	'NETTOYAGE PARCELLE',	'2021-05-03 19:36:54',	'2021-05-03 19:36:54'),
(58,	'2021-05-03',	5,	'campagne7',	'NETTOYAGE',	1,	8100,	'INSECTICIDE , JAVEL,OMO, EAU, pour entretien de la ferme',	'2021-05-03 19:36:54',	'2021-05-03 19:36:54'),
(59,	'2021-05-03',	5,	'campagne7',	'SUPER VITASOL',	2,	7000,	'VITAMINE',	'2021-05-03 19:49:54',	'2021-05-03 19:49:54'),
(60,	'2021-05-03',	5,	'campagne7',	'VACCIN GOMBORO',	1,	3000,	'VACCIN GOMBORO',	'2021-05-03 19:49:55',	'2021-05-03 19:49:55'),
(61,	'2021-05-03',	5,	'campagne7',	'VACCIN HB1 ET H120',	1,	3500,	'VACCIN',	'2021-05-03 19:49:55',	'2021-05-03 19:49:55'),
(62,	'2021-05-03',	5,	'campagne7',	'VETACOX',	1,	4500,	'ANTICCOCIDIENS',	'2021-05-03 19:55:41',	'2021-05-03 19:55:41'),
(63,	'2021-05-03',	5,	'campagne7',	'BACHE',	1,	3600,	'BACHE',	'2021-05-03 19:55:41',	'2021-05-03 19:55:41'),
(64,	'2021-05-03',	5,	'campagne7',	'CHARBON',	2,	3000,	'CHARBON',	'2021-05-03 19:55:41',	'2021-05-03 19:55:41'),
(65,	'2021-05-03',	5,	'campagne7',	'BIDON',	10,	270,	'BIDON D\'EAU',	'2021-05-03 19:55:41',	'2021-05-03 19:55:41'),
(66,	'2021-05-03',	5,	'campagne7',	'COPEAU DE BOIS',	1,	1000,	'COPEAUX DE BOIS',	'2021-05-03 19:55:41',	'2021-05-03 19:55:41'),
(67,	'2021-05-03',	5,	'campagne7',	'EAU',	1,	2000,	'EAU',	'2021-05-03 19:56:21',	'2021-05-03 19:56:21'),
(68,	'2021-05-07',	5,	'campagne7',	'VETEMENTS TEE SHIRT',	4,	1000,	'HABILLEMENT FERME',	'2021-05-10 06:28:14',	'2021-05-10 06:28:14'),
(69,	'2021-05-12',	5,	'campagne7',	'facture electricité',	1,	5000,	'ELECTRICITE',	'2021-05-27 16:20:14',	'2021-05-27 16:20:14'),
(70,	'2021-05-26',	5,	'campagne7',	'VACCIN GOMBORO 1ER RAPPEL',	1,	3500,	'1ER RAPPEL GOMBORO',	'2021-05-27 16:20:14',	'2021-05-27 16:20:14'),
(71,	'2021-05-26',	5,	'campagne7',	'VITAMINE',	1,	2500,	'VITAMINE 100G',	'2021-05-27 16:20:14',	'2021-05-27 16:20:14'),
(72,	'2021-05-31',	5,	'campagne7',	'EAU',	1,	2000,	'RAS',	'2021-06-21 20:57:20',	'2021-06-21 20:57:20'),
(73,	'2021-05-31',	5,	'campagne7',	'TYLODOX PLUS',	2,	3500,	'ANTIBIOTIQUE',	'2021-06-21 20:57:20',	'2021-06-21 20:57:20'),
(74,	'2021-06-06',	5,	'campagne7',	'LASOTA',	1,	2000,	'RAPPEL',	'2021-06-21 20:57:20',	'2021-06-21 20:57:20'),
(75,	'2021-06-06',	5,	'campagne7',	'H120',	1,	1500,	'RAPPEL',	'2021-06-21 20:57:20',	'2021-06-21 20:57:20'),
(76,	'2021-06-06',	5,	'campagne7',	'EAU',	1,	2000,	'EAU',	'2021-06-21 20:57:21',	'2021-06-21 20:57:21'),
(77,	'2021-06-19',	5,	'campagne7',	'EAU',	1,	2000,	'RAS',	'2021-06-21 21:37:24',	'2021-06-21 21:37:24'),
(78,	'2021-06-16',	5,	'campagne7',	'TYLODOX PLUS',	2,	3500,	'RAS',	'2021-06-21 21:37:24',	'2021-06-21 21:37:24'),
(79,	'2021-06-19',	5,	'campagne7',	'DEPARASITANT',	1,	2500,	'RAS',	'2021-06-21 21:37:24',	'2021-06-21 21:37:24'),
(80,	'2021-06-19',	5,	'campagne7',	'PRISE-ELECTRICITE',	2,	1000,	'RAS',	'2021-06-21 21:37:24',	'2021-06-21 21:37:24'),
(81,	'2021-06-10',	5,	'campagne7',	'FRAIS ORANGE MONEY',	1,	2100,	'RAS',	'2021-06-21 21:39:34',	'2021-06-21 21:39:34'),
(82,	'2021-06-19',	5,	'campagne7',	'FRAIS ORANGE MONEY',	1,	3900,	'RAS',	'2021-06-21 21:39:34',	'2021-06-21 21:39:34'),
(83,	'2021-06-30',	5,	'campagne7',	'EAU',	1,	2000,	'RAS',	'2021-07-15 20:45:45',	'2021-07-15 20:45:45'),
(84,	'2021-07-10',	5,	'campagne7',	'VETACOX',	1,	5000,	'ANTICOCIDIEN',	'2021-07-15 20:45:45',	'2021-07-15 20:45:45'),
(85,	'2021-07-13',	5,	'campagne7',	'ANTICOX',	1,	3500,	'ANTICOCIDIEN',	'2021-07-15 20:45:45',	'2021-07-15 20:45:45'),
(86,	'2021-07-13',	5,	'campagne7',	'EAU',	1,	2000,	'RAS',	'2021-07-15 20:45:45',	'2021-07-15 20:45:45');

DROP TABLE IF EXISTS `aliments`;
CREATE TABLE `aliments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_achat` date DEFAULT NULL,
  `campagne_id` bigint(20) unsigned NOT NULL,
  `campagne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` int(11) NOT NULL,
  `priceUnitaire` int(11) NOT NULL,
  `fournisseur` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `obs` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aliments_campagne_id_foreign` (`campagne_id`),
  CONSTRAINT `aliments_campagne_id_foreign` FOREIGN KEY (`campagne_id`) REFERENCES `campagnes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `aliments`;
INSERT INTO `aliments` (`id`, `date_achat`, `campagne_id`, `campagne`, `libelle`, `quantite`, `priceUnitaire`, `fournisseur`, `contact`, `obs`, `created_at`, `updated_at`) VALUES
(1,	NULL,	1,	'campagne1',	'aliment croissance',	3,	10000,	'sahib',	NULL,	'Testing',	'2020-10-15 17:59:53',	'2020-10-15 17:59:53'),
(2,	NULL,	1,	'campagne1',	'aliment',	5,	8000,	'sahib',	NULL,	'Testing',	'2020-10-15 18:01:09',	'2020-10-15 18:01:09'),
(3,	NULL,	1,	'campagne1',	'aliment croisssance',	2,	10000,	'sahib',	NULL,	'Renfort',	'2020-10-15 18:01:36',	'2020-10-15 18:01:36'),
(9,	'2020-10-16',	2,	'campagne5',	'ALIMENT CROISSANCE',	3,	13250,	'FANCI',	NULL,	'1ER ACHAT CROISSANCE',	'2020-10-29 17:10:08',	'2020-11-05 16:43:52'),
(10,	'2020-10-16',	2,	'campagne5',	'ALIMENT DEMARRAGE',	2,	16050,	'FANCI',	NULL,	'ALIMENT DEMARRAGE PARTICULIER -GALBUS',	'2020-10-29 17:10:08',	'2020-11-05 16:44:59'),
(11,	'2020-10-16',	2,	'campagne5',	'ALIMENT DEMARRAGE',	8,	7500,	'FANCI',	NULL,	'1ere  Phase',	'2020-11-02 18:55:45',	'2020-11-25 16:08:14'),
(12,	'2020-11-11',	2,	'campagne5',	'ALIMENT 2e PHASE',	12,	13500,	'KONAN',	NULL,	'COMPLEMENT ALIMENT',	'2020-11-25 21:47:50',	'2020-12-08 21:16:02'),
(13,	NULL,	2,	'campagne5',	'ALIMENT 2e PHASE',	1,	7000,	'KONAN',	NULL,	'DEMI SAC D\'ALIMENTS',	'2020-12-08 21:18:23',	'2020-12-08 21:18:23'),
(14,	NULL,	2,	'campagne5',	'ALIMENT',	4,	13250,	'KONAN',	NULL,	'ALIMENT APRES 45 J',	'2020-12-14 22:28:50',	'2020-12-14 22:28:50'),
(15,	NULL,	4,	'campagne6',	'ALIMENT-DEMARRAGE',	2,	7500,	'SARCI',	NULL,	'RAS',	'2021-02-14 22:39:06',	'2021-02-14 22:39:06'),
(16,	NULL,	4,	'campagne6',	'ALIMENT DEMARRAGE',	8,	13500,	'SARCI',	NULL,	'RAS',	'2021-02-14 22:39:06',	'2021-02-14 22:39:06'),
(17,	NULL,	4,	'campagne6',	'ALIMENT CROISSANCE',	10,	13550,	'SARCI',	NULL,	'RAS',	'2021-02-14 22:39:06',	'2021-02-14 22:39:06'),
(18,	NULL,	4,	'campagne6',	'ALIMENT CROISSANCE',	3,	14500,	'SARCI',	NULL,	'RAS',	'2021-04-02 12:10:53',	'2021-04-02 12:10:53'),
(19,	NULL,	4,	'campagne6',	'ALIMENT CROISSANCE',	10,	14500,	'SARCI',	NULL,	'RAS',	'2021-04-02 12:10:53',	'2021-04-02 12:10:53'),
(20,	NULL,	4,	'campagne6',	'TIMBRE ACHAT ALIMENT',	1,	500,	'SARCI',	NULL,	'RAS',	'2021-04-02 12:10:53',	'2021-04-02 12:10:53'),
(21,	NULL,	4,	'campagne6',	'ALIMENT CROISSANCE',	7,	14500,	'SARCI',	NULL,	'RAS',	'2021-04-02 12:24:09',	'2021-04-02 12:24:09'),
(22,	NULL,	4,	'campagne6',	'TIMBRE ACHAT ALIMENT',	1,	500,	'SARCI',	NULL,	'RAS',	'2021-04-02 12:24:09',	'2021-04-02 12:24:09'),
(23,	NULL,	4,	'campagne6',	'ALIMENT CROISSANCE',	4,	14500,	'SARCI',	NULL,	'RAS',	'2021-04-02 12:24:09',	'2021-04-02 12:24:09'),
(24,	NULL,	4,	'campagne6',	'TIMBRE ACHAT ALIMENT',	1,	500,	'SARCI',	NULL,	'RAS',	'2021-04-02 12:24:09',	'2021-04-02 12:24:09'),
(25,	NULL,	5,	'campagne7',	'ALIMENT-DEMARRAGE',	8,	15500,	'IVOGRAIN',	NULL,	'DÉMARRAGE',	'2021-05-10 06:22:33',	'2021-05-10 06:22:33'),
(26,	NULL,	5,	'campagne7',	'ALIMENT CROISSANCE',	5,	14500,	'IVOGRAIN',	NULL,	'CROISSANCE',	'2021-05-10 06:22:34',	'2021-05-10 06:22:34'),
(27,	NULL,	5,	'campagne7',	'TIMBRE ACHAT ALIMENT',	1,	500,	'IVOGRAIN',	NULL,	'TIMBRE',	'2021-05-10 06:22:34',	'2021-05-10 06:22:34'),
(28,	NULL,	5,	'campagne7',	'ALIMENT CROISSANCE',	6,	15750,	'IVOGRAIN',	NULL,	'ALIMENT',	'2021-06-21 21:23:29',	'2021-06-21 21:23:29'),
(29,	NULL,	5,	'campagne7',	'ALIMENT CROISSANCE',	2,	15600,	'IVOGRAIN',	NULL,	'ALIMENT',	'2021-06-21 21:25:04',	'2021-06-21 21:25:04'),
(30,	NULL,	5,	'campagne7',	'TIMBRE',	1,	500,	'IVOGRAIN',	NULL,	'RAS',	'2021-06-21 21:26:26',	'2021-06-21 21:26:26'),
(31,	'2021-06-26',	5,	'campagne7',	'ALIMENT CROISSANCE',	1,	15600,	'IVOGRAIN',	NULL,	'Aliment',	'2021-07-05 11:23:06',	'2021-07-06 07:53:42'),
(32,	'2021-06-26',	5,	'campagne7',	'ALIMENT CROISSANCE',	1,	15000,	'IVOGRAIN',	NULL,	'Aliment',	'2021-07-05 11:23:06',	'2021-07-06 07:52:57'),
(33,	'2021-07-13',	5,	'campagne7',	'ALIMENT CROISSANCE',	3,	15500,	'IVOGRAIN',	NULL,	'RAS',	'2021-07-15 20:31:09',	'2021-07-15 20:31:09'),
(34,	'2021-07-13',	5,	'campagne7',	'ALIMENT CROISSANCE',	3,	16000,	'IVOGRAIN',	NULL,	'RAS',	'2021-07-15 20:31:09',	'2021-07-15 20:31:09'),
(36,	'2021-07-28',	5,	'campagne7',	'ALIMENT DÉMARRAGE',	1,	15000,	'TEST',	NULL,	'ras',	'2021-07-28 12:28:10',	'2021-07-28 12:28:10');

DROP TABLE IF EXISTS `apports`;
CREATE TABLE `apports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `campagne_id` bigint(20) unsigned NOT NULL,
  `campagne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apport` int(11) NOT NULL,
  `obs` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `apports_campagne_id_foreign` (`campagne_id`),
  CONSTRAINT `apports_campagne_id_foreign` FOREIGN KEY (`campagne_id`) REFERENCES `campagnes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `apports`;
INSERT INTO `apports` (`id`, `campagne_id`, `campagne`, `apport`, `obs`, `created_at`, `updated_at`) VALUES
(1,	4,	'campagne6',	153900,	'Apport issu de Martial',	'2021-04-03 15:46:57',	'2021-07-17 08:48:32'),
(3,	4,	'campagne6',	129750,	'Apport issu des Ventes',	'2021-04-03 17:44:08',	'2021-07-17 08:48:16'),
(4,	4,	'campagne6',	101500,	'Apport issu des Ventes',	'2021-04-03 18:00:55',	'2021-07-17 08:48:07'),
(5,	4,	'campagne6',	12150,	'Apport issu des Ventes',	'2021-04-21 15:14:02',	'2021-07-17 08:47:57'),
(6,	5,	'campagne7',	309000,	'Apport issu de Martial',	'2021-06-21 21:04:20',	'2021-07-17 08:47:42');

DROP TABLE IF EXISTS `bilans`;
CREATE TABLE `bilans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `campagne_id` bigint(20) unsigned NOT NULL,
  `campagne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `startcampagne` date DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `apportVente` int(11) DEFAULT NULL,
  `apportPersonnel` int(11) DEFAULT NULL,
  `totalAchats` int(11) NOT NULL,
  `totalVentes` int(11) NOT NULL,
  `quantite_achetes` int(11) NOT NULL,
  `quantite_perdus` int(11) DEFAULT NULL,
  `benefice` int(11) DEFAULT NULL,
  `reserve` int(11) DEFAULT NULL,
  `partenaire` int(11) DEFAULT NULL,
  `charges_salariale` int(11) DEFAULT NULL,
  `annee` year(4) NOT NULL,
  `dureeCampagne` int(11) DEFAULT NULL,
  `meanMasse` double(8,2) DEFAULT NULL,
  `obs` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bilans_campagne_unique` (`campagne`),
  KEY `bilans_campagne_id_foreign` (`campagne_id`),
  CONSTRAINT `bilans_campagne_id_foreign` FOREIGN KEY (`campagne_id`) REFERENCES `campagnes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `bilans`;
INSERT INTO `bilans` (`id`, `campagne_id`, `campagne`, `startcampagne`, `budget`, `apportVente`, `apportPersonnel`, `totalAchats`, `totalVentes`, `quantite_achetes`, `quantite_perdus`, `benefice`, `reserve`, `partenaire`, `charges_salariale`, `annee`, `dureeCampagne`, `meanMasse`, `obs`, `created_at`, `updated_at`) VALUES
(2,	1,	'campagne1',	NULL,	NULL,	NULL,	NULL,	250000,	411000,	150,	8,	161000,	10000,	151000,	20000,	'2020',	NULL,	NULL,	'Une campagne moyenne.\r\nBravo a tous et continuons sur cette lancée .',	'2020-10-23 09:46:15',	'2020-12-25 21:09:23'),
(3,	3,	'campagne2',	NULL,	NULL,	NULL,	NULL,	102500,	0,	150,	0,	-102500,	10000,	0,	0,	'2020',	NULL,	NULL,	'campagne2 deficitaire',	'2020-12-30 12:48:04',	'2020-12-30 12:48:04'),
(4,	2,	'campagne5',	NULL,	NULL,	NULL,	NULL,	678950,	936000,	350,	24,	257050,	10000,	247050,	20000,	'2021',	NULL,	NULL,	'campagne5 excellente',	'2021-01-28 22:18:04',	'2021-01-28 22:18:04'),
(6,	4,	'campagne6',	'2021-02-14',	658000,	243400,	153900,	1075300,	931000,	400,	41,	-144300,	10000,	0,	20000,	'2021',	NULL,	NULL,	'campagne6 déficitaire',	'2021-04-26 11:18:18',	'2021-07-08 14:07:11');

DROP TABLE IF EXISTS `campagnes`;
CREATE TABLE `campagnes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `intitule` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `budget` int(11) DEFAULT NULL,
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  `status` enum('EN COURS','TERMINE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EN COURS',
  `duree` int(11) DEFAULT NULL,
  `alimentDemaDispo` int(11) DEFAULT NULL,
  `alimentDemaUtil` int(11) DEFAULT NULL,
  `alimentCroisDispo` int(11) DEFAULT NULL,
  `alimentCroisUtil` int(11) DEFAULT NULL,
  `obs` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campagnes_intitule_unique` (`intitule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `campagnes`;
INSERT INTO `campagnes` (`id`, `intitule`, `budget`, `start`, `end`, `status`, `duree`, `alimentDemaDispo`, `alimentDemaUtil`, `alimentCroisDispo`, `alimentCroisUtil`, `obs`, `created_at`, `updated_at`) VALUES
(1,	'campagne1',	NULL,	'2020-10-14',	'2020-10-23',	'TERMINE',	NULL,	NULL,	NULL,	NULL,	NULL,	'RAS',	'2020-10-14 13:33:54',	'2020-10-16 13:45:23'),
(2,	'campagne5',	NULL,	'2020-10-16',	'2021-01-28',	'TERMINE',	NULL,	NULL,	NULL,	NULL,	NULL,	'Fete de fin d\'annee',	'2020-10-16 13:59:21',	'2020-10-16 13:59:21'),
(3,	'campagne2',	NULL,	'2020-10-20',	'2020-12-30',	'TERMINE',	NULL,	NULL,	NULL,	NULL,	NULL,	'Testing',	'2020-10-20 07:51:16',	'2020-10-20 07:51:16'),
(4,	'campagne6',	658000,	'2021-02-14',	'2021-04-26',	'TERMINE',	NULL,	NULL,	NULL,	NULL,	NULL,	'1 FÉVRIER 2021 - 400 POUSSINS - OBJECTIF PAQUES',	'2021-02-14 19:57:18',	'2021-04-03 14:38:21'),
(5,	'campagne7',	542600,	'2021-05-03',	NULL,	'EN COURS',	77,	0,	8,	6,	16,	'Campagne de 400 Poussins ,\r\nCampagne SUCCES',	'2021-05-03 19:22:21',	'2021-07-28 13:10:53');

DROP TABLE IF EXISTS `construction_réparations`;
CREATE TABLE `construction_réparations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `materiel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` int(11) NOT NULL,
  `PriceUnitaire` int(11) NOT NULL,
  `obs` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `construction_réparations`;

DROP TABLE IF EXISTS `employes`;
CREATE TABLE `employes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre` set('M','F') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `employes`;

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('EN COURS','TERMINE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EN COURS',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `events_title_unique` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `events`;

DROP TABLE IF EXISTS `masses`;
CREATE TABLE `masses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `campagne_id` bigint(20) unsigned NOT NULL,
  `campagne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aliment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `mean_masse` double NOT NULL,
  `annee` year(4) NOT NULL,
  `obs` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `masses_campagne_id_foreign` (`campagne_id`),
  CONSTRAINT `masses_campagne_id_foreign` FOREIGN KEY (`campagne_id`) REFERENCES `campagnes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `masses`;
INSERT INTO `masses` (`id`, `date`, `campagne_id`, `campagne`, `aliment`, `quantite`, `mean_masse`, `annee`, `obs`, `created_at`, `updated_at`) VALUES
(3,	NULL,	3,	'campagne2',	NULL,	NULL,	3.5,	'2020',	'ras',	'2020-10-24 20:12:29',	'2020-10-24 20:12:29'),
(4,	NULL,	2,	'campagne5',	NULL,	NULL,	3.5,	'2021',	'une estimation',	'2021-01-01 20:12:54',	'2021-01-01 20:12:54'),
(5,	NULL,	4,	'campagne6',	NULL,	NULL,	2.32,	'2021',	'ras',	'2021-04-02 13:29:29',	'2021-04-02 13:29:29'),
(20,	'2021-07-28',	5,	'campagne7',	'ALIMENT DÉMARRAGE',	5,	2.5,	'2021',	'ras',	'2021-07-28 13:09:28',	'2021-07-28 13:09:28'),
(21,	'2021-07-28',	5,	'campagne7',	'ALIMENT CROISSANCE',	6,	2.7,	'2021',	'ras',	'2021-07-28 13:09:49',	'2021-07-28 13:10:52');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10,	'2020_10_12_110135_add_campagne_id_to_aliments_table',	1),
(11,	'2020_10_12_120512_add_campagne_id_to_accessoires_table',	1),
(12,	'2020_10_12_123035_add_campagne_id_to_poussins_table',	1),
(37,	'2020_10_04_212725_create_campagnes_table',	2),
(38,	'2020_10_04_224124_add_status_to_campagnes_table',	2),
(39,	'2020_10_05_210830_create_poussins_table',	2),
(40,	'2020_10_06_151402_create_events_table',	2),
(41,	'2020_10_08_152845_add_price_unitaire_to_poussin_table',	2),
(42,	'2020_10_08_163216_create_accessoires_table',	2),
(43,	'2020_10_09_164131_create_aliments_table',	2),
(44,	'2020_10_09_210618_create_transports_table',	2),
(45,	'2020_10_10_072214_add_dateouverture_to_campagnes_table',	2),
(46,	'2020_10_12_124144_create_pertes_table',	2),
(47,	'2020_10_13_093719_create_ventes_table',	2),
(48,	'2020_10_15_210847_add_obs_to_campagnes_table',	3),
(51,	'2020_10_15_215416_create_bilans_table',	4),
(53,	'2020_10_23_161031_create_masses_table',	5),
(55,	'2020_10_24_131538_create_employes_table',	6),
(56,	'2020_10_30_220324_add_genre_and_contact_to_employes_table',	7),
(57,	'2020_11_05_122526_add_date_achat_to_transport_table',	8),
(58,	'2020_11_05_162334_add_date_achat_to_aliment_table',	9),
(59,	'2020_11_05_193322_add_date_achat_to_accessoire_table',	10),
(60,	'2020_11_05_201256_add_date_achat_to_poussin_table',	11),
(61,	'2020_11_05_204830_add_date_die_to_perte_table',	12),
(62,	'2021_01_01_231930_create_produits_table',	13),
(65,	'2014_10_12_100000_create_password_resets_table',	14),
(66,	'2021_01_10_232523_create_users_table',	14),
(67,	'2021_02_12_120025_add_date_in_to_ventes_table',	15),
(68,	'2021_04_03_071713_create_apports_table',	16),
(69,	'2021_04_03_072812_add_budget_to_campagnes_table',	16),
(70,	'2021_04_03_163029_add_budget_to_campagnes_table',	17),
(71,	'2021_04_03_163616_add_budget_to_campagnes_table',	18),
(72,	'2021_04_03_170305_add_campagne_to_apports_table',	19),
(75,	'2021_04_22_171650_add_startcampagne_to_bilans_table',	20),
(76,	'2021_07_05_193519_add_avance_impaye_regler_to_ventes',	21),
(77,	'2021_07_08_085315_add_phone_to_poussins_table',	22),
(78,	'2021_07_08_171708_add_contact_to_aliments_table',	23),
(79,	'2021_07_09_150200_add_suggestion_to_pertes_table',	24),
(80,	'2021_07_26_121837_add_duree_aliment_dema_dispo_aliment_dema_util_aliment_crois_dispo_aliment_crois_util_to_campagnes',	25),
(81,	'2021_07_27_130133_add_duree_campagne_mean_masse_to_bilans',	26);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `password_resets`;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sahibmartial@gmail.com',	'$2y$10$NcXqHvPLwxlYVcSQnYN4ruNmqVPGXb3n4BVI1Kl7VXeIDB/H48soe',	'2021-02-12 21:43:14');

DROP TABLE IF EXISTS `pertes`;
CREATE TABLE `pertes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_die` date DEFAULT NULL,
  `campagne_id` bigint(20) unsigned NOT NULL,
  `campagne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` int(11) NOT NULL,
  `cause` text COLLATE utf8_unicode_ci NOT NULL,
  `obs` text COLLATE utf8_unicode_ci,
  `suggestion` text COLLATE utf8_unicode_ci,
  `duredevie` int(11) NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pertes_campagne_id_foreign` (`campagne_id`),
  CONSTRAINT `pertes_campagne_id_foreign` FOREIGN KEY (`campagne_id`) REFERENCES `campagnes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `pertes`;
INSERT INTO `pertes` (`id`, `date_die`, `campagne_id`, `campagne`, `quantite`, `cause`, `obs`, `suggestion`, `duredevie`, `year`, `created_at`, `updated_at`) VALUES
(1,	NULL,	1,	'campagne1',	5,	'maladie',	NULL,	NULL,	1,	'2020',	'2020-10-15 14:12:20',	'2020-10-15 14:12:20'),
(2,	NULL,	1,	'campagne1',	3,	'fourmis rouges',	NULL,	NULL,	1,	'2020',	'2020-10-15 14:13:58',	'2020-10-15 14:13:58'),
(3,	NULL,	2,	'campagne5',	1,	'mort naturel',	NULL,	NULL,	13,	'2020',	'2020-10-29 21:38:16',	'2020-10-29 21:38:16'),
(4,	'2020-11-02',	2,	'campagne5',	1,	'Mort naturel',	NULL,	NULL,	17,	'2020',	'2020-11-05 19:45:10',	'2020-11-05 20:18:14'),
(5,	'2020-11-08',	2,	'campagne5',	1,	'decces normal',	NULL,	NULL,	23,	'2020',	'2020-11-12 09:32:28',	'2020-11-12 09:32:28'),
(6,	'2020-11-19',	2,	'campagne5',	1,	'decces normal',	NULL,	NULL,	34,	'2020',	'2020-11-25 16:01:28',	'2020-11-25 16:01:28'),
(7,	'2020-11-08',	2,	'campagne5',	3,	'mort naturel -image non recu',	NULL,	NULL,	23,	'2020',	'2020-11-25 16:02:23',	'2020-11-25 16:02:23'),
(8,	'2020-12-09',	2,	'campagne5',	1,	'Mort naturel',	NULL,	NULL,	54,	'2020',	'2020-12-09 23:23:29',	'2020-12-09 23:23:29'),
(9,	'2020-12-14',	2,	'campagne5',	3,	'MALADIE',	NULL,	NULL,	59,	'2020',	'2020-12-14 21:51:12',	'2020-12-14 21:51:12'),
(10,	'2020-12-25',	2,	'campagne5',	3,	'MALADIE',	NULL,	NULL,	70,	'2020',	'2020-12-25 20:22:37',	'2020-12-25 20:22:37'),
(11,	'2020-12-30',	2,	'campagne5',	2,	'MALADIE',	NULL,	NULL,	75,	'2020',	'2021-01-02 10:59:55',	'2021-01-02 10:59:55'),
(12,	'2021-01-02',	2,	'campagne5',	1,	'MALADIE',	NULL,	NULL,	78,	'2020',	'2021-01-10 21:47:36',	'2021-01-10 21:47:36'),
(13,	'2021-01-04',	2,	'campagne5',	5,	'MALADIES',	NULL,	NULL,	80,	'2020',	'2021-01-10 21:49:25',	'2021-01-10 21:49:25'),
(14,	'2021-01-04',	2,	'campagne5',	2,	'INVENDUS',	NULL,	NULL,	80,	'2020',	'2021-01-10 21:50:34',	'2021-01-10 21:50:34'),
(15,	'2021-02-14',	4,	'campagne6',	1,	'Mort  naturel',	NULL,	NULL,	0,	'2021',	'2021-02-22 22:05:41',	'2021-02-22 22:05:41'),
(16,	'2021-02-19',	4,	'campagne6',	1,	'Mort naturel',	NULL,	NULL,	5,	'2021',	'2021-02-22 22:06:30',	'2021-02-22 22:06:30'),
(17,	'2021-03-02',	4,	'campagne6',	1,	'Mort naturel',	NULL,	NULL,	16,	'2021',	'2021-03-16 19:51:10',	'2021-03-16 19:51:10'),
(18,	'2021-03-15',	4,	'campagne6',	2,	'Mort Naturel',	NULL,	NULL,	29,	'2021',	'2021-03-16 19:52:14',	'2021-03-16 19:52:14'),
(19,	'2021-03-22',	4,	'campagne6',	25,	'MALADIE/ RAPPEL DE VACIN NON SUIVI',	NULL,	NULL,	36,	'2021',	'2021-04-02 10:41:01',	'2021-04-02 10:41:01'),
(20,	'2021-04-07',	4,	'campagne6',	4,	'MALADIE INVENDUS',	NULL,	NULL,	52,	'2021',	'2021-04-07 19:07:49',	'2021-04-07 19:07:49'),
(22,	'2021-04-07',	4,	'campagne6',	7,	'Ecart non retrouvé',	NULL,	NULL,	52,	'2021',	'2021-04-21 15:05:12',	'2021-04-21 15:05:12'),
(24,	'2021-05-12',	5,	'campagne7',	6,	'mort du au deplacement',	NULL,	NULL,	0,	'2021',	'2021-05-17 19:47:57',	'2021-05-17 19:47:57'),
(25,	'2021-05-13',	5,	'campagne7',	4,	'mort du au deplacement',	NULL,	NULL,	1,	'2021',	'2021-05-17 19:48:37',	'2021-05-17 19:48:37'),
(26,	'2021-05-16',	5,	'campagne7',	5,	'Causes inconnues',	NULL,	NULL,	4,	'2021',	'2021-05-27 16:24:27',	'2021-05-27 16:24:27'),
(27,	'2021-05-24',	5,	'campagne7',	1,	'Causes inconnues',	NULL,	NULL,	12,	'2021',	'2021-05-27 16:25:08',	'2021-05-27 16:25:08'),
(28,	'2021-06-04',	5,	'campagne7',	1,	'Causes inconnues',	NULL,	NULL,	23,	'2021',	'2021-06-07 11:14:14',	'2021-06-07 11:14:14'),
(29,	'2021-06-20',	5,	'campagne7',	3,	'CAUSES INCONNUES',	NULL,	NULL,	39,	'2021',	'2021-07-05 08:21:32',	'2021-07-05 08:21:32'),
(30,	'2021-07-10',	5,	'campagne7',	7,	'COCIDIOSE',	NULL,	NULL,	59,	'2021',	'2021-07-15 20:51:54',	'2021-07-15 20:51:54'),
(31,	'2021-07-13',	5,	'campagne7',	6,	'COCIDIOSE',	NULL,	NULL,	62,	'2021',	'2021-07-15 20:52:39',	'2021-07-15 20:52:39');

DROP TABLE IF EXISTS `poussins`;
CREATE TABLE `poussins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_achat` date DEFAULT NULL,
  `campagne_id` bigint(20) unsigned NOT NULL,
  `campagne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` int(11) NOT NULL,
  `priceUnitaire` int(11) NOT NULL,
  `fournisseur` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `obs` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `poussins_campagne_unique` (`campagne`),
  KEY `poussins_campagne_id_foreign` (`campagne_id`),
  CONSTRAINT `poussins_campagne_id_foreign` FOREIGN KEY (`campagne_id`) REFERENCES `campagnes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `poussins`;
INSERT INTO `poussins` (`id`, `date_achat`, `campagne_id`, `campagne`, `quantite`, `priceUnitaire`, `fournisseur`, `phone`, `obs`, `created_at`, `updated_at`) VALUES
(2,	'2020-10-16',	2,	'campagne5',	350,	550,	'KONAN',	NULL,	'FETE DE FIN D\'ANNEE',	'2020-10-16 14:25:04',	'2020-11-05 19:35:55'),
(11,	NULL,	3,	'campagne2',	150,	550,	'sahib',	NULL,	'Testing',	'2020-10-20 09:32:59',	'2020-10-29 11:30:03'),
(12,	NULL,	1,	'campagne1',	150,	500,	'sahib',	NULL,	'Testing',	'2020-10-20 16:04:11',	'2020-10-20 16:04:11'),
(13,	'2021-02-01',	4,	'campagne6',	400,	550,	'M. KONAN',	NULL,	'CAMPAGNE 6',	'2021-02-14 22:10:48',	'2021-02-14 22:10:48'),
(14,	'2021-05-12',	5,	'campagne7',	400,	520,	'IVOGRAIN',	NULL,	'ACHAT POUSSINS',	'2021-05-12 13:48:29',	'2021-05-12 13:48:29');

DROP TABLE IF EXISTS `produits`;
CREATE TABLE `produits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `illustration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `produits`;

DROP TABLE IF EXISTS `transports`;
CREATE TABLE `transports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_achat` date DEFAULT NULL,
  `campagne_id` bigint(20) unsigned NOT NULL,
  `campagne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `montant` int(11) NOT NULL,
  `obs` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transports_campagne_id_foreign` (`campagne_id`),
  CONSTRAINT `transports_campagne_id_foreign` FOREIGN KEY (`campagne_id`) REFERENCES `campagnes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `transports`;
INSERT INTO `transports` (`id`, `date_achat`, `campagne_id`, `campagne`, `montant`, `obs`, `created_at`, `updated_at`) VALUES
(1,	NULL,	1,	'campagne1',	15000,	'ras',	'2020-10-15 13:19:35',	'2020-10-15 13:19:35'),
(2,	NULL,	1,	'campagne1',	10000,	'achats aliments supplémentaires',	'2020-10-15 13:20:33',	'2020-10-15 13:20:33'),
(4,	'2020-10-16',	2,	'campagne5',	10100,	'TRANSPORT POUR ACHAT DE MARCHANDISES',	'2020-11-02 19:32:38',	'2020-11-05 11:43:52'),
(5,	'2021-02-02',	4,	'campagne6',	12000,	'RAS',	'2021-02-14 22:30:08',	'2021-02-14 22:30:08'),
(6,	'2021-03-05',	4,	'campagne6',	5000,	'05/03/2021',	'2021-04-02 12:34:21',	'2021-04-02 12:34:21'),
(7,	'2021-03-17',	4,	'campagne6',	4000,	'17/03/2021',	'2021-04-02 12:36:22',	'2021-04-02 12:36:22'),
(8,	'2021-03-23',	4,	'campagne6',	4000,	'23/03/2021',	'2021-04-02 12:37:20',	'2021-04-02 12:37:20'),
(9,	'2021-05-03',	5,	'campagne7',	3000,	'RAS',	'2021-05-03 19:38:26',	'2021-05-03 19:38:26'),
(10,	'2021-05-03',	5,	'campagne7',	7000,	'TRANSPORT DES ALIMENTS',	'2021-05-03 19:44:35',	'2021-05-03 19:44:35'),
(11,	'2021-05-07',	5,	'campagne7',	2000,	'TRANSPORT',	'2021-05-10 06:26:18',	'2021-05-10 06:26:18'),
(12,	'2021-05-10',	5,	'campagne7',	2000,	'RAS',	'2021-05-27 16:14:31',	'2021-05-27 16:14:31'),
(13,	'2021-05-12',	5,	'campagne7',	5000,	'TRANSPORT POUSSINS',	'2021-05-27 16:16:06',	'2021-05-27 16:16:06'),
(14,	'2021-05-31',	5,	'campagne7',	500,	'TRANSPORT',	'2021-06-21 21:09:29',	'2021-06-21 21:09:29'),
(15,	'2021-06-06',	5,	'campagne7',	2000,	'TRANSPORT',	'2021-06-21 21:10:34',	'2021-06-21 21:10:34'),
(16,	'2021-06-10',	5,	'campagne7',	3500,	'RAS',	'2021-06-21 21:28:37',	'2021-06-21 21:28:37'),
(17,	'2021-06-16',	5,	'campagne7',	700,	'RAS',	'2021-06-21 21:29:50',	'2021-06-21 21:29:50'),
(18,	'2021-06-19',	5,	'campagne7',	2000,	'RAS',	'2021-06-21 21:30:56',	'2021-06-21 21:30:56'),
(19,	'2021-07-26',	5,	'campagne7',	2500,	'26072021',	'2021-07-15 20:34:18',	'2021-07-15 20:34:18'),
(20,	'2021-07-03',	5,	'campagne7',	3500,	'RAS',	'2021-07-15 20:35:36',	'2021-07-15 20:35:36'),
(21,	'2021-07-10',	5,	'campagne7',	500,	'10072021 TRANSP MEDICAMENT',	'2021-07-15 20:36:53',	'2021-07-15 20:36:53'),
(22,	'2021-07-13',	5,	'campagne7',	1500,	'13072021 TRANSP ALIMENT',	'2021-07-15 20:37:52',	'2021-07-15 20:37:52'),
(23,	'2021-07-13',	5,	'campagne7',	2000,	'13072021 TRANSPORT FRIGO',	'2021-07-15 20:39:13',	'2021-07-15 20:39:13'),
(24,	'2021-07-13',	5,	'campagne7',	2000,	'RAS',	'2021-07-15 20:39:43',	'2021-07-15 20:39:43');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` json DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles`, `remember_token`, `created_at`, `updated_at`) VALUES
(4,	'YAO  ALIX',	'alixya09@gmail.com',	NULL,	'$2y$10$02OcHnb2Z.VLI9MHOJTRiuUa.G8.El6ujktCtMcKV/STMibYGbQ6G',	'\"admin\"',	NULL,	'2021-01-18 20:44:39',	'2021-01-18 20:44:39'),
(5,	'marubo',	'sahibmartial@gmail.com',	NULL,	'$2y$10$jZGa90cQB3Uy2XXEoQvuQ.VAiHqbCN9MjRgDaUvq/hvQdDsRTQVxq',	'\"admin\"',	NULL,	'2021-05-13 07:04:19',	'2021-05-13 07:04:19'),
(6,	'Edmond',	'kouamekouadioedmond392@gmail.com',	NULL,	'$2y$10$A/vwN1EoHfXc8WcWn5qDkuL0cdggVqeObQB6FU8TpbR14FLUFIt1u',	NULL,	NULL,	'2021-05-13 07:11:30',	'2021-05-13 07:11:30');

DROP TABLE IF EXISTS `vaccins`;
CREATE TABLE `vaccins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `campagne_id` bigint(20) unsigned NOT NULL,
  `campagne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datedevaccination` date NOT NULL,
  `intitulevaccin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `obs` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vaccins_campagne_id_foreign` (`campagne_id`),
  CONSTRAINT `vaccins_campagne_id_foreign` FOREIGN KEY (`campagne_id`) REFERENCES `campagnes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `vaccins`;
INSERT INTO `vaccins` (`id`, `campagne_id`, `campagne`, `datedevaccination`, `intitulevaccin`, `obs`, `created_at`, `updated_at`) VALUES
(5,	5,	'campagne7',	'2021-05-12',	'Arrivée des poussins',	'Arrivé poussins dans la ferme ',	'2021-05-12 13:48:30',	'2021-05-12 13:48:30'),
(6,	5,	'campagne7',	'2021-05-13',	'Antibiotiques',	'ANTISTRESS : Supervitassol / Panthéryl / Alfaceril / Imuneo ',	'2021-05-13 07:12:08',	'2021-05-13 07:12:08'),
(7,	5,	'campagne7',	'2021-05-14',	'Antibiotiques',	'ANTISTRESS : Supervitassol / Panthéryl / Alfaceril / Imuneo ',	'2021-05-14 06:24:40',	'2021-05-14 06:24:40'),
(8,	5,	'campagne7',	'2021-05-15',	'Antibiotiques',	'ANTISTRESS : Supervitassol / Panthéryl / Alfaceril / Imuneo ',	'2021-05-14 22:00:02',	'2021-05-14 22:00:02'),
(9,	5,	'campagne7',	'2021-05-16',	'Vaccins',	'1er vaccin HB1, 1er vaccin H120, SuperVitassol /  Panthéryl / Imuneo ',	'2021-05-15 22:00:01',	'2021-05-15 22:00:01'),
(10,	5,	'campagne7',	'2021-05-17',	'Antibiotiques',	'ANTISTRESS : Supervitassol / Panthéryl / Imuneo',	'2021-05-16 22:00:02',	'2021-05-16 22:00:02'),
(11,	5,	'campagne7',	'2021-05-20',	'Vitamines',	'VITAMINES : AmineTotal / Supervitassol',	'2021-05-19 22:00:03',	'2021-05-19 22:00:03'),
(12,	5,	'campagne7',	'2021-05-21',	'Vaccins',	'1er Vaccin GUMBHORO, VITAMINES : AmineTotal / Supervitassol',	'2021-05-20 22:00:03',	'2021-05-20 22:00:03'),
(13,	5,	'campagne7',	'2021-05-22',	'Vitamines',	'VITAMINES : Amin\'Total / Colivit AM+ / Vitamino / Vitaminolyte super',	'2021-05-21 22:00:03',	'2021-05-21 22:00:03'),
(14,	5,	'campagne7',	'2021-05-23',	'Vitamines',	'VITAMINES : Amin\'Total / Colivit AM+ / Vitamino / Vitaminolyte super',	'2021-05-22 22:00:03',	'2021-05-22 22:00:03'),
(15,	5,	'campagne7',	'2021-05-28',	'Vitamines',	'VITAMINES : Amin\'Total / Colivit AM+ / Vitamino / Vitaminolyte super',	'2021-05-27 22:00:02',	'2021-05-27 22:00:02'),
(16,	5,	'campagne7',	'2021-05-29',	'Vaccins',	'VACCINS : 2ième rappel vaccin de GUMBHORO',	'2021-05-28 22:00:03',	'2021-05-28 22:00:03'),
(17,	5,	'campagne7',	'2021-05-30',	'Vitamines',	'VACCINS : 2ième vaccin de GUMBHORO',	'2021-05-29 22:00:03',	'2021-05-29 22:00:03'),
(18,	5,	'campagne7',	'2021-06-01',	'Transition Aliment',	'3/4 Aliment de démarrage + 1/4 Aliment croissance + Anticoccidiens(Vetacox / Anticox ) ',	'2021-05-31 22:00:02',	'2021-05-31 22:00:02'),
(19,	5,	'campagne7',	'2021-06-02',	'Transition Aliment',	'1/2 Aliment de démarrage + 1/2 Aliment croissance + Anticoccidiens(Vetacox / Anticox)',	'2021-06-01 22:00:02',	'2021-06-01 22:00:02'),
(20,	5,	'campagne7',	'2021-06-03',	'Transition Aliment',	'1/4 Aliment de démarrage + 3/4 Aliment croissance + Anticoccidiens(Vetacox / Anticox) ',	'2021-06-02 22:00:02',	'2021-06-02 22:00:02'),
(21,	5,	'campagne7',	'2021-06-04',	'Anticoccidiens',	'Anticoccidiens(Vetacox/Anticox )',	'2021-06-03 22:00:04',	'2021-06-03 22:00:04'),
(22,	5,	'campagne7',	'2021-06-05',	'Anticoccidiens',	'Anticoccidiens(Vetacox/Anticox )',	'2021-06-04 22:00:17',	'2021-06-04 22:00:17'),
(23,	5,	'campagne7',	'2021-06-06',	'Vitamines',	'Vitamines : Amin\'Total',	'2021-06-05 22:00:03',	'2021-06-05 22:00:03'),
(24,	5,	'campagne7',	'2021-06-07',	'Vaccins',	'2ième Rappel  vaccin HB1 et H120 + Vitamines : Amin\'Total',	'2021-06-06 22:00:02',	'2021-06-06 22:00:02'),
(25,	5,	'campagne7',	'2021-06-09',	'Vaccins',	'3ième Rappel vaccin GUMBORHO (souche intermediaire plus) pour les zones à forte pression virale ',	'2021-06-08 22:00:02',	'2021-06-08 22:00:02'),
(26,	5,	'campagne7',	'2021-06-11',	'Maladies Respiratoires',	'Maladies Respiratoires: Vental /Enrosol',	'2021-06-10 22:00:03',	'2021-06-10 22:00:03'),
(27,	5,	'campagne7',	'2021-06-12',	'Maladies Respiratoires',	'Maladies Respiratoires: Vental /Enrosol',	'2021-06-11 22:00:03',	'2021-06-11 22:00:03'),
(28,	5,	'campagne7',	'2021-06-13',	'Maladies Respiratoires',	'Maladies Respiratoires: Vental /Enrosol',	'2021-06-12 22:00:03',	'2021-06-12 22:00:03'),
(29,	5,	'campagne7',	'2021-06-14',	'Maladies Respiratoires',	'Maladies Respiratoires: Vental /Enrosol',	'2021-06-13 22:00:02',	'2021-06-13 22:00:02'),
(30,	5,	'campagne7',	'2021-06-15',	'Vermifuges',	'Vermifuges: Sulfate de piperazine /levimasol /polystrongle ',	'2021-06-14 22:00:03',	'2021-06-14 22:00:03'),
(31,	5,	'campagne7',	'2021-06-19',	'Vitamines',	'Vitamine: Amin\'Total / Colivit AM+ / Vitamino /Lobamin layer',	'2021-06-18 22:00:02',	'2021-07-08 18:52:31');

DROP TABLE IF EXISTS `ventes`;
CREATE TABLE `ventes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `campagne_id` bigint(20) unsigned NOT NULL,
  `campagne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priceUnitaire` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acheteur` enum('Particulier','Grossiste','Restaurant') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Particulier',
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `events` set('Party','Death','Birdthay','Commerce','Autres') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Autres',
  `avance` double(8,2) DEFAULT NULL,
  `impaye` double(8,2) DEFAULT NULL,
  `regler` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `obs` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ventes_campagne_id_foreign` (`campagne_id`),
  CONSTRAINT `ventes_campagne_id_foreign` FOREIGN KEY (`campagne_id`) REFERENCES `campagnes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `ventes`;
INSERT INTO `ventes` (`id`, `date`, `campagne_id`, `campagne`, `quantite`, `priceUnitaire`, `acheteur`, `contact`, `events`, `avance`, `impaye`, `regler`, `obs`, `created_at`, `updated_at`) VALUES
(1,	NULL,	1,	'campagne1',	'10',	'3000',	'Particulier',	'08-43-60-53',	'Party',	NULL,	NULL,	NULL,	'ras',	'2020-10-14 13:34:28',	'2020-10-14 14:08:33'),
(2,	NULL,	1,	'campagne1',	'5',	'3000',	'Particulier',	'08-43-60-53',	'Party',	NULL,	NULL,	NULL,	'ras',	'2020-10-14 15:12:22',	'2020-10-14 15:12:22'),
(3,	NULL,	1,	'campagne1',	'122',	'3000',	'Particulier',	'08-43-60-53',	'Party',	NULL,	NULL,	NULL,	'Testing',	'2020-10-21 10:26:04',	'2020-10-21 10:26:04'),
(4,	NULL,	2,	'campagne5',	'6',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'12/12/2020',	'2020-12-14 21:53:42',	'2020-12-14 22:04:51'),
(5,	NULL,	2,	'campagne5',	'4',	'2800',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'12/12/2020',	'2020-12-14 21:55:11',	'2020-12-14 22:06:29'),
(6,	NULL,	2,	'campagne5',	'14',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'12/12/2020',	'2020-12-14 21:57:01',	'2020-12-14 21:57:01'),
(7,	NULL,	2,	'campagne5',	'10',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'13/12/2020',	'2020-12-14 21:59:56',	'2020-12-14 21:59:56'),
(8,	NULL,	2,	'campagne5',	'5',	'2800',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'13/12/2020',	'2020-12-14 22:02:00',	'2020-12-14 22:02:00'),
(9,	NULL,	2,	'campagne5',	'9',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'13/12/2020',	'2020-12-14 22:03:31',	'2020-12-14 22:03:31'),
(10,	NULL,	2,	'campagne5',	'1',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'14/12/2020',	'2020-12-14 22:08:07',	'2020-12-14 22:08:07'),
(11,	NULL,	2,	'campagne5',	'10',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'14/12/2020',	'2020-12-14 22:09:05',	'2020-12-14 22:09:05'),
(12,	NULL,	2,	'campagne5',	'13',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'15/12/2020',	'2020-12-15 22:24:46',	'2020-12-15 22:24:46'),
(13,	NULL,	2,	'campagne5',	'8',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'15/12/2020',	'2020-12-15 22:27:25',	'2020-12-15 22:27:25'),
(14,	NULL,	2,	'campagne5',	'4',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'16/12/2020',	'2020-12-18 19:54:29',	'2020-12-18 19:55:56'),
(15,	NULL,	2,	'campagne5',	'3',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'16/12/2020',	'2020-12-18 19:57:24',	'2020-12-18 19:57:24'),
(16,	NULL,	2,	'campagne5',	'18',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'17/12/2020',	'2020-12-18 19:58:35',	'2020-12-18 19:58:35'),
(17,	NULL,	2,	'campagne5',	'15',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'17/12/2020',	'2020-12-18 19:59:45',	'2020-12-18 19:59:45'),
(18,	NULL,	2,	'campagne5',	'6',	'2800',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'17/12/2020',	'2020-12-18 20:00:31',	'2020-12-18 20:00:31'),
(19,	NULL,	2,	'campagne5',	'2',	'4000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'18/12/2020',	'2020-12-18 20:01:53',	'2020-12-18 20:01:53'),
(20,	NULL,	2,	'campagne5',	'9',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'18/12/2020',	'2020-12-18 20:02:45',	'2020-12-18 20:02:45'),
(21,	NULL,	2,	'campagne5',	'6',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'19/12/2020',	'2020-12-25 20:26:55',	'2020-12-25 20:26:55'),
(22,	NULL,	2,	'campagne5',	'1',	'4000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'20/12/2020',	'2020-12-25 20:27:52',	'2020-12-25 20:27:52'),
(23,	NULL,	2,	'campagne5',	'7',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'20/12/2020',	'2020-12-25 20:29:16',	'2020-12-25 20:29:16'),
(24,	NULL,	2,	'campagne5',	'1',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'21/12/2020',	'2020-12-25 20:30:22',	'2020-12-25 20:30:22'),
(25,	NULL,	2,	'campagne5',	'17',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'23/12/2020',	'2020-12-25 20:32:56',	'2020-12-25 20:32:56'),
(26,	NULL,	2,	'campagne5',	'2',	'3500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'23/12/2020',	'2020-12-25 20:34:07',	'2020-12-25 20:34:07'),
(27,	NULL,	2,	'campagne5',	'1',	'4000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'24/12/2020',	'2020-12-25 20:35:29',	'2020-12-25 20:35:29'),
(28,	NULL,	2,	'campagne5',	'4',	'3500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'24/12/2020',	'2020-12-25 20:39:43',	'2020-12-25 20:39:43'),
(29,	NULL,	2,	'campagne5',	'15',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'24/12/2020',	'2020-12-25 20:40:40',	'2020-12-25 20:40:40'),
(30,	NULL,	2,	'campagne5',	'64',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'25/12/2020',	'2020-12-25 20:41:55',	'2020-12-25 20:41:55'),
(31,	NULL,	2,	'campagne5',	'4',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'22/12/2020',	'2021-01-02 10:38:45',	'2021-01-02 10:38:45'),
(32,	NULL,	2,	'campagne5',	'10',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'27/12/2020',	'2021-01-02 10:50:53',	'2021-01-02 10:50:53'),
(33,	NULL,	2,	'campagne5',	'7',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'29/12/2020',	'2021-01-02 10:52:21',	'2021-01-02 10:52:21'),
(34,	NULL,	2,	'campagne5',	'1',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'30/12/2020',	'2021-01-02 10:54:08',	'2021-01-02 10:54:08'),
(35,	NULL,	2,	'campagne5',	'1',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'30/12/2020',	'2021-01-02 10:56:00',	'2021-01-02 10:56:00'),
(36,	NULL,	2,	'campagne5',	'6',	'2500',	'Particulier',	NULL,	'Party',	NULL,	NULL,	NULL,	'31/12/2020',	'2021-01-10 21:27:36',	'2021-01-10 21:27:36'),
(37,	NULL,	2,	'campagne5',	'14',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'31/12/2020',	'2021-01-10 21:28:59',	'2021-01-10 21:28:59'),
(38,	NULL,	2,	'campagne5',	'2',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'02/01/2021',	'2021-01-10 21:30:45',	'2021-01-10 21:30:45'),
(39,	NULL,	2,	'campagne5',	'2',	'2000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'03/01/2021',	'2021-01-10 21:32:28',	'2021-01-10 21:32:28'),
(40,	NULL,	2,	'campagne5',	'10',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'04/01/2021 REGUL',	'2021-01-10 21:39:05',	'2021-01-10 21:39:05'),
(41,	NULL,	2,	'campagne5',	'10',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'04/01/2021 REGUL',	'2021-01-10 21:40:01',	'2021-01-10 21:40:01'),
(42,	NULL,	2,	'campagne5',	'4',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'04/01/2021 ECART',	'2021-01-10 21:40:47',	'2021-01-10 21:40:47'),
(43,	'2021-03-09',	4,	'campagne6',	'15',	'2300',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'VENTE',	'2021-04-01 18:01:27',	'2021-04-01 18:01:27'),
(44,	'2021-03-10',	4,	'campagne6',	'32',	'2300',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'VENTE',	'2021-04-01 18:02:44',	'2021-04-01 18:02:44'),
(45,	'2021-03-10',	4,	'campagne6',	'2',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'10/03/2021',	'2021-04-01 18:04:36',	'2021-04-01 18:04:36'),
(46,	'2021-03-16',	4,	'campagne6',	'8',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'16/03/2021',	'2021-04-01 18:06:09',	'2021-04-01 18:06:09'),
(47,	'2021-03-17',	4,	'campagne6',	'3',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'17/03/2021',	'2021-04-01 18:10:30',	'2021-04-01 18:10:30'),
(48,	'2021-03-18',	4,	'campagne6',	'7',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'18/03/2021',	'2021-04-01 18:13:30',	'2021-04-01 18:13:30'),
(49,	'2021-03-19',	4,	'campagne6',	'9',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'19/03/2021',	'2021-04-01 18:19:36',	'2021-04-01 18:19:36'),
(50,	'2021-03-19',	4,	'campagne6',	'6',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'19/03/2021',	'2021-04-01 18:21:58',	'2021-04-01 18:21:58'),
(51,	'2021-03-19',	4,	'campagne6',	'1',	'2000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'19/03/2021',	'2021-04-01 18:24:03',	'2021-04-01 18:24:03'),
(52,	'2021-03-20',	4,	'campagne6',	'6',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'20/03/2021',	'2021-04-01 18:32:57',	'2021-04-01 18:32:57'),
(53,	'2021-03-21',	4,	'campagne6',	'8',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'21/03/2021',	'2021-04-01 18:36:32',	'2021-04-01 18:36:32'),
(54,	'2021-03-22',	4,	'campagne6',	'13',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'22/03/2021',	'2021-04-02 09:52:37',	'2021-04-02 09:52:37'),
(55,	'2021-03-23',	4,	'campagne6',	'2',	'3500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'23/03/2021',	'2021-04-02 09:56:13',	'2021-04-02 09:56:13'),
(56,	'2021-03-23',	4,	'campagne6',	'4',	'2000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'23/03/2021',	'2021-04-02 10:15:46',	'2021-04-02 10:15:46'),
(57,	'2021-03-24',	4,	'campagne6',	'13',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'24/03/2021',	'2021-04-02 10:17:07',	'2021-04-02 10:17:07'),
(58,	'2021-03-24',	4,	'campagne6',	'9',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'24/03/2021',	'2021-04-02 10:18:04',	'2021-04-02 10:18:04'),
(59,	'2021-03-24',	4,	'campagne6',	'1',	'3500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'24/03/2021',	'2021-04-02 10:19:15',	'2021-04-02 10:19:15'),
(60,	'2021-03-25',	4,	'campagne6',	'13',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'25/03/2021',	'2021-04-02 10:20:45',	'2021-04-02 10:20:45'),
(61,	'2021-03-25',	4,	'campagne6',	'3',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'25/03/2021',	'2021-04-02 10:23:54',	'2021-04-02 10:23:54'),
(62,	'2021-03-27',	4,	'campagne6',	'1',	'2000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'27/03/2021',	'2021-04-02 10:27:49',	'2021-04-02 10:27:49'),
(63,	'2021-03-27',	4,	'campagne6',	'1',	'2800',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'27/03/2021',	'2021-04-02 10:29:45',	'2021-04-02 10:29:45'),
(64,	'2021-03-27',	4,	'campagne6',	'4',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'27/03/2021',	'2021-04-02 10:30:54',	'2021-04-02 10:30:54'),
(65,	'2021-03-28',	4,	'campagne6',	'1',	'2800',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'28/03/2021',	'2021-04-02 10:33:15',	'2021-04-02 10:33:15'),
(66,	'2021-03-28',	4,	'campagne6',	'1',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'28/03/2021',	'2021-04-02 10:34:51',	'2021-04-02 10:34:51'),
(67,	'2021-03-29',	4,	'campagne6',	'1',	'2800',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'29/03/2021',	'2021-04-02 10:35:25',	'2021-04-02 10:35:25'),
(68,	'2021-03-29',	4,	'campagne6',	'1',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'29/03/2021',	'2021-04-02 10:36:37',	'2021-04-02 10:36:37'),
(69,	'2021-03-30',	4,	'campagne6',	'3',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'30/03/2021',	'2021-04-03 10:58:00',	'2021-04-03 10:58:00'),
(70,	'2021-03-30',	4,	'campagne6',	'1',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-03 10:59:08',	'2021-04-03 10:59:08'),
(71,	'2021-04-01',	4,	'campagne6',	'1',	'4000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-03 11:00:14',	'2021-04-03 11:00:14'),
(72,	'2021-04-01',	4,	'campagne6',	'4',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-03 11:01:28',	'2021-04-03 11:01:28'),
(73,	'2021-04-02',	4,	'campagne6',	'1',	'4000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-03 11:15:29',	'2021-04-03 11:15:29'),
(74,	'2021-04-02',	4,	'campagne6',	'17',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-03 11:16:57',	'2021-04-03 11:16:57'),
(75,	'2021-04-02',	4,	'campagne6',	'1',	'4000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-05 20:02:06',	'2021-04-05 20:02:06'),
(76,	'2021-04-02',	4,	'campagne6',	'7',	'3000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-05 20:03:19',	'2021-04-05 20:03:19'),
(77,	'2021-04-03',	4,	'campagne6',	'2',	'2000',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-05 20:04:26',	'2021-04-05 20:04:26'),
(78,	'2021-04-03',	4,	'campagne6',	'10',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-05 20:06:04',	'2021-04-05 20:06:04'),
(79,	'2021-04-04',	4,	'campagne6',	'30',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-05 20:08:31',	'2021-04-05 20:08:31'),
(80,	'2021-04-07',	4,	'campagne6',	'6',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-07 18:46:06',	'2021-04-07 18:46:06'),
(81,	'2021-04-07',	4,	'campagne6',	'71',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-07 18:47:34',	'2021-04-07 18:47:34'),
(82,	'2021-04-08',	4,	'campagne6',	'10',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'RAS',	'2021-04-21 14:55:56',	'2021-04-21 14:55:56'),
(83,	'2021-04-16',	4,	'campagne6',	'30',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'VENTE KOSSOU',	'2021-04-21 14:57:02',	'2021-04-21 14:57:02'),
(84,	'2021-06-20',	5,	'campagne7',	'5',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'20/06/2021',	'2021-07-05 11:25:58',	'2021-07-05 11:25:58'),
(85,	'2021-06-22',	5,	'campagne7',	'3',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'22/06/2021',	'2021-07-05 11:27:02',	'2021-07-05 11:27:02'),
(86,	'2021-06-22',	5,	'campagne7',	'2',	'2300',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'22062021',	'2021-07-05 11:30:08',	'2021-07-05 11:30:08'),
(87,	'2021-06-26',	5,	'campagne7',	'3',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'26062021',	'2021-07-05 11:32:17',	'2021-07-05 11:32:17'),
(88,	'2021-06-27',	5,	'campagne7',	'2',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'27062021',	'2021-07-05 11:33:16',	'2021-07-05 11:33:16'),
(89,	'2021-06-28',	5,	'campagne7',	'6',	'2400',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'28062021',	'2021-07-05 11:34:13',	'2021-07-05 11:34:13'),
(90,	'2021-06-30',	5,	'campagne7',	'3',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'30062021',	'2021-07-05 11:35:05',	'2021-07-05 11:35:05'),
(91,	'2021-07-01',	5,	'campagne7',	'6',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'01072021',	'2021-07-05 11:40:34',	'2021-07-05 11:40:34'),
(92,	'2021-07-02',	5,	'campagne7',	'7',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	NULL,	'02072021',	'2021-07-05 11:42:23',	'2021-07-05 11:42:23'),
(93,	'2021-07-03',	5,	'campagne7',	'11',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	'OK',	NULL,	'2021-07-13 16:17:27',	'2021-07-13 16:17:27'),
(94,	'2021-07-03',	5,	'campagne7',	'5',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	'OK',	NULL,	'2021-07-13 16:18:53',	'2021-07-13 16:32:46'),
(95,	'2021-07-03',	5,	'campagne7',	'2',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	'OK',	NULL,	'2021-07-13 16:21:04',	'2021-07-13 16:56:23'),
(96,	'2021-07-06',	5,	'campagne7',	'4',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	'OK',	NULL,	'2021-07-13 17:06:45',	'2021-07-13 17:06:45'),
(97,	'2021-07-07',	5,	'campagne7',	'6',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	'OK',	NULL,	'2021-07-13 17:22:50',	'2021-07-13 17:22:50'),
(98,	'2021-07-08',	5,	'campagne7',	'10',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	'OK',	NULL,	'2021-07-13 17:26:16',	'2021-07-13 17:26:16'),
(99,	'2021-07-08',	5,	'campagne7',	'6',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	'OK',	NULL,	'2021-07-13 17:28:09',	'2021-07-13 17:28:09'),
(100,	'2021-07-09',	5,	'campagne7',	'6',	'2500',	'Particulier',	NULL,	'Autres',	NULL,	NULL,	'OK',	NULL,	'2021-07-13 17:31:31',	'2021-07-13 17:31:31'),
(101,	'2021-07-10',	5,	'campagne7',	'2',	'2500',	'Particulier',	NULL,	'Autres',	0.00,	0.00,	'OK',	'RAS',	'2021-07-15 20:13:35',	'2021-07-15 20:13:35'),
(102,	'2021-07-12',	5,	'campagne7',	'8',	'2500',	'Particulier',	NULL,	'Autres',	0.00,	0.00,	'OK',	'RAS',	'2021-07-15 20:14:14',	'2021-07-15 20:14:14'),
(103,	'2021-07-12',	5,	'campagne7',	'3',	'3000',	'Particulier',	NULL,	'Autres',	0.00,	0.00,	'OK',	'RAS',	'2021-07-15 20:15:33',	'2021-07-15 20:15:33'),
(104,	'2021-07-13',	5,	'campagne7',	'22',	'2500',	'Particulier',	NULL,	'Autres',	0.00,	0.00,	'OK',	'RAS',	'2021-07-15 20:16:42',	'2021-07-15 20:16:42'),
(105,	'2021-07-13',	5,	'campagne7',	'3',	'3000',	'Particulier',	NULL,	'Autres',	0.00,	0.00,	'OK',	'RAS',	'2021-07-15 20:17:22',	'2021-07-15 20:17:22'),
(106,	'2021-07-14',	5,	'campagne7',	'3',	'3000',	'Particulier',	NULL,	'Autres',	0.00,	0.00,	'OK',	'RAS',	'2021-07-15 20:18:18',	'2021-07-15 20:18:18'),
(107,	'2021-07-14',	5,	'campagne7',	'7',	'2500',	'Particulier',	NULL,	'Autres',	0.00,	0.00,	'OK',	'RAS',	'2021-07-15 20:19:01',	'2021-07-15 20:19:01'),
(108,	'2021-07-15',	5,	'campagne7',	'3',	'2500',	'Particulier',	NULL,	'Autres',	0.00,	0.00,	'OK',	'RAS',	'2021-07-16 20:29:37',	'2021-07-16 20:29:37'),
(109,	'2021-07-16',	5,	'campagne7',	'3',	'3000',	'Particulier',	NULL,	'Autres',	0.00,	0.00,	'OK',	'RAS',	'2021-07-16 20:30:51',	'2021-07-16 20:30:51'),
(110,	'2021-07-16',	5,	'campagne7',	'5',	'2500',	'Particulier',	NULL,	'Autres',	0.00,	0.00,	'OK',	'RAS',	'2021-07-16 20:32:20',	'2021-07-16 20:32:20');

-- 2021-08-04 11:27:49
