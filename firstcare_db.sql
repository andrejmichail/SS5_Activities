-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2026 at 04:26 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firstcare_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `AppointmentID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `CenterID` int(11) NOT NULL,
  `AppointmentDate` date NOT NULL,
  `AppointmentTime` time NOT NULL,
  `Reason` varchar(255) NOT NULL,
  `Status` varchar(15) NOT NULL DEFAULT 'Pending',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`AppointmentID`, `Username`, `CenterID`, `AppointmentDate`, `AppointmentTime`, `Reason`, `Status`, `CreatedAt`) VALUES
(1, 'lebron', 1, '2027-02-26', '14:12:00', 'fever', 'Pending', '2026-10-14 01:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `ClientID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `ContactNumber` varchar(20) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`ClientID`, `FirstName`, `LastName`, `DateOfBirth`, `ContactNumber`, `Address`) VALUES
(1, 'Anna', 'Aquino', '2000-05-12', '09171230001', 'Iligan City'),
(2, 'Brian', 'Bautista', '1998-08-21', '09171230002', 'Cagayan de Oro City'),
(3, 'Carlos', 'Cabrera', '2001-03-15', '09171230003', 'Iligan City'),
(4, 'Diana', 'Dela Cruz', '1999-11-30', '09171230004', 'Marawi City'),
(5, 'Emily', 'Garcia', '2002-07-18', '09171230005', 'Iligan City'),
(6, 'Frank', 'Hernandez', '1997-02-25', '09171230006', 'Cagayan de Oro City'),
(7, 'Grace', 'Lopez', '2000-10-09', '09171230007', 'Iligan City'),
(8, 'Henry', 'Mendoza', '1996-12-14', '09171230008', 'Marawi City'),
(9, 'Isabella', 'Reyes', '2001-06-27', '09171230009', 'Iligan City'),
(10, 'Joshua', 'Santos', '1999-09-03', '09171230010', 'Cagayan de Oro City');

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `FurnitureID` int(11) NOT NULL,
  `FurnitureName` varchar(100) NOT NULL,
  `FurnitureType` varchar(50) NOT NULL,
  `Material` varchar(50) DEFAULT NULL,
  `YearMade` year(4) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Description` text,
  `Quantity` int(11) NOT NULL DEFAULT '1',
  `Condition` varchar(50) NOT NULL DEFAULT 'Good'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `furniture`
--

INSERT INTO `furniture` (`FurnitureID`, `FurnitureName`, `FurnitureType`, `Material`, `YearMade`, `Price`, `Description`, `Quantity`, `Condition`) VALUES
(1, 'Victorian Oak Chair', 'Chair', 'Oak Wood', 0000, '15000.00', NULL, 1, 'Good'),
(2, 'French Antique Table', 'Table', 'Mahogany', 0000, '25000.00', NULL, 1, 'Good'),
(3, 'Colonial Wooden Cabinet', 'Cabinet', 'Narra Wood', 1902, '32000.00', NULL, 1, 'Good'),
(4, 'Antique Rocking Chair', 'Chair', 'Teak Wood', 1910, '18000.00', NULL, 1, 'Good'),
(5, 'Edwardian Writing Desk', 'Desk', 'Oak Wood', 1905, '28000.00', NULL, 1, 'Good'),
(6, 'Vintage Display Cabinet', 'Cabinet', 'Mahogany', 0000, '35000.00', NULL, 1, 'Good'),
(7, 'Antique Dining Table', 'Table', 'Narra Wood', 1920, '40000.00', NULL, 1, 'Good'),
(8, 'Classic Wooden Bench', 'Bench', 'Teak Wood', 1915, '12000.00', NULL, 1, 'Good'),
(9, 'Antique Bed Frame', 'Bed', 'Mahogany', 0000, '45000.00', NULL, 1, 'Good'),
(10, 'Victorian Side Table', 'Table', 'Oak Wood', 0000, '16000.00', NULL, 1, 'Good'),
(11, 'Sukuna\'s Finger', '', NULL, NULL, NULL, 'Tastes awful!', 2, 'Excellent'),
(12, 'Dragon Ball', '', NULL, NULL, NULL, 'collect 7 to grant you any wish!', 1, 'Good'),
(13, 'Power Pole', '', NULL, NULL, NULL, 'Wielded by Son Goku', 1, 'Excellent'),
(14, 'Dummy', '', NULL, NULL, NULL, '123', 3, 'Excellent');

-- --------------------------------------------------------

--
-- Table structure for table `medicalcenters`
--

CREATE TABLE `medicalcenters` (
  `CenterID` int(11) NOT NULL,
  `CenterName` varchar(100) NOT NULL,
  `Location` varchar(150) NOT NULL,
  `ContactNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicalcenters`
--

INSERT INTO `medicalcenters` (`CenterID`, `CenterName`, `Location`, `ContactNumber`) VALUES
(1, 'FirstCare Medical Center - Main', 'Iligan City', '09171234567'),
(2, 'FirstCare Medical Center - North', 'Cagayan de Oro City', '09181234567'),
(3, 'FirstCare Medical Center - South', 'Marawi City', '09191234567'),
(4, 'FirstCare Medical Center - East', 'Iligan City East', '09201234567'),
(5, 'Vaelith', 'Manila', '0963223123'),
(6, 'Shibuya Center', 'Tokyo', '09424223'),
(7, 'U.A Center', 'MHA universe', '0963223123');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `MedicineID` int(11) NOT NULL,
  `MedicineName` varchar(100) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`MedicineID`, `MedicineName`, `Category`, `Price`) VALUES
(1, 'Paracetamol 500mg', 'Pain & Fever', '2.50'),
(2, 'Ibuprofen 200mg', 'Pain & Fever', '5.00'),
(3, 'Mefenamic Acid 500mg', 'Pain & Fever', '6.00'),
(4, 'Cetirizine 10mg', 'Allergy', '8.00'),
(5, 'Loratadine 10mg', 'Allergy', '10.00'),
(6, 'Ambroxol 30mg', 'Cough & Cold', '9.00'),
(7, 'Carbocisteine 500mg', 'Cough & Cold', '12.00'),
(8, 'Phenylephrine + Paracetamol (Decolgen)', 'Cough & Cold', '9.00'),
(9, 'Loperamide 2mg', 'Stomach', '7.00'),
(10, 'Oral Rehydration Salts', 'Stomach', '18.00'),
(11, 'Omeprazole 20mg', 'Stomach', '15.00'),
(12, 'Antacid Tablets', 'Stomach', '4.00'),
(13, 'Vitamin C 500mg', 'Vitamins', '6.00'),
(14, 'Multivitamins', 'Vitamins', '8.00'),
(15, 'Zinc 20mg', 'Vitamins', '10.00'),
(16, 'Betadine Antiseptic', 'First Aid', '120.00'),
(17, 'Alcohol 70%', 'First Aid', '65.00'),
(18, 'Adhesive Bandages', 'First Aid', '45.00');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `PatientID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `ContactNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`PatientID`, `FirstName`, `LastName`, `DateOfBirth`, `ContactNumber`) VALUES
(1, 'Michael', 'Tan', '1990-05-15', '09181111111'),
(2, 'Angela', 'Lim', '1988-09-10', '09182222222'),
(3, 'Brian', 'Perez', '2000-02-20', '09183333333'),
(4, 'Nicole', 'Gomez', '1995-11-01', '09184444444'),
(5, 'Daniel', 'Rivera', '1987-03-30', '09185555555'),
(6, 'Sophia', 'Morales', '1999-07-18', '09186666666'),
(7, 'Joshua', 'Castro', '1992-01-08', '09187777777'),
(8, 'Patricia', 'David', '1996-06-22', '09188888888'),
(9, 'Kevin', 'Bautista', '1985-12-11', '09189999999'),
(10, 'Christine', 'Salazar', '1993-04-14', '09180000000'),
(11, 'Andrej', 'Fruchtenicht', '2008-02-26', '0963223123'),
(12, 'Ryomen', 'Sukuna', '0223-07-12', '0963223123'),
(13, 'Izuku', 'Midoriya', '2006-03-20', '0963223123');

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `PersonnelID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Position` enum('Physician','Nurse','Pharmacist','Administrative') NOT NULL,
  `CenterID` int(11) NOT NULL,
  `HireDate` date DEFAULT NULL,
  `ContactNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personnel`
--

INSERT INTO `personnel` (`PersonnelID`, `FirstName`, `LastName`, `Position`, `CenterID`, `HireDate`, `ContactNumber`) VALUES
(1, 'Maria', 'Alvarez', 'Nurse', 1, '2022-01-15', '09170000001'),
(2, 'John', 'Bautista', 'Physician', 2, '2021-03-20', '09170000002'),
(3, 'Carlo', 'Cruz', 'Pharmacist', 1, '2023-06-10', '09170000003'),
(4, 'Daniel', 'Dela Cruz', 'Administrative', 3, '2022-08-05', '09170000004'),
(5, 'Angela', 'Garcia', 'Nurse', 4, '2023-02-18', '09170000005'),
(6, 'Mark', 'Hernandez', 'Physician', 1, '2020-11-12', '09170000006'),
(7, 'Sofia', 'Lopez', 'Pharmacist', 2, '2024-01-10', '09170000007'),
(8, 'Kevin', 'Mendoza', 'Nurse', 3, '2022-05-25', '09170000008'),
(9, 'Andrea', 'Navarro', 'Administrative', 4, '2023-09-14', '09170000009'),
(10, 'Michael', 'Reyes', 'Physician', 1, '2021-07-30', '09170000010'),
(11, 'Patricia', 'Santos', 'Nurse', 2, '2020-04-22', '09170000011'),
(12, 'James', 'Tan', 'Pharmacist', 3, '2024-03-11', '09170000012'),
(13, 'Christine', 'Torres', 'Administrative', 4, '2022-12-01', '09170000013'),
(14, 'Robert', 'Villanueva', 'Nurse', 1, '2023-04-17', '09241234576'),
(15, 'Nicole', 'Zamora', 'Physician', 2, '2021-10-08', '09660863139'),
(18, 'Andrej', 'Fruchtenicht', 'Nurse', 1, '2222-02-22', '0963223123');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_list`
--

