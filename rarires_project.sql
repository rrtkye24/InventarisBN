-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 08:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rarires_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `klmpk_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_bidang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `klmpk_alat`
--

CREATE TABLE `klmpk_alat` (
  `kode_klmpk_alat` int(10) UNSIGNED NOT NULL,
  `klmpk_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `kode_lokasi` int(10) UNSIGNED NOT NULL,
  `gedung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lantai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket_ruang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`kode_lokasi`, `gedung`, `lantai`, `ruangan`, `ket_ruang`, `created_at`, `updated_at`) VALUES
(1, 'A', '1', '1', 'Ruang Kepala Sekolah', NULL, NULL),
(2, 'A', '1', '2', 'Ruang Tata Usaha', NULL, NULL),
(3, 'A', '1', '3', 'Pengurus Yayasan', NULL, NULL),
(4, 'A', '1', '4', 'Sekretaris Yayasan', NULL, NULL),
(5, 'A', '1', '5', 'Pantry', NULL, NULL),
(6, 'A', '1', '6', 'VIP', NULL, NULL),
(7, 'A', '1', '7', 'Kamar Mandi', NULL, NULL),
(8, 'A', '2', '1', 'Guru', NULL, NULL),
(9, 'A', '2', '2', 'Rapat', NULL, NULL),
(10, 'A', '2', '3', 'Kamar Mandi', NULL, NULL),
(11, 'B', '1', '1', 'Lab. Bahasa', NULL, NULL),
(12, 'B', '1', '2', 'Lab. IPA', NULL, NULL),
(13, 'B', '1', '3', 'UKS dan BK', NULL, NULL),
(14, 'B', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
(15, 'B', '2', '1', 'Perpustakaan', NULL, NULL),
(16, 'B', '2', '2', 'Ruang BK', NULL, NULL),
(17, 'B', '2', '3', 'Kamar Mandi', NULL, NULL),
(18, 'C', '1', '1', 'Kelas XII BKP', NULL, NULL),
(19, 'C', '1', '2', 'Ruang Pramuka', NULL, NULL),
(20, 'C', '1', '3', 'Ibadah', NULL, NULL),
(21, 'C', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
(22, 'C', '2', '1', 'Kelas XII TB', NULL, NULL),
(23, 'C', '2', '2', 'Kelas XII RPL', NULL, NULL),
(24, 'C', '2', '3', 'Kelas XII MM', NULL, NULL),
(25, 'C', '2', '4', 'Kamar Mandi Putra', NULL, NULL),
(26, 'D', '1', '1', 'Kelas XI BKP', NULL, NULL),
(27, 'D', '1', '2', 'Kelas XI TKRO', NULL, NULL),
(28, 'D', '1', '3', 'Kelas XII TKRO', NULL, NULL),
(29, 'D', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
(30, 'D', '2', '1', 'Kelas XI TB', NULL, NULL),
(31, 'D', '2', '2', 'Kelas XI RPL', NULL, NULL),
(32, 'D', '2', '3', 'Kelas XI MM', NULL, NULL),
(33, 'D', '2', '4', 'Kamar Mandi Putra', NULL, NULL),
(34, 'E', '1', '1', 'Kelas X RPL', NULL, NULL),
(35, 'E', '1', '2', 'Kelas X BKP', NULL, NULL),
(36, 'E', '1', '3', 'OSIS', NULL, NULL),
(37, 'E', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
(38, 'E', '2', '1', 'Kelas X TKRO', NULL, NULL),
(39, 'E', '2', '2', 'Kelas X TB', NULL, NULL),
(40, 'E', '2', '3', 'Kelas X MM', NULL, NULL),
(41, 'E', '2', '4', 'Kamar Mandi Putra', NULL, NULL),
(42, 'F', '1', '1', 'Lab KKPI', NULL, NULL),
(43, 'F', '1', '2', 'Lab RPL', NULL, NULL),
(44, 'F', '1', '3', 'Lab Hardware', NULL, NULL),
(45, 'F', '1', '4', 'Ruang Instruktur', NULL, NULL),
(46, 'F', '1', '5', 'Lab Radio', NULL, NULL),
(47, 'F', '1', '6', 'Kamar Mandi Putri', NULL, NULL),
(48, 'F', '2', '1', 'Lab MM', NULL, NULL),
(49, 'F', '2', '2', 'Lab Film', NULL, NULL),
(50, 'F', '2', '3', 'Lab Make Up', NULL, NULL),
(51, 'F', '2', '4', 'Lab Instruktur MM', NULL, NULL),
(52, 'G', '1', '1', 'Instruktur JB', NULL, NULL),
(53, 'G', '1', '2', 'Dapur Produktif JB', NULL, NULL),
(54, 'G', '1', '3', 'Personal Kitchen JB', NULL, NULL),
(55, 'G', '2', '1', 'Table Maner', NULL, NULL),
(56, 'G', '2', '2', 'Lab Jasa Boga', NULL, NULL),
(57, 'A', '', 'Gudang', 'Alat Kebersihan', NULL, NULL),
(58, 'B', '', 'Gudang', 'Alat Olahraga', NULL, NULL),
(59, 'C', '', 'Gudang', 'Property JB', NULL, NULL),
(60, 'D', '', 'Gudang', 'Kamar', NULL, NULL),
(61, 'E', '', 'Gudang', '', NULL, NULL),
(62, '', '', '', 'Ruang Alat BKP', NULL, NULL),
(63, '', '', '', 'Ruang Instruktur BKP', NULL, NULL),
(64, '', '', '', 'Cafe Alaska', NULL, NULL),
(65, '', '', '', 'Koperasi', NULL, NULL),
(66, '', '', '', 'Lapangan Depan', NULL, NULL),
(67, '', '', '', 'Lapangan Tengah', NULL, NULL),
(68, '', '', '', 'Karpet Hijau', NULL, NULL),
(69, '', '', '', 'Area Parkir', NULL, NULL),
(70, '', '', '', 'Area Garasi', NULL, NULL),
(71, '', '', '', 'Workshop Otomotif', NULL, NULL),
(72, '', '', '', 'Ruang Alat Tkro', NULL, NULL),
(73, '', '', '', 'Ruang Bahan TKRO', NULL, NULL),
(74, '', '', '', 'Ruang Pembelajaran TKRO', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--



INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_13_033041_create_barang', 1),
(5, '2021_09_13_033636_create_lokasi', 1),
(6, '2021_09_13_034714_create_kelompok_alat', 1),
(7, '2021_09_15_030545_create_stok', 1),
(8, '2021_09_21_072613_create_notifications_table', 1),
(9, '2021_09_21_084416_laratrust_setup_tables', 1),
(10, '2021_09_27_072649_create_pinjam', 1),
(11, '2021_09_28_044410_create_level_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id` int(10) UNSIGNED NOT NULL,
  `namapeminjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namabarang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merkbarang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodelokasi` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_brg` int(11) NOT NULL,
  `stok_brg` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `status_id`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'UserAdmin', 'useradmin@gmail.com', 1, NULL, NULL, '$2y$10$OkjV7BUVoAhhhpIKoNYnN.uG5igLlGZTCNsKn/VeG6wqiqRc78S96', 'super_admin', NULL, '2021-10-10 23:18:36', '2021-10-10 23:18:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
INSERT INTO `klmpk_alat` (`kode_klmpk_alat`, `klmpk_alat`) VALUES
(1, 'Mebeler'),
(2, 'Elektronik'),
(3, 'Alat Ukur'),
(4, 'Alat Praktik'),
(5, 'Alat Triner'),
(6, 'Alat Musik'),
(7, 'Kendaraan');
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klmpk_alat`
--
ALTER TABLE `klmpk_alat`
  ADD PRIMARY KEY (`kode_klmpk_alat`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`kode_lokasi`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `klmpk_alat`
--
ALTER TABLE `klmpk_alat`
  MODIFY `kode_klmpk_alat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `kode_lokasi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2021 at 03:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rarires_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_klmpk_alat`
--

CREATE TABLE `jenis_klmpk_alat` (
  `id` int(100) NOT NULL,
  `klmpk-alat` varchar(100) NOT NULL,
  `kode_brg` varchar(100) NOT NULL,
  `jk_alat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_klmpk_alat`
--
INSERT INTO `jenis_klmpk_alat`(`klmpk_alat`, `kode_brg`, `jk_alat`) VALUES
('Mebeler', '001', 'Almari Besi'),
('Mebeler', '002', 'Almari Countener'),
('Mebeler', '003', 'Almari Kaca'),
('Mebeler', '004', 'Almari Kaca'),
('Mebeler', '005', 'Almari Kamera'),
('Mebeler', '006', 'Almari obat kecil'),('Mebeler', '007', 'Almari Wardrobe'),
('Mebeler', '008', 'Bangku Plastik'),('Mebeler', '009', 'Brankas'),
('Mebeler', '010', 'Buffet panjang kayu'),
('Mebeler', '011', 'Cermin'),
('Mebeler', '012', 'dispenser keramik'),
('Mebeler', '013', 'Foto Presiden'),
('Mebeler', '014', 'Foto Wapres'),
('Mebeler', '015', 'Front Office Table'),
('Mebeler', '016', 'Garuda'),
('Mebeler', '017', 'Jam Dinding'),
('Mebeler', '018', 'Kotak P3K'),
('Mebeler', '019', 'Kursi'),
('Mebeler', '020', 'Kursi baso'),
('Mebeler', '021', 'Kursi Beroda'),
('Mebeler', '022', 'Kursi Broadcast'),
('Mebeler', '023', 'Kursi Busa'),
('Mebeler', '024', 'Kursi Salon'),
('Mebeler', '025', 'Lampu Gantung'),
('Mebeler', '026', 'Loker'),
('Mebeler', '027', 'Lukisan'),
('Mebeler', '028', 'Meja kecil'),
('Mebeler', '029', 'Meja Sedang'),
('Mebeler', '030', 'Meja Besar'),
('Mebeler', '031', 'Meja Bar'),
('Mebeler', '032', 'Meja Broadcast'),
('Mebeler', '033', 'Meja bulat'),
('Mebeler', '034', 'Meja bunga/ meja kecil'),
('Mebeler', '035', 'Meja Cuci Alumunium'),
('Mebeler', '036', 'Meja Dapur+Cuci'),
('Mebeler', '037', 'Meja kaca'),
('Mebeler', '038', 'Meja Laboratorium'),
('Mebeler', '039', 'Parfum Dispenser'),
('Mebeler', '040', 'Pataka isi 4 bendera'),
('Mebeler', '041', 'Pigura 20x28cm'),
('Mebeler', '042', 'Rak'),
('Mebeler', '043', 'Sofa'),
('Mebeler', '044', 'Sofa Tamu + Meja'),
('Mebeler', '045', 'Springbed'),
('Mebeler', '046', 'Tempat Tidur Pasien'),
('Mebeler', '047', 'Washtafel Porletab'),
('Mebeler', '048', 'White Board 120 x 240 DF + Stand'),
('Mebeler', '049', 'Whiteboard Besar'),
('Mebeler', '050', 'Whiteboard Kecil'),
('Elektronik', '001', 'Absensi Timetronic'),
('Elektronik', '002', 'AC'),
('Elektronik', '003', 'Active Speaker'),
('Elektronik', '004', 'Barcode Reader'),
('Elektronik', '005', 'Bass Amplifier/Speaker Cabinet'),
('Elektronik', '006', 'Blender'),
('Elektronik', '007', 'Classroom Speaker'),
('Elektronik', '008', 'CPU'),
('Elektronik', '009', 'Dispenser'),
('Elektronik', '010', 'DVD Player'),
('Elektronik', '011', 'Equalizer'),
('Elektronik', '012', 'Exhaust Fan'),
('Elektronik', '013', 'Fake CCTV'),
('Elektronik', '014', 'Headphone'),
('Elektronik', '015', 'Indoor Active Speaker'),
('Elektronik', '016', 'Keyboard'),
('Elektronik', '017', 'Kipas Angin'),
('Elektronik', '018', 'Kulkas'),
('Elektronik', '019', 'Laptop'),
('Elektronik', '020', 'LCD Monitor'),
('Elektronik', '021', 'LCD Monitor Video'),
('Elektronik', '022', 'LCD Projector'),
('Elektronik', '023', 'LCD TV'),
('Elektronik', '024', 'Lemari pendingin'),
('Elektronik', '025', 'Magic com'),
('Elektronik', '026', 'Mesin Ketik'),
('Elektronik', '027', 'Mesin Laminating'),
('Elektronik', '028', 'Mesin Penghancur Kertas'),
('Elektronik', '029', 'Mesin Pengharum ruangan'),
('Elektronik', '030', 'Mic'),
('Elektronik', '031', 'microwave putih'),
('Elektronik', '032', 'Mixer'),
('Elektronik', '033', 'Monitor Tabung'),
('Elektronik', '034', 'Monitor video camera'),
('Elektronik', '035', 'Motherboard'),
('Elektronik', '036', 'Mouse'),
('Elektronik', '037', 'PABX Intercom'),
('Elektronik', '038', 'PC'),
('Elektronik', '039', 'PC Speaker'),
('Elektronik', '040', 'Personal Computer'),
('Elektronik', '041', 'Pesawat Telp'),
('Elektronik', '042', 'Pointer'),
('Elektronik', '043', 'Power Mixer'),
('Elektronik', '044', 'Power Supply'),
('Elektronik', '045', 'Power TOA'),
('Elektronik', '046', 'Printer'),
('Elektronik', '047', 'Printer + Scanner'),
('Elektronik', '048', 'Remote AC'),
('Elektronik', '049', 'Remote AC'),
('Elektronik', '050', 'Scanner'),
('Elektronik', '051', 'Speaker'),
('Elektronik', '052', 'Stand Guitar'),
('Elektronik', '053', 'Stand Mic'),
('Elektronik', '054', 'Televisi'),
('Elektronik', '055', 'TOA Coloum'),
('Elektronik', '056', 'TOA Cone Speaker'),
('Elektronik', '057', 'UPS'),
('Elektronik', '058', 'Wifi Adaptor'),
('Alat Ukur', '001', 'AC regulator'),
('Alat Ukur', '002', 'Ukur Tinggi Badan'),
('Alat Ukur', '003', 'Batery tester'),
('Alat Ukur', '004', 'Bore gauge'),
('Alat Ukur', '005', 'compossesor tester'),
('Alat Ukur', '006', 'cup ukur plastik'),
('Alat Ukur', '007', 'Cylinder bore gauge'),
('Alat Ukur', '008', 'Dial gauge'),
('Alat Ukur', '009', 'Diesel compression tester'),
('Alat Ukur', '010', 'Dwell tester'),
('Alat Ukur', '011', 'Fuller gauge'),
('Alat Ukur', '012', 'Gelas ukur'),
('Alat Ukur', '013', 'Hidrometer'),
('Alat Ukur', '014', 'Injector diesel tester'),
('Alat Ukur', '015', 'Jangka sorong'),
('Alat Ukur', '016', 'Kalorimeter'),
('Alat Ukur', '017', 'Kunci momen'),
('Alat Ukur', '018', 'Meteran'),
('Alat Ukur', '019', 'Mikrometer'),
('Alat Ukur', '020', 'Mistar busur'),
('Alat Ukur', '021', 'Multitester'),
('Alat Ukur', '022', 'Penggaris Siku Besi'),
('Alat Ukur', '023', 'Radiator & radiator cap tester'),
('Alat Ukur', '024', 'Rambu Ukur Aluminium 3 meter'),
('Alat Ukur', '025', 'Scanner'),
('Alat Ukur', '026', 'Screw gauge'),
('Alat Ukur', '027', 'sendok ukur plastik'),
('Alat Ukur', '028', 'Siku'),
('Alat Ukur', '029', 'Spring scale'),
('Alat Ukur', '030', 'Stopwacth'),
('Alat Ukur', '031', 'Tabung Ukur 10 ml'),
('Alat Ukur', '032', 'Tensi Meter'),
('Alat Ukur', '033', 'Termometer'),
('Alat Ukur', '034', 'Timbangan'),
('Alat Trainer', '001', 'AC trainer'),
('Alat Trainer', '002', 'Car trainer'),
('Alat Trainer', '003', 'Engine death'),
('Alat Trainer', '004', 'Mesin sepeda motor'),
('Alat Trainer', '005', 'Power trainer'),
('Alat Trainer', '006', 'Trainer AC'),
('Alat Trainer', '007', 'Trainer Bensin'),
('Alat Trainer', '008', 'Trainer Diesel'),
('Alat Trainer', '009', 'Trainer EFI'),
('Alat Trainer', '010', 'Trainer injection pump'),
('Alat Trainer', '011', 'Trainer kelistrikan Body'),
('Alat Trainer', '012', 'Trainer pengapian'),
('Alat Trainer', '013', 'Trainer pengisian'),
('Alat Trainer', '014', 'Trainer poros roda & gardan'),
('Alat Trainer', '015', 'Trainer Power Window'),
('Alat Trainer', '016', 'Trainer rem hidrolik'),
('Alat Trainer', '017', 'Trainer sepeda motor'),
('Alat Trainer', '018', 'Trainer steering'),
('Alat Trainer', '019', 'Trainer transmisi'),
('Alat Musik', '001', 'Acoustic Guitar/Yamaha C40'),
('Alat Musik', '002', 'Acoustic Guitar/Yamaha C70'),
('Alat Musik', '003', 'Bongo (Percussion)'),
('Alat Musik', '004', 'Combo Bass/Rhoud BC300'),
('Alat Musik', '005', 'Combo Sound Mixer/RB Series 600'),
('Alat Musik', '006', 'Drum/Prince'),
('Alat Musik', '007', 'Drum Box/Pert'),
('Alat Musik', '008', 'Electric Basses/Gillmore'),
('Alat Musik', '009', 'Electric Guitar/Fender'),
('Alat Musik', '010', 'Electric Guitar/Rockwell'),
('Alat Musik', '011', 'Guitar Amplifier/Speaker Cabinet/Russel RG-60'),
('Alat Musik', '012', 'Keyboard/Rolland'),
('Alat Kendaraan', '001', 'BUS/H 1165 YW'),
('Alat Kendaraan', '002', 'BUS/H 1167 YW'),
('Alat Kendaraan', '003', 'L 300 Putih/ H 8604 QC'),
('Alat Kendaraan', '004', 'L 300 SILVER/H 9377 RY'),
('Alat Kendaraan', '005', 'REVO/H 4037 VZ'),
('Alat Kendaraan', '006', 'XENIA/H 8961 HY'),
( 'Alat praktik', '001', 'Ac Regulator'),
( 'Alat praktik', '002', 'Access Point'),
( 'Alat praktik', '003', 'Air Compressor'),
( 'Alat praktik', '004', 'Air duster'),
( 'Alat praktik', '005', 'Air impact'),
( 'Alat praktik', '006', 'Alat Potong keramik'),
( 'Alat praktik', '007', 'Ac Anglo'),
( 'Alat praktik', '008', 'Asbak'),
( 'Alat praktik', '009', 'Auto Level'),
( 'Alat praktik', '010', 'Aoto scope'),
( 'Alat praktik', '011', 'Baki'),
( 'Alat praktik', '012', 'balon wish/kocokan telur'),
( 'Alat praktik', '013', 'Barbeque brush'),
( 'Alat praktik', '014', 'Baskom'),
( 'Alat praktik', '015', 'Battery changer'),
( 'Alat praktik', '016', 'Bearing puller'),
( 'Alat praktik', '017', 'Bending'),
( 'Alat praktik', '018', 'Betel'),
( 'Alat praktik', '019', 'Beverage Dispenser'),
( 'Alat praktik', '020', 'Blok V'),
( 'Alat praktik', '021', 'Bola Basket'),
( 'Alat praktik', '022', 'Bola Futsal'),
( 'Alat praktik', '023', 'Bola Kasti'),
( 'Alat praktik', '024', 'Bola Sepak'),
( 'Alat praktik', '025', 'Bola Sepak Takraw'),
( 'Alat praktik', '026', 'Bola Softball'),
( 'Alat praktik', '027', 'Bola Voli'),
( 'Alat praktik', '028', 'Bor duduk'),
( 'Alat praktik', '029', 'Bor Tangan'),
( 'Alat praktik', '030', 'Bowl plastic(Mangkuk)'),
( 'Alat praktik', '031', 'Bowl simple 21cm'),
( 'Alat praktik', '032', 'Bowl saintless'),
( 'Alat praktik', '033', 'Brake tool kit'),
( 'Alat praktik', '034', 'Braket Projector'),
( 'Alat praktik', '035', 'Butter knife'),
( 'Alat praktik', '036', 'Butter spreader'),
( 'Alat praktik', '037', 'Cable Tester'),
( 'Alat praktik', '038', 'Caddytool'),
( 'Alat praktik', '039', 'Cake decoration'),
( 'Alat praktik', '040', 'Cake tong/penjepit kue'),
( 'Alat praktik', '041', 'Cakram'),
( 'Alat praktik', '042', 'Candle Holder keramik'),
( 'Alat praktik', '043', 'Cangkir Teh/ Kopi(hanya saucer)') ,
( 'Alat praktik', '044', 'Cangkir Teh/ Kopi+saucer'),
( 'Alat praktik', '045', 'Cangkul'),
( 'Alat praktik', '046', 'Card Reader'),
( 'Alat praktik', '047', 'Casing CPU'),
( 'Alat praktik', '048', 'Catut Kakaktua'),
( 'Alat praktik', '049', 'CD Windows 7 HP'),
( 'Alat praktik', '050', 'CD-VGA'),
( 'Alat praktik', '051', 'CD-WINDOWS'),
( 'Alat praktik', '052', 'Centong melamin'),
( 'Alat praktik', '053', 'Centong nasi kayu'),
( 'Alat praktik', '054', 'Centong plastik'),
( 'Alat praktik', '055', 'Cereal bowl'),
( 'Alat praktik', '056', 'Cetakan Buah Cocktail'),
( 'Alat praktik', '057', 'Ceting nasi(pink,hijau,biru)'),
( 'Alat praktik', '058', 'Cetok Bulat'),
( 'Alat praktik', '059', 'Cetok Kotak'),
( 'Alat praktik', '060', 'Cetok Lidah/Lancip'),
( 'Alat praktik', '061', 'Champagne flutter glass'),
( 'Alat praktik', '062', 'Charger Baterai'),
( 'Alat praktik', '063', 'Charger DSLR'),
( 'Alat praktik', '064', 'Charger Handycam'),
( 'Alat praktik', '065', 'Charger langsung kamera'),
( 'Alat praktik', '066', 'Charger Sony'),
( 'Alat praktik', '067', 'Circular Saw'),
( 'Alat praktik', '068', 'Clapper'),
( 'Alat praktik', '069', 'Cobek'),
( 'Alat praktik', '070', 'Cocktail Glass'),
( 'Alat praktik', '071', 'Compression tester'),
( 'Alat praktik', '072', 'Cones 1 set'),
( 'Alat praktik', '073', 'Converter Vidio'),
( 'Alat praktik', '074', 'Corong 6 cm'),
( 'Alat praktik', '075', 'Creeper'),
( 'Alat praktik', '076', 'Crimping plier'),
( 'Alat praktik', '077', 'Crimping Tools'),
( 'Alat praktik', '078', 'Cutting board(Talenan)'),
( 'Alat praktik', '079', 'Dandang'),
( 'Alat praktik', '080', 'Deep Plate ijo'),
( 'Alat praktik', '081', 'Dessert fork'),
( 'Alat praktik', '082', 'Dessert plate'),
( 'Alat praktik', '083', 'Digital Theodolite'),
( 'Alat praktik', '084', 'Dinner fork'),
( 'Alat praktik', '085', 'Dinner knife'),
( 'Alat praktik', '086', 'Dinner Plate'),
( 'Alat praktik', '087', 'Dinner spoon'),
( 'Alat praktik', '088', 'Dongkrak buaya'),
( 'Alat praktik', '089', 'Drill Impact(Bor Tangan)'),
( 'Alat praktik', '090', 'DVD Eksternal'),
( 'Alat praktik', '091', 'EEHW 20-220 C (BMN) ECONA EXHAUST HOOD ISLAND TYPE(CENTER) JOB'),
( 'Alat praktik', '092', 'EEHW 20-220 L/R (BMN) ECONA EXHAUST HOOD-ISLAND TYPE(LEFT/RIGHT)(JOB)'),
( 'Alat praktik', '093', 'EEHW 20-220 L/R(BMN) ECONA EXHAUST HOOD-ISLAND TYPE(LEFT/RIGHT)(JOB)'),
( 'Alat praktik', '094', 'Egg stand keramik'),
( 'Alat praktik', '095', 'Electric Coffee Boiler'),
( 'Alat praktik', '096', 'Electric Coffee Maker'),
( 'Alat praktik', '097', 'Elektrik knife'),
( 'Alat praktik', '098', 'Elektrik Molen'),
( 'Alat praktik', '099', 'Elektronik tool set'),
( 'Alat praktik', '100', 'Ember Adukan'),
( 'Alat praktik', '101','Ember Adukan Besar'),
( 'Alat praktik', '102', 'EPSO 9-75 POT SINK W/SPLASH BACK'),
( 'Alat praktik', '103', 'ERP 12-50 ADJUST TABLE PUNCHED PAN RACK'),
( 'Alat praktik', '104', 'ESDO 12-75 C DOUBLE SINK TABLE W/SPLASH'),
( 'Alat praktik', '105', 'ESDO 12-75 C DOUBLE SINK TABLE W/SPLASH'),
( 'Alat praktik', '106', 'ET 1(SMK) ECONA WORK TABLE W/SB(X)'),
( 'Alat praktik', '107', 'ET 12-75 WORK TABLE W/SWING DOOR'),
( 'Alat praktik', '108', 'ET 9-75 WORK TABLE W/UNDERSHELF W/O S'),
( 'Alat praktik', '109', 'ET1 (SMK) ECONA WORK TABLE W/SB(X)'),
( 'Alat praktik', '110', 'ETA 19-20 WORK TABLE W/UNDERSHELF W/O S'),
( 'Alat praktik', '111', 'ETDO  9-75 CLEAN DISH TABLE W/SPLASH BA'),
( 'Alat praktik', '112', 'ETSO 9-75 R SOILED TABLE W/SCRAP HOLE A '),
( 'Alat praktik', '113', 'EUCSD 9-60 UPRIGHT CABINET W/SWING DOOR'),
( 'Alat praktik', '114', 'Fender cover'),
( 'Alat praktik', '115', 'Filter Gradual Kit 52mm'),
( 'Alat praktik', '116', 'Flash Eksternal SPEED LITE YN 560 IV'),
( 'Alat praktik', '117', 'Flash Eksternal SPEED LITE YN 5603'),
( 'Alat praktik', '118', 'Flute glass'),
( 'Alat praktik', '119', 'FOOD BLENDER MIXER (BLIXER 3)33141)'),
( 'Alat praktik', '120', 'FRYER GFE/40'),
( 'Alat praktik', '121', 'FST 8-50(A) FOOD SERVICE TROLLEY'),
( 'Alat praktik', '122', 'Garpu'),
( 'Alat praktik', '123', 'Garpu buah'),
( 'Alat praktik', '124', 'Garpu tiram'),
( 'Alat praktik', '125', 'Garputala Kotak Resonansi'),
( 'Alat praktik', '126', 'Garputala set 4'),
( 'Alat praktik', '127', 'Gear puller'),
( 'Alat praktik', '128', 'Gelas brandy'),
( 'Alat praktik', '129', 'Gelas gelael'),
( 'Alat praktik', '130', 'Gelas kaca'),
( 'Alat praktik', '131', 'Gelas kimia 250 ml'),
( 'Alat praktik', '132', 'Gelas Labu'),
( 'Alat praktik', '133', 'Gelas pilsner'),
( 'Alat praktik', '134', 'Gelas sri ratu'),
( 'Alat praktik', '135', 'Gelas tulip'),
( 'Alat praktik', '136', 'Generator'),
( 'Alat praktik', '137', 'Gergaji besi'),
( 'Alat praktik', '138', 'Gergaji Kayu 19'),
( 'Alat praktik', '139', 'Gergaji kayu 20'),
( 'Alat praktik', '140', 'Gergaji kayu 20'),
( 'Alat praktik', '141', 'Gergaji Multiplek'),
( 'Alat praktik', '142', 'Gerinda duduk'),
( 'Alat praktik', '143', 'Gerinda potong'),
( 'Alat praktik', '144', 'Gerinda tangan'),
( 'Alat praktik', '145', 'Glass block'),
( 'Alat praktik', '146', 'Glass footed platter'),
( 'Alat praktik', '147', 'Glass Plate Oval ijo'),
( 'Alat praktik', '148', 'Glove Softball Kulit'),
( 'Alat praktik', '149', 'Goblet glass'),
( 'Alat praktik', '150', 'GREASE TRAP 4-3-2 GREASE TRAP'),
( 'Alat praktik', '151', 'Grinder'),
( 'Alat praktik', '152', 'Gunting Bunga'),
( 'Alat praktik', '153', 'Gunting plat'),
( 'Alat praktik', '154', 'Hand grease gun'),
( 'Alat praktik', '155', 'Hand mixer'),
( 'Alat praktik', '156', 'Hand oil gun'),
( 'Alat praktik', '157', 'Hand oil pump'),
( 'Alat praktik', '158', 'Hand Pump'),
( 'Alat praktik', '159', 'Hand rivet'),
( 'Alat praktik', '160', 'Handley sney'),
( 'Alat praktik', '161', 'Handley tap'),
( 'Alat praktik', '162', 'HandyCam DX6 Spectra'),
( 'Alat praktik', '163', 'Harddisk Eksternal'),
( 'Alat praktik', '165', 'Headset'),
( 'Alat praktik', '166', 'Helm proyek'),
( 'Alat praktik', '167', 'Hidrolic presure'),
( 'Alat praktik', '168', 'Hub'),
( 'Alat praktik', '169', 'Ice cream cup glass'),
( 'Alat praktik', '170', 'impulse scaller'),
( 'Alat praktik', '171', 'INSERT OPTIMA(40 MM)',
( 'Alat praktik', '172', 'Irik bambu'),
( 'Alat praktik', '173', 'Irus batok'),
( 'Alat praktik', '174', 'Jackstand'),
( 'Alat praktik', '175', 'Jangka Sorong'),
( 'Alat praktik', '176', 'Jangka Ring Basket'),
( 'Alat praktik', '177', 'Jidak baja ringan'),
( 'Alat praktik', '178', 'Jiddar'),
( 'Alat praktik', '179', 'Jigsaw'),
( 'Alat praktik', '180', 'Juice Glass'),
( 'Alat praktik', '181', 'Kabel Harddisk'),
( 'Alat praktik', '182', 'Kabel VGA'),
( 'Alat praktik', '183', 'Kaca las'),
( 'Alat praktik', '184', 'Kacamata'),
( 'Alat praktik', '185', 'Kain skriting'),
( 'Alat praktik', '186', 'Kaki Tiga Besi'),
( 'Alat praktik', '187', 'Kamera Analog'),
( 'Alat praktik', '188', 'Kamera DSLR'),
( 'Alat praktik', '189', 'Kamera pocket'),
( 'Alat praktik', '190', 'Kamera Vidio Sony'),
( 'Alat praktik', '191', 'Kaos Team Basket'),
( 'Alat praktik', '192', 'Kaos Team Bola Volly'),
( 'Alat praktik', '193', 'Kapak'),
( 'Alat praktik', '194', 'Kawat Nikron'),
( 'Alat praktik', '195', 'Ketok huruf'),
( 'Alat praktik', '196', 'Kikir'),
( 'Alat praktik', '197', 'Kit Eleltronik'),
( 'Alat praktik', '198', 'Kitchen Scisseors'),
( 'Alat praktik', '199', 'Klem'),
( 'Alat praktik', '200', 'Klem freon'),
( 'Alat praktik', '201', 'Knife/pisau daging sedang'),
( 'Alat praktik', '202', 'Kompas Bidik'),
( 'Alat praktik', '203', ' Kompas 2 Tungku'),
( 'Alat praktik', '204', 'Kompas Gas 2 Mata'),
( 'Alat praktik', '205', 'Kompor Plat'),
( 'Alat praktik', '206', 'Kompresor'),
( 'Alat praktik', '207', 'Kontainer besar'),
( 'Alat praktik', '208', 'Kontainer kecil'),
( 'Alat praktik', '209', 'Kontainer sedang'),
( 'Alat praktik', '210', 'Kunci bending besi'),
( 'Alat praktik', '211', 'Kunci busi'),
( 'Alat praktik', '212', 'Kunci filter oli'),
( 'Alat praktik', '213', 'Kunci hexagonal(L)'),
( 'Alat praktik', '214', 'Kunci hexagonal(L) bintang'),
( 'Alat praktik', '215', 'Kunci inggris'),
( 'Alat praktik', '216', 'Kunci klep'),
( 'Alat praktik', '217', 'Kunci kombinasi'),
( 'Alat praktik', '218', 'Kunci L'),
( 'Alat praktik', '219', 'Kunci nipel'),
( 'Alat praktik', '220', 'Kunci oli gardar'),
( 'Alat praktik', '221', 'Kunci pas'),
( 'Alat praktik', '222', 'Kunci pas ring'),
( 'Alat praktik', '223', 'Kunci pipa'),
( 'Alat praktik', '224', 'Kunci Ring'),
( 'Alat praktik', '225', 'Kunci Roda'),
( 'Alat praktik', '226', 'Kunci socket'),
( 'Alat praktik', '227', 'Kunci T'),
( 'Alat praktik', '228', 'Kunci Torx (bintang)'),
( 'Alat praktik', '229', 'Kunci Tutup klep'),
( 'Alat praktik', '230', 'Laddle besar'),
( 'Alat praktik', '231', 'Laddle kecil'),
( 'Alat praktik', '232', 'Laddle saintles'),
( 'Alat praktik', '233', 'Lampu'),
( 'Alat praktik', '234', 'Lampu Broadcast(BesaR)1000 watt'),
( 'Alat praktik', '235', 'Lampu Everbait'),
( 'Alat praktik', '236', 'Lampu fotografi'),
( 'Alat praktik', '237', 'Lampu Halogen 500w'),
( 'Alat praktik', '238', 'Lampu Lighting(stand)'),
( 'Alat praktik', '239', 'Lampu lighting Broadcast'),
( 'Alat praktik', '240', 'Lampu sorot'),
( 'Alat praktik', '241', 'LAN CARD'),
( 'Alat praktik', '242', 'leaddle stainles'),
( 'Alat praktik', '243', 'LED Photo Vidio'),
( 'Alat praktik', '244', 'Lembing AL'),
( 'Alat praktik', '245', 'lensa Nikon D3000'),
( 'Alat praktik', '246', 'linggis'),
( 'Alat praktik', '247', 'Loyang Brioce/kembang-kembang'),
( 'Alat praktik', '248', 'Loyang oven 28x28x1,5 cm'),
( 'Alat praktik', '249', 'Lumpang dan Alu'),
( 'Alat praktik', '250', 'Lup Sedang'),
( 'Alat praktik', '251', 'Magnet Batang Besar'),
( 'Alat praktik', '252', 'Magnet Jarum 	Berpenumpu'),
( 'Alat praktik', '253', 'Magnet U'),
( 'Alat praktik', '254', 'Magnetik stand'),
( 'Alat praktik', '255', 'Magnetik stand'),
( 'Alat praktik', '256', 'Mainboard'),
( 'Alat praktik', '257', 'Mangkok'),
( 'Alat praktik', '258', 'Margarita glass(saucer'),
( 'Alat praktik', '259', 'Mata Obeng'),
( 'Alat praktik', '260', 'Matras Senam Lantai'),
( 'Alat praktik', '261', 'Meet hammer'),
( 'Alat praktik', '262', 'Meat Mincer'),
( 'Alat praktik', '263', 'MEAT SLICER 1OO GLT MINERVA'),
( 'Alat praktik', '264', 'Meja kerja praktikum'),
( 'Alat praktik', '265', 'Meja Praktek'),
( 'Alat praktik', '266', 'Meja Putar Cake'),
( 'Alat praktik', '267', 'Meja rata'),
( 'Alat praktik', '268', 'Memory Card 16gb Class 10'),
( 'Alat praktik', '269', 'Memory Card 1gb'),
( 'Alat praktik', '270', 'Memory Card 2gb'),
( 'Alat praktik', '271', 'Memory Card 4gb Class 4'),
( 'Alat praktik', '272', 'Memory Card 8gb Class 4'),
( 'Alat praktik', '273', 'Mesin bor tangan'),
( 'Alat praktik', '274', 'Mesin las'),
( 'Alat praktik', '275', 'Mesin molen cor'),
( 'Alat praktik', '276', 'Mesin pembuat pasta/mie'),
( 'Alat praktik', '277', 'Mesin poles'),
( 'Alat praktik', '278', 'Mesin sepeda motor'),
( 'Alat praktik', '279', 'Meteram Besi 5 meter'),
( 'Alat praktik', '280', 'Micrometer 0-25'),
( 'Alat praktik', '281', 'Micrometer Secrup'),
( 'Alat praktik', '282', 'Microphone'),
( 'Alat praktik', '283', 'Microskrop'),
( 'Alat praktik', '284', 'Mikrometer stand'),
( 'Alat praktik', '285', 'Milk Jug'),
( 'Alat praktik', '286', 'Milkshake glass'),
( 'Alat praktik', '287', 'Mini Router(Mesin propil Kayu)'),
( 'Alat praktik', '288', 'Mixer'),
( 'Alat praktik', '289', 'Mixer Optima OPH-7'),
( 'Alat praktik', '290', 'Mobile Hub'),
( 'Alat praktik', '291', 'Modem 4G'),
( 'Alat praktik', '292', 'Mouse Pad'),
( 'Alat praktik', '294', 'Multitester'),
( 'Alat praktik', '295', 'Nampan grabah'),
( 'Alat praktik', '296', 'Napkin'),
( 'Alat praktik', '297', 'NBB 6-60 BUTCHER BLOK'),
( 'Alat praktik', '298', 'NCG 661 GAS COMBI STEAMER'),
( 'Alat praktik', '299', 'NDWE-30/IP'),
('Alat praktik','300', 'Neraca 3 Lengan'),
('Alat praktik','301', 'Neraca Digital'),
('Alat praktik','302', 'Neraca Pegas'),
('Alat praktik','303',  'Net Takraw'),
('Alat praktik','304',	'Net Voli'),
('Alat praktik','305',	'NF G4-2/1 N7.4 NAYATI REFRI CHILLER CAB.'),
('Alat praktik','306',	'NF G4-2/1 N7.4 NAYATI RERFRI FREEZER CAB.'),
('Alat praktik','307',	'NGBP 60 DRC MR GAS BOILLING PAN'),
('Alat praktik','308',	'NGBP 8-90'),
('Alat praktik','309',	'NGCB 8--75 OC MR GAS CHAR BROILER' ),
('Alat praktik','310',	'NGETL 6-60 GAS STOCK POT STOVE'),
('Alat praktik','312',	'NGK 6-75 C GAS KWALIE RANGE'),
('Alat praktik','313',	'NGN 6-75 MR GAS NOODLE BOILER'),
('Alat praktik','314',	'NGR 8-75 MR GAS OPEN BURNERS W/OVEN' ),
('Alat praktik','315',	'NGRC 3-22 RICE COOKER'),
('Alat praktik','316',	'NGTP 8-75 MR GAS TILTING PAN' ),
('Alat praktik','317',	'nicerdicer 1 set'),
('Alat praktik','318',	'Nikon Coolpix'),
('Alat praktik','319',	'Nipel coupler'),
('Alat praktik','320',	'Notebook'),
('Alat praktik','321',	'NRT 2C 25O N7.2 NAYATI REFRI CHILLER CTR'),
('Alat praktik','322',	'nut cracker'),
('Alat praktik','323',	'Obeng'),
('Alat praktik','324',	'Obeng Elektrik'),
('Alat praktik','325',	'Obeng ketok'),
('Alat praktik','326',	'Obeng Mekanik' ),
('Alat praktik','327',	'Obeng Mekanik 1 Set'),
('Alat praktik','328',	'Obeng Min'),
('Alat praktik','329',	'Obeng Paket'),
('Alat praktik','330',	'Obeng Plus'),
('Alat praktik','331',	'Obeng Plus Min'),
('Alat praktik','332',	'Oil can'),
('Alat praktik','333',	'Old fashion glass'),
('Alat praktik','334',	'Oven'),
('Alat praktik','335',	'Pahat'),
('Alat praktik','336',	'Palu' ),
('Alat praktik','337',	'Pan 21cm'),
('Alat praktik','338',	'Pan dish'),
('Alat praktik','339',	'Pan/ wajan besar'),
('Alat praktik','340',	'Pan/ wajan besi sedang'),
('Alat praktik','341',	'Pan/ wajan tembaga sedang'),
('Alat praktik','342',	'Panci' ),
('Alat praktik','343',	'Panci 24cm'),
('Alat praktik','344',	'Papan alat'),
('Alat praktik','345',	'parutan keju'),
('Alat praktik','346',	'PCI Adaptor'),
('Alat praktik','347',	'Peeler'),
('Alat praktik','348',	'Pegas'),
('Alat praktik','349',	'Pelat Tetes'),
('Alat praktik','350',	'Peluru'),
('Alat praktik','351',	'Pemancar Radio'),
('Alat praktik','352',	'Pemancar TV'),
('Alat praktik','353',	'Pemanggang roti'),
('Alat praktik','354',	'Pembakar Spirtus'),
('Alat praktik','355',	'Pembengkok Tulangan'),
('Alat praktik','356',	'Pembuka ban'),
('Alat praktik','357',	'Pembuka botol'),
('Alat praktik','358',	'pembuka kaleng'),
('Alat praktik','359',	'Pen Tablet'),
('Alat praktik','360',	'penghangat roti'),
('Alat praktik','361',	'Penitik'),
('Alat praktik','362',	'Penjepit Tabung Kayu'),
('Alat praktik','363',	'Penyaring minyak'),
('Alat praktik','364','Penyetel jari roda'),
('Alat praktik','365',	'Percobaan Hukum Ohm'),
('Alat praktik','366',	'Perforator'),
('Alat praktik','367','Pilsner glass'),
('Alat praktik','368',	'Pinset Lurus'),
('Alat praktik','369','Piring ceper'),
('Alat praktik','370',	'Piring Daun Pisang ijo'),
('Alat praktik','371',	'Piring Hidang Segi Empat Kecil'),
('Alat praktik','372',	'Piring Makan'),
('Alat praktik','373','Piring Melamin'),
('Alat praktik','374',	'Piring Oval'),
('Alat praktik','375','Pisau 8 inch'),
('Alat praktik','376',	'pisau carving 1set'),
('Alat praktik','377','Pisau gerigi'),
('Alat praktik','378',	'pisau kecil'),
('Alat praktik','379',	'Piston ring compressor'),
('Alat praktik','380',	'Piston ring compressor'),
('Alat praktik','381',	'Piston ring expander'),
('Alat praktik','382',	'Planer'),
('Alat praktik','383',	'Plate Oval Relief ijo'),
('Alat praktik','384',	'Plate Simple kotak'),
('Alat praktik','385',	'PMSP 9-5/18 FM 5'),
('Alat praktik','386',	'Pompa vacuum AC'),
('Alat praktik','387',	'Post lift'),
('Alat praktik','388',	'PRE RINSE OPTIMA NGS GI.0005'),
('Alat praktik','389',	'Processor Core I5'),
('Alat praktik','390',	'Punch chisel'),
('Alat praktik','391',	'Radiator flush & fill kit'),
('Alat praktik','392',	'Ragum'),
('Alat praktik','393',	'Ram 2GB'),
('Alat praktik','394',	'Rambu Ukur Aluminium'),
('Alat praktik','395',	'regulator'),
('Alat praktik','396',	'Rocky double'),
('Alat praktik','397',	'Rocky glass standart'),
('Alat praktik','398',	'Rocky Glass/shoot glass'),
('Alat praktik','399',	'Rocky medium'),
('Alat praktik','400',	'Rol Background foto'),
('Alat praktik','401',	'Roskam Baja'),
('Alat praktik','402',	'Roskam Kayu'),
('Alat praktik','403',	'Roskam PVC'),
('Alat praktik','404',	'Router Board'),
('Alat praktik','405',	'Salt & Pepper'),
('Alat praktik','406',	'Salt & Pepper 1 set'),
('Alat praktik','407',	'Saringan'),
('Alat praktik','408',	'Sauce Plate'),
('Alat praktik','409',	'Scoop beras'),
('Alat praktik','410',	'Seafood Cracker'),
('Alat praktik','411',	'Sekop' ),
('Alat praktik','412',	'Selang gas stainles'),
('Alat praktik','413',	'Selang Plastik 15 m'),
('Alat praktik','414',	'Sendok ice cream'),
('Alat praktik','415',	'Sendok makan'),
('Alat praktik','416',	'sendok sup'),
('Alat praktik','417',	'Sendok tanduk'),
('Alat praktik','418',	'Sendok tehh' ),
('Alat praktik','419',	'Sepatu Bot'),
('Alat praktik','420',	'Serok GG. Kayu'),
('Alat praktik','421',	'Serok Parabola'),
('Alat praktik','422',	'Serok stainles'),
('Alat praktik','423',	'Shaker 500 ml'),
('Alat praktik','424',	'sharpening stone'),
('Alat praktik','425',	'Show Plate bundar'),
('Alat praktik','426',	'Show plate kotak'),
('Alat praktik','427',	'Showplate persegi panjang'),
('Alat praktik','428',	'Sikat kawat'),
('Alat praktik','429',	'Sikat Tabung Reaksi'),
('Alat praktik','430',	'Siku tukang'),
('Alat praktik','431',	'Sketmat 150x0,02 mm kw 1'),
('Alat praktik','432',	'Skipping'),
('Alat praktik','433',	'Snail fork'),
('Alat praktik','434',	'Snei Pipa'),
('Alat praktik','435',	'Softbox AW 250+Tripod+Payung+Box'),
('Alat praktik','436',	'Solder'),
('Alat praktik','437',	'Soup cup & Saucer (hanya cup)'),
('Alat praktik','438',	'Soup cup & Saucer (hanya saucer)'),
('Alat praktik','439',	'Soup cup & Saucer lengkap'),
('Alat praktik','440',	'Soup spoon/sendok sup'),
('Alat praktik','441','Spatula'),
('Alat praktik','442',	'Spet icing set 1set'),
('Alat praktik','443','Sprey gun/ spet cet'),
('Alat praktik','444',	'SST Electrical'),
('Alat praktik','445','Stand Background'),
('Alat praktik','446',	'STAND COMBI STEAMER NCE 611'),
('Alat praktik','447','Stand Foto'),
('Alat praktik','448',	'Starship frying pan'),
('Alat praktik','449',	'Statif'),
('Alat praktik','450',	'STEAMER KIT ADDITIONAL KIT F/NGN 6-75'),
('Alat praktik','451',	'Stetoscope'),
('Alat praktik','452',	'Stick Kasti' ),
('Alat praktik','453',	'Stick Softball'),
('Alat praktik','454',	'Strainer stainless'),
('Alat praktik','455',	'STRAINER(18CM)'),
('Alat praktik','456',	'strainer/ saringan'),
('Alat praktik','457',	'Sugar bowl'),
('Alat praktik','458',	'SUSHI MAT'),
('Alat praktik','459',	'Switch-Hub'),
('Alat praktik','460',	'Tablet PC'),
('Alat praktik','461',	'tabung gas 14,7 kg'),
('Alat praktik','462',	'Tabung Gas 3Kg'),
('Alat praktik','463',	'Tabung Reaksi'),
('Alat praktik','464',	'Tackle'),
('Alat praktik','465',	'Tang buaya'),
('Alat praktik','466',	'Tang kombinasi'),
('Alat praktik','467',	'Tang Lancip'),
('Alat praktik','468',	'Tang potong'),
('Alat praktik','469',	'Tang snap ring'),
('Alat praktik','470',	'Tanggem pipa 10'),
('Alat praktik','471',	'Tanggem pipa 12'),
('Alat praktik','472',	'Tangki Gelombang'),
('Alat praktik','473',	'Teflon grill'),
('Alat praktik','474',	'Teko'),
('Alat praktik','475',	'Teko Gerabah'),
('Alat praktik','476',	'Teko keramik putih besar'),
('Alat praktik','477',	'Teko keramik putih kecil'),
('Alat praktik','478',	'Telenan kayu'),
('Alat praktik','479',	'Tempat Gula Cair&creamer'),
('Alat praktik','480',	'Tempat saos bulat'),
('Alat praktik','481',	'Tempat saos kotak melamin'),
('Alat praktik','482',	'Termos nasi'),
('Alat praktik','483',	'Tespen'),
('Alat praktik','484',	'Throlly Material/Wheel Barrows'),
('Alat praktik','485',	'Tilting Video Mixer'),
('Alat praktik','486',	'Timbangan Digital 30kg'),
('Alat praktik','487',	'Timing light'),
('Alat praktik','488',	'Toaster Denpoo'),
('Alat praktik','489',	'Tongkat Estafet'),
('Alat praktik','490',	'Toolbox'),
('Alat praktik','491',	'Toolkit'),
('Alat praktik','492',  'Topeng las+kaca'),
('Alat praktik','493',	'Toples'),
('Alat praktik','494',	'TP – LINK TL-WN722N'),
('Alat praktik','495',	'TP Link 24 channel'),
('Alat praktik','496',	'Tracker'),
('Alat praktik','497',	'Tracker magnet'),
('Alat praktik','498',	'Transforming AC'),
('Alat praktik','499',	'Tray/baki'),
('Alat praktik','500',	'Triangle Bowl'),
('Alat praktik','501',	'Tripod Aluminium'),
('Alat praktik','502',	'Tripod Kamera' ),
('Alat praktik','503',	'Tripod lampu'),
('Alat praktik','504',	'Troley Aki'),
('Alat praktik','505',	'Trolley'),
('Alat praktik','506',	'tune up analyzer'),
('Alat praktik','507',	'Tune Up kit'),
('Alat praktik','508',	'Tutup panci kaca'),
('Alat praktik','509',	'Tutup telinga'),
('Alat praktik','510',	'Tyre inflating'),
('Alat praktik','511',	'Unting-unting'),
('Alat praktik','512',	'USB HUB'),
('Alat praktik','513',	'Vacuum fuel pump tester'),
('Alat praktik','514',	'Vacuum/pressure brake kit'),
('Alat praktik','515',	'Valve spring compressor'),
('Alat praktik','516',	'Valve spring compressor'),
('Alat praktik','517',	'Vas Bunga'),
('Alat praktik','518',	'Video Effect Mixer'),
('Alat praktik','519',	'Wajan'),
('Alat praktik','520',	'Wakul Cengkeh/ wakul nasi'),
('Alat praktik','521',	'Water goblet'),
('Alat praktik','522',	'Water Jug' ),
('Alat praktik','523',	'Waterpass' ),
('Alat praktik','524',	'Wine glass'),
('Alat praktik','525',	'Wire stripper');
--
-- Indexes for dumped tables
--
INSERT INTO `lokasi` (`kode_lokasi`, `gedung`, `lantai`, `ruangan`, `ket_ruang`, `created_at`, `updated_at`) VALUES
('A101', 'A', '1', '1', 'Ruang Kepala Sekolah', NULL, NULL),
('A102', 'A', '1', '2', 'Ruang Tata Usaha', NULL, NULL),
('A103', 'A', '1', '3', 'Pengurus Yayasan', NULL, NULL),
('A104', 'A', '1', '4', 'Sekretaris Yayasan', NULL, NULL),
('A105', 'A', '1', '5', 'Pantry', NULL, NULL),
('A106', 'A', '1', '6', 'VIP', NULL, NULL),
('A107', 'A', '1', '7', 'Kamar Mandi', NULL, NULL),
('A201', 'A', '2', '1', 'Guru', NULL, NULL),
('A202', 'A', '2', '2', 'Rapat', NULL, NULL),
('A203', 'A', '2', '3', 'Kamar Mandi', NULL, NULL),
('B101', 'B', '1', '1', 'Lab. Bahasa', NULL, NULL),
('B102', 'B', '1', '2', 'Lab. IPA', NULL, NULL),
('B103', 'B', '1', '3', 'UKS dan BK', NULL, NULL),
('B104', 'B', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
('B201', 'B', '2', '1', 'Perpustakaan', NULL, NULL),
('B202', 'B', '2', '2', 'Ruang BK', NULL, NULL),
('B203', 'B', '2', '3', 'Kamar Mandi', NULL, NULL),
('C101', 'C', '1', '1', 'Kelas XII BKP', NULL, NULL),
('C102', 'C', '1', '2', 'Ruang Pramuka', NULL, NULL),
('C103', 'C', '1', '3', 'Ibadah', NULL, NULL),
('C104', 'C', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
('C201', 'C', '2', '1', 'Kelas XII TB', NULL, NULL),
('C202', 'C', '2', '2', 'Kelas XII RPL', NULL, NULL),
('C203', 'C', '2', '3', 'Kelas XII MM', NULL, NULL),
('C204', 'C', '2', '4', 'Kamar Mandi Putra', NULL, NULL),
('D101', 'D', '1', '1', 'Kelas XI BKP', NULL, NULL),
('D102', 'D', '1', '2', 'Kelas XI TKRO', NULL, NULL),
('D103', 'D', '1', '3', 'Kelas XII TKRO', NULL, NULL),
('D104', 'D', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
('D201', 'D', '2', '1', 'Kelas XI TB', NULL, NULL),
('D202', 'D', '2', '2', 'Kelas XI RPL', NULL, NULL),
('D203', 'D', '2', '3', 'Kelas XI MM', NULL, NULL),
('D204', 'D', '2', '4', 'Kamar Mandi Putra', NULL, NULL),
('E101', 'E', '1', '1', 'Kelas X RPL', NULL, NULL),
('E102', 'E', '1', '2', 'Kelas X BKP', NULL, NULL),
('E103', 'E', '1', '3', 'OSIS', NULL, NULL),
('E104', 'E', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
('E201', 'E', '2', '1', 'Kelas X TKRO', NULL, NULL),
('E202', 'E', '2', '2', 'Kelas X TB', NULL, NULL),
('E203', 'E', '2', '3', 'Kelas X MM', NULL, NULL),
('E204', 'E', '2', '4', 'Kamar Mandi Putra', NULL, NULL),
('F101', 'F', '1', '1', 'Lab KKPI', NULL, NULL),
('F102', 'F', '1', '2', 'Lab RPL', NULL, NULL),
('F103', 'F', '1', '3', 'Lab Hardware', NULL, NULL),
('F104', 'F', '1', '4', 'Ruang Instruktur', NULL, NULL),
('F105', 'F', '1', '5', 'Lab Radio', NULL, NULL),
('F106', 'F', '1', '6', 'Kamar Mandi Putri', NULL, NULL),
('F201', 'F', '2', '1', 'Lab MM', NULL, NULL),
('F202', 'F', '2', '2', 'Lab Film', NULL, NULL),
('F203', 'F', '2', '3', 'Lab Make Up', NULL, NULL),
('F204', 'F', '2', '4', 'Lab Instruktur MM', NULL, NULL),
('G101', 'G', '1', '1', 'Instruktur JB', NULL, NULL),
('G102', 'G', '1', '2', 'Dapur Produktif JB', NULL, NULL),
('G103', 'G', '1', '3', 'Personal Kitchen JB', NULL, NULL),
('G201', 'G', '2', '1', 'Table Maner', NULL, NULL),
('G202', 'G', '2', '2', 'Lab Jasa Boga', NULL, NULL),
('GA', 'A', '', 'Gudang', 'Alat Kebersihan', NULL, NULL),
('GB', 'B', '', 'Gudang', 'Alat Olahraga', NULL, NULL),
('GC', 'C', '', 'Gudang', 'Property JB', NULL, NULL),
('GD', 'D', '', 'Gudang', 'Kamar', NULL, NULL),
('GE', 'E', '', 'Gudang', '', NULL, NULL),
('H101', '', '', '', 'Ruang Alat BKP', NULL, NULL),
('H102', '', '', '', 'Ruang Instruktur BKP', NULL, NULL),
('I101', '', '', '', 'Cafe Alaska', NULL, NULL),
('I102', '', '', '', 'Koperasi', NULL, NULL),
('J101', '', '', '', 'Lapangan Depan', NULL, NULL),
('J102', '', '', '', 'Lapangan Tengah', NULL, NULL),
('J103', '', '', '', 'Karpet Hijau', NULL, NULL),
('J104', '', '', '', 'Area Parkir', NULL, NULL),
('J105', '', '', '', 'Area Garasi', NULL, NULL),
('K101', '', '', '', 'Workshop Otomotif', NULL, NULL),
('K102', '', '', '', 'Ruang Alat Tkro', NULL, NULL),
('K103', '', '', '', 'Ruang Bahan TKRO', NULL, NULL),
('K201', '', '', '', 'Ruang Pembelajaran TKRO', NULL, NULL);
--
-- Indexes for table `jenis_klmpk_alat`
--
ALTER TABLE `jenis_klmpk_alat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_klmpk_alat`
--
ALTER TABLE `jenis_klmpk_alat`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

//nitip 
<table class="table">
  <thead class="table-dark">
  <tr>
      <th scope="col">Kode Barang</th>
      <th scope="col">Nama Barang</th>
    </tr>
  </thead>
  <tr>
      <th scope="row">001</th>
      <td>Almari Besi</td>
  </tr>  <tr>
      <th scope="row">002</th>
      <td>Almari Countener</td>
  </tr>  <tr>
      <th scope="row">003</th>
      <td>Almari Kaca</td>
  </tr>  <tr>
      <th scope="row">004</th>
      <td>Almari Kaca</td>
  </tr>  <tr>
      <th scope="row">005</th>
      <td>Almari Kamera </td>
  </tr>  <tr>
      <th scope="row">006</th>
      <td>Almari obat kecil</td>
  </tr>  <tr>
      <th scope="row">007</th>
      <td>Almari Wardrobe</td>
  </tr>  <tr>
      <th scope="row">008</th>
      <td>Bangku Plastik</td>
  </tr>  <tr>
      <th scope="row">009</th>
      <td>Brankas</td>
  </tr>  <tr>
      <th scope="row">010</th>
      <td>Buffet panjang kayu</td>
  </tr>  <tr>
      <th scope="row">011</th>
      <td>Cermin</td>
  </tr>  <tr>
      <th scope="row">012</th>
      <td>dispenser keramik</td>
  </tr>  <tr>
      <th scope="row">013</th>
      <td>Foto Presiden</td>
  </tr>  <tr>
      <th scope="row">014</th>
      <td>Foto Wapres</td>
  </tr>  <tr>
      <th scope="row">015</th>
      <td>Front Office Table</td>
  </tr>  <tr>
      <th scope="row">016</th>
      <td>Garuda</td>
  </tr>  <tr>
      <th scope="row">017</th>
      <td>Jam Dinding</td>
  </tr>  <tr>
      <th scope="row">018</th>
      <td>Kotak P3K</td>
  </tr>  <tr>
      <th scope="row">019</th>
      <td>Kursi</td>
  </tr>  <tr>
      <th scope="row">020</th>
      <td>Kursi baso</td>
  </tr>
  <tr>
      <th scope="row">021</th>
      <td>Kursi Beroda</td>
  </tr>
  <tr>
  
  <th scope="row">022</th>
      <td>Kursi Broadcast</td>
  </tr>
  <tr>
      <th scope="row">023</th>
      <td>Kursi Busa</td>
  </tr>
  <tr>
      <th scope="row">024</th>
      <td>Kursi Salon</td>
  </tr>
  <tr>
      <th scope="row">025</th>
      <td>Lampu Gantung</td>
  </tr>
  <tr>
      <th scope="row">026</th>
      <td>Loker</td>
  </tr>
  <tr>
      <th scope="row">027</th>
      <td>Lukisan </td>
  </tr>
  
  <tr>
      <th scope="row">028</th>
      <td>Meja kecil</td>
  </tr>
  <tr>
      <th scope="row">029</th>
      <td>Meja Sedang</td>
  </tr>
  <tr>
      <th scope="row">030</th>
      <td>Meja Besar</td>
  </tr>
  <tr>
      <th scope="row">031</th>
      <td>Meja Bar</td>
  </tr>
  <tr>
      <th scope="row">032</th>
      <td>Meja Broadcast</td>
  </tr>
  <tr>
      <th scope="row">033</th>
      <td>Meja bulat</td>
  </tr>
  <tr>
      <th scope="row">034</th>
      <td>Meja bunga/ meja kecil</td>
  </tr>
  <tr>
      <th scope="row">035</th>
      <td>Meja Cuci Alumunium</td>
  </tr>
  <tr>
      <th scope="row">036</th>
      <td>Meja Dapur+Cuci</td>
  </tr>
  <tr>
      <th scope="row">037</th>
      <td>Meja kaca</td>
  </tr>
  <tr>
      <th scope="row">038</th>
      <td>Meja Laboratorium</td>
  </tr>
  <tr>
      <th scope="row">039</th>
      <td>Parfum Dispenser</td>
  </tr>
  <tr>
      <th scope="row">040</th>
      <td>Pataka isi 4 bendera</td>
  </tr>
  <tr>
      <th scope="row">041</th>
      <td>Pigura 20x28cm</td>
  </tr>
  <tr>
      <th scope="row">042</th>
      <td>Rak</td>
  </tr>
  <tr>
      <th scope="row">043</th>
      <td>Sofa</td>
  </tr>
  <tr>
      <th scope="row">044</th>
      <td>Sofa Tamu + Meja</td>
  </tr>
  <tr>
      <th scope="row">045</th>
      <td>Springbed</td>
  </tr>
  <tr>
      <th scope="row">046</th>
      <td>Tempat Tidur Pasien</td>
  </tr>
  <tr>
      <th scope="row">047</th>
      <td>Washtafel Porletab</td>
  </tr>
  <tr>
      <th scope="row">048</th>
      <td>White Board 120 x 240 DF + Stand</td>
  </tr>
  <tr>
      <th scope="row">049</th>
      <td>Whiteboard Besar</td>
  </tr>
  <tr>
      <th scope="row">050</th>
      <td>Whiteboard Kecil</td>
  </tr>
  </tbody>
</table><br><br><br><br>




<p class="fs-1">#Elektronik</p>

<table class="table">
  <thead class="table-dark">
  <tr>
      <th scope="col">Kode Barang</th>
      <th scope="col">Nama Barang</th>
    </tr>
  </thead>
  
  <tr>
      <th scope="row">001</th>
      <td>Absensi Timetronic</td>
  </tr>  <tr>
      <th scope="row">002</th>
      <td>AC</td>
  </tr>  <tr>
      <th scope="row">003</th>
      <td>Active Speaker</td>
  </tr>  <tr>
      <th scope="row">004</th>
      <td>Barcode Reader</td>
  </tr>  <tr>
      <th scope="row">005</th>
      <td>Bass Amplifier/Speaker Cabinet</td>
  </tr>  <tr>
      <th scope="row">006</th>
      <td>Blender</td>
  </tr>  <tr>
      <th scope="row">007</th>
      <td>Classroom Speaker</td>
  </tr>  <tr>
      <th scope="row">008</th>
      <td>CPU</td>
  </tr>  <tr>
      <th scope="row">009</th>
      <td>Dispenser</td>
  </tr>  <tr>
      <th scope="row">010</th>
      <td>DVD Player</td>
  </tr>  <tr>
      <th scope="row">011</th>
      <td>Equalizer</td>
  </tr>  <tr>
      <th scope="row">012</th>
      <td>Exhaust Fan</td>
  </tr>  <tr>
      <th scope="row">013</th>
      <td>Fake CCTV</td>
  </tr>  <tr>
      <th scope="row">014</th>
      <td>Headphone</td>
  </tr>  <tr>
      <th scope="row">015</th>
      <td>Indoor Active Speaker</td>
  </tr>  <tr>
      <th scope="row">016</th>
      <td>Keyboard</td>
  </tr>  <tr>
      <th scope="row">017</th>
      <td>Kipas Angin</td>
  </tr>  <tr>
      <th scope="row">018</th>
      <td>Kulkas</td>
  </tr>  <tr>
      <th scope="row">019</th>
      <td>Laptop</td>
  </tr>  <tr>
      <th scope="row">020</th>
      <td>LCD Monitor</td>
  </tr>
  <tr>
      <th scope="row">021</th>
      <td>LCD Monitor Video</td>
  </tr>
  <tr>
  <th scope="row">022</th>
      <td>LCD Projector</td>
  </tr>
  <tr>
      <th scope="row">023</th>
      <td>LCD TV</td>
  </tr>
  <tr>
      <th scope="row">024</th>
      <td>Lemari pendingin</td>
  </tr>
  <tr>
      <th scope="row">025</th>
      <td>Magic com</td>
  </tr>
  <tr>
      <th scope="row">026</th>
      <td>Mesin Ketik</td>
  </tr>
  <tr>
      <th scope="row">027</th>
      <td>Mesin Laminating</td>
  </tr>
  <tr>
      <th scope="row">028</th>
      <td>Mesin Penghancur Kertas</td>
  </tr>
  <tr>
      <th scope="row">029</th>
      <td>Mesin Pengharum ruangan</td>
  </tr>
  <tr>
      <th scope="row">030</th>
      <td>Mic</td>
  </tr>
  <tr>
      <th scope="row">031</th>
      <td>microwave putih</td>
  </tr>
  <tr>
      <th scope="row">032</th>
      <td>Mixer</td>
  </tr>
  <tr>
      <th scope="row">033</th>
      <td>Monitor Tabung</td>
  </tr>
  <tr>
      <th scope="row">034</th>
      <td>Monitor video camera</td>
  </tr>
  <tr>
      <th scope="row">035</th>
      <td>Motherboard</td>
  </tr>
  <tr>
      <th scope="row">036</th>
      <td>Mouse</td>
  </tr>
  <tr>
      <th scope="row">037</th>
      <td>PABX Intercom</td>
  </tr>
  <tr>
      <th scope="row">038</th>
      <td>PC</td>
  </tr>
  <tr>
      <th scope="row">039</th>
      <td>PC Speaker</td>
  </tr>
  <tr>
      <th scope="row">040</th>
      <td>Personal Computer</td>
  </tr>
  <tr>
      <th scope="row">041</th>
      <td>Pesawat Telp</td>
  </tr>
  <tr>
      <th scope="row">042</th>
      <td>Pointer</td>
  </tr>
  <tr>
      <th scope="row">043</th>
      <td>Power Mixer</td>
  </tr>
  <tr>
      <th scope="row">044</th>
      <td>Power Supply</td>
  </tr>
  <tr>
      <th scope="row">045</th>
      <td>Power TOA</td>
  </tr>
  <tr>
      <th scope="row">046</th>
      <td>Printer  </td>
  </tr>
  <tr>
      <th scope="row">047</th>
      <td>Printer + Scanner</td>
  </tr>
  <tr>
      <th scope="row">048</th>
      <td>Profesional Power</td>
  </tr>
  <tr>
      <th scope="row">049</th>
      <td>Remote AC</td>
  </tr>
  <tr>
      <th scope="row">050</th>
      <td>Scanner</td>
  </tr>
  <tr>
      <th scope="row">051</th>
      <td>Speaker</td>
  </tr>
  <tr>
      <th scope="row">052</th>
      <td>Stand Guitar</td>
  </tr>
  <tr>
      <th scope="row">053</th>
      <td>Stand Mic</td>
  </tr>
  <tr>
      <th scope="row">054</th>
      <td>Televisi</td>
  </tr>
  <tr>
      <th scope="row">055</th>
      <td>TOA Coloum</td>
  </tr>
  <tr>
      <th scope="row">056</th>
      <td>TOA Cone Speaker</td>
  </tr>
  <tr>
      <th scope="row">057</th>
      <td>UPS</td>
  </tr>
  <tr>
      <th scope="row">058</th>
      <td>Wifi Adaptor</td>
  </tr>
  </tbody>
</table><br><br><br><br>




<p class="fs-1">#Alat Ukur</p>

<table class="table">
  <thead class="table-dark">
  <tr>
      <th scope="col">Kode Barang</th>
      <th scope="col">Nama Barang</th>
    </tr>
  </thead>
  
  <tr>
      <th scope="row">001</th>
      <td>AC regulator</td>
  </tr>  <tr>
      <th scope="row">002</th>
      <td>Alat Ukur Tinggi Badan</td>
  </tr>  <tr>
      <th scope="row">003</th>
      <td>Batery tester</td>
  </tr>  <tr>
      <th scope="row">004</th>
      <td>Bore gauge</td>
  </tr>  <tr>
      <th scope="row">005</th>
      <td>Compressor tester</td>
  </tr>  <tr>
      <th scope="row">006</th>
      <td>cup ukur plastik</td>
  </tr>  <tr>
      <th scope="row">007</th>
      <td>Cylinder bore gauge</td>
  </tr>  <tr>
      <th scope="row">008</th>
      <td>Dial gauge</td>
  </tr>  <tr>
      <th scope="row">009</th>
      <td>Diesel compression tester</td>
  </tr>  <tr>
      <th scope="row">010</th>
      <td>Dwell tester</td>
  </tr>  <tr>
      <th scope="row">011</th>
      <td>Fuller gauge</td>
  </tr>  <tr>
      <th scope="row">012</th>
      <td>Gelas ukur</td>
  </tr>  <tr>
      <th scope="row">013</th>
      <td>Hidrometer</td>
  </tr>  <tr>
      <th scope="row">014</th>
      <td>Injector diesel tester</td>
  </tr>  <tr>
      <th scope="row">015</th>
      <td>Jangka sorong</td>
  </tr>  <tr>
      <th scope="row">016</th>
      <td>Kalorimeter</td>
  </tr>  <tr>
      <th scope="row">017</th>
      <td>Kunci momen</td>
  </tr>  <tr>
      <th scope="row">018</th>
      <td>Meteran</td>
  </tr>  <tr>
      <th scope="row">019</th>
      <td>Mikrometer</td>
  </tr>  <tr>
      <th scope="row">020</th>
      <td>Mistar busur</td>
  </tr>
  <tr>
      <th scope="row">021</th>
      <td>Multitester</td>
  </tr>
  <tr>
  <th scope="row">022</th>
      <td>Penggaris Siku Besi </td>
  </tr>
  <tr>
      <th scope="row">023</th>
      <td>Radiator & radiator cap tester</td>
  </tr>
  <tr>
      <th scope="row">024</th>
      <td>Rambu Ukur Aluminium 3 meter</td>
  </tr>
  <tr>
      <th scope="row">025</th>
      <td>Scanner</td>
  </tr>
  <tr>
      <th scope="row">026</th>
      <td>Screw gauge</td>
  </tr>
  <tr>
      <th scope="row">027</th>
      <td>sendok ukur plastik</td>
  </tr>
  <tr>
      <th scope="row">028</th>
      <td>Siku</td>
  </tr>
  <tr>
      <th scope="row">029</th>
      <td>Spring scale</td>
  </tr>
  <tr>
      <th scope="row">030</th>
      <td>Stopwacth</td>
  </tr>
  <tr>
      <th scope="row">031</th>
      <td>Tabung Ukur 10 ml</td>
  </tr>
  <tr>
      <th scope="row">032</th>
      <td>Tensi Meter</td>
  </tr>
  <tr>
      <th scope="row">033</th>
      <td>Termometer</td>
  </tr>
  <tr>
      <th scope="row">034</th>
      <td>Timbangan</td>
  </tr>
  </tbody>
</table><br><br><br><br>



<p class="fs-1">#Alat Praktek</p>

<table class="table">
  <thead class="table-dark">
  <tr>
      <th scope="col">Kode Barang</th>
      <th scope="col">Nama Barang</th>
    </tr>
  </thead>
  
  <tr>
      <th scope="row">001</th>
      <td>Ac Regulator</td>
  </tr>  <tr>
      <th scope="row">002</th>
      <td>Access Point</td>
  </tr>  <tr>
      <th scope="row">003</th>
      <td>Air Compressor</td>
  </tr>  <tr>
      <th scope="row">004</th>
      <td>Air duster</td>
  </tr>  <tr>
      <th scope="row">005</th>
      <td>Air impact</td>
  </tr>  <tr>
      <th scope="row">006</th>
      <td>Alat Potong Keramik</td>
  </tr>  <tr>
      <th scope="row">007</th>
      <td>Anglo</td>
  </tr>  <tr>
      <th scope="row">008</th>
      <td>Asbak</td>
  </tr>  <tr>
      <th scope="row">009</th>
      <td>Auto Level</td>
  </tr>  <tr>
      <th scope="row">010</th>
      <td>Auto scope</td>
  </tr>  <tr>
      <th scope="row">011</th>
      <td>Baki</td>
  </tr>  <tr>
      <th scope="row">012</th>
      <td>balon wish/kocokan telur </td>
  </tr>  <tr>
      <th scope="row">013</th>
      <td>Barbeque brush</td>
  </tr>  <tr>
      <th scope="row">014</th>
      <td>Baskom</td>
  </tr>  <tr>
      <th scope="row">015</th>
      <td>Battery charger</td>
  </tr>  <tr>
      <th scope="row">016</th>
      <td>Bearing puller</td>
  </tr>  <tr>
      <th scope="row">017</th>
      <td>Bending</td>
  </tr>  <tr>
      <th scope="row">018</th>
      <td>Betel </td>
  </tr>  <tr>
      <th scope="row">019</th>
      <td>Beverage Dispenser</td>
  </tr>  <tr>
      <th scope="row">020</th>
      <td>Blok V</td>
  </tr>
  <tr>
      <th scope="row">021</th>
      <td>Bola Basket</td>
  </tr>
  <tr>
  <th scope="row">022</th>
      <td>Bola Futsal</td>
  </tr>
  <tr>
      <th scope="row">023</th>
      <td>Bola Kasti </td>
  </tr>
  <tr>
      <th scope="row">024</th>
      <td>Bola Sepak</td>
  </tr>
  <tr>
      <th scope="row">025</th>
      <td>Bola Sepak Takraw`</td>
  </tr>
  <tr>
      <th scope="row">026</th>
      <td>Bola Softball</td>
  </tr>
  <tr>
      <th scope="row">027</th>
      <td>Bola Voli</td>
  </tr>
  <tr>
      <th scope="row">028</th>
      <td>Bor duduk</td>
  </tr>
  <tr>
      <th scope="row">029</th>
      <td>Bor tangan</td>
  </tr>
  <tr>
      <th scope="row">030</th>
      <td>Bowl plastic(Mangkuk)</td>
  </tr>
  <tr>
      <th scope="row">031</th>
      <td>Bowl simple 21cm</td>
  </tr>
  <tr>
      <th scope="row">032</th>
      <td>Bowl stainless</td>
  </tr>
  <tr>
      <th scope="row">033</th>
      <td>Brake tool kit</td>
  </tr>
  <tr>
      <th scope="row">034</th>
      <td>Braket Projector</td>
  </tr>
  <tr>
      <th scope="row">035</th>
      <td>Butter knife</td>
  </tr>
  <tr>
      <th scope="row">036</th>
      <td>Butter spreader</td>
  </tr>
  <tr>
      <th scope="row">037</th>
      <td>Cable Tester</td>
  </tr>
  <tr>
      <th scope="row">038</th>
      <td>Caddytool</td>
  </tr>
  <tr>
      <th scope="row">039</th>
      <td>cake decoration</td>
  </tr>
  <tr>
      <th scope="row">040</th>
      <td>cake tong/penjepit kue</td>
  </tr>
  <tr>
      <th scope="row">041</th>
      <td>Cakram </td>
  </tr>
  <tr>
      <th scope="row">042</th>
      <td>Candle Holder keramik</td>
  </tr>
  <tr>
      <th scope="row">043</th>
      <td>Cangkir Teh / Kopi (hanya saucer)</td>
  </tr>
  <tr>
      <th scope="row">044</th>
      <td>Cangkir Teh / Kopi+saucer</td>
  </tr>
  <tr>
      <th scope="row">045</th>
      <td>Cangkul</td>
  </tr>
  <tr>
      <th scope="row">046</th>
      <td>Card Reader</td>
  </tr>
  <tr>
      <th scope="row">047</th>
      <td>Casing CPU</td>
  </tr>
  <tr>
      <th scope="row">048</th>
      <td>Catut Kakaktua</td>
  </tr>
  <tr>
      <th scope="row">049</th>
      <td>CD Windows 7 HP</td>
  </tr>
  <tr>
      <th scope="row">050</th>
      <td>CD-VGA</td>
  </tr>
  <tr>
      <th scope="row">051</th>
      <td>CD-WINDOWS</td>
  </tr>
  <tr>
      <th scope="row">052</th>
      <td>Centong melamin</td>
  </tr>
  <tr>
      <th scope="row">053</th>
      <td>centong nasi kayu</td>
  </tr>
  <tr>
      <th scope="row">054</th>
      <td>Centong plastik</td>
  </tr>
  <tr>
      <th scope="row">055</th>
      <td>Cereal bowl</td>
  </tr>
  <tr>
      <th scope="row">056</th>
      <td>Cetakan Buah Cocktail</td>
  </tr>
  <tr>
      <th scope="row">057</th>
      <td>Ceting nasi (pink,hijau,biru)</td>
  </tr>
  <tr>
      <th scope="row">058</th>
      <td>Cetok Bulat</td>
  </tr>
  <tr>
      <th scope="row">059</th>
      <td>Cetok Kotak</td>
  </tr>
  <tr>
      <th scope="row">060</th>
      <td>Cetok Lidah/Lancip</td>
  </tr> <tr>
      <th scope="row">061</th>
      <td>Champagne flute glass</td>
  </tr>
  <tr>
      <th scope="row">062</th>
      <td>Charger Baterei</td>
  </tr>
  <tr>
      <th scope="row">063</th>
      <td>Charger DSLR</td>
  </tr>
  <tr>
      <th scope="row">064</th>
      <td>Charger Handycam</td>
  </tr>
  <tr>
      <th scope="row">065</th>
      <td>Charger langsung kamera</td>
  </tr>
  <tr>
      <th scope="row">066</th>
      <td>Charger SonyWifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">067</th>
      <td>Circular Saw</td>
  </tr>
  <tr>
      <th scope="row">068</th>
      <td>Clapper</td>
  </tr>
  <tr>
      <th scope="row">069</th>
      <td>Cobek</td>
  </tr>
  <tr>
      <th scope="row">070</th>
      <td>Cocktail Glass</td>
  </tr>
  <tr>
      <th scope="row">071</th>
      <td>compression tester</td>
  </tr>
  <tr>
      <th scope="row">072</th>
      <td>Cones 1 setWifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">073</th>
      <td>Converter Video</td>
  </tr>
  <tr>
      <th scope="row">074</th>
      <td>Corong ᴓ 6 cm</td>
  </tr>
  <tr>
      <th scope="row">075</th>
      <td>Creeper</td>
  </tr>
  <tr>
      <th scope="row">076</th>
      <td>Crimping plier</td>
  </tr>
  <tr>
      <th scope="row">077</th>
      <td>Crimping Tools</td>
  </tr>
  <tr>
      <th scope="row">078</th>
      <td>Cutting board(Talenan)</td>
  </tr>
  <tr>
      <th scope="row">079</th>
      <td>dandang</td>
  </tr>
  <tr>
      <th scope="row">080</th>
      <td>Deep Plate ijo</td>
  </tr>
  <tr>
      <th scope="row">081</th>
      <td>dessert fork</td>
  </tr>
  <tr>
      <th scope="row">082</th>
      <td>Dessert Plate</td>
  </tr>
  <tr>
      <th scope="row">083</th>
      <td>Digital Theodolite</td>
  </tr>
  <tr>
      <th scope="row">084</th>
      <td>Dinner fork</td>
  </tr>
  <tr>
      <th scope="row">085</th>
      <td>Dinner knifer</td>
  </tr>
  <tr>
      <th scope="row">086</th>
      <td>Dinner Plate</td>
  </tr>
  <tr>
      <th scope="row">087</th>
      <td>Dinner spoon</td>
  </tr>
  <tr>
      <th scope="row">088</th>
      <td>Dongkrak buaya</td>
  </tr>
  <tr>
      <th scope="row">089</th>
      <td>Drill Impact (Bor Tangan)</td>
  </tr>
  <tr>
      <th scope="row">090</th>
      <td>DVD Eksternal</td>
  </tr>
  <tr>
      <th scope="row">091</th>
      <td>EEHW 20-220 C (BMN) ECONA EXHAUST HOOD ISLAND TYPE (CENTRE) JOB</td>
  </tr>
  <tr>
      <th scope="row">092</th>
      <td>EEHW 20-220 L/R (BMN) ECONA EXHAUST HOOD - ISLAND TYPE (LEFT/RIGHT) (JOB)</td>
  </tr>
  <tr>
      <th scope="row">093</th>
      <td>EEHW 20-220 L/R (BMN) ECONA EXHAUST HOOD - ISLAND TYPE (LEFT/RIGHT) (JOB)</td>
  </tr>
  <tr>
      <th scope="row">094</th>
      <td>Egg stand keramik</td>
  </tr>
  <tr>
      <th scope="row">095</th>
      <td>Electric Coffee Boiler</td>
  </tr>
  <tr>
      <th scope="row">096</th>
      <td>Electric Coffee Maker</td>
  </tr>
  <tr>
      <th scope="row">097</th>
      <td>Elektrik knife</td>
  </tr>
  <tr>
      <th scope="row">098</th>
      <td>Elektrik Molen</td>
  </tr>
  <tr>
      <th scope="row">099</th>
      <td>Elektronik tool set</td>
  </tr>
  <tr>
      <th scope="row">100</th>
      <td>Ember Adukan</td>
  </tr>
  <tr>
      <th scope="row">101</th>
      <td>Absensi Timetronic</td>
  </tr>  
  <tr>
      <th scope="row">102</th>
      <td>AC</td>
  </tr>  <tr>
      <th scope="row">103</th>
      <td>Active Speaker</td>
  </tr>  <tr>
      <th scope="row">104</th>
      <td>Barcode Reader</td>
  </tr>  <tr>
      <th scope="row">105</th>
      <td>Bass Amplifier/Speaker Cabinet</td>
  </tr>  <tr>
      <th scope="row">106</th>
      <td>Blender</td>
  </tr>  <tr>
      <th scope="row">107</th>
      <td>Classroom Speaker</td>
  </tr>  <tr>
      <th scope="row">108</th>
      <td>CPU</td>
  </tr>  <tr>
      <th scope="row">109</th>
      <td>Dispenser</td>
  </tr>  <tr>
      <th scope="row">110</th>
      <td>DVD Player</td>
  </tr>  <tr>
      <th scope="row">111</th>
      <td>Equalizer</td>
  </tr>  <tr>
      <th scope="row">112</th>
      <td>Exhaust Fan</td>
  </tr>  <tr>
      <th scope="row">113</th>
      <td>Fake CCTV</td>
  </tr>  <tr>
      <th scope="row">114</th>
      <td>Headphone</td>
  </tr>  <tr>
      <th scope="row">115</th>
      <td>Indoor Active Speaker</td>
  </tr>  <tr>
      <th scope="row">116</th>
      <td>Keyboard</td>
  </tr>  <tr>
      <th scope="row">117</th>
      <td>Kipas Angin</td>
  </tr>  <tr>
      <th scope="row">118</th>
      <td>Kulkas</td>
  </tr>  <tr>
      <th scope="row">119</th>
      <td>Laptop</td>
  </tr>  <tr>
      <th scope="row">120</th>
      <td>LCD Monitor</td>
  </tr>
  <tr>
      <th scope="row">121</th>
      <td>LCD Monitor Video</td>
  </tr>
  <tr>
  <th scope="row">122</th>
      <td>LCD Projector</td>
  </tr>
  <tr>
      <th scope="row">123</th>
      <td>LCD TV</td>
  </tr>
  <tr>
      <th scope="row">124</th>
      <td>Lemari pendingin</td>
  </tr>
  <tr>
      <th scope="row">125</th>
      <td>Magic com</td>
  </tr>
  <tr>
      <th scope="row">126</th>
      <td>Mesin Ketik</td>
  </tr>
  <tr>
      <th scope="row">127</th>
      <td>Mesin Laminating</td>
  </tr>
  <tr>
      <th scope="row">128</th>
      <td>Mesin Penghancur Kertas</td>
  </tr>
  <tr>
      <th scope="row">129</th>
      <td>Mesin Pengharum ruangan</td>
  </tr>
  <tr>
      <th scope="row">130</th>
      <td>Mic</td>
  </tr>
  <tr>
      <th scope="row">131</th>
      <td>microwave putih</td>
  </tr>
  <tr>
      <th scope="row">132</th>
      <td>Mixer</td>
  </tr>
  <tr>
      <th scope="row">133</th>
      <td>Monitor Tabung</td>
  </tr>
  <tr>
      <th scope="row">134</th>
      <td>Monitor video camera</td>
  </tr>
  <tr>
      <th scope="row">135</th>
      <td>Motherboard</td>
  </tr>
  <tr>
      <th scope="row">136</th>
      <td>Mouse</td>
  </tr>
  <tr>
      <th scope="row">137</th>
      <td>PABX Intercom</td>
  </tr>
  <tr>
      <th scope="row">138</th>
      <td>PC</td>
  </tr>
  <tr>
      <th scope="row">139</th>
      <td>PC Speaker</td>
  </tr>
  <tr>
      <th scope="row">140</th>
      <td>Personal Computer</td>
  </tr>
  <tr>
      <th scope="row">141</th>
      <td>Pesawat Telp</td>
  </tr>
  <tr>
      <th scope="row">142</th>
      <td>Pointer</td>
  </tr>
  <tr>
      <th scope="row">143</th>
      <td>Power Mixer</td>
  </tr>
  <tr>
      <th scope="row">144</th>
      <td>Power Supply</td>
  </tr>
  <tr>
      <th scope="row">145</th>
      <td>Power TOA</td>
  </tr>
  <tr>
      <th scope="row">146</th>
      <td>Printer  </td>
  </tr>
  <tr>
      <th scope="row">147</th>
      <td>Printer + Scanner</td>
  </tr>
  <tr>
      <th scope="row">148</th>
      <td>Profesional Power</td>
  </tr>
  <tr>
      <th scope="row">149</th>
      <td>Remote AC</td>
  </tr>
  <tr>
      <th scope="row">150</th>
      <td>Scanner</td>
  </tr>
  <tr>
      <th scope="row">151</th>
      <td>Speaker</td>
  </tr>
  <tr>
      <th scope="row">152</th>
      <td>Stand Guitar</td>
  </tr>
  <tr>
      <th scope="row">153</th>
      <td>Stand Mic</td>
  </tr>
  <tr>
      <th scope="row">154</th>
      <td>Televisi</td>
  </tr>
  <tr>
      <th scope="row">155</th>
      <td>TOA Coloum</td>
  </tr>
  <tr>
      <th scope="row">156</th>
      <td>TOA Cone Speaker</td>
  </tr>
  <tr>
      <th scope="row">157</th>
      <td>UPS</td>
  </tr>
  <tr>
      <th scope="row">158</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">159</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">160</th>
      <td>Wifi Adaptor</td>
  </tr> <tr>
      <th scope="row">161</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">162</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">163</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">164</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">165</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">166</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">167</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">168</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">169</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">170</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">171</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">172</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">173</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">174</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">175</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">176</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">177</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">178</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">179</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">180</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">181</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">182</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">183</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">184</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">185</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">186</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">187</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">188</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">189</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">190</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">191</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">192</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">193</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">194</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">195</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">196</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">197</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">198</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">199</th>
      <td>Wifi Adaptor</td>
  </tr>
  <tr>
      <th scope="row">200</th>
      <td>Wifi Adaptor</td>
  </tr>
  
  </tbody>
</table><br><br><br><br>


