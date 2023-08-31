-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2022 at 10:52 AM
-- Server version: 10.3.34-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sudipcha_hiranmoy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'admin', 'sudip2205@gmail.com', 'Sudip@2205@admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`) VALUES
(1, 'Hiranmoy Mandal', 'something@gmail.com', '6297534924', 'Hi I am Hiranmoy Mandal.'),
(2, 'Nur', 'nur@gmail.com', '6297534924', 'Hi I am Nur.'),
(3, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'dsgsdfg'),
(4, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'ghfhgfghf'),
(5, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'gdfsgsdfgsgffsdg'),
(6, 'Bubai Mandal', 'mathematicsstudent12345@gmail.com', '6297534924', 'dfgsdfgdfsg'),
(7, 'Hiranmoy Mandal', 'mathematicsstudent1234@gmail.com', '980998778898', 'Hi i am Hiranmoy Mandal .'),
(8, 'Bubai Mandal', 'mathematicsstudent12345@gmail.com', '23455678799', 'HI I am Hiranmoy '),
(9, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'fgdhfgh'),
(10, 'Hiranmoy Mandal', 'something@gmail.com', '6297534924', 'jgjhghj'),
(11, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'qwasefdrtgyhjk'),
(12, 'Hiranmoy Mandal', 'something@gmail.com', '6297534924', 'waesrdtfyguhjk'),
(13, 'Hiranmoy Mandal', 'something@gmail.com', '6297534924', 'sdfghjkl'),
(14, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'fghjkl'),
(15, 'dfgdsg', 'admin@gmail.com', '6297534924', 'kjhkh'),
(16, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'jhggjhkgj'),
(17, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'WAsgdhgf'),
(18, 'Hiranmoy Mandal', 'mathematicsstudent12345@gmail.com', '23455678799', 'eowiirauweio\r\n'),
(19, 'Mohitur', 'mohitur98@gmail.com', '7326432643264', 'test'),
(20, 'dfgdsg', 'admin@gmail.com', '6297534924', 'dgfhjkl;'),
(21, 'user2', 'user2@gmail.com', '1234567890', 'kkkjlkj'),
(22, ',n,n,n,n,', 'admin@gmail.com', 'lkjlkkjl,nlknkl', 'll;'),
(23, ',jknkhk', 'admin@gmail.com', '6297534924', 'jhjkhjkhkh'),
(24, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'jhgjgj'),
(25, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'hgjgj'),
(26, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'kjhkjh'),
(27, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'dASD'),
(28, 'user2', 'user2@gmail.com', '1234567890', 'kjhkhkhkh'),
(29, 'dfgdsgd', 'mathematicsstudent12345@gmail.com', '6297534924', 'sfasdf'),
(30, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'xzcvzcv'),
(31, 'user2', 'user2@gmail.com', '1234567890', 'hiranmoy'),
(32, 'dfgdsg', 'admin@gmail.com', '6297534924', 'bhjjh'),
(33, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', 'wejrwejqrjlkqwjekrjlqwjrljewqkr'),
(34, 'dfgdsg', 'admin@gmail.com', '6297534924', 'sdfasdf'),
(35, 'Hiranmoy Mandal', 'mathematicsstudent12345@gmail.com', '6297534924', 'HI I Am Hiranmoy Mandal.\r\n'),
(36, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'Insert data into database and display in HTML table using PHP and MYSQL'),
(37, 'Hiranmoy Mandal', 'mathematicsstudent12345@gmail.com', '324324325', '43534534'),
(38, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'uoiuooioiuiui'),
(39, 'Hiranmoy Mandal', 'mathematicsstudent12345@gmail.com', '324324', '345324'),
(40, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'kjhkjkjkhjkh'),
(41, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'jj'),
(42, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'jbjhjhjh'),
(43, 'Subhash', 'mathematicsstudent12345@gmail.com', '99990909', 'hi'),
(44, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'hjgjhgghjgj'),
(45, 'dfgdsg', 'mathematicsstudent12345@gmail.com', '6297534924', '98988789'),
(46, 'Hiranmoy', 'hiranmoymandalucb@gmail.com', '06297534924', 'tfff'),
(47, 'Hiranmoy', 'hiranmoymandalucb@gmail.com', '36666', 'gttt'),
(48, 'Bubai Mandal', 'bubaimandal10101011011001@gmail.com', '64646', 'Hshshs'),
(49, 'Debjit Saha', 'bishalsaham.c@gmail.com', '9593522186', 'I am bishal'),
(50, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'kjhkjhk'),
(51, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'nkljkjlhkljhlk'),
(52, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'jjhkjkjkjkkkjk'),
(53, 'Sudip', 'mathematicsstudent12345@gmail.com', '09432849311', 'kjhkjhjkhkjk'),
(54, 'Gobinda', 'anwayee.chakraborty1@gmail.com', '09432849311', 'kjhjkhjkhjkhjkhjkhjkhjkhjkhjkh'),
(55, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'jhgjhgjhjhhj'),
(56, 'Sudip', 'anwayee.chakraborty12@gmail.com', '09432849311', 'kjhkjhjjkhjkhjkhjkhjk'),
(57, 'Hiranmoy', 'hiranmoymandalucb@gmail.com', '06297534924', 'hghjh'),
(58, 'Hiranmoy', 'hiranmoymandalucb@gmail.com', '06297534924', 'hi'),
(59, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'sadfasdf'),
(60, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'bmm'),
(61, 'This is test', 'test@gmail.com', '832987489327', 'this is test'),
(62, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'jhkjdhkjashk\r\n'),
(63, 'hi;;ru', 'hiru@gmail.com', '09432849311', 'uihuiuiuiu'),
(64, 'Hiranmoy Mandal', 'dsajflkajdslkfjakldsjf@gmail.com', '8932749832', 'dfshjkhasdjkfhk'),
(65, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'fdsadsaf'),
(66, 'Hiranmoy Mandal', 'mathematicstudetn12345@gmail.com', '1234567890', 'Hiranmoy Mandal'),
(67, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'mmnbmbmbm'),
(68, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'hgffhfhg'),
(69, 'Gobinda', 'anwayee.chakraborty1@gmail.com', '09432849311', 'jjjhjhjhjkh'),
(70, 'Sudip', 'anwayee.chakraborty1@gmail.com', '09432849311', 'hiru\r\n'),
(71, 'Gobinda', 'anwayee.chakraborty1@gmail.com', '09432849311', 'mnbnvn'),
(72, 'mathematicsstudetn12345@gmail.com', 'mathematicsstudent12345@gmail.com', '09432849311', '987654321'),
(73, 'Priyangshu Chowdhury ', 'priyangshuchowdhury5@gmail.com', '7319386157', 'Sir'),
(74, 'SK MABUD', 'skmabud1191231027@gmail.com', '6297873827', 'Sir set, Relation & Mapping  a video excess din'),
(75, 'Hiranmoy Mandal', 'mathematicsstudent12345@gmail.com', '6297534924', 'Sir ami test korar jonno contact korchi website theke. Dekhke janaben geche kina'),
(76, 'shubhadip sarkar', 'sarkarshubhadip89@gmail.com', '8436815393', 'Sir  i am your student from 2nd sem ');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_desc` text NOT NULL,
  `course_author` varchar(255) NOT NULL,
  `course_img` text NOT NULL,
  `course_duration` text NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL,
  `course_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`, `course_key`) VALUES
(1, 'Real Analysis 1        ', 'Real analysis the fundamental course of B.SC mathematics. By developing knowledge on real analysis, a student can learn several mathematical tools. Analysis is an area of mathematics that was developed to formalize the study of numbers and functions and to investigate important concepts such as limits and continuity. In this course, the lectures are based on mathematical concepts and many problems in Bengali language. This course covers Real Number System, Sets in real, Enumerable & Countable Sets, Sequence, Series, Limit, Continuity & Differentiability.', 'Dr. Sudip Chakraborty        ', '../image/courseimg/Real Analysis Part 1.jpg', 'Unlimited      ', 2000, 2000, 'this is Real Analysis 1 for IIt Jam .        '),
(2, 'Real Analysis 2       ', 'Real analysis the fundamental course of B.SC mathematics. By developing knowledge on real analysis, a student can learn several mathematical tools. Real analysis is an area of mathematics that was developed to formalize the study of numbers and functions and to investigate important concepts such as limits and continuity. In this course, the lectures are based on mathematical concepts and many problems in Bengali language. This course covers Riemann Integration, Improper Integration, Functions of Bounded Variations, Sequence & Series of Functions, Power Series.', 'Dr. Sudip Chakraborty       ', '../image/courseimg/Real Analysis Part 2.jpg', 'unlimited                         ', 1599, 2000, ' IIT Jam 2023    '),
(4, 'Linear Algebra  ', 'Linear algebra is the most important part of mathematics honours.\r\n', 'Dr. Sudip Chakraborty      ', '../image/courseimg/Linear Algebra.jpg', 'Unlimited  ', 1599, 1999, ' Iit jam math  '),
(5, 'Metric Space 1', 'A metric space is a set which comes equipped with a function which measures distance. Metric space is very much connected with topology. This course covers definition & examples of metric, Sets in metric, distance between sets, sequences & complete metric space. ', 'Dr. Sudip Chakraborty   ', '../image/courseimg/Metric Space.jpg', 'Unlimited        ', 799, 1000, ' IIT Jam math 2023'),
(16, 'Set, Relation & Mapping      ', 'In mathematics, â€œsets, relations and mappingsâ€ is one of the most important topics of set theory. Sets, relations and functions are three different words having different meaning mathematically but equally important for the preparation of any competitive exams. In this course, let us study the topic in detail for better understanding. Types of Sets ,Operations on Sets, Relations in Mathematics, Mappings, Solved Examples.', 'Dr. Sudip Chakraborty      ', '../image/courseimg/Set Relation Mapping.jpg', 'Unlimited     ', 599, 1000, 'IIT JAM MATH   '),
(17, 'Group Theory 2  ', 'Group theory 2 is the advanced part of abstract algebra. This course contains lectures on automorphism of group, Direct product of groups, Sylows theorems and its application, simple group, ideal of a ring, principle, prime & maximal ideals, UFD, PID, ED, integral domain, divisibility & irreducibility of integral domain.', 'Dr. Sudip Chakraborty  ', '../image/courseimg/group theory 2.png', 'Unlimited ', 1199, 1599, 'IIT JAM MATH  ');

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `stu_name` text NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `respmsg` text NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_name`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`, `permission`) VALUES
(36, 'pay_Ilcm9P2HwJgKa8', 'Mohitur Rahaman', 'mohitur669@gmail.com', 1, 'success', 'Yes', 2000, '0000-00-00', 1),
(54, 'FREESTUDENT', 'Mohd Mohitur Rahaman', 'mohitur669@gmail.com', 2, '', '', 0, '2022-02-23', 1),
(55, 'FREESTUDENT', 'Mohd Mohitur Rahaman', 'mohitur669@gmail.com', 3, '', '', 0, '2022-02-23', 1),
(56, 'FREESTUDENT', 'Mohd Mohitur Rahaman', 'mohitur669@gmail.com', 4, '', '', 0, '2022-02-23', 1),
(57, 'FREESTUDENT', 'Mohd Mohitur Rahaman', 'mohitur669@gmail.com', 5, '', '', 0, '2022-02-23', 1),
(59, 'FREESTUDENT', 'Mohd Mohitur Rahaman', 'mohitur669@gmail.com', 7, '', '', 0, '2022-02-23', 1),
(60, 'FREESTUDENT', 'Mohd Mohitur Rahaman', 'mohitur669@gmail.com', 8, '', '', 0, '2022-02-23', 1),
(81, 'FREESTUDENT', 'Hiranmoy Mandal ', 'mathematicsstudent12345@gmail.com', 5, 'success', 'YES', 0, '2022-03-04', 1),
(87, 'pay_J6CLpXfzw0AHAN', 'Hiranmoy Mandal ', 'mathematicsstudent12345@gmail.com', 1, 'success', 'Yes', 2000, '2022-03-13', 1),
(89, 'FREESTUDENT', 'Nishika arora', 'nishikaarora81@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(90, 'FREESTUDENT', 'MD ARIFBILLA MONDAL ', 'arifbilla94@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(91, 'FREESTUDENT', 'Salma khatun', 'amisalmakhatun@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(92, 'FREESTUDENT', 'Sudip Roy', 'sudiproy1011@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(93, 'FREESTUDENT', 'Tousif Zaman', 'tousifzaman785@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(94, 'FREESTUDENT', 'samim azad', 'samimrojo17@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(95, 'FREESTUDENT', 'Sourav barman', 'barmansourav480@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(96, 'FREESTUDENT', 'BARIUL ISLAM ', 'bariulislam1975@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(97, 'FREESTUDENT', 'Pradip Dutta', 'pradipdutta1919@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(98, 'FREESTUDENT', 'Manatosh Barman', 'manatoshbarman15101999@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(99, 'FREESTUDENT', 'Sourav barman', 'souravbarman981@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 0),
(100, 'FREESTUDENT', 'Arghya Mondal', 'arghyamondal827@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(101, 'FREESTUDENT', 'Dipankar Sahu', 'dipankarsahu24@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(102, 'FREESTUDENT', 'Kalicharan Ghosh', 'ghoshkali512@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(103, 'FREESTUDENT', 'Arindam Mandal', 'arindammandal1411@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(104, 'FREESTUDENT', 'Rahul Samanta', 'rahulsamanta2001@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(105, 'FREESTUDENT', 'Arjun mondal ', 'arjunmondal483@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(106, 'FREESTUDENT', 'Samim Akhtar', 'akhtarsamim733121@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(107, 'FREESTUDENT', 'Sumanlal Singha Chowdhury', 'singhachowdhury@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(108, 'FREESTUDENT', 'Arnab Sarkar ', 'arnabsarkarplassey@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(109, 'FREESTUDENT', 'PARVEJ ALAM ', 'alam.parvejhcpur@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(111, 'FREESTUDENT', 'Monalisha Das ', 'dasmonalisha369@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(112, 'FREESTUDENT', 'Debiprasad Pal', 'debiprasadpal2020@gmail.com', 4, 'success', 'YES', 0, '2022-03-12', 1),
(113, 'FREESTUDENT', 'Pijus kanti Roy', 'roypijuskanti5@gmail.com', 4, 'success', 'YES', 0, '2022-03-13', 1),
(115, 'FREESTUDENT', 'Sumit paramanik', 'paramaniksumit066@gmail.com', 4, 'success', 'YES', 0, '2022-03-13', 1),
(117, 'FREESTUDENT', 'Abhijit Mallick', 'mallickabhijit47@gmail.com', 4, 'success', 'YES', 0, '2022-03-13', 1),
(118, 'FREESTUDENT', 'Abhijit Das', 'ad856132@gmail.com', 4, 'success', 'YES', 0, '2022-03-14', 1),
(119, 'FREESTUDENT', 'Suraj mandal', 'suraj125216mandal@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(120, 'FREESTUDENT', 'Shahnawaj Alam', 'alamshahnawaj619@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(121, 'FREESTUDENT', 'Ananda Jaiswal', 'jaiswalananada@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(122, 'FREESTUDENT', 'Jyotirmoy Roy ', 'royjyotirmoy10001@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(123, 'FREESTUDENT', 'HORIMOHON CHOWDHURY', 'horimohonc@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(124, 'FREESTUDENT', 'Subhanwita mandal', 'subhanwitamandal@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(125, 'FREESTUDENT', 'SHARMISTHA SARKAR ', 'sharmisthasarkar374@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(126, 'FREESTUDENT', 'Aditya Kumar Roy', 'adityakroy257@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(127, 'FREESTUDENT', 'Urbi Sarkar', 'urbi24122003@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(128, 'FREESTUDENT', 'Shreya Karmakar', 'shreyakarmakarmalda123@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(129, 'FREESTUDENT', 'Mainak Chakraborty', 'mainakchakraborty10@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(130, 'FREESTUDENT', 'Tanmay Saha', 'sahatanmay5662022@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(131, 'FREESTUDENT', 'Nayan Mandal ', 'nayanmandal12340@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(132, 'FREESTUDENT', 'JHANKAR MANDAL', 'jhankarmandal37@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(133, 'FREESTUDENT', 'Subhankar Bhakat', 'subhanker060902@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(134, 'FREESTUDENT', 'Moumita karmakar', 'moumitakarmakarmoumita@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(135, 'FREESTUDENT', 'Kakoli Sarkar', 'swapant24@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(136, 'FREESTUDENT', 'Ummar Faruk', 'mu2naraj425@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(137, 'FREESTUDENT', 'Jasmin Siddika', 'jsiddika981@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(138, 'FREESTUDENT', 'Rahul Sk', 'rahulpro410@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(139, 'FREESTUDENT', 'Ajijur Rahaman', 'rahamanajijur125@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(140, 'FREESTUDENT', 'Ajijur Rahaman', 'rahamanajijur125@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(141, 'FREESTUDENT', 'Ajijur Rahaman', 'rahamanajijur125@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(142, 'FREESTUDENT', 'Bittu Haldar', 'haldarbittu01@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(143, 'FREESTUDENT', 'Bittu Haldar', 'haldarbittu01@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(144, 'FREESTUDENT', 'Bittu Haldar', 'haldarbittu01@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(145, 'FREESTUDENT', 'Tapasya Gupta ', 'tapasyagupta21@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(146, 'FREESTUDENT', 'Tapasya Gupta ', 'tapasyagupta21@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(147, 'FREESTUDENT', 'Tapasya Gupta ', 'tapasyagupta21@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(148, 'FREESTUDENT', 'Subhadra Debnath', 'bapondebnath9564@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(149, 'FREESTUDENT', 'Subhadra Debnath', 'bapondebnath9564@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(150, 'FREESTUDENT', 'Subhadra Debnath', 'bapondebnath9564@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(151, 'FREESTUDENT', 'MD TOWSIF REJA', 'mdtowsifreja11@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(152, 'FREESTUDENT', 'MD TOWSIF REJA', 'mdtowsifreja11@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(153, 'FREESTUDENT', 'MD TOWSIF REJA', 'mdtowsifreja11@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(154, 'FREESTUDENT', 'Tapas Rajak', 'raj9593740@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(155, 'FREESTUDENT', 'Tapas Rajak', 'raj9593740@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(156, 'FREESTUDENT', 'Tapas Rajak', 'raj9593740@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(157, 'FREESTUDENT', 'Farhana Tasneem ', 'tistalatika@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(158, 'FREESTUDENT', 'Farhana Tasneem ', 'tistalatika@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(159, 'FREESTUDENT', 'Farhana Tasneem ', 'tistalatika@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(160, 'FREESTUDENT', 'SOUVIK SAHA', 'souvik1492@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(161, 'FREESTUDENT', 'SOUVIK SAHA', 'souvik1492@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(162, 'FREESTUDENT', 'SOUVIK SAHA', 'souvik1492@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(163, 'FREESTUDENT', 'GOLAM NOBI AZAD', 'gnazad2002@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(164, 'FREESTUDENT', 'GOLAM NOBI AZAD', 'gnazad2002@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(165, 'FREESTUDENT', 'GOLAM NOBI AZAD', 'gnazad2002@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(166, 'FREESTUDENT', 'Serajul Islam', 'serajul6400@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(167, 'FREESTUDENT', 'Serajul Islam', 'serajul6400@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(168, 'FREESTUDENT', 'Serajul Islam', 'serajul6400@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(169, 'FREESTUDENT', 'Shaymal Mondal', 'shyamalm343@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(170, 'FREESTUDENT', 'Shaymal Mondal', 'shyamalm343@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(171, 'FREESTUDENT', 'Shaymal Mondal', 'shyamalm343@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(172, 'FREESTUDENT', 'Sourav Karmakar', 'souravkarmakar324@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(173, 'FREESTUDENT', 'Sourav Karmakar', 'souravkarmakar324@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(174, 'FREESTUDENT', 'Sourav Karmakar', 'souravkarmakar324@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(175, 'FREESTUDENT', 'Abdul Rasid', 'mannanmr05@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(176, 'FREESTUDENT', 'Abdul Rasid', 'mannanmr05@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(177, 'FREESTUDENT', 'Abdul Rasid', 'mannanmr05@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(178, 'FREESTUDENT', 'Manisha Majumdar', 'manishamajumdar29@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(179, 'FREESTUDENT', 'Manisha Majumdar', 'manishamajumdar29@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(180, 'FREESTUDENT', 'Manisha Majumdar', 'manishamajumdar29@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(181, 'FREESTUDENT', 'ALOK KUMAR MANDAL', 'alokmandal088@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(182, 'FREESTUDENT', 'ALOK KUMAR MANDAL', 'alokmandal088@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(183, 'FREESTUDENT', 'ALOK KUMAR MANDAL', 'alokmandal088@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(184, 'FREESTUDENT', 'Sandip Mandal', 'sandipmandal9064@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(185, 'FREESTUDENT', 'Sandip Mandal', 'sandipmandal9064@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(186, 'FREESTUDENT', 'Sandip Mandal', 'sandipmandal9064@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(187, 'FREESTUDENT', 'Saunak Chakraborty ', 'scchakraborty7063@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(188, 'FREESTUDENT', 'Saunak Chakraborty ', 'scchakraborty7063@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(189, 'FREESTUDENT', 'Saunak Chakraborty ', 'scchakraborty7063@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(190, 'FREESTUDENT', 'Snigdha karmakar ', 'Snigdhakarmakarmldt@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(191, 'FREESTUDENT', 'Snigdha karmakar ', 'Snigdhakarmakarmldt@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(192, 'FREESTUDENT', 'Snigdha karmakar ', 'Snigdhakarmakarmldt@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(193, 'FREESTUDENT', 'Snigdha karmakar ', 'Snigdhakarmakarmldt@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(194, 'FREESTUDENT', 'Preetam Singha', 'preetamsingha029@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(195, 'FREESTUDENT', 'Preetam Singha', 'preetamsingha029@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(196, 'FREESTUDENT', 'Preetam Singha', 'preetamsingha029@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(197, 'FREESTUDENT', 'Farhana Sultana', 'farhanasultana5005@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(198, 'FREESTUDENT', 'Farhana Sultana', 'farhanasultana5005@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(199, 'FREESTUDENT', 'Farhana Sultana', 'farhanasultana5005@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(200, 'FREESTUDENT', 'Sourav Chowdhury', 'chowdhurydipak434@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(201, 'FREESTUDENT', 'Sourav Chowdhury', 'chowdhurydipak434@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(202, 'FREESTUDENT', 'Sourav Chowdhury', 'chowdhurydipak434@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(203, 'FREESTUDENT', 'Biswadeep Das ', 'biswadeep263@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(204, 'FREESTUDENT', 'Biswadeep Das ', 'biswadeep263@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(205, 'FREESTUDENT', 'Biswadeep Das ', 'biswadeep263@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(206, 'FREESTUDENT', 'Yubaraj Misra', 'misra8873@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(207, 'FREESTUDENT', 'Yubaraj Misra', 'misra8873@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(208, 'FREESTUDENT', 'Yubaraj Misra', 'misra8873@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(209, 'FREESTUDENT', 'SOHAM BASAK', 'sohambasak126@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(210, 'FREESTUDENT', 'SOHAM BASAK', 'sohambasak126@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(211, 'FREESTUDENT', 'SOHAM BASAK', 'sohambasak126@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(212, 'FREESTUDENT', 'Bornali saha', 'bornali25588@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(213, 'FREESTUDENT', 'Bornali saha', 'bornali25588@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(214, 'FREESTUDENT', 'Bornali saha', 'bornali25588@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(215, 'FREESTUDENT', 'Susmita Saha', 'susmitasaha2508@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(216, 'FREESTUDENT', 'Susmita Saha', 'susmitasaha2508@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(217, 'FREESTUDENT', 'Susmita Saha', 'susmitasaha2508@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(218, 'FREESTUDENT', 'Sudipa Mani ', 'sudipamani2003@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(219, 'FREESTUDENT', 'RUPASI MANDAL', 'rupasimandal81@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(220, 'FREESTUDENT', 'Pratik das', 'aryya03514@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(221, 'FREESTUDENT', 'Pratik das', 'aryya03514@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(222, 'FREESTUDENT', 'Pratik das', 'aryya03514@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(223, 'FREESTUDENT', 'Moumita Chakraborty', 'moumitachakraborty9654@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(224, 'FREESTUDENT', 'KHALID HASAN ABEDIN', 'khalidhasan125466@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(225, 'FREESTUDENT', 'KHALID HASAN ABEDIN', 'khalidhasan125466@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(226, 'FREESTUDENT', 'KHALID HASAN ABEDIN', 'khalidhasan125466@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(227, 'FREESTUDENT', 'Saundarjya Poddar', 'saundarjyapoddar123@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(228, 'FREESTUDENT', 'Saundarjya Poddar', 'saundarjyapoddar123@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(229, 'FREESTUDENT', 'Saundarjya Poddar', 'saundarjyapoddar123@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(230, 'FREESTUDENT', 'Abdul Kadir', 'akadir9595@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(231, 'FREESTUDENT', 'Nibedita Mandal', 'nibeditamandal020@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(232, 'FREESTUDENT', 'Nibedita Mandal', 'nibeditamandal020@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(233, 'FREESTUDENT', 'Nibedita Mandal', 'nibeditamandal020@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(234, 'FREESTUDENT', 'Anurima Pramanik', 'pramanikanurima30@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(235, 'FREESTUDENT', 'Arghadeep Chowdhury ', 'adeepcarrybb@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(236, 'FREESTUDENT', 'Arghadeep Chowdhury ', 'adeepcarrybb@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(237, 'FREESTUDENT', 'Arghadeep Chowdhury ', 'adeepcarrybb@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(238, 'FREESTUDENT', 'Shubhashree Sarkar ', 'shubhashreesarkar88@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(239, 'FREESTUDENT', 'Dipankar Rajak', 'dipankarrajak9083@gmail.com', 1, 'success', 'YES', 0, '2022-03-16', 1),
(240, 'FREESTUDENT', 'Dipankar Rajak', 'dipankarrajak9083@gmail.com', 2, 'success', 'YES', 0, '2022-03-16', 1),
(241, 'FREESTUDENT', 'Dipankar Rajak', 'dipankarrajak9083@gmail.com', 4, 'success', 'YES', 0, '2022-03-16', 1),
(242, 'FREESTUDENT', 'Renuka Sarkar', 'sarkarrenuka817@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(243, 'FREESTUDENT', 'Isika saha', 'ishikasaha31@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(244, 'FREESTUDENT', 'Sufija Khatun', 'sufijakhatun30@gmail.com', 16, 'success', 'YES', 0, '2022-03-16', 1),
(246, 'FREESTUDENT', 'NIKEETA SARKAR', 'nikeetasarkar48@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(247, 'FREESTUDENT', 'NIKEETA SARKAR', 'nikeetasarkar48@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(248, 'FREESTUDENT', 'NIKEETA SARKAR', 'nikeetasarkar48@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(249, 'FREESTUDENT', 'Rintu Paul', 'rintupaul16102001@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(250, 'FREESTUDENT', 'Rintu Paul', 'rintupaul16102001@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(251, 'FREESTUDENT', 'Rintu Paul', 'rintupaul16102001@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(252, 'FREESTUDENT', 'Nikita Saha', 'sahanikita206@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(253, 'FREESTUDENT', 'Nikita Saha', 'sahanikita206@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(254, 'FREESTUDENT', 'Nikita Saha', 'sahanikita206@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(255, 'FREESTUDENT', 'Bibek Mandal', 'bim933949@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(256, 'FREESTUDENT', 'Bibek Mandal', 'bim933949@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(257, 'FREESTUDENT', 'Bibek Mandal', 'bim933949@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(258, 'FREESTUDENT', 'Tusar Ali ', 'tusarali33572@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(259, 'FREESTUDENT', 'Tusar Ali ', 'tusarali33572@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(260, 'FREESTUDENT', 'Tusar Ali ', 'tusarali33572@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(261, 'FREESTUDENT', 'Rajibul Rahaman', 'rajibulrahaman071@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(262, 'FREESTUDENT', 'Rajibul Rahaman', 'rajibulrahaman071@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(263, 'FREESTUDENT', 'Rajibul Rahaman', 'rajibulrahaman071@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(264, 'FREESTUDENT', 'DHARITRI SARKAR', 'dharitris901@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(265, 'FREESTUDENT', 'DHARITRI SARKAR', 'dharitris901@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(266, 'FREESTUDENT', 'DHARITRI SARKAR', 'dharitris901@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(267, 'FREESTUDENT', 'Mst Asrefa Khatun', 'khatunasrefa4@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(268, 'FREESTUDENT', 'ARINDAM SARKAR', 'bittusarkar966@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(269, 'FREESTUDENT', 'ARINDAM SARKAR', 'bittusarkar966@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(270, 'FREESTUDENT', 'ARINDAM SARKAR', 'bittusarkar966@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(271, 'FREESTUDENT', 'Ekta Talukdar', 'ektatalukdar.mldt@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(272, 'FREESTUDENT', 'Ekta Talukdar', 'ektatalukdar.mldt@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(273, 'FREESTUDENT', 'Ekta Talukdar', 'ektatalukdar.mldt@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(274, 'FREESTUDENT', 'Himeli Das', 'dashimeli09@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(275, 'FREESTUDENT', 'Himeli Das', 'dashimeli09@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(276, 'FREESTUDENT', 'Himeli Das', 'dashimeli09@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(277, 'FREESTUDENT', 'Ankita Gupta', 'arpanagupta484@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(278, 'FREESTUDENT', 'Ankita Gupta', 'arpanagupta484@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(279, 'FREESTUDENT', 'Ankita Gupta', 'arpanagupta484@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(280, 'FREESTUDENT', 'Himangshu Barman', 'himangshu9202@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(281, 'FREESTUDENT', 'Papai Saha', 'papaisaha02778@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(282, 'FREESTUDENT', 'Papai Saha', 'papaisaha02778@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(283, 'FREESTUDENT', 'Papai Saha', 'papaisaha02778@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(284, 'FREESTUDENT', 'Debashish Adhikary ', 'nilimaadhikary2000@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(285, 'FREESTUDENT', 'TIYASH DAS', 'tiyash.das2@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(286, 'FREESTUDENT', 'TIYASH DAS', 'tiyash.das2@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(287, 'FREESTUDENT', 'TIYASH DAS', 'tiyash.das2@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(288, 'FREESTUDENT', 'IMRAUL ANSARI ', 'imraul732202@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(289, 'FREESTUDENT', 'Priyaranjan Mandal', 'pmandal9996@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(290, 'FREESTUDENT', 'Priyaranjan Mandal', 'pmandal9996@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(291, 'FREESTUDENT', 'Priyaranjan Mandal', 'pmandal9996@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(292, 'FREESTUDENT', 'Sumaiya Parveen', 'sumaiyaparveen846@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(293, 'FREESTUDENT', 'MST KHADIJA KHATUN ', 'khadijakhatun000123786@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(294, 'FREESTUDENT', 'Saswata Pramanik', 'saswatapramanik60@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(295, 'FREESTUDENT', 'Saswata Pramanik', 'saswatapramanik60@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(296, 'FREESTUDENT', 'Saswata Pramanik', 'saswatapramanik60@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(297, 'FREESTUDENT', 'Anindya Jha', 'anindyajha61@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(298, 'FREESTUDENT', 'Anindya Jha', 'anindyajha61@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(299, 'FREESTUDENT', 'Anindya Jha', 'anindyajha61@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(300, 'FREESTUDENT', 'SUMANGAL PODDAR', 'sumangalpod884@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(301, 'FREESTUDENT', 'SUMANGAL PODDAR', 'sumangalpod884@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(302, 'FREESTUDENT', 'SUMANGAL PODDAR', 'sumangalpod884@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(303, 'FREESTUDENT', 'Priyanka Gupta ', 'pg903239@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(304, 'FREESTUDENT', 'Priyanka Gupta ', 'pg903239@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(305, 'FREESTUDENT', 'Priyanka Gupta ', 'pg903239@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(306, 'FREESTUDENT', 'Manik Kumar Mandal', 'manikmandal04022004@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(307, 'FREESTUDENT', 'Hasiba Akhtara Banu', 'hasibaakhtarabanu@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(308, 'FREESTUDENT', 'PARTHA DAS ', 'parthadas32554@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(309, 'FREESTUDENT', 'Raman paul', 'ramanpaul297@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(310, 'FREESTUDENT', 'Raman paul', 'ramanpaul297@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(311, 'FREESTUDENT', 'Raman paul', 'ramanpaul297@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(312, 'FREESTUDENT', 'avra singh', 'avrasingh2001@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(313, 'FREESTUDENT', 'avra singh', 'avrasingh2001@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(314, 'FREESTUDENT', 'avra singh', 'avrasingh2001@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(315, 'FREESTUDENT', 'Md Sadik Farhan ', 'fsadik513@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(316, 'FREESTUDENT', 'Sraboni Ghosh', 'srabonighosh845@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(317, 'FREESTUDENT', 'Al Aman Momin', 'alamanmomin070@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(318, 'FREESTUDENT', 'Sultana jasmin sk', 'sultana.sja@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(319, 'FREESTUDENT', 'Aditi Munshi', 'aditimunshi44@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(320, 'FREESTUDENT', 'Sourav Ghosh', 'souravgh999@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(321, 'FREESTUDENT', 'Sourav Ghosh', 'souravgh999@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(322, 'FREESTUDENT', 'Sourav Ghosh', 'souravgh999@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(323, 'FREESTUDENT', 'SURAJIT GHOSH', 'gsurajit524@gmail.com', 5, 'success', 'YES', 0, '2022-03-17', 1),
(324, 'FREESTUDENT', 'Manik Kumar Mandal', 'manikkumarmandal0402@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(325, 'FREESTUDENT', 'Ajit Mahato', 'mahatoajit37670@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(326, 'FREESTUDENT', 'Tushar Mandal', 'tusharmandal709@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(327, 'FREESTUDENT', 'Rahul Barman', 'barmanrahul732121@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(328, 'FREESTUDENT', 'SURAJIT GHOSH', 'gsurajit524@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(329, 'FREESTUDENT', 'Saswata Pramanik', 'ranapramanik028@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(330, 'FREESTUDENT', 'Mrinmay Mandal', 'mrinmaymandal137@gmail.com', 16, 'success', 'YES', 0, '2022-03-17', 1),
(331, 'FREESTUDENT', 'Ankana das', 'ankanad75@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(332, 'FREESTUDENT', 'Ankana das', 'ankanad75@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(333, 'FREESTUDENT', 'Ankana das', 'ankanad75@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(334, 'FREESTUDENT', 'Monisha Chowdhury ', 'monishachowdhury837@gmail.com', 1, 'success', 'YES', 0, '2022-03-17', 1),
(335, 'FREESTUDENT', 'Monisha Chowdhury ', 'monishachowdhury837@gmail.com', 2, 'success', 'YES', 0, '2022-03-17', 1),
(336, 'FREESTUDENT', 'Monisha Chowdhury ', 'monishachowdhury837@gmail.com', 4, 'success', 'YES', 0, '2022-03-17', 1),
(337, 'pay_J9yzUV1UaulFBi', 'Payel Maity', 'maitypmpayel85@gmail.com', 5, 'success', 'Yes', 799, '2022-03-22', 1),
(338, 'FREESTUDENT', 'Chiranjit Mandal', 'Chiranjitmandal254@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(339, 'FREESTUDENT', 'Manash kr mandal', 'manashmandal648@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(340, 'FREESTUDENT', 'BINOY BISWAS', 'binoy9130@gamail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(341, 'FREESTUDENT', 'Ali Asgar', 'dfgfffg4355@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(342, 'FREESTUDENT', 'Mita Sarkar', 'sarkarmita285@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(343, 'FREESTUDENT', 'Hena Khatum', 'henakhatun760216@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(344, 'FREESTUDENT', 'Sukumar mandal ', 'sukumarmandalmld22@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(345, 'FREESTUDENT', 'Biswadeep sarker', 'sumon452020@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(346, 'FREESTUDENT', 'Durga Mandal', 'durgamandal9749@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(347, 'FREESTUDENT', 'Anindita Biswas', 'aninditabiswas829@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(348, 'FREESTUDENT', 'Farjahan Islam', 'farjahanislam8@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(349, 'FREESTUDENT', 'Asique Ikbal Ansari', 'muhammadanasit986@gmail.com', 1, 'success', 'YES', 0, '2022-03-24', 1),
(350, 'FREESTUDENT', 'Asique Ikbal Ansari', 'muhammadanasit986@gmail.com', 2, 'success', 'YES', 0, '2022-03-24', 1),
(351, 'FREESTUDENT', 'Asique Ikbal Ansari', 'muhammadanasit986@gmail.com', 4, 'success', 'YES', 0, '2022-03-24', 1),
(352, 'FREESTUDENT', 'Sk Fardeen Ahamed', 'skm808164@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(353, 'FREESTUDENT', 'Joydeep Roy', 'joydeeproy.2707@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(354, 'FREESTUDENT', 'Asif Islam', 'asif.islam2032003@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(355, 'FREESTUDENT', 'shubhadip sarkar', 'sarkarshubhadip89@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(356, 'FREESTUDENT', 'Md Neshar Aktar', 'mdnesharaktar@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(357, 'FREESTUDENT', 'Mrinmay Mandal', 'mrinmaymandal6789@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(358, 'FREESTUDENT', 'Sk Biki', 'skbiki005@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(359, 'FREESTUDENT', 'Hasan ali', 'hasan8250ali@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(360, 'FREESTUDENT', 'Abul kalam', 'babuser1221@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(361, 'FREESTUDENT', 'Tausif Ahmed', 'ahmedtousif201@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(362, 'FREESTUDENT', 'Ramich Raja', 'ranask1996rr@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(363, 'FREESTUDENT', 'Krishnamoy Das', 'krishnamoydas87@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(364, 'FREESTUDENT', 'Prabir sarkar', 'prabirsarkar4150@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(365, 'FREESTUDENT', 'Abaidur Rahaman', 'abaidur383@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(366, 'FREESTUDENT', 'avra singh', 'avrasingh@2001gmail.com', 1, 'success', 'YES', 0, '2022-03-24', 1),
(367, 'FREESTUDENT', 'avra singh', 'avrasingh@2001gmail.com', 2, 'success', 'YES', 0, '2022-03-24', 1),
(368, 'FREESTUDENT', 'avra singh', 'avrasingh@2001gmail.com', 4, 'success', 'YES', 0, '2022-03-24', 1),
(369, 'FREESTUDENT', 'Diya Sarkar ', 'sarkardiya121@gmail.com', 1, 'success', 'YES', 0, '2022-03-24', 1),
(370, 'FREESTUDENT', 'Diya Sarkar ', 'sarkardiya121@gmail.com', 2, 'success', 'YES', 0, '2022-03-24', 1),
(371, 'FREESTUDENT', 'Diya Sarkar ', 'sarkardiya121@gmail.com', 4, 'success', 'YES', 0, '2022-03-24', 1),
(372, 'FREESTUDENT', 'Sumi Khatun', 'sumikhatun20210@gmail.com', 1, 'success', 'YES', 0, '2022-03-24', 1),
(373, 'FREESTUDENT', 'Sumi Khatun', 'sumikhatun20210@gmail.com', 2, 'success', 'YES', 0, '2022-03-24', 1),
(374, 'FREESTUDENT', 'Sumi Khatun', 'sumikhatun20210@gmail.com', 4, 'success', 'YES', 0, '2022-03-24', 1),
(375, 'FREESTUDENT', 'Azad Hossain', 'hossainazad0488@gmail.com', 1, 'success', 'YES', 0, '2022-03-24', 1),
(376, 'FREESTUDENT', 'Azad Hossain', 'hossainazad0488@gmail.com', 2, 'success', 'YES', 0, '2022-03-24', 1),
(377, 'FREESTUDENT', 'Azad Hossain', 'hossainazad0488@gmail.com', 4, 'success', 'YES', 0, '2022-03-24', 1),
(378, 'FREESTUDENT', 'ARINDAM DAS', 'arindamd325@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(379, 'FREESTUDENT', ' Sahin Aktar ', 'mssahinaktar07@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(380, 'FREESTUDENT', 'Dibakar Singh', 'dibakarsingh0000@gmail.com', 16, 'success', 'YES', 0, '2022-03-24', 1),
(381, 'FREESTUDENT', 'Md Mijanur Rahaman', 'mijanurfsss03@gmail.com', 16, 'success', 'YES', 0, '2022-03-25', 1),
(382, 'FREESTUDENT', 'Suchismita Saha', 'suchismitasaha1012@gmail.com', 1, 'success', 'YES', 0, '2022-03-25', 1),
(383, 'FREESTUDENT', 'Suchismita Saha', 'suchismitasaha1012@gmail.com', 2, 'success', 'YES', 0, '2022-03-25', 1),
(384, 'FREESTUDENT', 'Suchismita Saha', 'suchismitasaha1012@gmail.com', 4, 'success', 'YES', 0, '2022-03-25', 1),
(385, 'FREESTUDENT', 'Suchismita Saha', 'suchismitasaha1012@gmail.com', 5, 'success', 'YES', 0, '2022-03-25', 1),
(386, 'FREESTUDENT', 'Suchismita Saha', 'suchismitasaha1012@gmail.com', 16, 'success', 'YES', 0, '2022-03-25', 1),
(387, 'FREESTUDENT', 'Bipasha Rajbanshi', 'rajbanshibipasha50@gmail.com', 1, 'success', 'YES', 0, '2022-03-28', 1),
(388, 'FREESTUDENT', 'Bipasha Rajbanshi', 'rajbanshibipasha50@gmail.com', 2, 'success', 'YES', 0, '2022-03-28', 1),
(389, 'FREESTUDENT', 'Bipasha Rajbanshi', 'rajbanshibipasha50@gmail.com', 4, 'success', 'YES', 0, '2022-03-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(1, 'Hiranmoy Mandal', 79);

-- --------------------------------------------------------

--
-- Table structure for table `freecourse`
--

CREATE TABLE `freecourse` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_desc` text NOT NULL,
  `course_author` varchar(255) NOT NULL,
  `course_img` text NOT NULL,
  `course_duration` text NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL,
  `course_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `freelesson`
--

CREATE TABLE `freelesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text NOT NULL,
  `lesson_desc` text NOT NULL,
  `lesson_link` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `freelesson`
--

INSERT INTO `freelesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(2, 'Lesson 01', 'this Free course ', 'something.mp4', 1, 'This is Free course'),
(3, 'lesson 02', 'this is lesson 02', 'som', 1, 'This is Free course'),
(4, '01. This is free lesson', 'This is Free lesson', 'https://sudipchakraborty.sgp1.digitaloceanspaces.com/Real_Analysis1/Lecture01.mp4', 2, 'Free Course 1 '),
(5, '01. This is free lesson', 'This is free lesson', 'https://sudipchakraborty.sgp1.digitaloceanspaces.com/Real_Analysis1/Lecture01.mp4', 4, 'Free Course 2'),
(6, '01. This is free lesson', 'This is Free Lesson', 'https://sudipchakraborty.sgp1.digitaloceanspaces.com/Real_Analysis1/Lecture01.mp4', 5, 'Free Course 3'),
(7, '01. This is free lesson', 'This is Free Lesson', 'https://sudipchakraborty.sgp1.digitaloceanspaces.com/Real_Analysis1/Lecture01.mp4', 5, 'Free Course 3'),
(8, 'this is lesson 1', 'this is lesson 1', 'dsjfklajsdklfjlas', 7, 'hjhjhj');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text NOT NULL,
  `lesson_desc` text NOT NULL,
  `lesson_link` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(1, '1. Real Number System  ', 'it is lesson 1', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture01.mp4     ', 1, 'Real Analysis 1 '),
(9, '2. Completeness Property of R  ', 'THIS IS LESSON 02', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture02.mp4    ', 1, 'Real Analysis 1 '),
(10, '3. Archimedean Property of R  ', 'This is lesson 03', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture03.mp4     ', 1, 'Real Analysis 1 '),
(11, '4. Interior Points of a Set  ', 'This is Lesson 04', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture04.mp4    ', 1, 'Real Analysis 1 '),
(13, 'Machine Learning Tutorial', 'The objective of this course is to give you a holistic understanding of machine learning, ', '../lessonvid/intro.mp4', 6, '0'),
(14, 'Regression Intro - Practical Machine Learning Tutorial', 'To begin, what is regression in terms of us using it with machine learning?', '../lessonvid/regression.mp4', 6, '0'),
(15, 'Creating First Algo- Machine Learning Tutorial', 'To begin, what is regression in terms of us using it with machine learning?', '../lessonvid/create.mp4', 6, '0'),
(16, 'Why - Machine Learning', 'To begin, us using it with machine learning?', '../lessonvid/whypthone.mp4', 6, '0'),
(17, 'Chapter First - Machine LEarning', 'To begin, what is regression in terms of us using it with machine learning?', '../lessonvid/java.mp4', 6, '0'),
(18, 'Introduction Data Science', 'LEarning Data Science Basic', '../lessonvid/create.mp4', 7, '0'),
(19, 'Chapter First - Data Science', 'CHapter 1', '../lessonvid/html.mp4', 7, '0'),
(20, 'Introduction Python', 'intro Py', '../lessonvid/whypthone.mp4', 8, '0'),
(21, 'Why? Python', 'why??', '../lessonvid/intro.mp4', 8, '0'),
(22, 'Chapter First - Python', 'Chap 1', '../lessonvid/regression.mp4', 8, '0'),
(23, 'Graphic Design', 'intro', '../lessonvid/webdev.mp4', 9, '0'),
(24, 'AI Basic', 'Intro AI', '../lessonvid/intro.mp4', 10, '0'),
(25, 'Chapter AI', 'Learning', '../lessonvid/create.mp4', 10, '0'),
(26, '5. Open Sets in R  ', 'This is Lesson 05', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture05.mp4    ', 1, 'Real Analysis 1 '),
(28, '6. Limit Points of a Set  ', 'This is lesson 06', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture06.mp4    ', 1, 'Real Analysis 1 '),
(30, '7. Limit Points of Different Sets  ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture07.mp4  ', 1, 'Real Analysis 1 '),
(31, '8. Closed Sets  ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture08.mp4  ', 1, 'Real Analysis 1 '),
(32, '9. Bolzano Weierstrass Theorem & Closure of a Set  ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture09.mp4  ', 1, 'Real Analysis 1 '),
(33, '10. Nested Intervals  ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture10.mp4  ', 1, 'Real Analysis 1 '),
(34, '11. Properties of Enumerable Sets ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture11.mp4 ', 1, 'Real Analysis 1 '),
(35, '12. Convergence of Real Sequence ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture12.mp4 ', 1, 'Real Analysis 1 '),
(36, '13. Sandwich Theorem on Sequence ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture13.mp4 ', 1, 'Real Analysis 1 '),
(37, '14. Monotone Sequence in R ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture14.mp4 ', 1, 'Real Analysis 1 '),
(38, '15. Some Examples on Sequence ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture15.mp4 ', 1, 'Real Analysis 1 '),
(39, '16. Subsequential Limit ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture16.mp4 ', 1, 'Real Analysis 1 '),
(40, '17. Cauchy Sequence ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture17.mp4 ', 1, 'Real Analysis 1 '),
(41, '18. Introduction to Series ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture18.mp4  ', 1, 'Real Analysis 1 '),
(42, '19. Test for Convergence of a Series ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture19.mp4 ', 1, 'Real Analysis 1 '),
(43, '20. Some Examples of Series ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture20.mp4 ', 1, 'Real Analysis 1 '),
(44, '21. More Examples of Series ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture21.mp4 ', 1, 'Real Analysis 1 '),
(45, '22. Limit of a Function ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture22.mp4 ', 1, 'Real Analysis 1 '),
(46, '23. Right & Left Hand Side Limits ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture23.mp4 ', 1, 'Real Analysis 1 '),
(47, '24. Continuity of a Function ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture24.mp4 ', 1, 'Real Analysis 1 '),
(48, '25. Properties of a Continuity ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture25.mp4 ', 1, 'Real Analysis 1 '),
(49, '26. Continuity on a Closed & Bounded Interval ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture26.mp4 ', 1, 'Real Analysis 1 '),
(50, '27. Uniform Continuity ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture27.mp4 ', 1, 'Real Analysis 1 '),
(51, '28. Introduction to Differentiability ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture28.mp4 ', 1, 'Real Analysis 1 '),
(52, '29. Darboux & Rolles Theorem ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture29.mp4 ', 1, 'Real Analysis 1 '),
(53, '30. Mean Value Theorem & Its Application ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture30.mp4 ', 1, 'Real Analysis 1 '),
(54, '31. Successive Derivatives ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis1/Lecture31.mp4 ', 1, 'Real Analysis 1 '),
(59, '1. Introduction to Metric Space ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture01.mp4 ', 5, 'Metric Space  '),
(60, '2. Some Examples of Metric Space ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture02.mp4 ', 5, 'Metric Space  '),
(61, '3. More Examples of Metric Space ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture03.mp4 ', 5, 'Metric Space  '),
(62, '4. Some Inequalities & their Application ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture04.mp4 ', 5, 'Metric Space  '),
(63, '5. Bounded Metric & Open Sphere', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture05.mp4', 5, 'Metric Space  '),
(64, '6. Interior Point', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture06.mp4', 5, 'Metric Space  '),
(65, '7. Properties of Open Set & Closed Set', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture07.mp4', 5, 'Metric Space  '),
(66, '8. Closure & Boundary of a Set', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture08.mp4', 5, 'Metric Space  '),
(67, '9. Diameter of a Set', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture09.mp4', 5, 'Metric Space  '),
(68, '10. Sequence in a Metric Space', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture10.mp4', 5, 'Metric Space  '),
(69, '11. Some Properties of a Sequence', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture11.mp4', 5, 'Metric Space  '),
(70, '12. Complete Metric Space', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture12.mp4', 5, 'Metric Space  '),
(71, '13. Examples of Complete Metric Spaces', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture13.mp4', 5, 'Metric Space  '),
(72, '14. Separable Metric Space', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Metric_Space/Lecture14.mp4', 5, 'Metric Space  '),
(73, '1. Vector Space', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture01.mp4', 4, 'Linear Algebra  '),
(74, '2. Subspaces', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture02.mp4', 4, 'Linear Algebra  '),
(75, '3. Examples of Subspaces', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture03.mp4', 4, 'Linear Algebra  '),
(76, '4. Linear Span', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture04.mp4', 4, 'Linear Algebra  '),
(77, '5. Linear Dependence & Independence', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture05.mp4', 4, 'Linear Algebra  '),
(78, '6. Theorems on Linear Dependence', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture06.mp4', 4, 'Linear Algebra  '),
(79, '7. Basis & Dimension', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture07.mp4', 4, 'Linear Algebra  '),
(80, '8. Replacement Theorem & its Application', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture08.mp4', 4, 'Linear Algebra  '),
(81, '9. How to find Basis & Dimension of a Subspace', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture09.mp4', 4, 'Linear Algebra  '),
(82, '10. Direct Sum', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture10.mp4', 4, 'Linear Algebra  '),
(83, '11. Introduction to Linear Transformation', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture11.mp4', 4, 'Linear Algebra  '),
(84, '12. Kernel & Image', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture12.mp4', 4, 'Linear Algebra  '),
(85, '13. Rank Nullity Theorem', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture13.mp4', 4, 'Linear Algebra  '),
(86, '14. MCQ Solutions', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture14.mp4', 4, 'Linear Algebra  '),
(87, '15. Matrix of Linear Transformation', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture15.mp4', 4, 'Linear Algebra  '),
(88, '16. The Space of all Linear Mappings & Introduction to Dual Spaces', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture16.mp4', 4, 'Linear Algebra  '),
(89, '17. Dual Space', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture17.mp4', 4, 'Linear Algebra  '),
(90, '18. Double Dual', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture18.mp4', 4, 'Linear Algebra  '),
(91, '19. Rank of Matrix - Elementary Operations ', 'More videos of this course will be added soon. (approximately next week)', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture19.mp4 ', 4, 'Linear Algebra  '),
(92, '1. Introduction to Riemann Integration', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture01.mp4', 2, 'Real Analysis 2  '),
(93, '2. Refinement of a Partition', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture02.mp4', 2, 'Real Analysis 2  '),
(94, '3. Condition of Integrability', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture03.mp4', 2, 'Real Analysis 2  '),
(95, '4. Darboux Theorem', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture04.mp4', 2, 'Real Analysis 2  '),
(96, '5. Some important theorems on Integration', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture05.mp4', 2, 'Real Analysis 2  '),
(97, '6. More theorems on Integration', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture06.mp4', 2, 'Real Analysis 2  '),
(98, '7. Some properties of Integration', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture07.mp4', 2, 'Real Analysis 2  '),
(99, '8. More properties of Integration', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture08.mp4', 2, 'Real Analysis 2  '),
(100, '9. Some examples on Riemann Integration', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture09.mp4', 2, 'Real Analysis 2  '),
(101, '10. Inequalities on Integration', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture10.mp4', 2, 'Real Analysis 2  '),
(102, '11. Riemann Integration', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture11.mp4', 2, 'Real Analysis 2  '),
(103, '12. Fundamental Theorem of Integral Calculas', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture12.mp4', 2, 'Real Analysis 2  '),
(104, '13. Application of Fundamental Theorem', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture13.mp4', 2, 'Real Analysis 2  '),
(105, '14. Mean Value Theorem on Integral Calculas', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture14.mp4', 2, 'Real Analysis 2  '),
(106, '15. Improper Integral - Part 1', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture15.mp4', 2, 'Real Analysis 2  '),
(107, '16. Improper Integral - Part 2', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture16.mp4', 2, 'Real Analysis 2  '),
(108, '17. Improper Integral - Part 3', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture17.mp4 ', 2, 'Real Analysis 2  '),
(109, '18. Improper Integral - Part 4', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture18.mp4', 2, 'Real Analysis 2  '),
(110, '19. Improper Integral - Part 5', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture19.mp4', 2, 'Real Analysis 2  '),
(111, '20. Improper Integral - Part 6', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture20.mp4', 2, 'Real Analysis 2  '),
(112, '21. Improper Integral - Part 7', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture21.mp4', 2, 'Real Analysis 2  '),
(113, '22. Improper Integral - Part 8', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture22.mp4', 2, 'Real Analysis 2  '),
(114, '23. Final Lecture - Riemann Integration', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture23.mp4', 2, 'Real Analysis 2  '),
(115, '24. Sequence of Functions - Part 1', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture24.mp4 ', 2, 'Real Analysis 2  '),
(116, '25. Sequence of Functions - Part 2', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture25.mp4', 2, 'Real Analysis 2  '),
(117, '26. Sequence of Function - Part 3', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture26.mp4', 2, 'Real Analysis 2  '),
(118, '27. Sequence of Functions - Part 4', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture27.mp4', 2, 'Real Analysis 2  '),
(119, '28. Sequence of Functions - Part 5', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture28.mp4', 2, 'Real Analysis 2  '),
(120, '29. Sequence of Functions - Part 6', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture29.mp4', 2, 'Real Analysis 2  '),
(121, '30. Sequence of Functions - Part 7', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture30.mp4', 2, 'Real Analysis 2  '),
(122, '31. Series of Functions - Part 1', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture31.mp4', 2, 'Real Analysis 2  '),
(123, '32. Series of Functions - Part 2', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture32.mp4', 2, 'Real Analysis 2  '),
(124, '33. Series of Functions - Part 3', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture33.mp4', 2, 'Real Analysis 2  '),
(125, '34. Power Series - Part 1', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture34.mp4', 2, 'Real Analysis 2  '),
(126, '35. Power Series - Part 2', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture35.mp4', 2, 'Real Analysis 2  '),
(127, '36. Power Series - Part 3', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture36.mp4', 2, 'Real Analysis 2  '),
(128, '37. Functions of Bounded Variations - Part 1', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture37.mp4', 2, 'Real Analysis 2  '),
(129, '38. Functions of Bounded Variations - Part 2', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture38.mp4 ', 2, 'Real Analysis 2  '),
(130, '39. Functions of Bounded Variations - Part 3', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture39.mp4', 2, 'Real Analysis 2  '),
(131, '40. Functions of Bounded Variations - Part 4', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture40.mp4', 2, 'Real Analysis 2  '),
(132, '41. Functions of Bounded Variations - Part 5', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Real_Analysis2/Lecture41.mp4', 2, 'Real Analysis 2  '),
(133, '1. Introduction to Set Theory', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Set_Relation_Mapping/Lecture01.mp4', 16, 'Set Relation Mapping'),
(134, '2. Properties of Sets', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Set_Relation_Mapping/Lecture02.mp4', 16, 'Set Relation Mapping'),
(135, '3. Problems & Solutions of Sets and Introduction to Relation', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Set_Relation_Mapping/Lecture03.mp4', 16, 'Set Relation Mapping'),
(136, '4. Equivalence Relations & some problems', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Set_Relation_Mapping/Lecture04.mp4', 16, 'Set Relation Mapping'),
(137, '5. Equivalence Class', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Set_Relation_Mapping/Lecture05.mp4', 16, 'Set Relation Mapping'),
(138, '6. Introduction to Mapping', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Set_Relation_Mapping/Lecture06.mp4', 16, 'Set Relation Mapping'),
(139, '7. Injective, Surjective & Bijective Mappings', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Set_Relation_Mapping/Lecture07.mp4', 16, 'Set Relation Mapping'),
(140, '8. Composition of Mappings', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Set_Relation_Mapping/Lecture08.mp4', 16, 'Set Relation Mapping'),
(141, '9. Some important properties of Mapping Composition', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Set_Relation_Mapping/Lecture09.mp4', 16, 'Set Relation Mapping'),
(142, '10. Inverse Mapping', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Set_Relation_Mapping/Lecture10.mp4', 16, 'Set Relation Mapping'),
(143, '11. Problem and Solutions of Mapping', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Set_Relation_Mapping/Lecture11.mp4', 16, 'Set Relation Mapping'),
(144, '12. Direct and Inverse Image of Mapping', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Set_Relation_Mapping/Lecture12.mp4', 16, 'Set Relation Mapping'),
(145, '22. Introduction to Inner Product Space', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture22.mp4', 4, 'Linear Algebra  '),
(146, '23. Orthogonal & Orthogonal Vectors', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture23.mp4', 4, 'Linear Algebra  '),
(147, '24. Orthogonal Basis of an Inner Product Space', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture24.mp4', 4, 'Linear Algebra  '),
(148, '25. Gram Schimdt Process of Orthogonalization ', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture25.mp4 ', 4, 'Linear Algebra  '),
(149, '26. Orthogonal Complement', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture26.mp4', 4, 'Linear Algebra  '),
(150, '27. Eigen Values & Eigen Vectors of a Linear Operator', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture27.mp4', 4, 'Linear Algebra  '),
(151, '28. Characteristic Equation & Important Properties of Eigen values', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture28.mp4', 4, 'Linear Algebra  '),
(152, '29. How to Find Eigen Vectors of a Matrix', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture29.mp4', 4, 'Linear Algebra  '),
(153, '30. Some Important Problems of Eigen Values & Eigen Vectors', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture30.mp4', 4, 'Linear Algebra  '),
(154, '31. Diagonalization of a Matrix', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture31.mp4', 4, 'Linear Algebra  '),
(155, '32. Invariant Subspace & Minimal Polynomial of a Linear Operator', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture32.mp4', 4, 'Linear Algebra  '),
(156, '34. Properties of Self Adjoint, Normal & Unitary Operators', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Linear_Algebra/Lecture34.mp4', 4, 'Linear Algebra  '),
(157, '1. Automorphism', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture01.mp4', 17, 'Group Theory 2'),
(158, '2. Inner Automorphism Group', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture02.mp4', 17, 'Group Theory 2'),
(159, '3. Characteristic Subgroup', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture03.mp4', 17, 'Group Theory 2'),
(160, '4. Commutator Subgroup', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture04.mp4', 17, 'Group Theory 2'),
(161, '5. External Direct Product of Groups', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture05.mp4', 17, 'Group Theory 2'),
(162, '6. Internal Direct Product', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture06.mp4', 17, 'Group Theory 2'),
(163, '7. Some important theorems of Direct Product', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture07.mp4', 17, 'Group Theory 2'),
(164, '8. Some important Problems & Solutions', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture08.mp4', 17, 'Group Theory 2'),
(165, '9. Sylows 1st Theorem', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture09.mp4', 17, 'Group Theory 2'),
(166, '10. Sylows 1st, 2nd, 3rd Theorems and their Applications', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture10.mp4', 17, 'Group Theory 2'),
(167, '11. Simple Group', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture11.mp4', 17, 'Group Theory 2'),
(168, '12. Test for Simplicity of a Group', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture12.mp4', 17, 'Group Theory 2'),
(169, '13. Application of Cayleys Theorem of Simple Group', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture13.mp4', 17, 'Group Theory 2'),
(170, '14. Ideal of a Ring', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture14.mp4', 17, 'Group Theory 2'),
(171, '15. Principal and Prime Ideals', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture15.mp4', 17, 'Group Theory 2'),
(172, '16. Minimal Ideal and Quotient Ring', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture16.mp4', 17, 'Group Theory 2'),
(173, '17. Polynomial Ring', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture17.mp4', 17, 'Group Theory 2'),
(174, '18. Divisibility in Integral Domain - UFD and Euclidean Domain', '.', 'https://sudipchakraborty.sgp1.cdn.digitaloceanspaces.com/Group-Theory-2/Lecture18.mp4', 17, 'Group Theory 2');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `sem` text NOT NULL,
  `photoPath` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `sem`, `photoPath`) VALUES
(15, '4', 'Images/2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_mobile` varchar(255) NOT NULL,
  `stu_pass` varchar(255) NOT NULL,
  `stu_occ` varchar(255) NOT NULL,
  `stu_img` text NOT NULL,
  `code` int(11) NOT NULL,
  `status` text NOT NULL,
  `BU` int(11) NOT NULL,
  `user_session_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_mobile`, `stu_pass`, `stu_occ`, `stu_img`, `code`, `status`, `BU`, `user_session_id`) VALUES
