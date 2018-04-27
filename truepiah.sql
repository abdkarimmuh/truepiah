-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 10.4.1.136
-- Generation Time: Apr 27, 2018 at 03:06 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u567600251_btani`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_team` int(11) NOT NULL,
  `waktu_awal` date NOT NULL,
  `waktu_akhir` date NOT NULL,
  `uang` int(11) NOT NULL,
  `deskripsi` text COLLATE utf8_unicode_ci NOT NULL,
  `id_man1` int(11) NOT NULL,
  `dana1` int(11) NOT NULL,
  `id_man2` int(11) NOT NULL,
  `dana2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_member`, `id_team`, `waktu_awal`, `waktu_akhir`, `uang`, `deskripsi`, `id_man1`, `dana1`, `id_man2`, `dana2`) VALUES
(1, 2, 3, '2018-07-27', '2019-04-30', 20000000, 'Di Pejaten, DKI Jakarta ulah lintah darat atau rentenir begitu meresahkan. Telah banyak masyarakat yang menjadi korban jeratan rentenir. Salah satunya adalah Fina Yuliani, wirausaha yang berusia 35 tahun.\r\nPerempuan yang tinggal di Pejaten Timur , Pasar Minggu ini harus merelakan Buku Pemilik Kendaraan Bermotor (BPKB) sepeda motor dan ijazah sarjana miliknya disita oleh rentenir.\r\nTidak hanya itu ia juga selama tiga tahun lebih sudah membayar cicilan bunga hingga 40 juta rupiah. Padahal menurut pengakuan Fina, saat itu ia hanya meminjam uang ke rentenir sebesar 6 juta rupiah. Fina memaparkan bahwa saat peminjaman memang ada perjanjian tidak tertulis perihal bunga sebesar 20 persen dari nilai uang dipinjamkan setiap bulannya.\r\n', 1, 15000000, 3, 5000000),
(2, 1, 1, '2018-07-25', '2018-11-30', 8000000, 'Butuh uang cepat untuk membayar tunggakan pendidikan anak saya, semoga yang memberi pinjaman diberikan pahala yang berlimpah.\r\n\r\ninsyaAllah saya akan kerja keras untuk membayar hutang disini.\r\n\r\nTerima kasih telah memberikan pinjaman syariah tanpa bunga, denda dan penalty', 3, 4000000, 2, 4000000),
(5, 3, 2, '2018-04-17', '2018-09-30', 15000000, 'Saya perlu pinjaman untuk merenovasi rumah saya yang genteng nya sudah mau roboh karena rumah tua yang bangunannya sudah 40 tahun ini kayunya banyak dimakan rayap\r\n\r\nTerima kasih telah membantu', 2, 10000000, 1, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `trueMan`
--

CREATE TABLE `trueMan` (
  `id_man` int(11) NOT NULL,
  `nama` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `no_hp` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trueMan`
--

INSERT INTO `trueMan` (`id_man`, `nama`, `email`, `no_hp`, `saldo`) VALUES
(1, 'Haji Rhoma', 'romacayangdia@yahoo.com', '081111345', 150000000),
(2, 'Eko Red Eagle', 'eko@google.com', '08123456789', 20000000),
(3, 'BAZNAS', 'info@baznas.org', '0217871566', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trueMember`
--

CREATE TABLE `trueMember` (
  `id_member` int(11) NOT NULL,
  `nama` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `ttl` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pekerjaan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tempat_kerja` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `no_hp` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trueMember`
--

INSERT INTO `trueMember` (`id_member`, `nama`, `ttl`, `jenis_kelamin`, `status`, `pekerjaan`, `tempat_kerja`, `alamat`, `no_hp`, `email`, `saldo`) VALUES
(1, 'Cristiano Ronaldo', 'Bekasi, 21 Januari 1986', 'L', 'Belum Kawin', 'Buruh Sawah', 'Sawah pak parmin', 'Jl. Kesetiaan 4 No 7 Ujung Sawah, Dramaga, Bogor', '081243563235', 'ronaldotersenyum@gmail.com', 0),
(2, 'Sule Andrean', 'Tegal, 5 Mei 1970', 'L', 'Kawin', 'Office Boy', 'SDN 12 Pagi', 'Jl. Tapigajadian 6 no.1A Sukamakmur, Tegal', '08987654321', 'sulecayangdiacelamanya@gmail.com', 0),
(3, 'Roby Purba', 'Tanggerang, 17 Agustus 1986', 'L', 'Belum Kawin', 'Buruh Pabrik', 'Semen Garam Putih', 'Jalan Kasih Sayang, No 51, Srengseng Sawah, Jaksel', '088219102912', 'robypurbaganteng@yahoo.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trueTeam`
--

CREATE TABLE `trueTeam` (
  `id_team` int(11) NOT NULL,
  `nama` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `ttl` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pekerjaan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tempat_kerja` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `no_hp` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trueTeam`
--

INSERT INTO `trueTeam` (`id_team`, `nama`, `ttl`, `jenis_kelamin`, `status`, `pekerjaan`, `tempat_kerja`, `alamat`, `no_hp`, `email`, `saldo`) VALUES
(1, 'Jhonson Al Athur', 'Lampung, 19 Januari 1978', 'L', 'Kawin', 'Digital Marketing', 'Pantai Indah Kapuk', 'Jl Situ Manis, No.51, Jakpus', '088214591221', 'alathurjhonson@yahoo.co.id', 0),
(2, 'Joko Santoso', 'Surabaya, 21 Oktober 1981', 'L', 'Kawin', 'Driver Online', 'Gojek Indonesia', 'Jl Baru Banget, No.53 Tangsel', '085280091231', 'jokosantoso@yahoo.co.id', 0),
(3, 'Karim Nashrillah', 'Jakarta, 2 Agustus 1995', 'L', 'Belum Kawin', 'Mahasiswa', 'STT Terpadu Nurul Fikri', 'Jl. Kenangan No12 Srengseng Sawah, Jakarta', '085789432123', 'karimcelalucemangat@gmail.com', 180000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD UNIQUE KEY `id_member` (`id_member`),
  ADD UNIQUE KEY `id_team` (`id_team`),
  ADD UNIQUE KEY `id_man1` (`id_man1`),
  ADD UNIQUE KEY `id_man2` (`id_man2`);

--
-- Indexes for table `trueMan`
--
ALTER TABLE `trueMan`
  ADD PRIMARY KEY (`id_man`);

--
-- Indexes for table `trueMember`
--
ALTER TABLE `trueMember`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `trueTeam`
--
ALTER TABLE `trueTeam`
  ADD PRIMARY KEY (`id_team`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trueMan`
--
ALTER TABLE `trueMan`
  MODIFY `id_man` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trueMember`
--
ALTER TABLE `trueMember`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trueTeam`
--
ALTER TABLE `trueTeam`
  MODIFY `id_team` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `trueMember` (`id_member`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_team`) REFERENCES `trueTeam` (`id_team`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_man1`) REFERENCES `trueMan` (`id_man`),
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`id_man2`) REFERENCES `trueMan` (`id_man`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