CREATE TABLE `shopping_list` (
  `ItemID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `MedicineName` varchar(100) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT '1',
  `Notes` varchar(255) DEFAULT NULL,
  `IsBought` tinyint(1) NOT NULL DEFAULT '0',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UnitPrice` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_list`
--

INSERT INTO `shopping_list` (`ItemID`, `Username`, `MedicineName`, `Quantity`, `Notes`, `IsBought`, `CreatedAt`, `UnitPrice`) VALUES
(1, 'lebron', 'Mefenamic Acid 500mg', 1, '', 0, '2026-10-14 01:27:04', '6.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(10) NOT NULL DEFAULT 'user',
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Role`, `first_name`, `last_name`, `display_name`, `profile_image`) VALUES
(1, 'dre', '123', 'user', NULL, NULL, NULL, NULL),
(3, 'bell', '123', 'user', NULL, NULL, NULL, NULL),
(4, 'lebron', '123', 'user', NULL, NULL, NULL, NULL),
(5, 'admindre', 'mypassword123', 'admin', 'Dre', 'Fruchtenicht', 'dre', 'uploads/profile_5_de74ed369030f949.jpg'),
(6, 'adminquenzy', 'mypassword123', 'admin', NULL, NULL, NULL, NULL),
(7, 'adminlebron', 'mypassword123', 'admin', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`AppointmentID`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientID`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`FurnitureID`);

--
-- Indexes for table `medicalcenters`
--
ALTER TABLE `medicalcenters`
  ADD PRIMARY KEY (`CenterID`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`MedicineID`),
  ADD UNIQUE KEY `MedicineName` (`MedicineName`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`PersonnelID`),
  ADD KEY `CenterID` (`CenterID`);

--
-- Indexes for table `shopping_list`
--
ALTER TABLE `shopping_list`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `AppointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `FurnitureID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `medicalcenters`
--
ALTER TABLE `medicalcenters`
  MODIFY `CenterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `MedicineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `PersonnelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `shopping_list`
--
ALTER TABLE `shopping_list`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `personnel_ibfk_1` FOREIGN KEY (`CenterID`) REFERENCES `medicalcenters` (`CenterID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
