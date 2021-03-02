-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2021 at 03:11 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appm`
--

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('0110212123', 'Aldi', 'aldi', 'aldi', '0215412145'),
('0110274521', 'irfa', 'irfa', '123456', '08996464513'),
('0110274589151', 'Jaenal', 'jaenal', '123456', '0877845651'),
('123546', 'User', 'user', '123', '08996464578'),
('789798794654', 'ADEL', 'ADEL', '', '86964612');

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat2`
--

CREATE TABLE `masyarakat2` (
  `nik` char(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masyarakat2`
--

INSERT INTO `masyarakat2` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('123456', 'della', 'della', '', '8787');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` char(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan2`
--

CREATE TABLE `pengaduan2` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` char(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaduan2`
--

INSERT INTO `pengaduan2` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(1, '2021-01-28', '0110255415', 'lihat lah', 'Opera Snapshot_2020-06-08_154122_www.instagram.com.png', 'selesai'),
(2, '2021-01-28', '0110255415', 'aas', '', 'selesai'),
(3, '2021-01-28', '0110212123', 'males dah punya pacar', '5e606cbe70996-mahen-dan-tiara_663_372.jpg', 'selesai'),
(4, '2021-01-28', '0110212123', 'banyakl', 'Screenshot_2020-01-28-10-17-07.png', 'selesai'),
(5, '2021-01-28', '0110274521', 'kebanyaka ', 'cloud-brushes-preview.jpg', 'selesai'),
(6, '2021-01-28', '0110212123', 'sadf', 'IMG-20190614-WA0005.jpg', 'selesai'),
(7, '2021-01-28', '0110212123', 'adfasdf', 'IMG-20200127-WA0031.jpg', 'selesai'),
(8, '2021-01-28', '0110274521', 'laporan ada maling ngabadog kopi', 'Screenshot_2020-10-09-15-55-19.png', 'selesai'),
(9, '2021-01-28', '0110274521', 'plis', '', 'selesai'),
(10, '2021-01-28', '0110212123', 'a', '', 'selesai'),
(11, '2021-01-28', '0110212123', 'i love you', '7e267b49819043e6ad46a3cb60bfb354.jpg', 'selesai'),
(12, '2021-01-29', '', '', '', 'selesai'),
(13, '2021-01-29', '0110274521', 'Ada maling daerah jawa', 'DElla.jpg', 'selesai'),
(14, '2021-01-29', '0110274521', 'mohon di tindak lanjuti ini', 'DSC_0157.JPG', 'selesai'),
(15, '2021-01-29', '0110274521', '', '', 'selesai'),
(16, '2021-01-29', '0110212123', 'coba dah', 'CSC_0143.JPG', 'selesai'),
(17, '2021-01-29', '0110212123', 'coba dah', 'CSC_0143.JPG', 'selesai'),
(18, '2021-01-29', '0110212123', 'iyeuh', 'Opera Snapshot_2020-06-08_154122_www.instagram.com.png', 'selesai'),
(19, '2021-01-30', '0110212123', 'coba 1', '20200306_150849.jpg', 'selesai'),
(20, '2021-01-30', '0110274521', 'anjir', 'IMG-20200225-WA0005.jpg', 'selesai'),
(21, '2021-01-30', '789798794654', 'WELL', 'IMG-20200214-WA0009.jpg', 'selesai'),
(22, '2021-01-30', '789798794654', 'Saya Mau menanggapi deong om.. sekitar rumah saya udh mulai pada gajelas.. o iya tolong di ada-in ini dong pencak silat bina satria.. klo pencak nya \r\ncuman fisik jurus fisik jurus mh bosen saya ingin ada ngibing nya.. di iringi lagu pencak ibing bangbung hideung gtuh.. tolong ya pak', 'IMG-20200305-WA0006.jpg', 'selesai'),
(23, '2021-02-03', '789798794654', 'hayolohh', 'IMG-20200228-WA0006.jpg', 'selesai'),
(24, '2021-02-03', '123546', 'Ada Maling om', 'IMG-20200225-WA0005.jpg', 'selesai'),
(25, '2021-02-03', '0110274589151', 'SELAMAT SIANG BAPAK.. \r\nJALAN DI SEKITAR RUMAH SAYA AMBLAS PAK.. MOHON SEGERA DIPERBAIKI.\r\nTERIMA KASIH', 'IMG-20200305-WA0031.jpg', 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(1, 'admin', 'admin', 'admin', '0856465', 'admin'),
(2, 'petugas', 'petugas', 'petugas', '456789', 'petugas'),
(3, 'Ridwan', 'ridwan', '1234', '089964645', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan2`
--

CREATE TABLE `tanggapan2` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanggapan2`
--

INSERT INTO `tanggapan2` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(13, 22, '2021-01-30', 'oke ade berjilbab ungu.. akan kami proses.. kalo boleh minta nomer adek untuk memudahkan mengontek orang perguruannya..', 1),
(14, 23, '2021-02-03', '        garing\r\n', 1),
(15, 24, '2021-02-03', '        baik segera dio proses', 1),
(16, 25, '2021-02-03', 'baik pak.. pihak lalu lintas dan perbaikan jalan akan segera meninjau ke lokasi', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `pengaduan2`
--
ALTER TABLE `pengaduan2`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- Indexes for table `tanggapan2`
--
ALTER TABLE `tanggapan2`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pengaduan2`
--
ALTER TABLE `pengaduan2`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tanggapan2`
--
ALTER TABLE `tanggapan2`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_ibfk_1` FOREIGN KEY (`id_pengaduan`) REFERENCES `petugas` (`id_petugas`) ON DELETE NO ACTION;

--
-- Constraints for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `tanggapan_ibfk_1` FOREIGN KEY (`id_tanggapan`) REFERENCES `pengaduan` (`id_pengaduan`) ON DELETE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
