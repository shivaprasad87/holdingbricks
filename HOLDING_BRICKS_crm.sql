-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 14, 2020 at 05:25 AM
-- Server version: 5.6.47-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HOLDING_BRICKS_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`) VALUES
(1, 'pune'),
(2, 'bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `callbacks`
--

CREATE TABLE `callbacks` (
  `callback_id` int(11) NOT NULL,
  `lead_id` varchar(45) DEFAULT NULL,
  `lead_unique_id` varchar(100) DEFAULT NULL,
  `callback_details` varchar(1000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `callbacks`
--

INSERT INTO `callbacks` (`callback_id`, `lead_id`, `lead_unique_id`, `callback_details`, `date`, `time`) VALUES
(1, '2', 'LNO-061119-2', 'looking for 2, 2.5BHK, wakad, hinjewadi.\r\nneed to share details over mail. of LR', '2019-11-06', '08:24:49'),
(2, '2', 'LNO-061119-2', 'she is looking within 60-70 lakhs budget, shared details over mail. \r\nwaiting for her response.\r\nor else need to contact her either at morning 9:30 am or in middle of 7-8pm', '2019-11-07', '06:02:49'),
(3, '7', 'LNO-061119-7', 'she is looking for 2BHK, Within 60 Lakhs, in Wakad, Ravet, Hinjewadi. \r\nneed  to contact her back and ask for meeting\r\n\r\nneed to make a call through another person.', '2019-11-07', '06:07:45'),
(4, '10', 'LNO-061119-10', 'He is looking for 2BHK. with max. 75 Lakhs budget \r\n\r\nhe already visited almost all the project accross Baner, balewadi and wakad.\r\n\r\n\r\nand he visited with us Western Hills, Gagan Klara, Prima Domus.\r\nbut as he said he didn\'t liked any of them. need to wait for another options according to his requirement.', '2019-11-07', '06:10:36'),
(5, '18', 'LNO-061119-18', 'he is looking for a property at ravet or kivale.\r\nneed to call back and ask for his requirement.', '2019-11-07', '06:12:39'),
(6, '19', 'LNO-061119-19', 'he said he is not  looking for any of the property', '2019-11-07', '06:25:48'),
(7, '19', 'LNO-061119-19', 'cross call done through Akash Dalvi, he said he is not looking for any property option.', '2019-11-07', '06:26:54'),
(8, '4', 'LNO-061119-4', 'need to make a cross call.', '2019-11-07', '06:54:01'),
(9, '5', 'LNO-061119-5', 'looking for 3BHK, \r\nhe closed a unit at Western avenue', '2019-11-07', '06:55:45'),
(10, '52', 'LNO-071119-52', 'Case closed at Kolte Patil Western Avenue', '2019-11-08', '10:35:23'),
(11, '5', 'LNO-061119-5', 'Case closed at Kolte Patil western avenue', '2019-11-08', '10:53:05'),
(12, '101', 'LNO-131119-101', 'Case closed at Rama metro Life', '2019-11-13', '09:06:53'),
(13, '102', 'LNO-131119-102', 'Looking for 2bhk, 80lac, 2yr Possession.\r\nVisited on 2nd Nov', '2019-11-13', '09:59:28'),
(14, '103', 'LNO-131119-103', 'Looking for 1,2bhk', '2019-11-13', '10:02:31'),
(15, '105', 'LNO-131119-105', 'Looking for 3bhk, 80lac, 1yr possession.\r\nlooking in Chandni Chowk.', '2019-11-13', '10:04:22'),
(16, '106', 'LNO-131119-106', 'Looking for 2Bhk, 70lac, 2yrs possession.\r\nVisited Rama MetroLife', '2019-11-13', '10:12:17'),
(17, '102', 'LNO-131119-102', 'Site visit done at VTP Hilife, VJ central, western avenue and metro life but client is more interested in Rama metro life and will br having a revisit to the project', '2019-11-13', '10:59:00'),
(18, '108', 'LNO-131119-108', 'Looking for 2Bhk, 60lac, 1yr possesion.\r\nVisited Ganga Amber.', '2019-11-13', '11:12:05'),
(19, '114', 'LNO-131119-114', 'Looking for 2Bhk, 60lac, 1yr possession.', '2019-11-13', '11:21:59'),
(20, '113', 'LNO-131119-113', 'CLient is looking forward with 2BHK with a budget of 55L interested in Life republic, Site visit not confirmed as client is not available in pune', '2019-11-13', '11:47:28'),
(21, '4', 'LNO-061119-4', 'has booked a local project', '2019-11-13', '11:49:17'),
(22, '1', 'LNO-061119-1', 'call not received', '2019-11-13', '11:51:36'),
(23, '40', 'LNO-061119-40', 'client budget 15-20lk', '2019-11-13', '11:52:36'),
(24, '115', 'LNO-131119-115', '2bhk 45 lac budget will visit on sunday', '2019-11-13', '12:03:09'),
(25, '33', 'LNO-061119-33', '30l budget coming on sat for L.R at 16th nov sat', '2019-11-13', '12:27:49'),
(26, '130', 'LNO-131119-130', 'Looking for 2Bhk,', '2019-11-13', '12:31:45'),
(27, '129', 'LNO-131119-129', 'Case closed at Itrend Homes Hinjewadi', '2019-11-13', '12:35:03'),
(28, '131', 'LNO-131119-131', 'case closed at Pride Park connect', '2019-11-13', '12:44:24'),
(29, '89', 'LNO-131119-89', 'customer looking for investment purpose budget 50-55lk comming for sunday living in aundh', '2019-11-14', '08:18:47'),
(30, '140', 'LNO-181119-140', 'Looking for 2bhk, 65lac, 2yr possession.', '2019-11-18', '12:31:34'),
(31, '141', 'LNO-181119-141', 'Looking for 2bhk, 65lac, 6months possession.', '2019-11-18', '12:36:44'),
(32, '142', 'LNO-181119-142', 'Looking for 2Bhk, 60lac, 2yr possession.', '2019-11-18', '12:41:19'),
(33, '143', 'LNO-191219-143', 'case closed in Kolte Patil Life Republic', '2019-12-19', '09:32:49'),
(34, '149', 'LNO-130120-149', 'S.V done @ maan on 12/01/20 he will interested in wakad central location.', '2020-01-13', '05:23:29'),
(35, '156', 'LNO-130120-156', 'call not recive', '2020-01-13', '05:57:57'),
(36, '155', 'LNO-130120-155', 'looking for 2BHK hilife site visit done will be discussing with wife and will revisit again with a budget of 65L interested in VTP', '2020-01-13', '06:05:29'),
(37, '151', 'LNO-130120-151', 'looking for 2 bhk in early possession interested in maan too bt again looking for another project too', '2020-01-13', '06:14:21'),
(38, '152', 'LNO-130120-152', 'looking for 3 bhk in wakad in 70 lakh also interested in maan jodi flate...currently call not receiving ..', '2020-01-13', '06:16:47'),
(39, '159', 'LNO-130120-159', 'looking for 2 bhk-65 lac for yashwin encore visit not confirm', '2020-01-13', '08:44:55'),
(40, '169', 'LNO-130120-169', 'looking for 2 bhk-60 lac', '2020-01-13', '09:04:19'),
(41, '168', 'LNO-130120-168', 'looking for 2 bhk-50 lac', '2020-01-13', '09:06:33'),
(42, '167', 'LNO-130120-167', 'looking for 2 bhk-60 lac sv done at metro life', '2020-01-13', '09:09:49'),
(43, '171', 'LNO-130120-171', 'looking for 2 bhk in 50 lakh\r\nwakad ready possession dnt want to go tothe hinjewadi', '2020-01-13', '09:17:04'),
(44, '172', 'LNO-130120-172', 'site visit done @maan  & park connect \r\nalso visited godrej mamurdi by another CP', '2020-01-13', '09:24:08'),
(45, '173', 'LNO-130120-173', 'S.V done @maan ..from aurangabaad..\r\nlooking for early possession...', '2020-01-13', '09:28:44'),
(46, '174', 'LNO-130120-174', 'i show him Wakad central and he jst start searching so he wants to explore market.. also want to see maan. coming next weekend for maan', '2020-01-13', '09:33:09'),
(47, '175', 'LNO-130120-175', 'he was interested in token bt then he said that.. he dont want to go with delay possession..so, still thinking for the maan.\r\nso call him back on wednasday', '2020-01-13', '09:38:04'),
(48, '176', 'LNO-130120-176', 'i had a discussion with her so she is interested in maan C tower bt that time she is out of pune and still she is out of pune.. so she said ones she came back she will call me.', '2020-01-13', '09:43:37'),
(49, '177', 'LNO-130120-177', 'interested in central , no availability', '2020-01-13', '09:50:13'),
(50, '180', 'LNO-150120-180', 'todays 12 pm call back', '2020-01-15', '05:05:08'),
(51, '181', 'LNO-150120-181', 'todays 2 pm call back', '2020-01-15', '05:06:07'),
(52, '182', 'LNO-150120-182', 'lookin for 2 bhk-60 lac wakd 22 jan visit at wakad central', '2020-01-15', '05:08:41'),
(53, '183', 'LNO-150120-183', 'Looking for 2 or 3bhk, 80lac to 1cr budget, late  possession, wakad and hinjewadi location. Have pitched WA, VJ, VTP, 7PD for wakad. Godrej Elements, LR, VJ Maan,  Eon Homes for hinjewadi location.', '2020-01-15', '05:18:27'),
(54, '184', 'LNO-150120-184', '2bhk at vj maan', '2020-01-15', '05:50:12'),
(55, '186', 'LNO-150120-186', '2 or 3bhk  budget 70 lacs wakad /baner', '2020-01-15', '06:35:59'),
(56, '187', 'LNO-150120-187', '2bhk 50 lacs hinjawadi vj maan', '2020-01-15', '06:49:02'),
(57, '188', 'LNO-150120-188', '2bhk 65 lacs wakad central', '2020-01-15', '06:55:11'),
(58, '189', 'LNO-150120-189', '2 or 2.5 bhk vj maan 65 lacs', '2020-01-15', '07:30:07'),
(59, '190', 'LNO-150120-190', '2bhk  55 lacs vj maan', '2020-01-15', '07:39:26'),
(60, '191', 'LNO-150120-191', '3bhk wakad /hinjawadi', '2020-01-15', '09:16:54'),
(61, '192', 'LNO-150120-192', '2bhk rohan ananta 55 yo 60 lacs', '2020-01-15', '09:19:55'),
(62, '193', 'LNO-150120-193', '3bhk 80lacs baner puneville wakad', '2020-01-15', '09:23:56'),
(63, '194', 'LNO-150120-194', '1bhk 40 lacs vj maan', '2020-01-15', '09:40:54'),
(64, '195', 'LNO-150120-195', 'looking for 1 bhk his coming 2 feb at vj maan', '2020-01-15', '09:45:27'),
(65, '196', 'LNO-150120-196', '1bhk 38 lacs vj maan', '2020-01-15', '10:43:28'),
(66, '197', 'LNO-150120-197', '2.5 bhk vj maan', '2020-01-15', '10:46:02'),
(67, '198', 'LNO-160120-198', 'looking for 3 bhk-90 lacready to move baner,balewadi', '2020-01-16', '06:56:42'),
(68, '199', 'LNO-160120-199', 'looking for 2 bhk-60 lac nearing passession tomorrow visit at vtp hilife', '2020-01-16', '06:59:47'),
(69, '160', 'LNO-130120-160', 'his booked resale property', '2020-01-17', '06:13:21'),
(70, '158', 'LNO-130120-158', 'Looking for 2bhk 55lac budget late possession. hinjewadi location.\r\nHave pitched Vilas Javdekar hinjewadi, Kolte Patil LifeRepublic, Pride Pruple Park Connect.', '2020-01-17', '07:35:41'),
(71, '203', 'LNO-220120-203', 'looking for 2 bhk budget not issue wakad,hinjwadi', '2020-01-22', '06:38:04'),
(72, '204', 'LNO-270120-204', 'looking for 1,2 bhk-55 lac wakad,baner,balewadi nearing.p', '2020-01-27', '08:16:03'),
(73, '205', 'LNO-300120-205', 'Case closed at Kolte Patil Life republic', '2020-01-31', '06:47:48'),
(74, '158', 'LNO-130120-158', 'Visited YashOne Maan at 27th Jan \r\nVisited Kolte Patil Life Republic at 30th Jan', '2020-01-31', '06:51:51'),
(75, '107', 'LNO-131119-107', 'Looking for 2bhk 60lac early possession.\r\nWakad location. No EMI till possession.', '2020-01-31', '08:04:04'),
(76, '130', 'LNO-131119-130', 'Booked in local building', '2020-01-31', '08:09:00'),
(77, '206', 'LNO-050220-206', 'looking for 2 bhk-1cr wakad', '2020-02-05', '12:41:54'),
(78, '207', 'LNO-050220-207', 'looking for 1 bhk-65 lac hinjwadi ready to move under.c', '2020-02-05', '12:45:23'),
(79, '208', 'LNO-050220-208', 'looking for 1 bhk-35 lac ravet,hinjwadi ready to move,under.c', '2020-02-05', '12:50:06'),
(80, '210', 'LNO-050220-210', 'looking for 3 bhk-1.01 cr kaspate wasti,vishal nager,reday to move,nearing possession', '2020-02-05', '12:58:29'),
(81, '211', 'LNO-050220-211', 'looking for 2 bhk budget not isshu', '2020-02-05', '13:02:29'),
(82, '212', 'LNO-050220-212', 'looking for 1 bhk-35 lac at LR', '2020-02-05', '13:08:56'),
(83, '213', 'LNO-050220-213', 'looking for 3 bhk-75 lac bavdhan,hinjwadi ready to move', '2020-02-05', '13:13:05'),
(84, '214', 'LNO-050220-214', 'looking for 2,3 bhk 1000 plus carpet', '2020-02-05', '13:16:22'),
(85, '215', 'LNO-050220-215', 'looking for 2 bhk-62 lac wakad nearing possession', '2020-02-05', '13:19:11'),
(86, '216', 'LNO-050220-216', 'looking for 2,3 bhk', '2020-02-05', '13:22:11'),
(87, '217', 'LNO-050220-217', 'looking for 1 bhk-30 lac', '2020-02-05', '13:26:20'),
(88, '218', 'LNO-050220-218', 'looking for 1 ,2 bhk-50 lac wakad nearing possession', '2020-02-05', '13:29:39'),
(89, '219', 'LNO-050220-219', 'looking for LR plot', '2020-02-05', '13:33:13'),
(90, '221', 'LNO-050220-221', 'looking for 1 bhk-35 lac nearing possession', '2020-02-05', '13:37:26'),
(91, '223', 'LNO-050220-223', 'looking for 2 bhk-55 lac wakad,baner,balewadi', '2020-02-05', '13:44:30'),
(92, '224', 'LNO-050220-224', 'looking for 2,3 bhk 75 lac hinjwadi,wakad', '2020-02-05', '13:48:09'),
(93, '226', 'LNO-100220-226', 'looking for 2 bhk-60 lac ready to move nearing possession wakad,hinjwadi', '2020-02-10', '04:28:30'),
(94, '200', 'LNO-200120-200', 'his intrested for vj maan', '2020-02-12', '07:29:33'),
(95, '236', 'LNO-080720-236', 'Client not receiving call', '2020-07-08', '07:03:39'),
(96, '237', 'LNO-080720-237', 'not looking for any property option, client got irrited due to so many calls', '2020-07-08', '07:11:48'),
(97, '238', 'LNO-080720-238', 'already booked property in pimpri location with some local builder', '2020-07-08', '07:14:10'),
(98, '239', 'LNO-080720-239', 'unable to talk today call him tomarrow', '2020-07-08', '07:16:32'),
(99, '240', 'LNO-080720-240', 'call her later not replying  properly', '2020-07-08', '07:18:51'),
(100, '241', 'LNO-080720-241', 'details already sent to him , today not picking call , call him tomarrow', '2020-07-08', '07:21:16'),
(101, '242', 'LNO-080720-242', 'need some time to  think , will get back to us after 10 to 15 days', '2020-07-08', '07:27:19'),
(102, '315', 'LNO-080720-315', 'call him after 10 days right now he is out of station', '2020-07-08', '07:28:51'),
(103, '246', 'LNO-080720-246', 'call her on friday, not picking caall right now', '2020-07-08', '07:31:13'),
(104, '249', 'LNO-080720-249', 'call disconnected by custmer , call him tomarrow', '2020-07-08', '07:33:44'),
(105, '288', 'LNO-080720-288', 'call disconnected by the custmer call him later', '2020-07-08', '07:40:08'),
(106, '280', 'LNO-080720-280', 'number not in use', '2020-07-08', '08:00:03'),
(107, '256', 'LNO-080720-256', 'not looking for any property option', '2020-07-08', '08:04:33'),
(108, '257', 'LNO-080720-257', 'not looking for any property option', '2020-07-08', '08:05:20'),
(109, '279', 'LNO-080720-279', 'looking for 1 bhk , but having budget issue, call him on weekend for more option', '2020-07-08', '08:07:21'),
(110, '281', 'LNO-080720-281', 'call not connected call him later', '2020-07-08', '08:08:43'),
(111, '283', 'LNO-080720-283', 'looking units in sure maan vj, want some time think also having refrences, call her on friday', '2020-07-08', '08:10:20'),
(112, '285', 'LNO-080720-285', 'looking for 1bhk in wakad location on right side of highway, call him later', '2020-07-08', '08:14:49'),
(113, '286', 'LNO-080720-286', 'call not connected , call him later', '2020-07-08', '08:16:25'),
(114, '331', 'LNO-080720-331', 'coming for SV today(8-07-2020) \r\non Park Astra.', '2020-07-08', '08:19:06'),
(115, '287', 'LNO-080720-287', 'call him after 10 days , looking 2 bhk in 45 lac so he is intrested in forest grove', '2020-07-08', '08:23:43'),
(116, '289', 'LNO-080720-289', 'looking for 2 bhk in wagholi location in 30 lakh', '2020-07-08', '08:29:25'),
(117, '290', 'LNO-080720-290', 'conversation is going on for pride connect call her on weekend for site visit', '2020-07-08', '08:31:13'),
(118, '291', 'LNO-080720-291', 'looking for 2 bhk in wakad location suggested him western avenue, call him on weekend', '2020-07-08', '08:32:56'),
(119, '314', 'LNO-080720-314', 'not receiving call', '2020-07-08', '08:33:50'),
(120, '292', 'LNO-080720-292', 'not showing intrest in property buying', '2020-07-08', '08:35:21'),
(121, '327', 'LNO-080720-327', 'will visit on sunday 11 to 1 for sure units phase 2', '2020-07-08', '08:36:08'),
(122, '343', 'LNO-080720-343', 'already visited the site for sure', '2020-07-08', '08:37:26'),
(123, '343', 'LNO-080720-343', 'already visited the site for sure', '2020-07-08', '08:37:27'),
(124, '294', 'LNO-080720-294', 'not picking call right now, call him later', '2020-07-08', '08:40:38'),
(125, '295', 'LNO-080720-295', 'looking 1 bhk in 20 lakh for staying purpose', '2020-07-08', '08:43:55'),
(126, '296', 'LNO-080720-296', 'call him on weekend for site visit at i trend life , looking for 1.5 bhk', '2020-07-08', '08:46:02'),
(127, '297', 'LNO-080720-297', 'call him from difrenet no. intrested in life republic but he is self visited .', '2020-07-08', '08:48:15'),
(128, '298', 'LNO-080720-298', 'looking for NA plots in talegaon location suggested him vtp urban life', '2020-07-08', '09:02:20'),
(129, '299', 'LNO-080720-299', 'looking for 1 bhk in vtp blue waters call him on weekend will come for site visit', '2020-07-08', '09:03:30'),
(130, '300', 'LNO-080720-300', 'call him twice but call not connected call him later', '2020-07-08', '09:08:04'),
(131, '302', 'LNO-080720-302', 'looking property in pune , call her later right now she is  busy with some stuff', '2020-07-08', '09:12:53'),
(132, '303', 'LNO-080720-303', 'site visit done i trend life call her later for further discusion', '2020-07-08', '09:14:42'),
(133, '304', 'LNO-080720-304', 'looking for 1bhk in life republic but having budget issue , call him later', '2020-07-08', '09:16:03'),
(134, '305', 'LNO-080720-305', 'having budget issue', '2020-07-08', '09:16:49'),
(135, '306', 'LNO-080720-306', 'looking for 1bhk but having budget issue', '2020-07-08', '09:17:41'),
(136, '1', 'LNO-061119-1', 'booked in signature park dange chowk', '2020-07-08', '09:33:13'),
(137, '6', 'LNO-061119-6', 'wrong number contacted him on mail', '2020-07-08', '09:35:25'),
(138, '8', 'LNO-061119-8', 'not receiving', '2020-07-08', '09:37:02'),
(139, '11', 'LNO-061119-11', 'in cross call', '2020-07-08', '09:38:49'),
(140, '13', 'LNO-061119-13', 'call not receiving', '2020-07-08', '09:40:24'),
(141, '307', 'LNO-080720-307', 'looking for 1 bhk in vj maan but having inventoery problem vc done with client call her later', '2020-07-08', '09:40:41'),
(142, '14', 'LNO-061119-14', 'not looking for now plan has been post poned', '2020-07-08', '09:43:13'),
(143, '308', 'LNO-080720-308', 'details sent him for vj maan and tornado will him after few days for site visit', '2020-07-08', '09:44:50'),
(144, '34', 'LNO-061119-34', 'call not connecting', '2020-07-08', '09:45:50'),
(145, '309', 'LNO-080720-309', 'good client but plan has been postpone for 6 month', '2020-07-08', '09:47:28'),
(146, '310', 'LNO-080720-310', 'will come for visit tomarrow or day after tomarrow', '2020-07-08', '09:50:15'),
(147, '31', 'LNO-061119-31', 'These clients have dropped plans for 6 months', '2020-07-08', '09:50:29'),
(148, '35', 'LNO-061119-35', 'said already booked need to do cross call to confirm', '2020-07-08', '09:51:12'),
(149, '311', 'LNO-080720-311', 'call him on weekend if he is available then will come for sv', '2020-07-08', '09:52:34'),
(150, '374', 'LNO-080720-374', 'coming for SV on maan today(8-7-2020)', '2020-07-08', '09:54:03'),
(151, '82', 'LNO-081119-82', 'client is not looking for any property', '2020-07-08', '09:54:52'),
(152, '37', 'LNO-061119-37', 'not interested need to do a cross call to confirm', '2020-07-08', '09:55:12'),
(153, '90', 'LNO-131119-90', 'booked in wagholi', '2020-07-08', '09:56:02'),
(154, '41', 'LNO-061119-41', 'not receiving', '2020-07-08', '09:57:40'),
(155, '138', 'LNO-141119-138', 'invalid no', '2020-07-08', '09:58:48'),
(156, '43', 'LNO-061119-43', 'vodafone customer care', '2020-07-08', '09:59:33'),
(157, '58', 'LNO-071119-58', 'broker', '2020-07-08', '10:01:12'),
(158, '69', 'LNO-081119-69', 'not interested need to do cross call and confirm', '2020-07-08', '10:03:47'),
(159, '313', 'LNO-080720-313', 'custmer is looking for 2 bhk visited at vj maan want some time to think', '2020-07-08', '10:04:46'),
(160, '63', 'LNO-071119-63', 'not interested', '2020-07-08', '10:05:20'),
(161, '76', 'LNO-081119-76', 'booked in lodha', '2020-07-08', '10:06:57'),
(162, '316', 'LNO-080720-316', 'call him on weeknd might come for site visit on weekend at life republic', '2020-07-08', '10:06:59'),
(163, '89', 'LNO-131119-89', 'ringing', '2020-07-08', '10:07:22'),
(164, '79', 'LNO-081119-79', 'not receiving need to call once again', '2020-07-08', '10:10:24'),
(165, '317', 'LNO-080720-317', 'call him on weekend , might will come for visit', '2020-07-08', '10:10:31'),
(166, '122', 'LNO-131119-122', 'customer not interested as of now will check after this pandemic', '2020-07-08', '10:11:56'),
(167, '111', 'LNO-131119-111', 'not interested need to do cross call to confirm', '2020-07-08', '10:12:39'),
(168, '318', 'LNO-080720-318', 'call him on weekend for confirmation of site visit', '2020-07-08', '10:13:01'),
(169, '126', 'LNO-131119-126', 'customer said not interested', '2020-07-08', '10:14:54'),
(170, '319', 'LNO-080720-319', 'client visited at yashone maan but loan problem so he has dropped the plan', '2020-07-08', '10:16:20'),
(171, '133', 'LNO-141119-133', 'ringing', '2020-07-08', '10:16:28'),
(172, '146', 'LNO-130120-146', 'busy', '2020-07-08', '10:17:46'),
(173, '347', 'LNO-080720-347', 'not picking call , call him later', '2020-07-08', '10:18:29'),
(174, '147', 'LNO-130120-147', 'CNR', '2020-07-08', '10:18:44'),
(175, '154', 'LNO-130120-154', 'was interested in maan 2 bhk not receiving now need to take follow', '2020-07-08', '10:20:08'),
(176, '148', 'LNO-130120-148', 'busy will try again tommorr\r\now', '2020-07-08', '10:25:45'),
(177, '368', 'LNO-080720-368', 'number incomplete \r\npinged him over mail', '2020-07-08', '10:25:47'),
(178, '115', 'LNO-131119-115', 'booked in pratamesh  ravet', '2020-07-08', '10:30:54'),
(179, '12', 'LNO-061119-12', 'Duplicate Lead', '2020-07-08', '10:33:17'),
(180, '243', 'LNO-080720-243', 'customer interested for A2-512  east facing garden flat in itrendlife client will update by tommorow morning', '2020-07-08', '10:34:46'),
(181, '34', 'LNO-061119-34', 'not receiving call.. need to call back later', '2020-07-08', '10:36:15'),
(182, '245', 'LNO-080720-245', 'customer interested for 2bhk 707 sqft area in itrendlife he have also taken final price', '2020-07-08', '10:41:08'),
(183, '148', 'LNO-130120-148', 'his intrested in vj sure', '2020-07-08', '10:43:52'),
(184, '153', 'LNO-130120-153', 'not interested now', '2020-07-08', '10:46:36'),
(185, '150', 'LNO-130120-150', 'call not receiving now will re call him', '2020-07-08', '10:47:40'),
(186, '156', 'LNO-130120-156', 'booked', '2020-07-08', '10:49:13'),
(187, '157', 'LNO-130120-157', 'call back from lucky', '2020-07-08', '10:52:04'),
(188, '248', 'LNO-080720-248', 'customer looking for early possesion so pitched for itrend homes phase 2 comming on friday 09-07-2020', '2020-07-08', '10:54:02'),
(189, '159', 'LNO-130120-159', 'busy', '2020-07-08', '10:58:50'),
(190, '251', 'LNO-080720-251', 'customer said he is not looking for property for 5-6 months', '2020-07-08', '11:01:55'),
(191, '161', 'LNO-130120-161', 'looking for 2 bhk', '2020-07-08', '11:04:58'),
(192, '252', 'LNO-080720-252', 'ringing', '2020-07-08', '11:10:10'),
(193, '253', 'LNO-080720-253', 'she is channel partner', '2020-07-08', '11:12:13'),
(194, '254', 'LNO-080720-254', 'he is from runwal developers', '2020-07-08', '11:14:19'),
(195, '162', 'LNO-130120-162', 'looking 2 bhk', '2020-07-08', '11:16:09'),
(196, '255', 'LNO-080720-255', 'not interested or looking for any properties', '2020-07-08', '11:16:35'),
(197, '259', 'LNO-080720-259', 'no is in non coverage area', '2020-07-08', '11:18:51'),
(198, '260', 'LNO-080720-260', 'ringing', '2020-07-08', '11:21:22'),
(199, '163', 'LNO-130120-163', 'not intrested', '2020-07-08', '11:21:55'),
(200, '40', 'LNO-061119-40', 'ringing', '2020-07-08', '11:23:01'),
(201, '164', 'LNO-130120-164', 'CNR', '2020-07-08', '11:23:31'),
(202, '261', 'LNO-080720-261', 'customer not looking for any property', '2020-07-08', '11:26:42'),
(203, '165', 'LNO-130120-165', 'CNR', '2020-07-08', '11:31:58'),
(204, '166', 'LNO-130120-166', 'CNR', '2020-07-08', '11:36:42'),
(205, '167', 'LNO-130120-167', 'NOT INTRESTED', '2020-07-08', '11:39:20'),
(206, '263', 'LNO-080720-263', 'customer is looking for 2bhk budget 55 lk pitched for itrendlife and vj maan', '2020-07-08', '11:39:43'),
(207, '169', 'LNO-130120-169', 'BOOKED', '2020-07-08', '11:41:15'),
(208, '170', 'LNO-130120-170', 'NOT INTREDTED', '2020-07-08', '11:47:27'),
(209, '178', 'LNO-150120-178', 'NOT INTRESTED', '2020-07-08', '11:48:43'),
(210, '179', 'LNO-150120-179', '2 MONTH LATER SEARCHING', '2020-07-08', '11:52:57'),
(211, '180', 'LNO-150120-180', 'swich off', '2020-07-08', '11:54:06'),
(212, '265', 'LNO-080720-265', 'customer is in mumbai due to pandemic would not able to come site visit soon looking for 2bhk', '2020-07-08', '11:54:43'),
(213, '267', 'LNO-080720-267', 'customer bussy', '2020-07-08', '12:01:21'),
(214, '268', 'LNO-080720-268', 'ringing call him through colleague', '2020-07-08', '12:03:09'),
(215, '269', 'LNO-080720-269', 'no is in non coverable area', '2020-07-08', '12:06:05'),
(216, '275', 'LNO-080720-275', 'ringing', '2020-07-08', '12:08:22'),
(217, '320', 'LNO-080720-320', 'spoked with client also registered him  on vj app interested for vj sure claimed by ankit paradkar', '2020-07-08', '12:14:51'),
(218, '332', 'LNO-080720-332', 'no is switched off but client is registered on vj app claimed by indarjit dhurve', '2020-07-08', '12:17:08'),
(219, '339', 'LNO-080720-339', 'customer looking for 1.5 bhk  at itrend life comming on saturday 2nd half', '2020-07-08', '12:32:25'),
(220, '470', 'LNO-090720-470', 'wants plots in 20 lac in hinjewadi', '2020-07-09', '05:38:11'),
(221, '341', 'LNO-080720-341', 'customer looking for 3bhk around 70 lk pitched for rama mealange and metrolife', '2020-07-09', '05:46:48'),
(222, '388', 'LNO-080720-388', 'out of coverage area', '2020-07-09', '06:02:32'),
(223, '394', 'LNO-080720-394', 'booked in home town', '2020-07-09', '06:13:03'),
(224, '418', 'LNO-080720-418', 'not receiving', '2020-07-09', '06:16:25'),
(225, '154', 'LNO-130120-154', 'not receiving', '2020-07-09', '06:29:43'),
(226, '418', 'LNO-080720-418', 'not interested', '2020-07-09', '06:31:52'),
(227, '420', 'LNO-080720-420', 'not receiving', '2020-07-09', '06:36:51'),
(228, '424', 'LNO-080720-424', 'not interested', '2020-07-09', '06:38:24'),
(229, '348', 'LNO-080720-348', 'looking for 2 bhk around 52 lk will be visit site on sunday for itrend life and vj maan \r\nnote cash component', '2020-07-09', '06:39:05'),
(230, '502', 'LNO-090720-502', 'not receiving', '2020-07-09', '06:40:23'),
(231, '386', 'LNO-080720-386', 'plan postpone not looking for any property option now', '2020-07-09', '06:41:48'),
(232, '509', 'LNO-090720-509', 'call not receiving', '2020-07-09', '06:42:21'),
(233, '511', 'LNO-090720-511', 'works in pride purple hinjewadi', '2020-07-09', '06:45:31'),
(234, '396', 'LNO-080720-396', 'he said his friend booked flat in yashwin encore , now he is looking for property in encore but having budget problem', '2020-07-09', '06:50:40'),
(235, '515', 'LNO-090720-515', '1bhk 480 carpet ravet  35 lac budget', '2020-07-09', '06:50:48'),
(236, '436', 'LNO-080720-436', 'call her later right now she is busy', '2020-07-09', '06:53:12'),
(237, '518', 'LNO-090720-518', 'this number is not valid', '2020-07-09', '06:53:12'),
(238, '519', 'LNO-090720-519', 'call not receiving', '2020-07-09', '06:55:02'),
(239, '519', 'LNO-090720-519', 'not interested', '2020-07-09', '06:55:42'),
(240, '437', 'LNO-080720-437', 'plan dropped due to covid 19', '2020-07-09', '06:55:43'),
(241, '523', 'LNO-090720-523', 'not receiving', '2020-07-09', '07:00:35'),
(242, '438', 'LNO-080720-438', 'client is intrested but due to corona he postpone his plan for next 4 month', '2020-07-09', '07:10:34'),
(243, '526', 'LNO-090720-526', 'not receiving', '2020-07-09', '07:10:59'),
(244, '331', 'LNO-080720-331', 'SV Done on park Astra he will there ones again with family date not confirmd yet and there is a budget issue slitly..', '2020-07-09', '07:14:37'),
(245, '532', 'LNO-090720-532', 'out of net work coverage area', '2020-07-09', '07:16:44'),
(246, '374', 'LNO-080720-374', 'SV done @maan yesterday coming for booking today 2:30pm', '2020-07-09', '07:18:16'),
(247, '533', 'LNO-090720-533', 'not reachable', '2020-07-09', '07:19:44'),
(248, '349', 'LNO-080720-349', 'not looking for property and wrong number', '2020-07-09', '07:20:11'),
(249, '535', 'LNO-090720-535', 'not reacheable', '2020-07-09', '07:22:27'),
(250, '350', 'LNO-080720-350', 'duplicate lead', '2020-07-09', '07:22:59'),
(251, '496', 'LNO-090720-496', 'CP', '2020-07-09', '07:25:07'),
(252, '353', 'LNO-080720-353', 'ringing', '2020-07-09', '07:26:44'),
(253, '278', 'LNO-080720-278', 'duplicate lead i already added it by manually', '2020-07-09', '07:26:49'),
(254, '494', 'LNO-090720-494', 'LOOKING FOR 3 BHK 70 LAKHS 1000 CARPET', '2020-07-09', '07:29:17'),
(255, '365', 'LNO-080720-365', 'ringing', '2020-07-09', '07:29:53'),
(256, '492', 'LNO-090720-492', 'CNR', '2020-07-09', '07:31:26'),
(257, '301', 'LNO-080720-301', 'duplicate lead i already added it manually', '2020-07-09', '07:34:06'),
(258, '492', 'LNO-090720-492', 'NOT LOOKING ANYMORE', '2020-07-09', '07:34:21'),
(259, '489', 'LNO-090720-489', 'Postponed will buy after lockdown', '2020-07-09', '07:36:30'),
(260, '488', 'LNO-090720-488', 'cnr', '2020-07-09', '07:38:36'),
(261, '486', 'LNO-090720-486', 'number is not reachable... tried thrice today', '2020-07-09', '07:40:19'),
(262, '482', 'LNO-090720-482', 'cnr', '2020-07-09', '07:41:52'),
(263, '439', 'LNO-080720-439', 'call not connected call him later', '2020-07-09', '07:42:21'),
(264, '483', 'LNO-090720-483', 'cnr', '2020-07-09', '07:43:08'),
(265, '441', 'LNO-080720-441', 'looking for 2 bhk in baner location in 60 lac also intrested in resale property, call him if his requirment matches', '2020-07-09', '07:49:52'),
(266, '457', 'LNO-080720-457', 'purchased property in mumbai', '2020-07-09', '07:51:58'),
(267, '458', 'LNO-080720-458', 'plan dropped due to covid situation right now', '2020-07-09', '07:54:57'),
(268, '459', 'LNO-080720-459', 'not looking for any properrtty option now', '2020-07-09', '07:58:26'),
(269, '462', 'LNO-080720-462', 'call not reciveing , call him later', '2020-07-09', '08:00:29'),
(270, '456', 'LNO-080720-456', 'not intrested , not looking for any property option', '2020-07-09', '08:02:27'),
(271, '449', 'LNO-080720-449', 'call not connected , call her later', '2020-07-09', '08:04:43'),
(272, '468', 'LNO-090720-468', 'details has been shared with him , will come for site visit on sunday at i trend life', '2020-07-09', '08:06:26'),
(273, '453', 'LNO-080720-453', 'busy at the moment, call him later', '2020-07-09', '08:08:34'),
(274, '452', 'LNO-080720-452', 'dropped plan due to covid situation', '2020-07-09', '08:14:07'),
(275, '476', 'LNO-090720-476', 'looking for 1bhk in magarpatta in 25 lac', '2020-07-09', '08:18:28'),
(276, '483', 'LNO-090720-483', 'Already booked', '2020-07-09', '08:19:58'),
(277, '482', 'LNO-090720-482', 'cnr', '2020-07-09', '08:21:55'),
(278, '480', 'LNO-090720-480', 'not looking', '2020-07-09', '08:25:53'),
(279, '478', 'LNO-090720-478', 'custmer is from gurgaon this month he will come to pune then he will meet us regarding property', '2020-07-09', '08:28:26'),
(280, '477', 'LNO-090720-477', 'already booked at yashone wakad central for his son', '2020-07-09', '08:28:37'),
(281, '444', 'LNO-080720-444', 'not looking for any property option', '2020-07-09', '08:30:32'),
(282, '367', 'LNO-080720-367', 'ringing', '2020-07-09', '08:30:55'),
(283, '480', 'LNO-090720-480', 'not looking for any property', '2020-07-09', '08:31:28'),
(284, '480', 'LNO-090720-480', 'not looking for any property', '2020-07-09', '08:31:28'),
(285, '376', 'LNO-080720-376', 'customer is not interested for 7-8 months', '2020-07-09', '08:33:31'),
(286, '479', 'LNO-090720-479', 'not looking for any property option now', '2020-07-09', '08:34:20'),
(287, '445', 'LNO-080720-445', 'not looking for any property option now', '2020-07-09', '08:36:14'),
(288, '379', 'LNO-080720-379', 'customer said plan have postponded after 5-6 moths', '2020-07-09', '08:38:23'),
(289, '472', 'LNO-090720-472', 'call him in september for supernova', '2020-07-09', '08:39:01'),
(290, '382', 'LNO-080720-382', 'ringing', '2020-07-09', '08:40:13'),
(291, '499', 'LNO-090720-499', 'He is already in touch with me bt currently not replying', '2020-07-09', '08:41:09'),
(292, '390', 'LNO-080720-390', 'no is switched off', '2020-07-09', '08:43:35'),
(293, '482', 'LNO-090720-482', 'Not looking in pune looking in ranchi', '2020-07-09', '08:43:44'),
(294, '391', 'LNO-080720-391', 'ringing', '2020-07-09', '08:45:16'),
(295, '387', 'LNO-080720-387', 'bussy multiple times', '2020-07-09', '08:47:18'),
(296, '466', 'LNO-080720-466', 'interested in new launch of vj call', '2020-07-09', '08:55:41'),
(297, '465', 'LNO-080720-465', 'wrong number', '2020-07-09', '08:56:57'),
(298, '465', 'LNO-080720-465', 'wrong number', '2020-07-09', '08:57:24'),
(299, '464', 'LNO-080720-464', 'wrong number', '2020-07-09', '08:57:53'),
(300, '463', 'LNO-080720-463', 'interested in reeady possesion only 2bhk 60 in wakad', '2020-07-09', '09:00:28'),
(301, '391', 'LNO-080720-391', 'client looking for 3 bhk at koltepatil staying at bharti vidyapeeth', '2020-07-09', '09:01:21'),
(302, '461', 'LNO-080720-461', 'cnr', '2020-07-09', '09:02:15'),
(303, '460', 'LNO-080720-460', 'already booked', '2020-07-09', '09:04:08'),
(304, '454', 'LNO-080720-454', 'could not connect', '2020-07-09', '09:06:31'),
(305, '455', 'LNO-080720-455', 'could not connect', '2020-07-09', '09:07:51'),
(306, '516', 'LNO-090720-516', 'customer looking for sure and shops details sent for hapinees street will visit on sunday at centro claimed by indrajit dhurve', '2020-07-09', '09:10:56'),
(307, '406', 'LNO-080720-406', 'BUSSY ASK TO CALL BACK', '2020-07-09', '09:12:58'),
(308, '397', 'LNO-080720-397', 'no is temporarly not in service', '2020-07-09', '09:14:56'),
(309, '454', 'LNO-080720-454', 'postponed was looking for 1 bhk', '2020-07-09', '09:17:40'),
(310, '89', 'LNO-131119-89', 'ringing', '2020-07-09', '09:17:42'),
(311, '451', 'LNO-080720-451', 'cnr', '2020-07-09', '09:19:55'),
(312, '447', 'LNO-080720-447', 'busy call him tommorrow', '2020-07-09', '09:23:46'),
(313, '446', 'LNO-080720-446', 'Not looking for any property', '2020-07-09', '09:25:19'),
(314, '443', 'LNO-080720-443', 'switched of tried twice today', '2020-07-09', '09:26:51'),
(315, '440', 'LNO-080720-440', 'not looking', '2020-07-09', '09:28:12'),
(316, '435', 'LNO-080720-435', 'postponed', '2020-07-09', '09:29:41'),
(317, '434', 'LNO-080720-434', 'not looking for two years', '2020-07-09', '09:32:58'),
(318, '434', 'LNO-080720-434', 'not looking for two years', '2020-07-09', '09:33:28'),
(319, '433', 'LNO-080720-433', 'call tommorrow', '2020-07-09', '09:37:15'),
(320, '431', 'LNO-080720-431', '2bhk 50 lakhs ready possession only in balewadi', '2020-07-09', '09:44:19'),
(321, '430', 'LNO-080720-430', 'cnr', '2020-07-09', '09:45:49'),
(322, '429', 'LNO-080720-429', 'looking in pcmc  sent details for rohan ananta \r\ncall on friday for visit', '2020-07-09', '09:52:43'),
(323, '427', 'LNO-080720-427', 'Number does not exist', '2020-07-09', '09:58:10'),
(324, '448', 'LNO-080720-448', 'not intrested', '2020-07-09', '10:05:26'),
(325, '426', 'LNO-080720-426', 'cnr', '2020-07-09', '10:06:02'),
(326, '366', 'LNO-080720-366', 'not interested in VJ Sure', '2020-07-09', '10:10:25'),
(327, '537', 'LNO-090720-537', 'not interested', '2020-07-09', '10:11:17'),
(328, '361', 'LNO-080720-361', 'WRONG NUMBER', '2020-07-09', '10:11:34'),
(329, '359', 'LNO-080720-359', 'LOOKING FOR COMMERCIAL', '2020-07-09', '10:12:12'),
(330, '356', 'LNO-080720-356', 'call him at new launch', '2020-07-09', '10:14:34'),
(331, '354', 'LNO-080720-354', 'looking for pirangut 2 bhk bust they are sold out 2 bhk 40 lakhs budget', '2020-07-09', '10:16:16'),
(332, '553', 'LNO-090720-553', 'ready possession 1bhk 30lac', '2020-07-09', '10:16:16'),
(333, '293', 'LNO-080720-293', 'details hase been shared with him but custmer is out of station , will meet once he will come back to pune', '2020-07-09', '10:18:56'),
(334, '351', 'LNO-080720-351', 'said to call in the evening', '2020-07-09', '10:25:39'),
(335, '345', 'LNO-080720-345', 'cnr', '2020-07-09', '10:29:36'),
(336, '344', 'LNO-080720-344', 'Not looking for any property', '2020-07-09', '10:30:32'),
(337, '342', 'LNO-080720-342', 'wrong number', '2020-07-09', '10:33:42'),
(338, '554', 'LNO-090720-554', 'not interested', '2020-07-09', '10:34:56'),
(339, '337', 'LNO-080720-337', 'spoken with his husband for 2 bhk at maan and central coming on sunday', '2020-07-09', '10:36:05'),
(340, '330', 'LNO-080720-330', 'said will discuss with family for sure unit and let me know on friday', '2020-07-09', '10:37:46'),
(341, '555', 'LNO-090720-555', 'interested in plots but sent him details of maan 1& 2 bhk', '2020-07-09', '10:39:16'),
(342, '556', 'LNO-090720-556', 'not interested', '2020-07-09', '10:41:38'),
(343, '329', 'LNO-080720-329', 'interested in sukh niwas vj call accordingly when you get details.', '2020-07-09', '10:48:04'),
(344, '425', 'LNO-080720-425', 'looking for 3 bhk 80 lakhs already visited bluewaters dont want in mahalunge location.', '2020-07-09', '10:49:35'),
(345, '450', 'LNO-080720-450', 'call him tomarrow right now he is busy with his work', '2020-07-09', '10:50:26'),
(346, '572', 'LNO-100720-572', 'site visit plan for 2 bhk in 3 jewels on sunday', '2020-07-10', '05:49:13'),
(347, '562', 'LNO-100720-562', 'not picking call , need to call by different no.', '2020-07-10', '05:50:47'),
(348, '559', 'LNO-100720-559', 'details sent on wassup will viist wakad central soon', '2020-07-10', '06:14:23'),
(349, '133', 'LNO-141119-133', 'details sent for yashwin encore pitched no pre emi till possesion client will check and will let us know in few days', '2020-07-10', '10:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `Calls`
--

CREATE TABLE `Calls` (
  `call_id` int(11) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `todays_call` varchar(45) DEFAULT NULL,
  `yesterdays_call` varchar(45) DEFAULT NULL,
  `overdue_call` varchar(45) DEFAULT NULL,
  `todays_call_done` varchar(45) DEFAULT NULL,
  `call_assigned_today` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Calls`
