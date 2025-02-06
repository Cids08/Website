-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2025 at 06:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animal_bite_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `patientrecord`
--

CREATE TABLE `patientrecord` (
  `PatientID` int(11) NOT NULL,
  `PatientName` varchar(100) NOT NULL,
  `Age` int(11) NOT NULL,
  `Sex` enum('Male','Female','Other') NOT NULL,
  `ExposureDate` date NOT NULL,
  `Baranggay` varchar(100) NOT NULL,
  `Place` varchar(100) NOT NULL,
  `Animal` varchar(50) NOT NULL,
  `ExposureType` enum('Bite','Scratch','Other') NOT NULL,
  `BiteSite` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientrecord`
--

INSERT INTO `patientrecord` (`PatientID`, `PatientName`, `Age`, `Sex`, `ExposureDate`, `Baranggay`, `Place`, `Animal`, `ExposureType`, `BiteSite`) VALUES
(1, 'Mateo', 18, 'Male', '2025-02-03', 'Pob. Kanluran', 'Outdoor', 'Dog', 'Bite', 'Legs'),
(2, 'amanda', 22, 'Female', '2025-02-04', 'Perez', 'Indoor', 'Cat', 'Scratch', 'Hands'),
(3, 'niko', 25, 'Male', '2025-02-25', 'Imok', 'Outdoor', 'Dog', 'Bite', 'Thighs'),
(4, 'Markos', 30, 'Male', '2025-02-19', 'Hanggan', 'Outdoor', 'Dog', 'Bite', 'Legs'),
(5, 'markov', 23, 'Male', '2025-02-06', 'Masiit', 'Indoor', 'Hamster', 'Bite', 'Hands'),
(6, 'Juan Dela Cruz', 25, 'Male', '2025-02-03', 'Balayhangin', 'Indoor', 'Dog', 'Bite', 'Hands'),
(7, 'Maria Santos', 34, 'Female', '2025-02-04', 'Bangyas', 'Outdoor', 'Cat', 'Scratch', 'Arms'),
(8, 'Pedro Reyes', 45, 'Male', '2025-02-05', 'Dayap', 'Indoor', 'Hamster', 'Scratch', 'Legs'),
(9, 'Ana Lopez', 29, 'Female', '2025-02-06', 'Hanggan', 'Outdoor', 'Lizard', 'Bite', 'Thighs'),
(10, 'Luis Garcia', 50, 'Male', '2025-02-07', 'Imok', 'Indoor', 'Bird', 'Scratch', 'Feet'),
(11, 'Carmen Rivera', 38, 'Female', '2025-02-08', 'Lamot I', 'Outdoor', 'Mouse', 'Bite', 'Face'),
(12, 'Jose Torres', 60, 'Male', '2025-02-09', 'Lamot II', 'Indoor', 'Rabbit', 'Bite', 'Neck'),
(13, 'Sofia Mendoza', 22, 'Female', '2025-02-10', 'Limao', 'Outdoor', 'Turtle', 'Scratch', 'Head'),
(14, 'Andres Cruz', 55, 'Male', '2025-02-11', 'Mabacan', 'Indoor', 'Monkey', 'Bite', 'Hands'),
(15, 'Teresa Gomez', 40, 'Female', '2025-02-12', 'Masiit', 'Outdoor', 'Pig', 'Bite', 'Arms'),
(16, 'Ramon Aquino', 65, 'Male', '2025-02-13', 'Paliparan', 'Indoor', 'Fish', 'Scratch', 'Legs'),
(17, 'Elena Ramos', 28, 'Female', '2025-02-14', 'Perez', 'Outdoor', 'Dog', 'Bite', 'Thighs'),
(18, 'Fernando Santiago', 70, 'Male', '2025-02-15', 'Prinza', 'Indoor', 'Cat', 'Scratch', 'Feet'),
(19, 'Lourdes Morales', 33, 'Female', '2025-02-16', 'Pob. Kanluran', 'Outdoor', 'Hamster', 'Bite', 'Face'),
(20, 'Ricardo Castro', 48, 'Male', '2025-02-17', 'Pob. Silangan', 'Indoor', 'Lizard', 'Scratch', 'Neck'),
(21, 'Isabel Ortega', 52, 'Female', '2025-02-18', 'San Isidro', 'Outdoor', 'Bird', 'Bite', 'Head'),
(22, 'Alfredo Navarro', 75, 'Male', '2025-02-19', 'Santo Tomas', 'Indoor', 'Mouse', 'Scratch', 'Hands'),
(23, 'Rosario Del Rosario', 30, 'Female', '2025-02-20', 'Balayhangin', 'Outdoor', 'Rabbit', 'Bite', 'Arms'),
(24, 'Roberto Lim', 42, 'Male', '2025-02-21', 'Bangyas', 'Indoor', 'Turtle', 'Scratch', 'Legs'),
(25, 'Conchita Tan', 58, 'Female', '2025-02-22', 'Dayap', 'Outdoor', 'Monkey', 'Bite', 'Thighs'),
(26, 'Manuel Sy', 62, 'Male', '2025-02-23', 'Hanggan', 'Indoor', 'Pig', 'Scratch', 'Feet'),
(27, 'Dolores Ong', 36, 'Female', '2025-02-24', 'Imok', 'Outdoor', 'Fish', 'Bite', 'Face'),
(28, 'Eduardo Chua', 80, 'Male', '2025-02-25', 'Lamot I', 'Indoor', 'Dog', 'Scratch', 'Neck'),
(29, 'Patricia Lim', 27, 'Female', '2025-02-26', 'Lamot II', 'Outdoor', 'Cat', 'Bite', 'Head'),
(30, 'Antonio Go', 49, 'Male', '2025-02-27', 'Limao', 'Indoor', 'Hamster', 'Scratch', 'Hands'),
(31, 'Cecilia Yu', 44, 'Female', '2025-02-28', 'Mabacan', 'Outdoor', 'Lizard', 'Bite', 'Arms'),
(32, 'Rogelio Tan', 68, 'Male', '2025-03-01', 'Masiit', 'Indoor', 'Bird', 'Scratch', 'Legs'),
(33, 'Angelita Uy', 53, 'Female', '2025-03-02', 'Paliparan', 'Outdoor', 'Mouse', 'Bite', 'Thighs'),
(34, 'Benjamin Co', 72, 'Male', '2025-03-03', 'Perez', 'Indoor', 'Rabbit', 'Scratch', 'Feet'),
(35, 'Lydia Chan', 39, 'Female', '2025-03-04', 'Prinza', 'Outdoor', 'Turtle', 'Bite', 'Face'),
(36, 'amanda Esteban', 24, 'Female', '2025-02-04', 'Prinza', 'Outdoor', 'Cat', 'Bite', 'Arms'),
(37, 'Carlos Manalo', 32, 'Male', '2025-03-05', 'Balayhangin', 'Indoor', 'Dog', 'Bite', 'Hands'),
(38, 'Maricel Pascual', 27, 'Female', '2025-03-06', 'Bangyas', 'Outdoor', 'Cat', 'Scratch', 'Arms'),
(39, 'Reynaldo Santos', 44, 'Male', '2025-03-07', 'Dayap', 'Indoor', 'Hamster', 'Scratch', 'Legs'),
(40, 'Lorna Dela Cruz', 31, 'Female', '2025-03-08', 'Hanggan', 'Outdoor', 'Lizard', 'Bite', 'Thighs'),
(41, 'Arnel Gomez', 56, 'Male', '2025-03-09', 'Imok', 'Indoor', 'Bird', 'Scratch', 'Feet'),
(42, 'Cynthia Reyes', 39, 'Female', '2025-03-10', 'Lamot I', 'Outdoor', 'Mouse', 'Bite', 'Face'),
(43, 'Dante Mendoza', 61, 'Male', '2025-03-11', 'Lamot II', 'Indoor', 'Rabbit', 'Bite', 'Neck'),
(44, 'Evelyn Torres', 26, 'Female', '2025-03-12', 'Limao', 'Outdoor', 'Turtle', 'Scratch', 'Head'),
(45, 'Felipe Castro', 48, 'Male', '2025-03-13', 'Mabacan', 'Indoor', 'Monkey', 'Bite', 'Hands'),
(46, 'Gina Aquino', 37, 'Female', '2025-03-14', 'Masiit', 'Outdoor', 'Pig', 'Bite', 'Arms'),
(47, 'Hector Lim', 59, 'Male', '2025-03-15', 'Paliparan', 'Indoor', 'Fish', 'Scratch', 'Legs'),
(48, 'Irene Santiago', 29, 'Female', '2025-03-16', 'Perez', 'Outdoor', 'Dog', 'Bite', 'Thighs'),
(49, 'Jerry Morales', 63, 'Male', '2025-03-17', 'Prinza', 'Indoor', 'Cat', 'Scratch', 'Feet'),
(50, 'Karen Navarro', 35, 'Female', '2025-03-18', 'Pob. Kanluran', 'Outdoor', 'Hamster', 'Bite', 'Face'),
(51, 'Leonardo Cruz', 52, 'Male', '2025-03-19', 'Pob. Silangan', 'Indoor', 'Lizard', 'Scratch', 'Neck'),
(52, 'Mila Ortega', 41, 'Female', '2025-03-20', 'San Isidro', 'Outdoor', 'Bird', 'Bite', 'Head'),
(53, 'Nestor Del Rosario', 68, 'Male', '2025-03-21', 'Santo Tomas', 'Indoor', 'Mouse', 'Scratch', 'Hands'),
(54, 'Olivia Tan', 33, 'Female', '2025-03-22', 'Balayhangin', 'Outdoor', 'Rabbit', 'Bite', 'Arms'),
(55, 'Patrick Sy', 47, 'Male', '2025-03-23', 'Bangyas', 'Indoor', 'Turtle', 'Scratch', 'Legs'),
(56, 'Queenie Ong', 30, 'Female', '2025-03-24', 'Dayap', 'Outdoor', 'Monkey', 'Bite', 'Thighs'),
(57, 'Ramon Chua', 65, 'Male', '2025-03-25', 'Hanggan', 'Indoor', 'Pig', 'Scratch', 'Feet'),
(58, 'Sally Yu', 28, 'Female', '2025-03-26', 'Imok', 'Outdoor', 'Fish', 'Bite', 'Face'),
(59, 'Tomas Lim', 50, 'Male', '2025-03-27', 'Lamot I', 'Indoor', 'Dog', 'Scratch', 'Neck'),
(60, 'Ursula Go', 36, 'Female', '2025-03-28', 'Lamot II', 'Outdoor', 'Cat', 'Bite', 'Head'),
(61, 'Victor Tan', 70, 'Male', '2025-03-29', 'Limao', 'Indoor', 'Hamster', 'Scratch', 'Hands'),
(62, 'Wendy Uy', 43, 'Female', '2025-03-30', 'Mabacan', 'Outdoor', 'Lizard', 'Bite', 'Arms'),
(63, 'Xander Co', 58, 'Male', '2025-03-31', 'Masiit', 'Indoor', 'Bird', 'Scratch', 'Legs'),
(64, 'Yolanda Chan', 34, 'Female', '2025-04-01', 'Paliparan', 'Outdoor', 'Mouse', 'Bite', 'Thighs'),
(65, 'Zaldy Reyes', 62, 'Male', '2025-04-02', 'Perez', 'Indoor', 'Rabbit', 'Scratch', 'Feet'),
(66, 'Aileen Santos', 40, 'Female', '2025-04-03', 'Prinza', 'Outdoor', 'Turtle', 'Bite', 'Face'),
(67, 'Benny Cruz', 55, 'Male', '2025-04-04', 'Pob. Kanluran', 'Indoor', 'Monkey', 'Scratch', 'Neck'),
(68, 'Cathy Gomez', 38, 'Female', '2025-04-05', 'Pob. Silangan', 'Outdoor', 'Pig', 'Bite', 'Head'),
(69, 'Dennis Aquino', 67, 'Male', '2025-04-06', 'San Isidro', 'Indoor', 'Fish', 'Scratch', 'Hands'),
(70, 'Elsa Lim', 31, 'Female', '2025-04-07', 'Santo Tomas', 'Outdoor', 'Dog', 'Bite', 'Arms'),
(71, 'Freddie Tan', 49, 'Male', '2025-04-08', 'Balayhangin', 'Indoor', 'Cat', 'Scratch', 'Legs'),
(72, 'Grace Sy', 42, 'Female', '2025-04-09', 'Bangyas', 'Outdoor', 'Hamster', 'Bite', 'Thighs'),
(73, 'Henry Ong', 64, 'Male', '2025-04-10', 'Dayap', 'Indoor', 'Lizard', 'Scratch', 'Feet'),
(74, 'Isabel Chua', 29, 'Female', '2025-04-11', 'Hanggan', 'Outdoor', 'Bird', 'Bite', 'Face'),
(75, 'Jake Yu', 53, 'Male', '2025-04-12', 'Imok', 'Indoor', 'Mouse', 'Scratch', 'Neck'),
(76, 'Kathy Lim', 37, 'Female', '2025-04-13', 'Lamot I', 'Outdoor', 'Rabbit', 'Bite', 'Head'),
(77, 'Larry Go', 66, 'Male', '2025-04-14', 'Lamot II', 'Indoor', 'Turtle', 'Scratch', 'Hands'),
(78, 'Mae Tan', 32, 'Female', '2025-04-15', 'Limao', 'Outdoor', 'Monkey', 'Bite', 'Arms'),
(79, 'Nico Uy', 51, 'Male', '2025-04-16', 'Mabacan', 'Indoor', 'Pig', 'Scratch', 'Legs'),
(80, 'Ophelia Co', 45, 'Female', '2025-04-17', 'Masiit', 'Outdoor', 'Fish', 'Bite', 'Thighs'),
(81, 'Paolo Chan', 69, 'Male', '2025-04-18', 'Paliparan', 'Indoor', 'Dog', 'Scratch', 'Feet'),
(82, 'Quincy Reyes', 35, 'Female', '2025-04-19', 'Perez', 'Outdoor', 'Cat', 'Bite', 'Face'),
(83, 'Rico Santos', 57, 'Male', '2025-04-20', 'Prinza', 'Indoor', 'Hamster', 'Scratch', 'Neck'),
(84, 'Sofia Cruz', 41, 'Female', '2025-04-21', 'Pob. Kanluran', 'Outdoor', 'Lizard', 'Bite', 'Head'),
(85, 'Tony Gomez', 60, 'Male', '2025-04-22', 'Pob. Silangan', 'Indoor', 'Bird', 'Scratch', 'Hands'),
(86, 'Uma Aquino', 33, 'Female', '2025-04-23', 'San Isidro', 'Outdoor', 'Mouse', 'Bite', 'Arms'),
(87, 'Vince Lim', 54, 'Male', '2025-04-24', 'Santo Tomas', 'Indoor', 'Rabbit', 'Scratch', 'Legs'),
(88, 'Wanda Tan', 39, 'Female', '2025-04-25', 'Balayhangin', 'Outdoor', 'Turtle', 'Bite', 'Thighs'),
(89, 'Xander Sy', 63, 'Male', '2025-04-26', 'Bangyas', 'Indoor', 'Monkey', 'Scratch', 'Feet'),
(90, 'Yvette Ong', 36, 'Female', '2025-04-27', 'Dayap', 'Outdoor', 'Pig', 'Bite', 'Face'),
(91, 'Zack Chua', 50, 'Male', '2025-04-28', 'Hanggan', 'Indoor', 'Fish', 'Scratch', 'Neck'),
(92, 'celine', 32, 'Female', '2025-02-04', 'Paliparan', 'Outdoor', 'Cat', 'Scratch', 'Neck'),
(93, 'Janice', 24, 'Female', '2000-02-04', 'Balayhangin', 'Indoor', 'Dog', 'Bite', 'Hands'),
(94, 'john', 21, 'Male', '2003-03-01', 'Dayap', 'Indoor', 'Dog', 'Bite', 'Hands');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'username', '$2y$10$Ppf7FkAU73a4.iJCx0ykXenUSMDZrZj38U9qbBsebeTjJ7FqpIgJ.', 'username@gmail.com'),
(2, 'jm', '$2y$10$3nS6m2JYkpU6fWgc0C0P4Oh5XPZ.UhZ4HHoF2I/bL8J8N0VPOFzm6', 'jm@gmail.com'),
(3, 'Janica', '$2y$10$ARxSAmHsPdppjiaBIkHhg.Y9yEH4zjonYujxQjQ4FSKpFrh6nhQoO', 'JanicaMalveda@gmail.com'),
(5, 'jm1', '$2y$10$bj1qms1UJAd6Ec9AlDLGF.Vg3LaZX8LM50xt7pJjT3QYqYtIv8Lti', 'tagazajohnmatthew@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vaccinationrecord`
--

CREATE TABLE `vaccinationrecord` (
  `VaccinationID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `ExposureDate` date NOT NULL,
  `Category` varchar(50) NOT NULL,
  `WoundWashing` enum('Yes','No') NOT NULL,
  `RigDate` date NOT NULL,
  `RouteOfInjection` varchar(50) NOT NULL,
  `VaccineBrand` varchar(100) NOT NULL,
  `Outcome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patientrecord`
--
ALTER TABLE `patientrecord`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vaccinationrecord`
--
ALTER TABLE `vaccinationrecord`
  ADD PRIMARY KEY (`VaccinationID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patientrecord`
--
ALTER TABLE `patientrecord`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vaccinationrecord`
--
ALTER TABLE `vaccinationrecord`
  MODIFY `VaccinationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vaccinationrecord`
--
ALTER TABLE `vaccinationrecord`
  ADD CONSTRAINT `vaccinationrecord_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patientrecord` (`PatientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
