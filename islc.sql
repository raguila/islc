-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 08, 2016 at 01:48 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `islc`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `CommentID` int(11) NOT NULL,
  `CommentContent` varchar(255) NOT NULL,
  `Attachment` varchar(50) DEFAULT NULL,
  `AttachmentTypeID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `PostID` int(11) NOT NULL,
  `Like` int(11) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`CommentID`, `CommentContent`, `Attachment`, `AttachmentTypeID`, `UserID`, `PostID`, `Like`, `TimeStamp`) VALUES
(1, 'Sample Comment', NULL, 1, 1, 3, 0, '2014-12-07 02:45:30'),
(2, 'Sample comment!!!', NULL, 1, 1, 21, 0, '2014-12-07 09:23:25'),
(3, 'Sample Comment! Gumanaaaa ka na. Please.', NULL, 1, 1, 4, 0, '2014-12-07 14:01:48'),
(4, 'Isa pang comment. Belat. :P', NULL, 1, 1, 4, 0, '2014-12-07 14:02:29'),
(5, 'Isa pang comment. :)', NULL, 1, 1, 3, 0, '2014-12-07 23:17:17'),
(6, 'Isa pang comment ulit! :)', NULL, 1, 1, 3, 0, '2014-12-08 02:05:26'),
(7, 'Sample! 4th comment! :)', NULL, 1, 1, 3, 0, '2014-12-08 02:21:16'),
(8, 'Sample. 5th Comment! :)', NULL, 1, 1, 3, 0, '2014-12-08 02:26:19'),
(9, 'Comment ulit. 6th na. :)', NULL, 1, 1, 3, 0, '2014-12-08 02:47:47'),
(10, 'I </3 EZ DAWG', NULL, 1, 1, 20, 0, '2014-12-08 02:49:04'),
(11, 'I EZ DAWG', NULL, 1, 1, 20, 0, '2014-12-08 02:49:23'),
(12, 'I <3 EZ DAWG', NULL, 1, 1, 20, 0, '2014-12-08 02:49:51'),
(13, 'I </3 ', NULL, 1, 1, 20, 0, '2014-12-08 02:50:03'),
(14, '</3', NULL, 1, 1, 20, 0, '2014-12-08 02:58:48'),
(15, 'HiHi :*', NULL, 1, 1, 20, 0, '2014-12-08 04:26:38'),
(16, 'Bagong comment! :)', NULL, 1, 1, 3, 0, '2014-12-08 04:34:47'),
(17, 'w3w', NULL, 1, 1, 22, 0, '2014-12-08 04:35:01'),
(18, 'Comment dito o. :)', NULL, 1, 1, 4, 0, '2014-12-08 07:18:26'),
(19, 'Dagdag pang comment. :))', NULL, 1, 1, 3, 0, '2014-12-08 07:28:06'),
(20, 'EZ DAWG', NULL, 1, 1, 20, 0, '2014-12-08 07:47:30'),
(21, 'Hello po. :)', NULL, 1, 1, 27, 0, '2014-12-09 02:47:03'),
(22, 'Dag dag comment', NULL, 1, 1, 29, 0, '2014-12-09 07:20:45'),
(23, 'Comment', 'naruto_22.jpg', 1, 1, 29, 0, '2014-12-09 10:40:10'),
(24, 'Sample comment sa popular na may attachment. :)', 'naruto_1111123.jpg', 1, 1, 3, 0, '2014-12-09 10:38:14'),
(25, 'Lagyan din ng file! ', 'naruto_1111124.jpg', 1, 1, 27, 0, '2014-12-09 10:38:14'),
(26, 'Sample comment from individual post. :)', '', 1, 1, 29, 0, '2014-12-09 10:29:58'),
(27, 'Sample comment again from post with file. :)', 'it210_1111126.sql', 1, 1, 29, 0, '2014-12-09 10:38:36'),
(28, 'Sample na may attachment. :)', 'naruto_1111127.jpg', 1, 1, 29, 0, '2014-12-09 20:23:32'),
(29, 'ghjghjgh', NULL, 1, 1, 16, 0, '2014-12-09 20:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `ExamId` int(11) NOT NULL,
  `Message` varchar(600) NOT NULL,
  `Description` varchar(80) NOT NULL,
  `CreatedBy` varchar(100) NOT NULL,
  `MaxScore` int(11) NOT NULL,
  `NumQuestions` int(11) NOT NULL,
  `IsActive` tinyint(4) NOT NULL,
  `SubjectSectionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`ExamId`, `Message`, `Description`, `CreatedBy`, `MaxScore`, `NumQuestions`, `IsActive`, `SubjectSectionId`) VALUES