--

INSERT INTO `Calls` (`call_id`, `user_id`, `todays_call`, `yesterdays_call`, `overdue_call`, `todays_call_done`, `call_assigned_today`, `updated_date`) VALUES
(1, '1', NULL, '0', '0', '0', NULL, '2020-07-10'),
(2, '1', NULL, NULL, NULL, NULL, NULL, NULL),
(3, '23', NULL, NULL, NULL, NULL, NULL, NULL),
(4, '24', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '25', NULL, NULL, NULL, NULL, NULL, NULL),
(6, '26', NULL, NULL, NULL, NULL, NULL, NULL),
(7, '27', NULL, NULL, NULL, NULL, NULL, NULL),
(8, '28', NULL, NULL, NULL, NULL, NULL, NULL),
(9, '29', NULL, NULL, NULL, NULL, NULL, NULL),
(10, '30', NULL, NULL, NULL, NULL, NULL, NULL),
(11, '31', NULL, NULL, NULL, NULL, NULL, NULL),
(12, '32', NULL, NULL, NULL, NULL, NULL, NULL),
(13, '33', NULL, NULL, NULL, NULL, NULL, NULL),
(14, '34', NULL, NULL, NULL, NULL, NULL, NULL),
(15, '35', NULL, NULL, NULL, NULL, NULL, NULL),
(16, '36', NULL, NULL, NULL, NULL, NULL, NULL),
(17, '37', NULL, NULL, NULL, NULL, NULL, NULL),
(18, '38', NULL, NULL, NULL, NULL, NULL, NULL),
(19, '39', NULL, NULL, NULL, NULL, NULL, NULL),
(20, '40', NULL, NULL, NULL, NULL, NULL, NULL),
(21, '41', NULL, NULL, NULL, NULL, NULL, NULL),
(22, '42', NULL, NULL, NULL, NULL, NULL, NULL),
(23, '43', NULL, NULL, NULL, NULL, NULL, NULL),
(24, '44', NULL, '0', '0', '0', NULL, '2020-02-25'),
(25, '45', NULL, '0', '0', '0', NULL, '2019-11-15'),
(26, '46', NULL, NULL, NULL, NULL, NULL, NULL),
(27, '47', NULL, '0', '0', '0', NULL, '2020-07-08'),
(28, '48', NULL, '0', '0', '0', NULL, '2020-07-09'),
(29, '49', NULL, '0', '0', '0', NULL, '2020-06-09'),
(30, '50', NULL, '0', '1', '0', NULL, '2020-07-09'),
(31, '51', NULL, '0', '0', '0', NULL, '2020-07-12'),
(32, '52', NULL, NULL, '0', '0', NULL, '2019-11-13'),
(33, '53', NULL, '1', '1', '0', NULL, '2020-07-11'),
(34, '54', NULL, NULL, NULL, NULL, NULL, NULL),
(35, '55', NULL, '0', '0', '0', NULL, '2020-07-08'),
(36, '56', NULL, '0', '0', '0', NULL, '2020-07-09'),
(37, '57', NULL, '0', '19', '0', NULL, '2020-07-10'),
(38, '58', NULL, '0', '0', '0', NULL, '2020-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `close_leads`
--

CREATE TABLE `close_leads` (
  `close_lead_id` int(11) NOT NULL,
  `lead_id` varchar(100) DEFAULT NULL,
  `lead_unique_id` varchar(100) DEFAULT NULL,
  `advisor_1` varchar(100) DEFAULT NULL,
  `advisor_2` varchar(100) DEFAULT NULL,
  `booking_name` varchar(100) DEFAULT NULL,
  `booking_month` varchar(45) DEFAULT NULL,
  `date_of_clouser` date DEFAULT NULL,
  `unit_number` varchar(45) DEFAULT NULL,
  `project` varchar(45) DEFAULT NULL,
  `sqtf_sold` varchar(45) DEFAULT NULL,
  `plc_charges` varchar(45) DEFAULT NULL,
  `sub_broker_amount` varchar(45) DEFAULT NULL,
  `net_revenu` varchar(45) DEFAULT NULL,
  `share_of_advisor_1` varchar(45) DEFAULT NULL,
  `share_of_advisor_2` varchar(45) DEFAULT NULL,
  `estimated_month_of_invoice` varchar(45) DEFAULT NULL,
  `agreement_status` varchar(45) DEFAULT NULL,
  `project_type` varchar(45) DEFAULT NULL,
  `basic_cost` varchar(45) DEFAULT NULL,
  `c_percentage` varchar(45) DEFAULT NULL,
  `gross_revenue` varchar(45) DEFAULT NULL,
  `total_cost` varchar(45) DEFAULT NULL,
  `cash_back` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `close_leads`
--

INSERT INTO `close_leads` (`close_lead_id`, `lead_id`, `lead_unique_id`, `advisor_1`, `advisor_2`, `booking_name`, `booking_month`, `date_of_clouser`, `unit_number`, `project`, `sqtf_sold`, `plc_charges`, `sub_broker_amount`, `net_revenu`, `share_of_advisor_1`, `share_of_advisor_2`, `estimated_month_of_invoice`, `agreement_status`, `project_type`, `basic_cost`, `c_percentage`, `gross_revenue`, `total_cost`, `cash_back`) VALUES
(1, '52', 'LNO-071119-52', 'Faizan Darga', '', 'Sameer Hingmire', '11', '2019-11-02', 'B - 104', '7', '1157', '', '', '226606', '0', '0', '12', '', 'Residential', '9220200', '3', '276606', '0', '50000'),
(2, '5', 'LNO-061119-5', 'Siddhant Ingle', '', 'Vinay Kudari', '10', '2016-10-12', 'E - 1901', '7', '1040', '', '', '256325.85', '', '', '12', '', 'Residential', '8544195', '3', '256325.85', '0', '0'),
(3, '101', 'LNO-131119-101', 'Sourab Tumari', '', 'Vikram Khengre', '11', '2019-11-10', 'D - 804', '13', '781.68', '', '', '122718.5', '100', '', '2', 'In Process', 'Residential', '6135925', '2', '122718.5', '6902236', '0'),
(4, '129', 'LNO-131119-129', 'Siddhant Ingle', '', 'Sai Laxmi Wande', '11', '2019-11-04', 'B 205', '12', '748', '', '65000', '65590', '', '', '12', 'in Process', 'Residential', '4353000', '3', '130590', '0', '0'),
(5, '131', 'LNO-131119-131', 'Siddhant Ingle', '', 'Praveen Vinzanekar', '11', '2019-10-28', 'H 1203', '3', '650', '', '', '89175', '', '', '12', 'in Process', 'Residential', '4458750', '2', '89175', '0', '0'),
(6, '143', 'LNO-191219-143', 'Sourab Tumari', '', 'Tejashree Gorule', '12', '2019-12-13', '1709', '2', '454', '', '', '101317.5', '100', '', '3', 'In Process', 'Residential', '2251500', '4.5', '101317.5', '3020268', '0'),
(7, '144', 'LNO-191219-144', 'Sourabh', '', 'Suraj Patil', '12', '2019-12-12', '1711', '2', '454', '', '', '101317.5', '100', '', '3', 'In Process', 'Residential', '2251500', '4.5', '101317.5', '3020268', '0'),
(9, '205', 'LNO-300120-205', 'Sourab Tumari', '', 'Debarshi Sharma', '1', '2020-01-26', 'R1 A 208', '2', '823', '', '', '170842', '100', '', '3', 'In Process', 'Residential', '4881200', '3.5', '170842', '6128500', '0');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `counter_name` varchar(45) DEFAULT NULL,
  `counter` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `counter_name`, `counter`) VALUES
(1, 'lead_id', '574');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `name`) VALUES
(1, 'sales');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_lead`
--

CREATE TABLE `enquiry_lead` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `project_name` varchar(20) NOT NULL DEFAULT 'godrejhillsides',
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_lead`
--

