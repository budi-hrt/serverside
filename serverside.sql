-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2019 at 08:21 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrd`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id_jabatan` smallint(8) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `area_dinas` varchar(200) NOT NULL,
  `is_active` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id_jabatan`, `nama_jabatan`, `area_dinas`, `is_active`) VALUES
(1, 'Pimpinan ', 'staff', 1),
(2, 'Administrasi', 'staff', 1),
(3, 'Sales Kanvas', 'lapangan', 1),
(4, 'Driver', 'lapangan', 1),
(5, 'Mekanik', 'kantor', 1),
(6, 'Sales Droping', 'lapangan', 1),
(7, 'Helper', 'kantor', 1),
(8, 'Serabutan', 'kantor', 1),
(9, 'sff', 'lapangan', 1),
(10, 'dfgg', 'staff', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `ID` mediumint(8) NOT NULL,
  `nama` varchar(75) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `id_jabatan` varchar(75) NOT NULL,
  `email` varchar(75) NOT NULL,
  `handphone` varchar(75) NOT NULL,
  `foto_karyawan` varchar(200) NOT NULL,
  `id_status` smallint(5) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`ID`, `nama`, `jenis_kelamin`, `id_jabatan`, `email`, `handphone`, `foto_karyawan`, `id_status`, `active`) VALUES
(1, 'Antonius Lele', 'l', '1', '-', '081', 'img_1510925528.jpg', 1, 1),
(2, 'Nurlina Abd. Halim', 'p', '2', 'liena@yahoo.com', '081', 'img_1511071268.jpg', 1, 1),
(3, 'Mashita Habibu', 'p', '2', 'mashita@gmail.com', '08121', 'img_1513084653.jpg', 1, 1),
(4, 'Umi Baroro', 'p', '2', 'umi@gmail.com', '0834567', 'img_1511071350.jpg', 1, 1),
(5, 'Muhlis', 'l', '3', '-', '0812345', 'img_1513085050.jpg', 1, 1),
(6, 'Sugianto', 'l', '6', '-', '-', 'No Pict.jpg', 1, 1),
(7, 'Marsit', 'l', '3', '-', '-', 'No Pict.jpg', 1, 1),
(8, 'Budi Harto', 'l', '2', 'budi.hrt@outlook.co.id', '081354380434', 'budi.jpg', 1, 1),
(10, 'Fikra', 'l', '3', '-', '-', 'No Pict.jpg', 1, 1),
(11, 'Fachrudin', 'l', '6', '-', '-', 'No Pict.jpg', 1, 1),
(14, 'Didi', 'l', '3', '-', '-', 'No Pict.jpg', 1, 1),
(15, 'Raflin', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(16, 'Sujarno', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(18, 'Yahya', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(19, 'Mansur Badja', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(20, 'Safrudin Rasyid', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(21, 'Hengky', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(23, 'Yonav', 'l', '3', '-', '-', 'No Pict.jpg', 1, 1),
(24, 'Maxianus', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(25, 'Felix', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(26, 'Bambang W', 'l', '3', '-', '-', 'No Pict.jpg', 1, 1),
(27, 'Ahir', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(28, 'Dudi Frangky', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(29, 'Bambang Y', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(30, 'Pedro', 'l', '5', '-', '-', 'No Pict.jpg', 1, 1),
(31, 'Yusuf Hemuto', 'l', '3', '-', '-', 'No Pict.jpg', 1, 1),
(32, 'Sapri', 'l', '3', '-', '-', 'No Pict.jpg', 1, 1),
(33, 'Rusdin', 'l', '3', '-', '-', 'No Pict.jpg', 1, 1),
(35, 'Andri', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(36, 'Moh.Rifai', 'l', '3', '-', '-', 'No Pict.jpg', 2, 1),
(37, 'Irwan', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(40, 'Arman', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(41, 'Faisal', 'l', '3', '-', '-', 'No Pict.jpg', 1, 1),
(42, 'Randi', 'l', '3', '-', '-', 'No Pict.jpg', 1, 1),
(43, 'Adrianus', 'l', '7', '-', '-', 'No Pict.jpg', 2, 1),
(48, 'Aswin', 'l', '4', '-', '-', 'No Pict.jpg', 1, 2),
(50, 'Galuh', 'l', '4', '-', '-', 'No Pict.jpg', 1, 1),
(54, 'Marianus', 'l', '3', '-', '-', 'No Pict.jpg', 2, 1),
(59, 'Aziz', 'l', '4', '-', '-', 'No Pict.jpg', 2, 1),
(60, 'Ansel', 'l', '4', '-', '-', 'No Pict.jpg', 2, 1),
(62, 'I Kadek', 'l', '3', '-', '-', 'No Pict.jpg', 2, 1),
(63, 'Gunawan', 'l', '4', '-', '-', 'No Pict.jpg', 2, 1),
(66, 'Fahril', 'l', '3', '-', '-', 'No Pict.jpg', 2, 2),
(67, 'Teguh', 'l', '4', '-', '-', 'No Pict.jpg', 2, 2),
(68, 'Frangkiln', 'l', '4', '-', '-', 'No Pict.jpg', 2, 1),
(69, 'Moh.Padil', 'l', '3', '-', '-', 'No Pict.jpg', 2, 2),
(70, 'Djafrin', 'l', '4', '-', '-', 'No Pict.jpg', 2, 1),
(74, 'Edison', 'l', '4', '-', '-', 'No Pict.jpg', 2, 1),
(75, 'Eugenius Nong Herbert', 'l', '3', '-', '-', 'No Pict.jpg', 2, 1),
(76, 'Taufik Efendi', 'l', '3', '-', '-', 'No Pict.jpg', 2, 2),
(78, 'Randyansah', 'l', '4', '-', '-', 'No Pict.jpg', 2, 2),
(79, 'Muzakir', 'l', '3', '-', '-', 'No Pict.jpg', 2, 1),
(80, 'Ilham', 'l', '3', '-', '-', 'No Pict.jpg', 2, 2),
(81, 'Sujarwadi', 'l', '2', '-', '-', 'No Pict.jpg', 2, 1),
(84, 'Saleh', 'l', '3', '-', '-', 'No Pict.jpg', 2, 2),
(85, 'Al- Jefri', 'l', '4', '-', '-', 'No Pict.jpg', 2, 1),
(86, 'Jusli', 'l', '4', '-', '-', 'No Pict.jpg', 2, 2),
(87, 'Samsinar', 'p', '2', '-', '-', 'No Pict.jpg', 2, 1),
(89, 'Ahyadi', 'l', '3', '-', '-', 'No Pict.jpg', 2, 1),
(90, 'Edy Saputra', 'l', '3', '-', '-', 'No Pict.jpg', 2, 2),
(92, 'Salmon', 'l', '4', '-', '-', 'No Pict.jpg', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan_detil`
--

