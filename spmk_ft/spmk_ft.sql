-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2018 at 04:42 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spmk_ft`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `kode` int(2) NOT NULL AUTO_INCREMENT,
  `nidn` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`kode`, `nidn`, `nama`, `alamat`, `telp`) VALUES
(47, '010001', 'Ade Bastian, S.T.,M.T.,', '', ''),
(50, '010003', 'Eidelweis Dewi J. M.Pd.', '', ''),
(53, '010004', 'Enang Rusnandi, M.Kom.', '', ''),
(61, '010002', 'Sandi Fajar Rodiansya, S.T.,M.Cs.', '', ''),
(85, '010005', 'Dede Abrurahman, S.T.,M.Msi.', '', ''),
(86, '010006', 'Dadan Zaliluddin, S.T.,M.Kom.', '', ''),
(87, '010007', 'Wawan Hermawan, S.Pd.', '', ''),
(88, '010008', 'Ardi Mardiana, S.T.,M.Kom', '', ''),
(89, '010009', 'Hj.Siti Khodijah, MM.', '', ''),
(90, '010010', 'Hafni Rizanuddin Nur, MM.', '', ''),
(91, '010011', 'Nuruhidayat, M.Ag.', '', ''),
(92, '010012', 'Budiman, S.T.,M.Kom.', '', ''),
(93, '010013', 'Asep Rachmat, S.T.,M.T.,', '', ''),
(94, '010014', 'Tantry Wahyuni, S.T.,M.T.', '', ''),
(95, '010015', 'Harun Sujadi, S.T.,M.Kom.', '', ''),
(96, '010016', 'Tri Ferga Prasetyo, S.T.,M.Kom.', '', ''),
(97, '010017', 'Nunu Nurdiana, S.T.,M.Kom.', '', ''),
(98, '010018', 'Ii Sopiandi, S.T.,M.Kom.', '', ''),
(99, '010019', 'Deffy Susanti, S.T.,M.Kom.', '', ''),
(100, '010020', 'Dony Susandi, S.T.,M.T.', '', ''),
(101, '010021', 'Suhendri, S.T.,M.Kom.', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE IF NOT EXISTS `hari` (
  `kode` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`kode`, `nama`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat'),
(6, 'Sabtu');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `kode` int(10) NOT NULL AUTO_INCREMENT,
  `kode_mk` int(10) DEFAULT NULL,
  `kode_dosen` int(10) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `tahun_akademik` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=288 ;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`kode`, `kode_mk`, `kode_dosen`, `kelas`, `tahun_akademik`) VALUES
(1, 1, 1, 'F', '2011-2012'),
(2, 1, 1, 'G', '2011-2012'),
(3, 1, 1, 'H', '2011-2012'),
(4, 1, 2, 'A', '2011-2012'),
(5, 1, 2, 'D', '2011-2012'),
(6, 2, 3, 'A', '2011-2012'),
(7, 2, 3, 'C', '2011-2012'),
(8, 2, 3, 'D', '2011-2012'),
(9, 2, 3, 'B', '2011-2012'),
(10, 2, 4, 'E', '2011-2012'),
(11, 2, 4, 'G', '2011-2012'),
(12, 2, 4, 'H', '2011-2012'),
(13, 2, 4, 'F', '2011-2012'),
(14, 4, 43, 'C', '2011-2012'),
(15, 4, 43, 'A', '2011-2012'),
(16, 4, 43, 'B', '2011-2012'),
(17, 4, 43, 'D', '2011-2012'),
(18, 3, 37, 'A', '2011-2012'),
(19, 3, 37, 'B', '2011-2012'),
(20, 24, 37, 'G', '2011-2012'),
(21, 24, 37, 'E', '2011-2012'),
(22, 24, 37, 'F', '2011-2012'),
(23, 6, 38, 'F', '2011-2012'),
(24, 6, 38, 'C', '2011-2012'),
(25, 6, 38, 'G', '2011-2012'),
(26, 6, 38, 'H', '2011-2012'),
(27, 18, 39, 'D', '2011-2012'),
(32, 18, 39, 'B', '2011-2012'),
(33, 18, 39, 'C', '2011-2012'),
(34, 18, 39, 'A', '2011-2012'),
(36, 19, 40, 'G', '2011-2012'),
(37, 19, 40, 'H', '2011-2012'),
(38, 20, 41, 'E', '2011-2012'),
(39, 20, 41, 'C', '2011-2012'),
(40, 20, 41, 'D', '2011-2012'),
(41, 20, 41, 'F', '2011-2012'),
(42, 12, 41, 'A', '2011-2012'),
(43, 12, 41, 'B', '2011-2012'),
(44, 18, 42, 'H', '2011-2012'),
(45, 18, 42, 'G', '2011-2012'),
(47, 34, 42, 'D', '2011-2012'),
(48, 7, 49, 'F', '2011-2012'),
(49, 7, 49, 'D', '2011-2012'),
(50, 7, 49, 'C', '2011-2012'),
(51, 7, 50, 'A', '2011-2012'),
(52, 7, 50, 'B', '2011-2012'),
(53, 22, 55, 'B', '2011-2012'),
(54, 22, 55, 'A', '2011-2012'),
(55, 22, 55, 'C', '2011-2012'),
(56, 22, 55, 'D', '2011-2012'),
(57, 9, 56, 'F', '2011-2012'),
(58, 9, 56, 'E', '2011-2012'),
(59, 9, 56, 'G', '2011-2012'),
(60, 20, 44, 'B', '2011-2012'),
(61, 22, 44, 'G', '2011-2012'),
(62, 22, 44, 'E', '2011-2012'),
(63, 22, 44, 'F', '2011-2012'),
(64, 20, 45, 'A', '2011-2012'),
(65, 20, 45, 'G', '2011-2012'),
(66, 20, 45, 'H', '2011-2012'),
(67, 12, 45, 'C', '2011-2012'),
(68, 4, 46, 'E', '2011-2012'),
(69, 4, 46, 'F', '2011-2012'),
(70, 28, 46, 'D', '2011-2012'),
(71, 28, 46, 'E', '2011-2012'),
(72, 18, 47, 'F', '2011-2012'),
(73, 18, 47, 'E', '2011-2012'),
(74, 6, 48, 'A', '2011-2012'),
(75, 6, 48, 'E', '2011-2012'),
(76, 6, 48, 'D', '2011-2012'),
(77, 11, 77, 'E', '2011-2012'),
(78, 11, 77, 'D', '2011-2012'),
(79, 11, 77, 'F', '2011-2012'),
(80, 8, 70, 'A', '2011-2012'),
(82, 8, 70, 'C', '2011-2012'),
(83, 8, 70, 'B', '2011-2012'),
(84, 17, 64, 'C', '2011-2012'),
(85, 17, 64, 'D', '2011-2012'),
(86, 31, 66, 'D', '2011-2012'),
(87, 31, 66, 'C', '2011-2012'),
(88, 30, 67, 'B', '2011-2012'),
(89, 30, 67, 'A', '2011-2012'),
(92, 9, 84, 'A', '2011-2012'),
(93, 9, 84, 'B', '2011-2012'),
(94, 9, 84, 'C', '2011-2012'),
(95, 9, 84, 'D', '2011-2012'),
(96, 24, 82, 'B', '2011-2012'),
(97, 24, 82, 'C', '2011-2012'),
(98, 24, 82, 'D', '2011-2012'),
(99, 24, 82, 'A', '2011-2012'),
(100, 11, 83, 'B', '2011-2012'),
(101, 11, 83, 'A', '2011-2012'),
(102, 11, 83, 'C', '2011-2012'),
(103, 10, 57, 'C', '2011-2012'),
(104, 10, 57, 'E', '2011-2012'),
(105, 10, 57, 'F', '2011-2012'),
(106, 10, 57, 'D', '2011-2012'),
(107, 10, 75, 'B', '2011-2012'),
(108, 10, 75, 'A', '2011-2012'),
(109, 36, 63, 'C', '2011-2012'),
(110, 36, 63, 'D', '2011-2012'),
(111, 36, 63, 'A', '2011-2012'),
(112, 8, 81, 'D', '2011-2012'),
(113, 8, 81, 'F', '2011-2012'),
(114, 8, 81, 'E', '2011-2012'),
(115, 26, 79, 'B', '2011-2012'),
(116, 26, 79, 'A', '2011-2012'),
(117, 26, 79, 'C', '2011-2012'),
(118, 28, 80, 'C', '2011-2012'),
(119, 28, 80, 'A', '2011-2012'),
(120, 28, 80, 'B', '2011-2012'),
(121, 26, 76, 'D', '2011-2012'),
(122, 26, 76, 'E', '2011-2012'),
(123, 26, 76, 'F', '2011-2012'),
(124, 3, 52, 'C', '2011-2012'),
(125, 3, 52, 'E', '2011-2012'),
(126, 3, 52, 'D', '2011-2012'),
(127, 3, 53, 'H', '2011-2012'),
(128, 3, 53, 'G', '2011-2012'),
(129, 3, 53, 'F', '2011-2012'),
(130, 17, 75, 'A', '2011-2012'),
(131, 17, 75, 'B', '2011-2012'),
(132, 7, 51, 'H', '2011-2012'),
(133, 7, 51, 'E', '2011-2012'),
(134, 7, 51, 'G', '2011-2012'),
(144, 15, 65, 'B', '2011-2012'),
(145, 15, 65, 'A', '2011-2012'),
(146, 10, 71, 'G', '2011-2012'),
(147, 11, 72, 'G', '2011-2012'),
(148, 32, 63, 'B', '2011-2012'),
(149, 13, 60, 'A', '2011-2012'),
(150, 13, 60, 'B', '2011-2012'),
(151, 13, 69, 'C', '2011-2012'),
(152, 8, 54, 'C', '2011-2012'),
(153, 8, 54, 'B', '2011-2012'),
(154, 36, 54, 'A', '2011-2012'),
(155, 36, 81, 'B', '2011-2012'),
(156, 8, 78, 'G', '2011-2012'),
(157, 28, 74, 'F', '2011-2012'),
(158, 28, 74, 'G', '2011-2012'),
(159, 26, 73, 'G', '2011-2012'),
(160, 34, 68, 'A', '2011-2012'),
(161, 34, 68, 'B', '2011-2012'),
(162, 32, 58, 'C', '2011-2012'),
(163, 32, 58, 'D', '2011-2012'),
(164, 15, 59, 'C', '2011-2012'),
(165, 14, 61, 'A', '2011-2012'),
(166, 14, 61, 'B', '2011-2012'),
(167, 14, 62, 'C', '2011-2012'),
(168, 39, 47, 'A', '2017-2018'),
(169, 39, 47, 'B', '2017-2018'),
(170, 39, 47, 'C', '2017-2018'),
(171, 39, 47, 'D', '2017-2018'),
(172, 38, 50, 'A', '2017-2018'),
(173, 38, 93, 'B', '2017-2018'),
(174, 38, 50, 'C', '2017-2018'),
(176, 40, 97, 'A', '2017-2018'),
(177, 40, 97, 'B', '2017-2018'),
(178, 40, 97, 'C', '2017-2018'),
(179, 40, 97, 'D', '2017-2018'),
(184, 45, 47, 'A', '2017-2018'),
(185, 45, 47, 'B', '2017-2018'),
(186, 45, 47, 'C', '2017-2018'),
(187, 45, 47, 'D', '2017-2018'),
(188, 44, 95, 'A', '2017-2018'),
(189, 44, 95, 'B', '2017-2018'),
(190, 44, 95, 'C', '2017-2018'),
(191, 44, 95, 'D', '2017-2018'),
(192, 42, 96, 'A', '2017-2018'),
(193, 42, 96, 'B', '2017-2018'),
(194, 42, 96, 'C', '2017-2018'),
(195, 42, 96, 'D', '2017-2018'),
(196, 41, 53, 'A', '2017-2018'),
(197, 41, 53, 'B', '2017-2018'),
(198, 41, 53, 'C', '2017-2018'),
(199, 41, 53, 'D', '2017-2018'),
(204, 49, 88, 'A', '2017-2018'),
(205, 49, 88, 'B', '2017-2018'),
(206, 49, 88, 'C', '2017-2018'),
(207, 49, 88, 'D', '2017-2018'),
(208, 47, 85, 'A', '2017-2018'),
(209, 47, 85, 'B', '2017-2018'),
(210, 47, 85, 'C', '2017-2018'),
(211, 47, 85, 'D', '2017-2018'),
(212, 48, 86, 'A', '2017-2018'),
(213, 48, 86, 'B', '2017-2018'),
(214, 48, 86, 'C', '2017-2018'),
(215, 48, 86, 'D', '2017-2018'),
(216, 54, 87, 'A', '2017-2018'),
(217, 54, 87, 'B', '2017-2018'),
(218, 54, 87, 'C', '2017-2018'),
(219, 54, 87, 'D', '2017-2018'),
(220, 50, 89, 'A', '2017-2018'),
(221, 50, 89, 'B', '2017-2018'),
(222, 50, 89, 'C', '2017-2018'),
(223, 50, 89, 'D', '2017-2018'),
(224, 51, 90, 'A', '2017-2018'),
(225, 51, 90, 'B', '2017-2018'),
(226, 51, 90, 'C', '2017-2018'),
(227, 51, 90, 'D', '2017-2018'),
(228, 52, 91, 'A', '2017-2018'),
(229, 52, 91, 'B', '2017-2018'),
(230, 52, 91, 'C', '2017-2018'),
(231, 52, 91, 'D', '2017-2018'),
(232, 53, 94, 'A', '2017-2018'),
(233, 53, 94, 'B', '2017-2018'),
(234, 53, 94, 'C', '2017-2018'),
(235, 53, 94, 'D', '2017-2018'),
(236, 55, 96, 'A', '2017-2018'),
(237, 55, 96, 'B', '2017-2018'),
(238, 55, 96, 'C', '2017-2018'),
(239, 55, 96, 'D', '2017-2018'),
(240, 46, 88, 'A', '2017-2018'),
(241, 46, 88, 'B', '2017-2018'),
(242, 46, 88, 'C', '2017-2018'),
(243, 46, 88, 'D', '2017-2018'),
(244, 56, 98, 'A', '2017-2018'),
(245, 56, 98, 'B', '2017-2018'),
(246, 56, 98, 'C', '2017-2018'),
(247, 56, 98, 'D', '2017-2018'),
(248, 57, 86, 'A', '2017-2018'),
(249, 57, 86, 'B', '2017-2018'),
(250, 57, 86, 'C', '2017-2018'),
(251, 57, 86, 'D', '2017-2018'),
(252, 58, 92, 'A', '2017-2018'),
(253, 58, 92, 'B', '2017-2018'),
(254, 58, 92, 'C', '2017-2018'),
(255, 58, 92, 'D', '2017-2018'),
(256, 59, 94, 'A', '2017-2018'),
(257, 59, 94, 'B', '2017-2018'),
(258, 59, 94, 'C', '2017-2018'),
(259, 59, 94, 'D', '2017-2018'),
(260, 61, 61, 'A', '2017-2018'),
(261, 61, 61, 'B', '2017-2018'),
(262, 61, 61, 'C', '2017-2018'),
(263, 61, 61, 'D', '2017-2018'),
(264, 62, 100, 'A', '2017-2018'),
(265, 62, 100, 'B', '2017-2018'),
(266, 62, 100, 'C', '2017-2018'),
(267, 62, 100, 'D', '2017-2018'),
(268, 64, 47, 'A', '2017-2018'),
(269, 64, 47, 'B', '2017-2018'),
(270, 64, 47, 'C', '2017-2018'),
(271, 64, 47, 'D', '2017-2018'),
(272, 63, 101, 'A', '2017-2018'),
(273, 63, 101, 'B', '2017-2018'),
(274, 63, 101, 'C', '2017-2018'),
(275, 63, 101, 'D', '2017-2018'),
(276, 67, 99, 'A', '2017-2018'),
(277, 67, 99, 'B', '2017-2018'),
(278, 67, 99, 'C', '2017-2018'),
(279, 67, 99, 'D', '2017-2018'),
(280, 65, 86, 'A', '2017-2018'),
(281, 65, 86, 'B', '2017-2018'),
(282, 65, 95, 'C', '2017-2018'),
(283, 65, 95, 'D', '2017-2018'),
(284, 66, 85, 'A', '2017-2018'),
(285, 66, 85, 'B', '2017-2018'),
(286, 66, 85, 'C', '2017-2018'),
(287, 66, 85, 'D', '2017-2018');

-- --------------------------------------------------------

--
-- Table structure for table `jadwalkuliah`
--

CREATE TABLE IF NOT EXISTS `jadwalkuliah` (
  `kode` int(10) NOT NULL AUTO_INCREMENT,
  `kode_jadwal` int(10) DEFAULT NULL,
  `kode_jam` int(10) DEFAULT NULL,
  `kode_hari` int(10) DEFAULT NULL,
  `kode_ruang` int(10) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='hasil proses' AUTO_INCREMENT=112 ;

--
-- Dumping data for table `jadwalkuliah`
--

INSERT INTO `jadwalkuliah` (`kode`, `kode_jadwal`, `kode_jam`, `kode_hari`, `kode_ruang`) VALUES
(1, 168, 10, 5, 3),
(2, 169, 2, 5, 10),
(3, 170, 3, 6, 2),
(4, 171, 1, 3, 1),
(5, 172, 3, 2, 2),
(6, 173, 1, 4, 1),
(7, 174, 9, 3, 10),
(8, 176, 1, 5, 9),
(9, 177, 3, 4, 9),
(10, 178, 9, 4, 6),
(11, 179, 2, 6, 23),
(12, 184, 10, 6, 4),
(13, 185, 3, 3, 2),
(14, 186, 1, 1, 5),
(15, 187, 9, 3, 5),
(16, 188, 9, 5, 2),
(17, 189, 1, 3, 25),
(18, 190, 1, 5, 23),
(19, 191, 1, 6, 3),
(20, 192, 6, 2, 25),
(21, 193, 8, 1, 2),
(22, 194, 3, 2, 4),
(23, 195, 8, 4, 11),
(24, 196, 6, 6, 3),
(25, 197, 7, 5, 3),
(26, 198, 1, 3, 22),
(27, 199, 9, 1, 6),
(28, 204, 5, 3, 26),
(29, 205, 6, 6, 14),
(30, 206, 8, 1, 26),
(31, 207, 9, 3, 1),
(32, 208, 10, 2, 12),
(33, 209, 1, 2, 25),
(34, 210, 7, 3, 22),
(35, 211, 6, 4, 3),
(36, 212, 3, 3, 21),
(37, 213, 9, 1, 14),
(38, 214, 6, 1, 22),
(39, 215, 9, 5, 26),
(40, 216, 8, 5, 13),
(41, 217, 5, 3, 14),
(42, 218, 3, 3, 7),
(43, 219, 2, 5, 3),
(44, 220, 5, 3, 11),
(45, 221, 8, 3, 7),
(46, 222, 2, 4, 21),
(47, 223, 10, 5, 25),
(48, 224, 10, 4, 1),
(49, 225, 4, 1, 13),
(50, 226, 4, 2, 14),
(51, 227, 9, 1, 24),
(52, 228, 2, 5, 6),
(53, 229, 4, 3, 22),
(54, 230, 8, 2, 4),
(55, 231, 3, 6, 14),
(56, 232, 4, 6, 22),
(57, 233, 8, 4, 8),
(58, 234, 4, 3, 12),
(59, 235, 7, 5, 9),
(60, 236, 9, 3, 24),
(61, 237, 2, 6, 4),
(62, 238, 9, 5, 8),
(63, 239, 4, 4, 11),
(64, 240, 1, 2, 10),
(65, 241, 8, 5, 7),
(66, 242, 5, 1, 26),
(67, 243, 1, 1, 4),
(68, 244, 9, 3, 23),
(69, 245, 1, 5, 8),
(70, 246, 7, 4, 26),
(71, 247, 6, 6, 7),
(72, 248, 1, 5, 12),
(73, 249, 4, 6, 11),
(74, 250, 2, 4, 7),
(75, 251, 6, 4, 13),
(76, 252, 8, 2, 22),
(77, 253, 1, 4, 11),
(78, 254, 9, 3, 4),
(79, 255, 5, 1, 12),
(80, 256, 3, 1, 11),
(81, 257, 6, 3, 6),
(82, 258, 9, 5, 23),
(83, 259, 4, 4, 13),
(84, 260, 3, 6, 21),
(85, 261, 7, 6, 5),
(86, 262, 3, 2, 23),
(87, 263, 8, 4, 12),
(88, 264, 6, 2, 24),
(89, 265, 9, 1, 1),
(90, 266, 5, 6, 13),
(91, 267, 10, 3, 21),
(92, 268, 9, 2, 3),
(93, 269, 4, 4, 5),
(94, 270, 5, 3, 2),
(95, 271, 4, 1, 8),
(96, 272, 2, 1, 26),
(97, 273, 1, 3, 8),
(98, 274, 1, 5, 1),
(99, 275, 3, 2, 11),
(100, 276, 7, 4, 21),
(101, 277, 9, 1, 11),
(102, 278, 2, 2, 9),
(103, 279, 7, 2, 13),
(104, 280, 1, 1, 12),
(105, 281, 7, 2, 6),
(106, 282, 1, 2, 8),
(107, 283, 4, 4, 2),
(108, 284, 8, 6, 4),
(109, 285, 4, 1, 10),
(110, 286, 5, 6, 24),
(111, 287, 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE IF NOT EXISTS `jam` (
  `kode` int(10) NOT NULL AUTO_INCREMENT,
  `range_jam` varchar(50) DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`kode`, `range_jam`, `aktif`) VALUES
(1, '08.00-08.50', NULL),
(2, '08.50-09.30', NULL),
(3, '09.40-10.30', NULL),
(4, '10.30-11.20', NULL),
(5, '11.20-12.10', NULL),
(6, '12.10-13.00', NULL),
(7, '13.00-13.50', NULL),
(8, '13.50-14.40', NULL),
(9, '14.40-15.30', NULL),
(10, '15.30-16.20', NULL),
(11, '16.20-17.10', NULL),
(12, '17.10-18.00', NULL),
(13, '18.00-18.50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE IF NOT EXISTS `matakuliah` (
  `kode` int(10) NOT NULL AUTO_INCREMENT,
  `kode_mk` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `sks` int(6) DEFAULT NULL,
  `semester` int(6) DEFAULT NULL,
  `aktif` enum('True','False') DEFAULT 'True',
  `jenis` enum('TEORI','PRAKTIKUM') DEFAULT 'TEORI',
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='example kode_mk = 0765109 ' AUTO_INCREMENT=69 ;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode`, `kode_mk`, `nama`, `sks`, `semester`, `aktif`, `jenis`) VALUES
(38, 'FTFDS', 'Fisika Dasar ', 2, 1, 'True', 'TEORI'),
(39, 'TIFSPK', 'Sistem Pakar', 2, 7, 'True', 'TEORI'),
(40, 'TIFBHM', 'Bahasa Mesin', 3, 5, 'True', 'TEORI'),
(41, 'TIFETP', 'Etika Profesi', 2, 5, 'True', 'TEORI'),
(42, 'TIFUJK', 'Uji Kualitas', 3, 7, 'True', 'TEORI'),
(43, 'TIFKP', 'Kerja Praktek', 2, 7, 'True', 'TEORI'),
(44, 'TIFARK', 'Arsitektur Komputer', 2, 3, 'True', 'TEORI'),
(45, 'TIFSIM', 'Sistem Informasi Manajemen', 2, 3, 'True', 'TEORI'),
(46, 'TIFSTDD', 'Struktur Data 2', 2, 3, 'True', 'TEORI'),
(47, 'TIFPIN', 'Pengantar Informatika', 2, 1, 'True', 'TEORI'),
(48, 'TIFBTT', 'Bahasa Tingkat Tinggi', 3, 1, 'True', 'TEORI'),
(49, 'TIFALP', 'Algoritma Pemrograman', 3, 1, 'True', 'TEORI'),
(50, 'MKUPKN', 'Pendidikan Kewarganegaraan', 2, 1, 'True', 'TEORI'),
(51, 'MKUPPC', 'Pendidikan Pancasila', 2, 1, 'True', 'TEORI'),
(52, 'MKUAGM', 'Pendidikan Agama', 2, 1, 'True', 'TEORI'),
(53, 'FTKLKS', 'Kalkulus 1', 2, 1, 'True', 'TEORI'),
(54, 'TIFENG', 'Bahasa Inggris', 2, 1, 'True', 'TEORI'),
(55, 'TIFPIB', 'Pengantar Intelejensi Buatan', 3, 3, 'True', 'TEORI'),
(56, 'TIFALJ', 'Aljabar Linear', 2, 3, 'True', 'TEORI'),
(57, 'TIFSBD', 'Sistem Basis Data', 2, 3, 'True', 'TEORI'),
(58, 'TIFMPY', 'Manajemen Proyek', 2, 3, 'True', 'TEORI'),
(59, 'FTKLL', 'Kalkulus Lanjut', 2, 3, 'True', 'TEORI'),
(60, 'TIFPBO', 'Pemrograman Berorientasi Objek', 3, 7, 'True', 'TEORI'),
(61, 'TIFMNN', 'Metode Numerik', 3, 5, 'True', 'TEORI'),
(62, 'FTSTP', 'Statistik dan Probabilitas', 2, 5, 'True', 'TEORI'),
(63, 'TIFPSPL', 'Pengembangan Sistem Perangkat Lunak', 3, 5, 'True', 'TEORI'),
(64, 'TIFPMM', 'Pengantar Multimedia', 3, 5, 'True', 'TEORI'),
(65, 'TIFJRK', 'Jaringan Komputer', 3, 5, 'True', 'TEORI'),
(66, 'TIFIMK', 'Interaksi Manusia Komputer', 2, 5, 'True', 'TEORI'),
(67, 'TIFTKM', 'Teknik Kompilasi', 3, 5, 'True', 'TEORI');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE IF NOT EXISTS `ruang` (
  `kode` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `kapasitas` int(10) DEFAULT NULL,
  `jenis` enum('TEORI','LABORATORIUM') DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`kode`, `nama`, `kapasitas`, `jenis`) VALUES