INSERT INTO `enquiry_lead` (`id`, `name`, `phone`, `email`, `status`, `project_name`, `date`) VALUES
(1, '360', '456546545465454', 'as@bh.com', 0, 'godrejhillsides', '2019-10-25 09:03:46.601727');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `lead_id` varchar(45) DEFAULT NULL,
  `dept_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone_1` varchar(45) DEFAULT NULL,
  `phone_2` varchar(200) DEFAULT NULL,
  `call_back_type` varchar(50) DEFAULT NULL,
  `email_1` varchar(100) DEFAULT NULL,
  `email_2` varchar(100) DEFAULT NULL,
  `project_id` varchar(45) DEFAULT NULL,
  `status_id` varchar(45) DEFAULT NULL,
  `assign_to` varchar(45) DEFAULT NULL,
  `inserted_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `reassign_date` date DEFAULT NULL,
  `reassign_time` time DEFAULT NULL,
  `site_visit_done` varchar(45) DEFAULT NULL,
  `site_visit_fix_project` varchar(45) DEFAULT NULL,
  `site_visit_fixed` varchar(45) DEFAULT NULL,
  `site_visit_not_done` varchar(45) DEFAULT NULL,
  `face_to_face_done` varchar(45) DEFAULT NULL,
  `important` varchar(45) DEFAULT NULL,
  `client_registration_email` varchar(45) DEFAULT NULL,
  `assigned_date` date DEFAULT NULL,
  `reassign` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `lead_id`, `dept_id`, `name`, `phone_1`, `phone_2`, `call_back_type`, `email_1`, `email_2`, `project_id`, `status_id`, `assign_to`, `inserted_date`, `updated_date`, `reassign_date`, `reassign_time`, `site_visit_done`, `site_visit_fix_project`, `site_visit_fixed`, `site_visit_not_done`, `face_to_face_done`, `important`, `client_registration_email`, `assigned_date`, `reassign`) VALUES
(1, 'LNO-061119-1', '1', 'Arjun patil', '9552520196', '', 'Domestic', 'arjun_ghodepatil@rediffmail.com', '', '1', '2', '50', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(2, 'LNO-061119-2', '1', 'Shweta ', '8668805886', '', 'Domestic', 'Shweta.bhargava86@gmail.com', '', '1', '4', '47', '2019-11-06', NULL, '2019-11-08', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', 'Yes'),
(3, 'LNO-061119-3', '1', 'milind mane', '9579982206', '', 'Domestic', 'milindmane1986@gmail.com', '', '1', '8', '54', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(4, 'LNO-061119-4', '1', 'Narendra vaishnav ', '8411866209', '', 'Domestic', 'naren2512263@gmail.com', '', '1', '2', '50', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(5, 'LNO-061119-5', '1', 'Vinay kudari', '8879046694', '', 'Domestic', 'anusha.jahagirdar@gmail.com', '', '1', '1', '50', '2019-11-06', NULL, '2019-11-07', '15:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', 'Yes'),
(6, 'LNO-061119-6', '1', 'Mayuri j', '9822921705', '', 'Domestic', 'mayuri.jawale93@gmail.com', '', '1', '6', '50', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(7, 'LNO-061119-7', '1', 'Pallavi Mangesh Gaikwad', '8626089478', '', 'Domestic', 'gaikwad1798pallavi@gmail.com', '', '1', '6', '47', '2019-11-06', NULL, '2019-11-07', '03:01:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', 'Yes'),
(8, 'LNO-061119-8', '1', 'Nitin', '9730019871', '', 'Domestic', 'nitin643@gmail.com', '', '1', '6', '50', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(9, 'LNO-061119-9', '1', 'Abhishek Pratap Singh', '9764005769', '', 'Domestic', 'abhisheksingh24@gmail.com', '', '1', '2', '48', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(10, 'LNO-061119-10', '1', 'Vinay Ajmire', '8149040275', '', 'Domestic', 'vic_ajm@rediffmail.com', '', '1', '4', '47', '2019-11-06', NULL, '2019-11-25', '12:00:00', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', 'Yes'),
(11, 'LNO-061119-11', '1', 'Manan Bharatbhai Shah', '9426152385', '', 'Domestic', 'mananbshah3@gmail.com', '', '1', '6', '50', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(12, 'LNO-061119-12', '1', 'Manan Bharatbhai Shah', '9426152385', '', 'Domestic', 'mananbshah3@gmail.com', '', '1', '2', '50', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(13, 'LNO-061119-13', '1', 'NITIN DANGE', '09820291740', '', 'Domestic', 'nitindange2014@gmail.com', '', '1', '4', '50', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(14, 'LNO-061119-14', '1', 'Asma', '9922295750', '', 'Domestic', 'asmamullahere@gmail.com', '', '1', '2', '50', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(15, 'LNO-061119-15', '1', 'Tarun lahoti', '9643197334', '', 'Domestic', 'jkuhkkm@gmail.com', '', '1', '2', '48', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(16, 'LNO-061119-16', '1', 'lki0ok', '9898989889', '', 'Domestic', 'jkuhkkm@gmail.com', '', '1', '2', '', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(17, 'LNO-061119-17', '1', 'lki0ok', '9898989889', '', 'Domestic', 'jkuhkkm@gmail.com', '', '1', '2', '', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(18, 'LNO-061119-18', '1', 'vaibhav ingale', '8369399796', '', 'Domestic', 'laxmivaibhav@gmail.com', '', '1', '4', '47', '2019-11-06', NULL, '2019-11-07', '16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', 'Yes'),
(19, 'LNO-061119-19', '1', 'yogesh chinchwade', '9890101031', '', 'Domestic', 'yogesh86chinchwade@gmail.com', '', '1', '2', '47', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', 'Yes'),
(20, 'LNO-061119-20', '1', '360', '9999999999', '', 'Domestic', 'seoadmin@crbindia.in', '', '1', '2', '', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(21, 'LNO-061119-21', '1', 'Jay Rajput', '8830575210', '', 'Domestic', 'Jay007rajput@gmail.com', '', '1', '2', '48', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(22, 'LNO-061119-22', '1', 'Rupa', '7030533356', '', 'Domestic', 'rupa_wajapey@yahoo.com', '', '1', '8', '49', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(23, 'LNO-061119-23', '1', 'Pavithran', '0097155443', '', 'International', 'pavithran61@gmail.com', '', '1', '8', '47', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(24, 'LNO-061119-24', '1', 'Sandhya', '9726396621', '', 'Domestic', 'nair.sandhya610@gmail.com', '', '1', '2', '48', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(25, 'LNO-061119-25', '1', 'Bhole', '9167950860', '', 'Domestic', 'Cgbhole@rediffmail.com', '', '1', '2', '48', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(26, 'LNO-061119-26', '1', 'Bhole', '9167950860', '', 'Domestic', 'Cgbhole@rediffmail.com', '', '1', '2', '', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(27, 'LNO-061119-27', '1', 'Nilesh mehetre', '8369733549', '', 'Domestic', 'nileshmehetre5944@gmail.com', '', '1', '8', '49', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(28, 'LNO-061119-28', '1', 'Ketaki', '8788479249', '', 'Domestic', 'ketakideshmukh92@gmail.com', '', '1', '2', '48', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(29, 'LNO-061119-29', '1', 'Jayesh Shinde', '9881384836', '', 'Domestic', 'Jayesh@rediffmail.com', '', '1', '8', '47', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(30, 'LNO-061119-30', '1', 'Prachi Ashutosh Thatte', '9158229057', '', 'Domestic', 'thatte.prachi@rediffmail.com', '', '1', '8', '47', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(31, 'LNO-061119-31', '1', 'Arya', '7720991179', '', 'Domestic', 'sukanya.kale.10@gmail.com', '', '1', '8', '51', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(32, 'LNO-061119-32', '1', 'Deepti Lokhande', '7709060123', '', 'Domestic', 'deepti.rathod@ge.com', '', '1', '8', '47', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(33, 'LNO-061119-33', '1', 'Sandeep Jadhav ', '9822617155', '', 'Domestic', 'sandeep_unimax@rediffmail.com', '', '2', '8', '52', '2019-11-06', NULL, NULL, NULL, NULL, '2', 'Yes', NULL, NULL, NULL, NULL, '2019-11-06', ''),
(34, 'LNO-061119-34', '1', 'Fattesinh patil', '9822540028', '', 'Domestic', 'fattesinhpatil@gmail.com', '', '1', '6', '50', '2019-11-06', NULL, '2020-07-10', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', 'Yes'),
(35, 'LNO-061119-35', '1', 'Vivek', '7559332175', '', 'Domestic', 'vivek_katekar@yahoo.com', '', '1', '4', '50', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(36, 'LNO-061119-36', '1', 'Suhas Patil', '9860946852', '', 'Domestic', 'pspatil030117@gmail.com', '', '1', '8', '48', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(37, 'LNO-061119-37', '1', 'mahesh', '9960536265', '', 'Domestic', 'deshmukhms91@gmail.com', '', '1', '4', '50', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(38, 'LNO-061119-38', '1', 'Pankaj talware', '9604420718', '', 'Domestic', 'pankaj.talware@rediffmail.com', '', '1', '8', '47', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(39, 'LNO-061119-39', '1', 'Vivek', '7000007991', '', 'Domestic', 'vkk@gm.com', '', '1', '8', '49', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(40, 'LNO-061119-40', '1', 'Vinayak satpute', '9702165411', '', 'Domestic', 'satputevinayak2030@gmail.com', '', '1', '6', '53', '2019-11-06', NULL, '2020-07-09', '15:22:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', 'Yes'),
(41, 'LNO-061119-41', '1', 'Bhushan Mirasdar', '9922425285', '', 'Domestic', 'bhushan.mirasdar@gmail.com', '', '1', '4', '50', '2019-11-06', NULL, '2020-07-10', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', 'Yes'),
(42, 'LNO-061119-42', '1', 'Sachin', '8097551386', '', 'Domestic', 'patilsachin1234@gmail.com', '', '1', '8', '48', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(43, 'LNO-061119-43', '1', 'Sanjay', '9820098200', '', 'Domestic', 'Sanjay_mawani38@gmail.com', '', '1', '2', '50', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(44, 'LNO-061119-44', '1', 'Prachi Sambarey', '9158479587', '', 'Domestic', 'prachisambarey@gmail.com', '', '1', '8', '48', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(45, 'LNO-061119-45', '1', 'Nagesh Patil', '8550998897', '', 'Domestic', 'nageshpatil_97@rediffmail.com', '', '2', '8', '52', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(46, 'LNO-061119-46', '1', 'BS', '8888835935', '', 'Domestic', 'bharat.rajput85@gmail.com', '', '2', '8', '52', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-06', ''),
(47, 'LNO-071119-47', '1', 'Deepti Lokhande', '7709060123', '', 'Domestic', 'deepti.rathod@ge.com', '', '1', '8', '47', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(48, 'LNO-071119-48', '1', 'Rajendra ', '8879623523', '', 'Domestic', 'borge.rajendra24@gmail.com', '', '2', '8', '52', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(49, 'LNO-071119-49', '1', 'UMESH PATHAK', '9921934196', '', 'Domestic', 'umesh231@gmail.com', '', '2', '8', '49', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(50, 'LNO-071119-50', '1', 'Pravin sorte', '9821780077', '', 'Domestic', 'pravin.sorte@ymail.com', '', '2', '8', '48', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(51, 'LNO-071119-51', '1', 'Bhanudas Thorat ', '9987511828', '', 'Domestic', 'bhanudas.thorat@gmail.com', '', '2', '8', '52', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(52, 'LNO-071119-52', '1', 'Sameer Hingmire', '9823067438', '', 'Domestic', 'hingmire.sameer@gmail.com', '', '1', '1', '1', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(127, 'LNO-131119-127', '1', 'Mahesh shinde', '8172043554', '', 'Domestic', 'mahesh.56@gmail.com', '', '5', '8', '47', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(53, 'LNO-071119-53', '1', 'Hemraj Mehra', '07276078847', '', 'Domestic', 'hemrajmehra94@gmail.com', '', '2', '8', '52', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(54, 'LNO-071119-54', '1', 'Amit agrawal', '9923239743', '', 'Domestic', 'er_amit05@hotmail.com', '', '9', '8', '52', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(55, 'LNO-071119-55', '1', 'Guru Charan chakrabortty', '9038087870', '', 'Domestic', 'gurucharanchakrabortty007@gmail.com', '', '2', '8', '47', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(56, 'LNO-071119-56', '1', 'Gyana ranjan', '8280657598', '', 'Domestic', 'yahooogyana@gmail.com', '', '2', '8', '48', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(57, 'LNO-071119-57', '1', 'suman', '7507293000', '', 'Domestic', 'suman825413@gmail.com', '', '2', '8', '47', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(58, 'LNO-071119-58', '1', 'Vishal k mainkar', '9096350201', '', 'Domestic', 'vishalmainkar426@gmail.com', '', '2', '2', '50', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(59, 'LNO-071119-59', '1', 'RENU AGRAWAL', '09923239743', '', 'Domestic', 'ER_AMIT05@HOTMAIL.COM', '', '2', '2', '', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(60, 'LNO-071119-60', '1', 'Bhushan', '8600404182', '', 'Domestic', 'bhushandambale402@gmail.com', '', '2', '8', '47', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(61, 'LNO-071119-61', '1', 'arvind kumar', '7042333011', '', 'Domestic', 'arvshi@rediffmail.com', '', '2', '8', '52', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(62, 'LNO-071119-62', '1', 'Megha', '9920662623', '', 'Domestic', 'Ahire.megha@rediffmail.com', '', '2', '8', '47', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(63, 'LNO-071119-63', '1', 'Nimisha Verma', '7010679705', '', 'Domestic', 'nimisha28verma@gmail.com', '', '1', '4', '50', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(64, 'LNO-071119-64', '1', 'Laxmikant Jillewada', '7385873898', '', 'Domestic', 'laxmikant.jillewada.1234@gmail.com', '', '2', '2', '48', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(65, 'LNO-071119-65', '1', 'Gur prasad ', '8368088598', '', 'Domestic', '99gillodia@gmail.com', '', '1', '8', '48', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(66, 'LNO-071119-66', '1', 'Arsh gill', '9205609626', '', 'Domestic', '99gillodia@gmail.com', '', '2', '2', '48', '2019-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-07', ''),
(67, 'LNO-081119-67', '1', '360', '456546545465454', '', 'Domestic', 'as@bh.com', '', '6', '2', '', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(68, 'LNO-081119-68', '1', 'Usha jadhav', '9423455661', '', 'Domestic', 'ushasurvase1968@gmail.com', '', '2', '2', '48', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(69, 'LNO-081119-69', '1', 'Arbind', '9867402119', '', 'Domestic', 'arbind.ar@gmail.com', '', '2', '9', '50', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(70, 'LNO-081119-70', '1', 'Gayatree ', '8123422525', '', 'Domestic', 'gachincholkar@yahoo.com', '', '2', '8', '52', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(71, 'LNO-081119-71', '1', 'Chandrakant darade', '9404328424', '', 'Domestic', 'chandrakantdarade18@gmail.com', '', '2', '2', '48', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(72, 'LNO-081119-72', '1', 'Shrikant', '9999999999', '', 'Domestic', 'sss_shrikant@yahoo.co.in', '', '2', '2', '', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(73, 'LNO-081119-73', '1', 'Sowmya', '9164547003', '', 'Domestic', 'msowmyabescom@gmail.com', '', '2', '8', '47', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(74, 'LNO-081119-74', '1', 'Akshay Sute ', '9370773156', '', 'Domestic', 'asute939@gmail.com', '', '2', '8', '47', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(75, 'LNO-081119-75', '1', 'Tanaji Patil ', '7744960217', '', 'Domestic', 'tanaji1061@rediffmail.com', '', '2', '8', '47', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(76, 'LNO-081119-76', '1', 'Aditya', '7718983011', '', 'Domestic', 'adityaksalvi11@gmail.com', '', '2', '2', '50', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(77, 'LNO-081119-77', '1', 'anil', '9881622374', '', 'Domestic', 'karneanil@Gmail.com', '', '2', '8', '47', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(78, 'LNO-081119-78', '1', 'Umanna chikamal ', '9158498800', '', 'Domestic', 'Umannachikamal@gmail.com', '', '2', '2', '48', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(79, 'LNO-081119-79', '1', 'Zeeshan', '9097661277', '', 'Domestic', 'md.zeeshan787@gmail.com', '', '2', '9', '50', '2019-11-08', NULL, '2020-07-10', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', 'Yes'),
(80, 'LNO-081119-80', '1', 'safal kothare', '7666377260', '', 'Domestic', 'safalkothare07@gmail.com', '', '2', '8', '52', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(81, 'LNO-081119-81', '1', 'Vikas Madhav Jadhav ', '9673426900', '', 'Domestic', 'vikasj6973@gmail.co', '', '2', '8', '52', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(82, 'LNO-081119-82', '1', 'Amit Mathur', '09899717722', '', 'Domestic', 'amathur.pmp@gmail.com', '', '2', '2', '53', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(83, 'LNO-081119-83', '1', 'lambda-uh-user-upload-j2', '0000000000', '', 'Domestic', 'DASAS@PO.COM', '', '2', '2', '', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(84, 'LNO-081119-84', '1', 'Mahesh ', '7021211356', '', 'Domestic', 'madi.dixit15@gmail.com', '', '2', '8', '52', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(85, 'LNO-081119-85', '1', 'Mahesh ', '7021211356', '', 'Domestic', 'madi.dixit15@gmail.com', '', '2', '8', '52', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(86, 'LNO-081119-86', '1', 'Mulani Faiyaz', '9822990610', '', 'Domestic', 'faiz.mulani@gmail.com', '', '2', '8', '47', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(87, 'LNO-081119-87', '1', 'Deepti Varshney', '08793490735', '', 'Domestic', 'deeptivarshney15@gmail.com', '', '2', '8', '47', '2019-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-08', ''),
(88, 'LNO-121119-88', '1', 'sd', '9927537474', '', 'Domestic', 'as@bh.com', '', '6', '8', '', '2019-11-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(89, 'LNO-131119-89', '1', 'Niranjan RAO', '9545100909', '', 'Domestic', 'kniranjanbrao@gmail.com', '', '1', '6', '53', '2019-11-13', NULL, '2020-07-13', '12:37:00', NULL, '2', NULL, NULL, NULL, 'Yes', NULL, '2019-11-13', 'Yes'),
(90, 'LNO-131119-90', '1', 'Swapnali', '9860902475', '', 'Domestic', 'n.sapana1993@gmail.com', '', '1', '2', '51', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(91, 'LNO-131119-91', '1', 'sunil (UAE +971501203016)', '971501203016', '', 'International', 'omsai_spp@yahoo.com', '', '1', '2', '48', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(92, 'LNO-131119-92', '1', 'Swapnali', '9860902475', '', 'Domestic', 'n.sapana1993@gmail.com', '', '1', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(93, 'LNO-131119-93', '1', 'Rajendra ', '8879623523', '', 'Domestic', 'borge.rajendra24@gmail.com', '', '2', '8', '52', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(94, 'LNO-131119-94', '1', 'Shradha', '9893723587', '', 'Domestic', 'shradha80srivastava@gmail.com', '', '2', '8', '47', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(95, 'LNO-131119-95', '1', 'Shalaka karvande', '9307971130', '', 'Domestic', 'shalakakarvande@yahoo.co.in', '', '2', '8', '52', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(96, 'LNO-131119-96', '1', 'V.S.Aujkar', '9158251365', '', 'Domestic', 'vidyadharaujkar@yahoo.in', '', '2', '2', '48', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(97, 'LNO-131119-97', '1', 'asdfsf', '9927537000', '', 'Domestic', 'test@gmail.com', '', '6', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(98, 'LNO-131119-98', '1', 'asdfsf', '9927537000', '', 'Domestic', 'as@bh.com', '', '6', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(99, 'LNO-131119-99', '1', 'hghghghgthgh', '8898675467', '', 'Domestic', 'ghghjhgfhfghjjh@gmail.com', '', '1', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(100, 'LNO-131119-100', '1', 'kkkkkkkkkk', '0000000000', '', 'Domestic', 'gggggg@yahoo.com', '', '1', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(101, 'LNO-131119-101', '1', 'Vikram Aditya Khengre', '8208139132', '', 'Domestic', 'khengrevs@gmail.com', '', '13', '1', '55', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(102, 'LNO-131119-102', '1', 'Rameshwar Thube', '8600046051', '', 'Domestic', 'rameshwar.thube@gmail.com', '', '5', '11', '55', '2019-11-13', NULL, '2019-11-15', '12:28:00', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', 'Yes'),
(103, 'LNO-131119-103', '1', 'Mangesh', '8793691419', '', 'Domestic', 'mvp8405@yahoo.com', '', '4', '4', '55', '2019-11-13', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, '2019-11-13', 'Yes'),
(104, 'LNO-131119-104', '1', 'SHAILEN', '9886273829', '', 'Domestic', 'yshailendra111@gmail.com', '', '5', '2', '55', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(105, 'LNO-131119-105', '1', 'Rahul Swami ', '8380071343', '', 'Domestic', 'rahulswami22@gmail.com', '', '4', '4', '55', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(106, 'LNO-131119-106', '1', 'Gajendra Kandurke', ' 9561706766', '', 'Domestic', 'gajendra.kardurkar@gmail.com', '', '13', '11', '55', '2019-11-13', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(107, 'LNO-131119-107', '1', 'Gaurav Gupta', '7304459633', '', 'Domestic', 'gauravfromips@gmail.com', '', '13', '2', '55', '2019-11-13', NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(108, 'LNO-131119-108', '1', 'Ridhdesh Shelar', '9892695046', '', 'Domestic', 'ridhdesh@gmail.com', '', '14', '11', '55', '2019-11-13', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, 'Yes', NULL, NULL, '2019-11-13', ''),
(109, 'LNO-131119-109', '1', 'hahahaha', '0000000000', '', 'Domestic', 'y@gmail.com', 'y@gmail.com', '1', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(110, 'LNO-131119-110', '1', 'P', '1234567890', '', 'Domestic', 'tyudugf@gmail.com', '', '2', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(111, 'LNO-131119-111', '1', 'nitish', '9725724934', '', 'Domestic', 'nick.kotak@gmail.com', '', '1', '4', '50', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(112, 'LNO-131119-112', '1', 'ajay kumar', '9999999999', '', 'Domestic', 'ajaykumar@yahoo.com', '', '5', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(113, 'LNO-131119-113', '1', 'Deepak Sharma', '7869141861', '', 'Domestic', 'deepak_sharma2006@yaho.com', '', '5', '4', '50', '2019-11-13', NULL, '2019-11-15', '00:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', 'Yes'),
(114, 'LNO-131119-114', '1', 'Sudhir Potdar', '8668484915', '', 'Domestic', 'sudhir@gmail.com', '', '15', '4', '55', '2019-11-13', NULL, NULL, NULL, 'Yes', '11', NULL, NULL, NULL, NULL, NULL, '2019-11-13', 'Yes'),
(115, 'LNO-131119-115', '1', 'aditya tokekar', '8291949958', '', 'Domestic', 'adityatokekar@gmail.com', '', '5', '2', '50', '2019-11-13', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(116, 'LNO-131119-116', '1', 'jjjjjj', '0000000000', '', 'Domestic', 'hhhhh@yahoo.com', '', '5', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(117, 'LNO-131119-117', '1', 'Uday gavade', '9860286115', '', 'Domestic', 'udaygavade@rediffmail.com', '', '5', '2', '48', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(118, 'LNO-131119-118', '1', 'Sudhakar polkam', '7875740356', '', 'Domestic', 'sudhakarpolkam58@gmail.com', '', '5', '2', '48', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(119, 'LNO-131119-119', '1', 'Sudhakar polkam', '7875740356', '', 'Domestic', 'sudhakarpolkam58@gmail.com', '', '5', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(120, 'LNO-131119-120', '1', 'Nilesh Palve ', '763590034', '', 'Domestic', 'nileshpalve47@gmail.com', '', '5', '8', '47', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(121, 'LNO-131119-121', '1', 'Vandana hanumant aher ', '9623882868', '', 'Domestic', 'Vandanaaher316@gmail.com', '', '5', '2', '50', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(122, 'LNO-131119-122', '1', 'Prashant Patil', '9766314854', '', 'Domestic', 'pashpatil@gmail.com', '', '5', '6', '53', '2019-11-13', NULL, '2020-08-20', '15:22:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', 'Yes'),
(123, 'LNO-131119-123', '1', 'Prashant Patil', '9766314854', '', 'Domestic', 'pashpatil@gmail.com', '', '5', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(124, 'LNO-131119-124', '1', 'Prashant Patil', '9766314854', '', 'Domestic', 'pashpatil@gmail.com', '', '5', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(125, 'LNO-131119-125', '1', 'Prashant Patil', '9766314854', '', 'Domestic', 'pashpatil@gmail.com', '', '5', '2', '', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(126, 'LNO-131119-126', '1', 'Shivkumar Tarte', '9403141464', '', 'Domestic', 'shivkumar.tarte@gmail.com', '', '5', '2', '53', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(128, 'LNO-131119-128', '1', 'Ajay Ambavle', '9028983380', '', 'Domestic', 'ajay.ambavle30@gmail.com', '', '5', '2', '48', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(129, 'LNO-131119-129', '1', 'Premanand Wande', '9765968388', '', 'Domestic', 'sailaxmiwande@gmail.com', '', '12', '1', '50', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(130, 'LNO-131119-130', '1', 'Amit Lohiya', '9928084085', '', 'Domestic', 'amit@gmail.com', '', '2', '2', '55', '2019-11-13', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(131, 'LNO-131119-131', '1', 'Praveen Vinzanekar', '8884425281', '', 'Domestic', 'praveen.vinzanekar13@gmail.com', '', '8', '1', '50', '2019-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-13', ''),
(132, 'LNO-141119-132', '1', 'aa', '9927537474', '', 'Domestic', 'as@bh.com', '', '5', '2', '', '2019-11-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(133, 'LNO-141119-133', '1', 'priya Tagalpallewar', '8983144940', '', 'Domestic', 'pri.rudrawar@gmail.com', '', '5', '6', '53', '2019-11-14', NULL, '2020-07-13', '15:22:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-14', 'Yes'),
(134, 'LNO-141119-134', '1', 'NAGNATH kharat ', '9892390417', '', 'Domestic', 'nagnathkharat1980@gmail.com', '', '5', '8', '52', '2019-11-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-14', ''),
(135, 'LNO-141119-135', '1', 'Mansoor Kardame', '09867183367', '', 'Domestic', 'mansoor@kardame.in', '', '2', '8', '47', '2019-11-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-14', ''),
(136, 'LNO-141119-136', '1', 'Mansoor Kardame', '9867183367', '', 'Domestic', 'mansoor@kardame.in', '', '2', '2', '', '2019-11-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(137, 'LNO-141119-137', '1', 'Nachiket Sunil Shinde', '07588890032', '', 'Domestic', 'nishushinde28@gmail.com', '', '2', '8', '49', '2019-11-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-14', ''),
(138, 'LNO-141119-138', '1', 'Ganesh devkar', '8600854329', '', 'Domestic', 'ganeshadevkar555@gmail.com', '', '2', '8', '51', '2019-11-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-14', ''),
(139, 'LNO-141119-139', '1', 'Atanu dhar', '8698962949', '', 'Domestic', 'atanudhar8888@gmail.com', '', '2', '8', '52', '2019-11-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-14', ''),
(146, 'LNO-130120-146', '1', 'chandrashekhar lawande', '9011030603', '', 'Domestic', 'chandrashekhar@gmail.com', '', '2', '8', '51', '2020-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(140, 'LNO-181119-140', '1', 'Rakesh Shetty', '9960469889', '', 'Domestic', 'rakesh@gmail.com', '', '13', '11', '55', '2019-11-18', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-18', ''),
(141, 'LNO-181119-141', '1', 'Rahul Bhad', '9168110067', '', 'Domestic', 'rahul@gmail.com', '', '2', '11', '55', '2019-11-18', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-18', ''),
(142, 'LNO-181119-142', '1', 'Gajanan Chilkewar', '9850279177', '', 'Domestic', 'gajanan@gmail.com', '', '13', '11', '55', '2019-11-18', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-18', ''),
(143, 'LNO-191219-143', '1', 'Tanaji Patil', '9662047985', '', 'Domestic', 'tanaji.pati@gmaill.com', '', '2', '1', '55', '2019-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-19', ''),
(144, 'LNO-191219-144', '1', 'Suraj Patil', '8281980107', '', 'Domestic', 'rajadsss1967@gmail.com', '', '2', '1', '55', '2019-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-19', ''),
(145, 'LNO-201219-145', '1', 'Ashish Ingle', '9913547499', '8347640789', 'Domestic', 'ashuuingle@gmail.com', '', '17', '8', '47', '2019-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-20', ''),
(147, 'LNO-130120-147', '1', 'AJEET PATHAK', '8600141480', '', 'Domestic', 'AJEETPATHAK2004@YAHOO.COM', '', '8', '8', '51', '2020-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(148, 'LNO-130120-148', '1', 'rahul choudhary', '9665500678', '', 'Domestic', 'choudharyrh@yahoo.com', '', '4', '4', '51', '2020-01-13', NULL, '2020-07-11', '10:00:00', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, '2020-01-13', 'Yes'),
(149, 'LNO-130120-149', '1', 'Ravindra/yogeshwar patil', '9823181989', '', 'Domestic', 'yogesg25@gmail.com', '', '9', '8', '56', '2020-01-13', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, NULL, 'Yes', NULL, '2020-01-13', ''),
(150, 'LNO-130120-150', '1', 'amol ugale', '9970168450', '', 'International', 'amol.ugale2@gmail.com', '', '8', '6', '50', '2020-01-13', NULL, '2020-07-10', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(151, 'LNO-130120-151', '1', 'Meshtha', '8169188171', '', 'Domestic', 'dtm.@gmail.com', '', '9', '6', '56', '2020-01-13', NULL, '2020-01-15', '11:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(152, 'LNO-130120-152', '1', 'Monali mukharjee', '8007969188', '', 'Domestic', 'Monalimukharjee@gmail.com', '', '9', '6', '56', '2020-01-13', NULL, '2020-01-15', '11:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(153, 'LNO-130120-153', '1', 'rohit gaikwad', '8446229700', '', 'Domestic', 'rohitgaikwad@gmail.com', '', '8', '2', '50', '2020-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(154, 'LNO-130120-154', '1', 'amol yadhav', '8007939369', '', 'Domestic', 'asyadav1@rediffmail.com', '', '9', '6', '50', '2020-01-13', NULL, '2020-07-09', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(155, 'LNO-130120-155', '1', 'sachin kakde', '8657333553', '', 'Domestic', 'skakde815@gmail.com', '', '8', '11', '51', '2020-01-13', NULL, '2020-01-17', '00:00:00', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(156, 'LNO-130120-156', '1', 'prakash vaidya', '9423127066', '', 'Domestic', 'prakash@gmail.com', '', '4', '2', '51', '2020-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(157, 'LNO-130120-157', '1', 'Lucky', '9167512794', '', 'Domestic', 'lucky@gmail.com', '', '4', '8', '51', '2020-01-13', NULL, '2020-07-09', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(158, 'LNO-130120-158', '1', 'Varun Pratap', '8446049253', '', 'Domestic', 'pratap.varun85@gmail.com', '', '2', '4', '55', '2020-01-13', NULL, NULL, NULL, 'Yes', '2', NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(159, 'LNO-130120-159', '1', 'minali', '8839613356', '', 'Domestic', 'minalijain888@gmail.com', '', '10', '4', '51', '2020-01-13', NULL, '2020-07-09', '10:28:00', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, '2020-01-13', 'Yes'),
(160, 'LNO-130120-160', '1', 'keshav wasmatkar', '9850136718', '', 'Domestic', 'keshav@gmail.com', '', '9', '2', '51', '2020-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(161, 'LNO-130120-161', '1', 'suresh sangvikar', '9420015662', '', 'Domestic', 'suresh.sangvikar@gmail.com', '', '5', '4', '51', '2020-01-13', NULL, '2020-08-12', '10:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(162, 'LNO-130120-162', '1', 'vishwajit mane', '9028313103', '', 'Domestic', 'vishwa01@gmail.com', '', '5', '4', '51', '2020-01-13', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, '2020-01-13', ''),
(163, 'LNO-130120-163', '1', 'akhilesh sonkusre', '8087401073', '', 'Domestic', 'sonkusreakhilesh@gmail.com', '', '5', '2', '51', '2020-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(164, 'LNO-130120-164', '1', 'kiran', '7045610556', '', 'Domestic', 'abc@abc.com', '', '5', '8', '51', '2020-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(165, 'LNO-130120-165', '1', 'kapil', '9373077099', '', 'Domestic', 'kapiljain21@gmail.com', '', '5', '8', '51', '2020-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(166, 'LNO-130120-166', '1', 'rahul bhavsar', '9545171001', '', 'Domestic', 'rahulbhavsar1001@gmail.com', '', '5', '8', '51', '2020-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(167, 'LNO-130120-167', '1', 'kaushik pathak', '9975615610', '', 'Domestic', 'kaushik@gmail.com', '', '8', '8', '51', '2020-01-13', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(168, 'LNO-130120-168', '1', 'ashwini kharde', '7387789468', '', 'Domestic', 'ashwini.kharde26@gmail.com', '', '9', '4', '51', '2020-01-13', NULL, '2020-01-17', '22:36:00', NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(169, 'LNO-130120-169', '1', 'jyoti pancholi', '7030194850', '', 'Domestic', 'jyotipancholi1990@gmail.com', '', '5', '2', '51', '2020-01-13', NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(170, 'LNO-130120-170', '1', 'suman singh', '7987390867', '', 'Domestic', 'sumansngh70@gmail.com', '', '5', '2', '51', '2020-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(425, 'LNO-080720-425', '1', 'BHARAT CHOUDHARY', '9096881123', '', 'Domestic', 'bharatchoudhari12@gmail.com', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(171, 'LNO-130120-171', '1', 'vaibhav', '7666315906', '', 'Domestic', 'vaibhav123@gmai.com', '', '9', '4', '56', '2020-01-13', NULL, '2020-01-15', '11:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(172, 'LNO-130120-172', '1', 'Tushar kalake', '9890852256', '', 'Domestic', 'tusharkalake09@gmail.com', '', '9', '5', '56', '2020-01-13', NULL, '2020-01-13', '00:00:06', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(173, 'LNO-130120-173', '1', 'Kailash Sarkate', '9860827384', '', 'Domestic', 'kailashnsarkate@gmail.com', '', '9', '4', '56', '2020-01-13', NULL, '2020-01-15', '11:30:00', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(174, 'LNO-130120-174', '1', 'Amit khatri', '8879794377', '', 'Domestic', 'amitkhatri@gmail.com', '', '8', '4', '56', '2020-01-13', NULL, '2020-01-15', '11:30:00', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(175, 'LNO-130120-175', '1', 'Amogh Raorane', '8888816577', '', 'Domestic', 'logan653864@gmail.com', '', '9', '4', '56', '2020-01-13', NULL, '2020-01-15', '11:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(176, 'LNO-130120-176', '1', 'Monali shendre', '7387193718', '', 'Domestic', 'monalisshendre@gmail.com', '', '9', '4', '56', '2020-01-13', NULL, '2020-01-15', '11:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', 'Yes'),
(177, 'LNO-130120-177', '1', 'sonam shaha/gaurav agraval', '7387193718 ', '', 'Domestic', 'sanam@gmail.com', '', '8', '4', '56', '2020-01-13', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-13', ''),
(178, 'LNO-150120-178', '1', 'phadtare tai', '9763006166', '', 'Domestic', 'phadtare@gmail.com', '', '9', '2', '51', '2020-01-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-15', ''),
(179, 'LNO-150120-179', '1', 'bharat vander', '7769872448', '', 'Domestic', 'bharatvandar@gmail.com', '', '5', '4', '51', '2020-01-15', NULL, '2020-09-01', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(180, 'LNO-150120-180', '1', 'shobhit jain', '8055485234', '', 'Domestic', 'shobhitjain90@yahoo.com', '', '5', '4', '51', '2020-01-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-15', ''),
(181, 'LNO-150120-181', '1', 'sandip wankhede', '8793769973', '', 'Domestic', 'sandipwankhede25@gmail.com', '', '5', '4', '51', '2020-01-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-15', ''),
(182, 'LNO-150120-182', '1', 'tapan bhatt', '9920037973', '', 'Domestic', 'bhatt.ce@gmail.com', '', '8', '4', '51', '2020-01-15', NULL, NULL, NULL, NULL, '8', 'Yes', NULL, NULL, NULL, NULL, '2020-01-15', ''),
(183, 'LNO-150120-183', '1', 'Aditya Shinde', '9820832614', '', 'Domestic', 'aditya@gmail.com', '', '8', '4', '55', '2020-01-15', NULL, '2020-01-17', '15:00:00', NULL, '8', 'Yes', NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(184, 'LNO-150120-184', '1', 'Omprakash joshi', '9869025761', '', 'Domestic', 'akashdalvi242424@gmail.com', '', '9', '4', '49', '2020-01-15', NULL, '2020-01-21', '10:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(185, 'LNO-150120-185', '1', 'Navnath Sable', '9925163180', '', 'Domestic', 'navnath@gmail.com', '', '9', '8', '49', '2020-01-15', NULL, '2020-01-17', '10:01:00', NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(186, 'LNO-150120-186', '1', 'shweta sharma ', '9975080582', '', 'Domestic', 'ssharma3001@gmail.com', '', '13', '8', '49', '2020-01-15', NULL, '2020-01-17', '18:05:00', NULL, '13', 'Yes', NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(187, 'LNO-150120-187', '1', 'Pooja goankar', '9112383905', '', 'Domestic', 'pooja@gmail.com', '', '9', '8', '49', '2020-01-15', NULL, '2020-01-17', '00:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(188, 'LNO-150120-188', '1', 'uday', '4915780595674', '', 'International', 'uday@gmail.com', '', '8', '8', '49', '2020-01-15', NULL, '2020-01-17', '18:05:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(189, 'LNO-150120-189', '1', 'Iftikar ahmed ', '9560815056', '', 'Domestic', 'iftikaahmed@gmail.com', '', '9', '8', '49', '2020-01-15', NULL, '2020-01-17', '18:05:00', NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(190, 'LNO-150120-190', '1', 'Aniket Bhirud', '9096100025', '', 'Domestic', 'aniketbhirud@gmail.com', '', '9', '8', '49', '2020-01-15', NULL, '2020-01-18', '18:05:00', NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(191, 'LNO-150120-191', '1', 'Archana D', '7567888046', '', 'Domestic', 'archana262@gmail.com', '', '13', '8', '49', '2020-01-15', NULL, '2020-01-24', '10:01:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(192, 'LNO-150120-192', '1', 'Ashish Ahire', '9926189796', '', 'Domestic', 'ashish@gmail.com', '', '14', '8', '49', '2020-01-15', NULL, '2020-01-17', '18:05:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(193, 'LNO-150120-193', '1', 'Shilpa gujrathi', '9075650386', '', 'Domestic', 'shilpa.gujrathi@gmail.com', '', '13', '8', '49', '2020-01-15', NULL, '2020-02-03', '10:01:00', NULL, '13', 'Yes', NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(194, 'LNO-150120-194', '1', 'Shahid', '7040681044', '', 'Domestic', 'mshussain9@rediffmail.com', '', '9', '8', '49', '2020-01-15', NULL, '2020-01-18', '18:05:00', NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(195, 'LNO-150120-195', '1', 'nilesh jaiswal', '8390013579', '', 'Domestic', 'nilesh@gmail.com', '', '9', '11', '51', '2020-01-15', NULL, '2022-02-02', '10:00:00', NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(196, 'LNO-150120-196', '1', 'Abhishek', '9762698200', '', 'Domestic', 'abhishek@gmail.com', '', '9', '8', '49', '2020-01-15', NULL, '2020-01-17', '18:05:00', NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(197, 'LNO-150120-197', '1', 'Vishal Advani', '9619600601', '9619274715', 'Domestic', 'vishal@gmail.com', '', '9', '8', '49', '2020-01-15', NULL, '2020-01-17', '18:05:00', NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-01-15', 'Yes'),
(198, 'LNO-160120-198', '1', 'supantho', '7038891765', '', 'Domestic', 'supantho03@gmail.com', '', '5', '4', '51', '2020-01-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-16', ''),
(199, 'LNO-160120-199', '1', 'Arun.G', '9552569066', '', 'Domestic', 'sgarun1@gmail.com', '', '5', '11', '51', '2020-01-16', NULL, '2020-01-31', '10:00:00', NULL, '5', 'Yes', NULL, NULL, NULL, NULL, '2020-01-16', 'Yes'),
(200, 'LNO-200120-200', '1', 'vignesh patil', '7756876992', '', 'Domestic', 'vignesh@gmail.com', '', '2', '11', '51', '2020-01-20', NULL, '2020-02-25', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-20', 'Yes'),
(201, 'LNO-200120-201', '1', 'gireesh', '8879405204', '', 'Domestic', 'gireesh.mca@gmail.com', '', '2', '8', '51', '2020-01-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-20', ''),
(202, 'LNO-200120-202', '1', 'Abhishek dubey', '9967893053', '', 'Domestic', 'abhiannu@gmail.com', '', '2', '8', '51', '2020-01-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-20', ''),
(203, 'LNO-220120-203', '1', 'shabbir ahmed', '9665038099', '', 'Domestic', 'shabbir.ahmed@gmail.com', '', '5', '4', '51', '2020-01-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-22', ''),
(204, 'LNO-270120-204', '1', 'basavraj desai', '9730634111', '', 'Domestic', 'desaibasu@gmail.com', '', '6', '4', '51', '2020-01-27', NULL, '2020-01-28', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-27', 'Yes'),
(205, 'LNO-300120-205', '1', 'Debarshi  Sharma', '7252051574', '', 'Domestic', 'debarshisharma93@gmail.com', '', '2', '1', '55', '2020-01-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-30', ''),
(206, 'LNO-050220-206', '1', 'akshi jain', '9530181370', '', 'Domestic', 'akshijain94.aj@gmail.com', '', '5', '11', '51', '2020-02-05', NULL, '2020-02-14', '10:11:00', NULL, '5', 'Yes', NULL, NULL, NULL, NULL, '2020-02-05', 'Yes'),
(207, 'LNO-050220-207', '1', 'Rupesh kurkure', '8983190930', '', 'Domestic', 'rupesh@gmail.com', '', '2', '11', '51', '2020-02-05', NULL, '2020-02-14', '10:10:00', NULL, '2', 'Yes', NULL, NULL, NULL, NULL, '2020-02-05', 'Yes'),
(208, 'LNO-050220-208', '1', 'ritesh chopade', '8600148648', '', 'Domestic', 'ritesh.chopade12@gmail.com', '', '9', '4', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(209, 'LNO-050220-209', '1', 'vijay sp', '9890434726', '', 'Domestic', 'vijaysp77@gmail.com', '', '2', '8', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(210, 'LNO-050220-210', '1', 'kiran', '9860741153', '', 'Domestic', 'kiranfatik07@gmail.com', '', '5', '4', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(211, 'LNO-050220-211', '1', 'gajendra bohra', '8007070300', '', 'Domestic', 'bohra.gajendra@gmail.com', '', '9', '11', '51', '2020-02-05', NULL, '2020-02-08', '10:10:00', NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-02-05', 'Yes'),
(212, 'LNO-050220-212', '1', 'rupesh bomane', '8668466077', '', 'Domestic', 'rupesh@gmail.com', '', '2', '11', '51', '2020-02-05', NULL, '2020-02-09', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', 'Yes'),
(213, 'LNO-050220-213', '1', 'vineeta ojha', '7277158532', '', 'Domestic', 'vineeojha@gmail.com', '', '1', '11', '51', '2020-02-05', NULL, '2020-03-01', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', 'Yes'),
(214, 'LNO-050220-214', '1', 'sandeep patil', '8888840570', '', 'Domestic', 'sandeeppatil2480@gmail.com', '', '10', '4', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(215, 'LNO-050220-215', '1', 'ashish mobharkar', '9819667100', '', 'Domestic', 'ashish.mobharkar@gmail.com', '', '9', '4', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(216, 'LNO-050220-216', '1', 'tarun kr', '8407908181', '', 'Domestic', 'tarunkar.2610@gmail.com', '', '10', '6', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(217, 'LNO-050220-217', '1', 'kasturi hadap', '9767829533', '', 'Domestic', 'kasturihadap08@gmai.com', '', '8', '11', '51', '2020-02-05', NULL, '2020-02-06', '05:00:00', NULL, '2', 'Yes', NULL, NULL, NULL, NULL, '2020-02-05', 'Yes'),
(218, 'LNO-050220-218', '1', 'sandhya ', '9767126469', '', 'Domestic', 'sandhya@gmail.com', '', '2', '4', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(219, 'LNO-050220-219', '1', 'Anil chauhan', '9810403188', '', 'Domestic', 'anil@gmail.com', '', '2', '11', '51', '2020-02-05', NULL, '2020-02-08', '10:03:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', 'Yes'),
(220, 'LNO-050220-220', '1', 'Rani', '9922116192', '', 'Domestic', 'rani@gmail.com', '', '9', '8', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(221, 'LNO-050220-221', '1', 'sonali kolhe', '8484867985', '', 'Domestic', 'sonali@gmail.com', '', '5', '8', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(222, 'LNO-050220-222', '1', 'umesh kandhare', '9923106677', '', 'Domestic', 'kandhar480@gmail.com', '', '1', '8', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(223, 'LNO-050220-223', '1', 'pooja', '9503181833', '', 'Domestic', 'pooja@gmail.com', '', '11', '4', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(224, 'LNO-050220-224', '1', 'rohan patil', '9028725051', '', 'Domestic', 'rohan@gmail.com', '', '9', '4', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(225, 'LNO-050220-225', '1', 'shivraj hadole', '9987128823', '', 'Domestic', 'anushkahadole@gmail.com', '', '2', '8', '51', '2020-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-05', ''),
(226, 'LNO-100220-226', '1', 'tushar tanpure', '7276171700', '', 'Domestic', 'tushartanpure@gmail.com', '', '9', '4', '51', '2020-02-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-10', ''),
(227, 'LNO-230220-227', '1', 'rahul satdive', '8055190193', '', 'Domestic', 'satdiverahul@gmail.com', '', '9', '8', '51', '2020-02-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23', ''),
(228, 'LNO-170420-228', '1', 'Riyaz', '8065551786', '', 'Domestic', 'riyaz@gmail.com', '', '2', '8', '51', '2020-04-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17', ''),
(229, 'LNO-170420-229', '1', 'A G', '9545138088', '', 'Domestic', 'ag@gmail.com', '', '2', '8', '51', '2020-04-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17', ''),
(230, 'LNO-170420-230', '1', 'sangale', '9922960083', '', 'Domestic', 'sangale@gmail.com', '', '2', '8', '51', '2020-04-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17', '');
INSERT INTO `leads` (`id`, `lead_id`, `dept_id`, `name`, `phone_1`, `phone_2`, `call_back_type`, `email_1`, `email_2`, `project_id`, `status_id`, `assign_to`, `inserted_date`, `updated_date`, `reassign_date`, `reassign_time`, `site_visit_done`, `site_visit_fix_project`, `site_visit_fixed`, `site_visit_not_done`, `face_to_face_done`, `important`, `client_registration_email`, `assigned_date`, `reassign`) VALUES
(231, 'LNO-170420-231', '1', 'vaibhav', '8668582893', '', 'Domestic', 'vaibhav@gmail.com', '', '2', '8', '51', '2020-04-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17', ''),
(232, 'LNO-170420-232', '1', 'nitin j', '9082424354', '', 'Domestic', 'nitinrakshu@gmail.com', '', '2', '8', '51', '2020-04-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17', ''),
(233, 'LNO-170420-233', '1', 'madhuri lagad', '8007505566', '', 'Domestic', 'lagadmadhuri1108@gmail.com', '', '2', '8', '51', '2020-04-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-17', ''),
(234, 'LNO-240520-234', '1', 'J Kulkarni', '9870781020', '', 'Domestic', 'sukhadathane007@gmail.com', '', '12', '8', '1', '2020-05-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-24', ''),
(235, 'LNO-260520-235', '1', 'tarique testing', '7083849454', '', 'Domestic', 'a@gmail.com', '', '12', '8', '1', '2020-05-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-26', ''),
(236, 'LNO-080720-236', '1', 'Tushar Karande', '9767207400', '', 'Domestic', 'karandetushar11@gmail.com', '', '1', '6', '57', '2020-07-08', NULL, '2020-07-09', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(237, 'LNO-080720-237', '1', 'Sharad Kharya', '09881238370', '', 'Domestic', 'sharadkharya@gmail.com', '', '1', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(238, 'LNO-080720-238', '1', 'sunny', '9763686552', '', 'Domestic', 'sunnyshadija.ss@gmail.com', '', '1', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(239, 'LNO-080720-239', '1', 'Prashant Sawant', '7620699101', '', 'Domestic', 'prashantsawant73@rediffmail.com', '', '1', '4', '57', '2020-07-08', NULL, '2020-07-09', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(240, 'LNO-080720-240', '1', 'digjeet kaur', '8847226546', '', 'Domestic', 'digjeetkaurbirlasoft1@gmail.com', '', '18', '6', '57', '2020-07-08', NULL, '2020-07-09', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(241, 'LNO-080720-241', '1', 'Nikhil ', '9923447395', '', 'Domestic', 'NIKHIL.H.KANKARIYA@GMAIL.COM', '', '18', '4', '57', '2020-07-08', NULL, '2020-07-10', '14:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(242, 'LNO-080720-242', '1', 'Manish R', '07875283662', '', 'Domestic', 'manishrajan27@gmail.com', '', '18', '4', '57', '2020-07-08', NULL, '2020-07-20', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(243, 'LNO-080720-243', '1', 'Ashish Gaikwad', '8983437889', '', 'Domestic', 'ashishgaikwad.mech@gmail.com', '', '18', '12', '53', '2020-07-08', NULL, '2020-07-09', '23:00:00', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, '2020-07-08', 'Yes'),
(244, 'LNO-080720-244', '1', 'Radha', '7020631880', '', 'Domestic', 'Radhashrirao@gmail.com', '', '18', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(245, 'LNO-080720-245', '1', 'Sagar sonawane', '7020011371', '', 'Domestic', 'ss@gmail.com', '', '18', '11', '53', '2020-07-08', NULL, '2020-07-10', '00:00:00', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(246, 'LNO-080720-246', '1', 'Vrunda ', '8888549703', '', 'Domestic', 'vrun811@gmail.com', '', '18', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(247, 'LNO-080720-247', '1', 'Kavya', '8329249601', '', 'Domestic', 'kavita.rodagi11@gmail.com', '', '18', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(248, 'LNO-080720-248', '1', 'Surender Chouhan', '9003116295', '', 'Domestic', 'chouhansur593059@gmail.com', '', '18', '4', '53', '2020-07-08', NULL, NULL, NULL, NULL, '12', 'Yes', NULL, NULL, NULL, NULL, '2020-07-08', ''),
(249, 'LNO-080720-249', '1', 'Vivek', '8319613039', '', 'Domestic', 'prabhi116161@gmail.com', '', '18', '6', '57', '2020-07-08', NULL, '2020-07-09', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(250, 'LNO-080720-250', '1', 'Sudesh raut', '9370334965', '', 'Domestic', 'sudeshraut21@gmail.com', '', '18', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(251, 'LNO-080720-251', '1', 'Sameer', '8446834177', '', 'Domestic', 'sameerdhumke@yahoo.com', '', '18', '2', '53', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(252, 'LNO-080720-252', '1', 'Nishikant', '8793109313', '', 'Domestic', 'nishikant.life@gmail.com', '', '18', '6', '53', '2020-07-08', NULL, '2020-07-09', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(253, 'LNO-080720-253', '1', 'Sheetal Deshmukh', '07020759378', '', 'Domestic', 'sheetaldeshmukh89@gmail.com', '', '18', '2', '53', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(254, 'LNO-080720-254', '1', 'Saurabh', '88570 90799', '', 'Domestic', 'saurabhjisoni@gmail.com', '', '18', '2', '53', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(255, 'LNO-080720-255', '1', 'Preeti ', '8698656392', '', 'Domestic', 'sbgunavare@gmail.com', '', '18', '2', '53', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(256, 'LNO-080720-256', '1', 'Santosh Shinde', '9545799229', '', 'Domestic', 'sanshinde2012@gmail.com', '', '18', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(257, 'LNO-080720-257', '1', 'Santosh Shinde', '9545799229', '', 'Domestic', 'sanshinde2012@gmail.com', '', '18', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(258, 'LNO-080720-258', '1', 'VIKRAM MADHAVRAO CHOUDHARI', '08600370080', '', 'Domestic', 'vikram.choudhari@gmail.com', '', '18', '2', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(259, 'LNO-080720-259', '1', 'Sandip', '9405057572', '', 'Domestic', 'schandankar84@gmail.com', '', '18', '6', '53', '2020-07-08', NULL, '2020-07-09', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(260, 'LNO-080720-260', '1', 'John Dsouza', '09765002788', '', 'Domestic', 'brandsfranchisee@gmail.com', '', '18', '6', '53', '2020-07-08', NULL, '2020-07-09', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(261, 'LNO-080720-261', '1', 'Praveen Agrawal', '09886374058', '', 'Domestic', 'praveen.iet2007@gmail.com', '', '18', '6', '53', '2020-07-08', NULL, '2020-07-10', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(262, 'LNO-080720-262', '1', 'Amit', '9867170014', '', 'Domestic', 'amitrit95@gmail.com', '', '18', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(263, 'LNO-080720-263', '1', 'Nimish bhise', '9860419540', '', 'Domestic', 'nimish.bhise@gmail.com', '', '18', '6', '53', '2020-07-08', NULL, '2020-07-13', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(264, 'LNO-080720-264', '1', 'Nimish bhise', '9860419540', '', 'Domestic', 'nimish.bhise@gmail.com', '', '18', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(265, 'LNO-080720-265', '1', 'Milind', '9869483476', '', 'Domestic', 'mwpatil71@gmail.com', '', '18', '6', '53', '2020-07-08', NULL, '2020-07-09', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(266, 'LNO-080720-266', '1', 'Vishal', '9730350074', '', 'Domestic', 'vishal.waykar@gmail.com', '', '18', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(267, 'LNO-080720-267', '1', 'rohit sharma', '7972331256', '', 'Domestic', 'rohitsharma54@gmail.com', '', '18', '6', '53', '2020-07-08', NULL, '2020-07-09', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(268, 'LNO-080720-268', '1', 'Arindam Dutta', '09067201556', '', 'Domestic', 'mail.arindam.dutta@gmail.com', '', '18', '6', '53', '2020-07-08', NULL, '2020-07-09', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(269, 'LNO-080720-269', '1', 'Gaurav Ulhe', '9712909819', '', 'Domestic', 'ulhegaurav@gmail.com', '', '18', '6', '53', '2020-07-08', NULL, '2020-07-09', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(270, 'LNO-080720-270', '1', 'vineet pathania', '9284338496', '', 'Domestic', 'Vineetsinghpathania@gmail.com', '', '18', '2', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(271, 'LNO-080720-271', '1', 'Nilesh Bagul', '8956014309', '', 'Domestic', 'Bagul.nilesh@gmail.com', '', '18', '8', '54', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(272, 'LNO-080720-272', '1', 'Saptarshi chandra', '9594931477', '', 'Domestic', 'schandra969@gmail.com', '', '18', '8', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(273, 'LNO-080720-273', '1', 'Nagesh', '9769002714', '', 'Domestic', 'nbhojane1@gmail.com', '', '18', '8', '54', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(274, 'LNO-080720-274', '1', 'vaishali khadse', '9422716259', '', 'Domestic', 'arcvaishalikhadse@gmail.com', '', '5', '2', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(275, 'LNO-080720-275', '1', 'rohan', '7767057987', '', 'Domestic', 'rohanpatil1403@rediffmail.com', '', '5', '6', '53', '2020-07-08', NULL, '2020-07-09', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(276, 'LNO-080720-276', '1', 'Sonali shinde', '9763499731', '', 'Domestic', 'Sonali.g.shinde93@gmail.com', '', '5', '2', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(277, 'LNO-080720-277', '1', 'akshi jain', '9530181370', '', 'Domestic', 'akshijain94.aj@gmail.com', '', '5', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(278, 'LNO-080720-278', '1', 'Aparna ghemkund patil', '7721020404', '', 'Domestic', 'aparnapatil@gmail.com', '', '9', '2', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(279, 'LNO-080720-279', '1', 'Sachin Rathi', '8830392020', '8055327880', 'Domestic', 'sachin19nov1977@gmail.com', '', '18', '6', '57', '2020-07-08', NULL, '2020-07-11', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(280, 'LNO-080720-280', '1', 'Ankit Ingawale', '8390095433', '', 'Domestic', 'ankit@gmail.com', '', '19', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(281, 'LNO-080720-281', '1', 'Vinod Kumar Tiwari', '9881998800', '', 'Domestic', 'vinod.tiwari@gmail.com', '', '19', '4', '57', '2020-07-08', NULL, '2020-07-09', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(282, 'LNO-080720-282', '1', 'Dipti Tapkir', '8879596786', '', 'Domestic', 'diptitapkir@gmail.com', '', '1', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(283, 'LNO-080720-283', '1', 'Jyotiee Dubey', '8087158645', '', 'Domestic', 'jyotidubey@yahoo.co.in', '', '9', '5', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(284, 'LNO-080720-284', '1', 'Rajiv Lochan', '9503782558', '', 'Domestic', 'rajivlochan@gmail.com', '', '19', '8', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(285, 'LNO-080720-285', '1', 'Vivek Wagle', '9960236878', '', 'Domestic', 'vivekwagle@gmail.com', '', '9', '4', '57', '2020-07-08', NULL, '2020-07-11', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(286, 'LNO-080720-286', '1', 'Suresh Kumar Agarwal', '9831459076', '', 'Domestic', 'suresh.kumar.agarwal.1964@gmail.com', '', '9', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(287, 'LNO-080720-287', '1', 'Shahid Oomer', '9821164971', '', 'Domestic', 'shahidoomer@gmail.com', '', '9', '4', '57', '2020-07-08', NULL, '2020-07-17', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(288, 'LNO-080720-288', '1', 'Amol ', '8983305151', '', 'Domestic', 'amol_profile@rediffmail.com', '', '18', '4', '57', '2020-07-08', NULL, '2020-07-09', '23:55:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(289, 'LNO-080720-289', '1', 'Sanket Kubde', '7875876189', '', 'Domestic', 'sanket@gmail.com', '', '1', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(290, 'LNO-080720-290', '1', 'Swati Tidke', '7709577596', '', 'Domestic', 'swatitidke@gmail.com', '', '9', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(291, 'LNO-080720-291', '1', 'Gaurav Sethi', '9748702434', '', 'Domestic', 'gaurav.sethi@gmail.com', '', '19', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(292, 'LNO-080720-292', '1', 'Gurvinder', '9922441705', '', 'Domestic', 'Gurvein@yahoo.co.in', '', '1', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(293, 'LNO-080720-293', '1', 'Balasaheb Jadhav', '9979895277', '', 'Domestic', 'balasahebjadhav@gmail.com', '', '20', '4', '57', '2020-07-08', NULL, '2020-07-15', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(294, 'LNO-080720-294', '1', 'Nishant', '7032770793', '', 'Domestic', 'elec.nishant@gmail.com', '', '2', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(295, 'LNO-080720-295', '1', 'Parvez Khan', '9049849333', '', 'Domestic', 'parvezkhan@gmail.com', '', '9', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(296, 'LNO-080720-296', '1', 'PRASHANT KARODI', '8796620172', '', 'Domestic', 'prashant21karodi@gmail.com', '', '1', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(297, 'LNO-080720-297', '1', 'Manish Yadav', '8149769062', '', 'Domestic', 'manishyadav867@gmail.com', '', '1', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(298, 'LNO-080720-298', '1', 'Sandesh Sharma', '8796843778', '', 'Domestic', 'sharmasandesh0099@gmail.com', '', '1', '4', '57', '2020-07-08', NULL, '2020-07-15', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(299, 'LNO-080720-299', '1', 'Suraj Kumar', '9011245613', '', 'Domestic', 'surajkumar@gmail.com', '', '9', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(300, 'LNO-080720-300', '1', 'Khan', '7759868874', '', 'Domestic', 'khan@gmail.com', '', '19', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(301, 'LNO-080720-301', '1', 'Prashant Garg', '8149132257', '', 'Domestic', 'prashant.garg@gmail.com', '', '19', '2', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(302, 'LNO-080720-302', '1', 'Malee Latika', '8657323355', '', 'Domestic', 'malee.latika@gmail.com', '', '19', '4', '57', '2020-07-08', NULL, '2020-07-09', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(303, 'LNO-080720-303', '1', 'Monal Shah', '9920460332', '', 'Domestic', 'monals2001@gmail.com', '', '1', '4', '57', '2020-07-08', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(304, 'LNO-080720-304', '1', 'Nilesh ', '9870791279', '', 'Domestic', 'Nshelte@rocketmail.com', '', '1', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(305, 'LNO-080720-305', '1', 'Asmita Bharati', '9405238768', '', 'Domestic', 'asmita.motiwale@gmail.com', '', '1', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(306, 'LNO-080720-306', '1', 'Ganesh Bharati', '9673526913', '', 'Domestic', 'ganesh.bharti@gmail.com', '', '2', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(307, 'LNO-080720-307', '1', 'PONNAMMA SUBBIA H KONAR', '9967825112', '', 'Domestic', 'ponnammakonar7@gmail.com', '', '9', '4', '57', '2020-07-08', NULL, '2020-07-15', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(308, 'LNO-080720-308', '1', 'Sandeep JAJU', '9657728990', '', 'Domestic', 'jaju.sandeep@gmail.com', '', '20', '4', '57', '2020-07-08', NULL, '2020-07-15', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(309, 'LNO-080720-309', '1', 'Jayaraj Omane', '8087326655', '', 'Domestic', 'jayarajomane_527@yahoo.com', '', '18', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(310, 'LNO-080720-310', '1', 'Hridaynath Bhamare', '8805018080', '', 'Domestic', 'hridaybhamare@gmail.com', '', '9', '4', '57', '2020-07-08', NULL, NULL, NULL, NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-07-08', ''),
(311, 'LNO-080720-311', '1', 'Samarth ', '7737763232', '', 'Domestic', 'Samdixit19@gmail.com', '', '9', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(312, 'LNO-080720-312', '1', 'Asish Ranjan Panda', '998908389080', '', 'Domestic', 'asishpanda1990@gmail.com', '', '9', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(313, 'LNO-080720-313', '1', 'Asish Ranjan Panda', '8908389080', '', 'Domestic', 'asishpanda1990@gmail.com', '', '9', '4', '57', '2020-07-08', NULL, NULL, NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(314, 'LNO-080720-314', '1', 'Kaira', '8779005708', '', 'Domestic', 'Kaira27dhanda@gmail.com', '', '2', '4', '50', '2020-07-08', NULL, '2020-07-10', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(315, 'LNO-080720-315', '1', 'AKSHAY C KITHANI', '09975710283', '', 'Domestic', 'Akshay.kithani@gmail.com', '', '9', '4', '57', '2020-07-08', NULL, '2020-07-22', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(316, 'LNO-080720-316', '1', 'Vaishali Saraf', '9764311811', '', 'Domestic', 'sarafvaishali@gmail.com', '', '2', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(317, 'LNO-080720-317', '1', 'Shyam Singh', '9580894644', '8726118711', 'Domestic', 'shyamsingh@gmail.com', '', '4', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(318, 'LNO-080720-318', '1', 'Balasaheb Jadhav', '7887858686', '', 'Domestic', 'balasaheb@yahoo.com', '', '4', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(319, 'LNO-080720-319', '1', 'Niteen', '8605408021', '', 'Domestic', 'niteen.khedkar@gmail.com', '', '4', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(320, 'LNO-080720-320', '1', 'Abhishek Yadav ', '9823075151', '', 'Domestic', 'yadav.5151@gmail.com', '', '9', '6', '53', '2020-07-08', NULL, '2020-07-10', '00:00:00', NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(321, 'LNO-080720-321', '1', 'Shamburaj Kakate', '9881474541', '', 'Domestic', 'shamburaj.kakate@gmail.com', '', '1', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(322, 'LNO-080720-322', '1', 'Ravi', '9503446185', '', 'Domestic', 'ravi@gmail.com', '', '1', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(323, 'LNO-080720-323', '1', 'Jagdish Patil', '7400064133', '', 'Domestic', 'jagdish.patil@gmail.com', '', '1', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(324, 'LNO-080720-324', '1', 'Swapnil Lunkad', '8805877777', '', 'Domestic', 'swapnil@rohanbuilders.com', '', '20', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(325, 'LNO-080720-325', '1', 'Nagendrakumar Belure ', '9860404329', '', 'Domestic', 'nagendrakumar.belure@gmail.com', '', '9', '8', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(326, 'LNO-080720-326', '1', 'Nagendrakumar Belure ', '9860404329', '', 'Domestic', 'nagendrakumar.belure@gmail.com', '', '9', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(327, 'LNO-080720-327', '1', 'Abhishek Kumar', '9595834595', '', 'Domestic', 'abhiksingh02@outlook.com', '', '9', '4', '50', '2020-07-08', NULL, NULL, NULL, NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-07-08', ''),
(328, 'LNO-080720-328', '1', 'Shuba Saxena ', '7974130665', '', 'Domestic', 'saxenashubha@gmail.com', '', '1', '2', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(329, 'LNO-080720-329', '1', 'Deepa Suman', '8292605320', '', 'Domestic', 'deepa.sumn@gmail.com', '', '9', '4', '58', '2020-07-08', NULL, '2020-07-15', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(330, 'LNO-080720-330', '1', 'Laxmi singh', '8298553907', '', 'Domestic', 'luckysingh2193@gmail.com', '', '9', '4', '58', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(331, 'LNO-080720-331', '1', 'Prashant Garg', '8149132257', '', 'Domestic', 'prashant.grg@gmail.com', '', '20', '6', '56', '2020-07-08', NULL, NULL, NULL, 'Yes', '19', NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(332, 'LNO-080720-332', '1', 'Prof TAUR Machindra Bajirao', '09881766605', '', 'Domestic', 'mbtaur@gmail.com', '', '9', '6', '53', '2020-07-08', NULL, '2020-07-09', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(333, 'LNO-080720-333', '1', 'Prof TAUR Machindra Bajirao', '09881766605', '', 'Domestic', 'mbtaur@gmail.com', '', '9', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(334, 'LNO-080720-334', '1', 'Prof TAUR Machindra Bajirao', '09881766605', '', 'Domestic', 'mbtaur@gmail.com', '', '9', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(335, 'LNO-080720-335', '1', 'sachin shinde', '09638055234', '', 'Domestic', 'shinde.sachin490@gmail.com', '', '9', '8', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(336, 'LNO-080720-336', '1', 'sachin shinde', '09638055234', '', 'Domestic', 'shinde.sachin490@gmail.com', '', '9', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(337, 'LNO-080720-337', '1', 'Shaifali Gupta', '9561934569', '', 'Domestic', 'daga.aditya@yahoo.com', '', '9', '4', '58', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(338, 'LNO-080720-338', '1', 'Sumeet Mehta', '00000000000', '', 'Domestic', 'mehtasumeet06@gmail.com', '', '9', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(339, 'LNO-080720-339', '1', 'Shirish Nahar', '9881233004', '', 'Domestic', 'lovenahar@gmail.com', '', '9', '11', '53', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, '18', 'Yes', NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(340, 'LNO-080720-340', '1', 'Amandeep Singh ', '8605276565', '', 'Domestic', 'Amandeeps694@gmail.com', '', '9', '8', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(341, 'LNO-080720-341', '1', 'Srikant Kumar', '8446515792', '', 'Domestic', 'srikanthebest@gmail.com', '', '9', '6', '53', '2020-07-08', NULL, '2020-07-09', '02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(342, 'LNO-080720-342', '1', 'Amitabha Mitra', '9051834619', '', 'Domestic', 'amitabhamitra@hotmail.com', '', '9', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(343, 'LNO-080720-343', '1', 'Shashank', '9850577384', '', 'Domestic', 's.bangale2007@gmail.com', '', '9', '2', '50', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(344, 'LNO-080720-344', '1', 'aBHISHEK', '9766869241', '', 'Domestic', 'ASK.KULKARNIABHISHEK@GMAIL.COM', '', '9', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(345, 'LNO-080720-345', '1', 'Sandeep Ghogare ', '9922686543', '', 'Domestic', 'sandeep1004.sg@gmail.com', '', '9', '4', '58', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(346, 'LNO-080720-346', '1', 'Deepak', '9309740739', '', 'Domestic', 'deepak56788@gmail.com', '', '9', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(347, 'LNO-080720-347', '1', 'khan', '9049849333', '', 'Domestic', 'hk@gmail.com', '', '9', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(348, 'LNO-080720-348', '1', 'Ajinkya ', '7892099067', '', 'Domestic', 'ajinkyasb09@gmail.com', '', '9', '6', '53', '2020-07-08', NULL, '2020-07-10', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(349, 'LNO-080720-349', '1', 'Anil', '9945414856', '', 'Domestic', 'Anil@gmail.com', '', '9', '2', '53', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(350, 'LNO-080720-350', '1', 'Ajinkya', '7892099067', '', 'Domestic', 'ajinkyasb09@gmail.com', '', '9', '2', '53', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(351, 'LNO-080720-351', '1', 'Santosh Kumar Dash', '9420044635', '', 'Domestic', 'santdash@gmail.com', '', '8', '4', '58', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(352, 'LNO-080720-352', '1', 'Santosh Kumar Dash', '9420044635', '', 'Domestic', 'santdash@gmail.com', '', '8', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(353, 'LNO-080720-353', '1', 'Apoorv Vyas', '8390371878', '', 'Domestic', 'apoorv.vyas@gmail.com', '', '9', '6', '53', '2020-07-08', NULL, '2020-07-10', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(354, 'LNO-080720-354', '1', 'Ashutosh Vishwakarma', '09987554467', '', 'Domestic', 'v.ashutsh95@gmail.com', '', '9', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(355, 'LNO-080720-355', '1', 'Somnath Kasture', '09049506744', '', 'Domestic', 'somnathkasture@gmail.com', '', '9', '8', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(356, 'LNO-080720-356', '1', 'Abhimanyu Gogate', '7337266637', '', 'Domestic', 'abhimanyu.gogate@gmail.com', '', '9', '4', '58', '2020-07-08', NULL, '2020-07-15', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(357, 'LNO-080720-357', '1', 'asd;lfsfl; aldfjasldfja;lsdkj', '1234567890', '', 'Domestic', 'asdlfjadsklf@gmail.com', '', '8', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(358, 'LNO-080720-358', '1', 'Kaushik', '9595716607', '', 'Domestic', 'himaunshu0@gmail.com', '', '9', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(359, 'LNO-080720-359', '1', 'Umesh Dube', '9890296818', '', 'Domestic', 'updube2@gmail.com', '', '9', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(360, 'LNO-080720-360', '1', 'harshal', '9975773454', '', 'Domestic', 'drhcb1985@gmail.com', '', '9', '8', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(361, 'LNO-080720-361', '1', 'Bharat Bhushan', '8976567876', '', 'Domestic', 'dskbp@yahoo.co.in', '', '9', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(362, 'LNO-080720-362', '1', 'Mohini Sudhakar Aher', '07517687673', '', 'Domestic', 'mohiniaher1997@gmail.com', '', '9', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(363, 'LNO-080720-363', '1', 'Ganesh Bidve', '9890150666', '', 'Domestic', 'bidve1@gmail.com', '', '9', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(364, 'LNO-080720-364', '1', 'MAHESH BORATE', '7710087264', '', 'Domestic', 'boratemaheshd@gmail.com', '', '9', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(365, 'LNO-080720-365', '1', 'Hozefa Kushanwala', '9545502800', '', 'Domestic', 'huzefa.kushanwala@gmail.com', '', '9', '6', '53', '2020-07-08', NULL, '2020-07-10', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(366, 'LNO-080720-366', '1', 'Manoj Ahuja..', '9819180499', '', 'Domestic', 'mahuja@gmail.com', '', '9', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(367, 'LNO-080720-367', '1', 'Nitin Manohar Fegade', '8698095467', '', 'Domestic', 'nitinfegade@rediffmail.com', '', '9', '6', '53', '2020-07-08', NULL, '2020-07-10', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(368, 'LNO-080720-368', '1', 'Aadarsh Verma', '982796787', '', 'Domestic', 'rsrconc007@gmail.com', '', '9', '4', '50', '2020-07-08', NULL, '2020-07-15', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(369, 'LNO-080720-369', '1', 'ANAND PURANIK', '9158852422', '', 'Domestic', 'ampuranik2011@gmail.com', '', '5', '2', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(370, 'LNO-080720-370', '1', 'aaaaaaaaaa', '0000000000', '', 'Domestic', 'a@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(371, 'LNO-080720-371', '1', 'bbbbbbbbbb', '0000000000', '', 'Domestic', 'n@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(372, 'LNO-080720-372', '1', 'sawta akhade', '0022222222', '', 'Domestic', 'somthing@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(373, 'LNO-080720-373', '1', 'testing', '0101010101', '', 'Domestic', 'test@yahoo.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(374, 'LNO-080720-374', '1', 'Aparna Patil', '7721020404', '', 'Domestic', 'apatil@gmail.com', '', '9', '5', '56', '2020-07-08', NULL, NULL, NULL, 'Yes', '9', NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(375, 'LNO-080720-375', '1', 'madhuree', '9405181053', '', 'Domestic', 'madhuree20@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(376, 'LNO-080720-376', '1', 'Sanjay kathar', '9823717475', '', 'Domestic', 'sanjaykathar@gmail.com', '', '5', '2', '53', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(377, 'LNO-080720-377', '1', 'Nikhil Babel', '9949190497', '', 'Domestic', 'abc@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(378, 'LNO-080720-378', '1', 'Rajesh Datatray Hadawale ', '8779625846', '', 'Domestic', 'durgeshmedical11@gmail.com', '', '5', '8', '47', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(379, 'LNO-080720-379', '1', 'Sarika gaikwad', '9730312690', '', 'Domestic', 'sarika11.gaikwad@gmail.com', '', '5', '6', '53', '2020-07-08', NULL, '2020-08-10', '14:08:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(380, 'LNO-080720-380', '1', 'Shivaji Khandekar', '9850070626', '', 'Domestic', 'shivaji.khandekar1@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(381, 'LNO-080720-381', '1', 'Dattaram Chavan', '7875657595', '', 'Domestic', 'dlchavan10@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(382, 'LNO-080720-382', '1', 'dhiraj', '8381059286', '', 'Domestic', 'dhiraj.bhagat5@gmail.com', '', '5', '6', '53', '2020-07-08', NULL, '2020-07-10', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(383, 'LNO-080720-383', '1', 'MST', '7028630875', '', 'Domestic', 'manaswitejale@gmail.com', '', '5', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(384, 'LNO-080720-384', '1', 'ketan sagvekar', '8007771223', '', 'Domestic', 'ketan.sagvekar@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(385, 'LNO-080720-385', '1', 'Shailendra Darandale', '9823049906', '', 'Domestic', 'd.shailendra89@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(386, 'LNO-080720-386', '1', 'Munna S Bhangale', '9021727233', '', 'Domestic', 'munnabhangale426@gmail.com', '', '5', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(387, 'LNO-080720-387', '1', 'Vasant Ghuge ', '9423737294', '', 'Domestic', 'vasantghuge@gmail.com', '', '5', '6', '53', '2020-07-08', NULL, '2020-07-10', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(388, 'LNO-080720-388', '1', 'Ashish Harish Ghildiyal', '7769973923', '', 'Domestic', 'ashish028@gmail.com', '', '5', '4', '50', '2020-07-08', NULL, '2020-07-13', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(389, 'LNO-080720-389', '1', 'Ganesh jadhav', '7774919021', '', 'Domestic', 'ganeshjadhav5111@gmail.com', '', '5', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(390, 'LNO-080720-390', '1', 'Jyoti Rajendra gholap ', '7666846586', '', 'Domestic', 'jyotishibe4@gmail.com', '', '5', '6', '53', '2020-07-08', NULL, '2020-07-10', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(391, 'LNO-080720-391', '1', 'SHIVAJI  JADHAV', '9423807660', '', 'Domestic', 'jadhav.sm1956@yahoo.com', '', '5', '6', '53', '2020-07-08', NULL, '2020-07-10', '00:00:00', NULL, '7', 'Yes', NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(392, 'LNO-080720-392', '1', 'bhagyadhar behera', '9937877108', '', 'Domestic', 'bbehera.associates@gmail.comom', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(393, 'LNO-080720-393', '1', 'Tukaram', '9011567861', '', 'Domestic', 'tukaram_sagar@yahoo.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(394, 'LNO-080720-394', '1', 'shubhangi sarode', '9823402299', '', 'Domestic', 'shubhangi.nemade@gmail.com', '', '5', '2', '50', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(395, 'LNO-080720-395', '1', 'N B KULKARNI', '9420221007', '', 'Domestic', 'nandkumarbkul@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(396, 'LNO-080720-396', '1', 'Nikhil Tolambe', '7722033070', '', 'Domestic', 'nikhil.tolambe@gmail.com', '', '9', '4', '57', '2020-07-08', NULL, '2020-07-11', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(397, 'LNO-080720-397', '1', 'Mayuri', '8087127108', '', 'Domestic', 'mane.mayuri1812@gmail.com', '', '5', '2', '53', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(398, 'LNO-080720-398', '1', 'Mahendra Pednekar', '9850456956', '', 'Domestic', 'mahendrapednekar@rocketmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(399, 'LNO-080720-399', '1', 'Rupesh', '8286139366', '', 'Domestic', 'rupeshdbhirud@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(400, 'LNO-080720-400', '1', 'Jaydeep  Jagdale', '8007777270', '', 'Domestic', 'jagdalejaydeep@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(401, 'LNO-080720-401', '1', 'Milind Digraskar', '9096368679', '', 'Domestic', 'digraskar.milind13@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(402, 'LNO-080720-402', '1', 'Prachi', '9594636000', '', 'Domestic', 'prachi.parthkitchen@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(403, 'LNO-080720-403', '1', 'V d p', '9960010900', '', 'Domestic', 'vd@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(404, 'LNO-080720-404', '1', 'V d p', '9960010900', '', 'Domestic', 'vd@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(405, 'LNO-080720-405', '1', 'Ajit', '9028090716', '', 'Domestic', 'puneash@hotmail.com', '', '5', '2', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(406, 'LNO-080720-406', '1', 'Prashant Patil', '9766314854', '', 'Domestic', 'pashpatil@gmail.com', '', '5', '6', '53', '2020-07-08', NULL, '2020-07-10', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(407, 'LNO-080720-407', '1', 'Prashant Patil', '9766314854', '', 'Domestic', 'pashpatil@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(408, 'LNO-080720-408', '1', 'Prashant Patil', '9766314854', '', 'Domestic', 'pashpatil@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(409, 'LNO-080720-409', '1', 'Prashant Patil', '9766314854', '', 'Domestic', 'pashpatil@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(410, 'LNO-080720-410', '1', 'Suvarnanangare', '8308508239', '', 'Domestic', 'suvarnanangare123@gmail.com', '', '5', '8', '56', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(411, 'LNO-080720-411', '1', 'Suvarnanangare', '8308508239', '', 'Domestic', 'suvarnanangare123@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(412, 'LNO-080720-412', '1', 'Suvarnanangare', '8308508239', '', 'Domestic', 'suvarnanangare123@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(413, 'LNO-080720-413', '1', 'Suvarnanangare', '8308508239', '', 'Domestic', 'suvarnanangare123@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(414, 'LNO-080720-414', '1', 'Suvarnanangare', '8308508239', '', 'Domestic', 'suvarnanangare123@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(415, 'LNO-080720-415', '1', 'Suvarnanangare', '8308508239', '', 'Domestic', 'suvarnanangare123@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(416, 'LNO-080720-416', '1', 'Suvarnanangare', '8308508239', '', 'Domestic', 'suvarnanangare123@gmail.com', '', '5', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(417, 'LNO-080720-417', '1', 'Akbar Thakur', '0552749691', '', 'Domestic', 'AKBAR_THAKUR@YAHOO.COM', '', '5', '2', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(418, 'LNO-080720-418', '1', 'Vinayak ', '9890765835', '', 'Domestic', 'vinayakshinde56@gmail.com', '', '5', '2', '50', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(419, 'LNO-080720-419', '1', 'Ali', '0951214135', '', 'Domestic', 'amvalikarimwala@gmail.com', '', '5', '2', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(420, 'LNO-080720-420', '1', 'Abhishek Gupta', '8208474418', '', 'Domestic', 'abigupta2008@gmail.com', '', '5', '6', '50', '2020-07-08', NULL, '2020-07-13', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(421, 'LNO-080720-421', '1', 'Jyoti ', '8698836692', '', 'Domestic', 'jyoti.a.gulati@gmail.com', '', '5', '8', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(422, 'LNO-080720-422', '1', 'nibha', '7979738703', '', 'Domestic', 'nibha221@gmail.com', '', '5', '2', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(423, 'LNO-080720-423', '1', 'nibha', '7979738703', '', 'Domestic', 'nibha221@gmail.com', '', '5', '2', '48', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(424, 'LNO-080720-424', '1', 'Ashish Pandey', '9960180488', '', 'Domestic', 'ashishpandey2106@gmail.com', '', '5', '2', '50', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(426, 'LNO-080720-426', '1', 'Mayur', '9970333393', '', 'Domestic', 'm4yurofficial@gmail.com', '', '4', '4', '58', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(427, 'LNO-080720-427', '1', 'Keerthan Shetty', '8097508738', '', 'Domestic', 'shettykeerthan97@gmail.com', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(428, 'LNO-080720-428', '1', 'Khushbu Bhandarkar ', '9028927331 ', '', 'Domestic', 'khushbubhandarkar666@gmail.com', '', '4', '8', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(429, 'LNO-080720-429', '1', 'Devanand Venkatrao Chilbile', '9970901505', '', 'Domestic', 'Chilbiledevanand@gmail.com', '', '4', '4', '58', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(430, 'LNO-080720-430', '1', 'Vijay Suryavanshi', '8983161399', '', 'Domestic', 'vijay92324@gmail.com', '', '4', '4', '58', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(431, 'LNO-080720-431', '1', 'Ashok Sonawane', '8007089960', '', 'Domestic', 'babusonawane6166@gmail.com', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(432, 'LNO-080720-432', '1', 'sawta akhade', '0010001001', '', 'Domestic', 'somthing@gmail.com', '', '4', '2', '', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(433, 'LNO-080720-433', '1', 'khandagale', '9822075129', '', 'Domestic', 'advforpeople@gmail.com', '', '4', '4', '58', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(434, 'LNO-080720-434', '1', 'Chhaya veer', '9175530488', '', 'Domestic', 'shreyaveer2020@gmail.com', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(435, 'LNO-080720-435', '1', 'Sanjay', '8378973961', '', 'Domestic', 'sanjay@gmail.com', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(436, 'LNO-080720-436', '1', 'Rohini', '8384040674', '', 'Domestic', 'rohiniagrawat@gmail.com', '', '4', '6', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(437, 'LNO-080720-437', '1', 'Vikash gaurav', '9960151677', '', 'Domestic', 'vikki.gaurav@gmail.com', '', '4', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(438, 'LNO-080720-438', '1', 'Rahul Govindwar ', '7738622294', '', 'Domestic', 'rahulgovindwar@gmail.com', '', '4', '4', '57', '2020-07-08', NULL, '2020-10-08', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(439, 'LNO-080720-439', '1', 'Vinod Sandim', '9270570758', '', 'Domestic', 'vinodsandim15@gmail.com', '', '4', '6', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(440, 'LNO-080720-440', '1', 'Chogle', '7506714555', '', 'Domestic', 'mchogle@gmail.com', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(441, 'LNO-080720-441', '1', 'Rohit Pingle', '8055715145', '', 'Domestic', 'pingle.rohit@gmail.com', '', '4', '4', '57', '2020-07-08', NULL, '2020-07-22', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(442, 'LNO-080720-442', '1', 'Vishwas Deshpande', '7219608020', '', 'Domestic', 'vishwas.deshpande@gmail.com', '', '1', '8', '51', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(443, 'LNO-080720-443', '1', 'Vidula rege', '7798593056', '', 'Domestic', 'vidularege@rediffmail.com', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(444, 'LNO-080720-444', '1', 'Beepjai', '9821345761', '', 'Domestic', 'beepjai@yahoo.com', '', '4', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(445, 'LNO-080720-445', '1', 'Christy Dchusa', '7796277077', '', 'Domestic', 'cdchusa96@gmail.com', '', '4', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(446, 'LNO-080720-446', '1', 'RC Baloni', '9958449058', '', 'Domestic', 'rameshbaloni@yahoo.co.in', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(447, 'LNO-080720-447', '1', 'AASHISH SULEBHAVI', '9764320974', '', 'Domestic', 'sulebhavi.aashish@gmail.com', '', '4', '4', '58', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(448, 'LNO-080720-448', '1', 'VIREN CHAUDHARI', '9545774545', '', 'Domestic', 'viren.chaudhari0707@gmail.com', '', '4', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(449, 'LNO-080720-449', '1', 'Smita Narayankar', '9970958749', '', 'Domestic', 'smitask22@gmail.com', '', '4', '6', '57', '2020-07-08', NULL, '2020-07-12', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(450, 'LNO-080720-450', '1', 'Sumit kumar dubey', '7906465268', '', 'Domestic', 'sumit14329@gmail.com', '', '4', '4', '57', '2020-07-08', NULL, '2020-07-10', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(451, 'LNO-080720-451', '1', 'SACHIN BONDRE', '9421336770', '', 'Domestic', 'sachin.bondre85@gmail.com', '', '4', '4', '58', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(452, 'LNO-080720-452', '1', 'Gayatri ranse ', '9172580890', '', 'Domestic', 'vijayranse83@gmail.com', '', '4', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(453, 'LNO-080720-453', '1', 'U S DINGH', '7020709327', '', 'Domestic', 'ussingh40861@gmail.com', '', '4', '6', '57', '2020-07-08', NULL, '2020-07-12', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(454, 'LNO-080720-454', '1', 'Alka sonar', '9850556638', '', 'Domestic', 'alkasonar28@gmail.com', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(455, 'LNO-080720-455', '1', 'Rishi Mehta', '9819117352', '', 'Domestic', 'rishimehta14@gmail.com', '', '4', '4', '58', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(456, 'LNO-080720-456', '1', 'Hemant', '9870777793', '', 'Domestic', 'hemant_rahatekar@rediffmail.com', '', '4', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(457, 'LNO-080720-457', '1', 'Shilpa GOUD ', '9870241109', '', 'Domestic', 'shilpgoud@gmail', '', '4', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(458, 'LNO-080720-458', '1', 'Archons Rajput', '9742985777', '', 'Domestic', 'rajutarchana@yahoo.co.in', '', '4', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', '');
INSERT INTO `leads` (`id`, `lead_id`, `dept_id`, `name`, `phone_1`, `phone_2`, `call_back_type`, `email_1`, `email_2`, `project_id`, `status_id`, `assign_to`, `inserted_date`, `updated_date`, `reassign_date`, `reassign_time`, `site_visit_done`, `site_visit_fix_project`, `site_visit_fixed`, `site_visit_not_done`, `face_to_face_done`, `important`, `client_registration_email`, `assigned_date`, `reassign`) VALUES
(459, 'LNO-080720-459', '1', 'vivek', '9421246478', '', 'Domestic', 'vivek69sail@gmail.com', '', '4', '2', '57', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(460, 'LNO-080720-460', '1', 'Kishor Choudhati ', '8308636224', '', 'Domestic', 'kishor.chaudhari253@gmail.com', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(461, 'LNO-080720-461', '1', 'Swati', '9768614415', '', 'Domestic', 'chovistas44@gmail.com', '', '4', '4', '58', '2020-07-08', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(462, 'LNO-080720-462', '1', 'pankaj negi', '8668768288', '', 'Domestic', 'pnegi73@gmail.com', '', '4', '6', '57', '2020-07-08', NULL, '2020-07-13', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(463, 'LNO-080720-463', '1', 'RAJINDER DUA', '9821552527', '', 'Domestic', 'tony.rajinder@gmail.com', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(464, 'LNO-080720-464', '1', 'Ajim Kagadi ', '9822063386', '', 'Domestic', 'ajimkagadi23@gmail.com', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(465, 'LNO-080720-465', '1', 'Ajim Kagadi ', '9822063386', '', 'Domestic', 'ajimkagadi23@gmail.com', '', '4', '2', '58', '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', ''),
(466, 'LNO-080720-466', '1', 'Anurag ', '9518793752', '', 'Domestic', 'Anuragwalse@hotmail.com', '', '4', '4', '58', '2020-07-08', NULL, '2020-07-15', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08', 'Yes'),
(467, 'LNO-090720-467', '1', 'Yogesh', '8433591371', '', 'Domestic', 'yogesh@gmail.com', '', '19', '8', '56', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(468, 'LNO-090720-468', '1', 'Sumit D', '9505585636', '', 'Domestic', 'sumitd@gmail.com', '', '18', '4', '57', '2020-07-09', NULL, '2020-07-11', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', 'Yes'),
(469, 'LNO-090720-469', '1', 'Navneet Morde', '9823109224', '', 'Domestic', 'navneetmorde@gmail.com', '', '1', '8', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(470, 'LNO-090720-470', '1', 'Vaibhav Keskar', '08884200935', '', 'Domestic', 'vaibhavkeskaremc@gmail.com', '', '2', '2', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(471, 'LNO-090720-471', '1', 'Rishabh Goyal', '8006648429', '', 'Domestic', 'rishabhgoyal@gmail.com', '', '8', '8', '58', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(472, 'LNO-090720-472', '1', 'Anand', '7875193736', '', 'Domestic', 'ranjush.m@gmail.com', '', '9', '4', '58', '2020-07-09', NULL, '2020-09-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', 'Yes'),
(473, 'LNO-090720-473', '1', 'NIKITA RAMTEKE', '0000000000', '', 'Domestic', 'nikkie.sweet99@gmail.com', '', '8', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(474, 'LNO-090720-474', '1', 'PRADEEP', '9869836970', '', 'Domestic', 'pradpa@gmail.com', '', '4', '8', '58', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(475, 'LNO-090720-475', '1', 'S CHANDRA', '9595931477', '', 'Domestic', 'schandra969@gmail.com', '', '4', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(476, 'LNO-090720-476', '1', 'Sudhir', '9411023524', '', 'Domestic', 'sudhiryadavmeerut@gmail.com', '', '4', '2', '57', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(477, 'LNO-090720-477', '1', 'Rupesh Tambe', '9820272866', '', 'Domestic', 'rupesh.tambe@gmail.com', '', '4', '2', '58', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(478, 'LNO-090720-478', '1', 'S n Thakur ', '9625324872', '', 'Domestic', 'thakurshailzanand@gmail.com', '', '4', '4', '57', '2020-07-09', NULL, '2020-07-17', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', 'Yes'),
(479, 'LNO-090720-479', '1', 'Vijay Kumar Singh', '9162777460', '', 'Domestic', 'v.kumarsingh07@gmail.com', '', '4', '2', '57', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(480, 'LNO-090720-480', '1', 'Vijay Kumar Singh', '9162777460', '', 'Domestic', 'v.kumarsingh07@gmail.com', '', '4', '2', '58', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(481, 'LNO-090720-481', '1', 'Ritesh Kulkarni', '9987876456', '', 'Domestic', 'ritesh.kulkarni4888@gmail.com', '', '4', '8', '57', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(482, 'LNO-090720-482', '1', 'Shambhu Nath Singhl', '9433514860', '', 'Domestic', 'singhsncal@yahoo.co.in', '', '4', '2', '58', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(483, 'LNO-090720-483', '1', 'Priyadarshini Patnaik', '7077700300', '', 'Domestic', 'priya.patnaik17@gmail.com', '', '4', '2', '58', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(484, 'LNO-090720-484', '1', 'Sneha', '9591958002', '', 'Domestic', 'snehascoe@gmail.com', '', '4', '8', '57', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(485, 'LNO-090720-485', '1', 'Ashvini Rahul Ghadage', '9503146533', '', 'Domestic', 'ashmandave123@gmal.com', '', '4', '8', '57', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(486, 'LNO-090720-486', '1', 'Ashvini Rahul Ghadage', '9503146533', '', 'Domestic', 'ashmandave123@gmal.com', '', '4', '2', '58', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(487, 'LNO-090720-487', '1', 'Ashvini Rahul Ghadage', '9503146533', '', 'Domestic', 'ashmandave123@gmal.com', '', '4', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(488, 'LNO-090720-488', '1', 'Ishant ', '9899988712', '', 'Domestic', 'ishant_jain34@yahoo.com', '', '4', '4', '58', '2020-07-09', NULL, '2020-07-10', '10:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', 'Yes'),
(489, 'LNO-090720-489', '1', 'Somnath Chakrabarti', '7875257165', '', 'Domestic', 'chakrabarti.somnath@gmail.com', '', '4', '2', '58', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(490, 'LNO-090720-490', '1', 'Somnath Chakrabarti', '7875257165', '', 'Domestic', 'chakrabarti.somnath@gmail.com', '', '4', '8', '57', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(491, 'LNO-090720-491', '1', 'Nilesh', '9323975353', '', 'Domestic', 'dalvi.nil2008@gmail.com', '', '4', '8', '57', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(492, 'LNO-090720-492', '1', 'TN Prasad', '9967833521', '', 'Domestic', 'tnprasad1962@gmail.com', '', '4', '2', '58', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(493, 'LNO-090720-493', '1', 'NARESH GUPTA', '9890064620', '', 'Domestic', 'nareshshubham@gmail.com', '', '4', '8', '57', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(494, 'LNO-090720-494', '1', 'NARESH GUPTA', '9890064620', '', 'Domestic', 'nareshshubham@gmail.com', '', '4', '2', '58', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(495, 'LNO-090720-495', '1', 'KABIR MALHOTRA', '9872208600', '', 'Domestic', 'kabirmalhotra79@uahoo.com', '', '4', '8', '57', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(496, 'LNO-090720-496', '1', 'Mansi Srivastava', '9923060006', '', 'Domestic', 'mansi34@rediffmail.com', '', '4', '2', '58', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(497, 'LNO-090720-497', '1', 'S D Jadhav ', '9860023971', '', 'Domestic', 'jadhavsukhlal12@gmail.com', '', '4', '8', '57', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(498, 'LNO-090720-498', '1', 'gagandeep chawla', '8793303671', '', 'Domestic', 'swincky@gmail.com', '', '4', '8', '57', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(499, 'LNO-090720-499', '1', 'Moses', '9870641028', '', 'Domestic', 'moseslobo88@gmail.com', '', '3', '6', '56', '2020-07-09', NULL, '2020-07-13', '11:30:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', 'Yes'),
(500, 'LNO-090720-500', '1', 'Charushila Kadam ', '9595996919', '', 'Domestic', 'aryamcharushila@gmail.com', '', '3', '8', '56', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(501, 'LNO-090720-501', '1', 'Abdul kadir', '9403702659', '', 'Domestic', 'abdulkadir935916@gmail.com', '', '3', '8', '56', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(502, 'LNO-090720-502', '1', 'Siddhesh shinde', '8446988883', '', 'Domestic', 'siddhesh.shinde2011@gmail.com', '', '2', '6', '50', '2020-07-09', NULL, '2020-07-13', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', 'Yes'),
(503, 'LNO-090720-503', '1', 'Mukund Chandorikar', '9822103777', '', 'Domestic', 'cmukund1012@gmail.com', '', '2', '8', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(504, 'LNO-090720-504', '1', 'Shabbir', '8407986614', '', 'Domestic', 'shabbirssayyad1970@gmail.com', '', '2', '8', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(505, 'LNO-090720-505', '1', 'Shabbir', '8407986614', '', 'Domestic', 'shabbirssayyad1970@gmail.com', '', '2', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(506, 'LNO-090720-506', '1', 'Shabbir', '8407986614', '', 'Domestic', 'shabbirssayyad1970@gmail.com', '', '2', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(507, 'LNO-090720-507', '1', 'Shabbir', '8407986614', '', 'Domestic', 'shabbirssayyad1970@gmail.com', '', '2', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(508, 'LNO-090720-508', '1', 'Shrikant ', '9765902503', '', 'Domestic', 'shrikantjadhavpune87@gmail.com', '', '2', '8', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(509, 'LNO-090720-509', '1', 'Vikas', '9028094981', '', 'Domestic', 'vikasmali@outlook.com', '', '2', '6', '50', '2020-07-09', NULL, '2020-07-13', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', 'Yes'),
(510, 'LNO-090720-510', '1', 'Dibyendu Dutta', '08806669861', '', 'Domestic', 'dibyendu.dutta2@gmail.com', '', '2', '2', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(511, 'LNO-090720-511', '1', 'Swapnil jadhav', '7620530661', '', 'Domestic', 'dnd@donotcall.com', '', '2', '2', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(512, 'LNO-090720-512', '1', 'Dharmendra mishra', '9820031913', '', 'Domestic', 'dharmendra@kataria.co.in', '', '2', '2', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(513, 'LNO-090720-513', '1', 'Vaseem shaikh', '8668724423', '', 'Domestic', 'vaseemshaikhasfriend@gmail.com', '', '2', '8', '51', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(514, 'LNO-090720-514', '1', 'N R Tayade', '9399233084', '', 'Domestic', 'nrtayade12@gmail.com', '', '2', '2', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(515, 'LNO-090720-515', '1', 'sushil kadam', '9158466717', '', 'Domestic', 'sushil.sushilkadam@gmail.com', '', '2', '4', '50', '2020-07-09', NULL, '2020-07-10', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', 'Yes'),
(516, 'LNO-090720-516', '1', 'Rohan Deshmukh', '7972572392', '', 'Domestic', 'rohandeshmukh@gmail.com', '', '9', '6', '53', '2020-07-09', NULL, '2020-07-10', '00:00:00', NULL, '9', 'Yes', NULL, NULL, NULL, NULL, '2020-07-09', 'Yes'),
(517, 'LNO-090720-517', '1', 'Ashish', '9049486615', '', 'Domestic', 'ashish71291@gmail.com', '', '2', '8', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(518, 'LNO-090720-518', '1', 'lalchand Goyal', '9148177776', '', 'Domestic', 'lpgoyal@yahoo.com', '', '2', '2', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(519, 'LNO-090720-519', '1', 'Gautam Dey', '9741655252', '', 'Domestic', 'gautamonline82@gmail.com', '', '2', '2', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(520, 'LNO-090720-520', '1', 'Vishal Ahuja', '7738090410', '', 'Domestic', 'vishalcipla@gmail.com', '', '2', '8', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(521, 'LNO-090720-521', '1', 'aniruddha saraf', '9545974436', '', 'Domestic', 'sarafaniruddha@gmail.com', '', '2', '8', '51', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(522, 'LNO-090720-522', '1', 'Tanaji Yamgar', '9892673727', '', 'Domestic', 'tanajiyamgar62@gmail.com', '', '2', '2', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(523, 'LNO-090720-523', '1', 'Madhava', '7093151246', '', 'Domestic', 'mmadhav543@gmail.co', '', '2', '6', '50', '2020-07-09', NULL, '2020-07-13', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', 'Yes'),
(524, 'LNO-090720-524', '1', 'Gray.Tom', '121479835', '', 'Domestic', 'nxejTrSfU@gmail.com', '', '2', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(525, 'LNO-090720-525', '1', 'Ajay ', '8828342669', '', 'Domestic', 'dabbyshros@gmail.com', '', '2', '2', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(526, 'LNO-090720-526', '1', 'Prakash Kamat', '09764542277', '', 'Domestic', 'kamatpn@gmail.com', '', '2', '6', '50', '2020-07-09', NULL, '2020-07-13', '12:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', 'Yes'),
(527, 'LNO-090720-527', '1', 'nidhi ', '9879513078', '', 'Domestic', 'srivastava.nidhi27@rediffmail.com', '', '2', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(528, 'LNO-090720-528', '1', 'Nilesh Ghodke', '7021097043', '', 'Domestic', 'nilesh.gho@gn', '', '2', '2', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(529, 'LNO-090720-529', '1', 'Dhananjay Apte', '9823190939', '', 'Domestic', 'dhananjayapte@yahoo.com', '', '2', '8', '51', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(530, 'LNO-090720-530', '1', 'sawta akhade', '0980000000', '', 'Domestic', 'somthing@gmail.com', '', '2', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(531, 'LNO-090720-531', '1', 'Harshal ', '9359783037', '', 'Domestic', 'harshal.patil2305@gmail.com', '', '2', '2', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(532, 'LNO-090720-532', '1', 'Shreya chauhan', '9096360088', '', 'Domestic', 'nikhar.shreya@gmail.com', '', '2', '6', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(533, 'LNO-090720-533', '1', 'Ravi ', '9594094029', '', 'Domestic', 'ravidina28@gmail.com', '', '2', '6', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(534, 'LNO-090720-534', '1', 'Preeti', '8208590822', '', 'Domestic', 'preetiuday11@gmail.com', '', '2', '8', '51', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(535, 'LNO-090720-535', '1', 'G S Patil ', '9096521195', '', 'Domestic', 'Gaurishankar1961patil@gmail.com', '', '2', '6', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(536, 'LNO-090720-536', '1', 'Anjali Ahirrao', '09823268655', '', 'Domestic', 'anjali.ahirrao@gmail.com', '', '2', '2', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(537, 'LNO-090720-537', '1', 'Shivraj Hadole', '9987128823', '', 'Domestic', 'anushkahadole@gmail.com', '', '2', '2', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(538, 'LNO-090720-538', '1', 'anurag thakur', '9860122294', '', 'Domestic', 'anuragthaakur@gmail.com', '', '2', '8', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(539, 'LNO-090720-539', '1', 'Vikesh Bailunikatatta ', '9967596390', '', 'Domestic', 'vikeshsinghvi@yahoo.co.in', '', '2', '8', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(540, 'LNO-090720-540', '1', 'Nitin Salunkhe', '9987266356', '', 'Domestic', 'nitin485@yahoo.com', '', '2', '8', '51', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(541, 'LNO-090720-541', '1', 'Bhagwat', '8805581001', '', 'Domestic', 'advvaishaliatrebhagwat@gmail.com', '', '2', '2', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(542, 'LNO-090720-542', '1', 'Rajesh Nayak', '818000000000', '', 'Domestic', 'rajesh.nayak@hotmail.com', '', '2', '2', '48', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(543, 'LNO-090720-543', '1', 'Sandip Medhe', '9595130600', '', 'Domestic', 'sandeepmedhe@gmail.com', '', '2', '8', '57', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(544, 'LNO-090720-544', '1', 'testing', '9876756789', '', 'Domestic', 'a@gmail.com', '', '2', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(545, 'LNO-090720-545', '1', 'test', '0000000000', '', 'Domestic', 't@gmail.com', '', '6', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(546, 'LNO-090720-546', '1', 'w', '3333333333', '', 'Domestic', 'w@g.com', '', '6', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(547, 'LNO-090720-547', '1', 'a', '9999888774', '', 'Domestic', 'a@g.com', '', '6', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(548, 'LNO-090720-548', '1', 'b', '9876543000', '', 'Domestic', 'sing@gmail.com', '', '6', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(549, 'LNO-090720-549', '1', 'aka', '1230012141', '', 'Domestic', 'aserf@gmail.com', '', '6', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(550, 'LNO-090720-550', '1', 'dfsh', '9876543210', '', 'Domestic', 'a@gmail.com', '', '1', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(551, 'LNO-090720-551', '1', 'hrjhsrfj', '0000000000', '', 'Domestic', 'a@yahoo.com', '', '1', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(552, 'LNO-090720-552', '1', 'BHAVINI HEMANT PRABHU', '9112288278', '', 'Domestic', 'hemant.prabhu@gmail.com', '', '1', '2', '', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(553, 'LNO-090720-553', '1', 'Bhavna', '9545556406', '', 'Domestic', 'supervijan.bhavna@gmail.com', '', '2', '2', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(554, 'LNO-090720-554', '1', 'ISHMEET SINGH', '9953852387', '', 'Domestic', 'singh25ishmeet@gmail.com', '', '2', '2', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(555, 'LNO-090720-555', '1', 'Rahul more', '9607753006', '', 'Domestic', 'rahulmore170599@gmail.com', '', '2', '4', '50', '2020-07-09', NULL, '2020-07-13', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', 'Yes'),
(556, 'LNO-090720-556', '1', 'Naresh Pawar ', '9422538747', '', 'Domestic', 'nareshpawar7273@gmail.com', '', '2', '2', '50', '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-09', ''),
(557, 'LNO-100720-557', '1', 'Swati Thokal', '7767029767', '', 'Domestic', 'ssthokal7@gmail.com', '', '9', '8', '48', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', ''),
(558, 'LNO-100720-558', '1', 'qaa', '8888888888 ', '', 'Domestic', 'aaa@yahoo.com', '', '8', '2', '', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(559, 'LNO-100720-559', '1', 'akash patil', '9405050557', '', 'Domestic', 'akash23494@gmail.com', '', '9', '6', '53', '2020-07-10', NULL, '2020-07-11', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', 'Yes'),
(560, 'LNO-100720-560', '1', 'Shikeb', '954507678', '', 'Domestic', 'shikebrizvi161@gmail.com', '', '8', '2', '', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(561, 'LNO-100720-561', '1', 'Rohit Singh', '8485886685', '', 'Domestic', 'gdp.pcmc@gmail.com', '', '9', '8', '50', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', ''),
(562, 'LNO-100720-562', '1', 'Snehal Kamble', '9822609562', '', 'Domestic', 'snehalkamble0312@gmail.com', '', '2', '6', '57', '2020-07-10', NULL, '2020-07-11', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', 'Yes'),
(563, 'LNO-100720-563', '1', 'Pallavi Ajay Patil', '08237831978', '', 'Domestic', 'pallavi030350@yahoo.com', '', '2', '8', '48', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', ''),
(564, 'LNO-100720-564', '1', 'rahul shinde', '8600848173', '', 'Domestic', 'rahoolnew@gmail.com', '', '2', '8', '51', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', ''),
(565, 'LNO-100720-565', '1', 'akshay ', '9552250039', '', 'Domestic', 'harshadamahure86@gmail.com', '', '2', '8', '48', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', ''),
(566, 'LNO-100720-566', '1', 'Poonam ', '09049002279', '', 'Domestic', 'cool.poonamd@rediffmail.com', '', '2', '8', '50', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', ''),
(567, 'LNO-100720-567', '1', 'Mayank Sinha', '09022313664', '', 'Domestic', 'mayank.sinha71@gmail.com', '', '2', '8', '48', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', ''),
(568, 'LNO-100720-568', '1', 'Yuwraj  ', '7709528955', '', 'Domestic', 'shahareyuwraj@gmail.com', '', '2', '8', '51', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', ''),
(569, 'LNO-100720-569', '1', 'Kapil Khiara', '9833017770', '', 'Domestic', 'kapilkhiara@gmail.com', '', '2', '8', '48', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', ''),
(570, 'LNO-100720-570', '1', 'Shridhar krishna ki barsawade', '7720870649', '', 'Domestic', 'shridharbarsawade1964@gmail.com', '', '2', '8', '50', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', ''),
(571, 'LNO-100720-571', '1', 'DEEPAK P JAGYASI', '9822636186', '', 'Domestic', 'jagyasideepak123@gmail.com', '', '2', '8', '50', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', ''),
(572, 'LNO-100720-572', '1', 'Khedekar', '9423577294', '', 'Domestic', 'Khedekarg@gmail.com', '', '1', '4', '57', '2020-07-10', NULL, '2020-07-11', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', 'Yes'),
(573, 'LNO-100720-573', '1', 'Nita', '8888164883', '', 'Domestic', 'nita477@gmail.com', '', '2', '8', '51', '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', '');

-- --------------------------------------------------------

--
-- Table structure for table `lead_status`
--

CREATE TABLE `lead_status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead_status`
--

INSERT INTO `lead_status` (`status_id`, `status_name`) VALUES
(1, 'Close'),
(2, 'Dead'),
(3, 'Face 2 face'),
(4, 'Follow up'),
(5, 'Hot'),
(6, 'In process'),
(7, 'Negotiating'),
(8, 'New'),
(9, 'Re-assign'),
(10, 'Semi-hot'),
(11, 'SVD-folloup'),
(12, 'Unit blocked');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`) VALUES
(1, 'koltepatildevelopers'),
(2, 'life-republic'),
(3, 'prideparkconnect'),
(4, 'vtpbluewaterstownship'),
(5, 'vtphilife'),
(6, 'godrejhillsides'),
(7, 'Western Avenue'),
(8, 'VJ Yashone Central'),
(9, 'VJ Yashone Mann'),
(10, 'VJ Encore'),
(11, 'TCG Cliff Garden'),
(12, 'I trend Hinjewadi'),
(13, 'Rama Metro Life'),
(14, 'Ganga Amber'),
(15, 'Kumar Megapolis Hinjewadi'),
(16, 'Avon Vista'),
(17, 'Majestic Towers Kharadi'),
(18, 'I Trend Life'),
(19, 'Pride Homepage '),
(20, 'Shapoorji Pallonji Tornado');

