-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 08, 2024 at 05:58 PM
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
-- Database: `offer_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `offer_name`, `email`, `phone`, `created_at`) VALUES
(1, 'Summer Discount', 'user@example.com', '1234567890', '2024-11-08 16:26:07'),
(12, 'Corporate Discount', 'corporate1@example.com', '9876543210', '2024-11-08 16:32:55'),
(13, 'Exclusive Deal', 'exclusive2@example.com', '9876543211', '2024-11-08 16:32:55'),
(14, 'Holiday Special', 'holiday3@example.com', '9876543212', '2024-11-08 16:32:55'),
(15, 'New Year Offer', 'newyear4@example.com', '9876543213', '2024-11-08 16:32:55'),
(16, 'Summer Bonanza', 'summer5@example.com', '9876543214', '2024-11-08 16:32:55'),
(17, 'Winter Wonderland', 'winter6@example.com', '9876543215', '2024-11-08 16:32:55'),
(18, 'Premium Package', 'premium7@example.com', '9876543216', '2024-11-08 16:32:55'),
(19, 'Loyalty Reward', 'loyalty8@example.com', '9876543217', '2024-11-08 16:32:55'),
(20, 'Flash Sale', 'flash9@example.com', '9876543218', '2024-11-08 16:32:55'),
(21, 'Weekend Deal', 'weekend10@example.com', '9876543219', '2024-11-08 16:32:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
