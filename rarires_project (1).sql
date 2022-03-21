-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2021 at 05:38 AM
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

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`no`, `kode_brg`, `nama_brg`, `merk_brg`, `kondisi_brg`, `sumber_dana`, `ket_brg`, `klmpk_alat`, `kode_bidang`, `kode_lokasi`, `tanggal`, `created_at`, `updated_at`) VALUES
('1.A101.21.1.001.001', '001', 'meja', 'fortuner', 'dihapus', 'pak rey', '-', '1', '1', 'A101', '2021-10-22', NULL, NULL),
('1.A101.21.1.001.002', '001', 'meja', 'fortuner', 'rusak', 'pak rey', '-', '1', '1', 'A101', '2021-10-22', NULL, NULL),
('1.A101.21.2.002.001', '002', 'CPU', 'LG', 'baik', 'BOS', '-', '2', '1', 'A101', '2021-10-22', NULL, NULL),
('1.A101.21.1.013.001', '013', 'CPU', 'LG', 'baik', 'BOS', 'baru', '1', '1', 'A101', '2021-10-28', NULL, NULL),
('1.A101.21.1.013.001', '013', 'kursi', 'LG', 'baik', 'BOS', '-', '1', '1', 'A101', '2021-10-28', NULL, NULL),
('1.A101.21.1.013.002', '013', 'kursi', 'LG', 'baik', 'BOS', '-', '1', '1', 'A101', '2021-10-28', NULL, NULL),
('1.A101.21.1.013.002', '013', 'CPU', 'LG', 'rusak', 'BOS', '-', '1', '1', 'A101', '2021-10-28', NULL, NULL),
('1.A101.21.1.013.003', '013', 'kursi', 'LG', 'baik', 'BOS', '-', '1', '1', 'A101', '2021-10-28', NULL, NULL),
('1.A101.21.1.013.004', '013', 'kursi', 'LG', 'baik', 'BOS', '-', '1', '1', 'A101', '2021-10-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bidang_brg`
--

CREATE TABLE `bidang_brg` (
  `kode_bidang_brg` int(10) UNSIGNED NOT NULL,
  `bidang_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bidang_brg`
--

INSERT INTO `bidang_brg` (`kode_bidang_brg`, `bidang_brg`, `created_at`, `updated_at`) VALUES
(1, 'Barang Umum', NULL, NULL),
(2, 'Barang Alat Lab', NULL, NULL),
(3, 'Barang Koperasi', NULL, NULL),
(4, 'Barang UKS', NULL, NULL),
(5, 'Barang TU', NULL, NULL),
(6, 'Barang Ruang Guru', NULL, NULL),
(7, 'Barang Ruang Perpustakaan', NULL, NULL),
(8, 'Barang Ruang Satpam', NULL, NULL);

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
-- Table structure for table `jenis_klmpk_alat`
--

CREATE TABLE `jenis_klmpk_alat` (
  `id` int(10) UNSIGNED NOT NULL,
  `klmpk_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_klmpk_alat`
--

INSERT INTO `jenis_klmpk_alat` (`id`, `klmpk_alat`, `kode_brg`, `jk_alat`, `created_at`, `updated_at`) VALUES
(1, 'Mebeler', '001', 'Almari Besi', NULL, NULL),
(2, 'Mebeler', '002', 'Almari Countener', NULL, NULL),
(3, 'Mebeler', '003', 'Almari Kaca', NULL, NULL),
(4, 'Mebeler', '004', 'Almari Kaca', NULL, NULL),
(5, 'Mebeler', '005', 'Almari Kamera', NULL, NULL),
(6, 'Mebeler', '006', 'Almari obat kecil', NULL, NULL),
(7, 'Mebeler', '007', 'Almari Wardrobe', NULL, NULL),
(8, 'Mebeler', '008', 'Bangku Plastik', NULL, NULL),
(9, 'Mebeler', '009', 'Brankas', NULL, NULL),
(10, 'Mebeler', '010', 'Buffet panjang kayu', NULL, NULL),
(11, 'Mebeler', '011', 'Cermin', NULL, NULL),
(12, 'Mebeler', '012', 'dispenser keramik', NULL, NULL),
(13, 'Mebeler', '013', 'Foto Presiden', NULL, NULL),
(14, 'Mebeler', '014', 'Foto Wapres', NULL, NULL),
(15, 'Mebeler', '015', 'Front Office Table', NULL, NULL),
(16, 'Mebeler', '016', 'Garuda', NULL, NULL),
(17, 'Mebeler', '017', 'Jam Dinding', NULL, NULL),
(18, 'Mebeler', '018', 'Kotak P3K', NULL, NULL),
(19, 'Mebeler', '019', 'Kursi', NULL, NULL),
(20, 'Mebeler', '020', 'Kursi baso', NULL, NULL),
(21, 'Mebeler', '021', 'Kursi Beroda', NULL, NULL),
(22, 'Mebeler', '022', 'Kursi Broadcast', NULL, NULL),
(23, 'Mebeler', '023', 'Kursi Busa', NULL, NULL),
(24, 'Mebeler', '024', 'Kursi Salon', NULL, NULL),
(25, 'Mebeler', '025', 'Lampu Gantung', NULL, NULL),
(26, 'Mebeler', '026', 'Loker', NULL, NULL),
(27, 'Mebeler', '027', 'Lukisan', NULL, NULL),
(28, 'Mebeler', '028', 'Meja kecil', NULL, NULL),
(29, 'Mebeler', '029', 'Meja Sedang', NULL, NULL),
(30, 'Mebeler', '030', 'Meja Besar', NULL, NULL),
(31, 'Mebeler', '031', 'Meja Bar', NULL, NULL),
(32, 'Mebeler', '032', 'Meja Broadcast', NULL, NULL),
(33, 'Mebeler', '033', 'Meja bulat', NULL, NULL),
(34, 'Mebeler', '034', 'Meja bunga/ meja kecil', NULL, NULL),
(35, 'Mebeler', '035', 'Meja Cuci Alumunium', NULL, NULL),
(36, 'Mebeler', '036', 'Meja Dapur+Cuci', NULL, NULL),
(37, 'Mebeler', '037', 'Meja kaca', NULL, NULL),
(38, 'Mebeler', '038', 'Meja Laboratorium', NULL, NULL),
(39, 'Mebeler', '039', 'Parfum Dispenser', NULL, NULL),
(40, 'Mebeler', '040', 'Pataka isi 4 bendera', NULL, NULL),
(41, 'Mebeler', '041', 'Pigura 20x28cm', NULL, NULL),
(42, 'Mebeler', '042', 'Rak', NULL, NULL),
(43, 'Mebeler', '043', 'Sofa', NULL, NULL),
(44, 'Mebeler', '044', 'Sofa Tamu + Meja', NULL, NULL),
(45, 'Mebeler', '045', 'Springbed', NULL, NULL),
(46, 'Mebeler', '046', 'Tempat Tidur Pasien', NULL, NULL),
(47, 'Mebeler', '047', 'Washtafel Porletab', NULL, NULL),
(48, 'Mebeler', '048', 'White Board 120 x 240 DF + Stand', NULL, NULL),
(49, 'Mebeler', '049', 'Whiteboard Besar', NULL, NULL),
(50, 'Mebeler', '050', 'Whiteboard Kecil', NULL, NULL),
(51, 'Elektronik', '001', 'Absensi Timetronic', NULL, NULL),
(52, 'Elektronik', '002', 'AC', NULL, NULL),
(53, 'Elektronik', '003', 'Active Speaker', NULL, NULL),
(54, 'Elektronik', '004', 'Barcode Reader', NULL, NULL),
(55, 'Elektronik', '005', 'Bass Amplifier/Speaker Cabinet', NULL, NULL),
(56, 'Elektronik', '006', 'Blender', NULL, NULL),
(57, 'Elektronik', '007', 'Classroom Speaker', NULL, NULL),
(58, 'Elektronik', '008', 'CPU', NULL, NULL),
(59, 'Elektronik', '009', 'Dispenser', NULL, NULL),
(60, 'Elektronik', '010', 'DVD Player', NULL, NULL),
(61, 'Elektronik', '011', 'Equalizer', NULL, NULL),
(62, 'Elektronik', '012', 'Exhaust Fan', NULL, NULL),
(63, 'Elektronik', '013', 'Fake CCTV', NULL, NULL),
(64, 'Elektronik', '014', 'Headphone', NULL, NULL),
(65, 'Elektronik', '015', 'Indoor Active Speaker', NULL, NULL),
(66, 'Elektronik', '016', 'Keyboard', NULL, NULL),
(67, 'Elektronik', '017', 'Kipas Angin', NULL, NULL),
(68, 'Elektronik', '018', 'Kulkas', NULL, NULL),
(69, 'Elektronik', '019', 'Laptop', NULL, NULL),
(70, 'Elektronik', '020', 'LCD Monitor', NULL, NULL),
(71, 'Elektronik', '021', 'LCD Monitor Video', NULL, NULL),
(72, 'Elektronik', '022', 'LCD Projector', NULL, NULL),
(73, 'Elektronik', '023', 'LCD TV', NULL, NULL),
(74, 'Elektronik', '024', 'Lemari pendingin', NULL, NULL),
(75, 'Elektronik', '025', 'Magic com', NULL, NULL),
(76, 'Elektronik', '026', 'Mesin Ketik', NULL, NULL),
(77, 'Elektronik', '027', 'Mesin Laminating', NULL, NULL),
(78, 'Elektronik', '028', 'Mesin Penghancur Kertas', NULL, NULL),
(79, 'Elektronik', '029', 'Mesin Pengharum ruangan', NULL, NULL),
(80, 'Elektronik', '030', 'Mic', NULL, NULL),
(81, 'Elektronik', '031', 'microwave putih', NULL, NULL),
(82, 'Elektronik', '032', 'Mixer', NULL, NULL),
(83, 'Elektronik', '033', 'Monitor Tabung', NULL, NULL),
(84, 'Elektronik', '034', 'Monitor video camera', NULL, NULL),
(85, 'Elektronik', '035', 'Motherboard', NULL, NULL),
(86, 'Elektronik', '036', 'Mouse', NULL, NULL),
(87, 'Elektronik', '037', 'PABX Intercom', NULL, NULL),
(88, 'Elektronik', '038', 'PC', NULL, NULL),
(89, 'Elektronik', '039', 'PC Speaker', NULL, NULL),
(90, 'Elektronik', '040', 'Personal Computer', NULL, NULL),
(91, 'Elektronik', '041', 'Pesawat Telp', NULL, NULL),
(92, 'Elektronik', '042', 'Pointer', NULL, NULL),
(93, 'Elektronik', '043', 'Power Mixer', NULL, NULL),
(94, 'Elektronik', '044', 'Power Supply', NULL, NULL),
(95, 'Elektronik', '045', 'Power TOA', NULL, NULL),
(96, 'Elektronik', '046', 'Printer', NULL, NULL),
(97, 'Elektronik', '047', 'Printer + Scanner', NULL, NULL),
(98, 'Elektronik', '048', 'Remote AC', NULL, NULL),
(99, 'Elektronik', '049', 'Remote AC', NULL, NULL),
(100, 'Elektronik', '050', 'Scanner', NULL, NULL),
(101, 'Elektronik', '051', 'Speaker', NULL, NULL),
(102, 'Elektronik', '052', 'Stand Guitar', NULL, NULL),
(103, 'Elektronik', '053', 'Stand Mic', NULL, NULL),
(104, 'Elektronik', '054', 'Televisi', NULL, NULL),
(105, 'Elektronik', '055', 'TOA Coloum', NULL, NULL),
(106, 'Elektronik', '056', 'TOA Cone Speaker', NULL, NULL),
(107, 'Elektronik', '057', 'UPS', NULL, NULL),
(108, 'Elektronik', '058', 'Wifi Adaptor', NULL, NULL),
(109, 'Alat Ukur', '001', 'AC regulator', NULL, NULL),
(110, 'Alat Ukur', '002', 'Ukur Tinggi Badan', NULL, NULL),
(111, 'Alat Ukur', '003', 'Batery tester', NULL, NULL),
(112, 'Alat Ukur', '004', 'Bore gauge', NULL, NULL),
(113, 'Alat Ukur', '005', 'compossesor tester', NULL, NULL),
(114, 'Alat Ukur', '006', 'cup ukur plastik', NULL, NULL),
(115, 'Alat Ukur', '007', 'Cylinder bore gauge', NULL, NULL),
(116, 'Alat Ukur', '008', 'Dial gauge', NULL, NULL),
(117, 'Alat Ukur', '009', 'Diesel compression tester', NULL, NULL),
(118, 'Alat Ukur', '010', 'Dwell tester', NULL, NULL),
(119, 'Alat Ukur', '011', 'Fuller gauge', NULL, NULL),
(120, 'Alat Ukur', '012', 'Gelas ukur', NULL, NULL),
(121, 'Alat Ukur', '013', 'Hidrometer', NULL, NULL),
(122, 'Alat Ukur', '014', 'Injector diesel tester', NULL, NULL),
(123, 'Alat Ukur', '015', 'Jangka sorong', NULL, NULL),
(124, 'Alat Ukur', '016', 'Kalorimeter', NULL, NULL),
(125, 'Alat Ukur', '017', 'Kunci momen', NULL, NULL),
(126, 'Alat Ukur', '018', 'Meteran', NULL, NULL),
(127, 'Alat Ukur', '019', 'Mikrometer', NULL, NULL),
(128, 'Alat Ukur', '020', 'Mistar busur', NULL, NULL),
(129, 'Alat Ukur', '021', 'Multitester', NULL, NULL),
(130, 'Alat Ukur', '022', 'Penggaris Siku Besi', NULL, NULL),
(131, 'Alat Ukur', '023', 'Radiator & radiator cap tester', NULL, NULL),
(132, 'Alat Ukur', '024', 'Rambu Ukur Aluminium 3 meter', NULL, NULL),
(133, 'Alat Ukur', '025', 'Scanner', NULL, NULL),
(134, 'Alat Ukur', '026', 'Screw gauge', NULL, NULL),
(135, 'Alat Ukur', '027', 'sendok ukur plastik', NULL, NULL),
(136, 'Alat Ukur', '028', 'Siku', NULL, NULL),
(137, 'Alat Ukur', '029', 'Spring scale', NULL, NULL),
(138, 'Alat Ukur', '030', 'Stopwacth', NULL, NULL),
(139, 'Alat Ukur', '031', 'Tabung Ukur 10 ml', NULL, NULL),
(140, 'Alat Ukur', '032', 'Tensi Meter', NULL, NULL),
(141, 'Alat Ukur', '033', 'Termometer', NULL, NULL),
(142, 'Alat Ukur', '034', 'Timbangan', NULL, NULL),
(143, 'Alat Trainer', '001', 'AC trainer', NULL, NULL),
(144, 'Alat Trainer', '002', 'Car trainer', NULL, NULL),
(145, 'Alat Trainer', '003', 'Engine death', NULL, NULL),
(146, 'Alat Trainer', '004', 'Mesin sepeda motor', NULL, NULL),
(147, 'Alat Trainer', '005', 'Power trainer', NULL, NULL),
(148, 'Alat Trainer', '006', 'Trainer AC', NULL, NULL),
(149, 'Alat Trainer', '007', 'Trainer Bensin', NULL, NULL),
(150, 'Alat Trainer', '008', 'Trainer Diesel', NULL, NULL),
(151, 'Alat Trainer', '009', 'Trainer EFI', NULL, NULL),
(152, 'Alat Trainer', '010', 'Trainer injection pump', NULL, NULL),
(153, 'Alat Trainer', '011', 'Trainer kelistrikan Body', NULL, NULL),
(154, 'Alat Trainer', '012', 'Trainer pengapian', NULL, NULL),
(155, 'Alat Trainer', '013', 'Trainer pengisian', NULL, NULL),
(156, 'Alat Trainer', '014', 'Trainer poros roda & gardan', NULL, NULL),
(157, 'Alat Trainer', '015', 'Trainer Power Window', NULL, NULL),
(158, 'Alat Trainer', '016', 'Trainer rem hidrolik', NULL, NULL),
(159, 'Alat Trainer', '017', 'Trainer sepeda motor', NULL, NULL),
(160, 'Alat Trainer', '018', 'Trainer steering', NULL, NULL),
(161, 'Alat Trainer', '019', 'Trainer transmisi', NULL, NULL),
(162, 'Alat Musik', '001', 'Acoustic Guitar/Yamaha C40', NULL, NULL),
(163, 'Alat Musik', '002', 'Acoustic Guitar/Yamaha C70', NULL, NULL),
(164, 'Alat Musik', '003', 'Bongo (Percussion)', NULL, NULL),
(165, 'Alat Musik', '004', 'Combo Bass/Rhoud BC300', NULL, NULL),
(166, 'Alat Musik', '005', 'Combo Sound Mixer/RB Series 600', NULL, NULL),
(167, 'Alat Musik', '006', 'Drum/Prince', NULL, NULL),
(168, 'Alat Musik', '007', 'Drum Box/Pert', NULL, NULL),
(169, 'Alat Musik', '008', 'Electric Basses/Gillmore', NULL, NULL),
(170, 'Alat Musik', '009', 'Electric Guitar/Fender', NULL, NULL),
(171, 'Alat Musik', '010', 'Electric Guitar/Rockwell', NULL, NULL),
(172, 'Alat Musik', '011', 'Guitar Amplifier/Speaker Cabinet/Russel RG-60', NULL, NULL),
(173, 'Alat Musik', '012', 'Keyboard/Rolland', NULL, NULL),
(174, 'Alat Kendaraan', '001', 'BUS/H 1165 YW', NULL, NULL),
(175, 'Alat Kendaraan', '002', 'BUS/H 1167 YW', NULL, NULL),
(176, 'Alat Kendaraan', '003', 'L 300 Putih/ H 8604 QC', NULL, NULL),
(177, 'Alat Kendaraan', '004', 'L 300 SILVER/H 9377 RY', NULL, NULL),
(178, 'Alat Kendaraan', '005', 'REVO/H 4037 VZ', NULL, NULL),
(179, 'Alat Kendaraan', '006', 'XENIA/H 8961 HY', NULL, NULL),
(180, 'Alat praktik', '001', 'Ac Regulator', NULL, NULL),
(181, 'Alat praktik', '002', 'Access Point', NULL, NULL),
(182, 'Alat praktik', '003', 'Air Compressor', NULL, NULL),
(183, 'Alat praktik', '004', 'Air duster', NULL, NULL),
(184, 'Alat praktik', '005', 'Air impact', NULL, NULL),
(185, 'Alat praktik', '006', 'Alat Potong keramik', NULL, NULL),
(186, 'Alat praktik', '007', 'Ac Anglo', NULL, NULL),
(187, 'Alat praktik', '008', 'Asbak', NULL, NULL),
(188, 'Alat praktik', '009', 'Auto Level', NULL, NULL),
(189, 'Alat praktik', '010', 'Aoto scope', NULL, NULL),
(190, 'Alat praktik', '011', 'Baki', NULL, NULL),
(191, 'Alat praktik', '012', 'balon wish/kocokan telur', NULL, NULL),
(192, 'Alat praktik', '013', 'Barbeque brush', NULL, NULL),
(193, 'Alat praktik', '014', 'Baskom', NULL, NULL),
(194, 'Alat praktik', '015', 'Battery changer', NULL, NULL),
(195, 'Alat praktik', '016', 'Bearing puller', NULL, NULL),
(196, 'Alat praktik', '017', 'Bending', NULL, NULL),
(197, 'Alat praktik', '018', 'Betel', NULL, NULL),
(198, 'Alat praktik', '019', 'Beverage Dispenser', NULL, NULL),
(199, 'Alat praktik', '020', 'Blok V', NULL, NULL),
(200, 'Alat praktik', '021', 'Bola Basket', NULL, NULL),
(201, 'Alat praktik', '022', 'Bola Futsal', NULL, NULL),
(202, 'Alat praktik', '023', 'Bola Kasti', NULL, NULL),
(203, 'Alat praktik', '024', 'Bola Sepak', NULL, NULL),
(204, 'Alat praktik', '025', 'Bola Sepak Takraw', NULL, NULL),
(205, 'Alat praktik', '026', 'Bola Softball', NULL, NULL),
(206, 'Alat praktik', '027', 'Bola Voli', NULL, NULL),
(207, 'Alat praktik', '028', 'Bor duduk', NULL, NULL),
(208, 'Alat praktik', '029', 'Bor Tangan', NULL, NULL),
(209, 'Alat praktik', '030', 'Bowl plastic(Mangkuk)', NULL, NULL),
(210, 'Alat praktik', '031', 'Bowl simple 21cm', NULL, NULL),
(211, 'Alat praktik', '032', 'Bowl saintless', NULL, NULL),
(212, 'Alat praktik', '033', 'Brake tool kit', NULL, NULL),
(213, 'Alat praktik', '034', 'Braket Projector', NULL, NULL),
(214, 'Alat praktik', '035', 'Butter knife', NULL, NULL),
(215, 'Alat praktik', '036', 'Butter spreader', NULL, NULL),
(216, 'Alat praktik', '037', 'Cable Tester', NULL, NULL),
(217, 'Alat praktik', '038', 'Caddytool', NULL, NULL),
(218, 'Alat praktik', '039', 'Cake decoration', NULL, NULL),
(219, 'Alat praktik', '040', 'Cake tong/penjepit kue', NULL, NULL),
(220, 'Alat praktik', '041', 'Cakram', NULL, NULL),
(221, 'Alat praktik', '042', 'Candle Holder keramik', NULL, NULL),
(222, 'Alat praktik', '043', 'Cangkir Teh/ Kopi(hanya saucer)', NULL, NULL),
(223, 'Alat praktik', '044', 'Cangkir Teh/ Kopi+saucer', NULL, NULL),
(224, 'Alat praktik', '045', 'Cangkul', NULL, NULL),
(225, 'Alat praktik', '046', 'Card Reader', NULL, NULL),
(226, 'Alat praktik', '047', 'Casing CPU', NULL, NULL),
(227, 'Alat praktik', '048', 'Catut Kakaktua', NULL, NULL),
(228, 'Alat praktik', '049', 'CD Windows 7 HP', NULL, NULL),
(229, 'Alat praktik', '050', 'CD-VGA', NULL, NULL),
(230, 'Alat praktik', '051', 'CD-WINDOWS', NULL, NULL),
(231, 'Alat praktik', '052', 'Centong melamin', NULL, NULL),
(232, 'Alat praktik', '053', 'Centong nasi kayu', NULL, NULL),
(233, 'Alat praktik', '054', 'Centong plastik', NULL, NULL),
(234, 'Alat praktik', '055', 'Cereal bowl', NULL, NULL),
(235, 'Alat praktik', '056', 'Cetakan Buah Cocktail', NULL, NULL),
(236, 'Alat praktik', '057', 'Ceting nasi(pink,hijau,biru)', NULL, NULL),
(237, 'Alat praktik', '058', 'Cetok Bulat', NULL, NULL),
(238, 'Alat praktik', '059', 'Cetok Kotak', NULL, NULL),
(239, 'Alat praktik', '060', 'Cetok Lidah/Lancip', NULL, NULL),
(240, 'Alat praktik', '061', 'Champagne flutter glass', NULL, NULL),
(241, 'Alat praktik', '062', 'Charger Baterai', NULL, NULL),
(242, 'Alat praktik', '063', 'Charger DSLR', NULL, NULL),
(243, 'Alat praktik', '064', 'Charger Handycam', NULL, NULL),
(244, 'Alat praktik', '065', 'Charger langsung kamera', NULL, NULL),
(245, 'Alat praktik', '066', 'Charger Sony', NULL, NULL),
(246, 'Alat praktik', '067', 'Circular Saw', NULL, NULL),
(247, 'Alat praktik', '068', 'Clapper', NULL, NULL),
(248, 'Alat praktik', '069', 'Cobek', NULL, NULL),
(249, 'Alat praktik', '070', 'Cocktail Glass', NULL, NULL),
(250, 'Alat praktik', '071', 'Compression tester', NULL, NULL),
(251, 'Alat praktik', '072', 'Cones 1 set', NULL, NULL),
(252, 'Alat praktik', '073', 'Converter Vidio', NULL, NULL),
(253, 'Alat praktik', '074', 'Corong 6 cm', NULL, NULL),
(254, 'Alat praktik', '075', 'Creeper', NULL, NULL),
(255, 'Alat praktik', '076', 'Crimping plier', NULL, NULL),
(256, 'Alat praktik', '077', 'Crimping Tools', NULL, NULL),
(257, 'Alat praktik', '078', 'Cutting board(Talenan)', NULL, NULL),
(258, 'Alat praktik', '079', 'Dandang', NULL, NULL),
(259, 'Alat praktik', '080', 'Deep Plate ijo', NULL, NULL),
(260, 'Alat praktik', '081', 'Dessert fork', NULL, NULL),
(261, 'Alat praktik', '082', 'Dessert plate', NULL, NULL),
(262, 'Alat praktik', '083', 'Digital Theodolite', NULL, NULL),
(263, 'Alat praktik', '084', 'Dinner fork', NULL, NULL),
(264, 'Alat praktik', '085', 'Dinner knife', NULL, NULL),
(265, 'Alat praktik', '086', 'Dinner Plate', NULL, NULL),
(266, 'Alat praktik', '087', 'Dinner spoon', NULL, NULL),
(267, 'Alat praktik', '088', 'Dongkrak buaya', NULL, NULL),
(268, 'Alat praktik', '089', 'Drill Impact(Bor Tangan)', NULL, NULL),
(269, 'Alat praktik', '090', 'DVD Eksternal', NULL, NULL),
(270, 'Alat praktik', '091', 'EEHW 20-220 C (BMN) ECONA EXHAUST HOOD ISLAND TYPE(CENTER) JOB', NULL, NULL),
(271, 'Alat praktik', '092', 'EEHW 20-220 L/R (BMN) ECONA EXHAUST HOOD-ISLAND TYPE(LEFT/RIGHT)(JOB)', NULL, NULL),
(272, 'Alat praktik', '093', 'EEHW 20-220 L/R(BMN) ECONA EXHAUST HOOD-ISLAND TYPE(LEFT/RIGHT)(JOB)', NULL, NULL),
(273, 'Alat praktik', '094', 'Egg stand keramik', NULL, NULL),
(274, 'Alat praktik', '095', 'Electric Coffee Boiler', NULL, NULL),
(275, 'Alat praktik', '096', 'Electric Coffee Maker', NULL, NULL),
(276, 'Alat praktik', '097', 'Elektrik knife', NULL, NULL),
(277, 'Alat praktik', '098', 'Elektrik Molen', NULL, NULL),
(278, 'Alat praktik', '099', 'Elektronik tool set', NULL, NULL),
(279, 'Alat praktik', '100', 'Ember Adukan', NULL, NULL),
(280, 'Alat praktik', '101', 'Ember Adukan Besar', NULL, NULL),
(281, 'Alat praktik', '102', 'EPSO 9-75 POT SINK W/SPLASH BACK', NULL, NULL),
(282, 'Alat praktik', '103', 'ERP 12-50 ADJUST TABLE PUNCHED PAN RACK', NULL, NULL),
(283, 'Alat praktik', '104', 'ESDO 12-75 C DOUBLE SINK TABLE W/SPLASH', NULL, NULL),
(284, 'Alat praktik', '105', 'ESDO 12-75 C DOUBLE SINK TABLE W/SPLASH', NULL, NULL),
(285, 'Alat praktik', '106', 'ET 1(SMK) ECONA WORK TABLE W/SB(X)', NULL, NULL),
(286, 'Alat praktik', '107', 'ET 12-75 WORK TABLE W/SWING DOOR', NULL, NULL),
(287, 'Alat praktik', '108', 'ET 9-75 WORK TABLE W/UNDERSHELF W/O S', NULL, NULL),
(288, 'Alat praktik', '109', 'ET1 (SMK) ECONA WORK TABLE W/SB(X)', NULL, NULL),
(289, 'Alat praktik', '110', 'ETA 19-20 WORK TABLE W/UNDERSHELF W/O S', NULL, NULL),
(290, 'Alat praktik', '111', 'ETDO  9-75 CLEAN DISH TABLE W/SPLASH BA', NULL, NULL),
(291, 'Alat praktik', '112', 'ETSO 9-75 R SOILED TABLE W/SCRAP HOLE A ', NULL, NULL),
(292, 'Alat praktik', '113', 'EUCSD 9-60 UPRIGHT CABINET W/SWING DOOR', NULL, NULL),
(293, 'Alat praktik', '114', 'Fender cover', NULL, NULL),
(294, 'Alat praktik', '115', 'Filter Gradual Kit 52mm', NULL, NULL),
(295, 'Alat praktik', '116', 'Flash Eksternal SPEED LITE YN 560 IV', NULL, NULL),
(296, 'Alat praktik', '117', 'Flash Eksternal SPEED LITE YN 5603', NULL, NULL),
(297, 'Alat praktik', '118', 'Flute glass', NULL, NULL),
(298, 'Alat praktik', '119', 'FOOD BLENDER MIXER (BLIXER 3)33141)', NULL, NULL),
(299, 'Alat praktik', '120', 'FRYER GFE/40', NULL, NULL),
(300, 'Alat praktik', '121', 'FST 8-50(A) FOOD SERVICE TROLLEY', NULL, NULL),
(301, 'Alat praktik', '122', 'Garpu', NULL, NULL),
(302, 'Alat praktik', '123', 'Garpu buah', NULL, NULL),
(303, 'Alat praktik', '124', 'Garpu tiram', NULL, NULL),
(304, 'Alat praktik', '125', 'Garputala Kotak Resonansi', NULL, NULL),
(305, 'Alat praktik', '126', 'Garputala set 4', NULL, NULL),
(306, 'Alat praktik', '127', 'Gear puller', NULL, NULL),
(307, 'Alat praktik', '128', 'Gelas brandy', NULL, NULL),
(308, 'Alat praktik', '129', 'Gelas gelael', NULL, NULL),
(309, 'Alat praktik', '130', 'Gelas kaca', NULL, NULL),
(310, 'Alat praktik', '131', 'Gelas kimia 250 ml', NULL, NULL),
(311, 'Alat praktik', '132', 'Gelas Labu', NULL, NULL),
(312, 'Alat praktik', '133', 'Gelas pilsner', NULL, NULL),
(313, 'Alat praktik', '134', 'Gelas sri ratu', NULL, NULL),
(314, 'Alat praktik', '135', 'Gelas tulip', NULL, NULL),
(315, 'Alat praktik', '136', 'Generator', NULL, NULL),
(316, 'Alat praktik', '137', 'Gergaji besi', NULL, NULL),
(317, 'Alat praktik', '138', 'Gergaji Kayu 19', NULL, NULL),
(318, 'Alat praktik', '139', 'Gergaji kayu 20', NULL, NULL),
(319, 'Alat praktik', '140', 'Gergaji kayu 20', NULL, NULL),
(320, 'Alat praktik', '141', 'Gergaji Multiplek', NULL, NULL),
(321, 'Alat praktik', '142', 'Gerinda duduk', NULL, NULL),
(322, 'Alat praktik', '143', 'Gerinda potong', NULL, NULL),
(323, 'Alat praktik', '144', 'Gerinda tangan', NULL, NULL),
(324, 'Alat praktik', '145', 'Glass block', NULL, NULL),
(325, 'Alat praktik', '146', 'Glass footed platter', NULL, NULL),
(326, 'Alat praktik', '147', 'Glass Plate Oval ijo', NULL, NULL),
(327, 'Alat praktik', '148', 'Glove Softball Kulit', NULL, NULL),
(328, 'Alat praktik', '149', 'Goblet glass', NULL, NULL),
(329, 'Alat praktik', '150', 'GREASE TRAP 4-3-2 GREASE TRAP', NULL, NULL),
(330, 'Alat praktik', '151', 'Grinder', NULL, NULL),
(331, 'Alat praktik', '152', 'Gunting Bunga', NULL, NULL),
(332, 'Alat praktik', '153', 'Gunting plat', NULL, NULL),
(333, 'Alat praktik', '154', 'Hand grease gun', NULL, NULL),
(334, 'Alat praktik', '155', 'Hand mixer', NULL, NULL),
(335, 'Alat praktik', '156', 'Hand oil gun', NULL, NULL),
(336, 'Alat praktik', '157', 'Hand oil pump', NULL, NULL),
(337, 'Alat praktik', '158', 'Hand Pump', NULL, NULL),
(338, 'Alat praktik', '159', 'Hand rivet', NULL, NULL),
(339, 'Alat praktik', '160', 'Handley sney', NULL, NULL),
(340, 'Alat praktik', '161', 'Handley tap', NULL, NULL),
(341, 'Alat praktik', '162', 'HandyCam DX6 Spectra', NULL, NULL),
(342, 'Alat praktik', '163', 'Harddisk Eksternal', NULL, NULL),
(343, 'Alat praktik', '165', 'Headset', NULL, NULL),
(344, 'Alat praktik', '166', 'Helm proyek', NULL, NULL),
(345, 'Alat praktik', '167', 'Hidrolic presure', NULL, NULL),
(346, 'Alat praktik', '168', 'Hub', NULL, NULL),
(347, 'Alat praktik', '169', 'Ice cream cup glass', NULL, NULL),
(348, 'Alat praktik', '170', 'impulse scaller', NULL, NULL),
(349, 'Alat praktik', '171', 'INSERT OPTIMA(40 MM)', NULL, NULL),
(350, 'Alat praktik', '172', 'Irik bambu', NULL, NULL),
(351, 'Alat praktik', '173', 'Irus batok', NULL, NULL),
(352, 'Alat praktik', '174', 'Jackstand', NULL, NULL),
(353, 'Alat praktik', '175', 'Jangka Sorong', NULL, NULL),
(354, 'Alat praktik', '176', 'Jangka Ring Basket', NULL, NULL),
(355, 'Alat praktik', '177', 'Jidak baja ringan', NULL, NULL),
(356, 'Alat praktik', '178', 'Jiddar', NULL, NULL),
(357, 'Alat praktik', '179', 'Jigsaw', NULL, NULL),
(358, 'Alat praktik', '180', 'Juice Glass', NULL, NULL),
(359, 'Alat praktik', '181', 'Kabel Harddisk', NULL, NULL),
(360, 'Alat praktik', '182', 'Kabel VGA', NULL, NULL),
(361, 'Alat praktik', '183', 'Kaca las', NULL, NULL),
(362, 'Alat praktik', '184', 'Kacamata', NULL, NULL),
(363, 'Alat praktik', '185', 'Kain skriting', NULL, NULL),
(364, 'Alat praktik', '186', 'Kaki Tiga Besi', NULL, NULL),
(365, 'Alat praktik', '187', 'Kamera Analog', NULL, NULL),
(366, 'Alat praktik', '188', 'Kamera DSLR', NULL, NULL),
(367, 'Alat praktik', '189', 'Kamera pocket', NULL, NULL),
(368, 'Alat praktik', '190', 'Kamera Vidio Sony', NULL, NULL),
(369, 'Alat praktik', '191', 'Kaos Team Basket', NULL, NULL),
(370, 'Alat praktik', '192', 'Kaos Team Bola Volly', NULL, NULL),
(371, 'Alat praktik', '193', 'Kapak', NULL, NULL),
(372, 'Alat praktik', '194', 'Kawat Nikron', NULL, NULL),
(373, 'Alat praktik', '195', 'Ketok huruf', NULL, NULL),
(374, 'Alat praktik', '196', 'Kikir', NULL, NULL),
(375, 'Alat praktik', '197', 'Kit Eleltronik', NULL, NULL),
(376, 'Alat praktik', '198', 'Kitchen Scisseors', NULL, NULL),
(377, 'Alat praktik', '199', 'Klem', NULL, NULL),
(378, 'Alat praktik', '200', 'Klem freon', NULL, NULL),
(379, 'Alat praktik', '201', 'Knife/pisau daging sedang', NULL, NULL),
(380, 'Alat praktik', '202', 'Kompas Bidik', NULL, NULL),
(381, 'Alat praktik', '203', ' Kompas 2 Tungku', NULL, NULL),
(382, 'Alat praktik', '204', 'Kompas Gas 2 Mata', NULL, NULL),
(383, 'Alat praktik', '205', 'Kompor Plat', NULL, NULL),
(384, 'Alat praktik', '206', 'Kompresor', NULL, NULL),
(385, 'Alat praktik', '207', 'Kontainer besar', NULL, NULL),
(386, 'Alat praktik', '208', 'Kontainer kecil', NULL, NULL),
(387, 'Alat praktik', '209', 'Kontainer sedang', NULL, NULL),
(388, 'Alat praktik', '210', 'Kunci bending besi', NULL, NULL),
(389, 'Alat praktik', '211', 'Kunci busi', NULL, NULL),
(390, 'Alat praktik', '212', 'Kunci filter oli', NULL, NULL),
(391, 'Alat praktik', '213', 'Kunci hexagonal(L)', NULL, NULL),
(392, 'Alat praktik', '214', 'Kunci hexagonal(L) bintang', NULL, NULL),
(393, 'Alat praktik', '215', 'Kunci inggris', NULL, NULL),
(394, 'Alat praktik', '216', 'Kunci klep', NULL, NULL),
(395, 'Alat praktik', '217', 'Kunci kombinasi', NULL, NULL),
(396, 'Alat praktik', '218', 'Kunci L', NULL, NULL),
(397, 'Alat praktik', '219', 'Kunci nipel', NULL, NULL),
(398, 'Alat praktik', '220', 'Kunci oli gardar', NULL, NULL),
(399, 'Alat praktik', '221', 'Kunci pas', NULL, NULL),
(400, 'Alat praktik', '222', 'Kunci pas ring', NULL, NULL),
(401, 'Alat praktik', '223', 'Kunci pipa', NULL, NULL),
(402, 'Alat praktik', '224', 'Kunci Ring', NULL, NULL),
(403, 'Alat praktik', '225', 'Kunci Roda', NULL, NULL),
(404, 'Alat praktik', '226', 'Kunci socket', NULL, NULL),
(405, 'Alat praktik', '227', 'Kunci T', NULL, NULL),
(406, 'Alat praktik', '228', 'Kunci Torx (bintang)', NULL, NULL),
(407, 'Alat praktik', '229', 'Kunci Tutup klep', NULL, NULL),
(408, 'Alat praktik', '230', 'Laddle besar', NULL, NULL),
(409, 'Alat praktik', '231', 'Laddle kecil', NULL, NULL),
(410, 'Alat praktik', '232', 'Laddle saintles', NULL, NULL),
(411, 'Alat praktik', '233', 'Lampu', NULL, NULL),
(412, 'Alat praktik', '234', 'Lampu Broadcast(BesaR)1000 watt', NULL, NULL),
(413, 'Alat praktik', '235', 'Lampu Everbait', NULL, NULL),
(414, 'Alat praktik', '236', 'Lampu fotografi', NULL, NULL),
(415, 'Alat praktik', '237', 'Lampu Halogen 500w', NULL, NULL),
(416, 'Alat praktik', '238', 'Lampu Lighting(stand)', NULL, NULL),
(417, 'Alat praktik', '239', 'Lampu lighting Broadcast', NULL, NULL),
(418, 'Alat praktik', '240', 'Lampu sorot', NULL, NULL),
(419, 'Alat praktik', '241', 'LAN CARD', NULL, NULL),
(420, 'Alat praktik', '242', 'leaddle stainles', NULL, NULL),
(421, 'Alat praktik', '243', 'LED Photo Vidio', NULL, NULL),
(422, 'Alat praktik', '244', 'Lembing AL', NULL, NULL),
(423, 'Alat praktik', '245', 'lensa Nikon D3000', NULL, NULL),
(424, 'Alat praktik', '246', 'linggis', NULL, NULL),
(425, 'Alat praktik', '247', 'Loyang Brioce/kembang-kembang', NULL, NULL),
(426, 'Alat praktik', '248', 'Loyang oven 28x28x1,5 cm', NULL, NULL),
(427, 'Alat praktik', '249', 'Lumpang dan Alu', NULL, NULL),
(428, 'Alat praktik', '250', 'Lup Sedang', NULL, NULL),
(429, 'Alat praktik', '251', 'Magnet Batang Besar', NULL, NULL),
(430, 'Alat praktik', '252', 'Magnet Jarum 	Berpenumpu', NULL, NULL),
(431, 'Alat praktik', '253', 'Magnet U', NULL, NULL),
(432, 'Alat praktik', '254', 'Magnetik stand', NULL, NULL),
(433, 'Alat praktik', '255', 'Magnetik stand', NULL, NULL),
(434, 'Alat praktik', '256', 'Mainboard', NULL, NULL),
(435, 'Alat praktik', '257', 'Mangkok', NULL, NULL),
(436, 'Alat praktik', '258', 'Margarita glass(saucer', NULL, NULL),
(437, 'Alat praktik', '259', 'Mata Obeng', NULL, NULL),
(438, 'Alat praktik', '260', 'Matras Senam Lantai', NULL, NULL),
(439, 'Alat praktik', '261', 'Meet hammer', NULL, NULL),
(440, 'Alat praktik', '262', 'Meat Mincer', NULL, NULL),
(441, 'Alat praktik', '263', 'MEAT SLICER 1OO GLT MINERVA', NULL, NULL),
(442, 'Alat praktik', '264', 'Meja kerja praktikum', NULL, NULL),
(443, 'Alat praktik', '265', 'Meja Praktek', NULL, NULL),
(444, 'Alat praktik', '266', 'Meja Putar Cake', NULL, NULL),
(445, 'Alat praktik', '267', 'Meja rata', NULL, NULL),
(446, 'Alat praktik', '268', 'Memory Card 16gb Class 10', NULL, NULL),
(447, 'Alat praktik', '269', 'Memory Card 1gb', NULL, NULL),
(448, 'Alat praktik', '270', 'Memory Card 2gb', NULL, NULL),
(449, 'Alat praktik', '271', 'Memory Card 4gb Class 4', NULL, NULL),
(450, 'Alat praktik', '272', 'Memory Card 8gb Class 4', NULL, NULL),
(451, 'Alat praktik', '273', 'Mesin bor tangan', NULL, NULL),
(452, 'Alat praktik', '274', 'Mesin las', NULL, NULL),
(453, 'Alat praktik', '275', 'Mesin molen cor', NULL, NULL),
(454, 'Alat praktik', '276', 'Mesin pembuat pasta/mie', NULL, NULL),
(455, 'Alat praktik', '277', 'Mesin poles', NULL, NULL),
(456, 'Alat praktik', '278', 'Mesin sepeda motor', NULL, NULL),
(457, 'Alat praktik', '279', 'Meteram Besi 5 meter', NULL, NULL),
(458, 'Alat praktik', '280', 'Micrometer 0-25', NULL, NULL),
(459, 'Alat praktik', '281', 'Micrometer Secrup', NULL, NULL),
(460, 'Alat praktik', '282', 'Microphone', NULL, NULL),
(461, 'Alat praktik', '283', 'Microskrop', NULL, NULL),
(462, 'Alat praktik', '284', 'Mikrometer stand', NULL, NULL),
(463, 'Alat praktik', '285', 'Milk Jug', NULL, NULL),
(464, 'Alat praktik', '286', 'Milkshake glass', NULL, NULL),
(465, 'Alat praktik', '287', 'Mini Router(Mesin propil Kayu)', NULL, NULL),
(466, 'Alat praktik', '288', 'Mixer', NULL, NULL),
(467, 'Alat praktik', '289', 'Mixer Optima OPH-7', NULL, NULL),
(468, 'Alat praktik', '290', 'Mobile Hub', NULL, NULL),
(469, 'Alat praktik', '291', 'Modem 4G', NULL, NULL),
(470, 'Alat praktik', '292', 'Mouse Pad', NULL, NULL),
(471, 'Alat praktik', '294', 'Multitester', NULL, NULL),
(472, 'Alat praktik', '295', 'Nampan grabah', NULL, NULL),
(473, 'Alat praktik', '296', 'Napkin', NULL, NULL),
(474, 'Alat praktik', '297', 'NBB 6-60 BUTCHER BLOK', NULL, NULL),
(475, 'Alat praktik', '298', 'NCG 661 GAS COMBI STEAMER', NULL, NULL),
(476, 'Alat praktik', '299', 'NDWE-30/IP', NULL, NULL),
(477, 'Alat praktik', '300', 'Neraca 3 Lengan', NULL, NULL),
(478, 'Alat praktik', '301', 'Neraca Digital', NULL, NULL),
(479, 'Alat praktik', '302', 'Neraca Pegas', NULL, NULL),
(480, 'Alat praktik', '303', 'Net Takraw', NULL, NULL),
(481, 'Alat praktik', '304', 'Net Voli', NULL, NULL),
(482, 'Alat praktik', '305', 'NF G4-2/1 N7.4 NAYATI REFRI CHILLER CAB.', NULL, NULL),
(483, 'Alat praktik', '306', 'NF G4-2/1 N7.4 NAYATI RERFRI FREEZER CAB.', NULL, NULL),
(484, 'Alat praktik', '307', 'NGBP 60 DRC MR GAS BOILLING PAN', NULL, NULL),
(485, 'Alat praktik', '308', 'NGBP 8-90', NULL, NULL),
(486, 'Alat praktik', '309', 'NGCB 8--75 OC MR GAS CHAR BROILER', NULL, NULL),
(487, 'Alat praktik', '310', 'NGETL 6-60 GAS STOCK POT STOVE', NULL, NULL),
(488, 'Alat praktik', '312', 'NGK 6-75 C GAS KWALIE RANGE', NULL, NULL),
(489, 'Alat praktik', '313', 'NGN 6-75 MR GAS NOODLE BOILER', NULL, NULL),
(490, 'Alat praktik', '314', 'NGR 8-75 MR GAS OPEN BURNERS W/OVEN', NULL, NULL),
(491, 'Alat praktik', '315', 'NGRC 3-22 RICE COOKER', NULL, NULL),
(492, 'Alat praktik', '316', 'NGTP 8-75 MR GAS TILTING PAN', NULL, NULL),
(493, 'Alat praktik', '317', 'nicerdicer 1 set', NULL, NULL),
(494, 'Alat praktik', '318', 'Nikon Coolpix', NULL, NULL),
(495, 'Alat praktik', '319', 'Nipel coupler', NULL, NULL),
(496, 'Alat praktik', '320', 'Notebook', NULL, NULL),
(497, 'Alat praktik', '321', 'NRT 2C 25O N7.2 NAYATI REFRI CHILLER CTR', NULL, NULL),
(498, 'Alat praktik', '322', 'nut cracker', NULL, NULL),
(499, 'Alat praktik', '323', 'Obeng', NULL, NULL),
(500, 'Alat praktik', '324', 'Obeng Elektrik', NULL, NULL),
(501, 'Alat praktik', '325', 'Obeng ketok', NULL, NULL),
(502, 'Alat praktik', '326', 'Obeng Mekanik', NULL, NULL),
(503, 'Alat praktik', '327', 'Obeng Mekanik 1 Set', NULL, NULL),
(504, 'Alat praktik', '328', 'Obeng Min', NULL, NULL),
(505, 'Alat praktik', '329', 'Obeng Paket', NULL, NULL),
(506, 'Alat praktik', '330', 'Obeng Plus', NULL, NULL),
(507, 'Alat praktik', '331', 'Obeng Plus Min', NULL, NULL),
(508, 'Alat praktik', '332', 'Oil can', NULL, NULL),
(509, 'Alat praktik', '333', 'Old fashion glass', NULL, NULL),
(510, 'Alat praktik', '334', 'Oven', NULL, NULL),
(511, 'Alat praktik', '335', 'Pahat', NULL, NULL),
(512, 'Alat praktik', '336', 'Palu', NULL, NULL),
(513, 'Alat praktik', '337', 'Pan 21cm', NULL, NULL),
(514, 'Alat praktik', '338', 'Pan dish', NULL, NULL),
(515, 'Alat praktik', '339', 'Pan/ wajan besar', NULL, NULL),
(516, 'Alat praktik', '340', 'Pan/ wajan besi sedang', NULL, NULL),
(517, 'Alat praktik', '341', 'Pan/ wajan tembaga sedang', NULL, NULL),
(518, 'Alat praktik', '342', 'Panci', NULL, NULL),
(519, 'Alat praktik', '343', 'Panci 24cm', NULL, NULL),
(520, 'Alat praktik', '344', 'Papan alat', NULL, NULL),
(521, 'Alat praktik', '345', 'parutan keju', NULL, NULL),
(522, 'Alat praktik', '346', 'PCI Adaptor', NULL, NULL),
(523, 'Alat praktik', '347', 'Peeler', NULL, NULL),
(524, 'Alat praktik', '348', 'Pegas', NULL, NULL),
(525, 'Alat praktik', '349', 'Pelat Tetes', NULL, NULL),
(526, 'Alat praktik', '350', 'Peluru', NULL, NULL),
(527, 'Alat praktik', '351', 'Pemancar Radio', NULL, NULL),
(528, 'Alat praktik', '352', 'Pemancar TV', NULL, NULL),
(529, 'Alat praktik', '353', 'Pemanggang roti', NULL, NULL),
(530, 'Alat praktik', '354', 'Pembakar Spirtus', NULL, NULL),
(531, 'Alat praktik', '355', 'Pembengkok Tulangan', NULL, NULL),
(532, 'Alat praktik', '356', 'Pembuka ban', NULL, NULL),
(533, 'Alat praktik', '357', 'Pembuka botol', NULL, NULL),
(534, 'Alat praktik', '358', 'pembuka kaleng', NULL, NULL),
(535, 'Alat praktik', '359', 'Pen Tablet', NULL, NULL),
(536, 'Alat praktik', '360', 'penghangat roti', NULL, NULL),
(537, 'Alat praktik', '361', 'Penitik', NULL, NULL),
(538, 'Alat praktik', '362', 'Penjepit Tabung Kayu', NULL, NULL),
(539, 'Alat praktik', '363', 'Penyaring minyak', NULL, NULL),
(540, 'Alat praktik', '364', 'Penyetel jari roda', NULL, NULL),
(541, 'Alat praktik', '365', 'Percobaan Hukum Ohm', NULL, NULL),
(542, 'Alat praktik', '366', 'Perforator', NULL, NULL),
(543, 'Alat praktik', '367', 'Pilsner glass', NULL, NULL),
(544, 'Alat praktik', '368', 'Pinset Lurus', NULL, NULL),
(545, 'Alat praktik', '369', 'Piring ceper', NULL, NULL),
(546, 'Alat praktik', '370', 'Piring Daun Pisang ijo', NULL, NULL),
(547, 'Alat praktik', '371', 'Piring Hidang Segi Empat Kecil', NULL, NULL),
(548, 'Alat praktik', '372', 'Piring Makan', NULL, NULL),
(549, 'Alat praktik', '373', 'Piring Melamin', NULL, NULL),
(550, 'Alat praktik', '374', 'Piring Oval', NULL, NULL),
(551, 'Alat praktik', '375', 'Pisau 8 inch', NULL, NULL),
(552, 'Alat praktik', '376', 'pisau carving 1set', NULL, NULL),
(553, 'Alat praktik', '377', 'Pisau gerigi', NULL, NULL),
(554, 'Alat praktik', '378', 'pisau kecil', NULL, NULL),
(555, 'Alat praktik', '379', 'Piston ring compressor', NULL, NULL),
(556, 'Alat praktik', '380', 'Piston ring compressor', NULL, NULL),
(557, 'Alat praktik', '381', 'Piston ring expander', NULL, NULL),
(558, 'Alat praktik', '382', 'Planer', NULL, NULL),
(559, 'Alat praktik', '383', 'Plate Oval Relief ijo', NULL, NULL),
(560, 'Alat praktik', '384', 'Plate Simple kotak', NULL, NULL),
(561, 'Alat praktik', '385', 'PMSP 9-5/18 FM 5', NULL, NULL),
(562, 'Alat praktik', '386', 'Pompa vacuum AC', NULL, NULL),
(563, 'Alat praktik', '387', 'Post lift', NULL, NULL),
(564, 'Alat praktik', '388', 'PRE RINSE OPTIMA NGS GI.0005', NULL, NULL),
(565, 'Alat praktik', '389', 'Processor Core I5', NULL, NULL),
(566, 'Alat praktik', '390', 'Punch chisel', NULL, NULL),
(567, 'Alat praktik', '391', 'Radiator flush & fill kit', NULL, NULL),
(568, 'Alat praktik', '392', 'Ragum', NULL, NULL),
(569, 'Alat praktik', '393', 'Ram 2GB', NULL, NULL),
(570, 'Alat praktik', '394', 'Rambu Ukur Aluminium', NULL, NULL),
(571, 'Alat praktik', '395', 'regulator', NULL, NULL),
(572, 'Alat praktik', '396', 'Rocky double', NULL, NULL),
(573, 'Alat praktik', '397', 'Rocky glass standart', NULL, NULL),
(574, 'Alat praktik', '398', 'Rocky Glass/shoot glass', NULL, NULL),
(575, 'Alat praktik', '399', 'Rocky medium', NULL, NULL),
(576, 'Alat praktik', '400', 'Rol Background foto', NULL, NULL),
(577, 'Alat praktik', '401', 'Roskam Baja', NULL, NULL),
(578, 'Alat praktik', '402', 'Roskam Kayu', NULL, NULL),
(579, 'Alat praktik', '403', 'Roskam PVC', NULL, NULL),
(580, 'Alat praktik', '404', 'Router Board', NULL, NULL),
(581, 'Alat praktik', '405', 'Salt & Pepper', NULL, NULL),
(582, 'Alat praktik', '406', 'Salt & Pepper 1 set', NULL, NULL),
(583, 'Alat praktik', '407', 'Saringan', NULL, NULL),
(584, 'Alat praktik', '408', 'Sauce Plate', NULL, NULL),
(585, 'Alat praktik', '409', 'Scoop beras', NULL, NULL),
(586, 'Alat praktik', '410', 'Seafood Cracker', NULL, NULL),
(587, 'Alat praktik', '411', 'Sekop', NULL, NULL),
(588, 'Alat praktik', '412', 'Selang gas stainles', NULL, NULL),
(589, 'Alat praktik', '413', 'Selang Plastik 15 m', NULL, NULL),
(590, 'Alat praktik', '414', 'Sendok ice cream', NULL, NULL),
(591, 'Alat praktik', '415', 'Sendok makan', NULL, NULL),
(592, 'Alat praktik', '416', 'sendok sup', NULL, NULL),
(593, 'Alat praktik', '417', 'Sendok tanduk', NULL, NULL),
(594, 'Alat praktik', '418', 'Sendok tehh', NULL, NULL),
(595, 'Alat praktik', '419', 'Sepatu Bot', NULL, NULL),
(596, 'Alat praktik', '420', 'Serok GG. Kayu', NULL, NULL),
(597, 'Alat praktik', '421', 'Serok Parabola', NULL, NULL),
(598, 'Alat praktik', '422', 'Serok stainles', NULL, NULL),
(599, 'Alat praktik', '423', 'Shaker 500 ml', NULL, NULL),
(600, 'Alat praktik', '424', 'sharpening stone', NULL, NULL),
(601, 'Alat praktik', '425', 'Show Plate bundar', NULL, NULL),
(602, 'Alat praktik', '426', 'Show plate kotak', NULL, NULL),
(603, 'Alat praktik', '427', 'Showplate persegi panjang', NULL, NULL),
(604, 'Alat praktik', '428', 'Sikat kawat', NULL, NULL),
(605, 'Alat praktik', '429', 'Sikat Tabung Reaksi', NULL, NULL),
(606, 'Alat praktik', '430', 'Siku tukang', NULL, NULL),
(607, 'Alat praktik', '431', 'Sketmat 150x0,02 mm kw 1', NULL, NULL),
(608, 'Alat praktik', '432', 'Skipping', NULL, NULL),
(609, 'Alat praktik', '433', 'Snail fork', NULL, NULL),
(610, 'Alat praktik', '434', 'Snei Pipa', NULL, NULL),
(611, 'Alat praktik', '435', 'Softbox AW 250+Tripod+Payung+Box', NULL, NULL),
(612, 'Alat praktik', '436', 'Solder', NULL, NULL),
(613, 'Alat praktik', '437', 'Soup cup & Saucer (hanya cup)', NULL, NULL),
(614, 'Alat praktik', '438', 'Soup cup & Saucer (hanya saucer)', NULL, NULL),
(615, 'Alat praktik', '439', 'Soup cup & Saucer lengkap', NULL, NULL),
(616, 'Alat praktik', '440', 'Soup spoon/sendok sup', NULL, NULL),
(617, 'Alat praktik', '441', 'Spatula', NULL, NULL),
(618, 'Alat praktik', '442', 'Spet icing set 1set', NULL, NULL),
(619, 'Alat praktik', '443', 'Sprey gun/ spet cet', NULL, NULL),
(620, 'Alat praktik', '444', 'SST Electrical', NULL, NULL),
(621, 'Alat praktik', '445', 'Stand Background', NULL, NULL),
(622, 'Alat praktik', '446', 'STAND COMBI STEAMER NCE 611', NULL, NULL),
(623, 'Alat praktik', '447', 'Stand Foto', NULL, NULL),
(624, 'Alat praktik', '448', 'Starship frying pan', NULL, NULL),
(625, 'Alat praktik', '449', 'Statif', NULL, NULL),
(626, 'Alat praktik', '450', 'STEAMER KIT ADDITIONAL KIT F/NGN 6-75', NULL, NULL),
(627, 'Alat praktik', '451', 'Stetoscope', NULL, NULL),
(628, 'Alat praktik', '452', 'Stick Kasti', NULL, NULL),
(629, 'Alat praktik', '453', 'Stick Softball', NULL, NULL),
(630, 'Alat praktik', '454', 'Strainer stainless', NULL, NULL),
(631, 'Alat praktik', '455', 'STRAINER(18CM)', NULL, NULL),
(632, 'Alat praktik', '456', 'strainer/ saringan', NULL, NULL),
(633, 'Alat praktik', '457', 'Sugar bowl', NULL, NULL),
(634, 'Alat praktik', '458', 'SUSHI MAT', NULL, NULL),
(635, 'Alat praktik', '459', 'Switch-Hub', NULL, NULL),
(636, 'Alat praktik', '460', 'Tablet PC', NULL, NULL),
(637, 'Alat praktik', '461', 'tabung gas 14,7 kg', NULL, NULL),
(638, 'Alat praktik', '462', 'Tabung Gas 3Kg', NULL, NULL),
(639, 'Alat praktik', '463', 'Tabung Reaksi', NULL, NULL),
(640, 'Alat praktik', '464', 'Tackle', NULL, NULL),
(641, 'Alat praktik', '465', 'Tang buaya', NULL, NULL),
(642, 'Alat praktik', '466', 'Tang kombinasi', NULL, NULL),
(643, 'Alat praktik', '467', 'Tang Lancip', NULL, NULL),
(644, 'Alat praktik', '468', 'Tang potong', NULL, NULL),
(645, 'Alat praktik', '469', 'Tang snap ring', NULL, NULL),
(646, 'Alat praktik', '470', 'Tanggem pipa 10', NULL, NULL),
(647, 'Alat praktik', '471', 'Tanggem pipa 12', NULL, NULL),
(648, 'Alat praktik', '472', 'Tangki Gelombang', NULL, NULL),
(649, 'Alat praktik', '473', 'Teflon grill', NULL, NULL),
(650, 'Alat praktik', '474', 'Teko', NULL, NULL),
(651, 'Alat praktik', '475', 'Teko Gerabah', NULL, NULL),
(652, 'Alat praktik', '476', 'Teko keramik putih besar', NULL, NULL),
(653, 'Alat praktik', '477', 'Teko keramik putih kecil', NULL, NULL),
(654, 'Alat praktik', '478', 'Telenan kayu', NULL, NULL),
(655, 'Alat praktik', '479', 'Tempat Gula Cair&creamer', NULL, NULL),
(656, 'Alat praktik', '480', 'Tempat saos bulat', NULL, NULL),
(657, 'Alat praktik', '481', 'Tempat saos kotak melamin', NULL, NULL),
(658, 'Alat praktik', '482', 'Termos nasi', NULL, NULL),
(659, 'Alat praktik', '483', 'Tespen', NULL, NULL),
(660, 'Alat praktik', '484', 'Throlly Material/Wheel Barrows', NULL, NULL),
(661, 'Alat praktik', '485', 'Tilting Video Mixer', NULL, NULL),
(662, 'Alat praktik', '486', 'Timbangan Digital 30kg', NULL, NULL),
(663, 'Alat praktik', '487', 'Timing light', NULL, NULL),
(664, 'Alat praktik', '488', 'Toaster Denpoo', NULL, NULL),
(665, 'Alat praktik', '489', 'Tongkat Estafet', NULL, NULL),
(666, 'Alat praktik', '490', 'Toolbox', NULL, NULL),
(667, 'Alat praktik', '491', 'Toolkit', NULL, NULL),
(668, 'Alat praktik', '492', 'Topeng las+kaca', NULL, NULL),
(669, 'Alat praktik', '493', 'Toples', NULL, NULL),
(670, 'Alat praktik', '494', 'TP – LINK TL-WN722N', NULL, NULL),
(671, 'Alat praktik', '495', 'TP Link 24 channel', NULL, NULL),
(672, 'Alat praktik', '496', 'Tracker', NULL, NULL),
(673, 'Alat praktik', '497', 'Tracker magnet', NULL, NULL),
(674, 'Alat praktik', '498', 'Transforming AC', NULL, NULL),
(675, 'Alat praktik', '499', 'Tray/baki', NULL, NULL),
(676, 'Alat praktik', '500', 'Triangle Bowl', NULL, NULL),
(677, 'Alat praktik', '501', 'Tripod Aluminium', NULL, NULL),
(678, 'Alat praktik', '502', 'Tripod Kamera', NULL, NULL),
(679, 'Alat praktik', '503', 'Tripod lampu', NULL, NULL),
(680, 'Alat praktik', '504', 'Troley Aki', NULL, NULL),
(681, 'Alat praktik', '505', 'Trolley', NULL, NULL),
(682, 'Alat praktik', '506', 'tune up analyzer', NULL, NULL),
(683, 'Alat praktik', '507', 'Tune Up kit', NULL, NULL),
(684, 'Alat praktik', '508', 'Tutup panci kaca', NULL, NULL),
(685, 'Alat praktik', '509', 'Tutup telinga', NULL, NULL),
(686, 'Alat praktik', '510', 'Tyre inflating', NULL, NULL),
(687, 'Alat praktik', '511', 'Unting-unting', NULL, NULL),
(688, 'Alat praktik', '512', 'USB HUB', NULL, NULL),
(689, 'Alat praktik', '513', 'Vacuum fuel pump tester', NULL, NULL),
(690, 'Alat praktik', '514', 'Vacuum/pressure brake kit', NULL, NULL),
(691, 'Alat praktik', '515', 'Valve spring compressor', NULL, NULL),
(692, 'Alat praktik', '516', 'Valve spring compressor', NULL, NULL),
(693, 'Alat praktik', '517', 'Vas Bunga', NULL, NULL),
(694, 'Alat praktik', '518', 'Video Effect Mixer', NULL, NULL),
(695, 'Alat praktik', '519', 'Wajan', NULL, NULL),
(696, 'Alat praktik', '520', 'Wakul Cengkeh/ wakul nasi', NULL, NULL),
(697, 'Alat praktik', '521', 'Water goblet', NULL, NULL),
(698, 'Alat praktik', '522', 'Water Jug', NULL, NULL),
(699, 'Alat praktik', '523', 'Waterpass', NULL, NULL),
(700, 'Alat praktik', '524', 'Wine glass', NULL, NULL),
(701, 'Alat praktik', '525', 'Wire stripper', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `klmpk_alat`
--

CREATE TABLE `klmpk_alat` (
  `kode_klmpk_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `klmpk_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `klmpk_alat`
--

INSERT INTO `klmpk_alat` (`kode_klmpk_alat`, `klmpk_alat`) VALUES
('1', 'Mebeler'),
('2', 'Elektronik'),
('3', 'Alat Ukur'),
('4', 'Alat Praktik'),
('5', 'Alat Triner'),
('6', 'Alat Musik'),
('7', 'Kendaraan'),
('1', 'Mebeler'),
('2', 'Elektronik'),
('3', 'Alat Ukur'),
('4', 'Alat Praktik'),
('5', 'Alat Triner'),
('6', 'Alat Musik'),
('7', 'Kendaraan');

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
  `kode_lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(75, '2014_10_12_000000_create_users_table', 1),
(76, '2014_10_12_100000_create_password_resets_table', 1),
(77, '2019_08_19_000000_create_failed_jobs_table', 1),
(78, '2021_09_13_033041_create_barang', 1),
(79, '2021_09_13_033636_create_lokasi', 1),
(80, '2021_09_15_030545_create_stok', 1),
(81, '2021_09_21_072613_create_notifications_table', 1),
(82, '2021_09_21_084416_laratrust_setup_tables', 1),
(83, '2021_09_27_072649_create_pinjam', 1),
(84, '2021_09_28_044410_create_level_table', 1),
(85, '2021_09_29_022238_create_klmpk_alat', 1),
(86, '2021_09_29_022413_create_jenis_klmpk_alat', 1),
(87, '2021_10_11_050830_bidang_brg', 1),
(88, '2021_10_11_100600_datahapus', 1);

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
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `roomID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'SARPRAS', 'smkbagimunegeriku@gmail.com', 1, NULL, NULL, '$2y$10$HN8xZYSc/0aHJhwHOHir8O4Tep8B783562D67kRhxVj10XXW7Cu.y', 'super_admin', NULL, '2021-10-20 02:05:17', '2021-10-20 02:05:17'),
(2, 'KaLab', 'nataliachrismasari@gmail.com', 2, NULL, NULL, '$2y$10$FLElBkFDlJOl9.jlyWVpNOT9DFwOINeHS1vyyUsiM1jlRe7hNAkVq', 'admin', NULL, '2021-10-22 01:18:54', '2021-10-22 01:18:54'),
(3, 'kepala laboran', 'eta@gmail.com', 1, NULL, NULL, '$2y$10$PCxAfeQs0k7NIQ5pXHhjjOAXTM/Ugvkiw0x/kV85NaVa2z2OH9Cw.', 'super_admin', NULL, '2021-10-29 00:50:48', '2021-10-29 00:50:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidang_brg`
--
ALTER TABLE `bidang_brg`
  ADD PRIMARY KEY (`kode_bidang_brg`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_klmpk_alat`
--
ALTER TABLE `jenis_klmpk_alat`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `bidang_brg`
--
ALTER TABLE `bidang_brg`
  MODIFY `kode_bidang_brg` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_klmpk_alat`
--
ALTER TABLE `jenis_klmpk_alat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
