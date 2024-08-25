-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2024 at 02:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_24_052852_create_tbl_kabupaten', 1),
(6, '2024_08_24_052858_create_tbl_provinsi', 1),
(7, '2024_08_24_053757_create_tbl_pendaftaran', 1),
(8, '2024_08_24_081851_create_tbl_user', 2),
(9, '2024_08_24_095107_add_column_status_daftar_on_tbl_pendaftaran', 3),
(10, '2024_08_24_101509_edit_column_nama_lengkap_on_tbl_pendaftaran', 4),
(11, '2024_08_24_104320_create_tbl_agama', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agama`
--

CREATE TABLE `tbl_agama` (
  `id_agama` bigint(20) UNSIGNED NOT NULL,
  `nama_agama` varchar(255) DEFAULT NULL,
  `uid` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_agama`
--

INSERT INTO `tbl_agama` (`id_agama`, `nama_agama`, `uid`, `created_at`, `updated_at`) VALUES
(1, 'Islam', 'c1602fa9-2980-4851-80e6-351721e1ccb2', '2024-08-24 03:53:00', '2024-08-24 03:53:00'),
(2, 'Katolik', '1ea8029c-f559-4da3-ab26-c57bd3426ecf', '2024-08-24 03:53:00', '2024-08-24 03:53:00'),
(3, 'Kristen', '4f0c5086-b677-44cc-aa9c-756325cbb3fd', '2024-08-24 03:53:00', '2024-08-24 03:53:00'),
(4, 'Hindu', '56c83ea9-bb85-49da-8834-034506a1a730', '2024-08-24 03:53:00', '2024-08-24 03:53:00'),
(5, 'Budha', 'ef335df3-ce31-4dbe-99f3-f4e09b5a8740', '2024-08-24 03:53:00', '2024-08-24 03:53:00'),
(6, 'Lain-lain', 'c8733b94-4984-486d-b087-54e6ba6ec1f4', '2024-08-24 03:53:00', '2024-08-24 03:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kabupaten`
--

CREATE TABLE `tbl_kabupaten` (
  `id_kabupaten` bigint(20) UNSIGNED NOT NULL,
  `id_provinsi` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_kabupaten` varchar(255) DEFAULT NULL,
  `uid` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_kabupaten`
--

INSERT INTO `tbl_kabupaten` (`id_kabupaten`, `id_provinsi`, `nama_kabupaten`, `uid`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kabupaten Aceh Barat', '0e005204-0441-494a-b9d4-edb94bca3a13', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(2, 1, 'Kabupaten Aceh Besar', '7fb240b8-08d7-452b-b98f-fb5357c84ab7', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(3, 1, 'Kabupaten Aceh Jaya', 'def8a360-df49-4efc-b33e-14c6f69a2d0a', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(4, 1, 'Kabupaten Aceh Selatan', '07cd1944-4352-44b0-a67e-79c8686af35e', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(5, 1, 'Kabupaten Aceh Singkil', '3aba2179-df43-4363-aee3-3ef7df6b8ebd', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(6, 1, 'Kabupaten Aceh Tamiang', 'd5f17b41-6cf6-4283-b6b9-e38808c4720b', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(7, 1, 'Kabupaten Aceh Tengah', '3fa1e776-141e-4eb7-ae0a-84f44a4c3a0a', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(8, 1, 'Kabupaten Aceh Tenggara', '8bc9c2e6-d055-4280-94ff-038e3fc02dc2', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(9, 1, 'Kabupaten Aceh Timur', '13ebf543-f54d-4b06-80bd-3b6e6429217d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(10, 1, 'Kabupaten Aceh Utara', 'e7c48d5b-c26d-49ec-8c6a-51d44e9899bf', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(11, 1, 'Kota Banda Aceh', '0ecb49ee-f42d-43ac-9970-490dca8872c0', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(12, 1, 'Kota Langsa', 'f63e57ff-599b-4b2c-8afb-6a88a6286275', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(13, 1, 'Kota Lhokseumawe', '29b8e143-513a-4166-b7ff-ac258d7e8b27', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(14, 1, 'Kota Sabang', '7d3eb0ce-089b-45d7-b879-7e5c88a50e62', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(15, 1, 'Kota Subulussalam', '3291ddd8-cde0-4fa0-9db9-19d1d55fe5af', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(16, 2, 'Kabupaten Asahan', 'c9d6540f-eb2d-496d-b65c-b7c4ae4602b4', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(17, 2, 'Kabupaten Batubara', '7769a7f1-693e-4056-9898-cf262b4ddc21', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(18, 2, 'Kabupaten Dairi', 'c75b39ae-4670-4a9d-8181-6ae51870451c', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(19, 2, 'Kabupaten Deli Serdang', '4ffd26c2-85e3-4955-9046-b01d6506718b', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(20, 2, 'Kabupaten Humbang Hasundutan', '16071004-8be4-412b-8b77-ec121ac1511b', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(21, 2, 'Kabupaten Karo', '73b914f5-cfd0-4084-8387-095224c4ee62', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(22, 2, 'Kabupaten Labuhanbatu', 'c7cdf4d2-d965-4cae-b5fa-f2b24928b720', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(23, 2, 'Kabupaten Labuhanbatu Selatan', 'b61116b3-9989-4e61-88df-188d1edb1afa', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(24, 2, 'Kabupaten Labuhanbatu Utara', '4553b045-909e-41c9-bca3-0a6c5c46cb9d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(25, 2, 'Kabupaten Langkat', '8ed4d9aa-3792-4833-8ded-e78a6d65925f', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(26, 2, 'Kabupaten Mandailing Natal', '111df8a9-3142-4cf4-80a3-1a235a3c20a4', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(27, 2, 'Kabupaten Nias', 'a7824730-7cde-4b8b-9065-9bc907881473', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(28, 2, 'Kabupaten Nias Barat', '5d16d1c2-766b-4c34-a1aa-0184ebd11e5b', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(29, 2, 'Kabupaten Nias Selatan', 'e90d0527-56ae-47eb-8534-33a0dd41400e', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(30, 2, 'Kabupaten Nias Utara', 'a4d2952c-c0e5-4db9-800f-ce40cc68b176', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(31, 2, 'Kabupaten Padang Lawas', '5d66e71e-8d3f-4b35-ab91-772c56adb1f9', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(32, 2, 'Kabupaten Padang Lawas Utara', 'bdbc7a86-b1c2-49cd-81d3-aa135405e0d3', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(33, 2, 'Kabupaten Pakpak Bharat', '97ba3c8e-0864-4e8d-b87e-951b17c79e49', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(34, 2, 'Kabupaten Samosir', 'fd48f241-0850-4741-9abc-c60dac79d6a7', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(35, 2, 'Kabupaten Serdang Bedagai', '08fbd390-6736-496c-8ed2-f583a00374c6', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(36, 2, 'Kabupaten Simalungun', 'ffdd6f50-0781-4c75-a64b-d30efc19e3dc', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(37, 2, 'Kabupaten Tapanuli Selatan', '6eaaeeb4-43ae-499e-8113-a63e00fd9fa6', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(38, 2, 'Kabupaten Tapanuli Tengah', 'a9acb52c-7d21-400b-b62f-b6a32e2ff210', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(39, 2, 'Kabupaten Tapanuli Utara', '50eca126-b82b-47f8-9164-8bf20d62b6c2', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(40, 2, 'Kabupaten Toba', '7c264635-af44-4252-885e-1fcc9a170b37', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(41, 2, 'Kota Binjai', 'ac376c3e-37f8-4b65-9f47-e947a1d31cb2', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(42, 2, 'Kota Gunungsitoli', 'c57b9c17-6c61-4ae3-9744-77d347b7d68d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(43, 2, 'Kota Medan', 'a0e52ef5-7019-4592-8e35-28014d3b76ce', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(44, 2, 'Kota Padangsidempuan', '75ae6456-fc2a-40c8-ba00-813b708f50b9', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(45, 2, 'Kota Pematangsiantar', '1318a42a-fb4c-460e-89cb-b7113316cb16', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(46, 2, 'Kota Sibolga', 'd94c0bae-fa0d-445c-8bcc-4b7de701e7c6', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(47, 2, 'Kota Tanjungbalai', '4a62ab43-f28f-40b4-ba46-72ec5476ba7e', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(48, 2, 'Kota Tebing Tinggi', 'f6c05d48-0fc8-4e4f-892d-dfcb9a4dc703', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(49, 3, 'Kabupaten Agam', 'f51b9beb-f3eb-4bc8-bd47-c17fa19477ea', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(50, 3, 'Kabupaten Dharmasraya', '199f4029-19ed-4669-b40f-42ec98ed9fe4', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(51, 3, 'Kabupaten Kepulauan Mentawai', '36dd21a3-21f8-4da2-a9d8-d7dcb665d107', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(52, 3, 'Kabupaten Lima Puluh Kota', 'a06691e3-2d5d-4b41-af5a-2fdb1b72075e', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(53, 3, 'Kabupaten Padang Pariaman', 'f4e31201-35bb-452d-802c-bdf65da5e0f5', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(54, 3, 'Kabupaten Pasaman', '81888370-7903-4752-9a4a-a5fdd39c0d3e', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(55, 3, 'Kabupaten Pasaman Barat', 'ecccbf26-09ff-48a6-8d18-c0488271a436', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(56, 3, 'Kabupaten Pesisir Selatan', '084bc34e-1156-4a3d-ada4-8ec43494d240', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(57, 3, 'Kabupaten Sijunjung', 'c6d62429-dea3-42b0-9f65-aa295a616960', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(58, 3, 'Kabupaten Solok', '8a202e2e-c8ea-4245-ab1c-fddd66f04359', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(59, 3, 'Kabupaten Solok Selatan', 'cabfacac-6447-4ba0-9137-92c22da1ece6', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(60, 3, 'Kabupaten Tanah Datar', '94ab8797-94b4-467b-8c91-935eb3bf40c2', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(61, 3, 'Kota Bukittinggi', '784d9c21-4ed4-4e12-9d04-840bab1fdfcb', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(62, 3, 'Kota Padang', '772a4ef9-688f-41af-ae02-419fef33b417', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(63, 3, 'Kota Padangpanjang', 'bc4d9f02-b9fa-486f-8e19-94d68fb317cd', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(64, 3, 'Kota Pariaman', '992693bd-e81a-4ad4-b73f-43ead20bdf49', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(65, 3, 'Kota Payakumbuh', 'e713440f-3d8f-4167-8b46-9d306c1b750d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(66, 3, 'Kota Sawahlunto', '709bf68e-5620-448b-8fdf-86fd0f591397', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(67, 3, 'Kota Solok', 'be1fdfd3-a7ac-40e8-aae9-81ff79b5c5fb', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(68, 4, 'Kabupaten Bengkalis', '6c5b5f30-3e81-431b-a914-bd53fa58091d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(69, 4, 'Kabupaten Indragiri Hilir', 'a5e6e02b-7ed3-4f5b-aaea-7a3ade47e365', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(70, 4, 'Kabupaten Indragiri Hulu', '525cdd08-3d18-457c-b5e1-63184bf68782', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(71, 4, 'Kabupaten Kampar', '76d2a32d-46ed-4dfe-a9df-257b447c5e8e', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(72, 4, 'Kabupaten Kepulauan Meranti', '9bc78f51-3e72-468a-b7f3-6ede318cb5e2', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(73, 4, 'Kabupaten Kuantan Singingi', '0c6698c0-0105-4788-8d03-7b012adc6ee3', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(74, 4, 'Kabupaten Pelalawan', '0ffa8319-d87e-4eec-9b42-67f38ead58ac', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(75, 4, 'Kabupaten Rokan Hilir', '366608d4-f87c-46e4-934e-c8e8ff9bee08', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(76, 4, 'Kabupaten Rokan Hulu', '26f2b7ec-7c72-4e11-bc57-f88a33b7285d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(77, 4, 'Kabupaten Siak', 'c19ab98c-4593-41e3-8436-6d89b72efa50', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(78, 4, 'Kota Dumai', '1cb16edb-fec9-4f84-88a2-994feaad8c8a', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(79, 4, 'Kota Pekanbaru', '6aa1b159-f435-4904-9547-c2c1d1b82a3e', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(80, 5, 'Kabupaten Bintan', 'f9911890-146e-489f-a820-a058c1214efa', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(81, 5, 'Kabupaten Karimun', 'd1fcc8f7-93a8-4198-978c-3d577aa28763', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(82, 5, 'Kabupaten Kepulauan Anambas', '349069e8-0684-4247-a552-38d4894672eb', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(83, 5, 'Kabupaten Lingga', '738fc7fa-10ed-4d6e-b42f-7452a4449908', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(84, 5, 'Kabupaten Natuna', '5aca334a-4d8d-420f-9064-6bf3640af469', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(85, 5, 'Kota Batam', 'b74b6322-c580-46b5-a61d-32bc26fdb6d2', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(86, 5, 'Kota Tanjungpinang', '6a3a267c-2391-48b1-926e-d3f88a411ccb', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(87, 6, 'Kabupaten Batanghari', '6ad5b091-0fc3-4153-952c-a477d3b9d74f', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(88, 6, 'Kabupaten Bungo', '53672e5d-01b7-4fed-a3e1-3a76e540303b', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(89, 6, 'Kabupaten Kerinci', '3dd648ca-01bc-4ca2-be77-dcc3bd555183', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(90, 6, 'Kabupaten Merangin', '2a5d4310-9308-4665-bcec-e839de89834e', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(91, 6, 'Kabupaten Muaro Jambi', 'b649a2a7-5e0f-4bdb-b11f-fab6111352ec', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(92, 6, 'Kabupaten Sarolangun', 'f3ae9b48-032d-46af-ae01-e6b79d4dba8f', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(93, 6, 'Kabupaten Tanjung Jabung Barat', '5c2d806e-71c5-476d-a0ca-6f1cbfc160c4', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(94, 6, 'Kabupaten Tanjung Jabung Timur', 'e22bf886-4111-4258-b49c-61dc9388ef40', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(95, 6, 'Kabupaten Tebo', '4eafedfd-6889-4ceb-bad2-655d7998d22f', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(96, 6, 'Kota Jambi', '57746220-75f5-4d60-9893-646400cd4862', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(97, 6, 'Kota Sungai Penuh', '232e0549-5a6f-4a5f-901e-498319b1c91e', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(98, 7, 'Kabupaten Banyuasin', '5fb959a4-17a9-4a5a-8d1e-dc28f43d5f8b', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(99, 7, 'Kabupaten Empat Lawang', 'eea1b136-419c-4055-875d-d8780274b729', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(100, 7, 'Kabupaten Lahat', 'f23485c5-14b9-43cd-a588-3b4512dbd8ae', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(101, 7, 'Kabupaten Muara Enim', 'd3e1ddc0-3f57-4054-93be-e48d19cefec5', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(102, 7, 'Kabupaten Musi Banyuasin', '19487dbd-7bbc-4933-b038-08c7e0e938a1', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(103, 7, 'Kabupaten Musi Rawas', 'd5fabe39-3468-417b-bbd6-cf0878205bb0', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(104, 7, 'Kabupaten Musi Rawas Utara', '45d3795d-6bfa-4ca2-b6ac-721deda7c53f', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(105, 7, 'Kabupaten Ogan Ilir', 'df7ed6a6-7ff1-4542-b65f-ffa65347de45', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(106, 7, 'Kabupaten Ogan Komering Ilir', '89b1362a-e5bd-4733-bdf2-e401460edd11', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(107, 7, 'Kabupaten Ogan Komering Ulu', '7bd4d762-6856-43c8-a502-52f40a25c952', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(108, 7, 'Kabupaten Ogan Komering Ulu Selatan', '8e267299-3e18-4f61-b649-2b468dd737bf', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(109, 7, 'Kabupaten Ogan Komering Ulu Timur', '545548c9-dd0d-4075-bda7-489c5103dff6', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(110, 7, 'Kota Lubuklinggau', '53ede77a-e873-4777-b2ac-07bbac479b77', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(111, 7, 'Kota Pagar Alam', '3a9a9b42-84f2-4112-a450-f0090eb21c6d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(112, 7, 'Kota Palembang', 'c5f835ae-c233-4743-9112-7306b908545a', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(113, 7, 'Kota Prabumulih', 'bf47b2cc-b785-4161-9bea-cb579ce9bb84', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(114, 8, 'Kabupaten Bangka', '05b2e21b-f7f8-4d09-bc27-254328fbcf97', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(115, 8, 'Kabupaten Bangka Barat', '49402a77-6769-4f11-9736-aa58d2d80c76', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(116, 8, 'Kabupaten Bangka Selatan', 'd2239121-c29d-4395-b312-1f822c052524', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(117, 8, 'Kabupaten Bangka Tengah', '156375b1-9e40-48a4-a9a3-4d2f1267fa38', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(118, 8, 'Kabupaten Belitung', '0bb76bcd-47d5-40b3-b29f-9be443c4bd73', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(119, 8, 'Kabupaten Belitung Timur', 'ca3d2cdd-43fa-476e-8951-2ca052bb71a9', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(120, 8, 'Kota Pangkalpinang', '716f7edb-a609-4165-a137-857d955f6da2', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(121, 9, 'Kabupaten Bengkulu Selatan', 'f6393797-f059-4de3-8d3e-1c03b56da63a', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(122, 9, 'Kabupaten Bengkulu Tengah', '92edf1be-fe59-4a77-ba80-41ca8085d681', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(123, 9, 'Kabupaten Bengkulu Utara', '0d1989d5-976d-48f3-ad77-b52664eff385', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(124, 9, 'Kabupaten Kaur', 'f7e3d3e1-31d7-4a46-9db8-6ab26890bcaa', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(125, 9, 'Kabupaten Kepahiang', '39e7fe6d-e21a-442e-8afb-a65d8dcd1fce', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(126, 9, 'Kabupaten Lebong', '0a15e51f-30fb-4a5e-900a-e1632325ec8d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(127, 9, 'Kabupaten Mukomuko', '9dc0eb9b-15e8-45cf-97b0-34210bd9d487', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(128, 9, 'Kabupaten Rejang Lebong', 'cffbfbd4-d62f-4bf8-8843-58e67d2a52d6', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(129, 9, 'Kabupaten Seluma', '037215a6-94e0-4856-8945-985eaab57adf', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(130, 9, 'Kota Bengkulu', '604a650d-a3ca-42e4-9216-211ff1212d41', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(131, 10, 'Kabupaten Lampung Barat', '11648f2a-e0af-42c5-ba70-fac2eb025bac', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(132, 10, 'Kabupaten Lampung Selatan', 'a5547d5e-7d07-4afd-85d7-24c900707819', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(133, 10, 'Kabupaten Lampung Tengah', '1f9577b4-c9c2-49e6-99ee-30b50229a119', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(134, 10, 'Kabupaten Lampung Timur', '66a5c452-78dd-4661-b93b-b3141c4383d3', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(135, 10, 'Kabupaten Lampung Utara', 'e1aa62df-3dfc-419d-a7bd-e9490428b446', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(136, 10, 'Kabupaten Mesuji', 'f9702466-035c-4def-b2ee-ffe1f01f9fae', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(137, 10, 'Kabupaten Pesawaran', '2220f66a-3ab2-4d40-8b1d-8985bfb13e4d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(138, 10, 'Kabupaten Pesisir Barat', '40b83033-9c52-4313-90cd-f362edd04116', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(139, 10, 'Kabupaten Pringsewu', '20b18a44-b4fb-4017-9752-c8e78d99fc89', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(140, 10, 'Kabupaten Tanggamus', '61642ab7-44ca-4e07-9ee6-9381edc8d53d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(141, 10, 'Kabupaten Tulang Bawang', 'f955fc9f-3a6e-4c7a-82db-6e97c5bddfed', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(142, 10, 'Kabupaten Tulang Bawang Barat', 'f10c5b92-599a-4d9b-905c-5da05dc0596b', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(143, 10, 'Kabupaten Way Kanan', '978e7c49-71d2-4beb-9f3d-8064f7050a06', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(144, 10, 'Kota Bandar Lampung', '3e1175de-9b96-4a23-a88d-1eda71547438', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(145, 10, 'Kota Metro', '81228f2e-dcdc-4d42-b3fa-5346da12dc2f', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(146, 11, 'Kabupaten Kepulauan Seribu', 'b0062fd7-aff8-49ec-b5fd-c454d52ecca0', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(147, 11, 'Kota Administrasi Jakarta Barat', '3a36704d-323b-40e1-8516-13f8599e76cd', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(148, 11, 'Kota Administrasi Jakarta Pusat', 'aa1bb853-b88a-4f2b-8454-84a84fc56424', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(149, 11, 'Kota Administrasi Jakarta Selatan', '47692487-bea0-4312-b3d4-3885eb2b193d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(150, 11, 'Kota Administrasi Jakarta Timur', 'fdf1ec09-aed9-45fc-ae25-42271b3dbfc9', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(151, 11, 'Kota Administrasi Jakarta Utara', '4cb85853-1e69-4ca2-bf10-dc3b3d8d4d6d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(152, 12, 'Kabupaten Lebak', '529d1bb4-4e9d-4743-bde9-7fe057adb57b', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(153, 12, 'Kabupaten Pandeglang', '8b5e98e3-6d46-48d5-83cf-a83069cba65a', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(154, 12, 'Kabupaten Serang', 'ebdae94c-1133-42f5-9fe8-e4cead63cb47', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(155, 12, 'Kabupaten Tangerang', 'bc96bc93-9d37-4e5d-9bec-6afa787d39c0', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(156, 12, 'Kota Cilegon', '6c24975e-4c61-4f9b-98db-685bf3d6968c', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(157, 12, 'Kota Serang', 'cfa0b5a5-e4a1-40d8-8889-be5acee010e8', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(158, 12, 'Kota Tangerang', '15585d1e-97a9-4c14-91fc-8ade530c3e74', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(159, 12, 'Kota Tangerang Selatan', 'd9a33f0d-55ec-4ff1-aff0-ceb8fe7b6406', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(160, 13, 'Kabupaten Bandung', '86fa4b81-7e61-407e-8807-c1aa955290f8', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(161, 13, 'Kabupaten Bandung Barat', '4fecce53-0cf9-431a-929a-6c9388ace555', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(162, 13, 'Kabupaten Bekasi', '74d1c6f9-e24d-4806-bc93-9a3ffa68e5e9', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(163, 13, 'Kabupaten Bogor', 'bf735e5a-a41b-4419-b325-a416f5c044b2', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(164, 13, 'Kabupaten Ciamis', '4a7d1fb1-491f-46c9-89c3-89995286fd09', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(165, 13, 'Kabupaten Cianjur', '4c737541-a1e6-4bb1-820a-ebf35b515cba', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(166, 13, 'Kabupaten Cirebon', 'ef2bffdf-b65c-4363-9ab0-83f8d34e198f', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(167, 13, 'Kabupaten Garut', 'b628f2a2-6615-4743-87f7-c0cfba79ca05', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(168, 13, 'Kabupaten Indramayu', '62a65e4e-1c51-4f21-94a1-ba5d798974a4', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(169, 13, 'Kabupaten Karawang', '06d45020-cbdd-4f35-9f34-19fbf41e5b8d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(170, 13, 'Kabupaten Kuningan', '40f0f7e7-ee9b-4ec5-9545-df9ab64cc092', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(171, 13, 'Kabupaten Majalengka', '116493df-194d-4259-acbe-d4729aff52bd', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(172, 13, 'Kabupaten Pangandaran', '52a797c8-94e1-489c-b8d0-c76d9d2503b5', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(173, 13, 'Kabupaten Purwakarta', 'cb917038-6fdc-439f-9d2b-0ddfb0151f5e', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(174, 13, 'Kabupaten Subang', '26840618-1989-4c14-997c-39de2e1682d8', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(175, 13, 'Kabupaten Sukabumi', 'bd7ca48f-6483-43ef-a569-56111e9ec825', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(176, 13, 'Kabupaten Sumedang', 'b97c5995-be96-48e1-8d2d-e43eb8c1e78d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(177, 13, 'Kabupaten Tasikmalaya', '3f91dc1a-9516-49b1-890d-932f66e9e100', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(178, 13, 'Kota Bandung', '40d9e787-73f5-4a2d-97c8-71fb8b22b5bb', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(179, 13, 'Kota Banjar', '0fab44ca-d6b1-40a8-b3ff-969e4bf1fcd4', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(180, 13, 'Kota Bekasi', 'fb0fbd4d-adda-43df-97df-6d3d5c2ef319', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(181, 13, 'Kota Bogor', '7ed67cca-32fb-42ac-aaf6-fc2eb80896f4', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(182, 13, 'Kota Cimahi', '5f223c82-9bef-402f-9a98-ab92c7401e5c', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(183, 13, 'Kota Cirebon', '9066f436-02e6-4770-85b1-352e3d82261d', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(184, 13, 'Kota Depok', '4400eda1-2d97-4277-9d50-759406a291f7', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(185, 13, 'Kota Sukabumi', 'c2ded70a-5dac-4df6-b764-9a86987fa7c1', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(186, 13, 'Kota Tasikmalaya', '6d55d4dc-bbc8-4b03-9de7-7c26c132e4a4', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(187, 15, 'Kabupaten Bantul', '71512026-b9c8-406e-93f4-0dd67f95ec62', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(188, 15, 'Kabupaten Gunung Kidul', 'c6925482-7cee-4031-8fb2-6e152add784c', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(189, 15, 'Kabupaten Kulon Progo', '0dfd0a11-9296-4a75-a416-cd7a42c708fc', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(190, 15, 'Kabupaten Sleman', '6f2fcfc5-60a8-4d46-aeb7-294af60e05c7', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(191, 15, 'Kota Yogyakarta', '6bbf7340-998b-4257-ab64-2f32a3cb39af', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(192, 16, 'Kabupaten Banjarnegara', 'bef7c4fd-93ed-4e51-9a37-e13423a656d1', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(193, 16, 'Kabupaten Banyumas', '4ab3bf61-5c07-4fc2-9c67-86951a36a1aa', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(194, 16, 'Kabupaten Batang', '602a4630-341a-40e0-a39b-48eaade62363', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(195, 16, 'Kabupaten Blora', '63d96499-ef0a-4110-972d-64e0fa1b0620', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(196, 16, 'Kabupaten Boyolali', '130632de-49d3-48c5-a8ab-168d1e1be1e2', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(197, 16, 'Kabupaten Brebes', '60b4364b-2f64-4eab-a9f4-7e150a2f2f51', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(198, 16, 'Kabupaten Cilacap', 'ba9c25e6-e705-4a06-9c83-91d5f3acd9ae', '2024-08-24 03:42:20', '2024-08-24 03:42:20'),
(199, 16, 'Kabupaten Demak', 'ca1260c3-c54a-4ca9-b175-3e733f2112f4', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(200, 16, 'Kabupaten Grobogan', '728706d8-0d8a-4ca5-b6d8-4a5d14f8e7f3', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(201, 16, 'Kabupaten Jepara', '862e679d-7551-448d-aa20-e682794872fe', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(202, 16, 'Kabupaten Karanganyar', '72279df7-1bcc-4ae9-9c35-338ac6fb2965', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(203, 16, 'Kabupaten Kebumen', '14df28a6-6ced-4077-8223-92f2ea014f54', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(204, 16, 'Kabupaten Kendal', 'c09fa272-351a-4810-bb5b-cd2eea029675', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(205, 16, 'Kabupaten Klaten', '64ebbfa8-8e7e-43ea-a769-1766101100e3', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(206, 16, 'Kabupaten Kudus', '01a70d17-5cd2-4df8-9c47-514517e4451f', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(207, 16, 'Kabupaten Magelang', '36538830-7197-4f93-aa38-342e7b8ee59d', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(208, 16, 'Kabupaten Pati', '69d2c09f-d236-4c42-979f-62f5449a61e5', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(209, 16, 'Kabupaten Pekalongan', '1263a8d7-f0a8-4cb9-98f5-7c0e76b6e8e1', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(210, 16, 'Kabupaten Pemalang', 'dc0d58d8-874e-4151-a1e2-73b57d940f92', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(211, 16, 'Kabupaten Purbalingga', '2c43a3a3-4157-4a21-886b-675a8b388310', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(212, 16, 'Kabupaten Purworejo', '1fba770a-26de-4670-8ec2-be4732a73741', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(213, 16, 'Kabupaten Rembang', 'a32759dc-0abd-49e1-bb2f-f65ada2c6390', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(214, 16, 'Kabupaten Semarang', 'e9af124b-c1f7-4135-bfbf-dca5dd3320b8', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(215, 16, 'Kabupaten Sragen', '2af41db5-f624-41c7-9250-2995bc6556bc', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(216, 16, 'Kabupaten Sukoharjo', '704169f1-20f8-4970-80f9-0531bc397f84', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(217, 16, 'Kabupaten Tegal', 'ae32d8bf-9cb7-4df8-9f52-57d08f120027', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(218, 16, 'Kabupaten Temanggung', 'bd197aca-d2a9-43e5-bc0f-4c5d1ab196db', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(219, 16, 'Kabupaten Wonogiri', '7c44d447-409b-4bf0-816a-7ce1f606dd16', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(220, 16, 'Kabupaten Wonosobo', '3f14bd30-6d69-403b-811b-2498e25844b9', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(221, 16, 'Kota Magelang', 'f43f0cfc-24ba-460c-bd42-de363db0d866', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(222, 16, 'Kota Pekalongan', '426be791-9c4d-4f24-a7e3-ed37af1e7257', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(223, 16, 'Kota Salatiga', '96aea11b-da12-4e1e-ad41-3cb357120779', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(224, 16, 'Kota Semarang', '2316aaf1-bc45-460e-bb8f-e6785c5f4ada', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(225, 16, 'Kota Surakarta', '2f910152-f9e1-4f0b-9b03-5dbf9137ef64', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(226, 16, 'Kota Tegal', '4de5f1bf-790f-43a6-a8de-84ba5f6b04f8', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(227, 17, 'Kabupaten Badung', '12eec782-95bc-41e4-9998-8676c24d06bd', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(228, 17, 'Kabupaten Bangli', '54c08097-2c55-4568-a752-4b8bb0dd1bbf', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(229, 17, 'Kabupaten Buleleng', 'a2643e8d-6e9c-4046-8ae6-700895e5519a', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(230, 17, 'Kabupaten Gianyar', '57c6f4b9-2253-4bec-be18-f946bd88391c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(231, 17, 'Kabupaten Jembrana', 'a07adb99-a432-4a28-8dd9-e7ed82408ad5', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(232, 17, 'Kabupaten Karangasem', 'ccfd084a-8b43-4420-8f6a-b6a7e7ad9ad7', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(233, 17, 'Kabupaten Klungkung', '365ba98e-059a-4070-aceb-76ba6789a600', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(234, 17, 'Kabupaten Tabanan', '3db4fb38-fb3c-4935-a70e-ae3482ef785f', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(235, 17, 'Kota Denpasar', 'a82807c0-ea32-4041-b280-05f3ca1b74f2', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(236, 18, 'Kabupaten Bima', 'f203412a-c2b5-4142-83e9-e30c3076c67d', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(237, 18, 'Kabupaten Dompu', 'cdf1043f-397f-4860-b64d-ad4a3e270744', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(238, 18, 'Kabupaten Lombok Barat', '92693cb6-1f11-4196-af3c-71e82a2eb76c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(239, 18, 'Kabupaten Lombok Tengah', '79f3f393-eb56-4bed-843d-3e90efd5eb1f', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(240, 18, 'Kabupaten Lombok Timur', 'c9745924-e2e4-43a1-a602-cd395cc7303f', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(241, 18, 'Kabupaten Lombok Utara', '02a1374d-13d5-4e20-869b-20472b4f6b45', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(242, 18, 'Kabupaten Sumbawa', '676b9828-9211-44c5-a3cd-b5ebf15cecc8', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(243, 18, 'Kabupaten Sumbawa Barat', 'd3f85afe-99e7-4d9b-8268-2ec509cc23b6', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(244, 18, 'Kota Bima', 'b345a002-66b2-4241-9075-4477ae87d904', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(245, 18, 'Kota Mataram', '6d958e29-1d27-4f0f-ba9d-0f2d8935a4d6', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(246, 19, 'Kabupaten Alor', 'b7b39e36-fcbb-4b65-a99a-d6731e860a20', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(247, 19, 'Kabupaten Belu', '7ed78704-828a-44f5-927e-b1e7dc1ae8ff', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(248, 19, 'Kabupaten Ende', '9109ce9c-6a79-444d-9cee-d0a69ded8a2a', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(249, 19, 'Kabupaten Flores Timur', '4593f6c7-7442-4490-a4a6-a850aa79e8dd', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(250, 19, 'Kabupaten Kupang', '7622b6b3-cb43-4b3c-a957-abf9e53117ae', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(251, 19, 'Kabupaten Lembata', '730b0bdc-3b7a-49a3-90a4-96456c443706', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(252, 19, 'Kabupaten Malaka', 'a704c0fd-61b5-45f0-8dcf-e34d61ea1a60', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(253, 19, 'Kabupaten Manggarai', '671bd274-af2c-4f56-963b-11dab99af6d6', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(254, 19, 'Kabupaten Manggarai Barat', 'abe7f683-95b1-416f-81e4-a23e19eec0c7', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(255, 19, 'Kabupaten Manggarai Timur', 'eaf6e38c-582e-4898-a872-e20c10ce6998', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(256, 19, 'Kabupaten Ngada', 'f37ff84e-eaf3-48d8-a6f6-4fe144f72495', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(257, 19, 'Kabupaten Nagekeo', '919e1d89-9d08-4ade-8ec0-97d16607157c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(258, 19, 'Kabupaten Rote Ndao', '940c5f17-823e-44ab-ae62-09a91254b800', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(259, 19, 'Kabupaten Sabu Raijua', 'bdd4f7e7-ed57-4a80-910b-93fb6ed51819', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(260, 19, 'Kabupaten Sikka', 'f20904b0-ef48-4548-91bb-976172153c60', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(261, 19, 'Kabupaten Sumba Barat', '31c0dc76-3509-45c5-a8e4-0330e60621d8', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(262, 19, 'Kabupaten Sumba Barat Daya', '34b29a12-cc3c-48cb-92de-959f1e370f54', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(263, 19, 'Kabupaten Sumba Tengah', '928d7873-95c1-484f-8b2c-c83c98cf9a6b', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(264, 19, 'Kabupaten Sumba Timur', '797bd0bf-9552-4ac7-85b6-924da02deade', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(265, 19, 'Kabupaten Timor Tengah Selatan', 'a5600e7b-4317-4733-a273-974a649911f1', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(266, 19, 'Kabupaten Timor Tengah Utara', '86e943d6-42aa-459e-a921-348fbd3eed56', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(267, 19, 'Kota Kupang', '46b8a613-e1ab-4d04-8102-e10bc1a1a564', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(268, 20, 'Kabupaten Bengkayang', '273437c1-a523-42b4-ba80-dba905e1b9bf', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(269, 20, 'Kabupaten Kapuas Hulu', 'e93095a2-21c3-4517-89ca-91a9decaf9c7', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(270, 20, 'Kabupaten Kayong Utara', 'ada436f1-2e12-41bf-a085-fb80d788abb2', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(271, 20, 'Kabupaten Ketapang', '5ae8aa8e-7998-4aae-a88c-2837f32a2e1d', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(272, 20, 'Kabupaten Kubu Raya', '044e8980-8a01-49d8-84e2-0268bb5c13d8', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(273, 20, 'Kabupaten Landak', 'c0ef4a76-1938-4250-a506-305fc15660ec', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(274, 20, 'Kabupaten Melawi', 'ac9f4664-8275-4c2c-ab36-a52758bef0b6', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(275, 20, 'Kabupaten Mempawah', 'ca89285d-5449-4f2e-8855-d81630e828af', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(276, 20, 'Kabupaten Sambas', 'aa59716f-a6ac-494f-bdd1-1b5dbf86a480', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(277, 20, 'Kabupaten Sanggau', '9f85ef2b-46ea-40e0-ba30-e505fc7d398d', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(278, 20, 'Kabupaten Sekadau', '7161bc49-d341-46b0-ab04-41f5e59920f8', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(279, 20, 'Kabupaten Sintang', 'c0fc63ac-a50a-48f9-a186-ea869f4945c5', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(280, 20, 'Kota Pontianak', '75068040-f9f0-4ada-afc3-d196819d7cdd', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(281, 20, 'Kota Singkawang', '9400b6a8-9445-4aac-9160-60daf81de092', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(282, 21, 'Kabupaten Barito Selatan', 'cb50727d-7c17-4cd0-b3a7-94900ad36db0', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(283, 21, 'Kabupaten Barito Timur', 'b560e79a-85a5-4935-b026-c7fbf14feb82', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(284, 21, 'Kabupaten Barito Utara', '3eeb518b-daed-4c22-a4f2-d68dcf8eb64e', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(285, 21, 'Kabupaten Gunung Mas', 'a006ebb7-5dff-4e36-8c71-15ac918aebd6', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(286, 21, 'Kabupaten Kapuas', '0dfb4eea-24a1-4524-ad83-f344702730e3', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(287, 21, 'Kabupaten Katingan', '0833cfc3-2a49-457d-9612-fba65a719196', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(288, 21, 'Kabupaten Kotawaringin Barat', '74c23ec4-4929-4f00-8c21-f33f68686308', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(289, 21, 'Kabupaten Kotawaringin Timur', '691b82b8-d2f3-4883-a4c3-bb2c27a4d339', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(290, 21, 'Kabupaten Lamandau', '948c0786-3cc0-4bba-960a-1d962f952df3', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(291, 21, 'Kabupaten Murung Raya', '78e4a58c-e75e-4ffc-a78f-899f0a096edb', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(292, 21, 'Kabupaten Pulang Pisau', 'e0418f5a-c776-4ef1-be9a-49d245a9cc03', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(293, 21, 'Kabupaten Seruyan', '83529e1b-4494-490e-917b-44a5779882ab', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(294, 21, 'Kabupaten Sukamara', '3b0b00ff-feae-47cf-9276-9494420a8bbc', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(295, 21, 'Kota Palangka Raya', 'efee2868-0cf9-4276-b669-e707eae6fc8c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(296, 22, 'Kabupaten Balangan', '5835cc70-3a43-473b-9a24-1caf1ea3d459', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(297, 22, 'Kabupaten Banjar', '6e18d1a6-cc25-4c75-aa16-f23a747e00e1', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(298, 22, 'Kabupaten Barito Kuala', 'ea2dfee3-4a7c-4fe3-ac88-b55fada4cef0', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(299, 22, 'Kabupaten Hulu Sungai Selatan', '36c8f7e3-e99a-40e8-b036-95cf206093be', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(300, 22, 'Kabupaten Hulu Sungai Tengah', '5ffcda2c-8a1f-4100-b654-8b74954188c1', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(301, 22, 'Kabupaten Hulu Sungai Utara', 'fb8c2719-93a2-4bfb-95fb-6eb6526a4dc7', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(302, 22, 'Kabupaten Kotabaru', 'ef4765fd-0cf5-4a42-9c3a-bdf4fbaf41b0', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(303, 22, 'Kabupaten Tabalong', 'e21d053e-17be-4364-ab3c-aa81dfb6f80d', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(304, 22, 'Kabupaten Tanah Bumbu', '792461e4-95c8-4f3d-9716-32412fbbf250', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(305, 22, 'Kabupaten Tanah Laut', '803d5745-4679-4306-8df2-2981a2d59baa', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(306, 22, 'Kabupaten Tapin', '2fc4a152-80d2-4365-93df-0d020e1da295', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(307, 22, 'Kota Banjarbaru', '56e42c66-f73d-49aa-9ef2-d1be5a434ded', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(308, 22, 'Kota Banjarmasin', '62fadc6e-e30e-4512-a5de-664a32141a81', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(309, 23, 'Kabupaten Berau', '9de63b83-9f4c-4a52-8c4a-fb3a4a959bcf', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(310, 23, 'Kabupaten Kutai Barat', 'ae62e3f8-daab-410a-8cff-ed130164bca1', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(311, 23, 'Kabupaten Kutai Kartanegara', '2471cf4e-1c42-4da8-a30d-f13b1a15908e', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(312, 23, 'Kabupaten Kutai Timur', 'fb69e34a-3cc4-4b62-857f-2d0cdcbf6289', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(313, 23, 'Kabupaten Mahakam Ulu', 'e667b7dd-f606-4622-b006-6f9e362c11d3', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(314, 23, 'Kabupaten Paser', '21051038-1a92-4e0d-8613-ccb0a6042ae7', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(315, 23, 'Kabupaten Penajam Paser Utara', 'ef703ae2-6fb4-4314-88f8-d275808dcfed', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(316, 23, 'Kota Balikpapan', '65220e63-551f-4e7b-97ec-e6a34c79dd21', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(317, 23, 'Kota Bontang', 'b9861cc7-2b0a-4bf6-a63d-2c8c10dbdb8b', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(318, 23, 'Kota Samarinda', 'f2af1fba-2903-49e3-ab5c-2d2684230b74', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(319, 24, 'Kabupaten Bulungan', '6b627464-fdb1-4c73-821c-dcda5694d4bc', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(320, 24, 'Kabupaten Malinau', 'c980802b-5bad-4f43-b4a1-122c13d5148c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(321, 24, 'Kabupaten Nunukan', '92064ed4-8df4-4cb7-b948-831c69a99cf5', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(322, 24, 'Kabupaten Tana Tidung', 'bcb33439-d724-4e91-843e-034b247047fe', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(323, 24, 'Kota Tarakan', 'd6063065-c7bf-4363-827a-17a56e55a6cc', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(324, 25, 'Kabupaten Bolaang Mongondow', '983c7eeb-6afd-44fc-a768-9746fcf0e477', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(325, 25, 'Kabupaten Bolaang Mongondow Selatan', 'fed56541-9e82-4a7c-9bfe-ac47a7c6d376', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(326, 25, 'Kabupaten Bolaang Mongondow Timur', 'e1d5bc3c-fc12-4eda-9247-b715bda83102', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(327, 25, 'Kabupaten Bolaang Mongondow Utara', 'b7628b45-17fb-4817-9204-74b975e923a2', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(328, 25, 'Kabupaten Kepulauan Sangihe', 'b9a0cd73-7367-401a-b011-bb8aabe772e7', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(329, 25, 'Kabupaten Kepulauan Siau Tagulandang Biaro (Sitaro)', '1ab5a485-e3d8-41e9-bfb1-8a9228a719e5', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(330, 25, 'Kabupaten Kepulauan Talaud', 'd6117c1c-845b-471f-92a8-56c0827317cb', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(331, 25, 'Kabupaten Minahasa', '756cd947-5cb6-45f9-99c8-c08b7509acf1', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(332, 25, 'Kabupaten Minahasa Selatan', '9bb33ec7-e874-42e7-9b9c-25b1dc4d6b8c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(333, 25, 'Kabupaten Minahasa Tenggara', 'baa86be4-6ffe-43c7-8436-97eeba916128', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(334, 25, 'Kabupaten Minahasa Utara', '85680761-1f3c-4182-83d9-d3abc2011814', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(335, 25, 'Kota Bitung', 'b1d9798f-33a2-4dbc-8fe1-d70b01e7ec4d', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(336, 25, 'Kota Kotamobagu', '85d87a91-d1d3-4a77-b023-88b4216f4362', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(337, 25, 'Kota Manado', 'ec3bc47e-e11e-4e06-8d56-30c06ee07726', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(338, 25, 'Kota Tomohon', 'eaafbb94-0df5-4eb5-902e-a6438688b136', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(339, 26, 'Kabupaten Boalemo', '2854d9d4-b2de-4632-bed7-274b9994df5d', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(340, 26, 'Kabupaten Bone Bolango', 'd24b6bee-cc7a-4152-99af-f550bfcf3e62', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(341, 26, 'Kabupaten Gorontalo', '536e31d8-8547-4451-9c34-3a89383aa1eb', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(342, 26, 'Kabupaten Gorontalo Utara', 'a75abdd1-5bd9-4532-84e9-44302489c998', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(343, 26, 'Kabupaten Pohuwato', 'a2669cca-1fe6-4368-b3de-0866515ab3f5', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(344, 26, 'Kota Gorontalo', '947b4ad6-ea4c-455a-8983-1aaccb121283', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(345, 27, 'Kabupaten Banggai', 'dadd7198-772f-4ea1-93d1-b04800ece785', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(346, 27, 'Kabupaten Banggai Kepulauan', 'ad807870-6fd4-4894-be41-6823eb5ae17a', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(347, 27, 'Kabupaten Banggai Laut', 'c8140d64-bfed-45d2-97a6-c70504e3c788', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(348, 27, 'Kabupaten Buol', '01083dfa-d283-47aa-99fd-f955670f998c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(349, 27, 'Kabupaten Donggala', '8367b8e4-4c64-445d-bf92-e8383d7b29d8', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(350, 27, 'Kabupaten Morowali', 'b2eaf899-a101-431c-9917-1e0920124c40', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(351, 27, 'Kabupaten Morowali Utara', 'dc6a3cbf-4777-4c5e-9c45-37f0e4f96646', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(352, 27, 'Kabupaten Parigi Moutong', '6737afa9-c811-4475-a84e-fa1beb2b7dfb', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(353, 27, 'Kabupaten Poso', 'ea6ea733-1272-41f2-8a40-ab61cb283c2e', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(354, 27, 'Kabupaten Sigi', 'a13606f6-df83-4e07-9ec7-06dce692911f', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(355, 27, 'Kabupaten Tojo Una-Una', 'fd3b1e9b-e883-4df4-a812-a2d51a32f11f', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(356, 27, 'Kabupaten Tolitoli', 'c75da8af-6ecb-4795-a06f-83d927df0f55', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(357, 27, 'Kota Palu', '914412a1-5c25-427b-98f5-80845f9064f2', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(358, 28, 'Kabupaten Majene', '4e8f9efd-385e-4fc8-af79-d99ea91ebef1', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(359, 28, 'Kabupaten Mamasa', 'b26b8b8a-fe02-4f06-91cd-92d6f9bba7ce', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(360, 28, 'Kabupaten Mamuju', 'c86acebb-3039-42c8-a1b1-91f2ddb6b197', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(361, 28, 'Kabupaten Mamuju Tengah', '03535b1e-526c-47c2-8aed-f5074e82a547', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(362, 28, 'Kabupaten Pasangkayu', 'a3441c11-b850-4009-8183-edf9b4ee9f14', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(363, 28, 'Kabupaten Polewali Mandar', '2fb26eea-eebb-4718-91a3-dfb573d2449a', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(364, 29, 'Kabupaten Bantaeng', 'd0703022-0119-4395-97a3-a6007842039c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(365, 29, 'Kabupaten Barru', '1b17ac2f-b923-4798-8b2a-bc8ca9d02b88', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(366, 29, 'Kabupaten Bone', 'eea57924-5c61-4928-a7fc-cd7a60313f29', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(367, 29, 'Kabupaten Bulukumba', '3b12d447-949a-4994-8654-ff67c620a528', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(368, 29, 'Kabupaten Enrekang', '395404bf-e9bd-4690-a41d-51df98535617', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(369, 29, 'Kabupaten Gowa', '1cbd0edd-6737-487a-9899-850bb1270d17', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(370, 29, 'Kabupaten Jeneponto', 'd6958147-a620-42aa-96da-82a6e10c143c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(371, 29, 'Kabupaten Kepulauan Selayar', '7971d4db-3732-4f94-b773-4cd33be72ded', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(372, 29, 'Kabupaten Luwu', '2db5b23a-248a-49e9-9933-766da9c3eabb', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(373, 29, 'Kabupaten Luwu Timur', 'd05406e6-eabd-421b-a877-f360510adb3a', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(374, 29, 'Kabupaten Luwu Utara', 'fdf9404d-afc6-4892-b3ca-c7e62a2ac1c7', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(375, 29, 'Kabupaten Maros', 'eed4e017-7047-4d4f-94f9-f173b8186894', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(376, 29, 'Kabupaten Pangkajene dan Kepulauan', '79da1fc0-b228-471b-a1be-774ad97f2498', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(377, 29, 'Kabupaten Pinrang', 'c790d1a7-ff09-4b12-aea5-9a6910ec4a18', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(378, 29, 'Kabupaten Sidenreng Rappang', '8634489f-bcc6-4221-9b95-68ee2daa8407', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(379, 29, 'Kabupaten Sinjai', 'c9bfa17a-a073-4088-96af-da8e4a7cc9e7', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(380, 29, 'Kabupaten Soppeng', 'bc3786c5-4d77-418b-a94e-89a62aaf3629', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(381, 29, 'Kabupaten Takalar', '743cf315-64c8-4cc0-9eb4-6e60db24bcf4', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(382, 29, 'Kabupaten Tana Toraja', '1084cbef-1a74-4eb0-9900-5d645f5094f2', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(383, 29, 'Kabupaten Toraja Utara', '82e33404-1467-474d-8bbe-da536334b644', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(384, 29, 'Kabupaten Wajo', '7db25000-b6f2-4da7-b60b-b419e85ad96c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(385, 29, 'Kota Makassar', '0d70a60a-8077-4736-97d3-91407c495e5e', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(386, 29, 'Kota Palopo', '21a40041-aca6-4d76-862a-fbc18434776e', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(387, 29, 'Kota Parepare', 'cd12b9dd-30d5-47f2-be08-6a5ef6432663', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(388, 30, 'Kabupaten Bombana', '394a3e88-725c-46f1-9cdb-58a3903a2196', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(389, 30, 'Kabupaten Buton', '0d9c4b82-2846-4a09-8d1e-e18ed0f95440', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(390, 30, 'Kabupaten Buton Selatan', 'c6bef69e-c2eb-47ec-ac9d-c2a283f91672', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(391, 30, 'Kabupaten Buton Tengah', 'a32fe41d-2227-4dd0-8a95-0576054e23ed', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(392, 30, 'Kabupaten Buton Utara', '5979b778-2805-4563-b600-6d0cdbb05460', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(393, 30, 'Kabupaten Kolaka', '56d31ced-213d-4095-bd1b-cfe69318b5eb', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(394, 30, 'Kabupaten Kolaka Timur', 'c85aa7b4-ecc0-4cbc-9012-56056bd81554', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(395, 30, 'Kabupaten Kolaka Utara', '60a464a0-1b69-475e-9481-53999b0ad82b', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(396, 30, 'Kabupaten Konawe', 'f93edba6-4c37-477e-adbf-6691efc4324a', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(397, 30, 'Kabupaten Konawe Kepulauan', '1ccea33c-52f5-4573-a23a-25f8f13e115a', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(398, 30, 'Kabupaten Konawe Selatan', 'f8093fed-decd-4e0c-916f-a9ddbec6a4a3', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(399, 30, 'Kabupaten Konawe Utara', 'c59c9664-d9f2-4191-8922-9f1dd6f48508', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(400, 30, 'Kabupaten Muna', '2a916a9b-91a6-42a7-bdfb-668c4b7e5fb8', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(401, 30, 'Kabupaten Muna Barat', '14d0840d-682a-4902-9fb4-0fa5277c066e', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(402, 30, 'Kabupaten Wakatobi', '6f01a0fc-49aa-4220-ad40-15ee66ad961b', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(403, 30, 'Kota Baubau', 'c24e2310-ac27-443e-934d-223fe9479f04', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(404, 30, 'Kota Kendari', 'e80861c7-c75b-4ee0-8ce5-225ccb3052c8', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(405, 25, 'Kabupaten Bolaang Mongondow', '20117856-752f-4e2e-b3ad-731b037028c7', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(406, 25, 'Kabupaten Bolaang Mongondow Selatan', '96467b78-0ade-4e79-a87d-cf90b4f1180a', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(407, 25, 'Kabupaten Bolaang Mongondow Timur', 'bb78f84e-18ba-436f-927d-7f15fe2711e6', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(408, 25, 'Kabupaten Bolaang Mongondow Utara', 'e5b1edb5-64ab-422e-bd60-7940a2f3ba17', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(409, 25, 'Kabupaten Kepulauan Sangihe', '4993b1a0-29dc-4a9f-b213-af09a6d10afa', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(410, 25, 'Kabupaten Kepulauan Siau Tagulandang Biaro (Sitaro)', '76e4115d-e903-4758-a858-905c5629f1d3', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(411, 25, 'Kabupaten Kepulauan Talaud', '152b38b0-419f-48a6-aaab-7980af83e0c9', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(412, 25, 'Kabupaten Minahasa', '2c808f44-5d7f-45f1-b18e-67ffc730259b', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(413, 25, 'Kabupaten Minahasa Selatan', '88d1c698-63f4-46f9-b432-2db670f3177c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(414, 25, 'Kabupaten Minahasa Tenggara', 'b1083cc3-a0d1-4dd1-b330-125ac7864793', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(415, 25, 'Kabupaten Minahasa Utara', '1940afa7-93e6-4a73-bd58-0a96865f4ccf', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(416, 25, 'Kota Bitung', '888018ef-e23b-420d-9116-46c52d0915ac', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(417, 25, 'Kota Kotamobagu', 'ce2f6e79-a60e-4e83-ba7e-cff8e20c7d24', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(418, 25, 'Kota Manado', 'cd865dbc-63b4-465d-90b7-4a20a20d8c47', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(419, 25, 'Kota Tomohon', '34c9e248-390d-4336-9d26-73daede8733f', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(420, 26, 'Kabupaten Boalemo', '33d89aca-fa64-482a-b8ee-4181f43f95ab', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(421, 26, 'Kabupaten Bone Bolango', 'cb905d2a-bbfe-427e-b9b2-dc427a492374', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(422, 26, 'Kabupaten Gorontalo', '9c9258bf-73ab-475b-b96e-fa94a4627578', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(423, 26, 'Kabupaten Gorontalo Utara', '5b6b7c2d-970b-48b6-b946-506cdb2e3dae', '2024-08-24 03:42:21', '2024-08-24 03:42:21');
INSERT INTO `tbl_kabupaten` (`id_kabupaten`, `id_provinsi`, `nama_kabupaten`, `uid`, `created_at`, `updated_at`) VALUES
(424, 26, 'Kabupaten Pohuwato', 'e75c3883-d197-4f28-b72b-55b4f2ee025c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(425, 26, 'Kota Gorontalo', '3370463b-97b6-42f2-a571-756a2473a8fe', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(426, 27, 'Kabupaten Banggai', '32b58642-9d81-4610-b411-54af4b51af1c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(427, 27, 'Kabupaten Banggai Kepulauan', '78dc0b5f-7984-45b6-bbdb-4fa5f1a5fba0', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(428, 27, 'Kabupaten Banggai Laut', 'b34607db-aa3a-4584-b319-deef34f3d020', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(429, 27, 'Kabupaten Buol', 'c40494b9-92d0-49df-b94b-306c2713853f', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(430, 27, 'Kabupaten Donggala', '9ba96f6f-15aa-443e-b2e2-eee445c99a60', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(431, 27, 'Kabupaten Morowali', '3955c89d-4fa3-4a8e-8f96-7a73d1596bf9', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(432, 27, 'Kabupaten Morowali Utara', 'a58c4828-2a07-4b51-b9dd-c2b5a173d3d3', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(433, 27, 'Kabupaten Parigi Moutong', '6add542e-9893-4033-aef3-44ea5700f960', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(434, 27, 'Kabupaten Poso', 'e06e322e-b2e5-45be-9ec5-2156651b1f9c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(435, 27, 'Kabupaten Sigi', '02432d17-35d3-45ff-810d-d2fb1f38f876', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(436, 27, 'Kabupaten Tojo Una-Una', 'b57c2e35-161c-47d5-8b96-a9b446ecfd7f', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(437, 27, 'Kabupaten Tolitoli', '206d867f-33ec-4350-9807-65ea92971998', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(438, 27, 'Kota Palu', '3bab0e35-2a28-46f5-9d65-94621216b8bc', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(439, 28, 'Kabupaten Majene', '5481e8bd-3d6f-465a-918b-71494f341ed5', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(440, 28, 'Kabupaten Mamasa', '71e2522c-6a85-4fe2-83a7-6888859b6572', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(441, 28, 'Kabupaten Mamuju', '32c8b390-2de2-480a-9247-c7a47baecfa6', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(442, 28, 'Kabupaten Mamuju Tengah', '0d016613-f63b-40a9-9da0-853091636252', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(443, 28, 'Kabupaten Pasangkayu', '79bcd486-0eb1-4f3c-9975-3fb2c6d01f7a', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(444, 28, 'Kabupaten Polewali Mandar', '6ba59ebe-cd2d-4ff3-9572-3f58c0026510', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(445, 29, 'Kabupaten Bantaeng', 'bd3913f0-858b-4795-a673-e06d223e42f8', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(446, 29, 'Kabupaten Barru', 'f1b927ce-0080-4b13-ac5c-bfaa0d485f69', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(447, 29, 'Kabupaten Bone', '8a45f38b-1820-41f0-b33e-e1adfcc9f7e4', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(448, 29, 'Kabupaten Bulukumba', '4b7a3710-6cf6-41b7-aa8c-ed4b1b70212e', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(449, 29, 'Kabupaten Enrekang', '91804ca6-cd1a-4cb9-a9a1-5c6044367d3c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(450, 29, 'Kabupaten Gowa', '91a374ca-6232-461b-a1b1-b42fc83e4d7f', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(451, 29, 'Kabupaten Jeneponto', '03f661d1-4fef-4df6-85cc-97346ba53042', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(452, 29, 'Kabupaten Kepulauan Selayar', 'd20e8057-6289-4ef5-9282-3e9965e7cacf', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(453, 29, 'Kabupaten Luwu', '8aa61094-1609-413b-b926-f26b8640861e', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(454, 29, 'Kabupaten Luwu Timur', 'fb9bde9b-25f4-4b4b-9865-c642ba2d8be0', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(455, 29, 'Kabupaten Luwu Utara', '81d7c368-f22f-46fd-a7b8-8884002d6228', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(456, 29, 'Kabupaten Maros', '7936d0c9-2f27-41e7-9aeb-1f6ae760b730', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(457, 29, 'Kabupaten Pangkajene dan Kepulauan', '0d381f7b-ebc3-4119-9aea-d0addaf7cbce', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(458, 29, 'Kabupaten Pinrang', '4559070b-32b7-4f74-92ec-d1ae515042dc', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(459, 29, 'Kabupaten Sidenreng Rappang', 'a3eae15d-90f0-48bc-9e3b-649fda7e916b', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(460, 29, 'Kabupaten Sinjai', 'aa7171e4-2d21-4127-b963-04dc823c5d81', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(461, 29, 'Kabupaten Soppeng', '9f157b00-3543-46d7-a7bd-9d5c5a69070c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(462, 29, 'Kabupaten Takalar', 'e2d3db48-3750-492a-b9da-3d1f7cde0eea', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(463, 29, 'Kabupaten Tana Toraja', '9a3c4d97-22d5-4b2c-b071-9fe1da46a084', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(464, 29, 'Kabupaten Toraja Utara', '4abdb1f4-e433-415e-9739-7f1648c0d221', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(465, 29, 'Kabupaten Wajo', '87da1636-f58a-4383-a3c3-c572bf212607', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(466, 29, 'Kota Makassar', '3f1254b6-3947-43da-a1ad-6d8538eb79c3', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(467, 29, 'Kota Palopo', '3518dc66-bb73-48cc-b18c-7215527c9dcc', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(468, 29, 'Kota Parepare', '17986d0d-f380-4db8-ae8e-3ad68b799fbf', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(469, 30, 'Kabupaten Bombana', '08ffa364-2c0c-482d-a80d-731baefee6da', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(470, 30, 'Kabupaten Buton', 'c942cade-c929-4aa3-bf0a-0bf4ed861893', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(471, 30, 'Kabupaten Buton Selatan', 'c990cc2c-0a2a-421d-b722-ab724d6c6de6', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(472, 30, 'Kabupaten Buton Tengah', '862dcd34-a4f3-4277-8db3-1e2932f41213', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(473, 30, 'Kabupaten Buton Utara', 'f531c64a-7c62-4e30-a20e-946758e79e3a', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(474, 30, 'Kabupaten Kolaka', '305308f0-767b-4a53-9817-54cfd677839d', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(475, 30, 'Kabupaten Kolaka Timur', '1bf49385-8223-48d6-8cf6-86645af54184', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(476, 30, 'Kabupaten Kolaka Utara', 'ae673bb9-f8f1-4263-936f-79cb7ce167d2', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(477, 30, 'Kabupaten Konawe', '89b9d7ba-e56c-4a79-9bfc-34c1203edcb6', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(478, 30, 'Kabupaten Konawe Kepulauan', 'de56838c-4563-4d8a-b491-7166b861de82', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(479, 30, 'Kabupaten Konawe Selatan', 'e8b09305-f7ee-4fff-9bd9-d5663583ac15', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(480, 30, 'Kabupaten Konawe Utara', '4c1fb7f5-2898-4a08-a554-49a56c1e5a43', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(481, 30, 'Kabupaten Muna', 'f445b212-d556-411a-a371-23a40178d0c8', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(482, 30, 'Kabupaten Muna Barat', '33683f47-6e0b-4dc4-bd19-7bc6e77cad4c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(483, 30, 'Kabupaten Wakatobi', '430db4a3-5717-4ae4-80be-407c97fafef2', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(484, 30, 'Kota Baubau', '47ec2c33-b51c-487e-a480-48f55ae77eb1', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(485, 30, 'Kota Kendari', '02905e56-7dd9-4ff8-8e86-2d32454345ab', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(486, 31, 'Kabupaten Buru', '5dacbb6e-c2d0-4042-844d-ef12dfc6f608', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(487, 31, 'Kabupaten Buru Selatan', '6e5e7645-24f9-4be5-b61b-bd5c615c00f0', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(488, 31, 'Kabupaten Kepulauan Aru', '91998818-1e6d-4c6f-958a-12f74fd2ed6b', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(489, 31, 'Kabupaten Maluku Barat Daya', '70129e97-d9e8-4f81-879e-766eb5be32de', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(490, 31, 'Kabupaten Maluku Tengah', '75acbad2-a2b9-43ad-9a2f-3de632007865', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(491, 31, 'Kabupaten Maluku Tenggara', '6fc708e8-ead3-4042-8911-0a620f00ec4b', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(492, 31, 'Kabupaten Seram Bagian Barat', '6c158663-8ebc-4ba6-91b3-d661e2a616e6', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(493, 31, 'Kabupaten Seram Bagian Timur', '51536731-ff71-4912-849d-99a6c942c745', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(494, 31, 'Kota Ambon', '24e87f8e-9105-41a4-a353-1437898b04b3', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(495, 31, 'Kota Tual', 'c4234271-5017-4682-bc8b-768728f379e5', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(496, 32, 'Kabupaten Halmahera Barat', '9880a042-96cc-4f7b-8201-79868412e67c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(497, 32, 'Kabupaten Halmahera Selatan', 'e1afffb1-f58b-4fd4-9163-7ea3d31849ad', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(498, 32, 'Kabupaten Halmahera Tengah', '2d8dd1ee-d26f-4714-9258-701265e06491', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(499, 32, 'Kabupaten Halmahera Timur', 'bd01e8ce-8a01-4192-8ceb-f5ee659ad3f1', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(500, 32, 'Kabupaten Halmahera Utara', 'ed9066d9-fe15-4e94-87c3-6d8d78bcf2c6', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(501, 32, 'Kabupaten Kepulauan Sula', 'be160463-19a9-4a29-814b-495eeb27211c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(502, 32, 'Kabupaten Pulau Morotai', '02eb77c4-ecc5-4c06-a10a-61ee517b91f4', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(503, 32, 'Kabupaten Pulau Taliabu', '6c2b2920-05fa-4e85-b5e8-3cd0fb8d9a3f', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(504, 32, 'Kota Ternate', '56c8836a-3627-4718-89dc-33a77bfd2f30', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(505, 32, 'Kota Tidore Kepulauan', '34718fb1-bf8b-47af-916d-992088daff75', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(506, 33, 'Kabupaten Fakfak', '74d9a40c-e34d-4a3b-bdd4-d0d6d4d7d9e0', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(507, 33, 'Kabupaten Kaimana', 'ea5cd094-a58b-46c7-acbd-629993cb00b2', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(508, 33, 'Kabupaten Manokwari', '19d83fdf-7d83-4383-a687-8b6809fcc404', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(509, 33, 'Kabupaten Manokwari Selatan', '3c51a772-9705-47c8-b3c9-2307f73ce930', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(510, 33, 'Kabupaten Pegunungan Arfak', '8bd2b45c-af73-4213-bb79-005148b84738', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(511, 33, 'Kabupaten Sorong', '9b536518-553e-4074-a147-857f6192d96d', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(512, 33, 'Kabupaten Sorong Selatan', '2fefc173-7689-481b-8a95-9dae3d5c237e', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(513, 33, 'Kabupaten Teluk Bintuni', '07810cef-d1f4-44df-a5ef-5845f04ce0cb', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(514, 33, 'Kabupaten Teluk Wondama', '54b68575-c512-4e5c-b19f-ae44a5aacf88', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(515, 33, 'Kota Sorong', '66576977-e5a8-4022-8954-cbabc776b979', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(516, 34, 'Kabupaten Biak Numfor', 'de912087-4e0a-41f2-8539-114279da62db', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(517, 34, 'Kabupaten Jayapura', 'ad05732d-8bfe-4698-b8b9-2818e38927f1', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(518, 34, 'Kabupaten Keerom', '850e5610-3cf9-4fd4-bb32-00a28aecd016', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(519, 34, 'Kabupaten Kepulauan Yapen', '84f0ee73-fa43-4c10-8c2d-5ecc4faeaef7', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(520, 34, 'Kabupaten Mamberamo Raya', 'a0cd0eed-a922-40d0-9f33-956202f1f7e7', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(521, 34, 'Kabupaten Sarmi', '8e55de27-bd54-4c74-90e8-c80a4c9077f0', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(522, 34, 'Kabupaten Supiori', '0b0cc329-6c12-4d25-b113-74fe1c7b56b2', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(523, 34, 'Kabupaten Waropen', '6fa6b42b-0826-4c3f-aba2-d362d9ada655', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(524, 34, 'Kota Jayapura', 'af41ce6d-d872-4fb3-8ee7-c809d4fce077', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(525, 35, 'Kabupaten Asmat', 'b21829e4-5c20-49db-bfa5-67932ee43641', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(526, 35, 'Kabupaten Boven Digoel', '7679afca-6c61-423a-9e20-d3e7afacdccf', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(527, 35, 'Kabupaten Mappi', 'b6603840-3ad0-47b4-ac31-a56f2e85e5f9', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(528, 35, 'Kabupaten Merauke', 'e11e85cf-0b40-4b46-8969-43e253b7b91f', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(529, 36, 'Kabupaten Deiyai', 'd9ab8fd5-33fb-4b69-a5e4-34de57f149cd', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(530, 36, 'Kabupaten Dogiyai', 'b4d016e8-da8f-4409-b44d-e813d6cec394', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(531, 36, 'Kabupaten Intan Jaya', '1522ec86-a42e-4bac-8375-21d77eeefa7c', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(532, 36, 'Kabupaten Mimika', 'e43aeb26-cda2-4626-8476-3ca5648972ff', '2024-08-24 03:42:21', '2024-08-24 03:42:21'),
(533, 36, 'Kabupaten Nabire', 'd2e1fd12-93c9-46dd-b030-456ab072f7f6', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(534, 36, 'Kabupaten Paniai', '7bbcc25f-f4db-480d-a9b1-37fbe60ee7a6', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(535, 36, 'Kabupaten Puncak', '5010ab9a-91a7-4360-8052-a0f019e193fd', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(536, 36, 'Kabupaten Puncak Jaya', '8c6e5f8c-4c79-4a90-8b95-2bf087d401b9', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(537, 37, 'Kabupaten Jayawijaya', '4f82e079-2df6-445d-9066-0f3423cd3ca1', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(538, 37, 'Kabupaten Lanny Jaya', 'dbdd4e05-d221-4d7c-b700-391fa2e575eb', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(539, 37, 'Kabupaten Mamberamo Tengah', 'd8d2702e-f158-407a-b784-bab64a2eadf5', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(540, 37, 'Kabupaten Nduga', '96805743-cd8f-48af-8ea2-f857d51cc44f', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(541, 37, 'Kabupaten Pegunungan Bintang', '42a03958-6841-4a5f-a510-05df3e732217', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(542, 37, 'Kabupaten Tolikara', '5de06892-811a-4aaa-9feb-1ddc76d11c9d', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(543, 37, 'Kabupaten Yahukimo', '03c51967-8e2b-4f7d-8472-07dec610099d', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(544, 37, 'Kabupaten Yalimo', '7de3492c-08d1-4535-ba6f-10b68417dd39', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(545, 38, 'Kabupaten Maybrat', '3d8d67c0-90c9-471d-8d76-7e84ebf6142e', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(546, 38, 'Kabupaten Raja Ampat', 'ba4da778-10e6-4dfd-885e-d72310c370d5', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(547, 38, 'Kabupaten Sorong', '5218ef6f-f504-415d-a531-bda093588d01', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(548, 38, 'Kabupaten Sorong Selatan', '05e26e65-02b7-45c0-b564-25e0a70c75e4', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(549, 38, 'Kabupaten Tambrauw', '259b4b7b-f2a8-44ac-af8a-db6b39f0fee7', '2024-08-24 03:42:22', '2024-08-24 03:42:22'),
(550, 38, 'Kota Sorong', '8cae6d63-a550-4f06-ae85-2fecef3db0b0', '2024-08-24 03:42:22', '2024-08-24 03:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendaftaran`
--

CREATE TABLE `tbl_pendaftaran` (
  `id_pendaftaran` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat_ktp` varchar(255) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kabupaten` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `notelp` int(11) DEFAULT NULL,
  `nohp` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `kewarganegaraan` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `tgl_lahir` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `kabupaten_lahir` varchar(255) DEFAULT NULL,
  `provinsi_lahir` varchar(255) DEFAULT NULL,
  `luar_negri` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `ismenikah` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id_provinsi` bigint(20) UNSIGNED NOT NULL,
  `nama_provinsi` varchar(255) DEFAULT NULL,
  `uid` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id_provinsi`, `nama_provinsi`, `uid`, `created_at`, `updated_at`) VALUES
(1, 'Aceh', '4b55eb89-aedd-4a37-ad1d-bd4a0b5d0eec', '2024-08-24 03:37:23', '2024-08-24 03:37:23'),
(2, 'Sumatera Utara', 'b1bb5bdd-8077-4d2c-89db-416b23b1f785', '2024-08-24 03:37:23', '2024-08-24 03:37:23'),
(3, 'Sumatera Barat', 'b462f86e-8a30-45ad-8a83-7f3644399cfd', '2024-08-24 03:37:23', '2024-08-24 03:37:23'),
(4, 'Riau', '8186ed8a-77ef-44c0-89dc-fe04bdf48a76', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(5, 'Kepulauan Riau', '3b792677-6ba4-493d-8772-9d81dd044dea', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(6, 'Jambi', '6e9ebb75-84d8-4464-b721-f78400b606a8', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(7, 'Sumatera Selatan', '0eb89556-7ffd-49ae-a358-c94ca182b223', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(8, 'Bangka Belitung', '0aadd899-c4f6-4d5e-945d-630e93b91bf6', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(9, 'Bengkulu', '3dbcef75-59d3-4f3a-bab3-614401be00d7', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(10, 'Lampung', '4ec7d495-e7de-4818-8a77-ded919a3c08a', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(11, 'DKI Jakarta', '4f06d734-2a64-4124-a22b-f02dc68a1cae', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(12, 'Banten', '94b7eebc-5969-4173-b23a-b2de7b4987c2', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(13, 'Jawa Barat', '6326ee55-717b-4048-b742-732291fbe076', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(14, 'Jawa Tengah', '47c0d6bb-6d11-4fcd-a0b6-8946f390af2f', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(15, 'DI Yogyakarta', 'fbd2f5ba-b9b1-4e06-8e21-4be2d78a9459', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(16, 'Jawa Timur', 'c97da6b0-058f-4cdc-9c90-e219382760e6', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(17, 'Bali', '5284ede9-8d02-49ad-8874-7e962e476af9', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(18, 'Nusa Tenggara Barat', '961bd33d-0910-4d53-af20-13aa3b5be5a1', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(19, 'Nusa Tenggara Timur', '7a0f2be5-90ee-4a03-9ab7-07aef66753d0', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(20, 'Kalimantan Barat', '7443f46e-5a0d-4af5-ad40-3f0769508af9', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(21, 'Kalimantan Tengah', '51bb54cf-a4ba-4183-b001-99345d9a32e3', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(22, 'Kalimantan Selatan', '03c0e713-3061-4093-8e47-20bd0b69422d', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(23, 'Kalimantan Timur', 'b51323b9-3384-479d-a93f-a001c0b0ac4f', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(24, 'Kalimantan Utara', '530592dd-e0d6-4bb6-8331-beb575314c3a', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(25, 'Sulawesi Utara', '51025977-d9a0-4259-89ab-a91fce587ff7', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(26, 'Gorontalo', '2672a88a-0bdd-44fa-9f8a-66492f1c6d21', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(27, 'Sulawesi Tengah', '083f4e53-243e-4c7c-aaca-e81b7237f673', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(28, 'Sulawesi Barat', '07b1b2a2-6c81-4ecc-b712-6ff66583ce05', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(29, 'Sulawesi Selatan', 'a7f66be4-a2d5-4df6-bb97-6a2c3328a042', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(30, 'Sulawesi Tenggara', '311e78cd-730f-438d-92b6-56da1bbfbc77', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(31, 'Maluku', 'cea27bb5-0e5d-441b-8e9d-db6653c61278', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(32, 'Maluku Utara', 'a7a57402-565a-45dd-985e-46a4347570d6', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(33, 'Papua Barat', '989a0e21-f939-4944-a10e-11b59f990b12', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(34, 'Papua', 'beacac2a-11a4-4428-ad80-24a713f0cdb7', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(35, 'Papua Selatan', '6e2d7134-9abd-4c10-a5d2-a44816f9f66f', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(36, 'Papua Tengah', '7a4c9a71-11f3-4405-8661-756b162a97c2', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(37, 'Papua Pegunungan', '6295952c-6e51-4f11-8177-7f445181ebfd', '2024-08-24 03:37:24', '2024-08-24 03:37:24'),
(38, 'Papua Barat Daya', '60b3c05b-64b9-44c0-92a4-a2bff6d69387', '2024-08-24 03:37:24', '2024-08-24 03:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `status_daftar` int(11) NOT NULL DEFAULT 0,
  `uid` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama`, `email`, `password`, `role`, `status_daftar`, `uid`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '$2y$10$EPvhIWxzwa94T2bEvo5w8Ouos0bcEMcdbjSTykK.ZotPZbLWDr4SC', 'Admin', 0, '4d42e97b-7ab4-4c39-a53f-89dfb58428c6', '2024-08-24 01:20:28', '2024-08-24 01:20:28'),
(3, 'camaba', 'camaba@gmail.com', '$2y$10$kW7TpcLvzSox6nXOoCDO0OwHbRia/v8mXBXelbkyTsoIRiAWUmXd.', 'Camaba', 0, '1d9e1b37-a6b3-4d73-ae00-3e499f743845', '2024-08-24 02:46:16', '2024-08-24 02:46:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `tbl_kabupaten`
--
ALTER TABLE `tbl_kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`),
  ADD KEY `tbl_kabupaten_id_provinsi_foreign` (`id_provinsi`);

--
-- Indexes for table `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `tbl_user_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  MODIFY `id_agama` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_kabupaten`
--
ALTER TABLE `tbl_kabupaten`
  MODIFY `id_kabupaten` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;

--
-- AUTO_INCREMENT for table `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  MODIFY `id_pendaftaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id_provinsi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_kabupaten`
--
ALTER TABLE `tbl_kabupaten`
  ADD CONSTRAINT `tbl_kabupaten_id_provinsi_foreign` FOREIGN KEY (`id_provinsi`) REFERENCES `tbl_provinsi` (`id_provinsi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
