-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2019 at 11:23 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db-physical`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `staffId` int(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`staffId`, `name`, `password`) VALUES
(1, 'admin', 'aCcEsS'),
(1, 'admin', 'aCcEsS'),
(1, 'admin', 'aCcEsS');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `course_code` varchar(10) NOT NULL,
  `course_Title` varchar(50) NOT NULL,
  PRIMARY KEY (`course_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_department`
--

CREATE TABLE IF NOT EXISTS `course_department` (
  `course_code` varchar(10) NOT NULL,
  `departmentName` varchar(50) NOT NULL,
  PRIMARY KEY (`course_code`,`departmentName`),
  KEY `departmentName` (`departmentName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departmentt`
--

CREATE TABLE IF NOT EXISTS `departmentt` (
  `departmentId` varchar(10) NOT NULL,
  `departmentName` varchar(50) NOT NULL,
  `Location` int(50) NOT NULL,
  `staffId` varchar(10) NOT NULL,
  PRIMARY KEY (`departmentName`),
  KEY `staffId` (`staffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_lect`
--

CREATE TABLE IF NOT EXISTS `department_lect` (
  `departmentName` varchar(50) NOT NULL,
  `lectId` varchar(10) NOT NULL,
  PRIMARY KEY (`departmentName`,`lectId`),
  KEY `lectId` (`lectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hodt`
--

CREATE TABLE IF NOT EXISTS `hodt` (
  `staffId` varchar(10) NOT NULL,
  `staffName` varchar(50) NOT NULL,
  PRIMARY KEY (`staffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `hod_view`
