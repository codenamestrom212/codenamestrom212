-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 04:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(25) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `progdi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `progdi_id`) VALUES
('22,240.0163', 'Kakashi Hatake', 240),
('22.110.0159', 'Hashirama Senju', 110),
('22.120.0160', 'Minato Kamikaze', 120),
('22.230.0161', 'Tobirama Senju', 230),
('22.240.0162', 'Hiruzen Sautobi', 240),
('23.240.0164', 'Naruto Uzumaki', 240);

-- --------------------------------------------------------

--
-- Table structure for table `point_book`
--

CREATE TABLE `point_book` (
  `Tanggal` date NOT NULL,
  `Nama_Kegiatan` varchar(50) NOT NULL,
  `Poin` int(5) NOT NULL,
  `Keterangan` varchar(30) NOT NULL,
  `UKM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `point_book`
--

INSERT INTO `point_book` (`Tanggal`, `Nama_Kegiatan`, `Poin`, `Keterangan`, `UKM`) VALUES
('2022-07-09', 'BADMINTON CUP IV TAHUN 2023 STMIK WIDYA PRATAMA', 35, 'ANGGOTA KEPANITIAAN', 'OLAHRAGA'),
('2022-10-15', 'FATASTIK 2022', 25, 'PESERTA KEGIATAN', 'OLAHRAGA'),
('2022-10-15', 'FESTIVAL MUSIK PATRIOT TAHUN 2022', 25, 'PESERTA KEGIATAN', 'KESENIAN'),
('2022-09-03', 'INAGURASI TAHUN 2022', 25, 'PESERTA KEGIATAN', 'BEM'),
('2023-02-14', 'LKMM TINGKAT DASAR TAHUN 2023 GEL 1 (14-16 FEB 202', 25, 'PESERTA KEGIATAN', 'BEM'),
('2023-02-11', 'SPORTCAMP VII 2023, 11-12 FEBRUARI 2023', 25, 'PESERTA KEGIATAN', 'OLAHRAGA'),
('2022-12-02', 'WEBINAR GRACIACORP TECH INOVATION 2022', 25, 'PESERTA KEGIATAN', 'PK');

-- --------------------------------------------------------

--
-- Table structure for table `progdi`
--

CREATE TABLE `progdi` (
  `progdi_id` int(11) NOT NULL,
  `nama_progdi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `progdi`
--

INSERT INTO `progdi` (`progdi_id`, `nama_progdi`) VALUES
(110, 'Manajement Informatika'),
(120, 'Komputerisasi Akuntansi'),
(230, 'Sistem Informasi'),
(240, 'Tekhnik Informatika');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `progdi_id` (`progdi_id`);

--
-- Indexes for table `point_book`
--
ALTER TABLE `point_book`
  ADD PRIMARY KEY (`Nama_Kegiatan`);

--
-- Indexes for table `progdi`
--
ALTER TABLE `progdi`
  ADD PRIMARY KEY (`progdi_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`progdi_id`) REFERENCES `progdi` (`progdi_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
