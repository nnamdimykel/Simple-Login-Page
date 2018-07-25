-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2018 at 07:54 PM
-- Server version: 10.1.34-MariaDB
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
-- Database: `accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telephone` int(200) NOT NULL,
  `home_address` varchar(100) NOT NULL DEFAULT 'n/a',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `telephone`, `home_address`, `active`) VALUES
(3, 'm', 'm', 'mykelnnamdi@live.com', '$2y$10$6Si9aCrThl6CZPNzbmZTBuHqzASMw4q/mnhugHv4llWtg0jdUxO6K', 0, '0', 0),
(10, 'Micheal', 'Joseph', 'mjoseph@gmail.com', '$2y$10$0foo6BFLmORLfzfyC/e8kewPuK4o6yuEaKkU8pi97Cfrex/5TICCa', 0, '0', 0),
(11, 'Joseph', 'Nnamdi', 'jn@gmail.com', '$2y$10$cQL06f2NMtw34tfYOfsHzuJAc4FhZxxOJYoXTkhXh0sDUTza2uH7i', 0, '0', 0),
(14, 'ikenyere', 'joseph', 'ik@gmail.com', '123', 8099889, 'uhd', 0),
(15, '', '', '', '', 0, '', 0),
(16, 'eD', 'D', 'josephelijaj45@gmail.com', '$2y$10$ULgPE3n6vvW4ERq1uOVgFeby/.eXHS6Tv/r.Sy5BAqXiMQHV7TIPe', 0, '', 0),
(17, 'oni', ' queen', 'oni@queen.com', '$2y$10$yiX3EHCP8/91MYHmDljwWeeIKoJrW5P5w2xmDlem2wJ5jn/QnFpI.', 812009759, '123,awolowo road,ikoyi,lagos', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