(1, 'This is your Midterm exam. You have 3 hours to answer this exam. You can submit your exam by pressing the "I am finished" button. You cannot resubmit your exam when you do this, so be careful to double check your answers before submitting. You can also see your score right after submission by going back to the exam. You may leave the room after you have taken the exam. You cannot talk to your classmates in the duration of the exam. If you have questions, raise your hand and a proctor will assist you.', 'Midterm Exam for AY 2015-2016', 'Louise Hanson', 10, 11, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

CREATE TABLE `exam_question` (
  `ExamQuestionId` int(11) NOT NULL,
  `Question` varchar(200) NOT NULL,
  `ExamId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question`
--

INSERT INTO `exam_question` (`ExamQuestionId`, `Question`, `ExamId`) VALUES
(1, 'What is the World Wide Web?', 1),
(2, 'Which is the best search tool for finding Web sites that have been handpicked and recommended by someone else?\r\n', 1),
(3, 'The Internet was originally developed by whom?', 1),
(4, 'Which description does NOT apply to the Internet?\r\n', 1),
(5, 'Which one of the following is a search engine?\r\n', 1),
(6, 'Which of the following is a TRUE statement?\r\n', 1),
(7, 'What is a URL?\r\n', 1),
(8, 'What are the three main search expressions, or operators, recognized by Boolean logic?\r\n', 1),
(9, 'Which of the following is a true statement about the Internet and the library?\r\n', 1),
(10, 'http://www.classzone.com is an example of what?\r\n', 1),
(11, 'BONUS: What is the middle name of your lab instructor?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_choices`
--

CREATE TABLE `exam_question_choices` (
  `ExamQuestionChoicesId` int(11) NOT NULL,
  `ChoiceDescription` varchar(120) NOT NULL,
  `IsRightChoice` tinyint(4) NOT NULL,
  `ExamQuestionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question_choices`
--

INSERT INTO `exam_question_choices` (`ExamQuestionChoicesId`, `ChoiceDescription`, `IsRightChoice`, `ExamQuestionId`) VALUES
(1, 'a computer game', 0, 1),
(2, 'a software program', 0, 1),
(3, 'the part of the Internet that enables information-sharing via interconnected pages', 1, 1),
(4, 'another name for the Internet', 0, 1),
(5, 'subject directories', 1, 2),
(6, 'search engines', 0, 2),
(7, 'meta-search engines', 0, 2),
(8, 'discussion groups', 0, 2),
(9, 'computer hackers', 0, 3),
(10, 'a corporation', 0, 3),
(11, 'the U.S. Department of Defense', 1, 3),
(12, 'the University of Michigan', 0, 3),
(13, 'an interconnected system of networks that allows for communication through e-mail, LISTSERVS, and the World Wide Web', 0, 4),
(14, 'a public network neither owned nor run by any one group or individual', 0, 4),
(15, 'a vast network that connects millions of computers around the world', 0, 4),
(16, 'a catalog of information organized and fact-checked by a governing body', 1, 4),
(17, 'Macromedia Flash', 0, 5),
(18, 'Google', 1, 5),
(19, 'Netscape', 0, 5),
(20, 'Librarians’ Index to the Internet', 0, 5),
(21, 'You are free to copy information you find on the Web and include it in your research report.', 0, 6),
(22, 'You do not have to cite the Web sources you use in your research report.', 0, 6),
(23, 'You should never consult Web sources when you are doing a research report.', 0, 6),
(24, 'Just like print sources, Web sources must be cited in your research report. You are not free to plagiarize information y', 1, 6),
(25, 'a computer software program', 0, 7),
(26, 'a type of UFO', 0, 7),
(27, 'the address of a document or "page" on the World Wide Web', 1, 7),
(28, 'an acronym for Unlimited Resources for Learning', 0, 7),
(29, 'FROM, TO, WHOM', 0, 8),
(30, 'AND, OR, NOT', 1, 8),
(31, 'SEARCH, KEYWORD, TEXT', 0, 8),
(32, 'AND, OR, BUT', 0, 8),
(33, 'They both have an expert librarian or specialist to answer your questions.', 0, 9),
(34, 'They both provide up-to-the-minute news and information.', 0, 9),
(35, 'They both close after hours.', 0, 9),
(36, 'They both provide access to newspapers, magazines, and journals.', 1, 9),
(37, 'a URL', 1, 10),
(38, 'an access code', 0, 10),
(39, 'a directory', 0, 10),
(40, 'a server', 0, 10),
(41, 'Simpson', 1, 11),
(42, 'Gray', 0, 11),
(43, 'Cruz', 0, 11),
(44, 'Ramos', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `exam_student`
--

CREATE TABLE `exam_student` (
  `ExamStudentId` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `ExamId` int(11) NOT NULL,
  `StudentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_student_answer`
--

CREATE TABLE `exam_student_answer` (
  `ExamStudentAnswerId` int(11) NOT NULL,
  `ExamQuestionChoiceId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `NotificationID` int(11) NOT NULL,
  `PostID` int(11) NOT NULL,
  `NotificationContent` varchar(255) NOT NULL,
  `NotificationType` varchar(10) NOT NULL COMMENT 'comment/like',
  `NotificationFrom` int(11) NOT NULL COMMENT 'UserID in session',
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `PostID` int(11) NOT NULL,
  `PostTitle` varchar(50) DEFAULT NULL,
  `PostTypeID` int(11) NOT NULL DEFAULT '1',
  `PostContent` varchar(255) NOT NULL,
  `Tags` varchar(50) DEFAULT NULL COMMENT 'separate by comma ',
  `Attachment` varchar(50) DEFAULT NULL,
  `AttachmentTypeID` int(11) NOT NULL DEFAULT '1',
  `UserID` int(11) NOT NULL DEFAULT '1',
  `Likes` int(11) DEFAULT NULL,
  `Pinned` int(1) DEFAULT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SubjectSectionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`PostID`, `PostTitle`, `PostTypeID`, `PostContent`, `Tags`, `Attachment`, `AttachmentTypeID`, `UserID`, `Likes`, `Pinned`, `TimeStamp`, `SubjectSectionId`) VALUES
(3, 'Sample', 1, 'Sample Post! :)', 'sample, first', NULL, 1, 1, 25, 0, '2014-12-08 06:38:24', 0),
(4, 'Sample', 1, 'Sample naman. Please. Kahit isa lang. :(', 'sample', NULL, 1, 1, 23, NULL, '2014-12-09 06:17:15', 0),
(7, 'Sample nam', 1, 'Sample naman para sa title! :)', 'sample', NULL, 1, 1, 1, NULL, '2014-12-09 06:17:15', 0),
(8, 'Sample ulit par...', 1, 'Sample ulit para sa title. Mukang totoo na dapat. :)', 'sample', NULL, 1, 1, 14, NULL, '2014-12-09 06:17:15', 0),
(9, 'Sample po ulit....', 1, 'Sample po ulit. Sana tama na ituuuu! ', 'sample', NULL, 1, 1, 0, NULL, '2014-12-09 06:17:15', 0),
(10, 'Sample po ulit....', 1, 'Sample po ulit. Maling kanina yung nalog e. :(', 'sample', NULL, 1, 1, 0, NULL, '2014-12-09 06:17:15', 0),
(11, 'Sample sana tam...', 1, 'Sample sana tama ang user. :))', 'sample', NULL, 1, 1, 0, NULL, '2014-12-09 06:17:15', 0),
(12, 'Hi po. Hihihihi...', 1, 'Hi po. Hihihihi <3', NULL, NULL, 1, 1, 0, NULL, '2014-11-30 03:12:21', 0),
(13, 'Sample po ulit....', 1, 'Sample po ulit. Sana maprint na yung users. :)', 'sample', NULL, 1, 1, 0, NULL, '2014-12-09 06:17:15', 0),
(14, 'SAmple. Labas n...', 1, 'SAmple. Labas naman yung username. :)', 'sample', NULL, 1, 1, 0, NULL, '2014-12-09 06:17:15', 0),
(15, 'aasaasasas...', 1, 'aasaasasas', NULL, NULL, 1, 1, 0, NULL, '2014-11-30 11:23:33', 0),
(16, 'Sample po na ba...', 1, 'Sample po na bago. :)) December na o. ', 'sample', NULL, 1, 1, 0, NULL, '2014-12-09 06:17:15', 0),
(17, 'Sample muna uli...', 1, 'Sample muna ulit. Dapat tama ka na talaga. As in tamang tama! ', 'sample', NULL, 1, 1, 0, NULL, '2014-12-09 06:17:15', 0),
(18, 'Sample na bago....', 1, 'Sample na bago. :)) ', 'sample', NULL, 1, 1, 0, NULL, '2014-12-09 06:17:15', 0),
(19, 'Sample. Dapat t...', 1, 'Sample. Dapat tama ang oras. Haha. :)) ', 'sample', NULL, 1, 1, 0, NULL, '2014-12-09 06:17:15', 0),
(20, 'I <3 EZ DAWG...', 1, 'I <3 EZ DAWG', NULL, NULL, 1, 1, 3, 0, '2014-12-08 03:43:17', 0),
(21, 'Sample na may s...', 1, 'Sample na may sorting something. :)', NULL, NULL, 1, 1, 5, NULL, '2014-12-07 07:26:10', 0),
(22, 'Pinakabago! :)...', 1, 'Pinakabago! :)', NULL, NULL, 1, 1, 1, 0, '2014-12-08 06:37:58', 0),
(23, 'So may nakauplo...', 1, 'So may nakaupload dito. :)', NULL, NULL, 1, 1, 0, 0, '2014-12-09 00:19:34', 0),
(24, 'Sample at may n...', 1, 'Sample at may nakaupload dito. :)', NULL, 'naruto.jpg', 1, 1, 0, 0, '2014-12-09 00:41:42', 0),
(25, 'Sample na may u...', 1, 'Sample na may upload na kakaiba ang filename. :)', NULL, 'naruto_24.jpg', 1, 1, 0, 0, '2014-12-09 01:01:29', 0),
(26, 'Sample ulit na ...', 1, 'Sample ulit na dapat iba na ang filename. :)', NULL, 'naruto_25.jpg', 1, 1, 0, 0, '2014-12-09 01:01:29', 0),
(27, 'Sample na sana ...', 1, 'Sample na sana mabago na yung file_name. :)', NULL, 'naruto_26.jpg', 1, 1, 2, 1, '2014-12-09 01:01:29', 0),
(28, 'Sample ulit. Sa...', 1, 'Sample ulit. Sana tama na ayung file Name. Huhu.', 'sample', 'naruto_27.jpg', 1, 1, 0, 0, '2014-12-09 06:14:32', 0),
(29, 'Posts. ...', 1, 'Posts. ', NULL, NULL, 1, 1, 1, 0, '2014-12-09 06:49:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_attachment_type`
--

CREATE TABLE `post_attachment_type` (
  `AttachmentTypeID` int(11) NOT NULL,
  `AttachmentTypeDescription` varchar(30) NOT NULL,
  `AttachmentTypePath` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_attachment_type`
--

INSERT INTO `post_attachment_type` (`AttachmentTypeID`, `AttachmentTypeDescription`, `AttachmentTypePath`) VALUES
(1, 'File', 'web/attachment/file/');

-- --------------------------------------------------------

--
-- Table structure for table `post_type`
--

CREATE TABLE `post_type` (
  `PostTypeID` int(11) NOT NULL,
  `PostTypeDescription` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_type`
--

INSERT INTO `post_type` (`PostTypeID`, `PostTypeDescription`) VALUES
(1, 'Announcements');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SubjectId` int(11) NOT NULL,
  `CourseCode` varchar(10) NOT NULL,
  `CourseTitle` varchar(30) NOT NULL,
  `Units` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SubjectId`, `CourseCode`, `CourseTitle`, `Units`) VALUES
(1, 'CMSC 2', 'Introduction to the Internet', 3),
(2, 'IT 1', 'Information Technology', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subject_section`
--

CREATE TABLE `subject_section` (
  `SubjectSectionId` int(11) NOT NULL,
  `SectionType` varchar(15) NOT NULL,
  `SectionName` varchar(20) NOT NULL,
  `SubjectId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_section`
--

INSERT INTO `subject_section` (`SubjectSectionId`, `SectionType`, `SectionName`, `SubjectId`) VALUES
(1, 'Laboratory', 'EF-1L', 1),
(2, 'Laboratory', 'EF-2L', 1),
(3, 'Laboratory', 'UV-1L', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subject_section_users`
--

CREATE TABLE `subject_section_users` (
  `SubjectSectionUserId` int(11) NOT NULL,
  `SubjectSectionid` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `TagID` int(11) NOT NULL,
  `TagDescription` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `MiddleName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `UserName` varchar(30) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `UserTypeID` int(11) NOT NULL,
  `ClassSection` varchar(30) NOT NULL,
  `SubjectSectionId` int(11) NOT NULL,
  `Picture` varchar(30) NOT NULL,
  `StudentNumber` varchar(15) NOT NULL,
  `EmployeeNumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `FirstName`, `MiddleName`, `LastName`, `UserName`, `Password`, `UserTypeID`, `ClassSection`, `SubjectSectionId`, `Picture`, `StudentNumber`, `EmployeeNumber`) VALUES
(1, 'John Joseph', 'Ramos', 'Sinang', 'jjsinang', '1a1dc91c907325c69271ddf0c944bc72', 1, '', 1, '', '2009-08973', ''),
(2, 'Jesse', 'Gray', 'Black', 'jblack1', '1a1dc91c907325c69271ddf0c944bc72', 1, '', 1, '', '2018-24044', '05591396142'),
(3, 'Louise', 'Simpson', 'Hanson', 'lhanson2', '1a1dc91c907325c69271ddf0c944bc72', 2, 'EF-1L', 1, '', '2011-08975', '14366213895'),
(4, 'Cynthia', 'Webb', 'Reed', 'creed3', '1a1dc91c907325c69271ddf0c944bc72', 2, 'EF-2L', 2, '', '2010-90889', '33800914145'),
(5, 'Melissa', 'Day', 'Grant', 'mgrant4', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2017-06997', '14332646338'),
(6, 'Harold', 'Larson', 'Long', 'hlong5', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2019-30101', '67270890705'),
(7, 'Timothy', 'Thomas', 'Schmidt', 'tschmidt6', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2011-83321', '73436017948'),
(8, 'Lori', 'Oliver', 'Foster', 'lfoster7', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2010-84557', '57165857815'),
(9, 'Lisa', 'Duncan', 'Perry', 'lperry8', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2011-98606', '52211002519'),
(10, 'Helen', 'Lee', 'Webb', 'hwebb9', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2012-96276', '58720706312'),
(11, 'Michael', 'Griffin', 'Scott', 'mscotta', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2014-83487', '71886240811'),
(12, 'James', 'Garcia', 'Mills', 'jmillsb', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2016-34617', '59409514748'),
(13, 'Susan', 'Alexander', 'Robinson', 'srobinsonc', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2019-74922', '66849869781'),
(14, 'Christine', 'Romero', 'Hunter', 'chunterd', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2019-82237', '18046200680'),
(15, 'Stephanie', 'Jacobs', 'Walker', 'swalkere', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2016-42371', '72642655563'),
(16, 'Billy', 'Burns', 'Long', 'blongf', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2015-70703', '44859423395'),
(17, 'Nicole', 'Myers', 'Porter', 'nporterg', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2012-26335', '89976202383'),
(18, 'Carol', 'Olson', 'Gonzalez', 'cgonzalezh', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2019-89892', '57904447256'),
(19, 'Dennis', 'Marshall', 'Lee', 'dleei', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2016-26127', '42335210718'),
(20, 'Steve', 'Ward', 'Mendoza', 'smendozaj', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2018-37564', '78257979246'),
(21, 'Harold', 'Phillips', 'Medina', 'hmedinak', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2016-65763', '23960668607'),
(22, 'Phyllis', 'Hansen', 'Butler', 'pbutlerl', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2012-94442', '22475917366'),
(23, 'Gregory', 'Burns', 'Turner', 'gturnerm', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2013-56995', '77978377210'),
(24, 'Thomas', 'Snyder', 'Foster', 'tfostern', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2018-54427', '34197958382'),
(25, 'Mark', 'Rogers', 'West', 'mwesto', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2014-20808', '52614664129'),
(26, 'Phillip', 'Chavez', 'Sanchez', 'psanchezp', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2013-96660', '00142351641'),
(27, 'Amy', 'Lawson', 'Hamilton', 'ahamiltonq', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2015-58743', '31598798518'),
(28, 'Dorothy', 'Barnes', 'Coleman', 'dcolemanr', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2013-04176', '98017065963'),
(29, 'Randy', 'Dixon', 'Garrett', 'rgarretts', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2013-06578', '43674490384'),
(30, 'Rachel', 'Henry', 'Turner', 'rturnert', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2014-37967', '12565048084'),
(31, 'Debra', 'Marshall', 'Lee', 'dleeu', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2015-39824', '72447112511'),
(32, 'Andrea', 'Kim', 'Tucker', 'atuckerv', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2010-67823', '48637607751'),
(33, 'Charles', 'Reid', 'Reed', 'creedw', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2010-58126', '35266239857'),
(34, 'Sharon', 'Rice', 'Bell', 'sbellx', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-1L', 1, '', '2010-35258', '03615353238'),
(35, 'Jane', 'Kelly', 'Carpenter', 'jcarpentery', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2018-02379', '24794762420'),
(36, 'Terry', 'Graham', 'Turner', 'tturnerz', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2018-95230', '94275492728'),
(37, 'Billy', 'Richards', 'Alvarez', 'balvarez10', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2012-31644', '76776070830'),
(38, 'Jerry', 'Murray', 'Johnson', 'jjohnson11', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2015-36504', '89568699050'),
(39, 'Kelly', 'Ross', 'Franklin', 'kfranklin12', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2018-42551', '28077958640'),
(40, 'Jack', 'Richardson', 'Richards', 'jrichards13', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2019-36004', '67817694996'),
(41, 'Albert', 'Harrison', 'Olson', 'aolson14', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2013-94097', '66862092722'),
(42, 'Stephanie', 'Howard', 'Black', 'sblack15', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2018-94204', '56553104676'),
(43, 'Virginia', 'Montgomery', 'Stewart', 'vstewart16', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2017-39335', '10451068000'),
(44, 'Judy', 'Kennedy', 'Romero', 'jromero17', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2013-30942', '53803362945'),
(45, 'Todd', 'Meyer', 'Murray', 'tmurray18', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2014-82357', '36396208704'),
(46, 'Lillian', 'Hansen', 'Hawkins', 'lhawkins19', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2016-12690', '84123326282'),
(47, 'Helen', 'Ferguson', 'Coleman', 'hcoleman1a', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2012-29822', '29504327972'),
(48, 'Earl', 'Peters', 'Chavez', 'echavez1b', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2017-58435', '07668912505'),
(49, 'Stephanie', 'Rogers', 'Bennett', 'sbennett1c', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2017-96805', '87864965244'),
(50, 'Nancy', 'Frazier', 'Hansen', 'nhansen1d', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2018-41525', '65801488392'),
(51, 'Antonio', 'Washington', 'Perry', 'aperry1e', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2011-06463', '34484616714'),
(52, 'Johnny', 'Kennedy', 'Watson', 'jwatson1f', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2013-50599', '92332218949'),
(53, 'Frances', 'Robinson', 'Lane', 'flane1g', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2013-40291', '99114692793'),
(54, 'Lori', 'Hudson', 'Hernandez', 'lhernandez1h', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2016-52884', '38791236665'),
(55, 'Stephanie', 'King', 'Alexander', 'salexander1i', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2016-20451', '37409210540'),
(56, 'Phillip', 'Brown', 'Carroll', 'pcarroll1j', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2016-12352', '80556874221'),
(57, 'Roy', 'Day', 'Rivera', 'rrivera1k', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2014-14036', '72296677183'),
(58, 'Jacqueline', 'Perry', 'Bryant', 'jbryant1l', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2017-66844', '50682215813'),
(59, 'Ryan', 'Bradley', 'Griffin', 'rgriffin1m', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2016-77216', '12655635431'),
(60, 'Sandra', 'Grant', 'Franklin', 'sfranklin1n', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2014-64907', '01108346692'),
(61, 'Cheryl', 'King', 'Ross', 'cross1o', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2015-00499', '05825909358'),
(62, 'Jennifer', 'Armstrong', 'Kennedy', 'jkennedy1p', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2016-52413', '37378100470'),
(63, 'James', 'Garcia', 'Peterson', 'jpeterson1q', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2016-61565', '51656176817'),
(64, 'John', 'Carroll', 'Harrison', 'jharrison1r', '1a1dc91c907325c69271ddf0c944bc72', 3, 'EF-2L', 2, '', '2017-50057', '40337726709');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `UserTypeID` int(11) NOT NULL,
  `UserTypeDescription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`UserTypeID`, `UserTypeDescription`) VALUES
(1, 'Admin'),
(2, 'Professor'),
(3, 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `AttachmentTypeID` (`AttachmentTypeID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `PostID` (`PostID`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`ExamId`);

--
-- Indexes for table `exam_question`
--
ALTER TABLE `exam_question`
  ADD PRIMARY KEY (`ExamQuestionId`);

--
-- Indexes for table `exam_question_choices`
--
ALTER TABLE `exam_question_choices`
  ADD PRIMARY KEY (`ExamQuestionChoicesId`);

--
-- Indexes for table `exam_student`
--
ALTER TABLE `exam_student`
  ADD PRIMARY KEY (`ExamStudentId`);

--
-- Indexes for table `exam_student_answer`
--
ALTER TABLE `exam_student_answer`
  ADD PRIMARY KEY (`ExamStudentAnswerId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`NotificationID`),
  ADD KEY `PostID` (`PostID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`PostID`),
  ADD KEY `PostTypeID` (`PostTypeID`),
  ADD KEY `TagID` (`Tags`),
  ADD KEY `AttachmentTypeID` (`AttachmentTypeID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `post_attachment_type`
--
ALTER TABLE `post_attachment_type`
  ADD PRIMARY KEY (`AttachmentTypeID`);

--
-- Indexes for table `post_type`
--
ALTER TABLE `post_type`
  ADD PRIMARY KEY (`PostTypeID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SubjectId`);

--
-- Indexes for table `subject_section`
--
ALTER TABLE `subject_section`
  ADD PRIMARY KEY (`SubjectSectionId`);

--
-- Indexes for table `subject_section_users`
--
ALTER TABLE `subject_section_users`
  ADD PRIMARY KEY (`SubjectSectionUserId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`TagID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `UserTypeID` (`UserTypeID`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`UserTypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `CommentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `ExamId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `NotificationID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `PostID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `post_attachment_type`
--
ALTER TABLE `post_attachment_type`
  MODIFY `AttachmentTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `post_type`
--
ALTER TABLE `post_type`
  MODIFY `PostTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `TagID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `UserTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`AttachmentTypeID`) REFERENCES `post_attachment_type` (`AttachmentTypeID`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`PostID`) REFERENCES `posts` (`PostID`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`PostID`) REFERENCES `posts` (`PostID`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`PostTypeID`) REFERENCES `post_type` (`PostTypeID`),
  ADD CONSTRAINT `posts_ibfk_3` FOREIGN KEY (`AttachmentTypeID`) REFERENCES `post_attachment_type` (`AttachmentTypeID`),
  ADD CONSTRAINT `posts_ibfk_4` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`UserTypeID`) REFERENCES `user_type` (`UserTypeID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
