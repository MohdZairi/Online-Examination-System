-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2022 at 02:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinexamination`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('633bf5063c1b6', '633bf5063c9e5'),
('633bf506405d7', '633bf50641019'),
('633bf50643f37', '633bf506454e5'),
('633bf50647c89', '633bf50648413'),
('633bf5064ad50', '633bf5064b516'),
('633bf73b92a09', '633bf73b93284'),
('633bf73b96069', '633bf73b96735'),
('633bfe20ddb32', '633bfe20de340'),
('633bfe20dff14', '633bfe20e0779'),
('633bfe20e3c27', '633bfe20e4dc8');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('633c1a7474a62', 'MOHD ZAIRI ABD GHANI', 'mohamadzairi658@gmail.com', 'Lagging', 'Some page is lagging when user enter data or info', '2022-10-04', '01:35:16pm'),
('633c1c39af67b', 'ahmad fitri bin ahmad', 'mrjebat658@gmail.com', 'bug', 'Some page has bug and cant navigate correct path', '2022-10-04', '01:42:49pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('user@gmail.com', '633bfd4d1a322', 6, 3, 3, 0, '2022-10-04 09:44:15'),
('user@gmail.com', '633bf6f1468b9', 4, 2, 2, 0, '2022-10-04 09:44:47'),
('user@gmail.com', '633bf46889817', 10, 5, 5, 0, '2022-10-04 09:45:02'),
('mohamadzairi658@gmail.com', '633bfd4d1a322', 6, 3, 3, 0, '2022-10-04 09:48:02'),
('mohamadzairi658@gmail.com', '633bf46889817', 10, 5, 5, 0, '2022-10-04 10:10:54'),
('mohamadzairi658@gmail.com', '633bf6f1468b9', 2, 2, 1, 1, '2022-10-04 10:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('633bf5063c1b6', '1', '633bf5063c9de'),
('633bf5063c1b6', '2', '633bf5063c9e3'),
('633bf5063c1b6', '4', '633bf5063c9e4'),
('633bf5063c1b6', '5', '633bf5063c9e5'),
('633bf506405d7', '1', '633bf50641010'),
('633bf506405d7', '2', '633bf50641019'),
('633bf506405d7', '3', '633bf5064101a'),
('633bf506405d7', '4', '633bf5064101b'),
('633bf50643f37', '2', '633bf506454d9'),
('633bf50643f37', '4', '633bf506454e2'),
('633bf50643f37', '6', '633bf506454e5'),
('633bf50643f37', '8', '633bf506454e8'),
('633bf50647c89', '2', '633bf5064840d'),
('633bf50647c89', '5', '633bf50648412'),
('633bf50647c89', '6', '633bf50648413'),
('633bf50647c89', '1', '633bf50648414'),
('633bf5064ad50', '1', '633bf5064b510'),
('633bf5064ad50', '5', '633bf5064b516'),
('633bf5064ad50', '3', '633bf5064b517'),
('633bf5064ad50', '7', '633bf5064b518'),
('633bf73b92a09', '1', '633bf73b9327d'),
('633bf73b92a09', '2', '633bf73b93282'),
('633bf73b92a09', '3', '633bf73b93283'),
('633bf73b92a09', '4', '633bf73b93284'),
('633bf73b96069', 'ant', '633bf73b96731'),
('633bf73b96069', 'lion', '633bf73b96735'),
('633bf73b96069', 'snake', '633bf73b96736'),
('633bf73b96069', 'caterpillar', '633bf73b96737'),
('633bfe20ddb32', 'mana', '633bfe20de340'),
('633bfe20ddb32', 'siapa', '633bfe20de346'),
('633bfe20ddb32', 'berapa', '633bfe20de348'),
('633bfe20ddb32', 'dimana', '633bfe20de34a'),
('633bfe20dff14', 'kecil', '633bfe20e0779'),
('633bfe20dff14', 'besar', '633bfe20e077f'),
('633bfe20dff14', 'lemah', '633bfe20e0780'),
('633bfe20dff14', 'cantik', '633bfe20e0781'),
('633bfe20e3c27', 'Jangan', '633bfe20e4dc8'),
('633bfe20e3c27', 'Sila', '633bfe20e4dcd'),
('633bfe20e3c27', 'Tolong', '633bfe20e4dce'),
('633bfe20e3c27', 'Wahai', '633bfe20e4dcf');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('633bf46889817', '633bf5063c1b6', '2 + 3 = ?', 4, 1),
('633bf46889817', '633bf506405d7', '1 + 1 = ?', 4, 2),
('633bf46889817', '633bf50643f37', '5 + 1 = ?', 4, 3),
('633bf46889817', '633bf50647c89', '2 + 4 = ?', 4, 4),
('633bf46889817', '633bf5064ad50', '4 + 1 = ?', 4, 5),
('633bf6f1468b9', '633bf73b92a09', 'How many leg cats have?', 4, 1),
('633bf6f1468b9', '633bf73b96069', 'Who is the king of the jungle?\r\n', 4, 2),
('633bfd4d1a322', '633bfe20ddb32', 'Kamu hendak ke _______ ? ', 4, 1),
('633bfd4d1a322', '633bfe20dff14', 'Anak kucing itu masih ________ .', 4, 2),
('633bfd4d1a322', '633bfe20e3c27', '____________ mandi di lombong itu?', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('633bf46889817', 'Mathematic ', 2, 1, 5, 10, 'This practice for year 1', 'math', '2022-10-04 08:52:56'),
('633bf6f1468b9', 'Science', 2, 0, 2, 5, 'This practice for year 1', 'science', '2022-10-04 09:03:45'),
('633bfd4d1a322', 'Bahasa Melayu', 2, 0, 3, 5, 'This practice is for year 1', 'melayu', '2022-10-04 09:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('user@gmail.com', 20, '2022-10-04 09:45:02'),
('mohamadzairi658@gmail.com', 18, '2022-10-04 10:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `privilege` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `phone`, `password`, `privilege`) VALUES
('admin', 'F', 'Universiti Teknikal Malaysia \r\nMelaka', 'admin@yahoo.com', '0149942572', 'admin', 'admin'),
('user', 'M', 'Universiti Teknikal Malaysia Melaka', 'user@gmail.com', '0149942572', 'user', 'user'),
('Mohd Zairi Abd Ghani', 'M', 'Sekolah Kebangsaan Triang', 'mohamadzairi658@gmail.com', '0149942572', 'user1234', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
