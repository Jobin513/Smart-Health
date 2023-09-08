-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2023 at 04:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smarthealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int(11) NOT NULL,
  `issue_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `issue_name`) VALUES
(170, 'Abortion'),
(509, 'Accumulation of fluid in the scrotum'),
(113, 'Acute inflammation of lung'),
(495, 'Bloated belly'),
(211, 'Chronic tiredness syndrome'),
(80, 'Cold'),
(53, 'Constipation'),
(86, 'Coronary heart disease'),
(47, 'Depression'),
(266, 'Disturbed testicular descent'),
(431, 'Drug side effect'),
(237, 'Erection problems'),
(181, 'Excessive feeling of fear'),
(11, 'Flu'),
(281, 'Food poisoning'),
(107, 'German measles'),
(104, 'Headache'),
(87, 'Heart attack'),
(434, 'Heart racing'),
(130, 'Hernia'),
(209, 'Huntington\'s disease'),
(15, 'Hypersensitivity reaction'),
(83, 'Inflammation of the brain covering membranes'),
(235, 'Inflammation of the epididymis'),
(44, 'Inflammation of the nose and throat'),
(504, 'Inflammation of the prostate'),
(331, 'Inflammation of the testes'),
(131, 'Joint infection'),
(324, 'Kidney stones'),
(109, 'Kissing disease'),
(166, 'Listeria infection'),
(51, 'Loose watery stools'),
(79, 'Lyme disease'),
(357, 'Malignant prostate cancer'),
(50, 'Menopause'),
(489, 'Menstrual cramps'),
(347, 'Narrowing of foreskin'),
(167, 'Obstruction of a pulmonary artery'),
(446, 'Pregnancy'),
(18, 'Reflux disease'),
(376, 'Scarlet fever'),
(68, 'Shaking palsy'),
(67, 'Sick headache'),
(103, 'Slipped disc'),
(19, 'Smoking'),
(510, 'Sperm cyst'),
(476, 'Stomach bleeding'),
(488, 'Strain of the back muscles'),
(151, 'Torsion of testes'),
(497, 'Tubal and ovarian inflammation'),
(59, 'Urinary tract infection');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `id` int(11) NOT NULL,
  `symptom_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`id`, `symptom_name`) VALUES
(10, 'Abdominal pain'),
(238, 'Anxiety'),
(104, 'Back pain'),
(75, 'Burning eyes'),
(46, 'Burning in the throat'),
(170, 'Cheek swelling'),
(17, 'Chest pain'),
(31, 'Chest tightness'),
(175, 'Chills'),
(139, 'Cold sweats'),
(15, 'Cough'),
(207, 'Dizziness'),
(244, 'Drooping eyelid'),
(273, 'Dry eyes'),
(87, 'Earache'),
(92, 'Early satiety'),
(287, 'Eye pain'),
(33, 'Eye redness'),
(153, 'Fast, deepened breathing'),
(76, 'Feeling of foreign body in the eye'),
(11, 'Fever'),
(57, 'Going black before the eyes'),
(9, 'Headache'),
(45, 'Heartburn'),
(122, 'Hiccups'),
(149, 'Hot flushes'),
(40, 'Increased thirst'),
(73, 'Itching eyes'),
(96, 'Itching in the nose'),
(35, 'Lip swelling'),
(235, 'Memory gap'),
(112, 'Menstruation disorder'),
(123, 'Missed period'),
(44, 'Nausea'),
(136, 'Neck pain'),
(114, 'Nervousness'),
(133, 'Night cough'),
(12, 'Pain in the limbs'),
(203, 'Pain on swallowing'),
(37, 'Palpitations'),
(140, 'Paralysis'),
(54, 'Reduced appetite'),
(14, 'Runny nose'),
(29, 'Shortness of breath'),
(124, 'Skin rash'),
(52, 'Sleeplessness'),
(95, 'Sneezing'),
(13, 'Sore throat'),
(64, 'Sputum'),
(179, 'Stomach burning'),
(28, 'Stuffy nose'),
(138, 'Sweating'),
(248, 'Swollen glands in the armpits'),
(169, 'Swollen glands on the neck'),
(211, 'Tears'),
(16, 'Tiredness'),
(115, 'Tremor at rest'),
(144, 'Unconsciousness, short'),
(101, 'Vomiting'),
(181, 'Vomiting blood'),
(56, 'Weakness'),
(23, 'Weight gain'),
(30, 'Wheezing');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms_issues`
--

CREATE TABLE `symptoms_issues` (
  `id` int(11) NOT NULL,
  `symptom_id` int(11) DEFAULT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `accuracy` decimal(10,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptoms_issues`
--