-- --------------------------------------------------------

--
-- Table structure for table `site_visit_done`
--

CREATE TABLE `site_visit_done` (
  `id` int(11) NOT NULL,
  `lead_id` varchar(45) DEFAULT NULL,
  `lead_unique_id` varchar(45) DEFAULT NULL,
  `clientEmail` varchar(100) DEFAULT NULL,
  `sitevisit_date` date DEFAULT NULL,
  `site_assing_by` varchar(100) DEFAULT NULL,
  `relation_manager` varchar(100) DEFAULT NULL,
  `mail_box` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(45) DEFAULT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone_1` varchar(20) DEFAULT NULL,
  `phone_2` varchar(20) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `team_manager` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password_string` varchar(45) DEFAULT NULL,
  `session_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `address`, `phone_1`, `phone_2`, `city`, `branch`, `role`, `team_manager`, `username`, `password`, `status`, `email`, `password_string`, `session_id`) VALUES
(1, 'Faizan', 'Darga', 'wisteria Fortune, Wakad', '9008917130', '', 'Pune', '', 'Admin', NULL, 'admin', '$2y$10$aHOz9vtO1W9wkOCZ/dYWnepz2pAUy.R.n.ciIQ.N/Jv7VVNJaQCtC', '1', 'faizan@holdingbricks.com', NULL, 'ypckYqJSFMgW5HtX'),
(46, 'Muzaffar', 'Hussain', 'Wisteria Fortune , Wakad, Pune', '7387358948', '', 'Pune', '1', 'manager', NULL, 'HB-P-012', NULL, '1', 'mhhussain66@gmail.com', 'FCHNL7a0o9InPcG1-npassword', NULL),
(47, 'Lokesh', 'Garg', 'Wisteria Fortune , Wakad, Pune', '9592902719', '9607240054', 'Pune', '1', 'sales', '44', 'HB-P-020', '$2y$10$GFb8XgtXPxoVy5Zgx6/Xm.lxJX05VsNzQO.hfUOYOkCzEHeW7dgsy', '1', 'lokesh@holdingbricks.com', NULL, 'ufvKybph2wkRlMNd'),
(48, 'Siddhant', 'Singh', 'Wisteria Fortune , Wakad, Pune', '8669668616', '9811725672', 'Pune', '1', 'sales', '46', 'HB-P-015', '$2y$10$1ffAAwxzjf1TxmVlaPaaoOe28zQQDYF0FHDIekSeah1KZj0eTUuce', '1', 'siddhant.singh@holdingbricks.com', NULL, 'zOHcJmMFLTSEDbxy'),
(50, 'Siddhanth', 'Ingle', 'Wisteria Fortune , Wakad, Pune', '9112855696', '', 'Pune', '1', 'sales', '46', 'HB-P-019', '$2y$10$p/BrX/b4RFxK12lBTc0s/.Vu4bfKQIyOI666HhrwuVCeaAv8BdB1e', '1', 'siddhanth.ingle@holdingbricks.com', NULL, 'rlQMFqTo7LcpXJs8'),
(51, 'Vijay', 'Yelase', 'Wisteria Fortune,  Wakad ', '8669668614', '', 'Pune', '1', 'sales', '46', 'HB-P-021', '$2y$10$EWMaiRwMEUxBwgEpJse/yOt1s3e.vAYTetfBJ.q7Q9XccJBx2qMFS', '1', 'yelasevijay@gmail.com', 'HftipFjrInNlJdSY-fpassword', 'uRBVjPyTE0eIWkh6'),
(53, 'Vikrant', 'Datekar', 'Wisteria Fortune , Wakad, Pune', '8669668621', '', 'Pune', '1', 'sales', '46', 'HB-P-016', '$2y$10$JY1TXosZemTr/jJQFyPASOkkhnlqp6XazpWy3MPDgvFemyDbNiNAK', '1', 'vikrant@holdingbricks.com', 'psXKQCLOJUFu9g56-fpassword', 'dNzWlgxtbnc2Lemk'),
(54, 'Cheten', 'Chinchole', 'Wisteria Fortune , Wakad, Pune', '8669668612', '', 'Pune', '1', 'sales', '46', 'HB-P-022', '$2y$10$Jq/o4cIrYITPdb1VP.rjHuwam/dDkqUeDYh9dSNNwlff6ECHtkm6q', '1', 'chetan@holdingbricks.com', NULL, 'ERIbOW1Uh9omP7wL'),
(55, 'Sourabh', 'Tumari', 'C-506 Wisteria Fortune , Wakad, Pune', '8669668618', '9008776515', 'Pune', '1', 'sales', '46', 'HB-P-018', '$2y$10$ecbNU.KSs211Bs60U2J4Hu//mmRk79NFNDPSmoJRwl0YBgd8VA.4u', '1', 'sourabh.st01@gmail.com', NULL, 'ne2Ldwhu34TNDba7'),
(56, 'Kunal', 'Fulzele', 'Old Sangvi, pune', '7744029579', '', 'Pune', '1', 'sales', '46', 'HB-P-013', '$2y$10$F7L7emPOYHdEjcwzTbcKuOJEVZOdEw.QQlJ9JiiEW9Qsp.KZgilAi', '1', 'kunal@holdingbricks.com', NULL, 'v9DpHBs4fjMKFqPm'),
(57, 'Gaurav', 'Sawarkar', 'C 506 wisteriaa fortune wakad', '7709488758', '', 'Pune', '1', 'sales', '46', 'HB-P-023', '$2y$10$xfxdRVTxfQ3GL9cT5v5J3eiGSiJGDqdWsegBKrDNbNcLDcu4prL4G', '1', 'gaurav.sawarkar@holdingbricks.com', NULL, 'nmbM06fLDsuq9Sre'),
(58, 'Rugved', 'Umbarkar', 'wisteria Fortune wakad', '8669668620', '', 'Pune', '1', 'sales', '46', 'HB-P-024', '$2y$10$tqkZUQaU4Vd5R4ezIL8mTeKV69gtvRl/YkeN79VGFrdWo7DmW/ROy', '1', 'rugved.s.umbarkar@gmail.com', NULL, 'DWeGhqoxlc61BCf9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `callbacks`
--
ALTER TABLE `callbacks`
  ADD PRIMARY KEY (`callback_id`);

--
-- Indexes for table `Calls`
--
ALTER TABLE `Calls`
  ADD PRIMARY KEY (`call_id`);

--
-- Indexes for table `close_leads`
--
ALTER TABLE `close_leads`
  ADD PRIMARY KEY (`close_lead_id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `enquiry_lead`
--
ALTER TABLE `enquiry_lead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `lead_status`
--
ALTER TABLE `lead_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `site_visit_done`
--
ALTER TABLE `site_visit_done`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `callbacks`
--
ALTER TABLE `callbacks`
  MODIFY `callback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT for table `Calls`
--
ALTER TABLE `Calls`
  MODIFY `call_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `close_leads`
--
ALTER TABLE `close_leads`
  MODIFY `close_lead_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `enquiry_lead`
--
ALTER TABLE `enquiry_lead`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT for table `lead_status`
--
ALTER TABLE `lead_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `site_visit_done`
--
ALTER TABLE `site_visit_done`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
