-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 30, 2023 at 04:01 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_elearniing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

CREATE TABLE IF NOT EXISTS `tblautonumbers` (
  `AUTOID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL,
  PRIMARY KEY (`AUTOID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 8, 1, 'userid'),
(10, '000', 20, 1, 'ExerciseID'),
(12, '000', 34, 1, 'BLOGID'),
(13, '0', 5, 1, 'STUDENTID');

-- --------------------------------------------------------

--
-- Table structure for table `tblexercise`
--

CREATE TABLE IF NOT EXISTS `tblexercise` (
  `ExerciseID` int(11) NOT NULL AUTO_INCREMENT,
  `LessonID` int(11) NOT NULL,
  `Question` text NOT NULL,
  `ChoiceA` text NOT NULL,
  `ChoiceB` text NOT NULL,
  `ChoiceC` text NOT NULL,
  `ChoiceD` text NOT NULL,
  `Answer` varchar(90) NOT NULL,
  `ExercisesDate` date NOT NULL,
  PRIMARY KEY (`ExerciseID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=202200020 ;

--
-- Dumping data for table `tblexercise`
--

INSERT INTO `tblexercise` (`ExerciseID`, `LessonID`, `Question`, `ChoiceA`, `ChoiceB`, `ChoiceC`, `ChoiceD`, `Answer`, `ExercisesDate`) VALUES
(20200008, 12, 'the ability to recognize your emotions and know  your strengths and limits.', 'sa', 'das', 'asd', 'dd', 'A', '0000-00-00'),
(202200010, 13, 'skdbdkajsdb', 'a', 'b', 'c', 'd', 'A', '0000-00-00'),
(202200012, 15, 'q1', 'aa', 'bb', 'cc', 'dd', 'A', '0000-00-00'),
(202200013, 16, 'q2', 'aa', 'bb', 'cc', 'dd', 'A', '0000-00-00'),
(202200017, 19, 'q1', '1', '2', '3', '4', 'A', '0000-00-00'),
(202200018, 21, 'Question', 'a', 'b', 'c', 'd', 'A', '0000-00-00'),
(202200019, 22, 'question2', 'a', 'b', 'c', 'd', 'A', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbllesson`
--

CREATE TABLE IF NOT EXISTS `tbllesson` (
  `LessonID` int(11) NOT NULL AUTO_INCREMENT,
  `LessonChapter` varchar(90) NOT NULL,
  `LessonTitle` varchar(90) NOT NULL,
  `FileLocation` text NOT NULL,
  `Category` varchar(90) NOT NULL,
  PRIMARY KEY (`LessonID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tbllesson`
--

INSERT INTO `tbllesson` (`LessonID`, `LessonChapter`, `LessonTitle`, `FileLocation`, `Category`) VALUES
(21, 'BE Syllabus', 'Syllabus', 'files/BE-cse-syllabus.pdf', 'Docs'),
(22, 'BDA Questions', 'BDA', 'files/BDA Questions.pdf', 'Docs'),
(23, 'CC Questions', 'CC', 'files/CC Questions.pdf', 'Docs'),
(24, 'video1', 'v1', 'files/11.mp4', 'Video'),
(25, 'video2', 'v2', 'files/22.mp4', 'Video'),
(26, 'video3', 'v3', 'files/33.mp4', 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `tblscore`
--

CREATE TABLE IF NOT EXISTS `tblscore` (
  `ScoreID` int(11) NOT NULL AUTO_INCREMENT,
  `LessonID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `NoItems` int(11) NOT NULL DEFAULT '1',
  `Score` int(11) NOT NULL,
  `Submitted` tinyint(1) NOT NULL,
  PRIMARY KEY (`ScoreID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE IF NOT EXISTS `tblstudent` (
  `StudentID` int(11) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(90) NOT NULL,
  `Lname` varchar(90) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `MobileNo` varchar(90) NOT NULL,
  `STUDUSERNAME` varchar(90) NOT NULL,
  `STUDPASS` varchar(90) NOT NULL,
  PRIMARY KEY (`StudentID`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`StudentID`, `Fname`, `Lname`, `Address`, `MobileNo`, `STUDUSERNAME`, `STUDPASS`) VALUES
(3, 'sushant', 'magdum', 'kjsd', '09359507774', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(4, 'Raj', 'patil', '', '', 'raj', '2e8460f4b941efacdc6949646516b4f288b5b423'),
(6, 'Siddharth', 'Magdum', 'jwdhk', '4535', 'sid', 'da58b0c134ced9fa3847c7d85a083541cd9a0663'),
(7, 'a', 'b', 'fdv', '243', 'b', 'e9d71f5ee7c92d6dc9e92ffdad17b8bd49418f98'),
(8, 'rounak', 'sancheti', 'sdsafa', '1234567890', 'ronak', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(10, 'SUSHANT', 'MAGDUM', 'Ward No. 9 , 71/1/7 , Anandwan Colony , Near Swami Mala , Amarai road', '9359507774', 'sushant', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(12, 'wd', 'jyfxde', 'jdhgxd', '123', 'a', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8'),
(13, 'SUSHANT', 'MAGDUM', 'Ward No. 9 , 71/1/7 , Anandwan Colony , Near Swami Mala , Amarai road', '09359507774', 'user1', 'a53a185538bb9fac636500082b85e1c0f184165b'),
(14, 'Shreyas', 'Patil', 'Shahu chowk, Shahunagatr, Jaysingpur', '07350520309', 'shreyas', '29a1512c4bd7c315af6ff8af1d7649190a8f0fe4');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentquestion`
--

CREATE TABLE IF NOT EXISTS `tblstudentquestion` (
  `SQID` int(11) NOT NULL AUTO_INCREMENT,
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Question` varchar(90) NOT NULL,
  `CA` varchar(90) NOT NULL,
  `CB` varchar(90) NOT NULL,
  `CC` varchar(90) NOT NULL,
  `CD` varchar(90) NOT NULL,
  `QA` varchar(90) NOT NULL,
  PRIMARY KEY (`SQID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `tblstudentquestion`
--

INSERT INTO `tblstudentquestion` (`SQID`, `ExerciseID`, `LessonID`, `StudentID`, `Question`, `CA`, `CB`, `CC`, `CD`, `QA`) VALUES
(13, 20200008, 12, 1, 'the ability to recognize your emotions and know  your strengths and limits.', 'sa', 'das', 'asd', 'dd', 'A'),
(14, 20200008, 12, 2, 'the ability to recognize your emotions and know  your strengths and limits.', 'sa', 'das', 'asd', 'dd', 'A'),
(15, 20200009, 13, 1, 'the ability to recognize your emotions and know  your strengths and limits.', 'Self-Awareness', 'Self Regulation', 'Social Awareness', 'Relationship Management', 'A'),
(16, 20200009, 13, 2, 'the ability to recognize your emotions and know  your strengths and limits.', 'Self-Awareness', 'Self Regulation', 'Social Awareness', 'Relationship Management', 'A'),
(17, 202200010, 13, 1, 'skdbdkajsdb', 'a', 'b', 'c', 'd', 'A'),
(18, 202200010, 13, 2, 'skdbdkajsdb', 'a', 'b', 'c', 'd', 'A'),
(19, 202200010, 13, 3, 'skdbdkajsdb', 'a', 'b', 'c', 'd', 'A'),
(23, 202200012, 15, 1, 'q1', 'aa', 'bb', 'cc', 'dd', 'A'),
(24, 202200012, 15, 2, 'q1', 'aa', 'bb', 'cc', 'dd', 'A'),
(25, 202200012, 15, 3, 'q1', 'aa', 'bb', 'cc', 'dd', 'A'),
(26, 202200013, 16, 1, 'q2', 'aa', 'bb', 'cc', 'dd', 'A'),
(27, 202200013, 16, 2, 'q2', 'aa', 'bb', 'cc', 'dd', 'A'),
(28, 202200013, 16, 3, 'q2', 'aa', 'bb', 'cc', 'dd', 'A'),
(42, 202200017, 19, 1, 'q1', '1', '2', '3', '4', 'A'),
(43, 202200017, 19, 2, 'q1', '1', '2', '3', '4', 'A'),
(44, 202200017, 19, 3, 'q1', '1', '2', '3', '4', 'A'),
(45, 202200017, 19, 4, 'q1', '1', '2', '3', '4', 'A'),
(46, 202200017, 19, 6, 'q1', '1', '2', '3', '4', 'A'),
(47, 202200017, 19, 7, 'q1', '1', '2', '3', '4', 'A'),
(48, 202200018, 21, 1, 'Question', 'a', 'b', 'c', 'd', 'A'),
(49, 202200018, 21, 2, 'Question', 'a', 'b', 'c', 'd', 'A'),
(50, 202200018, 21, 3, 'Question', 'a', 'b', 'c', 'd', 'A'),
(51, 202200018, 21, 4, 'Question', 'a', 'b', 'c', 'd', 'A'),
(52, 202200018, 21, 6, 'Question', 'a', 'b', 'c', 'd', 'A'),
(53, 202200018, 21, 7, 'Question', 'a', 'b', 'c', 'd', 'A'),
(54, 202200019, 22, 1, 'question2', 'a', 'b', 'c', 'd', 'A'),
(55, 202200019, 22, 2, 'question2', 'a', 'b', 'c', 'd', 'A'),
(56, 202200019, 22, 3, 'question2', 'a', 'b', 'c', 'd', 'A'),
(57, 202200019, 22, 4, 'question2', 'a', 'b', 'c', 'd', 'A'),
(58, 202200019, 22, 6, 'question2', 'a', 'b', 'c', 'd', 'A'),
(59, 202200019, 22, 7, 'question2', 'a', 'b', 'c', 'd', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE IF NOT EXISTS `tblusers` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(90) NOT NULL,
  `UEMAIL` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `NAME`, `UEMAIL`, `PASS`, `TYPE`) VALUES
(1, 'SUSHANT MAGDUM', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
