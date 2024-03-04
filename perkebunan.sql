-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Feb 2024 pada 14.01
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perkebunan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'user', 'user'),
(2, 'pegawai', 'pegawai'),
(3, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 4),
(1, 5),
(1, 6),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'zikwanismail', NULL, '2023-11-27 14:02:50', 0),
(2, '::1', 'zikwanismail5@gmail.com', 1, '2023-11-28 01:07:13', 1),
(3, '::1', 'pegawai', NULL, '2024-01-24 01:37:45', 0),
(4, '::1', 'pegawai', NULL, '2024-01-24 01:37:58', 0),
(5, '::1', 'user', NULL, '2024-01-24 01:38:09', 0),
(6, '::1', 'lala123@gmail.com', 2, '2024-01-24 02:32:42', 1),
(7, '::1', 'admin', NULL, '2024-01-24 02:51:10', 0),
(8, '::1', 'pegawai', NULL, '2024-01-24 02:51:57', 0),
(9, '::1', 'shelarana16@gmail.com', 3, '2024-01-24 02:57:08', 1),
(10, '::1', 'lala123@gmail.com', 2, '2024-01-25 01:58:45', 1),
(11, '::1', 'shelarana16@gmail.com', 3, '2024-01-25 02:00:38', 1),
(12, '::1', 'shelarana16@gmail.com', 3, '2024-01-25 02:27:53', 1),
(13, '::1', 'lala123@gmail.com', 2, '2024-01-25 02:49:07', 1),
(14, '::1', 'zikwanismail', NULL, '2024-01-25 02:49:58', 0),
(15, '::1', 'memei@gmail.com', 4, '2024-01-25 02:51:03', 1),
(16, '::1', 'lala123@gmail.com', 2, '2024-01-25 02:54:25', 1),
(17, '::1', 'shelarana16@gmail.com', 3, '2024-01-25 02:55:07', 1),
(18, '::1', 'lala123@gmail.com', 2, '2024-01-25 05:55:26', 1),
(19, '::1', 'shelarana16@gmail.com', 3, '2024-01-25 06:02:06', 1),
(20, '::1', 'lala123@gmail.com', 2, '2024-01-26 02:17:11', 1),
(21, '::1', 'memei@gmail.com', 4, '2024-01-26 02:18:11', 1),
(22, '::1', 'shelarana16@gmail.com', 3, '2024-01-26 02:19:23', 1),
(23, '::1', 'shelarana16@gmail.com', 3, '2024-01-26 02:19:56', 1),
(24, '::1', 'lala123@gmail.com', 2, '2024-01-26 02:20:15', 1),
(25, '::1', 'memei@gmail.com', 4, '2024-01-26 02:21:35', 1),
(26, '::1', 'lala123@gmail.com', 2, '2024-01-26 02:42:05', 1),
(27, '::1', 'memei@gmail.com', 4, '2024-01-26 02:45:43', 1),
(28, '::1', 'shelarana16@gmail.com', 3, '2024-01-26 02:46:44', 1),
(29, '::1', 'lala123@gmail.com', 2, '2024-01-28 08:18:53', 1),
(30, '::1', 'shelarana16@gmail.com', 3, '2024-01-28 08:19:37', 1),
(31, '::1', 'memei@gmail.com', 4, '2024-01-28 09:20:04', 1),
(32, '::1', 'shelarana16@gmail.com', 3, '2024-01-28 09:21:41', 1),
(33, '::1', 'shelarana16@gmail.com', 3, '2024-01-28 12:36:51', 1),
(34, '::1', 'memei@gmail.com', 4, '2024-01-28 12:51:38', 1),
(35, '::1', 'shelarana16@gmail.com', 3, '2024-01-28 13:20:26', 1),
(36, '::1', 'shelarana16@gmail.com', 3, '2024-01-28 13:58:46', 1),
(37, '::1', 'memei@gmail.com', 4, '2024-01-28 13:59:09', 1),
(38, '::1', 'memei@gmail.com', 4, '2024-01-28 14:11:00', 1),
(39, '::1', 'shelarana16@gmail.com', 3, '2024-01-29 03:26:10', 1),
(40, '::1', 'memei@gmail.com', 4, '2024-01-29 03:27:09', 1),
(41, '::1', 'shelarana16@gmail.com', 3, '2024-01-29 03:48:10', 1),
(42, '::1', 'memei@gmail.com', 4, '2024-01-29 03:51:59', 1),
(43, '::1', 'memei@gmail.com', 4, '2024-01-29 04:13:56', 1),
(44, '::1', 'memei@gmail.com', 4, '2024-01-29 06:59:24', 1),
(45, '::1', 'shelarana16@gmail.com', 3, '2024-01-29 07:05:36', 1),
(46, '::1', 'memei@gmail.com', 4, '2024-01-31 03:07:38', 1),
(47, '::1', 'memei@gmail.com', 4, '2024-01-31 04:27:18', 1),
(48, '::1', 'memei@gmail.com', 4, '2024-01-31 04:42:37', 1),
(49, '::1', 'shelarana16@gmail.com', 3, '2024-01-31 04:42:58', 1),
(50, '::1', 'memei@gmail.com', 4, '2024-01-31 05:32:31', 1),
(51, '::1', 'shelarana16@gmail.com', 3, '2024-01-31 14:00:21', 1),
(52, '::1', 'memei@gmail.com', 4, '2024-01-31 14:01:25', 1),
(53, '::1', 'memei@gmail.com', 4, '2024-01-31 14:15:05', 1),
(54, '::1', 'memei@gmail.com', 4, '2024-01-31 15:13:26', 1),
(55, '::1', 'memei@gmail.com', 4, '2024-02-01 01:00:04', 1),
(56, '::1', 'shelarana16@gmail.com', 3, '2024-02-01 01:09:19', 1),
(57, '::1', 'shelarana16@gmail.com', 3, '2024-02-01 14:30:50', 1),
(58, '::1', 'memei@gmail.com', 4, '2024-02-01 14:36:08', 1),
(59, '::1', 'admin', NULL, '2024-02-01 14:38:34', 0),
(60, '::1', 'shelarana16@gmail.com', 3, '2024-02-01 14:38:43', 1),
(61, '::1', 'memei@gmail.com', 4, '2024-02-01 14:49:38', 1),
(62, '::1', 'shelarana16@gmail.com', 3, '2024-02-01 17:02:47', 1),
(63, '::1', 'user', NULL, '2024-02-01 17:05:15', 0),
(64, '::1', 'memei@gmail.com', 4, '2024-02-01 17:05:26', 1),
(65, '::1', 'memei@gmail.com', 4, '2024-02-02 00:59:26', 1),
(66, '::1', 'memei@gmail.com', 4, '2024-02-02 04:46:06', 1),
(67, '::1', 'shelarana16@gmail.com', 3, '2024-02-02 04:47:35', 1),
(68, '::1', 'shelarana16@gmail.com', 3, '2024-02-02 04:50:48', 1),
(69, '::1', 'memei@gmail.com', 4, '2024-02-02 04:51:24', 1),
(70, '::1', 'shelarana16@gmail.com', 3, '2024-02-02 05:05:19', 1),
(71, '::1', 'shelarana16@gmail.com', 3, '2024-02-02 05:06:26', 1),
(72, '::1', 'memei@gmail.com', 4, '2024-02-02 05:06:45', 1),
(73, '::1', 'shelarana16@gmail.com', 3, '2024-02-02 05:09:58', 1),
(74, '::1', 'memei@gmail.com', 4, '2024-02-02 05:13:56', 1),
(75, '::1', 'memei@gmail.com', 4, '2024-02-03 09:48:27', 1),
(76, '::1', 'shelarana16@gmail.com', 3, '2024-02-03 09:49:32', 1),
(77, '::1', 'shelarana16@gmail.com', 3, '2024-02-03 16:36:41', 1),
(78, '::1', 'memei@gmail.com', 4, '2024-02-03 17:26:02', 1),
(79, '::1', 'memei@gmail.com', 4, '2024-02-03 18:16:06', 1),
(80, '::1', 'memei@gmail.com', 4, '2024-02-03 18:17:01', 1),
(81, '::1', 'memei@gmail.com', 4, '2024-02-03 18:23:18', 1),
(82, '::1', 'shelarana16@gmail.com', 3, '2024-02-03 18:29:17', 1),
(83, '::1', 'shelarana16@gmail.com', 3, '2024-02-03 18:31:41', 1),
(84, '::1', 'shelarana1616@gmail.com', 5, '2024-02-03 18:32:53', 1),
(85, '::1', 'memei@gmail.com', 4, '2024-02-04 07:39:38', 1),
(86, '::1', 'shelarana16@gmail.com', 3, '2024-02-04 15:19:14', 1),
(87, '::1', 'memei@gmail.com', 4, '2024-02-04 15:32:25', 1),
(88, '::1', 'memei@gmail.com', 4, '2024-02-04 15:57:24', 1),
(89, '::1', 'memei@gmail.com', 4, '2024-02-05 01:29:13', 1),
(90, '::1', 'memei@gmail.com', 4, '2024-02-05 12:40:30', 1),
(91, '::1', 'shelarana16@gmail.com', 3, '2024-02-05 17:08:01', 1),
(92, '::1', 'shelarana1616@gmail.com', 5, '2024-02-05 17:19:41', 1),
(93, '::1', 'shelarana16@gmail.com', 3, '2024-02-05 17:20:32', 1),
(94, '::1', 'memei@gmail.com', 4, '2024-02-06 01:42:36', 1),
(95, '::1', 'memei@gmail.com', 4, '2024-02-06 04:34:07', 1),
(96, '::1', 'shelarana16@gmail.com', 3, '2024-02-06 04:36:53', 1),
(97, '::1', 'shelarana16@gmail.com', 3, '2024-02-06 04:38:22', 1),
(98, '::1', 'shelarana16@gmail.com', 3, '2024-02-06 04:41:26', 1),
(99, '::1', 'shelarana16@gmail.com', 3, '2024-02-06 06:54:54', 1),
(100, '::1', 'memei@gmail.com', 4, '2024-02-06 06:55:33', 1),
(101, '::1', 'shelarana1616@gmail.com', 5, '2024-02-06 08:46:16', 1),
(102, '::1', 'shelarana1616@gmail.com', 5, '2024-02-06 08:49:26', 1),
(103, '::1', 'memei@gmail.com', 4, '2024-02-06 16:41:32', 1),
(104, '::1', 'shelarana16@gmail.com', 3, '2024-02-06 16:41:48', 1),
(105, '::1', 'memei@gmail.com', 4, '2024-02-06 17:12:46', 1),
(106, '::1', 'memei@gmail.com', 4, '2024-02-12 16:13:48', 1),
(107, '::1', 'memei@gmail.com', 4, '2024-02-12 16:51:11', 1),
(108, '::1', 'shelarana16@gmail.com', 3, '2024-02-13 16:54:04', 1),
(109, '::1', 'memei@gmail.com', 4, '2024-02-13 16:54:49', 1),
(110, '::1', 'shelarana16@gmail.com', 3, '2024-02-15 15:54:16', 1),
(111, '::1', 'shelarana16@gmail.com', 3, '2024-02-15 16:05:34', 1),
(112, '::1', 'memei@gmail.com', 4, '2024-02-15 18:31:20', 1),
(113, '::1', 'shelarana16@gmail.com', 3, '2024-02-15 18:40:06', 1),
(114, '::1', 'shelarana16@gmail.com', 3, '2024-02-15 18:41:52', 1),
(115, '::1', 'memei@gmail.com', 4, '2024-02-15 18:42:07', 1),
(116, '::1', 'shelarana16@gmail.com', 3, '2024-02-15 18:43:40', 1),
(117, '::1', 'memei@gmail.com', 4, '2024-02-15 18:44:29', 1),
(118, '::1', 'shelarana16@gmail.com', 3, '2024-02-15 18:48:00', 1),
(119, '::1', 'shelarana1616@gmail.com', 5, '2024-02-15 18:50:33', 1),
(120, '::1', 'memei@gmail.com', 4, '2024-02-16 03:38:27', 1),
(121, '::1', 'shelarana16@gmail.com', 3, '2024-02-16 03:39:28', 1),
(122, '::1', 'memei', NULL, '2024-02-16 04:19:21', 0),
(123, '::1', 'memei@gmail.com', 4, '2024-02-16 04:19:34', 1),
(124, '::1', 'admin', NULL, '2024-02-16 04:20:28', 0),
(125, '::1', 'memei@gmail.com', 4, '2024-02-16 04:23:28', 1),
(126, '::1', 'shelarana16@gmail.com', 3, '2024-02-16 04:27:01', 1),
(127, '::1', 'memei@gmail.com', 4, '2024-02-16 04:34:38', 1),
(128, '::1', 'memei@gmail.com', 4, '2024-02-16 04:36:56', 1),
(129, '::1', 'shelarana16@gmail.com', 3, '2024-02-16 04:39:20', 1),
(130, '::1', 'memei@gmail.com', 4, '2024-02-16 04:44:45', 1),
(131, '::1', 'shelarana16@gmail.com', 3, '2024-02-16 04:55:22', 1),
(132, '::1', 'memei@gmail.com', 4, '2024-02-22 15:56:57', 1),
(133, '::1', 'shelarana16@gmail.com', 3, '2024-02-22 16:15:15', 1),
(134, '::1', 'memei@gmail.com', 4, '2024-02-22 16:18:27', 1),
(135, '::1', 'shelarana16@gmail.com', 3, '2024-02-22 16:31:44', 1),
(136, '::1', 'memei@gmail.com', 4, '2024-02-22 16:33:04', 1),
(137, '::1', 'memei@gmail.com', 4, '2024-02-24 07:21:37', 1),
(138, '::1', 'memei@gmail.com', 4, '2024-02-25 03:08:07', 1),
(139, '::1', 'memei@gmail.com', 4, '2024-02-26 02:30:50', 1),
(140, '::1', 'shelarana16@gmail.com', 3, '2024-02-26 02:33:15', 1),
(141, '::1', 'memei@gmail.com', 4, '2024-02-26 02:33:54', 1),
(142, '::1', 'shelarana16@gmail.com', 3, '2024-02-26 03:48:16', 1),
(143, '::1', 'memei@gmail.com', 4, '2024-02-26 03:49:48', 1),
(144, '::1', 'shel', NULL, '2024-02-26 04:01:25', 0),
(145, '::1', 'shelarana16@gmail.com', 3, '2024-02-26 04:01:36', 1),
(146, '::1', 'shelarana16@gmail.com', 3, '2024-02-26 04:06:52', 1),
(147, '::1', 'shelarana16@gmail.com', 3, '2024-02-26 11:45:35', 1),
(148, '::1', 'memei@gmail.com', 4, '2024-02-26 12:01:47', 1),
(149, '::1', 'shelarana16@gmail.com', 3, '2024-02-26 12:11:34', 1),
(150, '::1', 'shelarana16@gmail.com', 3, '2024-02-26 12:12:12', 1),
(151, '::1', 'memei@gmail.com', 4, '2024-02-26 12:12:28', 1),
(152, '::1', 'shelarana16@gmail.com', 3, '2024-02-26 13:34:40', 1),
(153, '::1', 'memei@gmail.com', 4, '2024-02-26 13:38:56', 1),
(154, '::1', 'shelarana16@gmail.com', 3, '2024-02-26 13:44:33', 1),
(155, '::1', 'memei@gmail.com', 4, '2024-02-26 13:45:04', 1),
(156, '::1', 'shelarana16@gmail.com', 3, '2024-02-26 13:48:53', 1),
(157, '::1', 'memei@gmail.com', 4, '2024-02-26 13:52:54', 1),
(158, '::1', 'shelarana16@gmail.com', 3, '2024-02-26 14:03:32', 1),
(159, '::1', 'memei@gmail.com', 4, '2024-02-26 17:00:45', 1),
(160, '::1', 'memei@gmail.com', 4, '2024-02-26 17:00:46', 1),
(161, '::1', 'memei@gmail.com', 4, '2024-02-26 17:00:46', 1),
(162, '::1', 'memei@gmail.com', 4, '2024-02-27 12:15:48', 1),
(163, '::1', 'shelarana16@gmail.com', 3, '2024-02-27 12:20:40', 1),
(164, '::1', 'memei@gmail.com', 4, '2024-02-27 12:23:36', 1),
(165, '::1', 'memei@gmail.com', 4, '2024-02-27 13:20:31', 1),
(166, '::1', 'memei@gmail.com', 4, '2024-02-28 05:50:39', 1),
(167, '::1', 'nurfitriyani2222a@gmail.com', 6, '2024-02-28 06:03:56', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventaris`
--

CREATE TABLE `inventaris` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nomor_telepon` varchar(255) NOT NULL,
  `nama_hewan` varchar(255) NOT NULL,
  `jenis_hewan` varchar(255) NOT NULL,
  `usia_hewan` varchar(255) NOT NULL,
  `tanggal_booking` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `unit_usaha` varchar(255) DEFAULT NULL,
  `brg_terjual` text DEFAULT '0',
  `stok_barang` text DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `inventaris`
--

INSERT INTO `inventaris` (`id`, `nama_pemilik`, `email`, `nomor_telepon`, `nama_hewan`, `jenis_hewan`, `usia_hewan`, `tanggal_booking`, `created_at`, `updated_at`, `deleted_at`, `unit_usaha`, `brg_terjual`, `stok_barang`) VALUES
(8, 'beno balakosa', 'Pesawaran', '08912201011', 'Lada', 'Biji Lada', '16.250', '2024-02-26', '2024-02-26 02:32:10', '2024-02-26 02:32:10', NULL, 'Mekar Jaya ', '5 kg', '5 kg'),
(9, 'shela', 'Lampung Timur', '08775589956', 'karet', 'getah karet', '8.000', '2024-02-26', '2024-02-26 03:47:56', '2024-02-26 03:47:56', NULL, 'Mekar Jaya 02', '12 kg', '2 kg'),
(11, 'beno balakosa', 'Lampung Timur', '091812721110', 'Teh', 'daun teh', '10.000/kg', '2024-02-26', '2024-02-26 13:44:00', '2024-02-26 13:44:00', NULL, 'CV. Tani Jaya', '6 kg', '2 kg'),
(33, 'Lalita Husna', 'Pringsewu', '081234578312', 'Kelapa ', 'Kelapa Dalam', '28.000/kg', '2024-02-26', '2024-02-26 14:03:01', '2024-02-26 14:03:01', NULL, 'Pramuka Sakti CV', '12kg', '1kg'),
(34, 'Shela Rana', 'Lampung Barat', '085766923474', 'Kopi', 'Biji Kopi Liwa', '16.000/kg', '2024-02-27', '2024-02-27 13:23:39', '2024-02-27 13:23:39', NULL, 'CV. Tunas Mekar', '27 kg', '3 kg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventarislama`
--

CREATE TABLE `inventarislama` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_inventaris` varchar(255) NOT NULL,
  `created_at` datetime(1) NOT NULL,
  `updated_at` datetime(1) NOT NULL,
  `deleted_at` datetime(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `inventarislama`
--

INSERT INTO `inventarislama` (`id`, `nama_inventaris`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Obat & Vitamin', '2024-01-24 01:35:41.0', '2024-01-24 01:35:41.0', '0000-00-00 00:00:00.0'),
(2, 'Makanan', '2024-01-24 01:35:41.0', '2024-01-24 01:35:41.0', '0000-00-00 00:00:00.0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'App\\Database\\Migrations\\CreateAuthTables', 'default', 'App', 1700381999, 1),
(22, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1701093358, 2),
(23, '2023-10-30-130220', 'App\\Database\\Migrations\\InventarisTable', 'default', 'App', 1701093358, 2),
(24, '2023-10-30-131217', 'App\\Database\\Migrations\\productTable', 'default', 'App', 1701093358, 2),
(25, '2023-10-31-001925', 'App\\Database\\Migrations\\CreatetransaksiTable', 'default', 'App', 1701093358, 2),
(26, '2023-10-31-002014', 'App\\Database\\Migrations\\CreatebookingTable', 'default', 'App', 1701093358, 2),
(27, '2023-11-05-130657', 'App\\Database\\Migrations\\ServiceTable', 'default', 'App', 1701093358, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_product` varchar(255) NOT NULL,
  `harga_product` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `stok_product` varchar(255) NOT NULL,
  `foto_product` varchar(255) DEFAULT NULL,
  `created_at` datetime(1) DEFAULT NULL,
  `updated_at` datetime(1) DEFAULT NULL,
  `deleted_at` datetime(1) DEFAULT NULL,
  `lokasi_product` varchar(255) DEFAULT NULL,
  `tanggal_booking` date DEFAULT NULL,
  `brg_terjual` varchar(255) DEFAULT NULL,
  `stok_barang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `nama_product`, `harga_product`, `category`, `deskripsi`, `stok_product`, `foto_product`, `created_at`, `updated_at`, `deleted_at`, `lokasi_product`, `tanggal_booking`, `brg_terjual`, `stok_barang`) VALUES
(4, 'Karet', '10.000/kg', '', '', 'Getah karet', 'http://localhost:8080/assets/img/1706849426_c14da527fe79bf132581.jpg', '2024-02-02 04:50:26.0', '2024-02-26 12:11:55.0', NULL, 'Lampung Utara', '2024-02-26', '2kg', '10kg'),
(5, 'Kopi Arabika', '17.000/kg', '', '', 'buah tanaman Kopi Arabika', 'http://localhost:8080/assets/img/1708012877_fa2489e2eecd2afe3b67.jpg', '2024-02-15 16:01:17.0', '2024-02-26 11:55:27.0', NULL, 'Sekincau, Lampung Barat', '2024-02-26', '6kg', '8kg'),
(6, 'Kakao', '22.450/kg', '', '', 'biji kakao', 'http://localhost:8080/assets/img/1708013472_c775982f5f9bd65257c3.jpg', '2024-02-15 16:11:12.0', '2024-02-26 11:56:56.0', NULL, 'Pesawaran', '2024-02-26', '3kg', '6,5kg'),
(7, 'Lada Biji Kering', '47.600/kg', '', '', 'biji lada', 'http://localhost:8080/assets/img/1708013882_5812cbb35af01754d48b.jpg', '2024-02-15 16:18:02.0', '2024-02-26 11:57:30.0', NULL, 'Lampung Timur', '2024-02-26', '5,5kg', '11kg'),
(8, 'Kelapa', '2.300/butir', '', '', 'Kelapa dalam', 'http://localhost:8080/assets/img/1709036511_d484c3a5ec0a8ec3c2f4.jpeg', '2024-02-15 16:41:29.0', '2024-02-27 12:22:30.0', NULL, 'Lampung Selatan', '2024-02-27', '46pcs', '25kg'),
(9, 'Kelapa Sawit', '1.850/kg', '', '', 'Tandan buah segar kelapa sawit', 'http://localhost:8080/assets/img/1709036539_236fa368860c4a3eb7bc.jpeg', '2024-02-15 16:45:32.0', '2024-02-27 12:22:19.0', NULL, 'Mesuji, Lampung', '2024-02-27', '56kg', '1 ton'),
(10, 'Tebu', '500/kg', '', '', 'tebu', 'http://localhost:8080/assets/img/1709036567_91f26b9a43bce15fa281.jpeg', '2024-02-15 16:49:02.0', '2024-02-27 12:22:47.0', NULL, 'Waykanan', '2024-02-27', '2,3', '16kg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_service` varchar(255) NOT NULL,
  `created_at` datetime(1) NOT NULL,
  `updated_at` datetime(1) NOT NULL,
  `deleted_at` datetime(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`id`, `nama_service`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Perawatan_Hewan', '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0'),
(2, 'Hotel_Hewan', '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0'),
(3, 'Klinik_Hewan', '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0'),
(4, 'Perawatan_Hewan', '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0'),
(5, 'Hotel_Hewan', '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0'),
(6, 'Klinik_Hewan', '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0', '0000-00-00 00:00:00.0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `tanggal_transaksi` datetime DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `total_transaksi` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user', 'user@gmail.com', '12345678', 1, NULL, NULL, NULL),
(2, 'pegawai', 'pegawai@gmail.com', '12345678', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `foto`, `alamat`, `no_hp`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'lala123@gmail.com', 'lala', NULL, NULL, NULL, '$2y$10$VffrR6prpAN8IT2Vu8Nhh.cV0on5GBaCJwJ1mm0.XB.4BXmCPyIEW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-01-24 02:32:27', '2024-01-24 02:32:27', NULL),
(3, 'shelarana16@gmail.com', 'shela', NULL, NULL, NULL, '$2y$10$vn2p.fcrYSOMV2gsb.dlIO2W7hv7aSAL9/n.Hv0trWQ6d7vD0Es2.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-01-24 02:39:10', '2024-01-24 02:39:10', NULL),
(4, 'memei@gmail.com', 'memei', NULL, NULL, NULL, '$2y$10$a5kbyY1WPGqe1MOvGXOhN.FToQ1o6BeY/1ZUYbumy/6XylYTfvO3y', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-01-25 02:50:54', '2024-01-25 02:50:54', NULL),
(5, 'shelarana1616@gmail.com', 'rana', NULL, NULL, NULL, '$2y$10$HB/fKETul91w8qTLOW79xelfp1wLpO7/xdjLs/nwWyRfKX70J4UwO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-03 18:31:25', '2024-02-03 18:31:25', NULL),
(6, 'nurfitriyani2222a@gmail.com', 'admin2', NULL, NULL, NULL, '$2y$10$Po605E.agJ94H8EcRX03/er9hf428TenIw/bC3TCTfXb/SAvEZt2i', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-28 06:03:34', '2024-02-28 06:03:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inventarislama`
--
ALTER TABLE `inventarislama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id_product_foreign` (`id_product`),
  ADD KEY `transaksi_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `inventarislama`
--
ALTER TABLE `inventarislama`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `transaksi_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