(1, '301', 25, 'TEORI'),
(2, '302', 25, 'TEORI'),
(3, '303', 25, 'TEORI'),
(4, '304', 25, 'TEORI'),
(5, '305', 25, 'TEORI'),
(6, '306', 25, 'TEORI'),
(7, '307', 25, 'TEORI'),
(8, '308', 25, 'TEORI'),
(9, '309', 25, 'TEORI'),
(10, '310', 25, 'TEORI'),
(11, '311', 25, 'TEORI'),
(12, '312', 25, 'TEORI'),
(13, '313', 25, 'TEORI'),
(14, '314', 25, 'TEORI'),
(18, 'Lab. Multimedia', 25, 'LABORATORIUM'),
(19, 'Lab. Jaringan Komputer', 25, 'LABORATORIUM'),
(20, 'Lab. Daskom', 25, 'LABORATORIUM'),
(21, '315', 25, 'TEORI'),
(22, '316', 25, 'TEORI'),
(23, '317', 25, 'TEORI'),
(24, '318', 25, 'TEORI'),
(25, '319', 25, 'TEORI'),
(26, '320', 25, 'TEORI');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `level` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `waktu_tidak_bersedia`
--

CREATE TABLE IF NOT EXISTS `waktu_tidak_bersedia` (
  `kode` int(10) NOT NULL AUTO_INCREMENT,
  `kode_dosen` int(10) DEFAULT NULL,
  `kode_hari` int(10) DEFAULT NULL,
  `kode_jam` int(10) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;