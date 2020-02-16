-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Feb 2020 pada 06.15
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `notlp` varchar(15) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status_active` int(1) NOT NULL,
  `date_create` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `notlp`, `image`, `password`, `role_id`, `status_active`, `date_create`) VALUES
(12, 'Sri Mulyani', 'rz.oktan@gmail.com', '087790001234', '2019_08_19_16_43_IMG_4244.JPG', '$2y$10$D1AIKV4DpTFe4XqMaqE2sO9FWoYVlMY8eof5Jv20dNDD.fjeN5VJK', 1, 1, 1581068681),
(13, 'Administrator', 'rizkyokt1994@gmail.com', '087791111615', 'B612_20190109_145415_818.jpg', '$2y$10$AHdur8IKmXpduMxnAMVdSedNPvZdbrx7P4nXFgHEwwWnYzFufOjfa', 1, 1, 1581068721),
(20, 'Rizky Oktan', 'cloudhcapture@gmail.com', '+6287879984132', 'images.jpeg', '$2y$10$rq0d2QaNUAXU0ofdpdtDGOYE37VHtVwz.EaSQrbMR4L3VDQMi2xoO', 2, 1, 1581743793);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(9, 1, 3),
(13, 2, 3),
(14, 1, 2),
(15, 1, 4),
(16, 1, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL,
  `menu_icon` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `menu_icon`) VALUES
(1, 'Admin', 'fas fa-fw fa-tachometer-alt'),
(2, 'Transaksi', 'fas fa-fw fa-donate'),
(3, 'Profile', 'fas fa-fw fa-user'),
(5, 'Manage', 'fas fa-fw fa-tools');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'User'),
(3, 'Reseller'),
(4, 'Customer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `status_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `title`, `menu_id`, `url`, `icon`, `status_active`) VALUES
(1, 'Dashboard', 1, 'admin/home', 'fas fa-fw fa-tachometer-alt', 1),
(2, 'Penjualan', 2, 'transaksi/penjualan', 'fas fa-fw fa-cash-register', 1),
(3, 'Pembelian', 2, 'transaksi/pembelian', 'fas fa-fw fa-dolly', 1),
(4, 'Master Data', 1, 'admin', 'fas fa-fw fa-database', 0),
(5, 'Laporan', 1, 'admin', 'fas fa-fw fa-file-alt', 0),
(6, 'My Profile', 3, 'profile', 'fas fa-fw fa-user', 1),
(7, 'Edit Profile', 3, 'profile/editprofile', 'fas fa-fw fa-user-edit', 1),
(8, 'Menu Menejemen', 5, 'admin/manage/menu', 'fas fa-fw fa-folder', 1),
(9, 'SubMenu Menejemen', 5, 'admin/manage/submenu', 'fas fa-fw fa-folder-open', 1),
(11, 'Role User', 5, 'admin/manage/role', 'fas fa-fw fa-users-cog', 1),
(12, 'Ubah Password', 3, 'profile/ubahpassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(4, 'aababdulkohar09@gmail.com', '6osu2omhTJU3O/AhD1hXa/qSAbRL38jFqA+w0NFObuw=', 1581743076),
(5, 'cloudhcapture@gmail.com', '9HzoKvm71XlFqamMwXTDLUp1tCt+IWqIOGaOFh8ek4s=', 1581747291),
(6, 'cloudhcapture@gmail.com', 'dI42VV+AQRI6LZZo2RJvvCbv9QI4rq+fWjj6E6bnLlo=', 1581759224);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
