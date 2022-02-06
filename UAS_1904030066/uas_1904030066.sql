-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2022 at 03:31 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_1904030066`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id` int(100) NOT NULL,
  `gambar` varchar(35) NOT NULL,
  `nama_barang` varchar(35) NOT NULL,
  `merek` varchar(35) NOT NULL,
  `harga` varchar(35) NOT NULL,
  `stock_barang` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id`, `gambar`, `nama_barang`, `merek`, `harga`, `stock_barang`) VALUES
(10001, 'kulkas.png', 'Kulkas', 'Polytron', '3500000', '10'),
(10002, 'setrika.jpg', 'Setrika', 'Philips', '450000', '5'),
(10003, 'televisi.jpg', 'Televisi 32 inch', 'TCL', '3200000', '5'),
(10004, 'ricecooker.jpg', 'Rice Cooker', 'Miyako', '325000', '5'),
(10005, 'ac.jpg', 'AC', 'LG', '3500000', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `id` int(10) NOT NULL,
  `username` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `komentar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`id`, `username`, `email`, `komentar`) VALUES
(30001, 'Kiky', 'kikysyapar@gmail.com', 'Sangat puas belanja di Electronic Cities :))'),
(30002, 'Fajri', 'mfajri@gmail.com', 'Banyak barang elektronik yang dijual di electronic cities :))'),
(30003, 'Putri Ayu', 'ayuptri@gmail.com', 'Banyak promo di Electronic Cities ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
