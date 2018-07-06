-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 Jul 2018 pada 08.36
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ormawa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dpm`
--

CREATE TABLE `dpm` (
  `nim` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kemahasiswaan`
--

CREATE TABLE `kemahasiswaan` (
  `niy` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` int(2) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ormawa`
--

CREATE TABLE `ormawa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanggung_jawab`
--

CREATE TABLE `pertanggung_jawab` (
  `id` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `realisasi_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `program_kegiatan`
--

CREATE TABLE `program_kegiatan` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `tema_kegiatan` varchar(255) NOT NULL,
  `tujuan` text NOT NULL,
  `sasaran` text NOT NULL,
  `bentuk_kegiatan` varchar(255) NOT NULL,
  `tgl1` date NOT NULL,
  `jam1` time NOT NULL,
  `tgl2` date NOT NULL,
  `jam2` time NOT NULL,
  `rancangan_data` text NOT NULL,
  `id_tempat_kegiatan` int(11) NOT NULL,
  `id_ormawa` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_dpm` int(2) NOT NULL,
  `keterangan_dpm` text NOT NULL,
  `status_kemahasiswaan` int(2) NOT NULL,
  `keterangan_kemahasiswaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempat_kegiatan`
--

CREATE TABLE `tempat_kegiatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_ormawa`
--

CREATE TABLE `user_ormawa` (
  `nim` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(12) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `id_ormawa` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` int(2) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dpm`
--
ALTER TABLE `dpm`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `kemahasiswaan`
--
ALTER TABLE `kemahasiswaan`
  ADD PRIMARY KEY (`niy`);

--
-- Indexes for table `ormawa`
--
ALTER TABLE `ormawa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanggung_jawab`
--
ALTER TABLE `pertanggung_jawab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_kegiatan`
--
ALTER TABLE `program_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempat_kegiatan`
--
ALTER TABLE `tempat_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_ormawa`
--
ALTER TABLE `user_ormawa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
