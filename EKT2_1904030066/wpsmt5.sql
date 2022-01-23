-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2022 at 03:25 PM
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
-- Database: `wpsmt5`
--

-- --------------------------------------------------------

--
-- Table structure for table `calon_mhs`
--

CREATE TABLE `calon_mhs` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `agama` varchar(9) NOT NULL,
  `sekolah_asal` varchar(20) NOT NULL,
  `foto_maba` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calon_mhs`
--

INSERT INTO `calon_mhs` (`id`, `nama`, `alamat`, `jenis_kelamin`, `agama`, `sekolah_asal`, `foto_maba`) VALUES
(1, 'Rezkyta Senissa Parni', 'Teluknaga', 'Perempuan', 'Islam', 'SMK BINA MANDIRI', 'gambar3.png'),
(2, 'Putri Chesilia Azani', 'Ciledug', 'Perempuan', 'Islam', 'SMAN 2 TANGERANG', 'gambar3.png'),
(3, 'Deuina Faza Kinanti', 'Teluknaga', 'Perempuan', 'Islam', 'SMAN 5 TANGERANG', 'gambar3.png'),
(4, 'Anindia Azzahra', 'Teluknaga', 'Perempuan', 'Islam', 'SMK YADIKA 10', 'gambar3.png'),
(5, 'Rini Angraini', 'Paku Haji', 'Perempuan', 'Islam', 'SMAN 20 TANGERANG', 'gambar3.png');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_dosen`
--

CREATE TABLE `tabel_dosen` (
  `id` int(10) NOT NULL,
  `nidn` int(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `s1` varchar(30) NOT NULL,
  `s2` varchar(30) NOT NULL,
  `s3` varchar(30) NOT NULL,
  `foto_dosen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_dosen`
--

INSERT INTO `tabel_dosen` (`id`, `nidn`, `nama`, `email`, `jenis_kelamin`, `alamat`, `agama`, `s1`, `s2`, `s3`, `foto_dosen`) VALUES
(1, 401099001, 'Djamaludin', 'djamaludin@unis.ac.id', 'Laki-laki', 'Tangerang', 'Islam', 'Pendidikan S1', 'Pendidikan S2', 'Pendidikan S3', 'photo1.png'),
(2, 401099002, 'Dadang Sujana', 'dadangsujana@unis.ac.id', 'Laki-laki', 'Tangerang', 'Islam', 'Pendidikan S1', 'Pendidikan S2', 'Pendidikan S3', 'photo1.png'),
(3, 401099003, 'Muhammad Fajri', 'mfajri@gmail.com', 'Laki-laki', 'Tangerang', 'Islam', 'Pendidikan S1', 'Pendidikan S2', 'Pendidikan S3', 'photo1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calon_mhs`
--
ALTER TABLE `calon_mhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_dosen`
--
ALTER TABLE `tabel_dosen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calon_mhs`
--
ALTER TABLE `calon_mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