--
CREATE TABLE IF NOT EXISTS `hod_view` (
`staffName` varchar(50)
,`departmentName` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE IF NOT EXISTS `lecturer` (
  `lectId` varchar(10) NOT NULL,
  `lectName` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  PRIMARY KEY (`lectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `lecturer_view`
--
CREATE TABLE IF NOT EXISTS `lecturer_view` (
`lectId` varchar(10)
,`departmentName` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentId` int(3) NOT NULL AUTO_INCREMENT,
  `matricNo` varchar(15) NOT NULL,
  `departmentName` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `date_of_birth` date NOT NULL,
  `level` varchar(10) NOT NULL,
  `state_of_origin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=223 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentId`, `matricNo`, `departmentName`, `Name`, `Gender`, `date_of_birth`, `level`, `state_of_origin`) VALUES
(1, '17/0941440173', 'Geology', 'Ushie Gabriel Akomaye', 'Male', '0000-00-00', '100', NULL),
(2, '17/094144038', 'Geology', 'Boms Chika Walter', 'Female', '0000-00-00', '100', NULL),
(3, '17/095244124', 'Computer Science', 'Bako Samsom Luku', 'Male', '2019-06-17', '100', NULL),
(4, '17/095344002', 'Statistics', 'Abang John Oliver', 'Male', '2019-06-30', '200', NULL),
(5, '17/095344042', '', '', '', '2019-06-17', '100', NULL),
(6, '85004843 CD', 'Computer Science', 'Nwako Justina', 'Female', '2019-06-17', '100', NULL),
(7, '85004843CD', '', '', '', '0000-00-00', '100', NULL),
(8, '85005090 FI', 'Computer Science', 'Christian Prince Chidiebere', 'Male', '2019-06-17', '100', NULL),
(9, '85006653CF', 'Geology', 'Louis Temple Chimuaya', 'Male', '0000-00-00', '100', NULL),
(10, '85020325 EA', 'Computer science', 'Ugwunna Sandra Chisom', 'Female', '2019-06-17', '100', NULL),
(11, '85029032 BC', 'Computer Science', 'Uchechukwu Fortune E.', 'Female', '2019-06-17', '100', NULL),
(12, '85031826 GJ', 'Computer science', 'Uwabunkeonye Chukwuka Confidence', 'Female', '2019-06-17', '100', NULL),
(13, '85031826GJ', 'Geology', 'Uwabunkeonye Chukwuka Confidence', 'Female', '0000-00-00', '100', NULL),
(14, '85042556ID', 'Geology', 'Ndubisi Victor Kanu', 'Male', '0000-00-00', '100', NULL),
(15, '85068644AB', 'Geology', 'Sam Miracle Bassey', 'Male', '0000-00-00', '100', NULL),
(16, '85072721 IJ', '', '', '', '2019-06-17', '100', NULL),
(17, '85072721LI', 'Geology', 'Nnebedum Precious Chinaza', 'Female', '0000-00-00', '100', NULL),
(18, '85079855 B CH', 'Statistics', 'Ofem Margaret Enang', 'Female', '2019-06-17', '100', NULL),
(19, '8508644 AB', 'Computer Science', 'Sam Miracle Bassey', 'Male', '2019-06-17', '100', NULL),
(20, '85087490 BE', 'Computer Science', 'Ositadimma Francis Chinecherem', 'Male', '2019-06-17', '100', NULL),
(21, '85087490BE', 'Geology', 'Ositadinma Francis Chidineeherem', 'Male', '0000-00-00', '100', NULL),
(22, '85103421 EC', 'Computer Science', 'Osakwe Marycynthia Chinonso', 'Female', '2019-06-17', '100', NULL),
(23, '85103421EC', 'Geology', 'Osakwe Mary-Cynthia Chinonso', 'Female', '0000-00-00', '100', NULL),
(24, '85113262 AH', 'Computer science', 'Okoli Onyekachukwu Christian', 'Female', '2019-06-17', '100', NULL),
(25, '85113262AH', 'Geology', 'Okoli Onyekachukwu Christian', 'Male', '0000-00-00', '100', NULL),
(26, '85173989IJ', 'Geology', 'Liamngee Andrew Terngu', 'Male', '0000-00-00', '100', NULL),
(27, '85191891 CE', 'Computer science', 'Agana Godwin Ulimukah', 'Male', '2019-06-17', '100', NULL),
(28, '85207500 EI', 'Statistics', 'Eziukwu Samuel Gozie', 'Male', '2019-06-17', '100', NULL),
(29, '85207534ED', 'Geology', 'Arah Godswisdom Afor', 'Male', '0000-00-00', '100', NULL),
(30, '85207811 IF', 'Computer Science', 'Sunday Aniefiok Jeremiah', 'Male', '2019-06-17', '100', NULL),
(31, '85207811IF', 'Geology', 'Sunday Aniefiok Jeremiah', 'Male', '0000-00-00', '100', NULL),
(32, '85207899BF', 'Geology', 'Ayuk Tanyi Cyril', 'Male', '0000-00-00', '100', NULL),
(33, '85208295 II', 'Computer science', 'Timothy Timothy Udoobong', 'Male', '2019-06-17', '100', NULL),
(34, '85208543CD', 'Geology', 'Ekpenyong Emmanuel Oyp', 'Male', '0000-00-00', '100', NULL),
(35, '85208632 EH', 'Computer Science', 'Akpan Unyime Effiong', 'Female', '2019-06-17', '100', NULL),
(36, '85209081FI', 'Geology', 'Etim Michael Okon', 'Male', '0000-00-00', '100', NULL),
(37, '85209106IA', 'Geology', 'Evong Ogban Moduck', 'Male', '0000-00-00', '100', NULL),
(38, '85209774 BG', 'Computer science', 'Ayiba Ayeeyem Sunday', 'Male', '2019-06-17', '100', NULL),
(39, '85210278FG', 'Geology', 'Ekanem Emmanuel Ekong ', 'Male', '0000-00-00', '100', NULL),
(40, '85210677CC', 'Geology', 'Samson Samuel Anthony', 'Male', '0000-00-00', '100', NULL),
(41, '85210824 GH', 'Computer Science', 'Ayuk Nsearey Tawo', 'Female', '2019-06-17', '100', NULL),
(42, '85210871CD', 'Geology', 'Bassey Daniel Edet', 'Male', '0000-00-00', '100', NULL),
(43, '85210951 HE', 'Computer Science', 'Peter Chiwem Ndubuisi', 'Female', '2019-06-17', '100', NULL),
(44, '85210951HE', 'Geology', 'Peter Chinwem Ndubuisi', 'Female', '0000-00-00', '100', NULL),
(45, '85213778DC', 'Geology', 'Ikpoh Becky Ekama', 'Female', '0000-00-00', '100', NULL),
(46, '85213945 BG', 'Computer Science', 'Obi Goodness Dajie', 'Female', '2019-06-17', '100', NULL),
(47, '85213945BG', 'Geology', 'Obi Goodness Dajie', 'Female', '0000-00-00', '100', NULL),
(48, '85214259 EE', 'Computer Science', 'Bill Andrew Andy', 'Male', '2019-06-17', '100', NULL),
(49, '85214329C', 'Geology', 'Inah Joy Omini', 'Female', '0000-00-00', '100', NULL),
(50, '85215109 BG', 'Computer Science', 'Umari Beatrice Uyado', 'Female', '2019-06-17', '100', NULL),
(51, '85215109BG', 'Geology', 'Umari Beatrice Uyado', 'Female', '0000-00-00', '100', NULL),
(52, '85215121 HH', 'Computer Science', 'Udoh Magdalene Friday', 'Female', '2019-06-17', '100', NULL),
(53, '85215822 BB', 'Computer science', 'Bisong Anthony Wabbily', 'Male', '2019-06-17', '100', NULL),
(54, '85216077 CC', 'Computer Science', 'Sampson Samuel Anthony', 'Male', '2019-06-17', '100', NULL),
(55, '85219183BG', 'Geology', 'Eshiet Victoria Samuel', 'Female', '0000-00-00', '100', NULL),
(56, '85219603BH', 'Geology', 'Edwin Samitah Ebri', 'Female', '0000-00-00', '100', NULL),
(57, '85220424 HG', 'Computer science', 'Bassey Kelvin Bassey', 'Male', '2019-06-17', '100', NULL),
(58, '85220894 CE', 'Computer science', 'Bassey Bassey Joseph', 'Male', '2019-06-17', '100', NULL),
(59, '85221777 JB', 'Computer Science', 'Tase Purity Nkang', 'Female', '2019-06-17', '100', NULL),
(60, '85223034 AG', 'Computer Science', 'Odu Joseph Besong', 'Male', '2019-06-17', '100', NULL),
(61, '85223034AG', 'Geology', 'Odu Joseph Beesong', 'Male', '0000-00-00', '100', NULL),
(62, '85224091 DG', 'Computer Science', 'Agada Gabriel Owoche', 'Male', '2019-06-17', '100', NULL),
(63, '85228374 II', 'Computer Science', 'Okpako Tega Melody', 'Female', '2019-06-17', '100', NULL),
(64, '85228374II', 'Geology', 'Okpako Tega Melody', 'Female', '0000-00-00', '100', NULL),
(65, '8522886EI', 'Geology', 'Egobor Emmanuel Ngbe', 'Male', '0000-00-00', '100', NULL),
(66, '85261533DG', 'Geology', 'Ajah Chibueze Francis', 'Male', '0000-00-00', '100', NULL),
(67, '85263615JF', 'Geology', 'Iboko Chinedu', 'Male', '0000-00-00', '100', NULL),
(68, '85319143GA', 'Geology', 'Ekhafe Victor', 'Male', '0000-00-00', '100', NULL),
(69, '85326841 BA', 'Computer science', 'Chidi Favour Onyekachukwu', 'Female', '2019-06-17', '100', NULL),
(70, '85367073 CE', 'Statistics', 'Idika Kelechi Udensi', 'Male', '2019-06-17', '100', NULL),
(71, '85368171 CI', 'Computer science', 'Ashobi Samuel Uketang', 'Male', '2019-06-17', '100', NULL),
(72, '85386925 CG', 'Computer science', 'Onah Johnbosco Chidubem', 'Male', '2019-06-17', '100', NULL),
(73, '85386925CG', 'Geology', 'Onah Johnbosco Chidubem', 'Male', '0000-00-00', '100', NULL),
(74, '85402865CH', 'Geology', 'Anozie John', 'Male', '0000-00-00', '100', NULL),
(75, '85407768 GC', 'Computer science', 'Agabi Inyaka Agabi', 'Male', '2019-06-17', '100', NULL),
(76, '85475186 FD', 'Computer science', 'Nwaoha Chibuike Wisdom', 'Male', '2019-06-17', '100', NULL),
(77, '85475186FD', 'Geology', 'Nwaoha Chibuike Wisdom', 'Male', '0000-00-00', '100', NULL),
(78, '85478348 HD', 'Computer Science', 'Okafor Chikadibia Lucius', 'Female', '2019-06-17', '100', NULL),
(79, '85478348HD', 'Geology', 'Okafor Chikadibia Lucius', 'Male', '0000-00-00', '100', NULL),
(80, '85479271 CA', 'Computer science', 'Udemba Nelson Onyedikachi', 'Male', '2019-06-17', '100', NULL),
(81, '85506555DC', 'Geology', 'Ibeh Lovelyn Ugochi', 'Female', '0000-00-00', '100', NULL),
(82, '85561172 BI', 'Computer science', 'Anthony Jonathan Ikpe', 'Male', '2019-06-17', '100', NULL),
(83, '85819894EG', 'Geology', 'Amayodavid Philip Ozaze', 'Male', '0000-00-00', '100', NULL),
(84, '85832612 BD', 'Computer science', 'Eki Victory Iwezelevoloetano', 'Female', '2019-06-17', '100', NULL),
(85, '85842003 GH', 'Computer Science', 'Ukor Jeremiah Inyang', 'Male', '2019-06-17', '100', NULL),
(86, '85846713 AC', 'Computer Science', 'Apie Melody Francis', 'Female', '2019-06-17', '100', NULL),
(87, '85855797 BA', 'Computer science', 'Awa Joseph Dike', 'Male', '2019-06-17', '100', NULL),
(88, '85882835IC', 'Geology', 'Bisong Jeremiah Etta', 'Male', '0000-00-00', '100', NULL),
(89, '85890552BH', 'Geology', 'Lawani Gift Glory', 'Female', '0000-00-00', '100', NULL),
(90, '85892108AF', 'Geology', 'Ezeh Chinedu Collins', 'Male', '0000-00-00', '100', NULL),
(91, '85893345 HH', 'Statistics', 'Usep Emmanuel Onita', 'Male', '2019-06-17', '100', NULL),
(92, '85930290 BG', 'Computer Science', 'Augustine Marvellous Mmesoama', 'Female', '2019-06-17', '100', NULL),
(93, '85950275AH', 'Geology', 'Godwin John Ede', 'Male', '0000-00-00', '100', NULL),
(94, '86026518 IF', 'Computer Science', 'Ogbaji Kingsley Chisom', 'Male', '2019-06-17', '100', NULL),
(95, '86026518IF', 'Geology', 'Ogbaji Kingsley Chisom', 'Male', '0000-00-00', '100', NULL),
(96, '86130447AE', 'Geology', 'Charles Ataubokikwan Dagomie', 'Male', '0000-00-00', '100', NULL),
(97, '86194280 FB', 'Computer Science', 'Afolayan Monica Tolu', 'Female', '2019-06-17', '100', NULL),
(98, '86209368 HA', 'Computer science', 'Bassey Freewill Gregory', 'Male', '2019-06-17', '100', NULL),
(99, '86210138II', 'Geology', 'Effiong Imaobong Joseph', 'Female', '0000-00-00', '100', NULL),
(100, '86233193AD', 'Geology', 'Edjere Nathaniel Aghogho', 'Male', '0000-00-00', '100', NULL),
(101, '86234987 FD', 'Computer Science', 'William James Ivu', 'Male', '2019-06-17', '100', NULL),
(102, '86234987FD', 'Geology', 'Williams James Ivu', 'Male', '0000-00-00', '100', NULL),
(103, '86236190DD', 'Geology', 'Ezeani Chisom Precious', 'Female', '0000-00-00', '100', NULL),
(104, '86239739FG', 'Geology', 'Ekanem David Okon', 'Male', '0000-00-00', '100', NULL),
(105, '86242706 HJ', 'Computer Science', 'Amadi Favour Chinweikpe', 'Female', '2019-06-17', '100', NULL),
(106, '86242774GJ', 'Geology', 'Ekpebassey Deborah Odokwo', 'Female', '0000-00-00', '100', NULL),
(107, '86287090DC', 'Geology', 'Ogoke Emmanuel Godson', 'Male', '0000-00-00', '100', NULL),
(108, '86312740 HJ', 'Computer Science', 'Amamgbo Michael Amamgbo', 'Male', '2019-06-17', '100', NULL),
(109, '86337022IA', 'Geology', 'James Nyaknoabasi Cletus', 'Male', '0000-00-00', '100', NULL),
(110, '86337798 IA', 'Computer Science', 'Pious Kingsley Michael', 'Male', '2019-06-17', '100', NULL),
(111, '86337798IA', 'Geology', 'Pious Emmanuel Kingsley', 'Male', '0000-00-00', '100', NULL),
(112, '86339547 HB', 'Computer Science', 'Pious Emmanuel Michael', 'Male', '2019-06-17', '100', NULL),
(113, '86339547HB', 'Geology', 'Pious Emmanuel Michael', 'Male', '0000-00-00', '100', NULL),
(114, '86342261 HH', 'Computer science', 'Obiasogu Chinaza Agatha', 'Female', '2019-06-17', '100', NULL),
(115, '86342261HH', 'Geology', 'Obiasogu Chinaza Agatha', 'Female', '0000-00-00', '100', NULL),
(116, '86347036 BB', 'Statistics', 'Nwankwo Chizoba Michael', 'Male', '2019-06-17', '100', NULL),
(117, '86364368FA', 'Geology', 'Gabriel Francis Onah', 'Male', '0000-00-00', '100', NULL),
(118, '86368877HC', 'Geology', 'Bepeh Miracle Agianbekong', 'Female ', '0000-00-00', '100', NULL),
(119, '86382073E', 'Geology', 'Edet Emmanuel Okon', 'Male', '0000-00-00', '100', NULL),
(120, '86382983DE', 'Geology', 'Ededet Joshua Etim', 'Male', '0000-00-00', '100', NULL),
(121, '86383204 FA', 'Computer science', 'Aponi Jonas Patrick', 'male', '2019-06-17', '100', NULL),
(122, '86383219AF', 'Geology ', 'Eban Mary Njuare', 'Female', '0000-00-00', '100', NULL),
(123, '86383638 AJ', 'Computer Science', 'Nyong Godwin Okon', 'Male', '2019-06-17', '100', NULL),
(124, '86383638AJ', 'Geology', 'Nyong Godwin Okon', 'Male', '0000-00-00', '100', NULL),
(125, '86384073 GC', 'Computer science', 'Abuo Philip Nku', 'Male', '2019-06-17', '100', NULL),
(126, '86384971 IE', 'Computer Science', 'Chukwuma Stephen Chinedu', 'Male', '2019-06-17', '100', NULL),
(127, '86385343DF', 'Geology', 'Chiukpai Israel Okorie', 'Male', '0000-00-00', '100', NULL),
(128, '86387090 DC', 'Computer Science', 'Ogoke Emmanuel Godson', 'Male', '2019-06-17', '100', NULL),
(129, '86387490 JD', 'Computer Science', 'Okoroji Donatus Chukwubue', 'Male', '2019-06-17', '100', NULL),
(130, '86387490JD', 'Geology', 'Okoroji Donatus Chukwubue', 'Male', '0000-00-00', '100', NULL),
(131, '86398209 ED', 'Computer science', 'Adeyemi Adeshina O.', 'Female', '2019-06-17', '100', NULL),
(132, '86433296 EH', 'Statistics', 'Idika Innocent Udensi', 'Male', '2019-06-17', '100', NULL),
(133, '86434464BF', 'Geology', 'Eze Clement Chukwumkasi', 'Male', '0000-00-00', '100', NULL),
(134, '86438498 DI', 'Computer Science', 'Nworie Obinna Emmanuel', 'Male', '2019-06-17', '100', NULL),
(135, '86438498DJ', 'Geology', 'Nworie Obinna Emmanuel', 'Male', '0000-00-00', '100', NULL),
(136, '86459004 BI', 'Computer Science', 'Ojim Glory', 'Female', '2019-06-17', '100', NULL),
(137, '86459004BI', 'Geology', 'Ojim Glory', 'Female', '0000-00-00', '100', NULL),
(138, '86484333HJ', 'Geology', 'Christopher Rosebry', 'Female', '0000-00-00', '100', NULL),
(139, '86570557 AJ', 'Computer science', 'Ogbodo Emmanuel Monday', 'Male', '2019-06-17', '100', NULL),
(140, '86570557AJ', 'Geology', 'Ogbodo Emmanuel Monday', 'Male', '0000-00-00', '100', NULL),
(141, '86575036 FF', 'Computer Science', 'Sheidu Faith Chidinma', 'Female', '2019-06-17', '100', NULL),
(142, '86575036FF', 'Geology', 'Sheidu Faith Chidinma', 'Female', '0000-00-00', '100', NULL),
(143, '86587177AH', 'Geology', 'Alokam Ambrose Chidiebere', 'Male', '0000-00-00', '100', NULL),
(144, '86588359FA', 'Geology', 'Innocent David Isonguyo', 'Male', '0000-00-00', '100', NULL),
(145, '86625796GF', 'Geology', 'Amodu Onjefu Samuel', 'Male', '0000-00-00', '100', NULL),
(146, '86724260 DI', 'Computer Science', 'Archibong Victory Akaninyene', 'Female', '2019-06-17', '100', NULL),
(147, '86724270 AI', 'Computer Science', 'Awewor Esther Efe-Oghene', 'Female', '2019-06-17', '100', NULL),
(148, '86730318AD', 'Geology', 'Hart Tonte Saviour', 'Male', '0000-00-00', '100', NULL),
(149, '86777695HE', 'Geology', 'Antia Ikemesit Ema', 'Female', '0000-00-00', '100', NULL),
(150, '86792654BB', 'Geology', 'Essien Joel Stephen ', 'Male', '0000-00-00', '100', NULL),
(151, '86827232BG', 'Geology', 'Ashiwel Victor Afuobeh', 'Male', '0000-00-00', '100', NULL),
(152, '86837292 FE', 'Computer science', 'Chukwuka Ifeaka Favour', 'Female', '2019-06-17', '100', NULL),
(153, '86841798BJ', 'Geology', 'Ita Daniel Reuben', 'Male', '0000-00-00', '100', NULL),
(154, '86842727FH', 'Geology', 'Ebijiku Titus Attia', 'Male', '0000-00-00', '100', NULL),
(155, '86842752 GH', 'Computer science', 'Ukpong Usen Effiong', 'Male', '2019-06-17', '100', NULL),
(156, '86842752GH', 'Geology', 'Ukpong Usen Effiong', 'Female', '0000-00-00', '100', NULL),
(157, '86844303HA', 'Geology', 'Edet Bright Gregory', 'Male', '0000-00-00', '100', NULL),
(158, '86864982 BG', 'Computer Science', 'Oriaku Darling Ibirifi', 'Female', '2019-06-17', '100', NULL),
(159, '86864982BG', 'Geology', 'Oriaku Darling Ibifire', 'Female', '0000-00-00', '100', NULL),
(160, '86884228JA', 'Geology', 'Daniel Alfred Eseoghene', 'Male', '0000-00-00', '100', NULL),
(161, '86888107 JD', 'Statistics', 'Louis Chimamanda Favour', 'Female', '2019-06-17', '100', NULL),
(162, '86888562 EJ', 'Computer Science', 'Okpo Ola Sylvanus', 'Female', '2019-06-17', '100', NULL),
(163, '86888562EJ', 'Geology', 'Okpo Ola Sylvanus', 'Male', '0000-00-00', '100', NULL),
(164, '868888240IC', 'Geology', 'Moga Alfred Agada', 'Male', '0000-00-00', '100', NULL),
(165, '86890668 HD', 'Computer science', 'Bassey Sam Ogban', 'Male', '2019-06-17', '100', NULL),
(166, '86891775 FA', 'Computer science', 'Azogor Emmanuel Festus', 'Male', '2019-06-17', '100', NULL),
(167, '86892554 EB', 'Computer science', 'Abdullahi Adamu', 'Male', '2019-06-17', '100', NULL),
(168, '86893735 IE', 'Computer science', 'Akpandem Emmanuel Orok', 'Male', '2019-06-17', '100', NULL),
(169, '86893735 IH', 'Computer science', 'Ajaba Gariel Iripia', 'Male', '2019-06-17', '100', NULL),
(170, '86894301DI', 'Geology', 'Ashante Prince', 'Male', '0000-00-00', '100', NULL),
(171, '868990375 HA', 'Computer Science', 'Bassey Helen Ita', 'Female', '2019-06-17', '100', NULL),
(172, '86931845CD', 'Geology', 'Hycent Ngozi Gift', 'Female', '0000-00-00', '100', NULL),
(173, '86981795IH', 'Geology', 'Egom Prosper Mpon', 'Male', '0000-00-00', '100', NULL),
(174, '87026106 JC', 'Computer Science', 'Ofre Emmanuel Apie-ka', 'Male', '2019-06-17', '100', NULL),
(175, '87026106AG', 'Geology', 'Ofre Emmanuel Apie-Ka', 'Male', '0000-00-00', '100', NULL),
(176, '87027646DB', 'Geology', 'Edet Eyo Okon', 'Male', '0000-00-00', '100', NULL),
(177, '87028123 FF', 'Computer Science', 'Takim Emmanuel Odu', 'Male', '2019-06-17', '100', NULL),
(178, '87028396 BC', 'Computer science', 'Amanso Emmanuel Ene', 'Male', '2019-06-17', '100', NULL),
(179, '89135515EI', 'Geology', 'Ayi Ekpenyong Emmanuel', 'Male', '0000-00-00', '100', NULL),
(180, '89233925IG', 'Geology', 'Isaiah Iniobong Peter', 'Male', '0000-00-00', '100', NULL),
(181, '89238823DJ', 'Geology', 'Enyam Emmanuel Enang', 'Male', '0000-00-00', '100', NULL),
(182, 'PDS/2017/00139', 'Geology', 'Nku Peace Ekora', 'Female', '0000-00-00', '100', NULL),
(183, 'PDS/2017/00142', 'Geology', 'Nelson Nelson Aniefiok', 'Male', '0000-00-00', '100', NULL),
(184, 'PDS/2017/00159', 'Geology', 'Ojang Joseph Erim', 'Male', '0000-00-00', '100', NULL),
(185, 'PDS/2017/00764', 'Geology', 'Nworie Maureen Cheluchi', 'Female', '0000-00-00', '100', NULL),
(186, 'PDS/2017/00938', 'Geology', 'Okon Blessing Effiong', 'Female', '0000-00-00', '100', NULL),
(187, 'PDS/2017/01048', 'Geology', 'Oton Emmanuel Friday', 'Male', '0000-00-00', '100', NULL),
(188, 'PDS/2017/0139', 'Computer Science', 'Nku Peace Ekora', 'Female', '2019-06-17', '100', NULL),
(189, 'PDS/2017/0142', 'Computer science', 'Nelson Nelson Aniefiok', 'Male', '2019-06-17', '100', NULL),
(190, 'PDS/2017/01428', 'Geology', 'Osuagwu Smart Kelechi', 'Male', '0000-00-00', '100', NULL),
(191, 'PDS/2017/0159', 'Computer Science', 'Ojang Joseph Erim', 'Male', '2019-06-17', '100', NULL),
(192, 'PDS/2017/01921', 'Geology', 'Nworie Jude Chibuike', 'Male', '0000-00-00', '100', NULL),
(193, 'PDS/2017/01966', 'Geology', 'Ochui Passmark Ochui', 'Male', '0000-00-00', '100', NULL),
(194, 'PDS/2017/0234', 'Computer Science', 'Amos Grandeur Ibor', 'Male', '2019-06-17', '100', NULL),
(195, 'PDS/2017/0676', 'Statistics', 'Joshua Queen Akaninyene', 'Female', '2019-06-17', '100', NULL),
(196, 'PDS/2017/0696', 'Statistics', 'Essien Elizabeth Abedngo', 'Female', '2019-06-17', '100', NULL),
(197, 'PDS/2017/0764', 'Computer Science', 'Nworie Maureen Cheluchi', 'Female', '2019-06-17', '100', NULL),
(198, 'PDS/2017/0779', 'Geology', 'Igbojianya Ozioma Emeka', 'Female', '0000-00-00', '100', NULL),
(199, 'PDS/2017/0906', 'Computer Science', 'Akejulu Joshua Victor', 'Male', '2019-06-17', '100', NULL),
(200, 'PDS/2017/0929', 'Geology', 'Egwu Gideon Elot', 'Male', '0000-00-00', '100', NULL),
(201, 'PDS/2017/0938', 'Computer Science', 'Okon Blessing Effiong', 'Female', '2019-06-17', '100', NULL),
(202, 'PDS/2017/0996', 'Geology', 'Akpan Michael Charles', 'Male', '0000-00-00', '100', NULL),
(203, 'PDS/2017/1048', 'Computer science', 'Oton Emmanuel Friday', 'Male', '2019-06-17', '100', NULL),
(204, 'PDS/2017/1053', 'Geology', 'Ezekiel Akaniyene Udoidiong', 'Male', '0000-00-00', '100', NULL),
(205, 'PDS/2017/1076', 'Statistics', 'Egbune Ashionye Sonia', 'Female', '2019-06-30', '100', NULL),
(206, 'PDS/2017/1100', 'Statistics', 'Jonah Salome Uduak', 'Female', '2019-06-17', '100', NULL),
(207, 'PDS/2017/1113', 'Geology', 'Eteng Wisdom Joseph', 'Male', '0000-00-00', '100', NULL),
(208, 'PDS/2017/1140', 'Computer Science', 'Bisong Paul Bukie', 'Male', '2019-06-17', '100', NULL),
(209, 'PDS/2017/1263', 'Computer Science', 'Bassey David Okon', 'Male', '2019-06-17', '100', NULL),
(210, 'PDS/2017/1367', 'Computer science', 'Amake Emmanuel Augustine', 'Male', '2019-06-17', '100', NULL),
(211, 'PDS/2017/1406', 'Geology', 'Iyanam Anieie Joseph', 'Male', '0000-00-00', '100', NULL),
(212, 'PDS/2017/1419', 'Geology', 'Ayaya Victor Inhen', 'Male', '0000-00-00', '100', NULL),
(213, 'PDS/2017/1428', 'Computer Science', 'Osuagwu Smart Kelechi', 'Male', '2019-06-17', '100', NULL),
(214, 'PDS/2017/1576', 'Geology', 'Ekpenyong Otuanwan Agbo', 'Male', '0000-00-00', '100', NULL),
(215, 'PDS/2017/1694', 'Computer Science', 'Bassey Precious Bassey', 'Female', '2019-06-17', '100', NULL),
(216, 'PDS/2017/1913', 'Computer science', 'Atu Susanmary Ekeka', 'Female', '2019-06-17', '100', NULL),
(217, 'PDS/2017/1921', 'Computer science', 'Nworie Jude Chibuike', 'Male', '2019-06-17', '100', NULL),
(218, 'PDS/2017/1966', 'Computer Science', 'Ochui Passmark Ochui', 'Male', '2019-06-17', '100', NULL),
(219, 'PDS/2017/2017/1', 'Computer science', 'Abua Gideon Ogar', 'Male', '2019-06-17', '100', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `studentdepartment`
--

CREATE TABLE IF NOT EXISTS `studentdepartment` (
  `studentId` int(3) NOT NULL,
  `departmentName` varchar(50) NOT NULL,
  KEY `studentId` (`studentId`),
  KEY `departmentName` (`departmentName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_view`
--
CREATE TABLE IF NOT EXISTS `student_view` (
`matricNo` varchar(15)
,`departmentName` varchar(50)
,`Name` varchar(100)
,`Gender` varchar(7)
,`date_of_birth` date
,`level` varchar(10)
);
-- --------------------------------------------------------

--
-- Structure for view `hod_view`
--
DROP TABLE IF EXISTS `hod_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hod_view` AS select `hodt`.`staffName` AS `staffName`,`departmentt`.`departmentName` AS `departmentName` from (`hodt` join `departmentt`);

-- --------------------------------------------------------

--
-- Structure for view `lecturer_view`
--
DROP TABLE IF EXISTS `lecturer_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lecturer_view` AS select `department_lect`.`lectId` AS `lectId`,`department_lect`.`departmentName` AS `departmentName` from `department_lect`;

-- --------------------------------------------------------

--
-- Structure for view `student_view`
--
DROP TABLE IF EXISTS `student_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_view` AS select `student`.`matricNo` AS `matricNo`,`student`.`departmentName` AS `departmentName`,`student`.`Name` AS `Name`,`student`.`Gender` AS `Gender`,`student`.`date_of_birth` AS `date_of_birth`,`student`.`level` AS `level` from `student`;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_department`
--
ALTER TABLE `course_department`
  ADD CONSTRAINT `course_department_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `course_department_ibfk_2` FOREIGN KEY (`departmentName`) REFERENCES `departmentt` (`departmentName`);

--
-- Constraints for table `departmentt`
--
ALTER TABLE `departmentt`
  ADD CONSTRAINT `departmentt_ibfk_1` FOREIGN KEY (`staffId`) REFERENCES `hodt` (`staffId`);

--
-- Constraints for table `department_lect`
--
ALTER TABLE `department_lect`
  ADD CONSTRAINT `department_lect_ibfk_1` FOREIGN KEY (`departmentName`) REFERENCES `departmentt` (`departmentName`),
  ADD CONSTRAINT `department_lect_ibfk_2` FOREIGN KEY (`lectId`) REFERENCES `lecturer` (`lectId`);

--
-- Constraints for table `studentdepartment`
--
ALTER TABLE `studentdepartment`
  ADD CONSTRAINT `studentdepartment_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `student` (`studentId`),
  ADD CONSTRAINT `studentdepartment_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `student` (`studentId`),
  ADD CONSTRAINT `studentdepartment_ibfk_3` FOREIGN KEY (`departmentName`) REFERENCES `departmentt` (`departmentName`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
