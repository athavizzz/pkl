-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 08:32 AM
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
-- Database: `db_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `harga_sewa`
--

CREATE TABLE `harga_sewa` (
  `ID` int(10) NOT NULL,
  `pemilik_id` int(50) NOT NULL,
  `harga` varchar(25) NOT NULL,
  `discount` int(100) NOT NULL,
  `nominal_denda` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemilik_kendaraan`
--

CREATE TABLE `pemilik_kendaraan` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `jenis_mobil` varchar(25) NOT NULL,
  `merk_mobil` varchar(100) NOT NULL,
  `jumlah_kursi` int(15) NOT NULL,
  `plat_nomor` varchar(10) NOT NULL,
  `warna_mobil` varchar(100) NOT NULL,
  `tahun_kendaraan` year(4) NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penyewa`
--

CREATE TABLE `penyewa` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  `saldo_dompet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `tanggal_pinjam` datetime NOT NULL,
  `no_trans` int(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pemilik_id` int(11) NOT NULL,
  `penyewa_id` int(11) NOT NULL,
  `lama_pinjam` datetime NOT NULL,
  `harga_sewa_id` int(11) NOT NULL,
  `tanggal_kembali` datetime NOT NULL,
  `jenis_mobil` varchar(50) NOT NULL,
  `merk_mobil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `nama_lengkap` varchar(11) NOT NULL,
  `no_hp` int(11) NOT NULL,
  `alamat` varchar(11) NOT NULL,
  `no_ktp` int(11) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `tempat_tanggal_lahir` date NOT NULL,
  `tipe_user` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `username`, `password`, `nama_lengkap`, `no_hp`, `alamat`, `no_ktp`, `jenis_kelamin`, `tempat_tanggal_lahir`, `tipe_user`) VALUES
(123, 'athallah', 'nggapunya', 'athallah', 123, 'ad', 987654321, 'laki-laki', '2023-05-09', 'penyewa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `harga_sewa`
--
ALTER TABLE `harga_sewa`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pemilik_kendaraan`
--
ALTER TABLE `pemilik_kendaraan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `harga_sewa`
--
ALTER TABLE `harga_sewa`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemilik_kendaraan`
--
ALTER TABLE `pemilik_kendaraan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penyewa`
--
ALTER TABLE `penyewa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