INSERT INTO `symptoms_issues` (`id`, `symptom_id`, `issue_id`, `gender`, `accuracy`) VALUES
(2, 9, 104, 'Male', 90.00000),
(3, 9, 67, 'Male', 83.07692),
(4, 9, 11, 'Male', 41.53846),
(5, 9, 80, 'Male', 27.69231),
(6, 10, 495, 'Male', 90.00000),
(7, 10, 53, 'Male', 45.00000),
(8, 10, 281, 'Male', 33.75000),
(9, 10, 51, 'Male', 22.50000),
(10, 10, 324, 'Male', 9.99000),
(11, 10, 59, 'Male', 9.28125),
(12, 10, 130, 'Male', 9.11250),
(13, 11, 80, 'Male', 90.00000),
(14, 11, 11, 'Male', 67.50000),
(15, 11, 113, 'Male', 51.92308),
(16, 11, 44, 'Male', 12.11539),
(17, 11, 109, 'Male', 9.69231),
(18, 12, 80, 'Male', 90.00000),
(19, 12, 11, 'Male', 67.50000),
(20, 13, 44, 'Male', 90.00000),
(21, 13, 80, 'Male', 43.20000),
(22, 13, 11, 'Male', 40.50000),
(23, 13, 109, 'Male', 10.08000),
(24, 14, 11, 'Male', 90.00000),
(25, 14, 80, 'Male', 68.57143),
(26, 14, 15, 'Male', 38.54572),
(27, 14, 19, 'Male', 32.14286),
(28, 14, 44, 'Male', 26.78572),
(29, 15, 80, 'Male', 90.00000),
(30, 15, 15, 'Male', 63.23906),
(31, 15, 18, 'Male', 56.25000),
(32, 15, 113, 'Male', 52.73438),
(33, 15, 11, 'Male', 50.62500),
(34, 15, 19, 'Male', 37.96875),
(35, 15, 44, 'Male', 14.06250),
(36, 15, 431, 'Male', 11.25000),
(37, 16, 80, 'Male', 90.00000),
(38, 16, 47, 'Male', 72.00000),
(39, 16, 11, 'Male', 67.50000),
(40, 16, 431, 'Male', 67.50000),
(41, 16, 15, 'Male', 67.45499),
(42, 16, 109, 'Male', 21.60000),
(43, 16, 211, 'Male', 20.25000),
(44, 17, 18, 'Male', 90.00000),
(45, 17, 86, 'Male', 72.00000),
(46, 17, 87, 'Male', 24.00000),
(47, 17, 181, 'Male', 22.20000),
(48, 17, 11, 'Male', 18.00000),
(49, 17, 167, 'Male', 12.00000),
(50, 23, 47, 'Male', 90.00000),
(51, 23, 53, 'Male', 45.00000),
(52, 23, 431, 'Male', 22.50000),
(53, 28, 11, 'Male', 90.00000),
(54, 28, 80, 'Male', 70.58823),
(55, 28, 19, 'Male', 26.47059),
(56, 29, 11, 'Male', 90.00000),
(57, 29, 113, 'Male', 90.00000),
(58, 29, 15, 'Male', 44.97000),
(59, 29, 167, 'Male', 43.50000),
(60, 29, 86, 'Male', 19.20000),
(61, 30, 15, 'Male', 90.00000),
(62, 31, 86, 'Male', 90.00000),
(63, 31, 87, 'Male', 45.00000),
(64, 31, 181, 'Male', 45.00000),
(65, 31, 167, 'Male', 9.00000),
(66, 33, 15, 'Male', 89.99999),
(67, 35, 15, 'Male', 90.00000),
(68, 35, 431, 'Male', 15.01001),
(69, 37, 434, 'Male', 90.00000),
(70, 37, 181, 'Male', 20.45455),
(71, 37, 431, 'Male', 11.25000),
(72, 40, 431, 'Male', 90.00000),
(73, 44, 281, 'Male', 90.00000),
(74, 44, 67, 'Male', 89.10000),
(75, 44, 19, 'Male', 27.00000),
(76, 44, 15, 'Male', 26.98200),
(77, 44, 431, 'Male', 22.50000),
(78, 44, 104, 'Male', 18.00000),
(79, 45, 18, 'Male', 90.00000),
(80, 45, 431, 'Male', 27.00000),
(81, 45, 86, 'Male', 10.80000),
(82, 45, 281, 'Male', 9.00000),
(83, 46, 18, 'Male', 90.00000),
(84, 46, 44, 'Male', 60.00000),
(85, 46, 11, 'Male', 54.00000),
(86, 46, 80, 'Male', 48.00000),
(87, 52, 47, 'Male', 90.00000),
(88, 52, 19, 'Male', 11.25000),
(89, 54, 47, 'Male', 90.00000),
(90, 54, 11, 'Male', 61.36364),
(91, 54, 15, 'Male', 30.66136),
(92, 56, 80, 'Male', 90.00000),
(93, 57, 86, 'Male', 90.00000),
(94, 57, 87, 'Male', 67.49999),
(95, 57, 167, 'Male', 28.12500),
(96, 64, 19, 'Male', 90.00000),
(97, 64, 80, 'Male', 75.00000),
(98, 64, 11, 'Male', 73.12500),
(99, 64, 113, 'Male', 56.25000),
(100, 73, 15, 'Male', 89.99999),
(101, 73, 431, 'Male', 42.88573),
(102, 75, 15, 'Male', 89.99999),
(103, 75, 431, 'Male', 42.88573),
(104, 76, 15, 'Male', 89.99999),
(105, 87, 44, 'Male', 90.00000),
(106, 92, 18, 'Male', 90.00000),
(107, 92, 53, 'Male', 90.00000),
(108, 95, 80, 'Male', 90.00000),
(109, 95, 11, 'Male', 67.50000),
(110, 95, 15, 'Male', 33.72750),
(111, 96, 15, 'Male', 90.00000),
(112, 101, 281, 'Male', 90.00000),
(113, 101, 67, 'Male', 43.20000),
(114, 104, 103, 'Male', 90.00000),
(115, 104, 488, 'Male', 72.00000),
(116, 104, 324, 'Male', 13.32000),
(117, 114, 181, 'Male', 90.00000),
(118, 115, 431, 'Male', 90.00000),
(119, 115, 181, 'Male', 76.49999),
(120, 122, 18, 'Male', 90.00000),
(121, 122, 431, 'Male', 22.50000),
(122, 124, 15, 'Male', 90.00000),
(123, 124, 107, 'Male', 30.02001),
(124, 133, 15, 'Male', 90.00000),
(125, 136, 103, 'Male', 90.00000),
(126, 138, 11, 'Male', 90.00000),
(127, 138, 181, 'Male', 60.00000),
(128, 138, 431, 'Male', 45.00000),
(129, 139, 181, 'Male', 90.00000),
(130, 139, 86, 'Male', 53.99999),
(131, 139, 87, 'Male', 31.50000),
(132, 140, 79, 'Male', 90.00000),
(133, 144, 15, 'Male', 90.00000),
(134, 144, 86, 'Male', 48.03202),
(135, 144, 87, 'Male', 36.02401),
(136, 144, 167, 'Male', 36.02401),
(137, 149, 181, 'Male', 90.00000),
(138, 153, 181, 'Male', 90.00000),
(139, 169, 80, 'Male', 90.00000),
(140, 169, 11, 'Male', 56.25000),
(141, 169, 44, 'Male', 37.50000),
(142, 169, 109, 'Male', 19.50000),
(143, 170, 15, 'Male', 90.00000),
(144, 175, 11, 'Male', 90.00000),
(145, 175, 113, 'Male', 20.76923),
(146, 179, 18, 'Male', 90.00000),
(147, 179, 431, 'Male', 67.50000),
(148, 181, 18, 'Male', 90.00000),
(149, 181, 476, 'Male', 60.00000),
(150, 181, 431, 'Male', 15.00000),
(151, 203, 44, 'Male', 90.00000),
(152, 203, 18, 'Male', 75.00000),
(153, 203, 431, 'Male', 15.00000),
(154, 207, 431, 'Male', 90.00000),
(155, 211, 15, 'Male', 90.00000),
(156, 235, 431, 'Male', 90.00000),
(157, 235, 181, 'Male', 78.00000),
(158, 238, 181, 'Male', 90.00000),
(159, 238, 47, 'Male', 72.00000),
(160, 248, 109, 'Male', 90.00000),
(161, 273, 431, 'Male', 90.00000),
(162, 112, 446, 'Female', 90.00000),
(163, 123, 446, 'Female', 90.00000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `username` char(45) NOT NULL,
  `password` char(45) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `cpassword` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`, `Email`, `cpassword`) VALUES
(1, 'jobin513', '123', 'jobin@gmail.com', ''),
(6, 'doc', '123', 'doc@gmail.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `disease_name` (`issue_name`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `symptom_name` (`symptom_name`);

--
-- Indexes for table `symptoms_issues`
--
ALTER TABLE `symptoms_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `symptom_id` (`symptom_id`),
  ADD KEY `disease_id` (`issue_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `symptoms_issues`
--
ALTER TABLE `symptoms_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `symptoms_issues`
--
ALTER TABLE `symptoms_issues`
  ADD CONSTRAINT `symptoms_issues_ibfk_1` FOREIGN KEY (`symptom_id`) REFERENCES `symptoms` (`id`),
  ADD CONSTRAINT `symptoms_issues_ibfk_2` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
