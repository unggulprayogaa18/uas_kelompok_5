-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2024 at 05:54 AM
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
-- Database: `primayoga`
--

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `idpasien` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `ciri_ciri` text DEFAULT NULL,
  `status_pasien` varchar(20) DEFAULT NULL,
  `id_kamar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`idpasien`, `nama`, `jenis_kelamin`, `ciri_ciri`, `status_pasien`, `id_kamar`) VALUES
(1761, '1', 'Laki-laki', '1', 'Ditangani', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_kamar`
--

CREATE TABLE `pesan_kamar` (
  `idpesan_kamar` int(11) NOT NULL,
  `id_kamar` varchar(255) DEFAULT NULL,
  `nik` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `penjamin` varchar(255) DEFAULT NULL,
  `metode_pembayaran` varchar(255) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nomer_telpon` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_kamar`
--

CREATE TABLE `table_kamar` (
  `id_kamar` varchar(200) NOT NULL,
  `nomer_kamar` int(200) NOT NULL,
  `status_kamar` enum('pribadi','umum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `table_kamar`
--

INSERT INTO `table_kamar` (`id_kamar`, `nomer_kamar`, `status_kamar`) VALUES
('4', 4, 'pribadi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telpon` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `status_user` varchar(255) NOT NULL,
  `session_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `email`, `no_telpon`, `foto`, `nama`, `status_user`, `session_token`, `created_at`) VALUES
('kmpk5', 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 'unggulprayoga17@gmail.com', 628700794, 'Capture9.PNG', 'yoga prayoga', 'admin', NULL, '2024-02-11 02:56:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`idpasien`);

--
-- Indexes for table `pesan_kamar`
--
ALTER TABLE `pesan_kamar`
  ADD PRIMARY KEY (`idpesan_kamar`);

--
-- Indexes for table `table_kamar`
--
ALTER TABLE `table_kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `idpasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1763;

--
-- AUTO_INCREMENT for table `pesan_kamar`
--
ALTER TABLE `pesan_kamar`
  MODIFY `idpesan_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
