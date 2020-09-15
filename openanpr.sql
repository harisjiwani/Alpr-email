-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2019 at 11:01 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `openanpr`
--

-- --------------------------------------------------------

--
-- Table structure for table `cardata`
--

CREATE TABLE `cardata` (
  `id` int(11) NOT NULL,
  `plate` varchar(45) NOT NULL,
  `make` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `path` varchar(50) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardata`
--

INSERT INTO `cardata` (`id`, `plate`, `make`, `color`, `type`, `path`, `is_read`) VALUES
(52, 'MCLRNF1', 'chevrolet', 'silver-gray', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/1.png', 1),
(53, 'LOLWATT', 'lincoln', 'red', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.png', 1),
(54, 'RIPLS1', 'ford', 'silver-gray', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/3.png', 1),
(55, 'MCLRNF1', 'chevrolet', 'silver-gray', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/1.png', 1),
(56, 'LOLWATT', 'lincoln', 'red', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.png', 1),
(57, 'RIPLS1', 'ford', 'silver-gray', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/3.png', 1),
(58, 'AQN256', 'honda', 'silver-gray', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/WhatsApp Im', 1),
(59, 'ACL175', 'dodge', 'red', 'suv-crossover', 'C:/Users/hp/Desktop/openalpr/processed/WhatsApp Im', 1),
(60, 'ACU175', 'dodge', 'red', 'suv-crossover', 'C:/Users/hp/Desktop/openalpr/processed/WhatsApp Im', 1),
(61, 'AQN256', 'honda', 'silver-gray', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/WhatsApp Im', 1),
(62, 'ALE416', 'hyundai', 'black', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/WhatsApp Im', 1),
(63, 'AQN256', 'toyota', 'silver-gray', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/WhatsApp Im', 1),
(64, 'ALE416', 'hyundai', 'black', 'sedan-wagon', 'C:/Users/hp/Desktop/openalpr/processed/WhatsApp Im', 1),
(65, 'AQN256', 'honda', 'silver-gray', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/WhatsApp Im', 1),
(66, 'BDL970', 'honda', 'silver-gray', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/WhatsApp Im', 1),
(67, 'AQN256', 'honda', 'silver-gray', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/WhatsApp Im', 1),
(68, 'BDL970', 'honda', 'silver-gray', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/WhatsApp Im', 1),
(69, 'MCLRNF1', 'chevrolet', 'silver-gray', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/1.png', 1),
(70, 'Z00MN65', 'mazda', 'red', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/10.png', 1),
(71, 'HOR5SH1T', 'ford', 'black', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/11.png', 1),
(72, 'FALLYOU', 'porsche', 'white', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/12.png', 1),
(73, 'EZEY', 'land-rover', 'silver-gray', 'suv-standard', 'C:/Users/hp/Desktop/openalpr/processed/13.png', 1),
(74, 'NITESKY', 'pontiac', 'black', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/14.png', 1),
(75, 'U8NTBAD', 'chrysler', 'white', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/15.png', 1),
(76, 'GAY247', 'mazda', 'white', 'sedan-wagon', 'C:/Users/hp/Desktop/openalpr/processed/16.png', 1),
(77, 'KHAN786', 'chevrolet', 'green', 'tractor-trailer', 'C:/Users/hp/Desktop/openalpr/processed/17.png', 1),
(78, 'LOLWATT', 'lincoln', 'red', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.png', 1),
(79, 'RIPLS1', 'ford', 'silver-gray', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/3.png', 1),
(80, 'NICESKY', 'saturn', 'silver-gray', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/4.png', 1),
(81, 'AA9N8G', 'honda', 'black', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/5.png', 1),
(82, 'NYSJ', 'bmw', 'silver-gray', 'suv-crossover', 'C:/Users/hp/Desktop/openalpr/processed/6.png', 1),
(83, 'ANBYOND', 'infiniti', 'black', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/7.png', 1),
(84, '1ZM961', 'harley-davidson', 'black', 'motorcycle', 'C:/Users/hp/Desktop/openalpr/processed/8.png', 1),
(85, 'PNYEXPS', 'toyota', 'yellow', 'suv-standard', 'C:/Users/hp/Desktop/openalpr/processed/9.png', 1),
(86, 'MCLRNF1', 'chevrolet', 'silver-gray', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/1.png', 1),
(87, 'Z00MN65', 'mazda', 'red', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/10.png', 1),
(88, 'HOR5SH1T', 'ford', 'black', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/11.png', 1),
(89, 'FALLYOU', 'porsche', 'white', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/12.png', 1),
(90, 'EZEY', 'land-rover', 'silver-gray', 'suv-standard', 'C:/Users/hp/Desktop/openalpr/processed/13.png', 1),
(91, 'NITESKY', 'pontiac', 'black', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/14.png', 1),
(92, 'U8NTBAD', 'chrysler', 'white', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/15.png', 1),
(93, 'GAY247', 'mazda', 'white', 'sedan-wagon', 'C:/Users/hp/Desktop/openalpr/processed/16.png', 1),
(94, 'KHAN786', 'chevrolet', 'green', 'tractor-trailer', 'C:/Users/hp/Desktop/openalpr/processed/17.png', 1),
(95, 'LOLWATT', 'lincoln', 'red', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.png', 1),
(96, 'RIPLS1', 'ford', 'silver-gray', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/3.png', 1),
(97, 'NICESKY', 'saturn', 'silver-gray', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/4.png', 1),
(98, 'AA9N8G', 'honda', 'black', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/5.png', 1),
(99, 'NYSJ', 'bmw', 'silver-gray', 'suv-crossover', 'C:/Users/hp/Desktop/openalpr/processed/6.png', 1),
(100, 'ANBYOND', 'infiniti', 'black', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/7.png', 1),
(101, '1ZM961', 'harley-davidson', 'black', 'motorcycle', 'C:/Users/hp/Desktop/openalpr/processed/8.png', 1),
(102, 'PNYEXPS', 'toyota', 'yellow', 'suv-standard', 'C:/Users/hp/Desktop/openalpr/processed/9.png', 1),
(103, 'MCLRNF1', 'chevrolet', 'silver-gray', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/1.png', 1),
(104, 'Z00MN65', 'mazda', 'red', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/10.png', 1),
(105, 'HOR5SH1T', 'ford', 'black', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/11.png', 1),
(106, 'FALLYOU', 'porsche', 'white', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/12.png', 1),
(107, 'EZEY', 'land-rover', 'silver-gray', 'suv-standard', 'C:/Users/hp/Desktop/openalpr/processed/13.png', 1),
(108, 'NITESKY', 'pontiac', 'black', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/14.png', 1),
(109, 'U8NTBAD', 'chrysler', 'white', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/15.png', 1),
(110, 'GAY247', 'mazda', 'white', 'sedan-wagon', 'C:/Users/hp/Desktop/openalpr/processed/16.png', 1),
(111, 'KHAN786', 'chevrolet', 'green', 'tractor-trailer', 'C:/Users/hp/Desktop/openalpr/processed/17.png', 1),
(112, 'LOLWATT', 'lincoln', 'red', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.png', 1),
(113, 'RIPLS1', 'ford', 'silver-gray', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/3.png', 1),
(114, 'NICESKY', 'saturn', 'silver-gray', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/4.png', 1),
(115, 'AA9N8G', 'honda', 'black', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/5.png', 1),
(116, 'NYSJ', 'bmw', 'silver-gray', 'suv-crossover', 'C:/Users/hp/Desktop/openalpr/processed/6.png', 1),
(117, 'ANBYOND', 'infiniti', 'black', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/7.png', 1),
(118, '1ZM961', 'harley-davidson', 'black', 'motorcycle', 'C:/Users/hp/Desktop/openalpr/processed/8.png', 1),
(119, 'PNYEXPS', 'toyota', 'yellow', 'suv-standard', 'C:/Users/hp/Desktop/openalpr/processed/9.png', 1),
(120, 'ALE416', 'hyundai', 'black', 'sedan-wagon', 'C:/Users/hp/Desktop/openalpr/processed/1.jpeg', 1),
(121, 'GS8309', 'toyota', 'white', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.jpeg', 1),
(122, 'ALE416', 'hyundai', 'black', 'sedan-wagon', 'C:/Users/hp/Desktop/openalpr/processed/1.jpeg', 1),
(123, 'GS8309', 'toyota', 'white', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.jpeg', 1),
(124, 'ALE416', 'hyundai', 'black', 'sedan-wagon', 'C:/Users/hp/Desktop/openalpr/processed/1.jpeg', 1),
(125, 'GS8309', 'toyota', 'white', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.jpeg', 1),
(126, 'MCLRNF1', 'chevrolet', 'silver-gray', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/1.png', 1),
(127, 'LOLWATT', 'lincoln', 'red', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.png', 1),
(128, 'RIPLS1', 'ford', 'silver-gray', 'sedan-sports', 'C:/Users/hp/Desktop/openalpr/processed/3.png', 1),
(129, 'ALE416', 'hyundai', 'black', 'sedan-wagon', 'C:/Users/hp/Desktop/openalpr/processed/1.jpeg', 1),
(130, 'GS8309', 'toyota', 'white', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.jpeg', 1),
(131, 'ALE416', 'hyundai', 'black', 'sedan-wagon', 'C:/Users/hp/Desktop/openalpr/processed/1.jpeg', 1),
(132, 'GS8309', 'toyota', 'white', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.jpeg', 1),
(133, 'ALE416', 'hyundai', 'black', 'sedan-wagon', 'C:/Users/hp/Desktop/openalpr/processed/1.jpeg', 1),
(134, 'GS8309', 'toyota', 'white', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.jpeg', 1),
(135, 'ALE416', 'hyundai', 'black', 'sedan-wagon', 'C:/Users/hp/Desktop/openalpr/processed/1.jpeg', 1),
(136, 'GS8309', 'toyota', 'white', 'sedan-standard', 'C:/Users/hp/Desktop/openalpr/processed/2.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'haris', 'haris123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cardata`
--
ALTER TABLE `cardata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cardata`
--
ALTER TABLE `cardata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