CREATE TABLE `tb_karyawan_detil` (
  `id_detil` int(11) NOT NULL,
  `ID` smallint(8) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `rt` varchar(10) NOT NULL,
  `rw` varchar(10) NOT NULL,
  `kecamatan` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `status_perkawinan` varchar(50) NOT NULL,
  `npwp` varchar(100) NOT NULL,
  `active_detil` smallint(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kontrak`
--

CREATE TABLE `tb_kontrak` (
  `id_kontrak` int(11) NOT NULL,
  `id_status` smallint(8) NOT NULL,
  `nama_kontrak` varchar(100) NOT NULL,
  `masa_kontrak` varchar(100) NOT NULL,
  `active` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kontrak`
--

INSERT INTO `tb_kontrak` (`id_kontrak`, `id_status`, `nama_kontrak`, `masa_kontrak`, `active`) VALUES
(1, 1, 'Tetap', '-', 1),
(2, 2, 'Kontrak 1 Bulan', '1  Bulan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `id_status` int(11) NOT NULL,
  `nama_status` varchar(200) NOT NULL,
  `ket_status` varchar(150) NOT NULL,
  `status_active` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`id_status`, `nama_status`, `ket_status`, `status_active`) VALUES
(1, 'Karyawan Tetap', 'Tetap', 1),
(2, 'Karyawan Kontrak', 'Kontrak', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_karyawan_detil`
--
ALTER TABLE `tb_karyawan_detil`
  ADD PRIMARY KEY (`id_detil`);

--
-- Indexes for table `tb_kontrak`
--
ALTER TABLE `tb_kontrak`
  ADD PRIMARY KEY (`id_kontrak`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`id_status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `id_jabatan` smallint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  MODIFY `ID` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `tb_karyawan_detil`
--
ALTER TABLE `tb_karyawan_detil`
  MODIFY `id_detil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kontrak`
--
ALTER TABLE `tb_kontrak`
  MODIFY `id_kontrak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
