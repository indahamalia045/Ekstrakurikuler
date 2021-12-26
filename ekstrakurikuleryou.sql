-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2020 at 05:24 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekstrakurikuler`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `ekskul_pendidikan_karakter` varchar(60) NOT NULL,
  `ekskul_pbm` varchar(60) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `kelas` varchar(9) NOT NULL,
  `keterangan` varchar(12) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `ekskul_pendidikan_karakter`, `ekskul_pbm`, `nama_lengkap`, `kelas`, `keterangan`, `tanggal_input`) VALUES
(1, 'Pramuka', '', 'Syifa Sholiha', 'VII D', 'Hadir', '2019-09-26 20:17:17'),
(2, 'Pramuka', '', 'Tio Rahmandika', 'VII D', 'Hadir', '2019-10-03 22:23:00'),
(3, 'Pramuka', '', 'Syifa Sholiha', 'VII D', 'Tidak', '2019-09-05 17:00:00'),
(4, 'Pramuka', '', 'Tio Rahmandika', 'VII D', 'Hadir', '2019-09-12 17:00:00'),
(5, '', 'Tim Redaksi', 'Syifa Sholiha', 'VII D', 'Hadir', '2019-09-16 17:00:00'),
(6, '', 'Tim Redaksi', 'Tio Rahmandika', 'VII D', 'Tidak', '2019-09-25 17:00:00'),
(7, 'Palang Merah Remaja', '', 'Ria Olive', 'VII B', 'Hadir', '2019-12-31 07:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakurikuler`
--

