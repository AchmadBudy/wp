-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2020 at 02:58 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_product`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `wa` varchar(100) NOT NULL,
  `shopee` varchar(100) NOT NULL,
  `desk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `image`, `name`, `price`, `stock`, `sold`, `wa`, `shopee`, `desk`) VALUES
(2, '2', 'Premium Bundle', 15000, 24, 3, 'https://wa.me/6285257232024?text=Saya%20tertarik%20untuk%20membeli%20mobil%20Anda', '', '&lt;ul&gt;&lt;li&gt;Premium account&lt;/li&gt;&lt;li&gt;Tea&lt;/li&gt;&lt;li&gt;Milk&lt;/li&gt;&lt;/ul&gt;'),
(4, 'bundle.png', 'Spotify 3 bulana', 15002, 134, 5, 'https://wa.me/6285257232024?text=Saya%20tertarik%20untuk%20membeli%20mobil%20Andas', 'shopee.com', '<ul><li>Premium account</li><li>Tesa</li><li>Milk</li></ul>'),
(6, '5efc3f143a856.png', 'spotify 9 bulan', 90000, 890, 8, 'wa.me', 'shopee.com', '&lt;ul&gt;&lt;li&gt;Premium account&lt;/li&gt;&lt;li&gt;apa jaa slur&lt;/li&gt;&lt;li&gt;Mibeli ajalk&lt;/li&gt;&lt;/ul&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(11) NOT NULL,
  `desk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `desk`) VALUES
(1, '<ul><li>Premium account</li><li>Tea</li><li>Milk</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `cookie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `pass`, `cookie`) VALUES
(1, 'wawan', 'admindong', 'ce4ee336be777674b769541458745d4b40e9d09316aec6409dbd6d3b3ed0dcc9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
