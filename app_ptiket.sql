-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 08:49 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_ptiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `d_penumpang`
--

CREATE TABLE `d_penumpang` (
  `ktp` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jenis_k` varchar(25) NOT NULL,
  `telp` int(12) NOT NULL,
  `rek` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_penumpang`
--

INSERT INTO `d_penumpang` (`ktp`, `nama`, `alamat`, `jenis_k`, `telp`, `rek`) VALUES
(12345, 'azkia', 'raya', 'perempuan', 8530934, 343456),
(1234567, 'sasa', 'kayu tangi', 'perempuan', 91234213, 34353632),
(102, 'faisal', 'jl raya 1', 'laki-laki', 1234521, 3232452);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `penerbangan`
--

CREATE TABLE `penerbangan` (
  `asal` varchar(25) NOT NULL,
  `tujuan` varchar(25) NOT NULL,
  `kode_m` varchar(25) NOT NULL,
  `waktu_b` varchar(25) NOT NULL,
  `waktu_t` varchar(25) NOT NULL,
  `ket` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penerbangan`
--

INSERT INTO `penerbangan` (`asal`, `tujuan`, `kode_m`, `waktu_b`, `waktu_t`, `ket`) VALUES
('banjarmasin', 'Bandung', 'JT/LNI', '06:00PM', '08:20PM', 'selasa,rabu,kamis'),
('banjarbaru', 'makasar', 'FS/AFE', '10:50AM', '01:00PM', 'rabu,kamis');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `no_tiket` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `id_penumpang` int(11) NOT NULL,
  `maskapai` varchar(25) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `op` double NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `lama` double NOT NULL,
  `tanggal` date NOT NULL,
  `pukul` varchar(15) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`no_tiket`, `nama`, `id_penumpang`, `maskapai`, `kelas`, `op`, `tujuan`, `lama`, `tanggal`, `pukul`, `total`) VALUES
(1, 'ahmad', 1243, 'AirAsia', 'Ekonomi', 220000, 'Jakarta', 1.5, '2021-12-31', '11:30AM', 330000),
(2, 'sasa', 23123, 'AirAsia', 'Ekonomi', 220000, 'Denpasar', 2.4, '2022-01-08', '11:30AM', 528000),
(4, 'daya', 1243, 'Airfast', 'Ekonomi', 220000, 'Denpasar', 2.4, '2022-01-07', '10:50AM', 528000),
(7, 'halimatus', 243, 'AirAsia', 'Ekonomi', 220000, 'Makasar', 5, '2022-01-04', '11:30AM', 1100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`no_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