CREATE TABLE `ekstrakurikuler` (
  `id_ekskul` int(11) NOT NULL,
  `nama_ekskul` varchar(45) NOT NULL,
  `jenis_ekskul` enum('Ekstrakurikuler Pendidikan Karakter','Ekstrakurikuler Pengembangan Bakat dan Minat (PBM)') NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ekstrakurikuler`
--

INSERT INTO `ekstrakurikuler` (`id_ekskul`, `nama_ekskul`, `jenis_ekskul`, `tanggal_input`) VALUES
(1, 'Pramuka', 'Ekstrakurikuler Pendidikan Karakter', '0000-00-00 00:00:00'),
(2, 'Palang Merah Remaja', 'Ekstrakurikuler Pendidikan Karakter', '0000-00-00 00:00:00'),
(3, 'KIBARA (Korps Inti Pengibar Bendera)', 'Ekstrakurikuler Pendidikan Karakter', '0000-00-00 00:00:00'),
(4, 'Kharisma', 'Ekstrakurikuler Pengembangan Bakat dan Minat (PBM)', '0000-00-00 00:00:00'),
(5, 'Paduan Suara', 'Ekstrakurikuler Pengembangan Bakat dan Minat (PBM)', '0000-00-00 00:00:00'),
(6, 'Seni Karawitan', 'Ekstrakurikuler Pengembangan Bakat dan Minat (PBM)', '0000-00-00 00:00:00'),
(7, 'Basket', 'Ekstrakurikuler Pengembangan Bakat dan Minat (PBM)', '0000-00-00 00:00:00'),
(8, 'English Club', 'Ekstrakurikuler Pengembangan Bakat dan Minat (PBM)', '0000-00-00 00:00:00'),
(9, 'Sepak Bola', 'Ekstrakurikuler Pengembangan Bakat dan Minat (PBM)', '0000-00-00 00:00:00'),
(10, 'Tae Kwon Do', 'Ekstrakurikuler Pengembangan Bakat dan Minat (PBM)', '0000-00-00 00:00:00'),
(11, 'Tim Redaksi', 'Ekstrakurikuler Pengembangan Bakat dan Minat (PBM)', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu') NOT NULL,
  `jam_masuk` varchar(5) NOT NULL,
  `jam_keluar` varchar(5) NOT NULL,
  `id_pelatih` int(11) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `nama_ekskul` varchar(45) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `hari`, `jam_masuk`, `jam_keluar`, `id_pelatih`, `nama_lengkap`, `nama_ekskul`, `tanggal_input`) VALUES
(1, 'Selasa', '14:05', '15:30', 1, 'Arif', 'KIBARA (Korps Inti Pengibar Bendera)', '0000-00-00 00:00:00'),
(2, 'Selasa', '14:05', '15:30', 2, 'Indra Permana', 'Pramuka', '2019-09-22 12:50:43'),
(3, 'Selasa', '14:05', '15:30', 3, 'Agus Hidayat', 'Palang Merah Remaja', '0000-00-00 00:00:00'),
(4, 'Jumat', '13:00', '16:00', 4, 'Ai Susan', 'Kharisma', '0000-00-00 00:00:00'),
(5, 'Jumat', '13:00', '15:00', 5, 'Priyanto Tri', 'Tae Kwon Do', '0000-00-00 00:00:00'),
(6, 'Jumat', '13:00', '15:00', 6, 'Bagio', 'Sepak Bola', '0000-00-00 00:00:00'),
(7, 'Jumat', '13:00', '15:00', 7, 'U Sumantri', 'Seni Karawitan', '0000-00-00 00:00:00'),
(8, 'Jumat', '13:00', '15:00', 8, 'Dadang Koswara', 'Paduan Suara', '0000-00-00 00:00:00'),
(9, 'Jumat', '13:00', '15:00', 10, 'IIn Aryani', 'English Club', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(9) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `tanggal_input`) VALUES
(1, 'VII  A', '2019-09-22 09:49:23'),
(2, 'VII B', '2019-09-22 09:52:21'),
(3, 'VII C', '2019-09-22 09:53:21'),
(4, 'VII D', '2019-09-22 09:54:21'),
(5, 'VIII A', '2019-09-22 09:55:21'),
(6, 'VIII B', '2019-09-22 09:56:21'),
(7, 'VIII C', '2019-09-22 09:57:21'),
(8, 'VIII D', '2019-09-22 09:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `ekskul_pendidikan_karakter` varchar(60) NOT NULL,
  `ekskul_pbm` varchar(60) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `kelas` varchar(9) NOT NULL,
  `nilai` varchar(4) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `ekskul_pendidikan_karakter`, `ekskul_pbm`, `nama_lengkap`, `kelas`, `nilai`, `tanggal_input`) VALUES
(1, 'Pramuka', '', 'Syifa Sholiha', 'VII D', 'A', '2019-12-31 07:11:00'),
(2, 'Pramuka', '', 'Tio Rahmandika', 'VII D', 'B', '2019-12-31 07:12:00'),
(3, '', 'Tim Redaksi', 'Syifa Sholiha', 'VII D', 'A', '2019-12-31 07:13:00'),
(4, '', 'Tim Redaksi', 'Tio Rahmandika', 'VII D', 'B', '2019-12-31 07:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `pelatih`
--

CREATE TABLE `pelatih` (
  `id_pelatih` int(11) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `gelar` varchar(35) NOT NULL,
  `id_ekskul` int(11) NOT NULL,
  `nama_ekskul` varchar(45) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelatih`
--

INSERT INTO `pelatih` (`id_pelatih`, `nama_lengkap`, `gelar`, `id_ekskul`, `nama_ekskul`, `tanggal_input`) VALUES
(1, 'Arif', '', 3, 'KIBARA (Korps Inti Pengibar Bendera)', '2019-09-22 12:24:48'),
(2, 'Indra Permana', '', 1, 'Pramuka', '2019-09-22 11:33:18'),
(3, 'Agus Hidayat', '', 2, 'Palang Merah Remaja', '2019-09-22 11:34:18'),
(4, 'Ai Susan', 'S.Pd.I', 4, 'Kharisma', '2019-09-22 11:35:18'),
(5, 'Priyanto Tri', 'S.Pd.I', 10, 'Tae Kwon Do', '2019-09-22 11:36:18'),
(6, 'Bagio', 'S.Pd', 9, 'Sepak Bola', '2019-09-22 11:37:18'),
(7, 'U Sumantri', 'S,Sn', 6, 'Seni Karawitan', '2019-09-22 11:38:18'),
(8, 'Dadang Koswara', '', 5, 'Paduan Suara', '2019-09-22 11:39:18'),
(10, 'IIn Aryani', 'S.Pd', 8, 'English Club', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `kelas` varchar(9) NOT NULL,
  `ekskul_pendidikan_karakter` varchar(60) NOT NULL,
  `ekskul_pbm` varchar(60) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `nama_panggilan` varchar(25) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P','','') NOT NULL,
  `agama` enum('Islam','Kristen Protestan','Kristen Katolik','Hindu','Buddha','Khonghucu') NOT NULL,
  `alamat` text NOT NULL,
  `nomor_telepon` varchar(13) NOT NULL,
  `nama_ortu` varchar(35) NOT NULL,
  `alamat_ortu` text NOT NULL,
  `nomor_telepon_ortu` varchar(13) NOT NULL,
  `pengalaman_organisasi` varchar(25) NOT NULL DEFAULT 'belum pernah',
  `prestasi` varchar(100) NOT NULL DEFAULT 'tidak ada',
  `status_pendaftaran` enum('menunggu','diterima') NOT NULL DEFAULT 'menunggu',
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `kelas`, `ekskul_pendidikan_karakter`, `ekskul_pbm`, `nama_lengkap`, `nama_panggilan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `nomor_telepon`, `nama_ortu`, `alamat_ortu`, `nomor_telepon_ortu`, `pengalaman_organisasi`, `prestasi`, `status_pendaftaran`, `tanggal_input`) VALUES
(1, 'VII B', 'Palang Merah Remaja', 'English Club', 'Ria Olive', 'Ria', 'Bandung', '2009-09-09', 'P', 'Kristen Protestan', 'Jl. Parakan Waas no.12, Bandung', '08298700921', 'Refdi Rosikin', 'Jl. Parakan Waas no.12, Bandung', '08532321123', '', '', 'diterima', '2019-09-23 09:00:51'),
(2, 'VII D', 'Pramuka', 'Tim Redaksi', 'Syifa Sholiha', 'Syifa', 'Bandung', '2009-09-09', 'P', 'Islam', 'Jl. Parakan Waas no.12A, Bandung', '08901224221', 'Rohyan Rosyid', 'Jl. Parakan Waas no.12A, Bandung', '081902109322', '', '', 'diterima', '2019-09-23 11:29:32'),
(3, 'VII D', 'Pramuka', 'Tim Redaksi', 'Tio Rahmandika', 'Tio', 'Bandung', '2009-06-06', 'L', 'Kristen Protestan', 'Jl. Kebon Kopi no.23, Cijerah, Bandung ', '08120091212', 'Sholihin', 'Jl. Kebon Kopi no.23, Cijerah, Bandung', '08212900182', '', '', 'diterima', '2019-09-26 09:43:57'),
(4, 'VII B', 'Palang Merah Remaja', 'English Club', 'Budi', 'Budi', 'Bandung', '2009-07-08', 'L', 'Islam', 'Jl. Waas no.23, Bandung', '089190022', 'Misnan', 'Jl. Waas no.23, Bandung', '081202990', '', '', 'menunggu', '0000-00-00 00:00:00'),
(5, 'VII D', 'Pramuka', 'Seni Karawitan', 'Fadil Muhammad', 'Fadil', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '08500912213', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '0821213444', '', '', 'menunggu', '0000-00-00 00:00:00'),
(6, 'VII D', 'Pramuka', 'English Club', 'Fajaruddin Achmad', 'Fajar', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 13:59:32'),
(7, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 13:59:32'),
(8, 'VII D', 'Pramuka', 'English Club', 'Rifky bainuri', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 13:59:32'),
(9, 'VII D', 'Pramuka', 'English Club', 'Reza kurinawan', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 13:59:32'),
(10, 'VII D', 'Pramuka', 'English Club', 'Alcandra nurhakim', 'Candra', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 13:59:33'),
(11, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf', 'Maul', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 13:59:33'),
(12, 'VII D', 'Pramuka', 'English Club', 'Firman sholehudin', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 13:59:33'),
(13, 'VII D', 'Pramuka', 'English Club', 'Jamal akmali', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 13:59:33'),
(14, 'VII D', 'Pramuka', 'English Club', 'Royyan', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 13:59:33'),
(15, 'VII D', 'Pramuka', 'English Club', 'Zainuddin', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 13:59:33'),
(16, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 09:42:00'),
(17, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 09:43:00'),
(18, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 09:44:00'),
(19, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 09:45:00'),
(20, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 09:46:00'),
(21, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 09:47:00'),
(22, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 09:47:00'),
(23, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 09:48:00'),
(24, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 09:49:00'),
(25, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 09:50:00'),
(26, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Kopo no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Kopo no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 09:51:00'),
(27, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Kopo no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Kopo no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 09:51:00'),
(28, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Kopo no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Kopo no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 09:52:00'),
(29, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Kopo no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Kopo no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 09:53:00'),
(30, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Kopo no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Kopo no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 09:54:00'),
(31, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Kopo no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Kopo no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 09:54:00'),
(32, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Kopo no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Kopo no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 09:55:00'),
(33, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Kopo no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Kopo no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 09:56:00'),
(34, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Kopo no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Kopo no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 09:57:00'),
(35, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Kopo no.1, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Kopo no.1, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 09:58:00'),
(36, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Kopo no.2, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Kopo no.2, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 09:58:00'),
(37, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Kopo no.3, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Kopo no.3, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 09:59:00'),
(38, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Kopo no.4, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Kopo no.4, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 10:00:00'),
(39, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Kopo no.5, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Kopo no.5, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 10:01:00'),
(40, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Kopo no.6, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Kopo no.6, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 10:01:00'),
(41, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Kopo no.7, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Kopo no.7, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 10:02:00'),
(42, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Kopo no.8, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Kopo no.8, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 10:03:00'),
(43, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Kopo no.9, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Kopo no.9, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 10:04:00'),
(44, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Kopo no.10, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Kopo no.10, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 10:05:00'),
(45, 'VII D', 'Palang Merah Remaja', 'Kharisma', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Kopo no.20, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Kopo no.20, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 10:05:00'),
(46, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 10:06:00'),
(47, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 10:07:00'),
(48, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 10:08:00'),
(49, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 10:09:00'),
(50, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 10:09:00'),
(51, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 10:10:00'),
(52, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 10:11:00'),
(53, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 10:12:00'),
(54, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 10:12:00'),
(55, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 10:13:00'),
(56, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 10:14:00'),
(57, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 10:15:00'),
(58, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 10:16:00'),
(59, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 10:16:00'),
(60, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 10:17:00'),
(61, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 10:18:00'),
(62, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 10:19:00'),
(63, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 10:19:00'),
(64, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 10:20:00'),
(65, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 10:21:00'),
(66, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 10:22:00'),
(67, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 10:23:00'),
(68, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 10:23:00'),
(69, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 10:24:00'),
(70, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 10:25:00'),
(71, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 10:26:00'),
(72, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 10:27:00'),
(73, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 10:27:00'),
(74, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 10:28:00'),
(75, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 10:29:00'),
(76, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 10:30:00'),
(77, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 10:30:00'),
(78, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 10:31:00'),
(79, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 10:32:00'),
(80, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 10:33:00'),
(81, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 10:34:00'),
(82, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 10:34:00'),
(83, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 10:35:00'),
(84, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 10:36:00'),
(85, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 10:37:00'),
(86, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 10:38:00'),
(87, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 10:38:00'),
(88, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 10:39:00'),
(89, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 10:40:00'),
(90, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 10:41:00'),
(91, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 10:41:00'),
(92, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 10:42:00'),
(93, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 10:43:00'),
(94, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 10:44:00'),
(95, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 10:45:00'),
(96, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 10:45:00'),
(97, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 10:46:00'),
(98, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 10:47:00'),
(99, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 10:48:00'),
(100, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 10:48:00'),
(101, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 10:49:00'),
(102, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 10:50:00'),
(103, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 10:51:00'),
(104, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 10:52:00'),
(105, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 10:52:00'),
(106, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 10:53:00'),
(107, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 10:54:00'),
(108, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 10:55:00'),
(109, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 10:56:00'),
(110, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 10:56:00'),
(111, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 10:57:00'),
(112, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 10:58:00'),
(113, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 10:59:00'),
(114, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 10:59:00'),
(115, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 11:00:00'),
(116, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 11:01:00'),
(117, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 11:02:00'),
(118, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 11:03:00'),
(119, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 11:03:00'),
(120, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 11:04:00'),
(121, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 11:05:00'),
(122, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 11:06:00'),
(123, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 11:06:00'),
(124, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 11:07:00'),
(125, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 11:08:00'),
(126, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 11:09:00'),
(127, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 11:10:00'),
(128, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 11:10:00'),
(129, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 11:11:00'),
(130, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 11:12:00'),
(131, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 11:13:00'),
(132, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 11:14:00'),
(133, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 11:14:00'),
(134, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 11:15:00'),
(135, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 11:16:00'),
(136, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 11:17:00'),
(137, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 11:17:00'),
(138, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 11:18:00'),
(139, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 11:19:00'),
(140, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 11:20:00'),
(141, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 11:21:00'),
(142, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 11:21:00'),
(143, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 11:22:00'),
(144, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 11:23:00'),
(145, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 11:24:00'),
(146, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 11:24:00'),
(147, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 11:25:00'),
(148, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 11:26:00'),
(149, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 11:27:00'),
(150, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 11:28:00'),
(151, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 11:28:00'),
(152, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 11:29:00'),
(153, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 11:30:00'),
(154, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 11:31:00'),
(155, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 11:32:00'),
(156, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 11:32:00'),
(157, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 11:33:00'),
(158, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 11:34:00'),
(159, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 11:35:00'),
(160, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 11:35:00'),
(161, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 11:36:00'),
(162, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 11:37:00'),
(163, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 11:38:00'),
(164, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 11:39:00'),
(165, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 11:39:00'),
(166, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 11:40:00'),
(167, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 11:41:00'),
(168, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 11:42:00'),
(169, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 11:43:00'),
(170, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 11:43:00'),
(171, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 11:44:00'),
(172, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 11:45:00'),
(173, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 11:46:00');
INSERT INTO `pendaftaran` (`id_pendaftaran`, `kelas`, `ekskul_pendidikan_karakter`, `ekskul_pbm`, `nama_lengkap`, `nama_panggilan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `nomor_telepon`, `nama_ortu`, `alamat_ortu`, `nomor_telepon_ortu`, `pengalaman_organisasi`, `prestasi`, `status_pendaftaran`, `tanggal_input`) VALUES
(174, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 11:46:00'),
(175, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 11:47:00'),
(176, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 11:48:00'),
(177, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 11:49:00'),
(178, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 11:50:00'),
(179, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 11:50:00'),
(180, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 11:51:00'),
(181, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 11:52:00'),
(182, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 11:53:00'),
(183, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 11:53:00'),
(184, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 11:54:00'),
(185, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 11:55:00'),
(186, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 11:56:00'),
(187, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 11:57:00'),
(188, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 11:57:00'),
(189, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 11:58:00'),
(190, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 11:59:00'),
(191, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 12:00:00'),
(192, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 12:01:00'),
(193, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 12:01:00'),
(194, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 12:02:00'),
(195, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 12:03:00'),
(196, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 12:04:00'),
(197, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 12:04:00'),
(198, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 12:05:00'),
(199, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 12:06:00'),
(200, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 12:07:00'),
(201, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 12:08:00'),
(202, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 12:08:00'),
(203, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 12:09:00'),
(204, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 12:10:00'),
(205, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 12:11:00'),
(206, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 12:11:00'),
(207, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 12:12:00'),
(208, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 12:13:00'),
(209, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 12:14:00'),
(210, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 12:15:00'),
(211, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 12:15:00'),
(212, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 12:16:00'),
(213, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 12:17:00'),
(214, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 12:18:00'),
(215, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 12:19:00'),
(216, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 12:19:00'),
(217, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 12:20:00'),
(218, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 12:21:00'),
(219, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 12:22:00'),
(220, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 12:22:00'),
(221, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 12:23:00'),
(222, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 12:24:00'),
(223, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 12:25:00'),
(224, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 12:26:00'),
(225, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 12:26:00'),
(226, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 12:27:00'),
(227, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 12:28:00'),
(228, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 12:29:00'),
(229, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 12:30:00'),
(230, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 12:30:00'),
(231, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 12:31:00'),
(232, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 12:32:00'),
(233, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 12:33:00'),
(234, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 12:33:00'),
(235, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 12:34:00'),
(236, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 12:35:00'),
(237, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 12:36:00'),
(238, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 12:37:00'),
(239, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 12:37:00'),
(240, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 12:38:00'),
(241, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 12:39:00'),
(242, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 12:40:00'),
(243, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 12:40:00'),
(244, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 12:41:00'),
(245, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 12:42:00'),
(246, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 12:43:00'),
(247, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 12:44:00'),
(248, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 12:44:00'),
(249, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 12:45:00'),
(250, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 12:46:00'),
(251, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 12:47:00'),
(252, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 12:48:00'),
(253, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 12:48:00'),
(254, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 12:49:00'),
(255, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 12:50:00'),
(256, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 12:51:00'),
(257, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 12:51:00'),
(258, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 12:52:00'),
(259, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 12:53:00'),
(260, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 12:54:00'),
(261, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 12:55:00'),
(262, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 12:55:00'),
(263, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 12:56:00'),
(264, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 12:57:00'),
(265, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 12:58:00'),
(266, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 12:58:00'),
(267, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 12:59:00'),
(268, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 13:00:00'),
(269, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 13:01:00'),
(270, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 13:02:00'),
(271, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 13:02:00'),
(272, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 13:03:00'),
(273, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 13:04:00'),
(274, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 13:05:00'),
(275, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 13:06:00'),
(276, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 13:06:00'),
(277, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 13:07:00'),
(278, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 13:08:00'),
(279, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 13:09:00'),
(280, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 13:09:00'),
(281, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 13:10:00'),
(282, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 13:11:00'),
(283, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 13:12:00'),
(284, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 13:13:00'),
(285, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 13:13:00'),
(286, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 13:14:00'),
(287, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 13:15:00'),
(288, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 13:16:00'),
(289, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 13:17:00'),
(290, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 13:17:00'),
(291, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 13:18:00'),
(292, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 13:19:00'),
(293, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 13:20:00'),
(294, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 13:20:00'),
(295, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 13:21:00'),
(296, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 13:22:00'),
(297, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 13:23:00'),
(298, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 13:24:00'),
(299, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 13:24:00'),
(300, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 13:25:00'),
(301, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 13:26:00'),
(302, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 13:27:00'),
(303, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 13:27:00'),
(304, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 13:28:00'),
(305, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 13:29:00'),
(306, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 13:30:00'),
(307, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 13:31:00'),
(308, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 13:31:00'),
(309, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 13:32:00'),
(310, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 13:33:00'),
(311, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 13:34:00'),
(312, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 13:35:00'),
(313, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 13:35:00'),
(314, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 13:36:00'),
(315, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 13:37:00'),
(316, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 13:38:00'),
(317, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 13:38:00'),
(318, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 13:39:00'),
(319, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 13:40:00'),
(320, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 13:41:00'),
(321, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 13:42:00'),
(322, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 13:42:00'),
(323, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 13:43:00'),
(324, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 13:44:00'),
(325, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 13:45:00'),
(326, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 13:45:00'),
(327, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 13:46:00'),
(328, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 13:47:00'),
(329, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 13:48:00'),
(330, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 13:49:00'),
(331, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 13:49:00'),
(332, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 13:50:00'),
(333, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 13:51:00'),
(334, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 13:52:00'),
(335, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 13:53:00'),
(336, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 13:53:00'),
(337, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 13:54:00'),
(338, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 13:55:00'),
(339, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 13:56:00'),
(340, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 13:56:00'),
(341, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 13:57:00'),
(342, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 13:58:00'),
(343, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 13:59:00'),
(344, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 14:00:00'),
(345, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 14:00:00');
INSERT INTO `pendaftaran` (`id_pendaftaran`, `kelas`, `ekskul_pendidikan_karakter`, `ekskul_pbm`, `nama_lengkap`, `nama_panggilan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `nomor_telepon`, `nama_ortu`, `alamat_ortu`, `nomor_telepon_ortu`, `pengalaman_organisasi`, `prestasi`, `status_pendaftaran`, `tanggal_input`) VALUES
(346, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 14:01:00'),
(347, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 14:02:00'),
(348, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 14:03:00'),
(349, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 14:03:00'),
(350, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 14:04:00'),
(351, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 14:05:00'),
(352, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 14:06:00'),
(353, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 14:07:00'),
(354, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 14:07:00'),
(355, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 14:08:00'),
(356, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 14:09:00'),
(357, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 14:10:00'),
(358, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 14:11:00'),
(359, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 14:11:00'),
(360, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 14:12:00'),
(361, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 14:13:00'),
(362, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 14:14:00'),
(363, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 14:14:00'),
(364, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 14:15:00'),
(365, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 14:16:00'),
(366, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 14:17:00'),
(367, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 14:18:00'),
(368, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 14:18:00'),
(369, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 14:19:00'),
(370, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 14:20:00'),
(371, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 14:21:00'),
(372, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 14:22:00'),
(373, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 14:22:00'),
(374, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 14:23:00'),
(375, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 14:24:00'),
(376, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 14:25:00'),
(377, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 14:25:00'),
(378, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 14:26:00'),
(379, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 14:27:00'),
(380, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 14:28:00'),
(381, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 14:29:00'),
(382, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 14:29:00'),
(383, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 14:30:00'),
(384, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 14:31:00'),
(385, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 14:32:00'),
(386, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 14:32:00'),
(387, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 14:33:00'),
(388, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 14:34:00'),
(389, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 14:35:00'),
(390, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 14:36:00'),
(391, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 14:36:00'),
(392, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 14:37:00'),
(393, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 14:38:00'),
(394, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 14:39:00'),
(395, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 14:40:00'),
(396, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 14:40:00'),
(397, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 14:41:00'),
(398, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 14:42:00'),
(399, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 14:43:00'),
(400, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 14:43:00'),
(401, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 14:44:00'),
(402, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 14:45:00'),
(403, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 14:46:00'),
(404, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 14:47:00'),
(405, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 14:47:00'),
(406, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 14:48:00'),
(407, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 14:49:00'),
(408, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 14:50:00'),
(409, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 14:50:00'),
(410, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 14:51:00'),
(411, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 14:52:00'),
(412, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 14:53:00'),
(413, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 14:54:00'),
(414, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 14:54:00'),
(415, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 14:55:00'),
(416, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 14:56:00'),
(417, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 14:57:00'),
(418, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 14:58:00'),
(419, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 14:58:00'),
(420, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 14:59:00'),
(421, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 15:00:00'),
(422, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 15:01:00'),
(423, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 15:01:00'),
(424, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 15:02:00'),
(425, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 15:03:00'),
(426, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 15:04:00'),
(427, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 15:05:00'),
(428, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 15:05:00'),
(429, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 15:06:00'),
(430, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 15:07:00'),
(431, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 15:08:00'),
(432, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 15:09:00'),
(433, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 15:09:00'),
(434, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 15:10:00'),
(435, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 15:11:00'),
(436, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 15:12:00'),
(437, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 15:12:00'),
(438, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 15:13:00'),
(439, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 15:14:00'),
(440, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 15:15:00'),
(441, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 15:16:00'),
(442, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 15:16:00'),
(443, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 15:17:00'),
(444, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 15:18:00'),
(445, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 15:19:00'),
(446, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 15:19:00'),
(447, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 15:20:00'),
(448, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 15:21:00'),
(449, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 15:22:00'),
(450, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 15:23:00'),
(451, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 15:23:00'),
(452, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 15:24:00'),
(453, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 15:25:00'),
(454, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 15:26:00'),
(455, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 15:27:00'),
(456, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 15:27:00'),
(457, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 15:28:00'),
(458, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 15:29:00'),
(459, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 15:30:00'),
(460, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 15:30:00'),
(461, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 15:31:00'),
(462, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 15:32:00'),
(463, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 15:33:00'),
(464, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 15:34:00'),
(465, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 15:34:00'),
(466, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 15:35:00'),
(467, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 15:36:00'),
(468, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 15:37:00'),
(469, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 15:37:00'),
(470, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 15:38:00'),
(471, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 15:39:00'),
(472, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 15:40:00'),
(473, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 15:41:00'),
(474, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 15:41:00'),
(475, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 15:42:00'),
(476, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 15:43:00'),
(477, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 15:44:00'),
(478, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 15:45:00'),
(479, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 15:45:00'),
(480, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 15:46:00'),
(481, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 15:47:00'),
(482, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 15:48:00'),
(483, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 15:48:00'),
(484, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 15:49:00'),
(485, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 15:50:00'),
(486, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 15:51:00'),
(487, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 15:52:00'),
(488, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 15:52:00'),
(489, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 15:53:00'),
(490, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 15:54:00'),
(491, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 15:55:00'),
(492, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 15:56:00'),
(493, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 15:56:00'),
(494, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 15:57:00'),
(495, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 15:58:00'),
(496, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 15:59:00'),
(497, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 15:59:00'),
(498, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 16:00:00'),
(499, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 16:01:00'),
(500, 'VII D', 'Pramuka', 'English Club', 'Muhammad Rizky Akbar Saputra', 'Rizky', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Shohib', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 16:02:00'),
(501, 'VII D', 'Pramuka', 'English Club', 'Rifky baihaki', 'Rifky', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Toriq', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 16:03:00'),
(502, 'VII D', 'Pramuka', 'English Club', 'Reza saputran', 'Reza', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Zaki', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 16:03:00'),
(503, 'VII D', 'Pramuka', 'English Club', 'Thoriq ', 'Thoriq', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Akmal', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 16:04:00'),
(504, 'VII D', 'Pramuka', 'English Club', 'Maulana yusuf saefullah', 'Maulana', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Rohyan', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 16:05:00'),
(505, 'VII D', 'Pramuka', 'English Club', 'Firman alamsyah', 'Firman', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Candra', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 16:06:00'),
(506, 'VII D', 'Pramuka', 'English Club', 'Jamal jalaludin', 'Jamal', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Diki', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 16:06:00'),
(507, 'VII D', 'Pramuka', 'English Club', 'Royyan burhanudin', 'Royyan', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Alex', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 16:07:00'),
(508, 'VII D', 'Pramuka', 'English Club', 'Zainuddin yusuf', 'Udin', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Noerdin', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 16:08:00'),
(509, 'VII D', 'Pramuka', 'English Club', 'Muhammad Ilyas', 'Ilyas', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Nieke', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 16:09:00'),
(510, 'VII D', 'Pramuka', 'English Club', 'Ilhamuddin zulkarnain', 'Ilham', 'Bandung', '2010-01-11', 'L', 'Islam', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '082328091001', 'Rita ', 'Jl. Parakan Waas no.12, Batununggal, Bandung', '085328091001', '', '', 'menunggu', '2019-11-05 16:10:00'),
(511, 'VII D', 'Pramuka', 'English Club', 'Riki Rahmat', 'Riki', 'Bandung', '2010-01-12', 'L', 'Islam', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '082328091002', 'Saefullah', 'Jl. Parakan Waas no.13, Batununggal, Bandung', '081328091002', '', '', 'menunggu', '2019-11-05 16:10:00'),
(512, 'VII D', 'Pramuka', 'English Club', 'Irpan', 'Irpan', 'Bandung', '2010-01-13', 'L', 'Islam', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '082328091003', 'Yusuf Ramadhan', 'Jl. Parakan Waas no.14, Batununggal, Bandung', '089328091003', '', '', 'menunggu', '2019-11-05 16:11:00'),
(513, 'VII D', 'Pramuka', 'English Club', 'Fathurrohman', 'Fathur', 'Bandung', '2010-01-14', 'L', 'Islam', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '082328091004', 'Jaelani', 'Jl. Parakan Waas no.15, Batununggal, Bandung', '087328091004', '', '', 'menunggu', '2019-11-05 16:12:00'),
(514, 'VII D', 'Pramuka', 'English Club', 'Yofi kurniawan', 'Yofi', 'Bandung', '2010-01-15', 'L', 'Islam', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '082328091005', 'Budi', 'Jl. Parakan Waas no.16, Batununggal, Bandung', '083328091005', '', '', 'menunggu', '2019-11-05 16:13:00'),
(515, 'VII D', 'Pramuka', 'English Club', 'Yoga saputra', 'Yoga', 'Bandung', '2010-01-16', 'L', 'Islam', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '082328091006', 'Dowi', 'Jl. Parakan Waas no.17, Batununggal, Bandung', '085328091006', '', '', 'menunggu', '2019-11-05 16:14:00'),
(516, 'VII D', 'Pramuka', 'English Club', 'Hisyam fahrudin', 'Hisyam', 'Bandung', '2010-01-17', 'L', 'Islam', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '082328091007', 'Rifan', 'Jl. Parakan Waas no.18, Batununggal, Bandung', '089328091007', '', '', 'menunggu', '2019-11-05 16:14:00'),
(517, 'VII D', 'Pramuka', 'English Club', 'Asep', 'Asep', 'Bandung', '2010-01-18', 'L', 'Islam', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '082328091008', 'Choirul', 'Jl. Parakan Waas no.19, Batununggal, Bandung', '089328091008', '', '', 'menunggu', '2019-11-05 16:15:00');
INSERT INTO `pendaftaran` (`id_pendaftaran`, `kelas`, `ekskul_pendidikan_karakter`, `ekskul_pbm`, `nama_lengkap`, `nama_panggilan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `nomor_telepon`, `nama_ortu`, `alamat_ortu`, `nomor_telepon_ortu`, `pengalaman_organisasi`, `prestasi`, `status_pendaftaran`, `tanggal_input`) VALUES
(518, 'VII D', 'Pramuka', 'English Club', 'Rohman alamsyah', 'Rohman', 'Bandung', '2010-01-19', 'L', 'Islam', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '082328091009', 'Sanjaya', 'Jl. Parakan Waas no.20, Batununggal, Bandung', '089328091009', '', '', 'menunggu', '2019-11-05 16:16:00'),
(519, 'VII D', 'Pramuka', 'English Club', 'Diki candra', 'Diki', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Rista', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 16:17:00'),
(520, 'VII D', 'Pramuka', 'English Club', 'Aji anwarin', 'Aji', 'Bandung', '2010-01-09', 'L', 'Islam', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '085729020993', 'Tholib', 'Jl. Parakan Waas no.11, Batununggal, Bandung', '089093939004', '', '', 'menunggu', '2019-11-05 16:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_pendaftaran` int(11) NOT NULL,
  `kelas` varchar(9) NOT NULL,
  `ekskul_pendidikan_karakter` varchar(60) NOT NULL,
  `ekskul_pbm` varchar(60) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `nama_panggilan` varchar(25) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` enum('Islam','Kristen Protestan','Kristen Katolik','Hindu','Buddha','Khonghucu') NOT NULL,
  `alamat` text NOT NULL,
  `nomor_telepon` varchar(13) NOT NULL,
  `nama_ortu` varchar(35) NOT NULL,
  `alamat_ortu` text NOT NULL,
  `nomor_telepon_ortu` varchar(13) NOT NULL,
  `pengalaman_organisasi` varchar(25) NOT NULL,
  `prestasi` text NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_pendaftaran`, `kelas`, `ekskul_pendidikan_karakter`, `ekskul_pbm`, `nama_lengkap`, `nama_panggilan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `nomor_telepon`, `nama_ortu`, `alamat_ortu`, `nomor_telepon_ortu`, `pengalaman_organisasi`, `prestasi`, `tanggal_input`) VALUES
(2, 1, 'VII B', 'Palang Merah Remaja', 'English Club', 'Ria Olive', 'Ria', 'Bandung', '2009-09-09', 'P', 'Kristen Protestan', 'Jl. Parakan Waas no.12, Bandung', '08298700921', 'Refdi Rosikin', 'Jl. Parakan Waas no.12, Bandung', '08532321123', '', '', '2019-09-23 09:09:10'),
(3, 2, 'VII D', 'Pramuka', 'Tim Redaksi', 'Syifa Sholiha', 'Syifa', 'Bandung', '2009-09-09', 'P', 'Islam', 'Jl. Parakan Waas no.12A, Bandung', '08901224221', 'Rohyan Rosyid', 'Jl. Parakan Waas no.12A, Bandung', '081902109322', '', '', '0000-00-00 00:00:00'),
(4, 3, 'VII D', 'Pramuka', 'Tim Redaksi', 'Tio Rahmandika', 'Tio', 'Bandung', '2009-06-06', 'L', 'Kristen Protestan', 'Jl. Kebon Kopi no.23, Cijerah, Bandung ', '08120091212', 'Sholihin', 'Jl. Kebon Kopi no.23, Cijerah, Bandung', '08212900182', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `level` varchar(25) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `level`, `tanggal_input`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', '2019-09-23 07:09:07'),
(3, 'Ria Olive', 'Ria Olive', 'qwerty', 'siswa', '2019-09-23 11:15:48'),
(4, 'pelatih', 'pelatih', 'pelatih', 'pelatih', '2019-09-23 10:39:36'),
(5, 'Syifa Sholiha', 'Syifa Sholiha', '123', 'siswa', '2019-09-23 11:30:31'),
(6, 'Tio Rahmandika', 'Tio Rahmandika', '123', 'siswa', '2019-09-30 15:54:11'),
(7, 'Shohib', 'shohib', '123', 'admin', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD PRIMARY KEY (`id_ekskul`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD UNIQUE KEY `id_pelatih` (`id_pelatih`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pelatih`
--
ALTER TABLE `pelatih`
  ADD PRIMARY KEY (`id_pelatih`),
  ADD UNIQUE KEY `id_ekskul` (`id_ekskul`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `id_pendaftaran` (`id_pendaftaran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  MODIFY `id_ekskul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelatih`
--
ALTER TABLE `pelatih`
  MODIFY `id_pelatih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_pelatih`) REFERENCES `pelatih` (`id_pelatih`);

--
-- Constraints for table `pelatih`
--
ALTER TABLE `pelatih`
  ADD CONSTRAINT `pelatih_ibfk_1` FOREIGN KEY (`id_ekskul`) REFERENCES `ekstrakurikuler` (`id_ekskul`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id_pendaftaran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
