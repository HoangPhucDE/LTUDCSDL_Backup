-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2025 at 05:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'Employee',
  `employee_id` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `employee_id`, `email`, `status`, `created_at`, `updated_at`, `profile_image`) VALUES
(1, 'admin1', 'password123', 'Admin', 101, 'admin1@example.com', 'Active', '2025-07-07 13:42:16', '2025-07-07 13:42:16', NULL),
(2, 'admin2', 'password123', 'Admin', 102, 'admin2@example.com', 'Active', '2025-07-07 13:42:16', '2025-07-07 13:42:16', NULL),
(3, 'manager1', 'password123', 'Manager', 103, 'manager1@example.com', 'Active', '2025-07-07 13:48:28', '2025-07-07 13:48:28', NULL),
(4, 'manager2', 'password123', 'Manager', 104, 'manager2@example.com', 'Active', '2025-07-07 13:48:28', '2025-07-07 13:48:28', NULL),
(5, 'employee1', 'password123', 'Employee', 105, 'employee1@example.com', 'Active', '2025-07-07 13:52:43', '2025-07-07 13:52:43', NULL),
(6, 'employee2', 'password123', 'Employee', 106, 'employee2@example.com', 'Active', '2025-07-07 13:52:43', '2025-07-07 13:52:43', NULL),
(7, 'employee3', 'employee3', 'Employee', NULL, 'employee3@gmail.com', 'Active', '2025-07-11 09:42:06', '2025-07-11 09:42:06', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
