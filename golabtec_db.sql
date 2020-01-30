-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 28 Okt 2019 pada 23.57
-- Versi server: 10.3.18-MariaDB-cll-lve
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `golabtec_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `after_reports`
--

CREATE TABLE `after_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `master_data_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sample` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penandatangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distribution_detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `after_reports`
--

INSERT INTO `after_reports` (`id`, `product_id`, `master_data_id`, `value`, `asal_sample`, `no_test`, `jenis_pemeriksaan`, `penandatangan`, `distribution_detail`, `created_at`, `updated_at`) VALUES
(1, 12, 144, 'Clear', 'T.06 Ex MT. ROYALTY', '3228/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLUMPANG', '2019-09-07 16:36:11', '2019-09-07 16:36:11'),
(2, 12, 145, '<1.5', 'T.06 Ex MT. ROYALTY', '3228/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLUMPANG', '2019-09-07 16:36:11', '2019-09-07 16:36:11'),
(3, 12, 146, '863', 'T.06 Ex MT. ROYALTY', '3228/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLUMPANG', '2019-09-07 16:36:11', '2019-09-07 16:36:11'),
(4, 12, 147, '-', 'T.06 Ex MT. ROYALTY', '3228/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLUMPANG', '2019-09-07 16:36:11', '2019-09-07 16:36:11'),
(5, 12, 148, '0.01', 'T.06 Ex MT. ROYALTY', '3228/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLUMPANG', '2019-09-07 16:36:11', '2019-09-07 16:36:11'),
(6, 12, 149, '338.5', 'T.06 Ex MT. ROYALTY', '3228/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLUMPANG', '2019-09-07 16:36:11', '2019-09-07 16:36:11'),
(7, 12, 150, '0.43', 'T.06 Ex MT. ROYALTY', '3228/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLUMPANG', '2019-09-07 16:36:11', '2019-09-07 16:36:11'),
(8, 12, 151, '278', 'T.06 Ex MT. ROYALTY', '3228/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLUMPANG', '2019-09-07 16:36:11', '2019-09-07 16:36:11'),
(9, 12, 152, '15', 'T.06 Ex MT. ROYALTY', '3228/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLUMPANG', '2019-09-07 16:36:11', '2019-09-07 16:36:11'),
(10, 9, 99, 'Clear', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(11, 9, 100, '<0.5', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(12, 9, 101, '819.6', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(13, 9, 102, '75', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(14, 9, 103, '82.7', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(15, 9, 104, '314.8', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(16, 9, 105, '337.8', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(17, 9, 106, '352.6', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(18, 9, 107, '54', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(19, 9, 108, '-', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(20, 9, 109, '57.4', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(21, 9, 110, '0.24', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(22, 9, 111, '248', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(23, 9, 112, '-3', 'T.23 MT.PEARL ORCHID', '3252/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(24, 12, 144, 'Clear', 'T.07 Ex.ROYAL PALMA', '3293/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-12 16:36:11', '2019-09-12 16:36:11'),
(25, 12, 145, '<1.5', 'T.07 Ex.ROYAL PALMA', '3293/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-12 16:36:11', '2019-09-12 16:36:11'),
(26, 12, 146, '856.0', 'T.07 Ex.ROYAL PALMA', '3293/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-12 16:36:11', '2019-09-12 16:36:11'),
(27, 12, 147, '-', 'T.07 Ex.ROYAL PALMA', '3293/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-12 16:36:11', '2019-09-12 16:36:11'),
(28, 12, 148, '0.01', 'T.07 Ex.ROYAL PALMA', '3293/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-12 16:36:11', '2019-09-12 16:36:11'),
(29, 12, 149, '274.3', 'T.07 Ex.ROYAL PALMA', '3293/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-12 16:36:11', '2019-09-12 16:36:11'),
(30, 12, 150, '0.39', 'T.07 Ex.ROYAL PALMA', '3293/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-12 16:36:11', '2019-09-12 16:36:11'),
(31, 12, 151, '322', 'T.07 Ex.ROYAL PALMA', '3293/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-12 16:36:11', '2019-09-12 16:36:11'),
(32, 12, 152, '15', 'T.07 Ex.ROYAL PALMA', '3293/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-09-12 16:36:11', '2019-09-12 16:36:11'),
(33, 6, 59, 'Clear', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(34, 6, 62, 'Yellow', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(35, 6, 75, '726.4', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(36, 6, 81, '31.6', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(37, 6, 82, '53.4', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(38, 6, 83, '78.3', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(39, 6, 89, '154.3', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(40, 6, 90, '194', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(41, 6, 94, '1.2', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(42, 6, 95, '59.7', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(43, 6, 96, '88.4', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(44, 6, 97, '257', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(45, 6, 98, '1a', 'T.15 MT GREAT PRINCESS', '3561/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR PLP', '2019-10-04 16:36:11', '2019-10-04 16:36:11'),
(46, 9, 99, 'Clear', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(47, 9, 100, '<1.0', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(48, 9, 101, '821.8', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(49, 9, 102, '67', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(50, 9, 103, '81.2', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(51, 9, 104, '316.6', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(52, 9, 105, '338.1', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(53, 9, 106, '353.1', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(54, 9, 107, '53.3', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(55, 9, 108, '-', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(56, 9, 109, '97.2', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(57, 9, 110, '0.21', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(58, 9, 111, '283', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(59, 9, 112, '-3', 'T.23', '3379/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'CR.PLP', '2019-09-20 16:36:11', '2019-09-20 16:36:11'),
(60, 6, 59, 'Clear', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51'),
(61, 6, 62, 'Yellow', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51'),
(62, 6, 75, '734.8', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51'),
(63, 6, 81, '30.7', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51'),
(64, 6, 82, '52.1', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51'),
(65, 6, 83, '77.4', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51'),
(66, 6, 89, '159.5', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51'),
(67, 6, 90, '201.3', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51'),
(68, 6, 94, '1.2', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51'),
(69, 6, 95, '63.4', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51'),
(70, 6, 96, '88.3', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51'),
(71, 6, 97, '395', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51'),
(72, 6, 98, '1a', 'T.14 MT. OCEAN PREMIER', '3354/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-18 16:25:51', '2019-09-18 16:25:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `before_reports`
--

CREATE TABLE `before_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `master_data_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sample` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penandatangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distribution_detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `before_reports`
--

INSERT INTO `before_reports` (`id`, `product_id`, `master_data_id`, `value`, `asal_sample`, `no_test`, `jenis_pemeriksaan`, `penandatangan`, `distribution_detail`, `created_at`, `updated_at`) VALUES
(1, 12, 144, 'Clear', 'MT RORALTY', '3217/F13431/2019-S3', 'Short Test', 'Abdul Qohhar', 'ITP', '2019-09-06 16:36:11', '2019-09-06 16:36:11'),
(2, 12, 145, '<1.5', 'MT RORALTY', '3217/F13431/2019-S3', 'Short Test', 'Abdul Qohhar', 'ITP', '2019-09-06 16:36:11', '2019-09-06 16:36:11'),
(3, 12, 146, '861', 'MT RORALTY', '3217/F13431/2019-S3', 'Short Test', 'Abdul Qohhar', 'ITP', '2019-09-06 16:36:11', '2019-09-06 16:36:11'),
(4, 12, 147, '-', 'MT RORALTY', '3217/F13431/2019-S3', 'Short Test', 'Abdul Qohhar', 'ITP', '2019-09-06 16:36:11', '2019-09-06 16:36:11'),
(5, 12, 148, '0.01', 'MT RORALTY', '3217/F13431/2019-S3', 'Short Test', 'Abdul Qohhar', 'ITP', '2019-09-06 16:36:11', '2019-09-06 16:36:11'),
(6, 12, 149, '331', 'MT RORALTY', '3217/F13431/2019-S3', 'Short Test', 'Abdul Qohhar', 'ITP', '2019-09-06 16:36:11', '2019-09-06 16:36:11'),
(7, 12, 150, '0.46', 'MT RORALTY', '3217/F13431/2019-S3', 'Short Test', 'Abdul Qohhar', 'ITP', '2019-09-06 16:36:11', '2019-09-06 16:36:11'),
(8, 12, 151, '239', 'MT RORALTY', '3217/F13431/2019-S3', 'Short Test', 'Abdul Qohhar', 'ITP', '2019-09-06 16:36:11', '2019-09-06 16:36:11'),
(9, 12, 152, '15', 'MT RORALTY', '3217/F13431/2019-S3', 'Short Test', 'Abdul Qohhar', 'ITP', '2019-09-06 16:36:11', '2019-09-06 16:36:11'),
(10, 9, 99, 'Clear', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(11, 9, 100, '<0.5', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(12, 9, 101, '818.9', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(13, 9, 102, '74', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(14, 9, 103, '84.1', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(15, 9, 104, '312.3', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(16, 9, 105, '334.3', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(17, 9, 106, '351.4', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(18, 9, 107, '53.6', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(19, 9, 108, '-', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(20, 9, 109, '68.2', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(21, 9, 110, '0.08', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(22, 9, 111, '241', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(23, 9, 112, '-3', 'MT PEARL ORCHID', '3244/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'ITP', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(24, 12, 144, 'Clear', 'BG.ROYAL PALMA XXVIII', '3273/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP;S3;CR.PLP', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(25, 12, 145, '<1.5', 'BG.ROYAL PALMA XXVIII', '3273/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP;S3;CR.PLP', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(26, 12, 146, '854', 'BG.ROYAL PALMA XXVIII', '3273/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP;S3;CR.PLP', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(27, 12, 147, '-', 'BG.ROYAL PALMA XXVIII', '3273/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP;S3;CR.PLP', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(28, 12, 148, '0.01', 'BG.ROYAL PALMA XXVIII', '3273/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP;S3;CR.PLP', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(29, 12, 149, '364.1', 'BG.ROYAL PALMA XXVIII', '3273/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP;S3;CR.PLP', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(30, 12, 150, '0.41', 'BG.ROYAL PALMA XXVIII', '3273/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP;S3;CR.PLP', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(31, 12, 151, '325', 'BG.ROYAL PALMA XXVIII', '3273/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP;S3;CR.PLP', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(32, 12, 152, '15', 'BG.ROYAL PALMA XXVIII', '3273/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP;S3;CR.PLP', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(33, 6, 59, 'Clear', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(34, 6, 62, 'Yellow', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(35, 6, 75, '726.4', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(36, 6, 81, '32.5', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(37, 6, 82, '54.2', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(38, 6, 83, '78.1', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(39, 6, 89, '153', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(40, 6, 90, '196', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(41, 6, 94, '1.2', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(42, 6, 95, '58.6', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(43, 6, 96, '88.5', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(44, 6, 97, '174', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(45, 6, 98, '1a', 'MT GREAT PRINCESS', '3546/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ ITP', '2019-10-03 16:36:11', '2019-10-03 16:36:11'),
(46, 9, 99, 'Clear', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(47, 9, 100, '<1.0', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(48, 9, 101, '815.8', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(49, 9, 102, '66', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(50, 9, 103, '81.8', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(51, 9, 104, '316.4', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(52, 9, 105, '339.4', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(53, 9, 106, '353.3', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(54, 9, 107, '55.6', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(55, 9, 108, '-', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(56, 9, 109, '66.9', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(57, 9, 110, '0.19', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(58, 9, 111, '279', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(59, 9, 112, '-3', 'JAVA PALM', '3367/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'QQ IRP;S3;CR.PLP', '2019-09-19 16:36:11', '2019-09-19 16:36:11'),
(73, 6, 59, 'Clear', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51'),
(74, 6, 62, 'Yellow', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51'),
(75, 6, 75, '737.9', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51'),
(76, 6, 81, '30.6', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51'),
(77, 6, 82, '53.3', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51'),
(78, 6, 83, '78.8', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51'),
(79, 6, 89, '161.6', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51'),
(80, 6, 90, '203.1', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51'),
(81, 6, 94, '1.2', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51'),
(82, 6, 95, '61.7', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51'),
(83, 6, 96, '88.2', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51'),
(84, 6, 97, '375', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51'),
(85, 6, 98, '1a', 'MT. OCEAN PREMIER', '3347/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-17 16:25:51', '2019-09-17 16:25:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `coq_reports`
--

CREATE TABLE `coq_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `master_data_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sample` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penandatangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distribution_detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `coq_reports`
--

INSERT INTO `coq_reports` (`id`, `product_id`, `master_data_id`, `value`, `asal_sample`, `no_test`, `jenis_pemeriksaan`, `penandatangan`, `distribution_detail`, `created_at`, `updated_at`) VALUES
(1, 12, 144, 'Clear', 'PT CEMERLANG ENERGI PERKASA', '15/CEP/QC-F-35/VIII/2019', 'Short Test', 'QC MANAGER;Law Chin Yee', 'PT PERTAMINA INDONESIA', '2019-08-31 16:36:11', '2019-08-31 16:36:11'),
(2, 12, 145, '3', 'PT CEMERLANG ENERGI PERKASA', '15/CEP/QC-F-35/VIII/2019', 'Short Test', 'QC MANAGER;Law Chin Yee', 'PT PERTAMINA INDONESIA', '2019-08-31 16:36:11', '2019-08-31 16:36:11'),
(3, 12, 146, '875', 'PT CEMERLANG ENERGI PERKASA', '15/CEP/QC-F-35/VIII/2019', 'Short Test', 'QC MANAGER;Law Chin Yee', 'PT PERTAMINA INDONESIA', '2019-08-31 16:36:11', '2019-08-31 16:36:11'),
(4, 12, 147, '4390', 'PT CEMERLANG ENERGI PERKASA', '15/CEP/QC-F-35/VIII/2019', 'Short Test', 'QC MANAGER;Law Chin Yee', 'PT PERTAMINA INDONESIA', '2019-08-31 16:36:11', '2019-08-31 16:36:11'),
(5, 12, 148, '0.04', 'PT CEMERLANG ENERGI PERKASA', '15/CEP/QC-F-35/VIII/2019', 'Short Test', 'QC MANAGER;Law Chin Yee', 'PT PERTAMINA INDONESIA', '2019-08-31 16:36:11', '2019-08-31 16:36:11'),
(6, 12, 149, '309', 'PT CEMERLANG ENERGI PERKASA', '15/CEP/QC-F-35/VIII/2019', 'Short Test', 'QC MANAGER;Law Chin Yee', 'PT PERTAMINA INDONESIA', '2019-08-31 16:36:11', '2019-08-31 16:36:11'),
(7, 12, 150, '-', 'PT CEMERLANG ENERGI PERKASA', '15/CEP/QC-F-35/VIII/2019', 'Short Test', 'QC MANAGER;Law Chin Yee', 'PT PERTAMINA INDONESIA', '2019-08-31 16:36:11', '2019-08-31 16:36:11'),
(8, 12, 151, '65.15', 'PT CEMERLANG ENERGI PERKASA', '15/CEP/QC-F-35/VIII/2019', 'Short Test', 'QC MANAGER;Law Chin Yee', 'PT PERTAMINA INDONESIA', '2019-08-31 16:36:11', '2019-08-31 16:36:11'),
(9, 12, 152, '-', 'PT CEMERLANG ENERGI PERKASA', '15/CEP/QC-F-35/VIII/2019', 'Short Test', 'QC MANAGER;Law Chin Yee', 'PT PERTAMINA INDONESIA', '2019-08-31 16:36:11', '2019-08-31 16:36:11'),
(10, 12, 144, 'Clear', 'PT.BAYAS BIOFUELS', '59/BBF/ME/IX/2019', 'Short Test', 'Laboratory Supervisor; Winner Sitanggung', 'PT.PERTAMINA TBBM MAOS;TBBM UJUNG BERUNG;TBBM PADALARANG', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(11, 12, 145, '2', 'PT.BAYAS BIOFUELS', '59/BBF/ME/IX/2019', 'Short Test', 'Laboratory Supervisor; Winner Sitanggung', 'PT.PERTAMINA TBBM MAOS;TBBM UJUNG BERUNG;TBBM PADALARANG', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(12, 12, 146, '863.1', 'PT.BAYAS BIOFUELS', '59/BBF/ME/IX/2019', 'Short Test', 'Laboratory Supervisor; Winner Sitanggung', 'PT.PERTAMINA TBBM MAOS;TBBM UJUNG BERUNG;TBBM PADALARANG', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(13, 12, 147, '4630', 'PT.BAYAS BIOFUELS', '59/BBF/ME/IX/2019', 'Short Test', 'Laboratory Supervisor; Winner Sitanggung', 'PT.PERTAMINA TBBM MAOS;TBBM UJUNG BERUNG;TBBM PADALARANG', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(14, 12, 148, 'Nil', 'PT.BAYAS BIOFUELS', '59/BBF/ME/IX/2019', 'Short Test', 'Laboratory Supervisor; Winner Sitanggung', 'PT.PERTAMINA TBBM MAOS;TBBM UJUNG BERUNG;TBBM PADALARANG', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(15, 12, 149, '-', 'PT.BAYAS BIOFUELS', '59/BBF/ME/IX/2019', 'Short Test', 'Laboratory Supervisor; Winner Sitanggung', 'PT.PERTAMINA TBBM MAOS;TBBM UJUNG BERUNG;TBBM PADALARANG', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(16, 12, 150, '-', 'PT.BAYAS BIOFUELS', '59/BBF/ME/IX/2019', 'Short Test', 'Laboratory Supervisor; Winner Sitanggung', 'PT.PERTAMINA TBBM MAOS;TBBM UJUNG BERUNG;TBBM PADALARANG', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(17, 12, 151, '56.8', 'PT.BAYAS BIOFUELS', '59/BBF/ME/IX/2019', 'Short Test', 'Laboratory Supervisor; Winner Sitanggung', 'PT.PERTAMINA TBBM MAOS;TBBM UJUNG BERUNG;TBBM PADALARANG', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(18, 12, 152, '16.2', 'PT.BAYAS BIOFUELS', '59/BBF/ME/IX/2019', 'Short Test', 'Laboratory Supervisor; Winner Sitanggung', 'PT.PERTAMINA TBBM MAOS;TBBM UJUNG BERUNG;TBBM PADALARANG', '2019-09-01 16:36:11', '2019-09-01 16:36:11'),
(19, 6, 59, 'Clear', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(20, 6, 62, 'Yellow', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(21, 6, 75, '725.3', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(22, 6, 81, '-', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(23, 6, 82, '53', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(24, 6, 83, '77.2', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(25, 6, 89, '153.2', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(26, 6, 90, '197.6', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(27, 6, 94, '1', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(28, 6, 95, '58', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(29, 6, 96, '88.1', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(30, 6, 97, '25', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(31, 6, 98, '1a', 'TANJUNG BIN TERMINAL MALAYSIA', 'SGBMYJ/19031777-006', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'SHORE TANK 2204', '2019-09-29 16:36:11', '2019-09-29 16:36:11'),
(32, 9, 99, 'Clear', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(33, 9, 100, '0.5', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(34, 9, 101, '816', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(35, 9, 102, '65', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(36, 9, 103, '-', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(37, 9, 104, '314', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(38, 9, 105, '338', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(39, 9, 106, '362', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(40, 9, 107, '54', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(41, 9, 108, '2200', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(42, 9, 109, '120', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(43, 9, 110, '0.1', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(44, 9, 111, '300', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(45, 9, 112, '-9', 'MT.JAVA PALM', '3813/E12240/2019-S2', 'Short Test', 'Stream Prod & Distr. SS; Merwinanto Ceswono', 'TK.207;INST.SURABAYA', '2019-09-11 16:36:11', '2019-09-11 16:36:11'),
(46, 6, 59, 'Clear', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51'),
(47, 6, 62, 'Yellowish', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51'),
(48, 6, 75, '735', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51'),
(49, 6, 81, '0.0025', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51'),
(50, 6, 82, '52.4', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51'),
(51, 6, 83, '78.3', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51'),
(52, 6, 89, '162.1', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51'),
(53, 6, 90, '204.7', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51'),
(54, 6, 94, '1.4', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51'),
(55, 6, 95, '59.50', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51'),
(56, 6, 96, '88.2', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51'),
(57, 6, 97, '0.0020', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51'),
(58, 6, 98, '1a', 'OCEAN PREMIER', '3345/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-13 16:25:51', '2019-09-13 16:25:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `distribution_reports`
--

CREATE TABLE `distribution_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `master_data_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sample` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penandatangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distribution_detail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `distribution_reports`
--

INSERT INTO `distribution_reports` (`id`, `product_id`, `master_data_id`, `value`, `asal_sample`, `no_test`, `jenis_pemeriksaan`, `penandatangan`, `distribution_detail`, `created_at`, `updated_at`) VALUES
(14, 7, 1, 'Clear', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(15, 7, 2, 'Green', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(16, 7, 3, '742.6', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(17, 7, 4, '31.2', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(18, 7, 5, '54.1', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(19, 7, 6, '89.9', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(20, 7, 7, '161', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(21, 7, 9, '206.5', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(22, 7, 10, '1.2', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(23, 7, 54, '58.2', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(24, 7, 55, '90.6', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(25, 7, 56, '262', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(26, 7, 87, '1a', 'FS GANTRY', '3509/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-01 16:52:44', '2019-09-01 16:52:44'),
(27, 4, 8, 'Clear', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(28, 4, 65, '<3.0', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(29, 4, 68, '848', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(30, 4, 69, '60', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(31, 4, 71, '52.5', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(32, 4, 73, '347.6', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(33, 4, 77, '53', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(34, 4, 85, '-', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(35, 4, 86, '111.2', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(36, 4, 88, '0.17', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(37, 4, 91, '707', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(38, 4, 92, '20', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(39, 4, 93, '6', 'FS GANTRY', '3511/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-08-31 18:02:11', '2019-08-31 18:02:11'),
(40, 4, 8, 'Clear', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(41, 4, 65, '<2.0', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(42, 4, 68, '857.6', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(43, 4, 69, '69', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(44, 4, 71, '55.9', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(45, 4, 73, '342.8', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(46, 4, 77, '48.5', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(47, 4, 85, '-', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(48, 4, 86, '97.2', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(49, 4, 88, '0.06', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(50, 4, 91, '946', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(51, 4, 92, '20', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(52, 4, 93, '0', 'FS GANTRY', '3404', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(53, 1, 1, 'Clear', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(54, 1, 2, 'Blue', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(55, 1, 3, '747.6', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(56, 1, 4, '31.5', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(57, 1, 5, '54.9', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(58, 1, 6, '99.5', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(59, 1, 7, '168.3', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(60, 1, 9, '212.7', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(61, 1, 10, '1.2', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(62, 1, 54, '58', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(63, 1, 55, '92.5', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(64, 1, 56, '389', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(65, 1, 87, '1a', 'FS GANTRY', '3403/F13431/2019S-3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(66, 6, 59, 'Clear', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(67, 6, 62, 'Yellow', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(68, 6, 75, '734.2', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(69, 6, 81, '30.7', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(70, 6, 82, '52.9', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(71, 6, 83, '78.2', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(72, 6, 89, '156.2', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(73, 6, 90, '198.3', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(74, 6, 94, '1.2', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(75, 6, 95, '62', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(76, 6, 96, '88.8', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(77, 6, 97, '576', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(78, 6, 98, '1a', 'FS GANTRY', '3401/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:02:11', '2019-09-22 18:02:11'),
(79, 9, 99, 'Clear', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(80, 9, 100, '<1.0', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(81, 9, 101, '820.4', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(82, 9, 102, '65', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(83, 9, 103, '81.2', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(84, 9, 104, '318.3', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(85, 9, 105, '338.7', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(86, 9, 106, '352.4', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(87, 9, 107, '53.9', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(88, 9, 108, '-', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(89, 9, 109, '36', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(90, 9, 110, '0.08', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(91, 9, 111, '285', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(92, 9, 112, '-3', 'FS GANTRY', '3405/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(93, 6, 59, 'Clear', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(94, 6, 62, 'Yellow', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(95, 6, 75, '731.2', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(96, 6, 81, '30.5', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(97, 6, 82, '52', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(98, 6, 83, '79.6', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(99, 6, 89, '158.9', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(100, 6, 90, '195.3', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(101, 6, 94, '1.2', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(102, 6, 95, '62.3', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(103, 6, 96, '88.7', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(104, 6, 97, '244', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(105, 6, 98, '1a', 'FS GANTRY', '3085/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-01 16:25:51', '2019-10-01 16:25:51'),
(106, 1, 1, 'Clear', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(107, 1, 2, 'Blue', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(108, 1, 3, '751.6', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(109, 1, 4, '32.9', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(110, 1, 5, '56.2', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(111, 1, 6, '100.9', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(112, 1, 7, '165.5', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(113, 1, 9, '212.4', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(114, 1, 10, '1.2', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(115, 1, 54, '55.9', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(116, 1, 55, '92.7', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(117, 1, 56, '302', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(118, 1, 87, '1a', 'FS GANTRY', '3510/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(119, 10, 113, 'Clear', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(120, 10, 114, 'Red', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(121, 10, 115, '745.8', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(122, 10, 116, '36.9', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(123, 10, 117, '65.6', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(124, 10, 118, '112.6', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(125, 10, 119, '159.8', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(126, 10, 120, '203', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(127, 10, 121, '1.2', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(128, 10, 122, '46', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(129, 10, 123, '98.4', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(130, 10, 124, '43', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(131, 10, 125, '1a', 'FS GANTRY', '3406/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(132, 7, 61, 'Clear', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(133, 7, 63, 'Green', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(134, 7, 64, '742.6', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(135, 7, 66, '30.8', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(136, 7, 67, '53.5', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(137, 7, 70, '87.3', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(138, 7, 72, '163.6', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(139, 7, 74, '207', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(140, 7, 76, '1.2', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(141, 7, 79, '59.8', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(142, 7, 80, '90.1', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(143, 7, 84, '396', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(144, 7, 129, '1a', 'FS GANTRY', '3402/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-22 18:43:42', '2019-09-22 18:43:42'),
(145, 4, 8, 'Clear', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(146, 4, 65, '<2.0', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(147, 4, 68, '856.9', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(148, 4, 69, '73', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(149, 4, 71, '53', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(150, 4, 73, '344.5', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(151, 4, 77, '50.9', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(152, 4, 85, '-', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(153, 4, 86, '113.8', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(154, 4, 88, '0.34', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(155, 4, 91, '668', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(156, 4, 92, '20', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(157, 4, 93, '3', 'FS GANTRY', '3441/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(158, 7, 61, 'Clear', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(159, 7, 63, 'Green', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(160, 7, 64, '743.5', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(161, 7, 66, '31.5', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(162, 7, 67, '53.5', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(163, 7, 70, '88.2', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(164, 7, 72, '161', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(165, 7, 74, '199.1', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(166, 7, 76, '1.2', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(167, 7, 79, '59.6', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(168, 7, 80, '90.2', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(169, 7, 84, '166', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(170, 7, 129, '1a', 'FS GANTRY', '3438/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(171, 11, 126, 'Clear', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(172, 11, 127, '<2.5', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(173, 11, 128, '849.7', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(174, 11, 130, '62', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(175, 11, 131, '56.8', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(176, 11, 132, '341.4', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(177, 11, 133, '50.8', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(178, 11, 134, '-', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(179, 11, 135, '99.5', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(180, 11, 136, '0.21', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(181, 11, 137, '661', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(182, 11, 138, '20', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(183, 11, 139, '3', 'FS GANTRY', '3512/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-30 18:43:42', '2019-09-30 18:43:42'),
(184, 10, 113, 'Clear', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(185, 10, 114, 'Red', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(186, 10, 115, '754.8', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(187, 10, 116, '36.9', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(188, 10, 117, '65.7', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(189, 10, 118, '113.1', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(190, 10, 119, '158.9', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(191, 10, 120, '200.3', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(192, 10, 121, '1.2', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(193, 10, 122, '45.5', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(194, 10, 123, '98.2', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(195, 10, 124, '44', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(196, 10, 125, '-', 'FS GANTRY', '3440/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(197, 1, 1, 'Clear', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(198, 1, 2, 'Blue', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(199, 1, 3, '754.6', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(200, 1, 4, '31.4', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(201, 1, 5, '55.2', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(202, 1, 6, '94.5', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(203, 1, 7, '163.3', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(204, 1, 9, '204', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(205, 1, 10, '1.2', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(206, 1, 54, '57.4', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(207, 1, 55, '92.4', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(208, 1, 56, '154', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(209, 1, 87, '-', 'FS GANTRY', '3439/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(210, 6, 59, 'Clear', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(211, 6, 62, 'Yellow', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(212, 6, 75, '725.4', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(213, 6, 81, '31.6', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(214, 6, 82, '52.1', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(215, 6, 83, '79', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(216, 6, 89, '160.6', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(217, 6, 90, '197.1', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(218, 6, 94, '1.2', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(219, 6, 95, '62.6', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(220, 6, 96, '88.7', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(221, 6, 97, '176', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(222, 6, 98, '1a', 'FS GANTRY', '3437/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-24 18:43:42', '2019-09-24 18:43:42'),
(223, 1, 1, 'Clear', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(224, 1, 2, 'Blue', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(225, 1, 3, '746.8', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(226, 1, 4, '31.3', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(227, 1, 5, '54.8', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(228, 1, 6, '98.5', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(229, 1, 7, '168.5', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(230, 1, 9, '213.6', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(231, 1, 10, '1.2', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(232, 1, 54, '58.6', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(233, 1, 55, '92.3', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(234, 1, 56, '142', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(235, 1, 87, '1a', 'FS GANTRY', '3370/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(236, 6, 59, 'Clear', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(237, 6, 62, 'Yellow', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(238, 6, 75, '719.6', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(239, 6, 81, '30.2', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(240, 6, 82, '50.1', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(241, 6, 83, '76', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(242, 6, 89, '157.5', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(243, 6, 90, '204.5', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(244, 6, 94, '1.2', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(245, 6, 95, '67.3', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(246, 6, 96, '88.3', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(247, 6, 97, '236', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(248, 6, 98, '1a', 'FS GANTRY', '3368/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(249, 4, 8, 'Clear', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(250, 4, 65, '<3.0', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(251, 4, 68, '857.1', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(252, 4, 69, '77', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(253, 4, 71, '55.2', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(254, 4, 73, '342.5', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(255, 4, 77, '49.2', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(256, 4, 85, '-', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(257, 4, 86, '150.8', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(258, 4, 88, '0.19', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(259, 4, 91, '529', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(260, 4, 92, '20', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(261, 4, 93, '3', 'FS GANTRY', '3372/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(262, 9, 99, 'Clear', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(263, 9, 100, '0.5', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(264, 9, 101, '820.7', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(265, 9, 102, '70', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(266, 9, 103, '81.7', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(267, 9, 104, '316.1', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(268, 9, 105, '337.3', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(269, 9, 106, '350.3', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(270, 9, 107, '54.1', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(271, 9, 108, '-', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(272, 9, 109, '65.1', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(273, 9, 110, '0.25', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(274, 9, 111, '281', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(275, 9, 112, '-3', 'FS GANTRY', '3373/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(276, 10, 113, 'Clear', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(277, 10, 114, 'Red', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(278, 10, 115, '745.8', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(279, 10, 116, '36.9', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(280, 10, 117, '65.6', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(281, 10, 118, '112.6', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(282, 10, 119, '159.8', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(283, 10, 120, '203', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(284, 10, 121, '1.2', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(285, 10, 122, '46', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(286, 10, 123, '98.4', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(287, 10, 124, '43', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(288, 10, 125, '1a', 'FS GANTRY', '3371/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(289, 7, 61, 'Clear', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(290, 7, 63, 'Green', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(291, 7, 64, '733.532.5', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(292, 7, 66, '32.5', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(293, 7, 67, '52.8', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(294, 7, 70, '87.7', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(295, 7, 72, '164.2', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(296, 7, 74, '210.5', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(297, 7, 76, '1.2', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(298, 7, 79, '62.9', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(299, 7, 80, '90.1', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(300, 7, 84, '198', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(301, 7, 129, '1a', 'FS GANTRY', '3369/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhir', 'GANTRY', '2019-09-19 18:43:42', '2019-09-19 18:43:42'),
(302, 11, 126, 'Clear', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(303, 11, 127, '<2', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(304, 11, 128, '851', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(305, 11, 130, '72', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(306, 11, 131, '68.4', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(307, 11, 132, '333.9', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(308, 11, 133, '46.8', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(309, 11, 134, '-', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(310, 11, 135, '67', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(311, 11, 136, '0.21', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(312, 11, 137, '391', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(313, 11, 138, '20', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(314, 11, 139, '-3', 'FS GANTRY', '3427/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-07-23 18:43:42', '2019-07-23 18:43:42'),
(315, 4, 8, 'Clear', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(316, 4, 65, '<2.0', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(317, 4, 68, '856.9', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(318, 4, 69, '71', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(319, 4, 71, '56.5', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(320, 4, 73, '341.9', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(321, 4, 77, '48.6', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(322, 4, 85, '-', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(323, 4, 86, '120', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(324, 4, 88, '0.12', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(325, 4, 91, '845', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(326, 4, 92, '20', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(327, 4, 93, '0', 'FS GANTRY', '3425/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(328, 9, 99, 'Clear', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(329, 9, 100, '<1.0', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(330, 9, 101, '820.4', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(331, 9, 102, '64', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42');
INSERT INTO `distribution_reports` (`id`, `product_id`, `master_data_id`, `value`, `asal_sample`, `no_test`, `jenis_pemeriksaan`, `penandatangan`, `distribution_detail`, `created_at`, `updated_at`) VALUES
(332, 9, 103, '72.8', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(333, 9, 104, '329.1', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(334, 9, 105, '346.7', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(335, 9, 106, '356.4', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(336, 9, 107, '57.9', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(337, 9, 108, '-', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(338, 9, 109, '71', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(339, 9, 110, '0.11', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(340, 9, 111, '269', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(341, 9, 112, '-3', 'FS GANTRY', '3426/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-23 18:43:42', '2019-09-23 18:43:42'),
(342, 4, 8, 'Clear', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(343, 4, 65, '<2.0', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(344, 4, 68, '857.1', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(345, 4, 69, '70', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(346, 4, 71, '58.8', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(347, 4, 73, '339.8', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(348, 4, 77, '47.9', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(349, 4, 85, '-', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(350, 4, 86, '149.7', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(351, 4, 88, '0.22', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(352, 4, 91, '615', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(353, 4, 92, '20', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(354, 4, 93, '3', 'FS GANTRY', '3464/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(355, 7, 61, 'Clear', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(356, 7, 63, 'Green', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(357, 7, 64, '743.8', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(358, 7, 66, '31.2', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(359, 7, 67, '54.3', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(360, 7, 70, '91.8', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(361, 7, 72, '157.8', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(362, 7, 74, '196.4', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(363, 7, 76, '1.2', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(364, 7, 79, '57.7', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(365, 7, 80, '90.4', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(366, 7, 84, '105', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(367, 7, 129, '1a', 'FS GANTRY', '3461/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(368, 6, 59, 'Clear', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(369, 6, 62, 'Yellow', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(370, 6, 75, '726.5', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(371, 6, 81, '31', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(372, 6, 82, '52', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(373, 6, 83, '79.4', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(374, 6, 89, '159.3', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(375, 6, 90, '194.8', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(376, 6, 94, '1.2', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(377, 6, 95, '62.1', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(378, 6, 96, '88.6', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(379, 6, 97, '131', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(380, 6, 98, '1a', 'FS GANTRY', '3460/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(381, 9, 99, 'Clear', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(382, 9, 100, '<1.0', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(383, 9, 101, '820.4', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(384, 9, 102, '65', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(385, 9, 103, '81.2', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(386, 9, 104, '318', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(387, 9, 105, '339.4', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(388, 9, 106, '354.7', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(389, 9, 107, '54.2', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(390, 9, 108, '-', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(391, 9, 109, '67.4', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(392, 9, 110, '0.21', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(393, 9, 111, '217', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(394, 9, 112, '-3', 'FS GANTRY', '3465/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(421, 10, 113, 'Clear', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(422, 10, 114, 'Red', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(423, 10, 115, '749.8', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(424, 10, 116, '37.3', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(425, 10, 117, '67.1', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(426, 10, 118, '115.6', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(427, 10, 119, '158.3', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(428, 10, 120, '198.1', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(429, 10, 121, '1.2', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(430, 10, 122, '47.1', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(431, 10, 123, '98.1', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(432, 10, 124, '41', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(433, 10, 125, '1a', 'FS GANTRY', '3463/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(434, 1, 1, 'Clear', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(435, 1, 2, 'Blue', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(436, 1, 3, '756.8', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(437, 1, 4, '32.6', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(438, 1, 5, '57.9', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(439, 1, 6, '104', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(440, 1, 7, '156', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(441, 1, 9, '197', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(442, 1, 10, '1.2', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(443, 1, 54, '54.7', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(444, 1, 55, '92.4', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(445, 1, 56, '117', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(446, 1, 87, '1a', 'FS GANTRY', '3462/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-26 18:43:42', '2019-09-26 18:43:42'),
(447, 9, 99, 'Clear', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(448, 9, 100, '<1.0', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(449, 9, 101, '820.2', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(450, 9, 102, '66', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(451, 9, 103, '80.9', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(452, 9, 104, '319.4', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(453, 9, 105, '340.7', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(454, 9, 106, '356.1', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(455, 9, 107, '54.7', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(456, 9, 108, '-', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(457, 9, 109, '59.8', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(458, 9, 110, '0.18', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(459, 9, 111, '285', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(460, 9, 112, '-3', 'FS GANTRY', '3500/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(461, 10, 113, 'Clear', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(462, 10, 114, 'Red', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(463, 10, 115, '743.9', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(464, 10, 116, '37.5', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(465, 10, 117, '67.6', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(466, 10, 118, '114.5', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(467, 10, 119, '158', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(468, 10, 120, '197.1', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(469, 10, 121, '1.2', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(470, 10, 122, '46.4', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(471, 10, 123, '98.1', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(472, 10, 124, '32', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(473, 10, 125, '1a', 'FS GANTRY', '3498/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(474, 7, 61, 'Clear', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(475, 7, 63, 'Green', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(476, 7, 64, '734.9', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(477, 7, 66, '31.453.1', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(478, 7, 67, '53.1', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(479, 7, 70, '85.6', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(480, 7, 72, '163', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(481, 7, 74, '208.7', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(482, 7, 76, '1.2', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(483, 7, 79, '60.9', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(484, 7, 80, '90.3', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(485, 7, 84, '250', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(486, 7, 129, '1a', 'FS GANTRY', '3496/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(487, 4, 8, 'Clear', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(488, 4, 65, '<2.0', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(489, 4, 68, '848.5', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(490, 4, 69, '65', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(491, 4, 71, '56.9', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(492, 4, 73, '340.6', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(493, 4, 77, '51.7', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(494, 4, 85, '-', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(495, 4, 86, '151', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(496, 4, 88, '0.30', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(497, 4, 91, '729', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(498, 4, 92, '20', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(499, 4, 93, '6', 'FS GANTRY', '3499/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(500, 1, 1, 'Clear', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(501, 1, 2, 'Blue', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(502, 1, 3, '740.9', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(503, 1, 4, '31', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(504, 1, 5, '53.6', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(505, 1, 6, '94.4', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(506, 1, 7, '170.2', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(507, 1, 9, '211.8', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(508, 1, 10, '1.2', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(509, 1, 54, '59.4', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(510, 1, 55, '92.7', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(511, 1, 56, '265', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(512, 1, 87, '1a', 'FS GANTRY', '3497/F13431/2019-S3', 'Short Test', 'Manjer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(513, 6, 59, 'Clear', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(514, 6, 62, 'Yellow', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(515, 6, 75, '726', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(516, 6, 81, '31.8', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(517, 6, 82, '53', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(518, 6, 83, '78.2', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(519, 6, 89, '152', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(520, 6, 90, '195.5', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(521, 6, 94, '1.2', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(522, 6, 95, '62', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(523, 6, 96, '88.6', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(524, 6, 97, '246', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(525, 6, 98, '1a', 'FS GANTRY', '3495/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-09-29 18:43:42', '2019-09-29 18:43:42'),
(526, 9, 99, 'Clear', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(527, 9, 100, '1.0', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(528, 9, 101, '819.7', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(529, 9, 102, '62', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(530, 9, 103, '83.3', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(531, 9, 104, '312.7', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(532, 9, 105, '332.4', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(533, 9, 106, '346.6', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(534, 9, 107, '53.7', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(535, 9, 108, '3.4', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(536, 9, 109, '79.1', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(537, 9, 110, '0.18', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(538, 9, 111, '275', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(539, 9, 112, '-3', 'FS GANTRY', '3541/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-02 18:43:42', '2019-09-02 18:43:42'),
(540, 1, 1, 'Clear', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(541, 1, 2, 'Blue', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(542, 1, 3, '748.8', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(543, 1, 4, '32', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(544, 1, 5, '56.1', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(545, 1, 6, '100.3', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(546, 1, 7, '166.4', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(547, 1, 9, '210.9', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(548, 1, 10, '1.2', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(549, 1, 54, '56.7', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(550, 1, 55, '92.9', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(551, 1, 56, '247', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(552, 1, 87, '1a', 'FS GANTRY', '3538/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(553, 10, 113, 'Clear', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(554, 10, 114, 'Red', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(555, 10, 115, '743.8', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(556, 10, 116, '38.1', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(557, 10, 117, '68.1', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(558, 10, 118, '115.6', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(559, 10, 119, '157.6', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(560, 10, 120, '195.6', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(561, 10, 121, '1.2', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(562, 10, 122, '46.5', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(563, 10, 123, '98.4', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(564, 10, 124, '39', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(565, 10, 125, '1a', 'FS GANTRY', '3539/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(566, 7, 61, 'Clear', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(567, 7, 63, 'Green', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(568, 7, 64, '739.9', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(569, 7, 66, '32', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(570, 7, 67, '53.8', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(571, 7, 70, '87.6', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(572, 7, 72, '161.9', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(573, 7, 74, '204.6', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(574, 7, 76, '1.2', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(575, 7, 79, '59.9', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(576, 7, 80, '90.7', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(577, 7, 84, '225', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(578, 7, 129, '1a', 'FS GANTRY', '3537/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(579, 6, 59, 'Clear', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(580, 6, 62, 'Yellow', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(581, 6, 75, '728.5', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(582, 6, 81, '29.9', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(583, 6, 82, '51.1', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(584, 6, 83, '75.2', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(585, 6, 89, '156.9', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(586, 6, 90, '194.9', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(587, 6, 94, '1.2', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(588, 6, 95, '53.9', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(589, 6, 96, '88.4', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(590, 6, 97, '264', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(591, 6, 98, '1a', 'FS GANTRY', '3536/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-02 18:43:42', '2019-10-02 18:43:42'),
(592, 9, 99, 'Clear', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(593, 9, 100, '1.0', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(594, 9, 101, '819.7', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(595, 9, 102, '-', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(596, 9, 103, '83.1', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(597, 9, 104, '313.2', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(598, 9, 105, '332.7', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(599, 9, 106, '346.9', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(600, 9, 107, '53.8', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(601, 9, 108, '-', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(602, 9, 109, '73.1', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(603, 9, 110, '0.21', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(604, 9, 111, '239', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(605, 9, 112, '-3', 'FS GANTRY', '3555/F13431/2019-SE', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-03 18:43:42', '2019-09-03 18:43:42'),
(606, 6, 59, 'Clear', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(607, 6, 62, 'Yellow', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(608, 6, 75, '724.5', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(609, 6, 81, '30.7', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(610, 6, 82, '50.5', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(611, 6, 83, '76.2', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(612, 6, 89, '158.3', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(613, 6, 90, '194.8', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(614, 6, 94, '1.2', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(615, 6, 95, '64.9', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(616, 6, 96, '88.4', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(617, 6, 97, '198', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(618, 6, 98, '1a', 'FS GANTRY', '3550/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(619, 4, 8, 'Clear', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(620, 4, 65, '2.5', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(621, 4, 68, '861.4', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(622, 4, 69, '78', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(623, 4, 71, '51.3', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(624, 4, 73, '345', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(625, 4, 77, '49.2', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(626, 4, 85, '-', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(627, 4, 86, '171.2', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(628, 4, 88, '0.32', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(629, 4, 91, '588', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(630, 4, 92, '20', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(631, 4, 93, '3', 'FS GANTRY', '3554/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(632, 1, 1, 'Clear', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(633, 1, 2, 'Blue', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(634, 1, 3, '743.9', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(635, 1, 4, '31.5', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(636, 1, 5, '53.8', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(637, 1, 6, '94.5', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(638, 1, 7, '169.8', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(639, 1, 9, '211.9', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(640, 1, 10, '1.2', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(641, 1, 54, '59.5', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(642, 1, 55, '92.9', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(643, 1, 56, '124', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(644, 1, 87, '1a', 'FS GANTRY', '3552/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(645, 10, 113, 'Clear', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(646, 10, 114, 'Red', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(647, 10, 115, '743.9', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(648, 10, 116, '38.3', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(649, 10, 117, '67.5', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(650, 10, 118, '114.9', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(651, 10, 119, '157.9', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(652, 10, 120, '199.7', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(653, 10, 121, '1.2', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(654, 10, 122, '45', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(655, 10, 123, '98.4', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(656, 10, 124, '42', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(657, 10, 125, '1a', 'FS GANTRY', '3553/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(658, 7, 61, 'Clear', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(659, 7, 63, 'Green', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(660, 7, 64, '735.9', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(661, 7, 66, '31.8', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(662, 7, 67, '53.1', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(663, 7, 70, '85.2', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(664, 7, 72, '164.5', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(665, 7, 74, '206.9', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(666, 7, 76, '1.2', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(667, 7, 79, '61.6', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(668, 7, 80, '90.7', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(669, 7, 84, '201', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(670, 7, 129, '1a', 'FS GANTRY', '3551/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-03 18:43:42', '2019-10-03 18:43:42'),
(671, 6, 59, 'Clear', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(672, 6, 62, 'Yellow', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(673, 6, 75, '725', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42');
INSERT INTO `distribution_reports` (`id`, `product_id`, `master_data_id`, `value`, `asal_sample`, `no_test`, `jenis_pemeriksaan`, `penandatangan`, `distribution_detail`, `created_at`, `updated_at`) VALUES
(674, 6, 81, '31.1', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(675, 6, 82, '51.9', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(676, 6, 83, '75.9', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(677, 6, 89, '158.5', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(678, 6, 90, '198', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(679, 6, 94, '1.2', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(680, 6, 95, '63.7', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(681, 6, 96, '88.5', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(682, 6, 97, '219', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(683, 6, 98, '1a', 'FS GANTRY', '3603/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(684, 4, 8, 'Clear', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(685, 4, 65, '<3.0', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(686, 4, 68, '851.5', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(687, 4, 69, '76', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(688, 4, 71, '54.1', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(689, 4, 73, '345.4', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(690, 4, 77, '52.2', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(691, 4, 85, '-', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(692, 4, 86, '232.1', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(693, 4, 88, '0.35', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(694, 4, 91, '645', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(695, 4, 92, '20', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(696, 4, 93, '9', 'FS GANTRY', '3607/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(697, 10, 113, 'Clear', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(698, 10, 114, 'Red', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(699, 10, 115, '739.9', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(700, 10, 116, '37.3', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(701, 10, 117, '67.1', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(702, 10, 118, '114.3', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(703, 10, 119, '156.8', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(704, 10, 120, '199.3', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(705, 10, 121, '1.2', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(706, 10, 122, '45.8', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(707, 10, 123, '98.2', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(708, 10, 124, '35', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(709, 10, 125, '1a', 'FS GANTRY', '3606/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(710, 7, 61, 'Clear', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(711, 7, 63, 'Greem', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(712, 7, 64, '732.9', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(713, 7, 66, '31.3', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(714, 7, 67, '53.5', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(715, 7, 70, '86.9', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(716, 7, 72, '164', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(717, 7, 74, '207', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(718, 7, 76, '1.2', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(719, 7, 79, '60.7', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(720, 7, 80, '90.2', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(721, 7, 84, '277', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(722, 7, 129, '1a', 'FS GANTRY', '3604/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 18:43:42', '2019-10-07 18:43:42'),
(723, 9, 99, 'Clear', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(724, 9, 100, '1.0', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(725, 9, 101, '819.3', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(726, 9, 102, '61', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(727, 9, 103, '82.8', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(728, 9, 104, '313.8', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(729, 9, 105, '334.8', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(730, 9, 106, '349.2', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(731, 9, 107, '54.1', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(732, 9, 108, '-', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(733, 9, 109, '44.6', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(734, 9, 110, '0.26', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(735, 9, 111, '225', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(736, 9, 112, '-3', 'FS GANTRY', '3608/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-07 18:43:42', '2019-09-07 18:43:42'),
(737, 6, 59, 'Clear', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(738, 6, 62, 'Yellow', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(739, 6, 75, '730.3', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(740, 6, 81, '30.5', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(741, 6, 82, '51.3', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(742, 6, 83, '76.1', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(743, 6, 89, '159.1', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(744, 6, 90, '196.7', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(745, 6, 94, '1.2', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(746, 6, 95, '64.2', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(747, 6, 96, '88.6', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(748, 6, 97, '78', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(749, 6, 98, '1a', 'FS GANTRY', '3627/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(750, 4, 8, 'Clear', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(751, 4, 65, '2.5', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(752, 4, 68, '857.9', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(753, 4, 69, '78', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(754, 4, 71, '53.9', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(755, 4, 73, '343.5', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(756, 4, 77, '49.8', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(757, 4, 85, '-', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(758, 4, 86, '116.8', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(759, 4, 88, '0.21', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(760, 4, 91, '245', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(761, 4, 92, '20', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(762, 4, 93, '6', 'FS GANTRY', '3631/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(763, 1, 1, 'Clear', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(764, 1, 2, 'Blue', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(765, 1, 3, '750.7', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(766, 1, 4, '32.5', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(767, 1, 5, '56.3', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(768, 1, 6, '101', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(769, 1, 7, '168.4', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(770, 1, 9, '213.1', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(771, 1, 10, '1.2', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(772, 1, 54, '55', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(773, 1, 55, '92.4', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(774, 1, 56, '125', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(775, 1, 87, '1a', 'FS GANTRY', '3629/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(776, 10, 113, 'Clear', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(777, 10, 114, 'Red', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(778, 10, 115, '744.7', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(779, 10, 116, '37.4', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(780, 10, 117, '67.1', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(781, 10, 118, '114.3', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(782, 10, 119, '158', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(783, 10, 120, '198.1', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(784, 10, 121, '1.2', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(785, 10, 122, '45.5', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(786, 10, 123, '98.4', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(787, 10, 124, '41', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(788, 10, 125, '1a', 'FS GANTRY', '3630/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(789, 9, 99, 'Clear', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(790, 9, 100, '1.0', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(791, 9, 101, '820.4', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(792, 9, 102, '61', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(793, 9, 103, '83.1', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(794, 9, 104, '313.3', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(795, 9, 105, '333.5', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(796, 9, 106, '348.6', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(797, 9, 107, '53.6', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(798, 9, 108, '-', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(799, 9, 109, '60.8', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(800, 9, 110, '0.19', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(801, 9, 111, '257', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(802, 9, 112, '-3', 'FS GANTRY', '3632/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 18:43:42', '2019-09-09 18:43:42'),
(803, 7, 61, 'Clear', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(804, 7, 63, 'Green', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(805, 7, 64, '739.8', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(806, 7, 66, '31.5', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(807, 7, 67, '54.1', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(808, 7, 70, '89.9', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(809, 7, 72, '163.1', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(810, 7, 74, '208.1', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(811, 7, 76, '1.2', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(812, 7, 79, '59', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(813, 7, 80, '90', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(814, 7, 84, '94', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(815, 7, 129, '1a', 'FS GANTRY', '3628/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-09 18:43:42', '2019-10-09 18:43:42'),
(816, 6, 59, 'Clear', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(817, 6, 62, 'Yellow', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(818, 6, 75, '726.5', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(819, 6, 81, '30.7', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(820, 6, 82, '52.2', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(821, 6, 83, '83.4', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(822, 6, 89, '162', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(823, 6, 90, '205.3', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(824, 6, 94, '1.2', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(825, 6, 95, '61.6', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(826, 6, 96, '88.3', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(827, 6, 97, '261', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(828, 6, 98, '1a', 'FS GANTRY', '3639/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(829, 9, 99, 'Clear', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(830, 9, 100, '1.0', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(831, 9, 101, '820.4', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(832, 9, 102, '59', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(833, 9, 103, '83.5', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(834, 9, 104, '313.1', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(835, 9, 105, '333.7', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(836, 9, 106, '349', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(837, 9, 107, '53.3', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(838, 9, 108, '-', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(839, 9, 109, '89.7', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(840, 9, 110, '0.20', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(841, 9, 111, '271', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(842, 9, 112, '-3', 'FS GANTRY', '3644/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(843, 1, 1, 'Clear', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(844, 1, 2, 'Blue', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(845, 1, 3, '749.8', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(846, 1, 4, '33.3', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(847, 1, 5, '57.5', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(848, 1, 6, '103.2', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(849, 1, 7, '165.7', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(850, 1, 9, '209.2', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(851, 1, 10, '1.2', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(852, 1, 54, '54.2', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(853, 1, 55, '92.4', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(854, 1, 56, '131', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(855, 1, 87, '1a', 'FS GANTRY', '3641/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(856, 10, 113, 'Clear', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(857, 10, 114, 'Red', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(858, 10, 115, '742.7', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(859, 10, 116, '37.2', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(860, 10, 117, '67.3', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(861, 10, 118, '114.2', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(862, 10, 119, '158.2', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(863, 10, 120, '197.6', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(864, 10, 121, '1.2', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(865, 10, 122, '46.2', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(866, 10, 123, '98.4', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(867, 10, 124, '39', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(868, 10, 125, '1a', 'FS GANTRY', '3642/F13431/2019-S3', 'Short Test', 'Manajer Teknis; Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(869, 4, 8, 'Clear', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(870, 4, 65, '2.5', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(871, 4, 68, '858.9', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(872, 4, 69, '70', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(873, 4, 71, '54.4', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(874, 4, 73, '344.1', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(875, 4, 77, '49.4', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(876, 4, 85, '-', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(877, 4, 86, '179.7', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(878, 4, 88, '0.28', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(879, 4, 91, '265', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(880, 4, 92, '20', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(881, 4, 93, '6', 'FS GANTRY', '3643/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(882, 7, 61, 'Clear', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(883, 7, 63, 'Green', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(884, 7, 64, '739.9', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(885, 7, 66, '32.3', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(886, 7, 67, '54.8', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(887, 7, 70, '94', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(888, 7, 72, '165', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(889, 7, 74, '209.1', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(890, 7, 76, '1.2', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(891, 7, 79, '57.7', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(892, 7, 80, '90.5', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(893, 7, 84, '152', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(894, 7, 129, '1a', 'FS GANTRY', '3640/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-10 18:43:42', '2019-10-10 18:43:42'),
(895, 9, 99, 'CLear', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(896, 9, 100, '<0.5', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(897, 9, 101, '818.9', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(898, 9, 102, '69', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(899, 9, 103, '82.7', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(900, 9, 104, '314.8', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(901, 9, 105, '337.7', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(902, 9, 106, '353.8', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(903, 9, 107, '54.3', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(904, 9, 108, '-', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(905, 9, 109, '68.2', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(906, 9, 110, '0.21', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(907, 9, 111, '284', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(908, 9, 112, '-3', 'FS GANTRY', '3250/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-09-09 16:36:11', '2019-09-09 16:36:11'),
(909, 6, 59, 'Clear', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(910, 6, 62, 'Yellow', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(911, 6, 75, '722', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(912, 6, 81, '32.4', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(913, 6, 82, '53.5', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(914, 6, 83, '78.2', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(915, 6, 89, '154.1', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(916, 6, 90, '195.5', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(917, 6, 94, '1.2', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(918, 6, 95, '59.7', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(919, 6, 96, '88.6', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(920, 6, 97, '212', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(921, 6, 98, '1a', 'FS GANTRY', '3592/F13431/2019-S3', 'Short Test', 'Manajer Teknis;Abdul Qohhar', 'GANTRY', '2019-10-07 16:36:11', '2019-10-07 16:36:11'),
(936, 6, 59, 'Clear', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51'),
(937, 6, 62, 'Yellow', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51'),
(938, 6, 75, '727.5', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51'),
(939, 6, 81, '30.3', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51'),
(940, 6, 82, '50.9', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51'),
(941, 6, 83, '76.1', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51'),
(942, 6, 89, '162.6', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51'),
(943, 6, 90, '197', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51'),
(944, 6, 94, '1.2', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51'),
(945, 6, 95, '64.9', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51'),
(946, 6, 96, '88.7', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51'),
(947, 6, 97, '275', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51'),
(948, 6, 98, '1a', 'FS GANTRY', '3356/F13431/2019-S3', 'Short Test', 'Supervisor; Merwinanto Ceswono', 'ITP', '2019-09-19 16:25:51', '2019-09-19 16:25:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `make_test_reports`
--

CREATE TABLE `make_test_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `master_data_id` bigint(20) UNSIGNED NOT NULL,
  `coq` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `before` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distribution` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asal_sample` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penandatangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_data`
--

CREATE TABLE `master_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `test_price_id` bigint(20) UNSIGNED NOT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_min` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_max` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issuer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_data`
--

INSERT INTO `master_data` (`id`, `product_id`, `test_price_id`, `parameter`, `metode`, `unit`, `limit_min`, `limit_max`, `issuer`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 'Appearance', 'Visual', '-', 'Clear', 'Clear', 'habib@pertamina.com', '2019-10-26 16:32:51', '2019-10-26 16:43:26'),
(2, 1, 11, 'Color', 'Visual', '-', 'Blue', 'Blue', 'habib@pertamina.com', '2019-10-26 16:33:13', '2019-10-26 18:01:57'),
(3, 1, 8, 'Density at 15°C', 'ASTM D-1298-12b(2017)', 'Kg/m3', '715', '770', 'habib@pertamina.com', '2019-10-26 16:33:43', '2019-10-26 18:06:19'),
(4, 1, 16, 'Destilation: IBP', 'ASTM D-7345-17', '⁰C', '-', '-', 'habib@pertamina.com', '2019-10-26 16:35:38', '2019-10-26 18:06:40'),
(5, 1, 2, 'Destilation: 10% vol Evaporated', 'ASTM D-7345-17', '⁰C', '-', '70.0', 'habib@pertamina.com', '2019-10-26 16:36:03', '2019-10-26 18:07:55'),
(6, 1, 3, 'Destilation: 50% vol Evaporated', 'ASTM D-7345-17', '⁰C', '77', '110', 'habib@pertamina.com', '2019-10-26 16:37:18', '2019-10-26 18:07:49'),
(7, 1, 3, 'Destilation: 90% vol Evaporated', 'ASTM D-7345-17', '⁰C', '130', '180', 'habib@pertamina.com', '2019-10-26 16:37:53', '2019-10-26 18:07:43'),
(8, 4, 10, 'Appearance', 'Visual', '-', 'Clear', 'Clear', 'abrar@pertamina.com', '2019-10-26 16:41:06', '2019-10-26 16:41:06'),
(9, 1, 17, 'Destilation: FBP', 'ASTM D-7345-17', '⁰C', '-', '215', 'habib@pertamina.com', '2019-10-26 16:43:32', '2019-10-26 18:08:11'),
(10, 1, 6, 'Distilation: Residu', 'ASTM D-7345-17', '%vol', '-', '2.0', 'habib@pertamina.com', '2019-10-26 16:44:15', '2019-10-26 18:08:20'),
(54, 1, 19, 'RVP', 'ASTM D-5191-12', 'kPa', '45', '60', 'habib@pertamina.com', '2019-10-26 16:46:09', '2019-10-26 20:06:54'),
(55, 1, 1, 'RON', 'ASTM D-2699-18', 'ON', '92', '-', 'habib@pertamina.com', '2019-10-26 16:46:50', '2019-10-26 18:08:57'),
(56, 1, 12, 'Sulfur Content', 'ASTM D-4294-16e1', 'ppm', '-', '500', 'habib@pertamina.com', '2019-10-26 16:47:20', '2019-10-26 18:08:38'),
(59, 6, 10, 'Appearance', 'Visual', '-', 'Clear', 'Clear', 'suyudi@pertamina.com', '2019-10-26 16:51:21', '2019-10-26 16:51:21'),
(61, 7, 10, 'Appearance', 'Visual', '-', 'Clear', 'Clear', 'habib@pertamina.com', '2019-10-26 16:55:49', '2019-10-26 16:55:49'),
(62, 6, 11, 'Color', 'Visual', '-', 'Yellow', 'Yellow', 'suyudi@pertamina.com', '2019-10-26 16:56:10', '2019-10-26 16:56:10'),
(63, 7, 11, 'Color', 'Visual', '-', 'Green', 'Green', 'habib@pertamina.com', '2019-10-26 16:56:52', '2019-10-26 16:56:52'),
(64, 7, 8, 'Berat Jenis @ 15°C', 'ASTM D-1298-12b(2017)', 'Kg/m3', '715', '770', 'habib@pertamina.com', '2019-10-26 16:57:44', '2019-10-26 16:57:44'),
(65, 4, 11, 'Color', 'ASTM D-1500-12(2017)', '-', '-', '3.0', 'abrar@pertamina.com', '2019-10-26 16:58:01', '2019-10-26 16:58:01'),
(66, 7, 16, 'Destilasi: IBP', 'ASTM D-7345-17', '°C', '-', '-', 'habib@pertamina.com', '2019-10-26 16:58:32', '2019-10-26 16:58:32'),
(67, 7, 2, 'Destilation : 10% vol Evaporated', 'ASTM D-7345-17', '°C', '-', '74.0', 'habib@pertamina.com', '2019-10-26 17:02:12', '2019-10-26 17:02:12'),
(68, 4, 8, 'Density at 15°C', 'ASTM D-1298-12b(2017)', 'Kg/m3', '815', '870', 'abrar@pertamina.com', '2019-10-26 17:26:23', '2019-10-26 17:26:23'),
(69, 4, 14, 'Flash Point', 'ASTM D-93-18', '°C', '52', '-', 'abrar@pertamina.com', '2019-10-26 17:30:53', '2019-10-26 17:30:53'),
(70, 7, 3, 'Destilation : 50% vol Evaporated', 'ASTM D-7345-17', '°C', '77.0', '125.0', 'habib@pertamina.com', '2019-10-26 17:31:30', '2019-10-26 17:31:30'),
(71, 4, 20, 'Destilation: Recovery at 300°C', 'ASTM D-7345-17', '%vol', '40', '-', 'abrar@pertamina.com', '2019-10-26 17:31:37', '2019-10-26 17:31:37'),
(72, 7, 4, 'Destilation : 90% vol Evaporated', 'ASTM D-7345-17', '°C', '-', '180', 'habib@pertamina.com', '2019-10-26 17:31:53', '2019-10-26 17:31:53'),
(73, 4, 21, 'Destilation: Recovery at 90% Vol', 'ASTM D-7345-17', '°C', '-', '370', 'abrar@pertamina.com', '2019-10-26 17:31:57', '2019-10-26 17:31:57'),
(74, 7, 17, 'Destilasi: FBP', 'ASTM D-7345-17', '°C', '-', '215.0', 'habib@pertamina.com', '2019-10-26 17:32:11', '2019-10-26 17:32:11'),
(75, 6, 8, 'Density at 15°C', 'ASTM D-1298-12b(2017)', 'Kg/m3', '715', '770', 'suyudi@pertamina.com', '2019-10-26 17:32:35', '2019-10-26 17:32:35'),
(76, 7, 6, 'Destilation : Residu', 'ASTM D-7345-17', '%vol', '-', '2.0', 'habib@pertamina.com', '2019-10-26 17:35:22', '2019-10-26 17:35:22'),
(77, 4, 22, 'Destilation: Calculatet Cetane Index', 'ASTM D-4737-10(2016)', '-', '45', '-', 'abrar@pertamina.com', '2019-10-26 17:35:24', '2019-10-26 17:35:24'),
(79, 7, 19, 'RVP', 'ASTM D-5191-12', 'kPa', '45', '69', 'habib@pertamina.com', '2019-10-26 17:36:40', '2019-10-26 19:47:33'),
(80, 7, 1, 'RON', 'ASTM D-2699-18', 'ON', '90', '-', 'habib@pertamina.com', '2019-10-26 17:37:11', '2019-10-26 17:39:05'),
(81, 6, 16, 'Destilation: IBP', 'ASTM D-7345-17', '°C', '-', '-', 'suyudi@pertamina.com', '2019-10-26 17:38:15', '2019-10-26 17:39:54'),
(82, 6, 2, 'Destilation : 10% vol Evaporated', 'ASTM D-7345-17', '°C', '-', '74', 'suyudi@pertamina.com', '2019-10-26 17:39:08', '2019-10-26 17:39:08'),
(83, 6, 3, 'Destilation : 50% vol Evaporated', 'ASTM D-7345-17', '°C', '75', '125', 'suyudi@pertamina.com', '2019-10-26 17:39:26', '2019-10-26 17:39:26'),
(84, 7, 12, 'Sulfur Content', 'ASTM D-4294-16e1', 'ppm', '-', '500', 'habib@pertamina.com', '2019-10-26 17:39:29', '2019-10-26 17:39:29'),
(85, 4, 24, 'Viscosity Kinematic at 40°C', 'ASTM D-445-11a', 'cst', '2000', '4500', 'abrar@pertamina.com', '2019-10-26 17:40:46', '2019-10-26 17:40:46'),
(86, 4, 15, 'Water Content', 'ASTM D-6304-16e1', 'ppm', '-', '500', 'abrar@pertamina.com', '2019-10-26 17:41:34', '2019-10-26 17:41:34'),
(87, 1, 9, 'Copper Strip Corrosion 3 Hrs at 50°C', 'ASTM D-130-19', 'Merit', '-', 'Kelas 1b', 'habib@pertamina.com', '2019-10-26 17:41:35', '2019-10-26 17:41:35'),
(88, 4, 23, 'TAN', 'ASTM D-664-17a', 'mg.KOH/g', '-', '0.6', 'abrar@pertamina.com', '2019-10-26 17:42:11', '2019-10-26 17:42:11'),
(89, 6, 4, 'Destilation : 90% vol Evaporated', 'ASTM D-7345-17', '°C', '-', '180', 'suyudi@pertamina.com', '2019-10-26 17:42:25', '2019-10-26 17:42:25'),
(90, 6, 5, 'Destilation : FBP', 'ASTM D-7345-17', '°C', '-', '215', 'suyudi@pertamina.com', '2019-10-26 17:42:39', '2019-10-26 17:42:39'),
(91, 4, 12, 'Sulfur Content', 'ASTM D-4294-16e1', 'ppm', '-', '2500', 'abrar@pertamina.com', '2019-10-26 17:42:50', '2019-10-26 17:42:50'),
(92, 4, 25, 'Fame Content', 'ASTM D-7806-12', '%v', '20', '20', 'abrar@pertamina.com', '2019-10-26 17:43:31', '2019-10-26 17:43:31'),
(93, 4, 26, 'Pour Point', 'ASTM D-97-17b', '°C', '-', '18', 'abrar@pertamina.com', '2019-10-26 17:44:00', '2019-10-26 17:59:33'),
(94, 6, 6, 'Destilation : Residu', 'ASTM D-7345-17', '%vol', '-', '2', 'suyudi@pertamina.com', '2019-10-26 17:44:01', '2019-10-26 17:44:01'),
(95, 6, 19, 'RVP', 'ASTM D-5191-12', 'kPa', '45', '69', 'suyudi@pertamina.com', '2019-10-26 17:44:42', '2019-10-26 19:50:09'),
(96, 6, 1, 'RON', 'ASTM D-2699-18', 'ON', '88', '-', 'suyudi@pertamina.com', '2019-10-26 17:45:27', '2019-10-26 17:45:27'),
(97, 6, 12, 'Sulfur Content', 'ASTM D-4294-16e1', 'ppm', '-', '500', 'suyudi@pertamina.com', '2019-10-26 17:46:11', '2019-10-26 17:46:11'),
(98, 6, 9, 'Copper Strip Corrosion 3 Hrs at 50°C', 'ASTM D-130-19', 'Merit', 'Kelas 1', 'Kelas 1', 'suyudi@pertamina.com', '2019-10-26 17:47:54', '2019-10-26 17:47:54'),
(99, 9, 10, 'Appearance', 'Visual', '-', 'Clear', 'Clear', 'abrar@pertamina.com', '2019-10-26 18:25:55', '2019-10-26 18:25:55'),
(100, 9, 11, 'Color', 'ASTM D-1500-12(2017)', '-', '-', '1.0', 'abrar@pertamina.com', '2019-10-26 18:26:30', '2019-10-26 18:26:30'),
(101, 9, 8, 'Density at 15°C', 'ASTM D-1298-12b(2017)', 'Kg/m3', '820', '860', 'abrar@pertamina.com', '2019-10-26 18:27:16', '2019-10-26 18:27:16'),
(102, 9, 14, 'Flash Point', 'ASTM D-93-18', '°C', '55', '-', 'abrar@pertamina.com', '2019-10-26 18:27:46', '2019-10-26 18:27:46'),
(103, 9, 20, 'Destilation: Recovery at 300°C', 'ASTM D-7345-17', '%vol', '40', '-', 'abrar@pertamina.com', '2019-10-26 18:28:11', '2019-10-26 18:28:11'),
(104, 9, 21, 'Destilation: Recovery at 90% Vol', 'ASTM D-7345-17', '°C', '-', '340', 'abrar@pertamina.com', '2019-10-26 18:28:39', '2019-10-26 18:28:39'),
(105, 9, 27, 'Destilation: Recovery at 95% Vol', 'ASTM D-7345-17', '°C', '-', '360', 'abrar@pertamina.com', '2019-10-26 18:29:58', '2019-10-26 18:29:58'),
(106, 9, 5, 'Destilation : FBP', 'ASTM D-7345-17', '°C', '-', '370', 'abrar@pertamina.com', '2019-10-26 18:32:02', '2019-10-26 18:32:02'),
(107, 9, 22, 'Destilation: Calculatet Cetane Index', 'ASTM D-4737-10(2016)', '-', '48', '-', 'abrar@pertamina.com', '2019-10-26 18:32:47', '2019-10-26 18:32:47'),
(108, 9, 24, 'Viscosity Kinematic at 40°C', 'ASTM D-445-11a', 'cst', '2000', '5000', 'abrar@pertamina.com', '2019-10-26 18:33:13', '2019-10-26 18:33:13'),
(109, 9, 15, 'Water Content', 'ASTM D-6304-16e1', 'ppm', '-', '500', 'abrar@pertamina.com', '2019-10-26 18:34:02', '2019-10-26 18:34:02'),
(110, 9, 23, 'TAN', 'ASTM D-664-17a', 'mg.KOH/g', '-', '0.3', 'abrar@pertamina.com', '2019-10-26 18:34:54', '2019-10-27 17:00:09'),
(111, 9, 12, 'Sulfur Content', 'ASTM D-4294-16e1', 'ppm', '-', '300', 'abrar@pertamina.com', '2019-10-26 18:35:24', '2019-10-26 18:35:24'),
(112, 9, 26, 'Pour Point', 'ASTM D-97-17b', '°C', '-', '18', 'abrar@pertamina.com', '2019-10-26 18:35:45', '2019-10-26 18:35:45'),
(113, 10, 10, 'Appearance', 'Visual', '-', 'Clear', 'Clear', 'abrar@pertamina.com', '2019-10-26 18:54:51', '2019-10-26 18:54:51'),
(114, 10, 11, 'Color', 'Visual', '-', 'Red', 'Red', 'abrar@pertamina.com', '2019-10-26 18:57:22', '2019-10-26 18:57:22'),
(115, 10, 8, 'Density at 15°C', 'ASTM D-1298-12b(2017)', 'Kg/m3', '715', '770', 'abrar@pertamina.com', '2019-10-26 18:58:02', '2019-10-26 18:58:02'),
(116, 10, 16, 'Destilation: IBP', 'ASTM D-7345-17', '°C', '-', '-', 'abrar@pertamina.com', '2019-10-26 18:58:37', '2019-10-26 18:58:37'),
(117, 10, 2, 'Destilation : 10% vol Evaporated', 'ASTM D-7345-17', '°C', '-', '70', 'abrar@pertamina.com', '2019-10-26 18:59:41', '2019-10-26 18:59:41'),
(118, 10, 3, 'Destilation : 50% vol Evaporated', 'ASTM D-7345-17', '°C', '75', '125', 'abrar@pertamina.com', '2019-10-26 18:59:52', '2019-10-26 18:59:52'),
(119, 10, 4, 'Destilation : 90% vol Evaporated', 'ASTM D-7345-17', '°C', '130', '180', 'abrar@pertamina.com', '2019-10-26 19:00:06', '2019-10-26 19:00:06'),
(120, 10, 17, 'Destilation: FBP', 'ASTM D-7345-17', '°C', '-', '205', 'abrar@pertamina.com', '2019-10-26 19:00:30', '2019-10-26 19:00:30'),
(121, 10, 6, 'Destilation : Residu', 'ASTM D-7345-17', '%vol', '-', '2.0', 'abrar@pertamina.com', '2019-10-26 19:00:57', '2019-10-26 19:00:57'),
(122, 10, 19, 'RVP', 'ASTM D-5191-12', 'kPa', '45', '69', 'abrar@pertamina.com', '2019-10-26 19:01:19', '2019-10-26 19:53:55'),
(123, 10, 1, 'RON', 'ASTM D-2699-18', 'ON', '98', '-', 'abrar@pertamina.com', '2019-10-26 19:01:44', '2019-10-26 19:01:44'),
(124, 10, 12, 'Sulfur Content', 'ASTM D-4294-16e1', 'ppm', '-', '50', 'abrar@pertamina.com', '2019-10-26 19:02:11', '2019-10-26 19:02:11'),
(125, 10, 9, 'Copper Strip Corrosion 3 Hrs at 50°C', 'ASTM D-130-19', 'Merit', 'Kelas 1', 'Kelas 1', 'abrar@pertamina.com', '2019-10-26 19:02:35', '2019-10-26 19:02:35'),
(126, 11, 10, 'Appearance', 'Visual', '-', 'Clear', 'Clear', 'suyudi@pertamina.com', '2019-10-26 19:03:14', '2019-10-26 19:03:14'),
(127, 11, 18, 'Color ASTM', 'ASTM D-1500-12(2017)', '-', '-', '3', 'suyudi@pertamina.com', '2019-10-26 19:03:58', '2019-10-26 19:03:58'),
(128, 11, 8, 'Density at 15°C', 'ASTM D-1298-12b(2017)', 'Kg/m3', '815', '870', 'suyudi@pertamina.com', '2019-10-26 19:04:39', '2019-10-26 19:04:39'),
(129, 7, 9, 'Copper Strip Corrosion 3 Hrs at 50°C', 'ASTM D-130-19', 'Merit', '-', 'Kelas 1b', 'abrar@pertamina.com', '2019-10-26 19:06:42', '2019-10-26 19:06:42'),
(130, 11, 14, 'Flash Point', 'ASTM D-93-18', '⁰C', '52', '-', 'suyudi@pertamina.com', '2019-10-26 19:06:49', '2019-10-26 19:06:49'),
(131, 11, 20, 'Destilation: Recovery at 300°C', 'ASTM D-7345-17', '%vol', '40', '-', 'suyudi@pertamina.com', '2019-10-26 19:08:15', '2019-10-26 19:09:47'),
(132, 11, 21, 'Destilation: Recovery at 90% Vol', 'ASTM D-7345-17', '⁰C', '-', '370', 'suyudi@pertamina.com', '2019-10-26 19:08:29', '2019-10-26 19:09:56'),
(133, 11, 22, 'Destilation: Calculatet Cetane Index', 'ASTM 4737-10(2016)', '⁰C', '48', '-', 'suyudi@pertamina.com', '2019-10-26 19:10:34', '2019-10-26 19:10:34'),
(134, 11, 24, 'Viscosity Kinematic at 40°C', 'ASTM D-445-11a', 'cst', '2000', '4500', 'suyudi@pertamina.com', '2019-10-26 19:11:22', '2019-10-26 19:11:22'),
(135, 11, 15, 'Water Content', 'ASTM D-6304-16e1', 'ppm', '-', '500', 'suyudi@pertamina.com', '2019-10-26 19:11:56', '2019-10-26 19:11:56'),
(136, 11, 23, 'TAN', 'ASTM D 664-17a', 'mg.KOH/g', '-', '-', 'suyudi@pertamina.com', '2019-10-26 19:14:05', '2019-10-26 19:14:05'),
(137, 11, 12, 'Sulfur Content', 'ASTM D-4294-16e1', 'ppm', '-', '1200', 'suyudi@pertamina.com', '2019-10-26 19:14:39', '2019-10-26 19:15:29'),
(138, 11, 25, 'Fame Content', 'ASTM D-7806-12', '%vol', '-', '-', 'suyudi@pertamina.com', '2019-10-26 19:15:40', '2019-10-26 19:15:40'),
(139, 11, 26, 'Pour Point', 'ASTM D-97-17b', '⁰C', '-', '18', 'suyudi@pertamina.com', '2019-10-26 19:16:06', '2019-10-26 19:16:06'),
(140, 1, 10, 'Appearance', 'Visual', '-', 'Clear', 'Clear', 'suyudi@pertamina.com', '2019-10-27 02:58:08', '2019-10-27 02:58:08'),
(141, 1, 18, 'Color ASTM', 'ASTM D-1500-12(2017)', '-', '-', '3', 'suyudi@pertamina.com', '2019-10-27 02:58:40', '2019-10-27 02:58:40'),
(144, 12, 10, 'Appearance', 'Visual', '-', 'Clear', 'Clear', 'abrar@pertamina.com', '2019-10-27 16:03:15', '2019-10-27 16:03:15'),
(145, 12, 18, 'Color ASTM', 'ASTM D-1500-12(2017)', '-', '-', '3', 'abrar@pertamina.com', '2019-10-27 16:03:52', '2019-10-27 16:03:52'),
(146, 12, 28, 'Density at 40°C', 'ASTM D-1298-12b(2017)', 'Kg/m3', '850', '890', 'abrar@pertamina.com', '2019-10-27 16:04:34', '2019-10-27 16:04:34'),
(147, 12, 24, 'Viscosity Kinematic at 40°C', 'ASTM D-445-11a', 'cst', '2300', '6000', 'abrar@pertamina.com', '2019-10-27 16:05:08', '2019-10-27 16:05:08'),
(148, 12, 29, 'Water Content & Sedimen', 'ASTM D-2709-16', '%v/v', '-', '0.05', 'abrar@pertamina.com', '2019-10-27 16:20:57', '2019-10-27 16:20:57'),
(149, 12, 15, 'Water Content', 'ASTM D-6304-16e1', 'ppm', '-', '500', 'abrar@pertamina.com', '2019-10-27 16:22:25', '2019-10-27 16:22:25'),
(150, 12, 23, 'TAN', 'ASTM D-664-17a', 'mg.KOH/g', '-', '0.6', 'abrar@pertamina.com', '2019-10-27 16:23:00', '2019-10-27 16:23:00'),
(151, 12, 12, 'Sulfur Content', 'ASTM D-4294-16e1', '%m/m', '-', '500', 'abrar@pertamina.com', '2019-10-27 16:24:31', '2019-10-27 16:24:31'),
(152, 12, 26, 'Pour Point', 'ASTM D-97-17b', '°C', '-', '18', 'abrar@pertamina.com', '2019-10-27 16:26:13', '2019-10-27 16:26:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_30_144800_create_test_requests_table', 1),
(5, '2019_09_30_144907_create_test_reports_table', 1),
(6, '2019_10_06_154820_create_spesific_reports_table', 1),
(7, '2019_10_10_045048_create_release_reports_table', 1),
(8, '2019_10_17_152554_create_products_table', 1),
(9, '2019_10_17_171302_test_prices', 1),
(10, '2019_10_17_171303_create_master_data_table', 1),
(11, '2019_10_22_155055_create_make_test_reports_table', 1),
(12, '2019_10_23_051643_create_coq_reports_table', 1),
(13, '2019_10_23_053414_create_before_reports_table', 1),
(14, '2019_10_23_053424_create_after_reports_table', 1),
(15, '2019_10_23_053436_create_distribution_reports_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `created_at`, `updated_at`) VALUES
(1, 'PERTAMAX', '2019-10-26 16:25:51', '2019-10-26 16:25:51'),
(4, 'BIOSOLAR B20', '2019-10-26 16:35:05', '2019-10-26 16:35:05'),
(6, 'PREMIUM', '2019-10-26 16:46:30', '2019-10-26 16:46:30'),
(7, 'PERTALITE', '2019-10-26 16:54:18', '2019-10-26 16:54:18'),
(9, 'PERTADEX', '2019-10-26 18:25:17', '2019-10-26 18:25:17'),
(10, 'PERTAMAX TURBO', '2019-10-26 18:54:11', '2019-10-26 18:54:11'),
(11, 'BIODEXLITE', '2019-10-26 19:01:57', '2019-10-26 19:01:57'),
(12, 'FAME', '2019-10-27 02:56:39', '2019-10-27 02:56:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `release_reports`
--

CREATE TABLE `release_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_ambil` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_terima` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pemeriksaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `spesific_reports`
--

CREATE TABLE `spesific_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issuer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_coq` tinyint(4) NOT NULL DEFAULT 0,
  `print_before` tinyint(4) NOT NULL DEFAULT 0,
  `print_after` tinyint(4) NOT NULL DEFAULT 0,
  `print_distribution` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `test_prices`
--

CREATE TABLE `test_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `test_prices`
--

INSERT INTO `test_prices` (`id`, `parameter`, `metode`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'RON', 'ASTM D2699', 1066000, '2019-10-26 16:11:25', '2019-10-26 16:59:49'),
(2, 'Destilation : 10% vol Evaporated', 'ASTM D7345', 422500, '2019-10-26 16:12:31', '2019-10-26 17:00:49'),
(3, 'Destilation : 50% vol Evaporated', 'ASTM D7345', 422500, '2019-10-26 16:12:51', '2019-10-26 17:00:44'),
(4, 'Destilation : 90% vol Evaporated', 'ASTM D7345', 422500, '2019-10-26 16:13:00', '2019-10-26 17:01:13'),
(5, 'Destilation : FBP', 'ASTM D7345', 422500, '2019-10-26 16:13:09', '2019-10-26 17:11:50'),
(6, 'Destilation : Residu', NULL, 422500, '2019-10-26 16:13:22', '2019-10-26 17:01:58'),
(7, 'Tekanan Uap', 'ASTM D 323', 403000, '2019-10-26 16:13:40', '2019-10-26 16:13:40'),
(8, 'Density at 15°C', 'ASTM D1298', 169000, '2019-10-26 16:14:02', '2019-10-26 17:11:10'),
(9, 'Copper Strip Corrosion 3 Hrs at 50°C', 'ASTM D130', 357500, '2019-10-26 16:14:25', '2019-10-26 17:10:25'),
(10, 'Appearance', NULL, 0, '2019-10-26 16:14:47', '2019-10-26 16:36:33'),
(11, 'Color', 'ASTM D1500', 169000, '2019-10-26 16:15:11', '2019-10-26 16:52:09'),
(12, 'Sulfur Content', 'ASTM D 4294-10', 715000, '2019-10-26 16:15:36', '2019-10-26 17:08:45'),
(13, 'Indeks Setane', 'ASTM D 4737', 377000, '2019-10-26 16:16:05', '2019-10-26 16:16:05'),
(14, 'Flash Point', 'ASTM  D 93', 273000, '2019-10-26 16:16:44', '2019-10-26 16:16:44'),
(15, 'Water Content', 'ASTM D 6304', 325000, '2019-10-26 16:17:06', '2019-10-26 17:08:16'),
(16, 'Destilation: IBP', NULL, 0, '2019-10-26 16:30:40', '2019-10-26 17:12:22'),
(17, 'Destilation: FBP', NULL, 0, '2019-10-26 16:42:05', '2019-10-26 18:31:26'),
(18, 'Color ASTM', NULL, 0, '2019-10-26 16:42:17', '2019-10-26 16:42:17'),
(19, 'RVP', NULL, 0, '2019-10-26 16:45:16', '2019-10-26 16:45:16'),
(20, 'Destilation: Recovery at 300°C', NULL, 0, '2019-10-26 16:49:07', '2019-10-26 17:03:40'),
(21, 'Destilation: Recovery at 90% Vol', NULL, 0, '2019-10-26 16:49:39', '2019-10-26 17:03:49'),
(22, 'Destilation: Calculatet Cetane Index', NULL, 0, '2019-10-26 16:51:03', '2019-10-26 17:03:59'),
(23, 'TAN', NULL, 0, '2019-10-26 17:37:23', '2019-10-26 17:37:23'),
(24, 'Viscosity Kinematic at 40°C', NULL, 0, '2019-10-26 17:38:17', '2019-10-26 17:38:50'),
(25, 'Fame Content', NULL, 0, '2019-10-26 17:39:09', '2019-10-26 17:39:09'),
(26, 'Pour Point', NULL, 0, '2019-10-26 17:39:37', '2019-10-26 17:44:49'),
(27, 'Destilation: Recovery at 95% Vol', NULL, 0, '2019-10-26 18:29:28', '2019-10-26 18:29:28'),
(28, 'Density at 40°C', NULL, 0, '2019-10-27 02:59:45', '2019-10-27 02:59:56'),
(29, 'Water Content & Sedimen', NULL, 0, '2019-10-27 16:19:19', '2019-10-27 16:19:19'),
(30, 'Ron', 'ASTM D2699', 1066000, '2019-10-28 13:18:13', '2019-10-28 13:18:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `test_reports`
--

CREATE TABLE `test_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_min` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_max` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `before_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distribution_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coq_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `test_requests`
--

CREATE TABLE `test_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `urutan_surat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_surat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sample` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_sample` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengambil_sample` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl` date NOT NULL,
  `waktu` time NOT NULL,
  `approved` datetime DEFAULT NULL,
  `approved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted` datetime DEFAULT NULL,
  `accepted_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sampling` datetime DEFAULT NULL,
  `sampled_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrived` datetime DEFAULT NULL,
  `arrived_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testing` datetime DEFAULT NULL,
  `tested_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `released` datetime DEFAULT NULL,
  `released_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progress` enum('waiting','accepted','sampling','arrived','testing','released') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','refused') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `test_requests`
--

INSERT INTO `test_requests` (`id`, `urutan_surat`, `no_surat`, `produk`, `asal_sample`, `jenis_sample`, `pengambil_sample`, `tgl`, `waktu`, `approved`, `approved_by`, `accepted`, `accepted_by`, `sampling`, `sampled_by`, `arrived`, `arrived_by`, `testing`, `tested_by`, `released`, `released_by`, `progress`, `jenis_test`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', '0001/IX/2019', 'fame', 'MT ROYALTY', '-', '-', '2019-09-06', '11:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'waiting', 'short test', 'reservasi', 'approved', '2019-10-27 16:38:14', '2019-10-28 15:29:53'),
(2, '3', '0002/IX/2019', 'premium', 'MT. OCEAN PREMIER', '-', '-', '2019-09-17', '21:00:00', NULL, NULL, '2019-09-17 18:12:00', 'oeoes@pertamina.com', '2019-09-17 20:39:00', 'oeoes@pertamina.com', '2019-09-17 22:12:00', 'oeoes@pertamina.com', '2019-09-17 22:19:00', 'oeoes@pertamina.com', '2019-09-17 22:57:00', 'oeoes@pertamina.com', 'released', 'short test', 'reservasi', 'approved', '2019-10-27 16:40:28', '2019-10-28 16:39:04'),
(3, '4', '0003/IX/2019', 'pertadex', 'JAVA PALM', '-', '-', '2019-09-19', '22:30:00', NULL, NULL, '2019-09-19 21:00:00', 'oeoes@pertamina.com', '2019-09-19 22:00:43', 'oeoes@pertamina.com', '2019-09-19 23:21:00', 'oeoes@pertamina.com', '2019-09-19 23:28:00', 'oeoes@pertamina.com', '2019-09-20 00:16:00', 'oeoes@pertamina.com', 'released', 'short test', 'reservasi', 'approved', '2019-10-27 16:34:50', '2019-10-28 01:42:56'),
(4, '5', '0004/IX/2019', 'premium', 'MT Great Princess', '-', '-', '2019-10-03', '11:00:00', NULL, NULL, '2019-10-03 10:40:08', 'oeoes@pertamina.com', '2019-10-03 10:40:14', 'oeoes@pertamina.com', '2019-10-03 12:00:21', 'oeoes@pertamina.com', '2019-10-03 12:05:24', 'oeoes@pertamina.com', '2019-10-03 13:00:27', 'oeoes@pertamina.com', 'released', 'short test', 'reservasi', 'approved', '2019-10-27 16:36:56', '2019-10-28 01:49:27'),
(5, '6', '0005/IX/2019', 'pertadex', 'MT. PEARL ORCHID', '-', '-', '2019-10-09', '11:00:00', NULL, NULL, '2019-10-28 18:32:00', 'oeoes@pertamina.com', '2019-10-28 21:40:00', 'oeoes@pertamina.com', '2019-10-28 23:16:00', 'oeoes@pertamina.com', '2019-10-28 23:21:00', 'oeoes@pertamina.com', '2019-10-29 00:17:00', 'oeoes@pertamina.com', 'released', 'short test', 'reservasi', 'approved', '2019-10-27 16:39:23', '2019-10-28 15:38:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('lv1','lv2','maintainer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('waiting','verified') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Maintainer', 'maintainer@pertamina.com', '2019-10-26 15:44:17', '$2y$10$B/ATAsROEZAfuFLyff/ZHOVDcmGcgGKF83g.9C8uTs5AHrQaIOzsy', 'maintainer', 'verified', '1ic1joEhOEIGMd9gvwBfszKSWtf91DpO0YKRpzNHI5ucobyVhd4E8x3UOvHo', '2019-10-26 15:44:18', '2019-10-26 15:44:18'),
(2, 'Abrar Hidayat', 'abrar@pertamina.com', '2019-10-26 16:33:37', '$2y$10$PcV.d4rOOnkjEtRU9puoHuSNe5BBRV/YYb0wmc0.GpQ7Dl.OOn6DW', 'lv2', 'verified', NULL, '2019-10-26 16:04:41', '2019-10-26 16:33:37'),
(3, 'Celvin habib', 'habib@pertamina.com', '2019-10-26 16:20:54', '$2y$10$KBw889WtdTbGuFrG5WtkZOZtBZpGidoSuFB6Aprz1PQY1.mEuKbSW', 'lv2', 'verified', NULL, '2019-10-26 16:04:49', '2019-10-26 16:20:54'),
(4, 'Suyudi Alrajak', 'suyudi@pertamina.com', '2019-10-26 16:28:25', '$2y$10$dOuHOGCoSyYZYSoqjhV18etedCAfbAkPHuhyt3RqHU.ejIj2f/Bx2', 'lv2', 'verified', NULL, '2019-10-26 16:05:03', '2019-10-26 16:28:26'),
(5, 'Oeoes Roy', 'oeoes@pertamina.com', '2019-10-26 16:28:07', '$2y$10$u8DMrpVOdE6n3WTjW9FL6u36ZLmqF5pfIVbTC6pgKBI1xcW7GTLRa', 'lv2', 'verified', NULL, '2019-10-26 16:05:21', '2019-10-26 16:28:07'),
(6, 'maulana', 'celvin@pertamina.com', '2019-10-26 19:08:47', '$2y$10$KhHEuZS.YDEdMixGDRq3cOT.szhGUZCcdL/n6wUuXSGCukUBhprKa', 'lv2', 'verified', NULL, '2019-10-26 19:06:08', '2019-10-26 19:08:47'),
(7, 'Zalva', 'zalva@pertamina.com', '2019-10-27 16:32:30', '$2y$10$V10JymxzsT01KLWi9KM0UuGYyCipUhwUNcp5RGHcdA4kJQwTW8kw2', 'lv1', 'verified', NULL, '2019-10-27 16:31:27', '2019-10-27 16:32:30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `after_reports`
--
ALTER TABLE `after_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `after_reports_product_id_foreign` (`product_id`),
  ADD KEY `after_reports_master_data_id_foreign` (`master_data_id`);

--
-- Indeks untuk tabel `before_reports`
--
ALTER TABLE `before_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `before_reports_product_id_foreign` (`product_id`),
  ADD KEY `before_reports_master_data_id_foreign` (`master_data_id`);

--
-- Indeks untuk tabel `coq_reports`
--
ALTER TABLE `coq_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coq_reports_product_id_foreign` (`product_id`),
  ADD KEY `coq_reports_master_data_id_foreign` (`master_data_id`);

--
-- Indeks untuk tabel `distribution_reports`
--
ALTER TABLE `distribution_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `distribution_reports_product_id_foreign` (`product_id`),
  ADD KEY `distribution_reports_master_data_id_foreign` (`master_data_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `make_test_reports`
--
ALTER TABLE `make_test_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `make_test_reports_product_id_foreign` (`product_id`),
  ADD KEY `make_test_reports_master_data_id_foreign` (`master_data_id`);

--
-- Indeks untuk tabel `master_data`
--
ALTER TABLE `master_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_data_product_id_foreign` (`product_id`),
  ADD KEY `master_data_test_price_id_foreign` (`test_price_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `release_reports`
--
ALTER TABLE `release_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `spesific_reports`
--
ALTER TABLE `spesific_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `test_prices`
--
ALTER TABLE `test_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `test_reports`
--
ALTER TABLE `test_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_reports_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `test_requests`
--
ALTER TABLE `test_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `after_reports`
--
ALTER TABLE `after_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `before_reports`
--
ALTER TABLE `before_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `coq_reports`
--
ALTER TABLE `coq_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `distribution_reports`
--
ALTER TABLE `distribution_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=949;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `make_test_reports`
--
ALTER TABLE `make_test_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `master_data`
--
ALTER TABLE `master_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `release_reports`
--
ALTER TABLE `release_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `spesific_reports`
--
ALTER TABLE `spesific_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `test_prices`
--
ALTER TABLE `test_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `test_reports`
--
ALTER TABLE `test_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `test_requests`
--
ALTER TABLE `test_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `after_reports`
--
ALTER TABLE `after_reports`
  ADD CONSTRAINT `after_reports_master_data_id_foreign` FOREIGN KEY (`master_data_id`) REFERENCES `master_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `after_reports_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `before_reports`
--
ALTER TABLE `before_reports`
  ADD CONSTRAINT `before_reports_master_data_id_foreign` FOREIGN KEY (`master_data_id`) REFERENCES `master_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `before_reports_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `coq_reports`
--
ALTER TABLE `coq_reports`
  ADD CONSTRAINT `coq_reports_master_data_id_foreign` FOREIGN KEY (`master_data_id`) REFERENCES `master_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coq_reports_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `distribution_reports`
--
ALTER TABLE `distribution_reports`
  ADD CONSTRAINT `distribution_reports_master_data_id_foreign` FOREIGN KEY (`master_data_id`) REFERENCES `master_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `distribution_reports_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `make_test_reports`
--
ALTER TABLE `make_test_reports`
  ADD CONSTRAINT `make_test_reports_master_data_id_foreign` FOREIGN KEY (`master_data_id`) REFERENCES `master_data` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `make_test_reports_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `master_data`
--
ALTER TABLE `master_data`
  ADD CONSTRAINT `master_data_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `master_data_test_price_id_foreign` FOREIGN KEY (`test_price_id`) REFERENCES `test_prices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `test_reports`
--
ALTER TABLE `test_reports`
  ADD CONSTRAINT `test_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