(68, 'Mohd Mohitur Rahaman', 'mohitur669@gmail.com', '8617027551', '$2y$10$mMAKVVRk72aLufhEZdcbBurZPr0eAdkVxIa7HUrcrwjlJ4T5wt8ju', '', './image/stu/Mohitur Attitude Resize-modified.png', 718676, 'verified', 1, '0df3f4361ec28dac61625c587b593c0a'),
(79, 'Hiranmoy Mandal ', 'mathematicsstudent12345@gmail.com', '', '$2y$10$IACbc6648/yy2ct.erv7zuskI7X4wJMHHA1qIljvmjkr7DrOVQW9C', 'Student ', './image/stu/contact (2).png', 501721, 'verified', 1, '827bf70f2023fa8b8d6a0aeb8c42a539'),
(80, 'SUDIP CHAKRABORTY', 'sudip2205@gmail.com', '9432849311', '$2y$10$kocaBth.U8cnBO3.v2Wrn.DD.Bw1uzu9AVLvyq2L4An52vXiuusFi', '', './image/stu/user.png', 341633, 'verified', 1, ''),
(83, 'Dipankar Sahu', 'dipankarsahu24@gmail.com', '8918177066', '$2y$10$To53X75HPpQ4XfbIv3ClyejhTX.uaclRqKTxE0MAostGwAHQNtlUK', '', './image/stu/user.png', 0, 'verified', 1, '5615b48274ef03d4f7a68aab6813bb13'),
(84, 'Nishika arora', 'nishikaarora81@gmail.com', '08509241854', '$2y$10$ldD.N7DQBo0znQrYy21DKelAU034DZRzO0/Qqwlg5uumHXolVKT7O', 'Want to be a professor ', './image/stu/nishika-logo.svg', 0, 'verified', 1, ''),
(85, 'MD ARIFBILLA MONDAL ', 'arifbilla94@gmail.com', '9563442644', '$2y$10$eX0zWoQv6T3et7itxfX/key4q0Eh60TYlgTifoFs78d69mHzukmRm', '', './image/stu/user.png', 0, 'verified', 1, '1032205bc0e7c9e1d50ca376c7aaa0e0'),
(86, 'Rahul Samanta', 'rahulsamanta2001@gmail.com', '7364935144', '$2y$10$GbZmM7gIYqQ2rIk9pcLlLO32y.y1U44rk4vMKq6BT0NR6I/ChZc2S', '', './image/stu/user.png', 0, 'verified', 1, 'baa671807af26ffb946e0ebfb3b14177'),
(87, 'Md Rahamat Shaikh ', 'rahamat.mld125@gmail.com', '9593196932', '$2y$10$R3yXic4TqgPG8rZfPdOEzeqEQ6PGNcPOws52MzW.ifo1ezoJTpScm', '', './image/stu/user.png', 0, 'verified', 1, '7453a983fbcffda758ed51b3be35af18'),
(88, 'Sudip Roy', 'sudiproy1011@gmail.com', '9064668854', '$2y$10$dsI79RBHdC9.rT2D.xB3X.JBoHHQ892f0CWfPCVliq2qHDGjQ0QOC', '', './image/stu/user.png', 639659, 'verified', 1, '369811bdcf02645491f6442f0d9ebbe0'),
(89, 'Kalicharan Ghosh', 'ghoshkali512@gmail.com', '9735170753', '$2y$10$FlD/9zmJa8ACT.GUQ9ob8etiAXxksbqSR.O3ZLdR79rQxarXHkpDO', '', './image/stu/user.png', 0, 'verified', 1, 'e8ff0facf5683b6350e27cd7fdd2067c'),
(91, 'Arjun mondal ', 'arjunmondal483@gmail.com', '9382997659', '$2y$10$Q/TtlMeARDUGoevNdK4hjeDgVvgs5tu/GCU3qZfs0D8K0/uA1q2cy', '', './image/stu/user.png', 0, 'verified', 1, '450e927999a2ed7186eb6da4f5ed8613'),
(92, 'Samim Akhtar', 'akhtarsamim733121@gmail.com', '9609989233', '$2y$10$rU6MaIgeDoRBBF7gswGak.fTDXIohedEJhJByxZ7S0PXEUG2qmtB2', '', './image/stu/user.png', 0, 'verified', 1, '1cf7cb8275ed90f43c8d1ce473cfc1aa'),
(93, 'Sumanlal Singha Chowdhury', 'singhachowdhury@gmail.com', '9932492531', '$2y$10$s2KXIK1NH4ktPbr7Vdq1wObap4nEvMuWefuKCA2BYDTFetrGWSSTK', '', './image/stu/user.png', 0, 'verified', 1, '27105bf04acb014a5f877ceccf485829'),
(94, 'Arnab Sarkar ', 'arnabsarkarplassey@gmail.com', '8637876340', '$2y$10$Gscgc7yhWqoz959VUmUthOrGqbasl9IesN9i4n08gLiUAAcTWADUy', '', './image/stu/user.png', 0, 'verified', 1, 'dbde1194da490c850d23a89cd147ae62'),
(95, 'Salma khatun', 'amisalmakhatun@gmail.com', '7980995187', '$2y$10$7xQSWMk4Kbz5hXjm4dbzjutZAYRC1sE/9Wdla9UEsPXyOqkdZLPFK', '', './image/stu/user.png', 199955, 'verified', 1, 'a9a0beba6bf7b28c7b6e3da2956e014f'),
(96, 'Tousif Zaman', 'tousifzaman785@gmail.com', '6291061564', '$2y$10$0y7E1BWygGILOCVapREH9eHAiC2oPWl41L8FVozF26U0KK2HN7xuO', '', './image/stu/user.png', 502607, 'verified', 1, ''),
(97, 'samim azad', 'samimrojo17@gmail.com', '7001064603', '$2y$10$1OIM31tunw3GHEjFC1z5XOmqZADYXsPQZY34J3Ryx6HrHvVZNV3oW', '', './image/stu/user.png', 663404, 'verified', 1, ''),
(98, 'Sourav barman', 'souravbarman981@gmail.com', '7908021332', '$2y$10$4eOA27li4QnJwGUkIaWVdeo6K8m/F9XyS.hBc0QDJPIuHiyGrN2sW', '', './image/stu/user.png', 803809, 'verified', 0, ''),
(99, 'Manatosh Barman', 'manatoshbarman15101999@gmail.com', '8617554479', '$2y$10$dYg3isUQZHXfGt03GqseBun.58eF5quL2mwsa53BHHexVKzG/7AXW', '', './image/stu/user.png', 0, 'verified', 1, ''),
(100, 'Pradip Dutta', 'pradipdutta1919@gmail.com', '6296962313', '$2y$10$U79FGsAzgkR7LmQ.Lp2pE.qv/7Qs8xIR5qnj3wL5ibAJnSUsRvRcK', '', './image/stu/user.png', 0, 'verified', 1, '94e37fe03d26b2fec3bf2bc609e6a225'),
(101, 'BARIUL ISLAM ', 'bariulislam1975@gmail.com', '9339460582', '$2y$10$3ZTmDO6eiplPEIo1KgQ7AurW3t1PXkJmLs/VRE8AqS/vAJ3Zh1meW', '', './image/stu/user.png', 711296, 'verified', 1, '2c05070ebd3fe851a50522b38d278464'),
(102, 'Sourav barman', 'barmansourav480@gmail.com', '7431830565', '$2y$10$CepIhhytcGadnoieRkR8f.PtPRG/YrOuLIk6pKR8fTQI8VH1qF3tC', '', './image/stu/user.png', 0, 'verified', 1, '0d23173184d05e98c60e1fd48d072959'),
(103, 'Arghya Mondal', 'arghyamondal827@gmail.com', '7620389895', '$2y$10$OIn1d2FJ/3juSxkGV5Lv6OXHN711Zy.ayQfYl8VEM0DUMvUpcEibK', '', './image/stu/user.png', 842788, 'verified', 1, ''),
(104, 'Arindam Mandal', 'arindammandal1411@gmail.com', '9775577349', '$2y$10$bXtqHT3rf1G9P3YK4hHg6OUhLhwkhglMrNMhZxVls93FCyCwbezsq', '', './image/stu/user.png', 0, 'verified', 1, '716b4c7789e64bb1f88f5f575a358946'),
(105, 'PARVEJ ALAM ', 'alam.parvejhcpur@gmail.com', '6294061063', '$2y$10$ILNUl7uVuJTLZAd8fcYfY.XSxPe7iOfBA4fv1lWXRJi66o21FX/8q', '', './image/stu/user.png', 0, 'verified', 1, '0026d1f3570967f2619c4f7e4dadf9a0'),
(106, 'Monalisha Das ', 'dasmonalisha369@gmail.com', '7679177993', '$2y$10$d1xVx2zY0kZeR1ykcM.xAee/SRejoG6vpWWed2yVjeBgX7XGOhK2m', '', './image/stu/user.png', 614181, 'verified', 1, ''),
(107, 'Debiprasad Pal', 'debiprasadpal2020@gmail.com', '7427994736', '$2y$10$NrjLQueq4neY56fpb2xff.FEGxkWrKw2ciu6jxLkgfrfi0jSlPbNK', '', './image/stu/user.png', 0, 'verified', 1, 'ce9aee1b13e6624c09cc61ad2dde5d99'),
(108, 'Sumit paramanik', 'paramaniksumit066@gmail.com', '7477470661', '$2y$10$Gsbz7SED1orwlk4v2p/OwejWmy/KEz9zdM7Dh5gSNGWt9yvas8dIW', '', './image/stu/user.png', 0, 'verified', 1, 'd7309af6734d21cdf30c0cb314904f1e'),
(109, 'Pijus kanti Roy', 'roypijuskanti5@gmail.com', '6294240540', '$2y$10$B5UKdUHKLwIfKO3ks2uUT.3kBFF1Eg05TbMftYeLRCN00Jz21U31K', '', './image/stu/user.png', 767796, 'verified', 1, 'c41b74846fdd48e57968da147347a56f'),
(111, 'Abhijit Mallick', 'mallickabhijit47@gmail.com', '7679746819', '$2y$10$CXGVe21yi8IMPFKtPNteFevxf2XpoNUxHZpLSujJXWQW/lZFYlXc.', '', './image/stu/user.png', 0, 'verified', 1, '213b7736f055dfb51dbf45ac4be48d02'),
(112, 'SUMAN PAL', 'SP2437649@GMAIL.COM', '8101555824', '$2y$10$2LThZxPPOdgTAIBjA8iqYOMSmdfZ6mjtTzT7.7TCujd9FH7/zLgry', '', './image/stu/user.png', 0, 'verified', 1, ''),
(113, 'Abhijit Das', 'ad856132@gmail.com', '7001830028', '$2y$10$dZs6uebhCyNYslgzZKCE4.7zICwVq3E1QLJPKfnqkKO3Lq9wN7FYu', '', './image/stu/user.png', 0, 'verified', 1, '3c4827db43211a0f3f43d581368e1024'),
(114, 'Basudeb Mandal', 'basudebmandal247@gmail.com', '7908174372', '$2y$10$oArAh6x0lWKN8Gp70w5ftuZdH1MDWXtb9U5OQyfoyQqlq9ikDFQMK', '', './image/stu/user.png', 0, 'verified', 1, '612e47425b838d3bbe7e19d4bea91525'),
(115, 'Bittu Haldar', 'haldarbittu01@gmail.com', '8145935350', '$2y$10$XJ5NLUiXFjuv/RMzk7BjZui8S.XJ/KAa8EQL1ImbS7q7vpxjv3BfK', '', './image/stu/+91 81459 35350 20220315_211035.jpg', 0, 'verified', 1, '81f19c390cbdfb42ec1a57dd6e0c50cc'),
(116, 'Ajijur Rahaman', 'rahamanajijur125@gmail.com', '9734829426', '$2y$10$b3tfEam9tvq.zg8HPm4VTuPUlDN0XRPaGlAzAsEQ6HLUdgvR6XHJa', '', './image/stu/user.png', 0, 'verified', 1, '6f2cc595858c31bd33aeb968df789052'),
(117, 'Suraj ali', 'mdsk123456789a@gmail.com', '9609696842', '$2y$10$J64Akbajs72k1tcJqlSniOZW60.YVSWPUwjt5uwDccQMXh9eoyz7y', '', './image/stu/user.png', 805578, 'verified', 1, ''),
(118, 'Suraj mandal', 'suraj125216mandal@gmail.com', '8370885685', '$2y$10$vYTW.JviSgowi/7RIqg8M.SmMlSgr.XW4Sg.0ejMZDZIeDwsDl4M2', '', './image/stu/user.png', 0, 'verified', 1, 'ba0d87afcbfbf8cceedac0fa34beb2e8'),
(119, 'MD TOWSIF REJA', 'mdtowsifreja11@gmail.com', '7001130127', '$2y$10$385n.R1GtOqqaI.9Y95KCuTGmxjRsZwg6hm4Y7F.wJYgz/TXBzCw2', '', './image/stu/IMG_20220110_235317_166.jpg', 0, 'verified', 1, 'f51309a72d61e4e94398b93474a70e58'),
(120, 'Tanmay Saha', 'tanmay5662020saha@gmail.com', '6294562463', '$2y$10$Z5BNufzXEdiX6qF9EPKlG..fG3B4oc11ZdzT.K0CQNOBEtk8zWEru', '', './image/stu/user.png', 0, 'verified', 1, ''),
(121, 'ARINDAM DAS', 'arindamd325@gmail.com', '7602510256', '$2y$10$leWjP8P9BidKcLak4lOcL.HHP.kjWMwHu0hcZXVCzir1Zwx4z17Si', '', './image/stu/user.png', 149569, 'verified', 1, '481294ee2ef8b1505ba89ede10c9049e'),
(123, 'Prabir sarkar', 'prabirsarkar4150@gmail.com', '9832586886', '$2y$10$s2cTMSK8znxrne/wkzwP3eoT5lEYfFyeZpKwjisgTVwTnvYSd0Inq', '', './image/stu/', 0, 'verified', 1, '230c755222bb6f01ae6c2f7e66b34fc3'),
(125, 'Ananda Jaiswal', 'jaiswalananada@gmail.com', '8597210962', '$2y$10$mpq0eAgXN2Zgpjc0CNC1v.33WCBHMIJh1oyHyCwMvCCAAcIhytzXW', '', './image/stu/user.png', 0, 'verified', 1, ''),
(126, 'Jyotirmoy Roy ', 'royjyotirmoy10001@gmail.com', '9547227153', '$2y$10$FPY2/Ijlunw.y/i8asqT3OFnTZk78x3nv0ak0tNedsWZ3SvRtBh4u', '', './image/stu/user.png', 0, 'verified', 1, '125cc164279bdb66df1b744a2d71c40e'),
(127, 'Shahnawaj Alam', 'alamshahnawaj619@gmail.com', '8927495825', '$2y$10$djKzY972ZBTo.1961t7AyOIR9X.Lo3ivJB7ZZxi26FSyJ6jTkNpHC', '', './image/stu/user.png', 0, 'verified', 1, 'af811ce3aa329a8ea83c57e08797affd'),
(128, 'HORIMOHON CHOWDHURY', 'horimohonc@gmail.com', '8768436087', '$2y$10$LiwCQz01n593K4KTDfCf..ILp0QzrpqgIflNRW8Plwc5C9VzJAV4q', '', './image/stu/user.png', 0, 'verified', 1, 'ce842ff8684842ecb33d73a678defd2a'),
(129, 'SHARMISTHA SARKAR ', 'sharmisthasarkar374@gmail.com', '9907525476', '$2y$10$G72a83qtjb9aatIRjENiM.KM4XU8jDOo16ZNO5YtW9TU6pmB45tZa', '', './image/stu/user.png', 0, 'verified', 1, 'a6195832e898714d05f8da3ad99c4d38'),
(130, 'Sudipa Mani ', 'sudipamani2003@gmail.com', '08967934639', '$2y$10$6w2x/T8p9YUESX9duY0Vkur0P3DlL64RKIxKxMoLYOIdYLikb0ViS', '', './image/stu/user.png', 491011, 'verified', 1, '01258c01b72a1a4057ecc1697108550a'),
(131, 'Aditi Munshi', 'aditimunshi44@gmail.com', '8637876197', '$2y$10$UwaUuBSKn8TuEWdpYhtAmuicFqiSF1DliipD4mB6Uf.EiOaRwNJ1K', '', './image/stu/user.png', 130874, 'verified', 1, ''),
(132, 'Subhanwita mandal', 'subhanwitamandal@gmail.com', '7908245080', '$2y$10$0D.tvZVvrGrpHm3phM4LyeG20h0.tYaInxEhm2WxokT4uVhZ88T3q', '', './image/stu/user.png', 0, 'verified', 1, '600ca3e365173d15f6e63a8e1c51d50e'),
(133, 'Krishnamoy Das', 'krishnamoydas87@gmail.com', '9475755137', '$2y$10$ysYHPuGeDeLRpOyq/uUaReHssxCgJMy9O20xpQoBgqb4LtpB.4.X2', '', './image/stu/user.png', 873656, 'verified', 1, '22ddbcd6c7697a546491e0d5052cb04e'),
(134, 'Tanmay Saha', 'sahatanmay5662022@gmail.com', '6294562463', '$2y$10$Cu9UuZY3oUKJKz9CZoTbP.YdtF54b0s1AsB1tOOcvFkII0PrBoRj.', 'B.Sc honours', './image/stu/1610524057314.jpg', 0, 'verified', 1, '747e7f34654864c0e129c7300907d391'),
(135, 'Afifa Jasmin', 'hitmanboom54321@gmail.com', '7076328462', '$2y$10$nYqzIkr9rcznCpOvztKe8u6C0JcgfA4sUPC4mY1m0drxIWP2r1Tha', '', './image/stu/user.png', 0, 'verified', 1, ''),
(136, 'JHANKAR MANDAL', 'jhankarmandal37@gmail.com', '8597254297', '$2y$10$G8WEubE1sP3SvW4iZbqfT.Yon1vcUpag/17VzjmDEzg8V3Bd7.J6q', '', './image/stu/user.png', 0, 'verified', 1, 'c667e50c9b1cb1246a776fae21687f57'),
(137, 'Nayan Mandal ', 'nayanmandal12340@gmail.com', '9832829177', '$2y$10$dgkPvoiGnovmj.IveI7jKus30VMUhWiipmAs3tes1EL2oHQnphAiW', '', './image/stu/InShot_20211001_171207900.jpg', 502828, 'verified', 1, 'a0bd4e2db18f447a7f80140d10d389d5'),
(138, 'Mainak Chakraborty', 'mainakchakraborty10@gmail.com', '8637559498', '$2y$10$pddWRArEwjLbHLzwGfSVuux.zY9zxvhf1DrHwFQx82gjSL5SOaFz2', '', './image/stu/user.png', 0, 'verified', 1, '933856841d1e831ed04db3e146efddb3'),
(140, 'Urbi Sarkar', 'urbi24122003@gmail.com', '8371868646', '$2y$10$S4AJ5KSpi8Kngo8gRuA.FeoLj2B5IFkN6xrLGzJnhNF5UHO3vjYT6', '', './image/stu/user.png', 0, 'verified', 1, '48678b63c1bed8b918f276a883f8339f'),
(141, 'Shreya Karmakar', 'shreyakarmakarmalda123@gmail.com', '8016007033', '$2y$10$nhJ7kNpsoc8TjnngYymMuenmLxwz18ofcT/mac9bjmiwCp3yMGGj6', '', './image/stu/user.png', 0, 'verified', 1, '5cab7ccd635efb9fad28b3459a8cd382'),
(143, ' Sahin Aktar ', 'mssahinaktar07@gmail.com', '8597929701', '$2y$10$75MsSx9imEe4zs/iN0QviOOohdbqEC6m1VLMfXTXbRSM5GyaVzrq.', '', './image/stu/user.png', 594360, 'verified', 1, '7380252e36979c553d402a6828da1a89'),
(145, 'Subhajit Das', 'rajdas200200@gmail.com', '9002155187', '$2y$10$JFY9mcxVnm1ySjsrDM6paelaXcVYAdXSGVDL1OQq2pPZYLypsn1Ku', '', './image/stu/user.png', 0, 'verified', 1, 'd51f27ca78db384894dffafb2e9c9ab4'),
(146, 'Aditya Kumar Roy', 'adityakroy257@gmail.com', '8900050964', '$2y$10$puO1kaOzIf06Yhww45CmuupLTDTRaqIhPWqzZiz6FeG2244VzsvlG', '', './image/stu/user.png', 0, 'verified', 1, '08260f8d28e8b8ed4823cadf2a35bacb'),
(147, 'Priyangshu Chowdhury ', 'priyangshuchowdhury5@gmail.com', '7319386157', '$2y$10$r.bQxUKJ8vaRHHRMiTUV6.8/Lp2XfSvC3f09GE2F1DZXYlyKrq8qW', '', './image/stu/user.png', 972844, 'notverified', 1, ''),
(148, 'Jasmin Siddika', 'jsiddika981@gmail.com', '8509377730', '$2y$10$yt.1157054qaeiofBAtC5.4ru4D/dDkU4TQDXl8r2bpmXdhjY/KE.', '', './image/stu/user.png', 276987, 'verified', 1, '85ffd14a08f67c64fab0f68d2311cfb0'),
(149, 'Gobinda mandal', 'gobindamld4@gmail.com', '8001184174', '$2y$10$Sg3bEFVRFTcXVpxRKz7S1OvPrggCHpsPu77xbEdNaDi0hj79T1s2y', '', './image/stu/user.png', 685719, 'notverified', 1, ''),
(150, 'Moumita karmakar', 'moumitakarmakarmoumita@gmail.com', '7063575774', '$2y$10$88SzXnWeVZ3t57j9CmkQ.eP0zn.gL3VuLDt3vtLH2xNixIXQlV/xm', '', './image/stu/user.png', 0, 'verified', 1, '76d54aff79199a769276cad0c6c1f85d'),
(151, 'Isika saha', 'ishikasaha31@gmail.com', '9907224816', '$2y$10$ouh4h2ptLDufsBw2wdxLkuNAjgpDItI2XhtjEmNhM4MCA8nTL6Yte', '', './image/stu/user.png', 0, 'verified', 1, '78fb05dee65f584da1caba1f80fa2d49'),
(152, 'Sraboni Ghosh', 'srabonighosh845@gmail.com', '9832432981', '$2y$10$0wmxbwCVtzWFX5YOkYh4t.CAX0NlBedTj1LoO6fiCsk7jxkHz2RM6', '', './image/stu/user.png', 787742, 'verified', 1, 'cb4c769fa0b5b1993f6dfcb7108600c2'),
(153, 'Al Aman Momin', 'alamanmomin070@gmail.com', '9800640168', '$2y$10$dUgOwwNxBgcdYj.XXStZeubalT3vQ9dIeUqg7fs7fT8KNgl/XUoQ6', '', './image/stu/IMG_20220203_165343.jpg', 676285, 'verified', 1, 'fd606e49af3277413df632e72e2ca54a'),
(154, 'Subhankar Bhakat', 'subhanker060902@gmail.com', '7477831272', '$2y$10$LrFaAcuQ3de1Lj2YIisJRu8wr.gkQac1y1VBG0bcbrPK41XHqvomG', '', './image/stu/user.png', 0, 'verified', 1, '7fc4ea7746a83b488c142c7a5337283a'),
(155, 'Kakoli Sarkar', 'swapant24@gmail.com', '9641532283', '$2y$10$E/BZ7EDDrv5r2IeDnFnWoO8wmchSRJOsPBJMmpytVQ5lqNuLe4bcW', '', './image/stu/user.png', 0, 'verified', 1, 'f83591a61d4522720e5892b3ca547980'),
(156, 'Ummar Faruk', 'mu2naraj425@gmail.com', '9883221646', '$2y$10$bkos2Md.Sx0pNmFu2WBpE.D2XyCNSp/E9NvuoFSRwAX7s2M1tsFqC', '', './image/stu/user.png', 0, 'verified', 1, '5c3ac9009d00d4deea19fbdf2eb664d4'),
(157, 'Abaidur Rahaman', 'abaidur383@gmail.com', '8617688530', '$2y$10$kjZ9s3C7D3D388u3hHac0.owCo8ZA6C8ddKJzCHD7VnWq52pys/OC', '', './image/stu/user.png', 122810, 'verified', 1, 'ec288021e5f951ad3d873b120776a715'),
(158, 'Rahul Sk', 'rahulpro410@gmail.com', '7872637418', '$2y$10$IogYR45fKzUQXXMZ0IlY.e3V05ghYjryqqTIDzvOMFVauxI/Axzye', '', './image/stu/user.png', 0, 'verified', 1, ''),
(159, 'Rajib Mandal', 'rajibmandal.1011@gmail.com', '9735123320', '$2y$10$f4ksYT6sUF4mhXGbwDx4yesG.uqPBU6rpnwZjZCWLZAmC933dpHFq', '', './image/stu/user.png', 584730, 'notverified', 1, ''),
(160, 'RUPASI MANDAL', 'rupasimandal81@gmail.com', '7063408108', '$2y$10$vEYlqR6gREbOyqOal2WqaedichdoPauM0Ed0924kwahMxICB.4DkK', '', './image/stu/user.png', 0, 'verified', 1, '0e97f9b0c4a009af62cf4e375cd6a3e3'),
(161, 'Ariful Islam', 'ai4534931@gmail.com', '8695593268', '$2y$10$q0hAgs871gA6a2SNTFMJu./RSVGBwt/vBGGUvh4VbM02BiUhTgJHu', '', './image/stu/user.png', 417476, 'notverified', 1, ''),
(163, 'FARDIN ANSARI', 'fardinansari07@gmail.com', '08906189974', '$2y$10$n6XRx./gU8OlxUlYHdq50uV3NFUiyjZc4TzxkTNbyRTSsdW71ynf6', '', './image/stu/user.png', 791265, 'notverified', 1, ''),
(164, 'Tapasya Gupta ', 'tapasyagupta21@gmail.com', '6294011848', '$2y$10$u1i6N7wJQh52.Fn.CZvu1.pM/e7nlLUPU4UeV6eTcO5wJT00Y4anS', '', './image/stu/user.png', 0, 'verified', 1, 'b5b21e16189ded0b9885772635bae640'),
(165, 'Jui Misra', 'misrajui660@gmail.com', '9339042961', '$2y$10$NcKW/XbrFkpHyMZdoaAoq.RlXh2prm2mIA0Y/k2rIew/jqxzJlwMC', '', './image/stu/user.png', 990680, 'notverified', 1, ''),
(167, 'Abdul Rasid', 'mdm09081@gmail.com', '6295266374', '$2y$10$RoI.Q7NSaItDkzEcz1o9su/8wA1.u.bKMTWmuVwBNLrw6DIb573NO', '', './image/stu/user.png', 650354, 'notverified', 1, ''),
(168, 'Subhadra Debnath', 'bapondebnath9564@gmail.com', '9679441818', '$2y$10$p9umMfys4byhUXPkJbAvB.6Mef0afRvK3jOkMBt4RWRUfPhGideju', '', './image/stu/40122592_942521315945276_482104985144786944_n.jpg', 0, 'verified', 1, '2fbec7a1db3df17be7c14ab1e55ab312'),
(169, 'TANIA ISLAM', 'taniaislam1911@gmail.com', '9800615306', '$2y$10$/g3iheXW2Xdze/nmvkC1/efewgZQV1tl7YUkM/oLfmk26e3pLsRci', '', './image/stu/user.png', 0, 'verified', 1, ''),
(170, 'Sourav Ghosh', 'souravgh999@gmail.com', '8695027346', '$2y$10$QLf/VQs15Q/ibjymFN3ONuOdFRrY68e6FljLIo86.VLAkdLuLzHzq', '', './image/stu/user.png', 0, 'verified', 1, '6df7ada4f1af5cb5c3df6626acdfd94a'),
(172, 'Tapas Rajak', 'raj9593740@gmail.com', '7029559765', '$2y$10$EifCjIaP9fLhG8SweTPQ6eZ/4gcg.emi4JZ2fta.Ru1vjEd7GDLMO', '', './image/stu/user.png', 0, 'verified', 1, ''),
(173, 'Fema Shah', 'femashah6@gmail.com', '7478087689', '$2y$10$P8sjiMTTX6OPgM9xFdiPsucH5teD3288kZUBdCCyAxIFHaXohA/Xe', '', './image/stu/user.png', 0, 'verified', 1, ''),
(175, 'ALOK KUMAR MANDAL', 'alokmandal088@gmail.com', '7584023155', '$2y$10$Z94Ji3RgIrVPEJ.ntIi.nuuoJ.S9ne5Zaisg6AziwuGps5pt6cGC.', '', './image/stu/user.png', 0, 'verified', 1, ''),
(176, 'Bishal Mandal', 'bishalm477@gmail.com', '8373859389', '$2y$10$f2vaeZnby47zqe0uASZ2DelkgFX0S8n9bUQq7UddKb/67w0FSq4Pe', '', './image/stu/IMG-20220205-WA0022.jpg', 0, 'verified', 1, '8d8069cb88dd5aeebc05d9d92b503ecd'),
(177, 'Ankana das', 'ankanad75@gmail.com', '8906830045', '$2y$10$jvhGCMNhgDKeP.mGlnmLCuzppm4uX7er5uVUqnQcAg6yBEGlNTJUi', '', './image/stu/FB_IMG_1620279838059.jpg', 894801, 'verified', 1, 'b94bfdb98ae3f50f603dcd39346bd9a0'),
(179, 'Farhana Tasneem ', 'tistalatika@gmail.com', '7585821502', '$2y$10$5Ha2XLU6bE1n1GOvpuwXs.SXacAFjyaYPlxwbHgpZG/mJg40PIWSS', '', './image/stu/user.png', 0, 'verified', 1, ''),
(181, 'Monisha Chowdhury ', 'monishachowdhury837@gmail.com', '7407170086', '$2y$10$SkD3LYSjWznVY1LyQcgIj.WzqOxk6XBprGYnb4LSqDV/fobmcHvxm', '', './image/stu/user.png', 364822, 'verified', 1, ''),
(183, 'Biswadeep Das ', 'biswadeep263@gmail.com', '8945960923', '$2y$10$xwjzvlXOpKA2Mw31CEzlDuGmPuyLzLMcaAktGI4wXwsIRlaJEH5lC', '', './image/stu/user.png', 0, 'verified', 1, '3248d805450d110d4005e109fbbbd0b6'),
(184, 'Sourav Karmakar', 'souravkarmakar324@gmail.com', '9064964458', '$2y$10$Z8Sq4emdDDCSttevu5eDb.3xte//BwSS9Z0LeD4Gkha1GqOtq7o0G', '', './image/stu/user.png', 0, 'verified', 1, '43921bcc635d23e820ccdee10b6fccc5'),
(185, 'Manisha Majumdar', 'manishamajumdar29@gmail.com', '8159005053', '$2y$10$LBOiOoYFT8ramlpiBJmyvO.RQGUT.OK6Wm8ky459lK9eV/l4BT0oi', '', './image/stu/user.png', 0, 'verified', 1, ''),
(186, 'Sandip Mandal', 'sandipmandal9064@gmail.com', '6297279792', '$2y$10$nXjQOLMSML5IudvTO/HRxuazJy9SirmKmcGqYqgUMDyKhXFKuvCcW', '', './image/stu/user.png', 0, 'verified', 1, '1018cebb1733f4da6334489114750042'),
(187, 'Serajul Islam', 'serajul6400@gmail.com', '9002008386', '$2y$10$M81FaKLpVsaV8z0YsQvjr.RzVLfYPA7LKQkprlVA8rmF.kYpV7/P6', '', './image/stu/user.png', 0, 'verified', 1, '703a8f041c68879ac9d0aa41bc2b474c'),
(188, 'Subhadeep Das', 'subhadeepdas80636@gmail.com', '7908518771', '$2y$10$qzuFUosZMbhD8MkVvoPSMeFiWISP8sr9D1ZxEbKml/dOxb5Ex6ZlG', '', './image/stu/user.png', 850412, 'notverified', 1, ''),
(189, 'SOUVIK SAHA', 'souvik1492@gmail.com', '8101283718', '$2y$10$D4gwhm/p7LzUYcLMZkLy7eGd6UismUs4mKnibHaeYstsxZ3RqZw0y', '', './image/stu/user.png', 0, 'verified', 1, '22a5bef9058193a4f9a737957aa69382'),
(190, 'Abdul Rasid', 'Mannanmr05@gmail.com', '6295266374', '$2y$10$A3fR0rXBQaoKOQInklywuOy2Yqjgprjmxi5WyviNn9ts8tBQBH9fu', '', './image/stu/user.png', 0, 'verified', 1, ''),
(191, 'GOLAM NOBI AZAD', 'gnazad2002@gmail.com', '6296994092', '$2y$10$4KudaCgSuLhn51kJqntm8eMUn2FNIAQQ6yJdOS9WHmobExfigEOCG', '', './image/stu/865441.jpg', 0, 'verified', 1, '599c01d445dad358625a86ccaa3d8e53'),
(192, 'Raman paul', 'ramanpaul297@gmail.com', '7477546147', '$2y$10$eygBGiKFZs265SR2aG9nrenC0THabFf2HSCGAHqzSVwyX5.4TAwki', '', './image/stu/user.png', 429672, 'verified', 1, ''),
(194, 'Shaymal Mondal', 'shyamalm343@gmail.com', '9382107422', '$2y$10$s6PYeqVV.yYkpeEHbtvg3.Ipczh6ZKuhDjRHOq3DM4sjN0xYbtib2', '', './image/stu/user.png', 0, 'verified', 1, 'bf26216704a338b7b1764d657fd50f92'),
(195, 'avra singh', 'avrasingh@2001gmail.com', '08927609689', '$2y$10$VqSWuIRCCdmjwW53WTwFj.Q7jlL8BZ7adms3etiq3yZkYSaVP0qXW', '', './image/stu/user.png', 956536, 'verified', 1, ''),
(196, 'Diya Sarkar ', 'sarkardiya121@gmail.com', '8436739314', '$2y$10$7SnaSo0geKQFSPjO.hx1KeQwAPyubE5TQp6IOWz.ThSJdDMceyjHy', '', './image/stu/user.png', 0, 'verified', 1, ''),
(197, 'Sumi Khatun', 'sumikhatun20210@gmail.com', '7767896481', '$2y$10$9m.OB4.2Bbla.vR0Ovmlj.xceriSlH9vloDCLMZBUW6pZ3DLkap6K', '', './image/stu/user.png', 797254, 'verified', 1, ''),
(199, 'Abdul Kadir', 'akadir9595@gmail.com', '9832761606', '$2y$10$Ct5NDHxzCjSLEwQSiGp9Lu6P3cl9JOPEm/BtagZHveaaWnFmz3qAK', '', './image/stu/user.png', 0, 'verified', 1, '2ed83850377b1adbd79bd425cd12899f'),
(200, 'avra singh', 'avrasingh2001@gmail.com', '08927609689', '$2y$10$17fYfCyO3N80ECXNqpfoAebbbwwpz96LCIdXjNFTrgjcONROQcTOi', '', './image/stu/user.png', 0, 'verified', 1, ''),
(201, 'Saunak Chakraborty ', 'scchakraborty7063@gmail.com', '7063707035', '$2y$10$fy92QlWMCnVJMjpEC5m4QuOvqdy5sho4.cu9mQ1wv9OyDpr3vktRC', '', './image/stu/user.png', 0, 'verified', 1, '6c18490b00386638301e5cee3867963a'),
(202, 'Prantik Das', 'dprantik695@gmail.com', '8001343561', '$2y$10$OnjjtrVOk1y/lfkl/p5pteQEMgCIOJGiycd2C4OWipmjH9WLFTeA6', '', './image/stu/user.png', 0, 'verified', 1, '7251305680bf985f7b3e15f52d738abf'),
(203, 'Nibedita Mandal', 'nibeditamandal020@gmail.com', '07797398450', '$2y$10$kEuC8X3ElEL9eyjKB9YsFeSJeKN6Py.GrIBg.HnGSL.ywUbFXmebq', '', './image/stu/user.png', 0, 'verified', 1, ''),
(204, 'Azad Hossain', 'hossainazad0488@gmail.com', '9679719822', '$2y$10$eR9PKbmwrKvd5U/o4JJsQedm2Q1/aTdMMecntSRRcRQ71IWbjDmjK', '', './image/stu/user.png', 597200, 'verified', 1, '45fd66eff9bd48064d802d11f8f369e7'),
(205, 'Arghadeep Chowdhury ', 'adeepcarrybb@gmail.com', '9932563939', '$2y$10$YKwtif7rmmaIlWZP8jatS..JRGkqA3T2F1lLWaBe4xDoYSrVXQjqe', '', './image/stu/user.png', 0, 'verified', 1, '58bd30058ad7ee187f66426ecefc0a8b'),
(206, 'Ramich Raja', 'ranask1996rr@gmail.com', '+917586071077', '$2y$10$XA36HSfcX9AguAD1PiJV0.NWELbqGywOv6KsEmMuzUp1mThqUcWhe', '', './image/stu/user.png', 0, 'verified', 1, '32c6969fa94543c924e86e2c91ed8aca'),
(207, 'KHALID HASAN ABEDIN', 'khalidhasan125466@gmail.com', '6296043502', '$2y$10$FXuz/L9VcoDUuC9wQ/bPsOOICdlmKUkygoETKBUepv11vsQfB7lLG', '', './image/stu/user.png', 0, 'verified', 1, '293ff9645f5b0c7880ec36652eb82756'),
(208, 'Saundarjya Poddar', 'saundarjyapoddar123@gmail.com', '9883878511', '$2y$10$igY8wZCMunpmyig4SvmmEekIESx/U11NRv3NGhN2woVgx74Je1hd6', '', './image/stu/user.png', 0, 'verified', 1, '78b59d80f08bbd66e43ee1d046ab3850'),
(209, 'Subhadeep Das', 'subhadeepdasmalda01@gmail.com', '7908518771', '$2y$10$Jri43vQeFBGHIQzFPjnm9.Yydpunxphmo5d1YSvXapqlt8piHexSW', '', './image/stu/user.png', 0, 'verified', 1, ''),
(210, 'Tausif Ahmed', 'ahmedtousif201@gmail.com', '9749006906', '$2y$10$ow0hmUjk.ys7NypSbi8dkezdRS7vUy8tExqNIIgHeT1U46l9/NJjK', '', './image/stu/user.png', 868072, 'verified', 1, ''),
(211, 'Priyaranjan Mandal', 'pmandal9997@gmail.com', '9382739216', '$2y$10$Uqyk8QjOUyvlRlgP1L/LGOUOq9iAYhJTliuqHdZ6ycUWP9Toh0ab2', '', './image/stu/user.png', 230655, 'verified', 1, ''),
(212, 'Moumita Chakraborty', 'moumitachakraborty9654@gmail.com', '9002778174', '$2y$10$GsY1IL/1svNi5vBJyJH1mu8Ptw7HtrOzxqiNzA9sMQebiEBNhspdi', '', './image/stu/user.png', 0, 'verified', 1, '12729300c4eae71ea15f24948d7da3b0'),
(213, 'Kunal Roy', 'kunalroy037@gmail.com', '9735941657', '$2y$10$/gjOuCTQZgHeBhEXN4OQWe74YTYfuLC.QSQpKBwtc9it3.8ewFqfS', '', './image/stu/user.png', 0, 'notverified', 1, ''),
(215, 'Yubaraj Misra', 'misra8873@gmail.com', '6296919408', '$2y$10$CNA4BHY8fReh0fLXITLjE.CeCZxmDvuNGZ7tve/z.IgAB9dn3Qkj.', '', './image/stu/user.png', 0, 'verified', 1, ''),
(216, 'Pratik das', 'aryya03514@gmail.com', '6295363574', '$2y$10$MB3u/0Xb3C91QeIDyQHdLOjyl27ymd1wHPOM6URCTTxozRoFet2ce', '', './image/stu/user.png', 0, 'verified', 1, 'ed40455c712eee386b414dfd3aa8ef05'),
(219, 'Preetam Singha', 'preetamsingha682@gmail.com', '6294349736', '$2y$10$gn2cvhwm0rhUJSZPcVOOUehs64P2ZZNWP1g4lqHEwM2dveiIsrDNW', '', './image/stu/user.png', 428601, 'verified', 1, ''),
(220, 'Susmita Saha', 'susmitasaha2508@gmail.com', '9733615447', '$2y$10$rrfwyJLEkQ2uqZTHRiKC8OSt48gd1QW6X1J1V2lN4xJPofC5vvkYW', '', './image/stu/user.png', 0, 'verified', 1, ''),
(221, 'Sufija Khatun', 'sufijakhatun30@gmail.com', '9883118965', '$2y$10$3APPpG8VTPHmMLESWJzA5efQQ2oHUgF6Tg4Ip5Ix.t6Uirv5EBkyO', '', './image/stu/user.png', 0, 'verified', 1, '0e00c4590de477b32a569af95ac52041'),
(222, 'PARTHA DAS ', 'parthadas32554@gmail.com', '8967839774', '$2y$10$xj/1.f8SluVGTTjk4hrQyOVZmnY17CMh9bL23DkhshqAg/vDZWWni', '', './image/stu/user.png', 0, 'verified', 1, '489ee49ac20d2476091f2fea2c6a4573'),
(223, 'Hasiba Akhtara Banu', 'hasibaakhtarabanu@gmail.com', '7501384360', '$2y$10$VXQIwdwIoiqTsq3IG4dCvutmOKNa0hxDtLWTEj732R8P576J0Lju6', '', './image/stu/user.png', 240827, 'verified', 1, ''),
(224, 'Manik Kumar Mandal', 'manikmandal04022004@gmail.com', '08918341380', '$2y$10$huYN.wlgmgs3KnlxcjRi3.kEXs4/1a6S.6eur6LZS.YTsPisuGUCW', '', './image/stu/user.png', 660634, 'verified', 1, ''),
(225, 'Sultana jasmin sk', 'sultana.sja@gmail.com', '6291033839', '$2y$10$zOlS.8iJDNvPXdEh45mHB.ZO9fHUCUXX74N4Yq1g3dBOD7BJ.RD6m', '', './image/stu/user.png', 477820, 'verified', 1, '5d84fd0b8dea224d067993c4f78272cc'),
(226, 'Farhana Sultana', 'farhanasultana5005@gmail.com', '7602942740', '$2y$10$cCS40lGeE02vO.0iNF8tuOWOojEalMcQDvVV8sNCljWgiV.dnGr2e', '', './image/stu/user.png', 0, 'verified', 1, ''),
(227, 'Snigdha karmakar ', 'snigdhakarmakarmldt@gmail.com', '9339041953', '$2y$10$L6I.8ZfFS08nWbABxfZCp.JvhpC40h9NDud/3wRfry0h7/94vm6hi', '', './image/stu/user.png', 0, 'verified', 1, '2417fa2ed1855fc0db3b27b0e0f553fa'),
(230, 'Preetam Singha', 'preetamsingha029@gmail.com', '6294349736', '$2y$10$soijTLBmY25neM/bvKye1OPTG.3ilkHkDOD/SOHB.1yJmtesl0Nna', '', './image/stu/user.png', 0, 'verified', 1, '53814b699128f3c04ec13e171d6f3580'),
(233, 'Bornali saha', 'bornali25588@gmail.com', '9883712498', '$2y$10$tp81opES3XTZLh9tcK586eRpo3b04GSpGjK/by.mpBnTd4V.yuH2e', '', './image/stu/user.png', 0, 'verified', 1, ''),
(235, 'Sourav Chowdhury', 'chowdhurydipak434@gmail.com', '9933015536', '$2y$10$ZFKRlqiK6x1fP33WEcw5Z.3X6/POdjU3cIBvjVLggJCajvqRr1T7G', '', './image/stu/user.png', 0, 'verified', 1, '35ffb67b855f82e964b0221aef978fa9'),
(236, 'Suraj singha', 'singhasudharna@gmail.com', '8972328036', '$2y$10$8C3VUAtxyBOzdFAAMqXNWOs0s7J5Rc8g6MVJJMMQKMRCXKPyiKOAS', '', './image/stu/user.png', 159699, 'notverified', 1, ''),
(237, 'SOHAM BASAK', 'sohambasak126@gmail.com', '08172021034', '$2y$10$WH/UCqY0t/iZj0.aiGuLGez1mmsSEJSUrxMt8aLX83BcT27reHiCa', '', './image/stu/user.png', 0, 'verified', 1, '3da43433cfe132561f415b978c6a4792'),
(238, 'MD ASIK SK', 'mdasiksk49@gmail.com', '9321123714', '$2y$10$YVXBGHjNh/rjj05F0A./vOudob8bGnKeDbFGPOEaB3il8EDfTsu3O', '', './image/stu/user.png', 226472, 'notverified', 1, ''),
(239, 'Anurima Pramanik', 'pramanikanurima30@gmail.com', '9339218334', '$2y$10$fIuS.O0MZtawGDZ4Flffie7wqsx9dV1xW48k49VH4oxP4E2zNP3nC', '', './image/stu/user.png', 0, 'verified', 1, ''),
(240, 'Shantanu Das', 'shanmldt123@gmail.com', '8653900334', '$2y$10$MMjpu1kJ/JvVHBJCfhsmv.pDAtnM65Guw8aBOnOKOXgG3ZtzIGZJG', '', './image/stu/user.png', 236925, 'verified', 1, ''),
(241, 'Shubhashree Sarkar ', 'shubhashreesarkar88@gmail.com', '8967407011', '$2y$10$zS5KIQIWyyKc9cTr5y2s4OnGB70hKqbr0.oeYODkSn1z2hyL8L0tO', '', './image/stu/user.png', 0, 'verified', 1, '628185c6d3307ca4694afb2784bf94f2'),
(242, 'Priyanka Gupta ', 'pg903239@gmail.com', '8759251307', '$2y$10$8luC6PLaIG6yq0hPriANruwd.olYPrzWQJyiWfFXNJkxp/51su1hO', '', './image/stu/user.png', 392315, 'verified', 1, ''),
(243, 'Renuka Sarkar', 'sarkarrenuka817@gmail.com', '7407266202', '$2y$10$eKiqZn6/pbF4RsWZkANDDOqfh/UBYmuTb.g/w5lRTrn8WN34Fvf0a', '', './image/stu/user.png', 670944, 'verified', 1, 'c7c7e152f84537d9459c90d994f1eac1'),
(244, 'Dipankar Rajak', 'dipankarrajak9083@gmail.com', '9547570460', '$2y$10$RdUezGMBWXylb5mmAuCDIubZEM6oI4LB5cfZEw2SqZXlfEQ/FCDnG', '', './image/stu/user.png', 0, 'verified', 1, '1379331b2cc710b6dee6d97a31c5e24d'),
(245, 'Premananda Mandal ', 'premanandamndl@gmail.com', '9883790052', '$2y$10$VJFv2Xl4.skzWPgyw0a1w.fCSXpAvtRUKxo79gKExnfzG2DvW.2A.', '', './image/stu/user.png', 984567, 'verified', 1, 'f04f94919368ee2ab0963facc6471f1e'),
(246, 'SUMANGAL PODDAR', 'sumangalpod884@gmail.com', '7586960124', '$2y$10$yMIt1ONFNqDsQZ1L9aF5X.vP1KXd5AmRCFTXbafz.qO3aMql1s5ci', '', './image/stu/user.png', 353710, 'verified', 1, 'f7d9e4ff892f6770b95bcf200719c6b2'),
(247, 'Sumaiya Parveen', 'sumaiyaparveen846@gmail.com', '9382140328', '$2y$10$9qYlFocdOGOSNd1eVrvOLuIjl/1FNYf7wq/.UulZPCVlqdVtalch6', '', './image/stu/user.png', 125813, 'verified', 1, '5585954472241d201dd36f2ea2331ae0'),
(249, 'Abul kalam', 'babuser1221@gmail.com', '9749856429', '$2y$10$DH1FSjlID5cjdU/We3yFJ.r2EwVeJMgHB.y9nj2/IMDTmYBT19/JK', '', './image/stu/user.png', 826147, 'verified', 1, 'aabc29773855821dea02ddb862ce71ee'),
(250, 'Mst Asrefa Khatun', 'mstasrefakhatun@gmail.com', '9339186266', '$2y$10$fhOKYAKxIhjfHRkcVXtSkeAebWWyknYa/gKm4SMBSV3O0Z4biCjau', '', './image/stu/user.png', 698965, 'notverified', 1, ''),
(251, 'MST KHADIJA KHATUN ', 'khadijakhatun000123786@gmail.com', '9382017125', '$2y$10$6ejAtMdh/l9yiPHh7gz2PO6AXL.6ZAYV2TODMm5p0OF4l2tzmfdEy', '', './image/stu/user.png', 0, 'verified', 1, '11b381767de41ff6d54cd9eebce72749'),
(252, 'Anindya Jha', 'anindyajha61@gmail.com', '9382367887', '$2y$10$gp1JFqkO2HOxNtAzGYyxPu05qnuPWFw8gByVScMZfXOGytSi5uJG.', '', './image/stu/', 486960, 'verified', 1, '971851e6884d019a3993e4b779430cc3'),
(254, 'Priyaranjan Mandal', 'pmandal9996@gmail.com', '9382739216', '$2y$10$uhNmnVdQjDr.kAzBsMlM2ux029hspPqo3vMqPm8PkUdS2P3ObGL/C', '', './image/stu/user.png', 0, 'verified', 1, '2b670b0d330d07262edfa8193cb0ba98'),
(255, 'SK MABUD', 'skmabud1191231027@gmail.com', '6297873827', '$2y$10$.prxlx0vsZeEXYHH7XgNR.sZBcWAUadik0vHWdjVM60GOveK7y1c2', '', './image/stu/IMG_20220314_185732.jpg', 631902, 'verified', 1, '9d298b6ae8026fdfed97ed1f27116397'),
(256, 'Hasan ali', 'hasan8250ali@gmail.com', '8250159002', '$2y$10$WzHwVCNFnssZwSgak3OwAOG6rTXWpHqUTWE5DvBlJfS0U9WQKnf4e', '', './image/stu/user.png', 686029, 'verified', 1, ''),
(257, 'IMRAUL ANSARI ', 'imraul732202@gmail.com', '9733763911', '$2y$10$2pPAFiDFMtqPi8TJGSU0w.onJHi5Pm8v3zuzMUDNlK1PrHtFj4QwO', '', './image/stu/IMG_20220109_220956509.jpg', 960214, 'verified', 1, '4e5087b157348223af8d1937d35fef65'),
(258, 'TIYASH DAS', 'tiyash.das2@gmail.com', '8617074606', '$2y$10$LqUFa.oz3qUCqTKH07AriOP09ZZ5h7llFeoJAz77/yJW13r/vXDqy', '', './image/stu/user.png', 0, 'verified', 1, ''),
(259, 'Debashish Adhikary ', 'nilimaadhikary2000@gmail.com', '8617415501', '$2y$10$VT3fv2RwEo63wFib7VkKTu0oVoj6C3WcEk5bDF0r2NhfOHoe5slry', '', './image/stu/user.png', 666360, 'verified', 1, '7993a89293c34e5572dd5151940333ba'),
(260, 'Papai Saha', 'papaisaha02778@gmail.com', '7718547336', '$2y$10$nIJeRor5Xrw6rd5U1JOyD.snC0TIWvhF3LHqpMkSD7iL1rEFzKrji', '', './image/stu/user.png', 0, 'verified', 1, 'e64fb37f02bb51d5e5ab1459b9292ff8'),
(261, 'Himangshu Barman', 'himangshu9202@gmail.com', '8167709202', '$2y$10$YCGaID2W4PnTWpZrA3GQJe.yPJsOUPetK7mKLcd0IGPKSBRWMGDPC', '', './image/stu/user.png', 0, 'verified', 1, '4c08dcfbd1667680ed95495baace7439'),
(262, 'Ankita Gupta', 'arpanagupta484@gmail.com', '6296425827', '$2y$10$GSp18JPfXSKuSQ7Sk7HhLO3eBNUexHO5lwaPQEjiFlH/IInhq8eS2', '', './image/stu/user.png', 0, 'verified', 1, '9302ea93be072dfac940d951fc036e0f'),
(263, 'Himeli Das', 'dashimeli09@gmail.com', '8373017747', '$2y$10$dDSv2GB90XBtem4RJqiQwuiicPpXSu3MMbbS833JukqLSdCP8aYH6', '', './image/stu/', 0, 'verified', 1, 'c7574fdb6c474add0a3217c320daffd1'),
(264, 'Ekta Talukdar', 'ektatalukdar.mldt@gmail.com', '7407660851', '$2y$10$TKh/dTFcE00pEKJCb5WuE.5ICi2wOD.6BBJ/w34jLb6sX/ptBeSQu', '', './image/stu/user.png', 0, 'verified', 1, 'd95a4194e7909702f08cff3c5848300f'),
(265, 'ARINDAM SARKAR', 'bittusarkar966@gmail.com', '7585954097', '$2y$10$XSJO278xhakAZsVy9buDTO3ae4fBt9mvwORQFBjHZ68wvo04vYYke', '', './image/stu/', 0, 'verified', 1, '8262698a38f0107f8f489f90f28e4eb0'),
(266, 'Mst Asrefa Khatun', 'khatunasrefa4@gmail.com', '9339186266', '$2y$10$R0MEN/LMk.Rrx0mDpSmqR.Oc62J9/iJQJgsRnVHmvb7wMiFZfVXEm', '', './image/stu/user.png', 0, 'verified', 1, 'f43b55448b21b51678a3750f339e6198'),
(267, 'Md Sadik Farhan ', 'fsadik513@gmail.com', '7584959711', '$2y$10$/ae..6NUvLRzIspEvLeAM.r5cCySAPVdiJz2vDdY8JUDA8ZFy.nCu', '', './image/stu/user.png', 666007, 'verified', 1, 'ee0d2c4ea1373797db0329959b617bea'),
(268, 'DHARITRI SARKAR', 'dharitris901@gmail.com', '9339073940', '$2y$10$a7bwO2eI5GY.rhIvnnDT1.vCgEWTNDKaceGAuVq8kO2srWYAfhk6u', '', './image/stu/user.png', 0, 'verified', 1, ''),
(269, 'Injamul Hoque ', 'injamulhoque12776@gmail.com', '9832148135', '$2y$10$BrGt/7mv7fIi15Q722U8J.8k2wNLep3kbILF8Y/t4BkkAbDRaaX86', '', './image/stu/user.png', 0, 'verified', 1, ''),
(270, 'Rajibul Rahaman', 'rajibulrahaman071@gmail.com', '9800843436', '$2y$10$c.Dpzh3JRdVIx6LnBiQjmujAWb7Wp5gr3M/cVy/HIoUmG/CrrGr9a', '', './image/stu/user.png', 0, 'verified', 1, ''),
(271, 'Tusar Ali ', 'tusarali33572@gmail.com', '9800709264', '$2y$10$CiIh/HYNOGoTAwyeEgeZGOpPmDyEugPgeuMskLvplAK4Pxxsjcsve', '', './image/stu/user.png', 0, 'verified', 1, 'a3977b6f2b4a0e9cf914f6585f89b84a'),
(272, 'Bibek Mandal', 'bim933949@gmail.com', '9339490119', '$2y$10$pGibaeQlywrUEtZdhctrT.UEcuthA9e0ed1xvAP02LE4xTMiKdK56', '', './image/stu/user.png', 0, 'verified', 1, '76a6e3e830dee7548372dd01180fa65e'),
(273, 'NIKEETA SARKAR', 'nikeetasarkar48@gmail.com', '6295418316', '$2y$10$bFfQ4lhwHKzpRWZNCCr/D.rwkT3oEzgJ9mVlmPryHB9aLHJNsfWTu', '', './image/stu/FB_IMG_1647421502728.jpg', 0, 'verified', 1, 'ddecfab9112d8287e77307e86e24effe'),
(274, 'Rintu Paul', 'rintupaul16102001@gmail.com', ' 8927848533', '$2y$10$YOOXCaSGgeTcXaTddYY.UuntlBL7kYTd.JkBT/3mxlV1eohLwXpLK', '', './image/stu/user.png', 936537, 'verified', 1, '7fb301ef83553228b00a7b0712d713e4'),
(275, 'Nikita Saha', 'sahanikita206@gmail.com', '9382200853', '$2y$10$a.OIN/FXa06cj7mCX/ikvOqIRheFDQoFVrDFMPGYil4l0Qx66ZU7K', '', './image/stu/user.png', 0, 'verified', 1, '41e8b2c91c0b62c44978c73ba73150e8'),
(276, 'Mrinmay Mandal', 'mrinmaymandal137@gmail.com', '7318964878', '$2y$10$idL09OPPub21QBHpKFwHHe2mmRsHsL48jO.iGbB8MK0RNcpxLN2Om', '', './image/stu/user.png', 0, 'verified', 1, '8a1e5557a5d75daf8299ab597b13edc4'),
(277, 'Saswata Pramanik', 'ranapramanik028@gmail.com', '7479104478', '$2y$10$SZtnDxwCpGdLgFb231DXBeu6lQVt5KFvi8Z0S5VmM0wRTZsJXWjT2', '', './image/stu/user.png', 0, 'verified', 1, '52266efac43fc34f6966d70226059174'),
(278, 'SURAJIT GHOSH', 'gsurajit524@gmail.com', '+917031243247', '$2y$10$EbZIbd6hRIXLwmxvvV1DT.4ZXOANyGy0g4RWWsKZO/S0sucIEfvM.', '', './image/stu/user.png', 0, 'verified', 1, 'e83769a230f153a0969e73902b9ef140'),
(279, 'Rahul Barman', 'barmanrahul732121@gmail.com', '9339861233', '$2y$10$9sYJVMsghidx3mJb8PP9Wu/IbUf3VN2KSKXsXY2A6TP6Lmqlm1Bze', '', './image/stu/user.png', 0, 'verified', 1, '7651f2027b9e92e968a2460afef00c91'),
(280, 'Tushar Mandal', 'tusharmandal709@gmail.com', '8250898114', '$2y$10$UqvkDCWvmdsx.8PklfN7TuKPKVyGyekgTigyTolEJPEkaV3UfWOC2', '', './image/stu/', 0, 'verified', 1, '28599e65c5fb1ab30ae70226af1f43a5'),
(281, 'Ajit Mahato', 'mahatoajit37670@gmail.com', '7548053982', '$2y$10$Hiay0RBwalOXhQCEgdkymultdXPrlocSoe0H7ublGJ7g3Ncf26/ku', '', './image/stu/user.png', 0, 'verified', 1, 'a48e82e65fee5634d50200d029c20df0'),
(282, 'Manik Kumar Mandal', 'manikkumarmandal0402@gmail.com', '8918341380', '$2y$10$.I25tHUnXvy90Fe9Wr5EaOos9929IqtMgSbX5moLMJvGBmxWLsIJq', '', './image/stu/user.png', 0, 'verified', 1, '89e9a4bcf9884b4575acf17aa72fcafa'),
(283, 'Sk Biki', 'skbiki005@gmail.com', '7908405796', '$2y$10$xHlJrAfaGmkg5.RpHZWFieZrRSMBJA0UtYybX0MVYXNqUU8nP7A0G', '', './image/stu/user.png', 176280, 'verified', 1, '9203a30a49c4d0980c225e1ce673f0a3'),
(284, 'Mrinmay Mandal', 'mrinmaymandal6789@gmail.com', '09832843446', '$2y$10$mohd0P6.R2jAKK.UidWUY.DIlh2tt7bSYQRgRlTtZNwjrVMqPikP6', '', './image/stu/user.png', 0, 'verified', 1, ''),
(285, 'Md Neshar Aktar', 'mdnesharaktar@gmail.com', '9609485631', '$2y$10$FL1MhuGL8BaoeJRP.LPzd.2t9IDwKPllojiO9i.2xNHofANIBX4C6', '', './image/stu/user.png', 941179, 'verified', 1, '3183969948ecb0fd6a35f1c44a5f4e1c'),
(286, 'shubhadip sarkar', 'sarkarshubhadip89@gmail.com', '8436815393', '$2y$10$agGzjWrFeIecG4LW3OoLuuDfct9QqqBTMivVzFNFTcyIHjmZUQ4E6', '', './image/stu/user.png', 0, 'verified', 1, '23239efcc9e66f78ea765a7d91cbd66f'),
(287, 'Asif Islam', 'asif.islam2032003@gmail.com', '8653303023', '$2y$10$hWcathi9V2vAO7LEW.C95.dAwpfeh6QAl.dZewORcYKgIaD7wuLdG', '', './image/stu/user.png', 0, 'verified', 1, '575664984e39e056d66f3cb185687212'),
(288, 'Joydeep Roy', 'joydeeproy.2707@gmail.com', '9851727250', '$2y$10$iCDEbk7LUeK/mQa3gz4Ihe4Zr.4r5aEtvuIPyXIDxknfsnxCsizqW', '', './image/stu/user.png', 0, 'verified', 1, '2d4c481fc46f025f8930e84c7e07e064'),
(291, 'Sk Fardeen Ahamed', 'skm808164@gmail.com', '8927902346', '$2y$10$/7z.EdIJHo2ZWDDmTGQQ3ORjlrF6n.2jxshZEH9rhTUzOKti/aIbe', '', './image/stu/user.png', 0, 'verified', 1, ''),
(292, 'Asique Ikbal Ansari', 'muhammadanasit986@gmail.com', '8700455756', '$2y$10$S7dFSIRvTDGaV3.0ym4H7e6GkZgLvcA0PWQWT6ealGideH4WCcfnm', '', './image/stu/user.png', 0, 'verified', 1, '751e70ab26a19054dd5a6fedd1a38bfb'),
(299, 'Farjahan Islam', 'farjahanislam8@gmail.com', '8016313946', '$2y$10$Gzh999F2gUALnfZLtGK1iOkAg50B8SfFaxuOuBu2GuRXMle5IYqWG', '', './image/stu/user.png', 0, 'verified', 1, 'ca408385a8c19b06d193221019e63c24'),
(301, 'Anindita Biswas', 'aninditabiswas829@gmail.com', '8167316224', '$2y$10$ZZ475.iu1ghgHy.YfHNgCOjeL4Rih5Lrt4itxZn2cR4p3.5HqWz6m', '', './image/stu/user.png', 0, 'verified', 1, ''),
(302, 'Durga Mandal', 'durgamandal9749@gmail.com', '8101061278', '$2y$10$Fu4S4CXBNKkHvnqLRffvCOiHcsE/3x2LTIp5zNRWG.On8LDwo5SoS', '', './image/stu/user.png', 0, 'verified', 1, 'b3187f931013d44b4e783c1cecb59aee'),
(304, 'Biswadeep sarker', 'sumon452020@gmail.com', '7602985079', '$2y$10$boXdpv//EVW5SJp3vTpaIOFLCcO/.ZWQdGxfy7myQ7pIMdAgyyLZu', '', './image/stu/user.png', 0, 'verified', 1, '24596a5d0558b64a6a1644fda590b178'),
(305, 'Sukumar mandal ', 'sukumarmandalmld22@gmail.com', '8101058024', '$2y$10$AQc9bN1oRDRsG3K9LXBDbu/9P3fzWGC3r7oCN8/9zy5Qdng.11x4C', '', './image/stu/user.png', 0, 'verified', 1, ''),
(306, 'Hena Khatum', 'henakhatun760216@gmail.com', '7063185916', '$2y$10$zVKlkzor2fE1/UFwul138e2tVozdB6KFUudve6OnyUmgdmiBBl5d2', '', './image/stu/user.png', 0, 'verified', 1, ''),
(307, 'Manash kr mandal', 'manashmandal548@gmail.com', '8116726185', '$2y$10$dwAqAI5drw.eurCU/Z1OJOlVerkYn9c/Kw2.V6v4cNEvp3lN08SES', '', './image/stu/user.png', 114225, 'verified', 1, ''),
(308, 'Mita Sarkar', 'sarkarmita285@gmail.com', '9749413362', '$2y$10$HLgdfQ6as5sLXTS4QYJ.pOdk/Vjn/XzoiRumaAMIWKvKbamuWd5eC', '', './image/stu/user.png', 0, 'verified', 1, ''),
(309, 'Chiranjit Mandal', 'Chiranjitmandal254@gmail.com', '8597583254', '$2y$10$Wz5fY7st6BY4RkCEvOPzi.8sjONe5bzLfejPs4pk4E263AQhxzVJ.', '', './image/stu/user.png', 335520, 'verified', 1, ''),
(310, 'BINOY BISWAS', 'binoy9130@gamail.com', '8927699818', '$2y$10$lGS3CmkyDyf2josDeCra3ON0WlVBfx/48zBXB1H.8g9mZqw/YnaSi', '', './image/stu/user.png', 338435, 'verified', 1, '80186c61dcda239f2158590a4c598073'),
(311, 'Manash kr mandal', 'manashmandal648@gmail.com', '8116726185', '$2y$10$0tecPMh87SXNLANg0tpJCuaysULsEWaa6XGDMrolj9I0ApJW6tJzq', '', './image/stu/user.png', 0, 'verified', 1, 'ab10f05123c5a633149ba7445991c671'),
(312, 'Ali Asgar', 'dfgfffg4355@gmail.com', '7501629241', '$2y$10$QGXsFqfUbsyj6v/PbZTCz.8p9sNFyZ8sawHmLP0lDXk8a2hecCTxa', '', './image/stu/user.png', 0, 'verified', 1, '9357f0c3327a2d70e9d3e9a206ac4c48'),
(320, 'Payel Maity', 'maitypmpayel85@gmail.com', '7797330219', '$2y$10$SmT2joDpnBRousrjUE8D.uFqGPQFw5jyqmBnWQLsymGByUpE/StHS', '', './image/stu/user.png', 0, 'verified', 1, '1191855ebc0b7a8721762a3401057fbc'),
(321, 'Rajashree Roy', 'royrajashree400@gmail.com', '8637876129', '$2y$10$qEkDkiaxynHzRWomFmQi0.11QtKQbOHGOpRoYA1HkGfS6gMLv6M/C', '', './image/stu/user.png', 0, 'verified', 1, 'c3fe9fa44a09603c9e0f0b04e249fb6b'),
(322, 'Jasmin Begam', 'jasminbegam123412@gmail.com', '9647072960', '$2y$10$ndIZfZol3tbxiyAbKEI8bufGg06r5UZVVkCedceu8ALdbhIY/77x.', '', './image/stu/user.png', 0, 'verified', 1, ''),
(323, 'Dibakar Singh', 'dibakarsingh0000@gmail.com', '6296280004', '$2y$10$2PITc361WWT2eiEH8biR.epBamucukQ2A36aDKebwKfpkoqVPFfZ.', '', './image/stu/user.png', 0, 'verified', 1, ''),
(324, 'Md Mijanur Rahaman', 'mijanurfsss03@gmail.com', '9339519611', '$2y$10$TsQVZKqKxdSPs7/Yf5T4H.0cb.A3F9gicxhdOQNDMZg.HFAFgfgzO', '', './image/stu/user.png', 585729, 'verified', 1, ''),
(325, 'Suchismita Saha', 'suchismitasaha1012@gmail.com', '6294689326', '$2y$10$t3KkQ5OJ8ztvbqFI/m2ep.FJqYPW4Pqczo.qKDaW.sxbRrYOY7Lci', 'IIT', './image/stu/', 0, 'verified', 1, ''),
(326, 'Rakib Hasan', 'rakibhasanakash725@gmail.com', '01864498364', '$2y$10$4sup3/JzWo2IxSyFZWiaAO26AZBfJR1fagEqlBG4hkyLAcsIBBVyy', '', './image/stu/user.png', 0, 'verified', 1, ''),
(327, 'Md suja Uddin', 'sujau766@gmail.com', '8145872299', '$2y$10$gLRZio7fgl2yskgp/5h97erzm/7ZYv1MPy0SvgqzAFj8smFJIgTni', '', './image/stu/user.png', 0, 'verified', 1, '17f569171e6d1a3fdad96975a0ff083c'),
(336, 'Bipasha Rajbanshi', 'rajbanshibipasha50@gmail.com', '9832665389', '$2y$10$JtBStGYlLGuIhidYpQzfoO1H2j8qxddqyVgnTpIb9rB1cEziLo9zK', '', './image/stu/user.png', 0, 'verified', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `upcomingevent`
--

CREATE TABLE `upcomingevent` (
  `id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `event_desc` text NOT NULL,
  `upcoming_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upcomingevent`
--

INSERT INTO `upcomingevent` (`id`, `event_name`, `event_desc`, `upcoming_date`) VALUES
(15, 'More Courses are Coming Soon..', 'More Courses are Coming Soon..', '2022-03-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `freecourse`
--
ALTER TABLE `freecourse`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `freelesson`
--
ALTER TABLE `freelesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `upcomingevent`
--
ALTER TABLE `upcomingevent`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `freecourse`
--
ALTER TABLE `freecourse`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `freelesson`
--
ALTER TABLE `freelesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `upcomingevent`
--
ALTER TABLE `upcomingevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
