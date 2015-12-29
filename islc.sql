-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 29, 2015 at 11:45 AM
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
  `Message` varchar(200) NOT NULL,
  `Description` varchar(20) NOT NULL,
  `MaxScore` int(11) NOT NULL,
  `NumQuestions` int(11) NOT NULL,
  `IsActive` tinyint(4) NOT NULL,
  `SubjectSectionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`ExamId`, `Message`, `Description`, `MaxScore`, `NumQuestions`, `IsActive`, `SubjectSectionId`) VALUES
(1, 'This is your midterm exam. Multiple choice - select the best answer for the question. You can re-select your answer as long as you haven''t marked your exam as finished. 2pts each', 'Midterm Exam', 10, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

CREATE TABLE `exam_question` (
  `ExamQuestionId` int(11) NOT NULL,
  `Question` varchar(200) NOT NULL,
  `ExamId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `ExamStudentAnswer` int(11) NOT NULL,
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
(1, 'CMSC 2', 'Introduction to the Internet', 3);

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
  `Picture` varchar(30) NOT NULL,
  `StudentNumber` varchar(15) NOT NULL,
  `EmployeeNumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `FirstName`, `MiddleName`, `LastName`, `UserName`, `Password`, `UserTypeID`, `ClassSection`, `Picture`, `StudentNumber`, `EmployeeNumber`) VALUES
(1, 'John Joseph', 'Ramos', 'Sinang', 'jjsinang', '1a1dc91c907325c69271ddf0c944bc72', 1, 'EF-1L', '', '2009-08973', '');

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
  ADD PRIMARY KEY (`ExamStudentAnswer`);

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
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
