-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2019 at 06:27 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kptesting`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_depan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gelar_belakang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nama`, `nip`, `nidn`, `gelar_depan`, `gelar_belakang`, `nohp`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(2, 'Husnil Kamil', '198201182008121002', '0018018202', NULL, 'MT', '081363491004', 'Payakumbuh', '1982-01-18', 1, '2018-11-09 04:40:19', '2018-11-09 04:40:19'),
(3, 'Hasdi Putra', '198307272008121003', '0027078301', NULL, 'MT', '081363390627', 'Payakumbuh', NULL, 1, '2018-11-09 05:32:43', '2018-11-09 05:32:59'),
(4, 'Fajril Akbar', '198001102008121002', '0010018007', '-', 'MT', '085220229350', 'Padang', '1980-01-10', 1, '2018-11-09 05:35:29', '2018-11-09 05:35:29'),
(5, 'Surya Afnarius', '196404091995121001', '0009046406', 'Prof', 'Ph.D', '081210232425', 'Bukittinggi', '1964-04-09', 1, '2018-11-09 05:38:21', '2018-11-09 05:38:21'),
(6, 'Meza Silvana', '198103252008122003', '0025038103', NULL, 'MT', '081363310161', 'Jakarta', '1981-03-25', 2, '2018-11-09 05:41:41', '2018-11-09 05:41:41'),
(7, 'Ricky Akbar', '198410062012121001', '1006108402', NULL, 'M.Kom', '085263098489', 'Padang', '1984-10-06', 1, '2018-11-09 05:44:14', '2018-11-09 05:44:14'),
(8, 'Haris Suryamen', '197503232012121001', '1023037504', NULL, 'M.Sc', '081366387648', 'Padang', '1975-03-23', 1, '2018-11-09 05:46:19', '2018-11-09 05:46:19'),
(9, 'Wahyudi', '198105052014041001', '0005058107', NULL, 'MT', '085271869761', 'Pekanbaru', '1981-05-05', 1, '2018-11-09 05:49:49', '2018-11-09 05:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `harian`
--

CREATE TABLE `harian` (
  `id` int(10) UNSIGNED NOT NULL,
  `mhs_kp_id` int(10) UNSIGNED NOT NULL,
  `hari_tanggal` date NOT NULL,
  `kegiatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `harian`
--

INSERT INTO `harian` (`id`, `mhs_kp_id`, `hari_tanggal`, `kegiatan`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 4, '2019-01-03', 'makan nasi\r\nooo', 'test', '2019-01-03 13:28:01', '2019-01-03 06:02:48'),
(2, 17, '2018-11-13', 'pergi survey ke sdm', NULL, '2018-11-13 03:15:29', '2018-11-13 03:15:29'),
(3, 16, '2018-11-13', 'mendapatkan project pertama', 'semangat', '2018-11-13 03:16:26', '2018-12-30 03:25:34'),
(4, 17, '2018-11-14', 'pergi memancing', NULL, '2018-11-14 03:20:19', '2018-11-14 03:20:19'),
(5, 9, '2018-12-30', 'saya hadir disini', 'terima kasih', '2018-12-30 03:21:24', '2018-12-30 03:25:23'),
(6, 16, '2018-12-30', 'project 2', 'project 2 kamu apa?', '2018-12-30 03:21:29', '2018-11-16 14:23:19'),
(7, 5, '2018-11-16', 'perkenalan', NULL, '2018-11-16 01:35:47', '2018-11-16 01:35:47'),
(8, 5, '2018-11-17', 'pembagian fokus magang', NULL, NULL, NULL),
(9, 31, '2018-11-21', 'makan ikan', NULL, '2018-11-21 06:27:22', '2018-11-21 06:27:22'),
(10, 31, '2018-11-29', 'makan nasi', NULL, '2018-11-29 05:05:53', '2018-11-29 05:05:53'),
(11, 39, '2019-01-02', 'perkenalan', 'sudah bagusedit', '2019-01-02 02:50:42', '2019-01-06 05:28:53'),
(12, 16, '2018-12-09', 'pembagian fokus kerja praktek', NULL, '2018-12-09 14:04:26', '2018-12-09 14:04:26'),
(13, 16, '2018-12-16', 'test', NULL, '2018-12-16 12:43:15', '2018-12-16 12:43:15'),
(14, 46, '2018-12-17', 'perkenalan', NULL, '2018-12-17 04:43:18', '2018-12-17 04:43:18'),
(15, 16, '2019-01-03', 'tahun baru', NULL, '2019-01-03 07:22:50', '2019-01-03 07:22:50'),
(16, 16, '2019-01-06', 'qwertyui', NULL, '2019-01-06 05:29:42', '2019-01-06 05:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id`, `nama`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, 'LPTIK UNAND', 'Padang', '2018-11-12 02:06:09', '2018-11-12 02:06:09'),
(2, 'BMKG Stasiun Meteorologi Minangkabau', 'Padang', '2018-11-12 02:06:22', '2018-11-12 02:06:22'),
(3, 'Dinas Komunikasi dan Informatika Padang', 'Padang', '2018-11-12 02:06:37', '2018-11-12 02:06:37'),
(4, 'Kepolisian Negara Republik Indonesia', 'Padang', '2018-11-12 02:06:54', '2018-11-12 02:06:54'),
(5, 'PT. Indonesia Comnets Plus Padang', 'Padang', '2018-11-12 02:07:06', '2018-11-12 02:07:06'),
(6, 'PT Semen Padang', 'Padang', '2018-11-12 02:07:24', '2018-11-12 02:07:24'),
(7, 'PT. PLN (Persero) Wilayah Sumbar', 'Padang', '2018-11-12 02:07:42', '2018-11-12 02:07:42'),
(8, 'PT. Telkom', 'Padang', '2018-11-12 02:08:01', '2018-11-12 02:08:01'),
(9, 'PT. Angkasa Pura II', 'Padang', '2018-11-12 02:08:26', '2018-11-12 02:08:26'),
(10, 'Semen Padang Hospital', 'Padang', '2018-11-12 02:08:51', '2018-11-12 02:08:51'),
(11, 'TVRI Sumatera Barat', 'Padang', '2018-11-12 02:09:28', '2018-11-12 02:09:28'),
(12, 'PT. SISI', 'Jakarta Selatan', '2018-11-12 02:09:54', '2018-11-12 02:09:54'),
(13, 'PDAM Kota Padang', 'Padang', '2018-11-12 02:10:20', '2018-11-12 02:10:20'),
(14, 'LPTIK', 'Unand', '2018-12-08 01:34:38', '2018-12-08 01:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_harian`
--

CREATE TABLE `kegiatan_harian` (
  `hari_tanggal` date NOT NULL,
  `kegiatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kp`
--

CREATE TABLE `kp` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latar_belakang` text COLLATE utf8mb4_unicode_ci,
  `tujuan` text COLLATE utf8mb4_unicode_ci,
  `mulai_kp` date DEFAULT NULL,
  `selesai_kp` date DEFAULT NULL,
  `instansi_id` int(10) UNSIGNED DEFAULT NULL,
  `status_proposal` int(10) UNSIGNED DEFAULT NULL,
  `surat_balasan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cetak_permohonan` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kp`
--

INSERT INTO `kp` (`id`, `judul`, `latar_belakang`, `tujuan`, `mulai_kp`, `selesai_kp`, `instansi_id`, `status_proposal`, `surat_balasan`, `catatan`, `cetak_permohonan`, `created_at`, `updated_at`) VALUES
(1, 'kerja praktek bmkg diedit fitri', '<p>Jurusan Sistem Informasi merupakan salah satu Jurusan yang berada pada Fakultas Teknologi Informasi (FTI), Universitas Andalas. Sebelum dibawah naungan FTI, Sistem Informasi merupakan suatu program studi di bawah Jurusan Teknik Elektro yang didirikan dengan Surat Keputusan Direktur Jendral Pendidikan Tinggi Departemen Pendidikan Nasional No. 1932/D/T/2009 tanggal 28 Oktober 2009. Jurusan Sistem Informasi didirikan atas tuntutan akan tingginya kebutuhan Sarjana Komputer (S. Kom) baik secara regional maupun nasional. Seperti instansi ataupun lembaga lain, Jurusan Sistem Informasi juga mewajibkan mahasiswanya untuk menyelesaikan tugas akhir yang menjadi penentu lulus atau tidaknya seorang mahasiswa dalam suatu perkuliahan. Oleh karena itu, mahasiswa dituntut untuk menyusun sebuah karya ilmiah berdasarkan hasil penelitian mereka terhadap suatu masalah yang diangkat sebelum berhasil mendapatkan gelar sarjana.</p>', '<p>Berdasarkan uraian latar belakang diatas, maka dirumuskan masalah pada penelitian ini yaitu bagaimana membangun sistem informasi manajemen tugas akhir berbasis <em>web</em> pada Jurusan Sistem Informasi, Universitas Andalas.</p>\r\n\r\n<p>ini diedit</p>', '2018-12-24', '2019-01-24', 1, 2, NULL, 'latar belakang tidak lengkapoooo', 1, '2018-11-12 11:58:49', '2019-01-06 06:26:46'),
(2, 'kp comnet', '<p>Pada sistem tugas akhir yang sedang berjalan terdapat beberapa permasalahan-permasalahan dalam proses pelaksanaannya. Hal ini didapatkan dari hasil wawancara dan observasi langsung yang dilakukan pada tanggal 10 Mei 2017 dengan Ketua Program Studi Sistem Informasi. Permasalahan tersebut adalah seperti proses administrasi manajemen tugas akhir masih dilakukan secara manual belum terkomputerisasi dan terintegrasi dengan baik, tidak adanya kontrol penuh dari dosen pembimbing dan jurusan terhadap mahasiswa yang sedang mengerjakan tugas akhir. Dengan adanya permasalahan tersebut dapat menimbulkan dampak negatif terhadap aktor-aktor yang berperan dalam sistem manajemen tugas akhir seperti dosen pembimbing tidak mengetahui siapa saja mahasiswa bimbingannya yang masih aktif dalam pengerjaan tugas akhir terhitung semenjak ditentukannya dosen pembimbing terhadap mahasiswa yang sudah terdaftar untuk mengerjakan tugas akhir, sehingga pembimbing tidak dapat memprioritaskan mahasiswa mana yang akan difokuskan untuk dibimbing terlebih dahulu. Hal ini tidak terlepas dari terdapatnya beberapa mahasiswa yang tidak melaporkan <em>progress</em> pengerjaan tugas akhir atau tidak melakukan bimbingan secara rutin, sehingga tugas akhir yang seharusnya bisa terselesaikan dengan tepat waktu menjadi terkendala karena sistem manajemen yang belum ada. Dari permasalahan-permasalahan yang terjadi pada Jurusan Sistem Informasi maka diperlukan sebuah sistem informasi yang dapat menangani masalah tersebut. Maka dari itu, perlu dibangun sistem informasi manajemen pelaksanaan tugas akhir.</p>', '<p>Pembangunan sistem informasi manajemen tugas akhir ini diharapkan dapat menyelesaikan permasalahan yang terjadi pada proses pelaksanaan dan manajemen tugas akhir di Jurusan Sistem Informasi Universitas Andalas.</p>', '2019-01-02', '2019-02-02', 5, 2, 'balasan//surat_balasan-4.jpeg', 'semangat', 1, '2018-11-12 12:13:29', '2018-11-12 12:28:02'),
(3, 'KANTOR WILAYAH BADAN PERTANAHAN NASIONAL PROVINSI SUMATERA BARAT', '<p>Tes tes coba</p>', '<p>1. ini baru percobaan</p>\r\n\r\n<p>2. silahkan dicoba</p>\r\n\r\n<p>3. jika berhasil, lanjutkan</p>\r\n\r\n<p>4. hehe</p>', '2018-12-24', '2019-02-01', 1, 2, 'balasan//surat_balasan-7.jpeg', 'bagus nina', 1, '2018-11-13 02:38:01', '2018-11-13 02:56:41'),
(4, 'Proposal Kerja Praktek Dinas Komunikasi dan Informatika Kota Padang tes', '<p>&nbsp; Perkembangan teknologi &amp; informasi yang semakin canggih di era digital saat ini telah membawa banyak manfaat bagi kehidupan manusia, khususnya di dunia kerja. Kebutuhan-kebutuhan akan informasi, mengharuskan seseorang memiliki hardskill dan softskill yang mumpuni agar dapat mengelola informasi yang dibutuhkan dengan menggunakan teknologi. Oleh karena itu, untuk menghasilkan tenaga kerja yang berkompeten dibidangnya, Jurusan Sistem Informasi Universitas Andalas memandang perlu adanya penyesuaian untuk mendapat pengalaman dilapangan, dalam hal ini dengan mengadakan kerja praktek sesuai bidang studi yang dipelajari mahasiswa di bangku perkuliahan. Program kerja praktek Jurusan Sistem Informasi Universitas Andalas merupakan suatu proses belajar mengajar atau praktek langsung bagi mahasiswa untuk menambah pengetahuan, keterampilan dan etika di lingkungan kerja yang sesungguhnya, sehingga diharapkan agar proses peralihan lulusan dari institusi akademis ke dunia kerja akan berjalan lancar.&nbsp;<br />\r\nBerdasarkan kurikulum yang ada pada Jurusan Sistem Informasi Universitas Andalas, setiap mahasiswa diwajibkan untuk melakukan kerja praktek di suatu perusahaan, instansi, atau badan-badan penelitian sesuai dengan bidang yang diminati. Hal ini dilakukan agar lulusan dapat bekerja secara professional sesuai kemampuannya masing-masing. Mahasiswa diharapkan dapat mempraktekkan atau menerapkan teori yang diperoleh dari perkuliahan di perusahaan atau instansi terkait. Dengan demikian, mahasiswa tidak hanya memiliki pengetahuan secara teoritis, tetapi juga mendapatkan bekal keterampilan dan etos kerja yang sesuai dengan tuntutan dunia kerja.&nbsp;<br />\r\nKantor Dinas Komunikasi dan Informatika Kota Padang (Diskominfo Padang) adalah sebuah instansi pemerintah yang bertanggungjawab membantu Walikota dalam melaksanakan urusan pemerintahan terkait bidang komunikasi dan informatika, bidang statistik, dan bidang persandian maupun tugas pembantuan yang diberikan kepada daerah. Dalam menjalankan tugas dan fungsinya, teknologi informasi menjadi aspek penting dalam melaksanakan pelayanan dibidang informatika terutama dalam pengolahan data dan informasi bagi daerah Kota Padang. Pada Dinas Komunikasi dan Informatika Kota&nbsp;<br />\r\nPadang terdapat seksi bagian bidang Aplikasi dan Sistem Informasi yang memiliki tugas untuk membantu Kepala Dinas dalam menyelenggarakan pembangunan/penyediaan &nbsp;serta melakukan pengembangan dan pemeliharaan aplikasi e-Government dan operasional sistem informasi.&nbsp;<br />\r\nSesuai dengan standar kompetensi dan capaian hasil dari kerja praktek yang dilaksanakan, kami sebagai mahasiswa Jurusan Sistem Informasi Universitas Andalas dituntut untuk mampu memberikan solusi atas permasalahan yang terjadi dilingkungan kerja dengan menganalisa dan mengembangkan sistem yang sedang berjalan didalam perusahaan/instansi terkait. Dengan demikian, hasil dari kerja praktek ini diharapkan menjadi solusi bagi perusahaan/instansi, terkait perbaikan sistem yang selama ini memiliki beberapa kekurangan sehingga perusahaan/instansi dapat memberikan pelayanan yang lebih baik kedepannya.&nbsp;<br />\r\nBerdasarkan uraian diatas, Kantor Dinas Komunikasi dan Informatika Kota Padang, memiliki tugas dan fungsi yang selaras dengan jurusan Sistem Informasi, oleh karena itu kami merasa Kantor Dinas Komunikasi dan Informatika Kota Padang adalah tempat yang tepat bagi kami untuk melakukan kerja praktek dan mendapatkan pengalaman kerja sehingga kami dapat mengimplementasikan ilmu yang kami dapatkan selama berkuliah di jurusan Sistem Informasi</p>', '<p>2. Tujuan Hal-hal yang menjadi tujuan dilaksanakannya &nbsp;kerja praktek ini adalah : 1. Mengenalkan situasi kerja kepada mahasiswa. 2. Memberikan wadah bagi mahasiswa untuk menerapkan ilmu yang didapat. 3. Untuk meningkatkan hardskill dan softskill mahasiswa. &nbsp;4. Melatih kepekaan mahasiswa untuk mencari solusi masalah yang dihadapi dalam dunia kerja. 5. Mengetahui penerapan sistem informasi khususnya pada Kantor Dinas Komunikasi dan Informatika Kota Padang. 6. Memenuhi persyaratan akademis dalam menempuh pendidikan S1 Jurusan Sistem Informasi Universitas Andalas&nbsp;<br />\r\n3. Manfaat &nbsp;Adapun manfaat yang diharapkan dari pelaksanaan kerja praktek ini adalah sebagai berikut: &nbsp;a. Bagi instansi Hasil analisa terhadap sistem informasi selama kerja praktek akan menjadi bahan masukan dan kritikan yang membangun bagi instansi untuk menentukan kebijakan di masa yang akan datang, sehingga tujuan instansi dapat dicapai dengan lebih baik terutama dalam penerapan sistem dan teknologi informasi. &nbsp;b. Bagi mahasiswa &nbsp;Mahasiswa dapat mengetahui dan mempelajari secara lebih mendalam tentang dunia kerja serta memperoleh wawasan, pengetahuan, tentang proses bisnis yang berjalan di instansi terkait, sehingga dapat menerapkan ilmu yang telah di dapat untuk memberikan kontribusi di lingkungan sekitar. Selain itu, mahasiswa juga dapat mempelajari bagaimana bersosialisasi dan bekerja dalam satu tim sehingga tercapainya tujuan yang diinginkan. &nbsp;</p>', '2018-12-26', '2019-01-26', 3, 2, 'balasan//surat_balasan-16.jpeg', 'selamat anda diterima', 1, '2018-11-13 02:44:57', '2018-11-13 03:00:21'),
(5, 'PROPOSAL KERJA PRAKTIK KEPOLISIAN NEGARA REPUBLIK INDONESIA DAERAH SUMATERA BARAT', '<ol>\r\n	<li><strong>Latar Belakang</strong></li>\r\n</ol>\r\n\r\n<p>Berkembangnya ilmu teknologi saat ini mempengaruhi semua bidang kehidupan, termasuk Sistem Informasi yang mengalami perkembangan pesat dalam pengaplikasiannya di dunia industri. Agar dapat menjembatani antara keperluan industri akan tenaga yang terampil dengan kondisi Universitas Andalas sebagai lembaga yang berorientasi pada akademis, Jurusan Sistem Informasi Universitas Andalas memandang perlu adanya penyesuaian yang dalam hal ini berbentuk kerja praktik pada perusahaan, sehingga dapat dihasilkan lulusan yang&nbsp; mempunyai kapabilitas yang tinggi dalam melaksanakan pekerjaannya. Dengan adanya kerja praktik diharapkan agar proses peralihan lulusan dari institusi akademis ke dunia kerja berjalan lancar.</p>\r\n\r\n<p>Berdasarkan kurikulum yang ada pada Jurusan Sistem Informasi Universitas Andalas, setiap mahasiswa diwajibkan untuk melakukan kerja praktik di suatu perusahaan, instansi, atau badan-badan penelitian sesuai dengan bidang yang diminati dan sesuai dengan sub jurusan yang diambil.</p>\r\n\r\n<p>Polda Sumbar merupakan institusi di wilayah Provinsi Sumatera Barat yang merupakan Bagian dari Struktur Kepolisian Negara Republik Indonesia yang memiliki Tugas Pokok:</p>\r\n\r\n<ol>\r\n	<li>Memelihara keamanan dan ketertiban masyarakat.</li>\r\n	<li>Menegakkan hukum.</li>\r\n	<li>Memberikan perlindungan, pengayoman, dan pelayanan kepada masyarakat.</li>\r\n</ol>\r\n\r\n<p>Berdasarkan Keputusan Kapolri No. Pol. : KEP/7/I/2005 tanggal 31 Januari 2005, tentang perubahan atas Keputusan Kapolri No. Pol. : KEP/54/X/2002, tanggal 17 Oktober 2002 tentang Organisasi dan tata kerja satuan-satuan organisasi pada tingkat Kepolisian Negara Republik Indonesia Daerah (Polda) Bidang Telematika (yang kini menjadi Bid TI) merupakan unsur pelaksana staf khusus Polda yang berada di bawah Kapolda. Bidang Telematika mempunyai tugas pokok menyelenggarakan pembinaan Telekomunikasi, pengumpulan dan pengolahan Data serta penyajian informasi termasuk informasi kriminal dan pelayanan multimedia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Organisasi Bidang TI (BidTi) Polda Sumbar sendiri disusun berdasarkan Peraturan Kapolri Nomor : 22 Tahun 2010 tanggal 28 September 2010 tentang Susunan Organisasi dan Tata Kerja Pada Tingkat Kepolisian Daerah (Polda).</p>\r\n\r\n<p>Sistem informasi berperan penting dalam penyelenggaraan BidTI pada Kapolda Sumbar. Berdasarkan kurikulum yang terdapat pada Jurusan Sistem Informasi Universitas Andalas, setiap mahasiswa diwajibkan untuk melakukan kerja praktik di suatu perusahaan, instansi, atau badan-badan penelitian sesuai dengan bidang yang diminati dan sesuai dengan sub jurusan yang diambil. Dilihat dari situasi dan kondisi Kapolda pada survey yang kami lakukan, saat ini tengah mengambangkan sebuah aplikasi inventaris yang memudahkan pemantauan inventaris di Kantor Polda Sumbar, hal ini merupakan salah satu alasan kami memilih <strong>Kepolisian Republik Indonesia Daerah Sumatera Barat </strong>sebagai tempat Kerja Praktik (KP).</p>', '<p><strong>2. </strong><strong>Tujuan Kegiatan</strong></p>\r\n\r\n<p>Hal-hal yang menjadi tujuan dilaksanakannya&nbsp; kerja praktik ini adalah :</p>\r\n\r\n<ol>\r\n	<li>Memperkenalkan kepada mahasiswa bagaimana situasi kerja.</li>\r\n	<li>Menerapkan ilmu pengetahuan yang didapat dari bangku perkuliahan.</li>\r\n	<li>Untuk meningkatkan kreativitas dan keahlian mahasiswa.</li>\r\n	<li>Mengetahui penerapan sistem informasi khususnya pada Kepolisian Negara Republik Indonesia Daerah Sumatera Barat</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>Memenuhi persyaratan akademis dalam menempuh pendidikan S1 di Sistem Informasi Universitas Andalas</li>\r\n</ol>\r\n\r\n<p><strong>3. </strong><strong>Manfaat</strong></p>\r\n\r\n<p>Adapun manfaat yang diharapkan dari pelaksanaan kerja praktik ini adalah sebagai berikut:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<ol>\r\n		<li><strong>Bagi </strong><strong>instansi</strong></li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p>Hasil analisa terhadap sistem informasi selama kerja praktik akan menjadi bahan masukan dan kritikan yang membangun bagi instansi untuk menentukan kebijakan di masa yang akan datang, sehingga tujuan instansi dapat dicapai dengan lebih baik terutama dalam penerapan sistem dan teknologi informasi. Selain itu, juga menjadi sarana bertukar pikiran terhadap permasalahan yang dihadapi oleh instansi dalam penerapan sistem informasi.</p>\r\n\r\n<ol>\r\n	<li><strong>Bagi mahasiswa </strong></li>\r\n</ol>\r\n\r\n<p>Mahasiswa dapat mengetahui dan mempelajari secara lebih mendalam tentang dunia kerja serta memperoleh wawasan, pengetahuan, tentang proses bisnis yang berjalan di instansi sehingga dapat menerapkan ilmu yang telah di dapat untuk memberikan kontribusi di lingkungan sekitar. Mahasiswa juga dapat mempelajari bagaimana bersosialisasi dan bekerja dalam satu tim sehingga tercapainya tujuan yang diinginkan.</p>', '2018-12-26', '2019-01-26', 4, 2, 'balasan//surat_balasan-17.pdf', 'bagus bagus', 1, '2018-11-13 02:48:58', '2018-11-13 03:00:45'),
(6, 'PT. PLN Padang', '<p>Badan Pertanahan Nasional (BPN) adalah lembaga pemerintah kementerian yang berada dibawah dan bertanggungjawab kepada Presiden dan dipimpin oleh Kepala, sesuai dalam Peraturan Presiden Nomor 17 Tahun 2015 yang ditandatangani oleh Presiden Jokowi pada 21 Januari 2015 disebutkan, Kementerian Agraria dan Tata Ruang mempunyai tugas menyelenggarakan urusan pemerintahan di bidang agraria/pertanahan dan tata ruang untuk membantu Presiden dalam menyelenggarakan pemerintahan negara. Demi kemakmuran dan kesejahteraan masyarakat, BPN berkewajiban mengelola dan melakukan penatagunaan terhadap pertanahan untuk menunjang tercapainya pembangunan yang baik. pengambilan keputusan di dalam suatu pembagunan harus memperhatikan beberapa faktor, salah satunya adalah pertanahan yang sangat bergantung pada kesediaan data spasial.</p>', '<p>Bagi Mahasiswa</p>\r\n\r\n<ol>\r\n	<li>Melaksanakan Kerja Praktek sebagai salah satu mata kuliah wajib mahasiswa Sistem Informasi Universitas Andalas.</li>\r\n	<li>Menerapkan dan mengimplementasikan ilmu teoritis yang telah didapat di bangku kuliah ke dalam praktek yang sesungguhnya.</li>\r\n	<li>Mengamati, mengetahui dan memahami suatu sistem kerja dari instansi.</li>\r\n	<li>Melatih keterampilan mahasiswa dalam mengamati dan menganalisis permasalahan yang sesungguhnya dihadapi oleh suatu instansi dan upaya untuk menyelesaikannya.</li>\r\n	<li>Mendapatkan pengalaman tentang kerja teknis di lapangan yang sesungguhnya.</li>\r\n	<li>Menyiapkan tenaga kerja terdidik sesuai dengan harapan yang siap terjun kedunia kerja nyata.</li>\r\n</ol>', '2018-12-24', '2019-01-26', 7, 3, NULL, NULL, 0, '2018-11-13 03:11:07', '2019-04-13 05:42:35'),
(7, 'o', '<p>a</p>', '<p>b</p>', '2018-11-14', '2018-12-14', 1, 4, NULL, 'ko', 0, '2018-11-13 07:53:10', '2019-01-06 06:58:34'),
(8, 'kp LPTIK', '<p>Perkembangan teknologi &amp; informasi yang semakin canggih</p>', '<p>tujuan Hal-hal yang menjadi tujuan dilaksanakannya kerja praktek ini adalah</p>', '2018-11-16', '2018-12-12', 1, 5, NULL, NULL, 0, '2018-11-16 10:29:20', '2018-11-16 10:31:39'),
(9, 'a', '<p>a</p>', 'a', '2019-10-10', '2019-11-11', 1, 1, NULL, NULL, 0, '2018-11-16 10:34:07', '2018-11-16 10:34:07'),
(10, 'd', '<p>d</p>', 'd', '2019-12-12', '2020-09-19', 1, 1, NULL, NULL, 0, '2018-11-16 10:38:57', '2018-11-16 10:38:57'),
(11, 'Kerja Praktek PT.SISI', '<p>qwerty</p>', 'qwerty', '2018-11-21', '2018-12-21', 12, 3, NULL, 'sudah ada', 0, '2018-11-21 05:44:43', '2018-11-21 05:46:21'),
(13, 'kp semen', '<p>qwrty</p>', 'qwerty', '2018-11-21', '2018-12-21', 6, 2, 'balasan//surat_balasan-31.docx', NULL, 1, '2018-11-21 06:04:49', '2018-11-21 06:19:40'),
(14, 'kp angkasa pura', '<p>test kaprodi</p>', 'test kaprodi', '2018-12-23', '2019-01-23', 9, 1, NULL, NULL, 0, '2018-11-23 07:41:45', '2018-11-23 07:41:45'),
(17, 'hapus', '<p>qwerty</p>', 'werty', '2018-12-12', '2019-12-01', 1, 1, NULL, NULL, 0, '2018-12-05 08:20:23', '2018-12-05 08:20:23'),
(18, 'KP Semen Padang', '<p>ini latar belakang</p>', 'tujuan adalah', '2019-01-01', '2019-02-01', 6, 2, 'balasan//surat_balasan-39.pdf', 'sudah bagus', 1, '2018-12-07 08:45:54', '2018-12-07 13:12:56'),
(19, 'KP PT sisi', '<p><strong>latar belakang say</strong>a kerja praktek disini <em>adalah ini lagi</em></p>', '<p>tujuan saya adalah</p>', '2018-12-18', '2019-01-18', 12, 2, 'balasan//surat_balasan-47.pdf', 'oke', 1, '2018-12-17 04:31:20', '2018-12-17 05:00:03'),
(20, 'kp LPTIK', '<p>a</p>', 'b', '2019-01-12', '2019-02-12', 1, 1, NULL, NULL, 0, '2019-01-11 14:13:42', '2019-01-11 14:13:42'),
(21, 'a', '<p>qwert</p>', 'qwerty', '2019-02-02', '2019-03-02', 1, 1, NULL, NULL, 0, '2019-01-06 07:02:06', '2019-01-06 07:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angkatan` int(11) NOT NULL,
  `tempat_lahir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` int(11) DEFAULT NULL,
  `nohp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jalur_masuk` int(11) DEFAULT NULL,
  `status_masuk` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `angkatan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `nohp`, `jalur_masuk`, `status_masuk`, `created_at`, `updated_at`) VALUES
(10, 'KHAIRU ALMAN', '1010961001', 2010, 'KAB.PASAMAN', '1991-05-17', 1, '81993862876', 1, 1, NULL, NULL),
(11, 'AKBAR SURYADI GUCI', '1010961002', 2010, '', '1900-01-01', NULL, '', 1, 1, NULL, NULL),
(12, 'FAJAR LAZUARDI', '1010961003', 2010, '', '0000-00-00', NULL, '', 1, 1, NULL, NULL),
(13, 'FAISAL KHALID', '1010961004', 2010, 'KAB.LIMAPULUHKOTA', '1992-12-24', 1, '', 1, 1, NULL, NULL),
(14, 'BETA CINTOATI', '1010961005', 2010, 'KODYA SOLOK', '1992-12-21', 2, '85263116616', 1, 1, NULL, NULL),
(15, 'SUKMA DEWI', '1010961006', 2010, 'SOLOK SELATAN', '1992-08-22', 2, '81267086644', 1, 1, NULL, NULL),
(16, 'REFKI INDRA HEFIANDES', '1010961007', 2010, 'KAB.KUANTAN SINGINGI', '1992-09-29', 1, '', 1, 1, NULL, NULL),
(17, 'RONA MUTIASARI', '1010961008', 2010, 'KAB.MERANGIN', '1992-07-14', 2, '85266897626', 1, 1, NULL, NULL),
(18, 'YUTIA PUTRA', '1010961009', 2010, '', '1900-01-01', 1, '85263349416', 1, 1, NULL, NULL),
(19, 'ANOKI ANTONIA CAESAR', '1010961010', 2010, 'KAB.PADANG PARIAMAN', '1992-04-04', 1, '', 1, 1, NULL, NULL),
(20, 'RIZA PERDAMAIAN', '1010961011', 2010, '', '1900-01-01', NULL, '', 1, 1, NULL, NULL),
(21, 'LOLA ARDI LOVINA', '1010961012', 2010, '', '1900-01-01', NULL, '', 1, 1, NULL, NULL),
(22, 'ZULHENDRI', '1010961013', 2010, 'KAB.AGAM', '1992-05-19', 1, '85274826919', 1, 1, NULL, NULL),
(23, 'PRAMITA NANDA PUTRI', '1010961014', 2010, 'KODYA BUKIT TINGGI', '1992-02-22', 2, '85274060193', 1, 1, NULL, NULL),
(24, 'ANNISA PERMATASARI', '1010961015', 2010, 'KODYA PADANG', '1992-03-18', 2, '87895440199', 1, 1, NULL, NULL),
(25, 'AFRINIATI', '1010961016', 2010, '', '1900-01-01', NULL, '', 1, 1, NULL, NULL),
(26, 'ANDRE NOFRIANDI', '1010961017', 2010, '', '1900-01-01', NULL, '', 1, 1, NULL, NULL),
(27, 'GITA FEBRIANI', '1010962001', 2010, 'KAB.TANAH DATAR', '1991-02-10', 2, '85363007182', 7, 1, NULL, NULL),
(28, 'VIVI MULYA NINGSIH', '1010962002', 2010, '', '1900-01-01', NULL, '', 7, 1, NULL, NULL),
(29, 'FAUZAN WELMADERIS', '1010962003', 2010, 'KODYA PADANG', '1992-01-16', 1, '85211882027', 7, 1, NULL, NULL),
(30, 'EDRO AGUSTA', '1010962004', 2010, 'KAB.AGAM', '1992-12-17', 1, '85365630114', 1, 1, NULL, NULL),
(31, 'FAUZAN', '1010962005', 2010, 'KODYA PADANG PANJANG', '1992-03-20', 1, '85669185332', 1, 1, NULL, NULL),
(32, 'VENNY YOSILIA DWI WULAN SARI', '1010962006', 2010, 'KOTA PALOPO', '1992-06-01', 2, '81363182881', 1, 1, NULL, NULL),
(33, 'ULIL AMRI', '1010962007', 2010, 'KODYA BUKIT TINGGI', '1992-06-22', 1, '85760776941', 1, 1, NULL, NULL),
(34, 'RAHMI PRISALIA', '1010962008', 2010, 'KODYA BANDA ACEH', '1992-04-27', 2, '81374173278', 1, 1, NULL, NULL),
(35, 'MICHAEL CHAM', '1010962009', 2010, 'KODYA PADANG', '1992-02-04', 1, '7519531357', 1, 1, NULL, NULL),
(36, 'ANDRE SARIZAL PUTRA', '1010962010', 2010, 'KODYA PEKANBARU', '1992-10-04', 1, '82285020082', 1, 1, NULL, NULL),
(37, 'NOVA YENI', '1010962011', 2010, 'KAB.PASAMAN', '1992-05-16', 2, '85264323613', 1, 1, NULL, NULL),
(38, 'AHMAD FAJRI', '1010962012', 2010, 'KAB.AGAM', '2010-10-13', 1, '85766537863', 1, 1, NULL, NULL),
(39, 'CITRA APRO AMOR', '1010962013', 2010, 'KODYA BUKIT TINGGI', '1992-04-03', 2, '85766045504', 1, 1, NULL, NULL),
(40, 'ISTIGFAR RAHMAN', '1010962014', 2010, 'KAB.TANAH DATAR', '1992-09-13', 2, '83181377770', 1, 1, NULL, NULL),
(41, 'RENI FITRIA', '1010962015', 2010, 'KAB.AGAM', '1993-01-03', 2, '85274945434', 1, 1, NULL, NULL),
(42, 'MUHAMMAD RAMADSYAH', '1010962016', 2010, 'KODYA PADANG', '1993-03-29', 1, '81374068855', 1, 1, NULL, NULL),
(43, 'FEBRINANDA ENDRIZ PRATAMA', '1010962017', 2010, 'KODYA PAYAKUMBUH', '1992-02-17', 1, '85764126869', 1, 1, NULL, NULL),
(44, 'RAHMI NUR FITRIA', '1010962018', 2010, 'KODYA PADANG', '1992-04-04', 1, '75120604', 1, 1, NULL, NULL),
(45, 'SITI HAMIDAH PRATAMA', '1010962019', 2010, 'KODYA PADANG', '1992-09-07', 2, '7519004525', 1, 1, NULL, NULL),
(46, 'DEVO FRIHANDANA', '1010962020', 2010, 'KAB.LIMAPULUHKOTA', '1993-07-06', 1, '85761173533', 1, 1, NULL, NULL),
(47, 'FITRI MULIANY', '1010962021', 2010, 'KODYA PADANG', '1992-09-09', 2, '81363331152', 1, 1, NULL, NULL),
(48, 'MUSLIM', '1010962022', 2010, 'KAB.AGAM', '1992-02-24', 1, '85766037571', 1, 1, NULL, NULL),
(49, 'HADIYATUL HUSNA', '1010962023', 2010, 'KAB.AGAM', '1992-12-23', 2, '85274629187', 1, 1, NULL, NULL),
(50, 'JULIASTRIOZA', '1010962024', 2010, 'KODYA PADANG', '1992-07-16', 1, '751445508', 1, 1, NULL, NULL),
(51, 'MERIZA PUTRI', '1010962025', 2010, 'KODYA SOLOK', '1991-11-02', 2, '755324450', 1, 1, NULL, NULL),
(52, 'DEVI SYANI', '1010962026', 2010, 'KODYA PADANG', '1992-05-12', 2, '87895509655', 1, 1, NULL, NULL),
(53, 'RAHMAD RIDHO', '1010962027', 2010, 'KODYA BUKIT TINGGI', '1992-10-08', 1, '85263565763', 1, 1, NULL, NULL),
(54, 'BAGUS SATRIA', '1010962028', 2010, 'JAKARTA TIMUR', '1992-02-03', 1, '81275090298', 1, 1, NULL, NULL),
(55, 'ARI BESPRIADI', '1010962029', 2010, 'KODYA PEKANBARU', '1993-11-04', 1, '81363011993', 3, 1, NULL, NULL),
(56, 'TUTI RAHMAWATI', '1010963001', 2010, 'KODYA PADANG', '1992-09-11', 2, '8992685833', 3, 1, NULL, NULL),
(57, 'MARDALENI', '1010963003', 2010, 'KODYA PADANG', '1991-03-16', 2, '81266752159', 3, 1, NULL, NULL),
(58, 'RINO PRATAMA', '1010963004', 2010, 'KODYA PAYAKUMBUH', '1990-12-18', 1, '85263129875', 3, 1, NULL, NULL),
(59, 'KARLINA FITRIANA', '1010963005', 2010, 'KODYA PADANG', '1992-04-21', 2, '85781313437', 3, 1, NULL, NULL),
(60, 'RIAN ADE HIDAYAT', '1010963006', 2010, '', '1900-01-01', 1, '7517880596', 3, 1, NULL, NULL),
(61, 'ASYRAWI MULIA', '1010963007', 2010, 'KODYA SOLOK', '1992-03-02', 1, '81364555619', 3, 1, NULL, NULL),
(62, 'NOOR ALFATH AZIZ', '1010963008', 2010, 'KODYA BUKIT TINGGI', '1992-08-16', 1, '85760903467', 3, 1, NULL, NULL),
(63, 'PUTRI CITRA DENEZI', '1010963009', 2010, 'KODYA TERNATE', '1992-10-28', 2, '85830234520', 3, 1, NULL, NULL),
(64, 'NOVYA ARDIESA', '1010963010', 2010, 'KODYA PADANG', '1991-11-19', 2, '81374014117', 3, 1, NULL, NULL),
(65, 'M RIKI DWI PUTRA EFFENDI', '1010963011', 2010, 'KAB.LAHAT', '1992-07-07', 1, '85658407449', 3, 1, NULL, NULL),
(66, 'FADHEL MOHAMMAD EDRIE', '1010963012', 2010, 'KODYA PADANG', '1991-10-24', 1, '8566057249', 3, 1, NULL, NULL),
(67, 'ARIES MUNANDAR AM', '1010963013', 2010, 'KAB.AGAM', '1990-12-23', 1, '85274013754', 3, 1, NULL, NULL),
(68, 'FRIYOGI RESVY MAHDA', '1010963014', 2010, 'KAB.PASAMAN', '1992-07-12', 1, '85363026835', 3, 1, NULL, NULL),
(69, 'MUHAMMAD JUNAIDI', '1010963015', 2010, 'KODYA PADANG', '1992-06-22', 1, '81363590429', 3, 1, NULL, NULL),
(70, 'AGUNG PRASTIYO', '1010963016', 2010, '', '1900-01-01', 1, '81314272385', 3, 1, NULL, NULL),
(71, 'WINNI RAHDINI', '1110961001', 2011, 'KAB.TANAH DATAR', '1993-06-15', 2, '', 1, 1, NULL, NULL),
(72, 'MENTHARI PUTRI UTAMI', '1110961002', 2011, 'KODYA PAYAKUMBUH', '1993-03-17', 2, '82283707668', 1, 1, NULL, NULL),
(73, 'NISSA SURYANI', '1110961003', 2011, 'KODYA BUKIT TINGGI', '1993-06-14', 2, '', 1, 1, NULL, NULL),
(74, 'HANAFI RAMADHAN', '1110961004', 2011, 'KODYA SOLOK', '1992-12-14', 1, '', 1, 1, NULL, NULL),
(75, 'TARA MELZA', '1110961005', 2011, 'KODYA MEDAN', '1994-07-01', 2, '', 1, 1, NULL, NULL),
(76, 'REKSA RANTI ARNAS', '1110961006', 2011, 'KODYA PEKANBARU', '1992-12-30', 2, '', 1, 1, NULL, NULL),
(77, 'YOLANDA NOFRIANTI', '1110961007', 2011, 'KAB.KUANTAN SINGINGI', '1993-11-20', 2, '', 1, 1, NULL, NULL),
(78, 'HERIYANDI ELVIS', '1110961008', 2011, 'KAB.TANGERANG', '1993-11-10', 1, '', 1, 1, NULL, NULL),
(79, 'METRI RAHAYU', '1110961009', 2011, 'KODYA PADANG', '1993-08-05', 2, '82169085109', 1, 1, NULL, NULL),
(80, 'ADJIE CAHYANA PUTRA', '1110961010', 2011, 'KODYA PADANG', '1993-02-07', 1, '', 1, 1, NULL, NULL),
(81, 'FANDI IHSAN', '1110961011', 2011, 'KAB.PASAMAN', '1993-01-08', 1, '', 1, 1, NULL, NULL),
(82, 'M RIZKI DARMAWAN', '1110961012', 2011, 'KODYA DEPOK', '1993-01-06', 1, '', 1, 1, NULL, NULL),
(83, 'YUDHI HARTADI', '1110961013', 2011, 'KODYA PADANG', '1994-01-16', 1, '', 1, 1, NULL, NULL),
(84, 'RAHMATIKA PRATAMA S', '1110962001', 2011, 'KODYA PADANG', '1993-08-15', 2, '', 1, 1, NULL, NULL),
(85, 'ILHAM AMINUDDIN', '1110962002', 2011, 'KODYA PADANG', '1993-07-08', 1, '', 1, 1, NULL, NULL),
(86, 'DINA APRIANA', '1110962003', 2011, 'KODYA SOLOK', '1992-04-01', 2, '', 1, 1, NULL, NULL),
(87, 'RIZKYNANDA BUSMA PRATAMA', '1110962004', 2011, 'KODYA JAMBI', '1993-11-19', 1, '', 1, 1, NULL, NULL),
(88, 'YOGIE DESRI PRATAMA', '1110962005', 2011, 'KODYA PADANG', '2011-07-04', 1, '81275234224', 1, 1, NULL, NULL),
(89, 'SYUKRINI ILHAMI SAMAR', '1110962006', 2011, 'KODYA BUKIT TINGGI', '1993-06-15', 2, '', 1, 1, NULL, NULL),
(90, 'WIKE ULFIANI ARESA', '1110962007', 2011, 'KODYA PADANG', '1993-01-22', 2, '', 1, 1, NULL, NULL),
(91, 'IQBAL AR RASYID', '1110962008', 2011, 'KODYA MEDAN', '1993-09-10', 1, '', 1, 1, NULL, NULL),
(92, 'RAHMAT NURFAJRI', '1110962009', 2011, 'KODYA PADANG', '1993-11-06', 1, '85263925136', 1, 1, NULL, NULL),
(93, 'BRILIANT YUDISTIRA', '1110962010', 2011, 'KAB.TANAH DATAR', '1993-09-17', 1, '', 1, 1, NULL, NULL),
(94, 'SRI MELFI', '1110962011', 2011, 'KAB.TANAH DATAR', '1993-05-18', 2, '85274461166', 1, 1, NULL, NULL),
(95, 'DEFFRYJUN TAMIN', '1110962012', 2011, 'KAB.AGAM', '1993-12-04', 1, '', 1, 1, NULL, NULL),
(96, 'RUDY HIDAYAT', '1110962013', 2011, 'KODYA BUKIT TINGGI', '1993-08-18', 1, '', 1, 1, NULL, NULL),
(97, 'WIDYA AYU PUTRI', '1110962014', 2011, 'KODYA PADANG', '1993-04-30', 2, '', 1, 1, NULL, NULL),
(98, 'OVILIA MEGA SARI', '1110962015', 2011, 'KODYA BUKIT TINGGI', '1994-01-08', 2, '', 1, 1, NULL, NULL),
(99, 'RESTIANA DEWI', '1110962016', 2011, 'KAB.PURWOREJO', '1994-03-17', 2, '', 1, 1, NULL, NULL),
(100, 'YUDHY BARLIN', '1110962017', 2011, 'KODYA PADANG PANJANG', '1993-08-28', 1, '', 1, 1, NULL, NULL),
(101, 'HAFIZ FAJRIN', '1110962018', 2011, 'KODYA PADANG', '1993-07-24', 1, '', 1, 1, NULL, NULL),
(102, 'CHALIF ALI ASH SHIDDIEQY', '1110962019', 2011, 'KODYA BUKIT TINGGI', '2011-06-30', 1, '82285461141', 1, 1, NULL, NULL),
(103, 'FAUZAN ABDAL HAQ', '1110962020', 2011, 'KODYA PADANG PANJANG', '1993-06-14', 1, '', 1, 1, NULL, NULL),
(104, 'IKHSANNUL HIJRI', '1110962021', 2011, 'KODYA PADANG', '1993-07-07', 1, '85890631228', 1, 1, NULL, NULL),
(105, 'ARI BESPRIADI', '1110962022', 2011, 'KODYA PEKANBARU', '1993-11-04', 1, '', 1, 1, NULL, NULL),
(106, 'MATIUS NUGROHO ARYANTO', '1110962023', 2011, 'KAB.KUANTAN SINGINGI', '1994-04-04', 2, '81364262109', 1, 1, NULL, NULL),
(107, 'DICKY ZSA ZSA BELLA', '1110962024', 2011, 'KODYA LUBUKLINGGAU', '1992-06-22', 1, '', 1, 1, NULL, NULL),
(108, 'WENNY ILHAM', '1110962025', 2011, 'KAB.AGAM', '1993-09-07', 2, '', 1, 1, NULL, NULL),
(109, 'TAUFIK HIDAYAT', '1110962026', 2011, 'KODYA BUKIT TINGGI', '1993-01-04', 1, '', 1, 1, NULL, NULL),
(110, 'RIZKY SATRIA FAUNDRA NAGARA', '1110962027', 2011, 'KODYA MEDAN', '1993-04-24', 1, '', 1, 1, NULL, NULL),
(111, 'NINDY IRZAVIKA', '1110962028', 2011, 'KODYA PADANG PANJANG', '1992-06-17', 2, '', 1, 1, NULL, NULL),
(112, 'YOSI LIANA', '1110962029', 2011, 'KAB.SIJUNJUNG', '1993-06-05', 2, '', 1, 1, NULL, NULL),
(113, 'ALBERTA RAHMAT R.', '1110962030', 2011, 'KODYA PADANG', '1993-03-06', 1, '', 1, 1, NULL, NULL),
(114, 'PRATIWINDYA', '1110962031', 2011, 'KODYA PADANG', '1994-03-19', 2, '', 1, 1, NULL, NULL),
(115, 'REFITA LESTARI', '1110962032', 2011, 'KODYA BUKIT TINGGI', '1993-02-28', 2, '', 1, 1, NULL, NULL),
(116, 'ANAKE PRIMA', '1110962033', 2011, 'KAB.AGAM', '1993-08-30', 1, '83180468581', 1, 1, NULL, NULL),
(117, 'OFITRA IMAZHONA', '1110962034', 2011, 'KAB.TANAH DATAR', '1993-03-26', 1, '81270627960', 1, 1, NULL, NULL),
(118, 'ANDRE TRIANDI PUTRA', '1110962035', 2011, 'KODYA BUKIT TINGGI', '1993-04-23', 1, '', 1, 1, NULL, NULL),
(119, 'HANIFAH DESMITA AZWAR', '1110963001', 2011, 'KODYA PADANG', '1992-12-24', 2, '', 3, 1, NULL, NULL),
(120, 'ISHAQ FAKHROZI', '1110963002', 2011, 'KODYA BOGOR', '1993-10-01', 1, '82284330100', 3, 1, NULL, NULL),
(121, 'SRI RAHMINA', '1110963003', 2011, 'KAB.SOLOK', '1992-10-29', 2, '', 3, 1, NULL, NULL),
(122, 'SEPTRIAN YUWILDA YUNAHAR', '1110963004', 2011, 'KODYA PADANG', '1992-09-20', 2, '', 3, 1, NULL, NULL),
(123, 'RAVKY DIBURA', '1110963005', 2011, 'KODYA BUKIT TINGGI', '1993-03-07', 1, '82285150516', 3, 1, NULL, NULL),
(124, 'FANDY AKBAR GUSANDI', '1110963006', 2011, 'KODYA PADANG', '1993-02-14', 1, '81270612416', 3, 1, NULL, NULL),
(125, 'NIKO.T.RAHMAN', '1110963007', 2011, 'SOLOK SELATAN', '1993-08-07', 1, '85363017825', 3, 1, NULL, NULL),
(126, 'SYAIFUL AFDHAL', '1110963008', 2011, 'KODYA PADANG', '1993-08-11', 1, '', 3, 1, NULL, NULL),
(127, 'DHANI ADIATMA RIMEN', '1110963009', 2011, 'KAB.TANAH DATAR', '1945-07-05', 1, '', 3, 1, NULL, NULL),
(128, 'AGUNG AFIF MUHAMAD', '1110963010', 2011, 'KODYA PADANG', '1993-01-09', 1, '', 3, 1, NULL, NULL),
(129, 'M. IRHAS ERVAN', '1110963012', 2011, 'KAB.PADANG PARIAMAN', '1993-07-04', 1, '', 3, 1, NULL, NULL),
(130, 'MUHAMMAD ITMAM MEDIAWAN', '1110963013', 2011, 'KODYA JAMBI', '1994-06-17', 1, '', 3, 1, NULL, NULL),
(131, 'NISA DWI ANGRESTI', '1110963014', 2011, 'KODYA PADANG', '1992-06-04', 2, '', 3, 1, NULL, NULL),
(132, 'REZIE NOVINA', '1110963015', 2011, 'KAB.PADANG PARIAMAN', '1993-11-15', 2, '', 3, 1, NULL, NULL),
(133, 'M HERIZKI HAMDANI', '1110963016', 2011, 'KODYA BUKIT TINGGI', '1993-06-03', 1, '', 3, 1, NULL, NULL),
(134, 'DWI RIZKI ARNI', '1110963017', 2011, 'KAB.TANAH DATAR', '1993-06-29', 2, '', 3, 1, NULL, NULL),
(135, 'HENDRIK PRATAMA', '1110963018', 2011, 'KODYA BUKIT TINGGI', '1993-01-01', 1, '85274089765', 3, 1, NULL, NULL),
(136, 'MUHAMMAD RAMLI', '1110963019', 2011, 'KAB.PESISIR SELATAN', '1993-11-06', 1, '', 3, 1, NULL, NULL),
(137, 'RAVI AZHARI', '1110963020', 2011, 'KAB.ACEH SELATAN', '1992-11-30', 1, '82377717071', 3, 1, NULL, NULL),
(138, 'Kotonjatovo Iaritiana Onesime David', '1110964001', 2011, '', '1990-06-01', 1, '85356968261', 6, 1, NULL, NULL),
(139, 'AUDIAH DUHANI', '1210961001', 2012, 'KODYA PADANG', '1994-03-29', 2, '8993459446', 1, 1, NULL, NULL),
(140, 'RAFIQRO SETIAWAN', '1210961002', 2012, 'KAB.ACEH SELATAN', '1994-09-21', 1, '81266135952', 1, 1, NULL, NULL),
(141, 'HAFID YOZA PUTRA', '1210961003', 2012, 'KAB.PASAMAN', '1993-06-14', 1, '', 1, 1, NULL, NULL),
(142, 'AFIF AULIA', '1210961004', 2012, 'KODYA PADANG PANJANG', '1993-12-10', 1, '', 1, 1, NULL, NULL),
(143, 'ISRA WILNA', '1210961005', 2012, 'KAB.AGAM', '1994-01-10', 2, '81276164543', 1, 1, NULL, NULL),
(144, 'ASISKA JENI', '1210961006', 2012, 'KODYA BUKIT TINGGI', '1994-01-30', 2, '81364931016', 1, 1, NULL, NULL),
(145, 'RULLI RHAMANANDA', '1210961007', 2012, 'KODYA PALEMBANG', '1994-03-07', 1, '87895695899', 1, 1, NULL, NULL),
(146, 'MODI LOMURA', '1210962001', 2012, 'KODYA PADANG', '1993-09-13', 1, '81276162468', 1, 1, NULL, NULL),
(147, 'FITRI DAFPRIYENI', '1210962002', 2012, 'KODYA PADANG', '1995-04-06', 2, '', 1, 1, NULL, NULL),
(148, 'WANDA SYAHPUTRA', '1210962003', 2012, 'KODYA PEKANBARU', '1994-02-03', 1, '85265641594', 1, 1, NULL, NULL),
(149, 'MUHAMMAD HARIS', '1210962004', 2012, 'KAB.LIMAPULUHKOTA', '1994-05-05', 1, '82284590884', 1, 1, NULL, NULL),
(150, 'FITRAH ANNISA SARI R', '1210962005', 2012, 'KODYA PADANG', '1995-01-15', 2, '', 1, 1, NULL, NULL),
(151, 'MAYA SOPIAH LUBIS', '1210962006', 2012, 'KOTA BATAM', '1995-07-20', 2, '81947677203', 1, 1, NULL, NULL),
(152, 'VRISCHA VELLA RAVANY', '1210962007', 2012, 'KAB.BEKASI', '1996-04-17', 2, '8116644045', 1, 1, NULL, NULL),
(153, 'ADE HIJRIANTI', '1210962008', 2012, 'JAKARTA PUSAT', '1994-06-17', 2, '81266169417', 1, 1, NULL, NULL),
(154, 'RYAN SYAHPUTERA', '1210962009', 2012, 'KODYA PADANG', '1993-08-28', 1, '85274743493', 1, 1, NULL, NULL),
(155, 'DIAN WIRA ANANTA', '1210962010', 2012, 'KODYA SOLOK', '1994-05-04', 2, '', 1, 1, NULL, NULL),
(156, 'RABIL FIKRI', '1210962011', 2012, 'KAB.PASAMAN', '1994-08-08', 1, '82386348931', 1, 1, NULL, NULL),
(157, 'AISYATUL LATHIFAH S', '1210962012', 2012, 'KODYA PADANG', '1994-12-02', 2, '85263987236', 1, 1, NULL, NULL),
(158, 'FAJRI RIZKI RAMADHAN', '1210962013', 2012, 'KODYA PADANG', '1995-02-02', 1, '82298902059', 1, 1, NULL, NULL),
(159, 'MEITRI DELFIZA', '1210962014', 2012, 'KAB.AGAM', '1994-05-10', 2, '81268956094', 1, 1, NULL, NULL),
(160, 'WAHID FACHRUL HAFIDZ', '1210962015', 2012, 'KODYA BUKIT TINGGI', '1993-10-25', 1, '85766024010', 1, 1, NULL, NULL),
(161, 'FRIGANDI', '1210962016', 2012, 'KAB.PASAMAN', '1994-03-20', 1, '', 1, 1, NULL, NULL),
(162, 'INDRI', '1210962017', 2012, 'KAB.TANAH DATAR', '1993-12-13', 2, '81261045753', 1, 1, NULL, NULL),
(163, 'ANANDA ARDANE', '1210962018', 2012, 'KODYA PADANG PANJANG', '1993-06-16', 1, '', 1, 1, NULL, NULL),
(164, 'YERI HIDAYAT', '1210962019', 2012, 'KODYA SOLOK', '1994-10-01', 1, '81261360295', 1, 1, NULL, NULL),
(165, 'ANGGIA SEPTINURJESYA', '1210962020', 2012, 'KODYA PADANG', '1994-09-18', 2, '', 1, 1, NULL, NULL),
(166, 'NABILA HABIBAH', '1210962021', 2012, 'KAB.LIMAPULUHKOTA', '1993-10-26', 2, '', 1, 1, NULL, NULL),
(167, 'DINI HARIYATI', '1210962022', 2012, 'KODYA PAYAKUMBUH', '1994-12-14', 2, '85274313650', 1, 1, NULL, NULL),
(168, 'PARFI SEPRIANDRA', '1210962023', 2012, 'KODYA PADANG', '1994-09-14', 1, '82285020571', 1, 1, NULL, NULL),
(169, 'IVONI', '1210962024', 2012, 'DHARMASRAYA', '1995-01-01', 2, '82386863924', 1, 1, NULL, NULL),
(170, 'HIDAYAT RIVAI', '1210962025', 2012, 'KODYA BUKIT TINGGI', '1994-02-20', 1, '81266469426', 1, 1, NULL, NULL),
(171, 'MONALISA PRATIWI', '1210962026', 2012, 'KAB.TANAH DATAR', '1994-10-24', 2, '81275447009', 1, 1, NULL, NULL),
(172, 'RIVA HAZMUL FAUZIAH', '1210962027', 2012, 'KODYA PADANG', '1994-10-28', 2, '82285351627', 1, 1, NULL, NULL),
(173, 'ANDRE TRIANDI PUTRA', '1210962028', 2012, 'KAB.AGAM', '1993-04-23', 1, '', 1, 1, NULL, NULL),
(174, 'SURYAPUTRA RAHMATSYAH FAJRI', '1210963001', 2012, 'KODYA PADANG', '1994-09-20', 1, '81275711211', 3, 1, NULL, NULL),
(175, 'ULFA FITHRIYYAH', '1210963002', 2012, 'KODYA PADANG', '1995-02-03', 2, '81277729365', 3, 1, NULL, NULL),
(176, 'TRYSNO', '1210963003', 2012, 'KAB.TANAH DATAR', '1994-03-04', 1, '81266559903', 3, 1, NULL, NULL),
(177, 'MOHAMMAD REZA RIVANDI', '1210963004', 2012, 'KODYA PADANG', '1994-05-25', 1, '', 3, 1, NULL, NULL),
(178, 'MARLIZA SYAFITRI', '1210963005', 2012, 'KAB.TANAH DATAR', '1994-03-03', 2, '82283676865', 3, 1, NULL, NULL),
(179, 'KUNTUM ADILA', '1210963006', 2012, 'KODYA BUKIT TINGGI', '1994-10-13', 2, '', 3, 1, NULL, NULL),
(180, 'VIONITA VARISA', '1210963007', 2012, 'DHARMASRAYA', '1994-09-29', 2, '82382011598', 3, 1, NULL, NULL),
(181, 'DONI AIDI YANDRA', '1210963008', 2012, 'KODYA PADANG', '1994-02-02', 1, '82285011126', 3, 1, NULL, NULL),
(182, 'AULIYAA IKRAMI', '1210963009', 2012, 'KODYA BUKIT TINGGI', '1993-09-13', 2, '82170133599', 3, 1, NULL, NULL),
(183, 'SEPTIAN TIROZI', '1210963010', 2012, 'KODYA SAWAH LUNTO', '1994-09-21', 1, '82284593222', 3, 1, NULL, NULL),
(184, 'FIFEKA ONANDA WAHID', '1210963011', 2012, 'KODYA PADANG', '1994-06-03', 2, '82391284981', 3, 1, NULL, NULL),
(185, 'MUHAMMAD FAJRI', '1210963012', 2012, 'KAB.AGAM', '2012-12-18', 1, '83180531133', 3, 1, NULL, NULL),
(186, 'AGALALAN AGUSTIN', '1210963013', 2012, 'KAB.PADANG PARIAMAN', '1994-08-30', 2, '', 3, 1, NULL, NULL),
(187, 'YOSSI PRIMA ARIYANI', '1210963014', 2012, 'KAB.AGAM', '1994-07-29', 2, '82284090814', 3, 1, NULL, NULL),
(188, 'KHAIRIYATIN NUZHA', '1311521001', 2013, 'Kota Medan', '1995-07-10', 2, '81272049579', 1, 1, NULL, NULL),
(189, 'HABIBI Hsb', '1311521002', 2013, 'Kab. Pasaman Barat', '1994-09-27', 1, '82392447789', 1, 1, NULL, NULL),
(190, 'WINALDA RIDOVANOV', '1311521003', 2013, 'Kota Padang', '1996-02-23', 1, '81371018378', 1, 1, NULL, NULL),
(191, 'SUCI RAMADHANI PUTRI', '1311521004', 2013, 'Kota Bukittinggi', '1995-02-16', 2, '82283656623', 1, 1, NULL, NULL),
(192, 'INTAN KEMALA SURI', '1311521005', 2013, 'Kota Padang', '1995-10-19', 2, '82288353998', 1, 1, NULL, NULL),
(193, 'FAISHAL WAFIQ ZAKIY', '1311521006', 2013, 'Kota Sawahlunto', '1995-04-17', 1, '6,28126E+12', 1, 1, NULL, NULL),
(194, 'WELLA RAHMATIKA', '1311521007', 2013, 'Kota Padang', '1995-04-06', 2, '82382878067', 1, 1, NULL, NULL),
(195, 'FITRI YULIANI', '1311521008', 2013, 'Kota Solok', '1995-07-28', 2, '85271441384', 1, 1, NULL, NULL),
(196, 'ICHA PRATILLA', '1311521009', 2013, 'Kab. Agam', '1994-12-12', 2, '82174404039', 1, 1, NULL, NULL),
(197, 'ARDI NOVAL', '1311521010', 2013, 'Kota Padang', '1995-02-27', 1, '82284468146', 1, 1, NULL, NULL),
(198, 'IMAN WAHYUDI', '1311521011', 2013, 'Kota Medan', '1994-12-06', 1, '8566216514', 1, 1, NULL, NULL),
(199, 'ALFI SYAHNUM', '1311521012', 2013, 'Kota Pariaman', '1995-09-24', 2, '81277643870', 1, 1, NULL, NULL),
(200, 'SEPWANDRA NURZAIT', '1311521013', 2013, 'Kab. Pesisir Selatan', '1994-09-06', 1, '82388204749', 1, 1, NULL, NULL),
(201, 'MIA AUDINA', '1311521014', 2013, 'Kota Padang', '1995-09-28', 2, '82285163768', 1, 1, NULL, NULL),
(202, 'OCI OVELINA', '1311521015', 2013, 'Kota Padang', '1996-08-29', 2, '83182475101', 1, 1, NULL, NULL),
(203, 'FRISCA FERLA SARI', '1311521016', 2013, 'Kota Payakumbuh', '1994-12-26', 2, '81261363239', 1, 1, NULL, NULL),
(204, 'MIFTAHUL JANNAH', '1311521017', 2013, 'Kab. Pasaman Barat', '1994-12-24', 2, '85363033258', 1, 1, NULL, NULL),
(205, 'FITRIANY CHAIRUNNISA', '1311521018', 2013, 'Kota Jakarta Timur', '1994-12-14', 2, '81261944301', 1, 1, NULL, NULL),
(206, 'RANI AGUSTIN', '1311521019', 2013, 'Kota Padang', '1995-08-13', 2, '82386383176', 1, 1, NULL, NULL),
(207, 'SUCI FITRI YENI', '1311521020', 2013, 'Kota Batam', '1995-03-03', 2, '81363225654', 1, 1, NULL, NULL),
(208, 'RONAL CHANDRA GUMARA', '1311521021', 2013, 'Kota Pariaman', '1994-07-27', 1, '85274266222', 1, 1, NULL, NULL),
(209, 'ANGGI TAMARA', '1311521022', 2013, 'Kota Payakumbuh', '1995-05-21', 2, '85274745366', 1, 1, NULL, NULL),
(210, 'EGA EVAN', '1311521023', 2013, 'Kota Padang', '1995-12-01', 1, '82284824842', 1, 1, NULL, NULL),
(211, 'DWI RAHMAYUNIKA', '1311521024', 2013, 'Kota Padang', '1996-06-06', 2, '82388112442', 1, 1, NULL, NULL),
(212, 'ENRAVENIA PATMAH ELTARI', '1311521025', 2013, 'Kab. Solok', '1995-02-16', 2, '85376741407', 1, 1, NULL, NULL),
(213, 'VANIA DWI SHENDANI', '1311521026', 2013, 'Kota Padang', '1995-11-06', 2, '82283461100', 1, 1, NULL, NULL),
(214, 'LARA YASTINOVA', '1311521027', 2013, 'Kab. Padang Pariaman', '1995-06-27', 2, '82384957045', 1, 1, NULL, NULL),
(215, 'DESYOLAWATI', '1311521028', 2013, 'Kota Padang', '1995-12-23', 2, '81947547054', 1, 1, NULL, NULL),
(216, 'RIYAN MEDIA PUTRA', '1311521029', 2013, 'Kab. Siak', '1995-05-09', 1, '82285689417', 1, 1, NULL, NULL),
(217, 'AULIA NESTUTI', '1311521030', 2013, 'Kota Padang', '1995-03-30', 2, '85363095588', 1, 1, NULL, NULL),
(218, 'YUDI YUSMAN', '1311521031', 2013, 'Kota Padang', '1994-07-21', 1, '85263006664', 1, 1, NULL, NULL),
(219, 'ZIKRI KHAIRAN', '1311521032', 2013, 'Kota Padang Panjang', '1995-08-05', 1, '85274144428', 1, 1, NULL, NULL),
(220, 'AYU MARLINA', '1311521033', 2013, 'Kota Padang', '1995-04-19', 2, '81275982067', 1, 1, NULL, NULL),
(221, 'RISKA TRI WULANDARI', '1311521034', 2013, 'Kota Padang', '1995-05-21', 2, '82385604426', 1, 1, NULL, NULL),
(222, 'ALFI HAMDANI', '1311521035', 2013, 'Kab. Lima Puluh Kota', '1995-08-28', 1, '85263656907', 1, 1, NULL, NULL),
(223, 'NUR HAYIN', '1311521036', 2013, 'Kab. Lima Puluh Kota', '1995-06-09', 2, '85274060169', 1, 1, NULL, NULL),
(224, 'ARIF RAHMAN', '1311521037', 2013, 'Kota Padang', '1995-05-14', 1, '8566275510', 5, 1, NULL, NULL),
(225, 'ILHAM PRATAMA', '1311521038', 2013, 'Kota Jakarta Pusat', '1995-05-08', 1, '85263328580', 1, 1, NULL, NULL),
(226, 'RANI DIAN NELIANI', '1311521039', 2013, 'Kota Bukittinggi', '1995-09-12', 2, '81277867993', 1, 1, NULL, NULL),
(227, 'DESLA SARI NASRUL', '1311521040', 2013, 'Kota Pariaman', '1994-12-22', 2, '85263966857', 1, 1, NULL, NULL),
(228, 'WIRA DESITA', '1311521041', 2013, 'Kab. Agam', '1994-12-15', 2, '83180699279', 1, 1, NULL, NULL),
(229, 'MONA JUWITA .S', '1311521042', 2013, 'Kab. Tanah Datar', '1995-01-27', 2, '83180422156', 1, 1, NULL, NULL),
(230, 'AZHAR RITONGA', '1311521043', 2013, 'Kab. Pasaman', '1995-02-10', 1, '82169324005', 1, 1, NULL, NULL),
(231, 'ELSA KRISTIN SIMBOLON', '1311521044', 2013, 'Kota Padang', '1994-06-14', 2, '75164312', 1, 1, NULL, NULL),
(232, 'RESTI YULIHASANAH', '1311521045', 2013, 'Kab. Agam', '1995-01-14', 2, '81266170845', 1, 1, NULL, NULL),
(233, 'DITA VIOLITA', '1311521046', 2013, 'Kota Padang Panjang', '1995-08-21', 2, '82254835853', 1, 1, NULL, NULL),
(234, 'RAHMA NOVIA', '1311521047', 2013, 'Kota Bukittinggi', '1994-11-10', 2, '85263687870', 1, 1, NULL, NULL),
(235, 'ALVI DWI WAHYUNI', '1311521048', 2013, 'Kab. Agam', '1995-06-15', 2, '81378581115', 1, 1, NULL, NULL),
(236, 'MELLA ANDRIANI', '1311521049', 2013, 'Kota Padang', '1994-12-28', 2, '81267363141', 1, 1, NULL, NULL),
(237, 'RAHAYU TIFANI', '1311521050', 2013, 'Kab. Solok', '1995-03-15', 2, '82381970197', 1, 1, NULL, NULL),
(238, 'HADIANDA SALWA GUPA', '1311522001', 2013, 'Kota Jakarta Timur', '1997-11-26', 1, '81382417068', 2, 1, NULL, NULL),
(239, 'ADE NURHIDAYAT', '1311522002', 2013, 'Kab. Pasaman', '1994-12-10', 1, '82392995739', 2, 1, NULL, NULL),
(240, 'ILHAM', '1311522003', 2013, 'Kota Padang Panjang', '1994-12-07', 1, '85271857269', 2, 1, NULL, NULL),
(241, 'EZMUL MAWARDI', '1311522004', 2013, 'Kab. Agam', '1994-04-17', 1, '85272559297', 2, 1, NULL, NULL),
(242, 'YENASKI TEGAR', '1311522005', 2013, 'Kota Bukittinggi', '1997-11-14', 1, '81266777125', 2, 1, NULL, NULL),
(243, 'RACHMAT HIDAYANTO', '1311522006', 2013, 'Kota Sibolga', '1995-12-10', 1, '81275982061', 2, 1, NULL, NULL),
(244, 'HAUSA YORUBA', '1311522007', 2013, 'Kota Bukittinggi', '1996-05-30', 2, '81276669275', 2, 1, NULL, NULL),
(245, 'AULIA FIKRI ALIZAR', '1311522008', 2013, 'Kota Padang', '1995-05-30', 1, '82385776137', 2, 1, NULL, NULL),
(246, 'SUBNANDA ENRIKO', '1311522009', 2013, 'Kota Pekanbaru', '1995-10-03', 1, '83186853653', 2, 1, NULL, NULL),
(247, 'NOVRI DARMA PUTRA', '1311522010', 2013, 'Kota Jakarta Selatan', '1995-11-18', 1, '', 1, 1, NULL, NULL),
(248, 'ASMA KARIMAH NASYITH', '1311522011', 2013, '', '0000-00-00', 2, '85263268662', 2, 1, NULL, NULL),
(249, 'LUKMAN MULAYA', '1311522012', 2013, 'Kab. Musi Rawas', '1996-01-06', 1, '87896372343', 2, 1, NULL, NULL),
(250, 'IKHWAN', '1311522013', 2013, 'Kota Bukittinggi', '1997-03-22', 1, '89520765949', 2, 1, NULL, NULL),
(251, 'KEVIN VALDI A', '1311522014', 2013, 'Kota Padang', '1995-01-17', 1, '82284410727', 2, 1, NULL, NULL),
(252, 'ALAIKA IBRAHIM', '1311522015', 2013, 'Kab. Agam', '1985-05-05', 1, '82383066805', 2, 1, NULL, NULL),
(253, 'MUHAMMAD HABIBIE', '1311522016', 2013, 'Kota Padang Panjang', '1995-04-19', 1, '83180772719', 2, 1, NULL, NULL),
(254, 'FADHILLA KUSUMA', '1311522017', 2013, 'Kota Bukittinggi', '1995-04-23', 2, '81277867276', 2, 1, NULL, NULL),
(255, 'EKO RAHMAN HAKIM', '1311522018', 2013, 'Kab. Pasaman Barat', '1995-11-21', 1, '81261759161', 2, 1, NULL, NULL),
(256, 'BENARDO AULIA', '1311522019', 2013, 'Kota Padang', '1994-12-29', 1, '81275981777', 2, 1, NULL, NULL),
(257, 'SUCI RAMADEWI L', '1311522020', 2013, 'Kota Padang', '1996-02-01', 2, '82284327580', 2, 1, NULL, NULL),
(258, 'ELSA APRILINA', '1311522021', 2013, 'Kota Bukittinggi', '1995-04-05', 2, '85766110996', 2, 1, NULL, NULL),
(259, 'FANDY ARRASYID', '1311522022', 2013, 'Kota Padang', '1995-06-24', 1, '82172784479', 2, 1, NULL, NULL),
(260, 'RYAN KUSUMA RAMADHAN', '1311522023', 2013, 'Kab. Pasaman', '1995-02-20', 1, '85263010948', 2, 1, NULL, NULL),
(261, 'NURRAHMAN HADI', '1311522024', 2013, 'Kota Padang', '1995-07-29', 1, '85766250797', 2, 1, NULL, NULL),
(262, 'AYU LESTARI', '1311522025', 2013, 'Kota Padang', '1995-04-01', 2, '85766187501', 2, 1, NULL, NULL),
(263, 'ULFAH UMMUL KHAIRI', '1311522026', 2013, 'Kota Padang', '1996-05-14', 2, '', 2, 1, NULL, NULL),
(264, 'SELVI OCTAVIA AZALI', '1411521001', 2014, 'Kota Padang', '1996-10-30', 2, '83182482218', 1, 1, NULL, NULL),
(265, 'HERU JATMIKA PUTRA', '1411521002', 2014, 'Kota Padang', '1996-07-01', 1, '8875038814', 1, 1, NULL, NULL),
(266, 'MAGHFIRAH MAULANI', '1411521003', 2014, 'Kota Padang', '1995-12-01', 2, '85766147660', 1, 1, NULL, NULL),
(267, 'MUTYA DWI SAPUTRI', '1411521004', 2014, 'Kota Padang Panjang', '1995-11-19', 2, '85263917166', 1, 1, NULL, NULL),
(268, 'MHD. ADHITIYA OKTA RIYANDI', '1411521005', 2014, 'Kab. Lima Puluh Kota', '1995-10-27', 1, '85374176439', 1, 1, NULL, NULL),
(269, 'LUCY TRILINDA', '1411521006', 2014, 'Kota Payakumbuh', '1996-08-19', 2, '85274066424', 1, 1, NULL, NULL),
(270, 'AULIA AYU LUKMAN', '1411521007', 2014, 'Kota Padang', '1996-04-02', 2, '81266629895', 1, 1, NULL, NULL),
(271, 'ARIQ NAUFAL', '1411521008', 2014, 'Kota Padang', '1997-03-29', 1, '82392484847', 1, 1, NULL, NULL),
(272, 'AZIZI SONIAWAN', '1411521009', 2014, 'Kota Padang', '1996-12-11', 1, '83181662510', 1, 1, NULL, NULL),
(273, 'SYIFA SHAVIRA', '1411521010', 2014, 'Kota Padang', '1995-11-29', 2, '83180102808', 1, 1, NULL, NULL),
(274, 'ATIKA HIJRIANDINI', '1411521011', 2014, 'Kab. Agam', '1996-05-20', 2, '81266291288', 1, 1, NULL, NULL),
(275, 'IQBAL NAWA ZAKI', '1411521012', 2014, 'Kota Pariaman', '1996-10-20', 1, '81268574427', 1, 1, NULL, NULL),
(276, 'WARDATUL ALIFAH', '1411521013', 2014, 'Kota Padang', '1996-08-14', 2, '8116603569', 1, 1, NULL, NULL),
(277, 'WARDATUL HANIFAH', '1411521014', 2014, 'Kota Padang', '1996-08-14', 2, '8116614896', 1, 1, NULL, NULL),
(278, 'RYAN RINALDI', '1411521015', 2014, 'Kota Padang', '1996-01-13', 1, '82383232650', 1, 1, NULL, NULL),
(279, 'RAFEL DINUR', '1411521016', 2014, 'Kota Padang', '1996-07-04', 1, '82387009060', 1, 1, NULL, NULL),
(280, 'UMAR SYUKRI', '1411521017', 2014, 'Kota Padang', '1996-01-07', 1, '8997680807', 1, 1, NULL, NULL),
(281, 'FARID WARNEDI', '1411521018', 2014, 'Kab. Agam', '1996-03-29', 1, '82284446329', 1, 1, NULL, NULL),
(282, 'NABILA ULFA WALMI', '1411521019', 2014, 'Kota Padang', '1996-08-13', 2, '81364566474', 1, 1, NULL, NULL),
(283, 'RAFKI AZIM', '1411521020', 2014, 'Kota Padang', '1996-11-14', 1, '85274276248', 1, 1, NULL, NULL),
(284, 'JOVI ADRIAN', '1411521021', 2014, 'Kota Padang', '1996-06-11', 1, '81275809025', 1, 1, NULL, NULL),
(285, 'NULFAHMI LAURA WIDARED', '1411521022', 2014, 'Kota Padang', '1996-11-14', 2, '89622131219', 1, 1, NULL, NULL),
(286, 'WIDYA WULANDARI', '1411521023', 2014, 'Kota Padang', '1996-09-22', 2, '82384558802', 5, 1, NULL, NULL),
(287, 'YUPI SRI YUNITA', '1411521024', 2014, 'Kab. Solok Selatan', '1996-06-06', 2, '81363095861', 5, 1, NULL, NULL),
(288, 'OXSA PICASSO', '1411521025', 2014, 'Kota Padang', '1996-03-15', 2, '81276418767', 5, 1, NULL, NULL),
(289, 'MUHAMMAD ROCKY KURNIAWAN', '1411521026', 2014, 'Kota Pekanbaru', '1996-05-09', 1, '85363495779', 5, 1, NULL, NULL),
(290, 'ZERA OLVIANA', '1411521027', 2014, 'Kota Padang', '1996-11-27', 2, '82391570847', 5, 1, NULL, NULL),
(291, 'FLORENTHI MEITRIA', '1411521028', 2014, 'Kota Payakumbuh', '1996-05-08', 2, '82293137211', 5, 1, NULL, NULL),
(292, 'FANJI ARIEF', '1411521029', 2014, 'Kota Padang', '1996-03-27', 1, '83182403697', 5, 1, NULL, NULL),
(293, 'ILHAM EKA PUTRA', '1411521030', 2014, 'Kota Sungai Penuh', '1996-03-23', 1, '85381744334', 1, 1, NULL, NULL),
(294, 'FITRI ADELIANI', '1411521031', 2014, 'Kota Padang', '1996-03-05', 2, '85928076276', 1, 1, NULL, NULL),
(295, 'TRI AGUSTIAN A', '1411522001', 2014, 'Kota Bukittinggi', '1996-08-08', 1, '85274080954', 2, 1, NULL, NULL),
(296, 'ELSHA YULIANI P Z', '1411522002', 2014, 'Kota Bukittinggi', '1995-07-06', 2, '85364560040', 2, 1, NULL, NULL),
(297, 'LYDYA SARI YUNANDHA', '1411522003', 2014, 'Kota Padang', '1996-09-08', 2, '83182440134', 2, 1, NULL, NULL),
(298, 'WYNA BELMI SOSIAWAN', '1411522004', 2014, 'Kota Padang', '1996-08-03', 2, '81261626098', 2, 1, NULL, NULL),
(299, 'AFDHAL ZIKRI', '1411522005', 2014, 'Kab. Tanah Datar', '1996-05-03', 1, '85263716292', 2, 1, NULL, NULL),
(300, 'IQBAL HADI', '1411522006', 2014, 'Kab. Tanah Datar', '1995-08-24', 1, '89625423542', 2, 1, NULL, NULL),
(301, 'RAHMAT SANDHY', '1411522007', 2014, 'Kab. Lima Puluh Kota', '1996-04-08', 1, '82284976131', 2, 1, NULL, NULL),
(302, 'ANNISA AMALIA', '1411522008', 2014, 'Kab. Pesisir Selatan', '1995-08-21', 2, '85365572137', 2, 1, NULL, NULL),
(303, 'UGI MEILIYA EKA P', '1411522009', 2014, 'Kota Padang', '1996-05-21', 2, '81947452325', 2, 1, NULL, NULL),
(304, 'RAHMI HANDAYANI', '1411522010', 2014, 'Kota Bukittinggi', '1995-03-28', 2, '81364566464', 2, 1, NULL, NULL),
(305, 'NURMAN ABEDI', '1411522011', 2014, 'Kota Padang', '1996-04-20', 1, '8,52713E+11', 2, 1, NULL, NULL),
(306, 'YUDHA RESTU ALDITYA', '1411522012', 2014, 'Kota Padang', '1996-07-06', 1, '81266087808', 2, 1, NULL, NULL),
(307, 'FADHILLAH IKHWAN', '1411522013', 2014, 'Kota Padang', '1996-01-22', 1, '81364766732', 2, 1, NULL, NULL),
(308, 'MUHAMMAD FAUZI', '1411522014', 2014, 'Kab. Sijunjung', '1996-02-27', 1, '85278321965', 2, 1, NULL, NULL),
(309, 'DEA IVANA', '1411522015', 2014, 'Kota Padang', '1996-04-11', 2, '82381481116', 2, 1, NULL, NULL),
(310, 'SAIDAH MUKRIMAH', '1411522016', 2014, 'Kota Bukittinggi', '1995-05-03', 2, '81994100051', 2, 1, NULL, NULL),
(311, 'DHENI ARVIANSYAH', '1411522017', 2014, 'KAB.ACEH SELATAN', '1996-04-11', 1, '85435473165', 2, 1, NULL, NULL),
(312, 'KHAIRUNNISA LATIFA', '1411522018', 2014, 'Kota Padang', '1996-12-30', 2, '82386865896', 2, 1, NULL, NULL),
(313, 'FADHLI ARIF DELIYUS', '1411522019', 2014, 'Kota Bukittinggi', '1994-09-24', 1, '89614621205', 2, 1, NULL, NULL),
(314, 'ZIKRYA HASANAH', '1411522020', 2014, 'Kab. Solok Selatan', '1995-11-08', 2, '81270058737', 2, 1, NULL, NULL),
(315, 'RIA OKTAVIANI', '1411522021', 2014, 'Kota Jakarta Barat', '1995-10-02', 2, '81210267300', 2, 1, NULL, NULL),
(316, 'DITTO AFIQ PANGARSO', '1411522022', 2014, 'Kota Padang', '1997-09-17', 1, '81378021728', 2, 1, NULL, NULL),
(317, 'SHABRINA TAMIMI', '1411522023', 2014, 'Kota Solok', '1996-07-27', 2, '81276964126', 2, 1, NULL, NULL),
(318, 'TRI WINDA RAHMADANI', '1411522024', 2014, 'Kota Padang', '1996-01-31', 2, '82387424626', 2, 1, NULL, NULL),
(319, 'FIKRI ARDHANA', '1411522025', 2014, 'Kota Jakarta Pusat', '1996-01-27', 1, '82387624927', 2, 1, NULL, NULL),
(320, 'qisthy mawaddah', '1411522026', 2014, '', '0000-00-00', 2, '81993430719', 2, 1, NULL, NULL),
(321, 'GALUH PERMANA', '1411522027', 2014, 'Kab. Dharmasraya', '1996-10-02', 1, '87792171655', 2, 1, NULL, NULL),
(322, 'AGUM SADEWA', '1411522028', 2014, 'Kota Bukittinggi', '1996-03-06', 1, '83182599023', 2, 1, NULL, NULL),
(323, 'HESTI GRAVINA', '1411522029', 2014, 'Kota Padang Panjang', '1996-08-06', 2, '82384953131', 2, 1, NULL, NULL),
(324, 'ERLINDA KURNIA PUTRI', '1411522030', 2014, 'Kota Padang', '1996-03-12', 2, '85274447299', 2, 1, NULL, NULL),
(325, 'SITI RAHZANA GUSESYA', '1511521001', 2015, 'Kota Padang', '1997-09-28', 2, '81267123628', 1, 1, NULL, NULL),
(326, 'NURUL HIDAYAT', '1511521002', 2015, 'Kab. Pesisir Selatan', '1997-05-31', 2, '85278795544', 1, 1, NULL, NULL),
(327, 'VIKRAN MAULANA', '1511521003', 2015, 'Kota Medan', '1997-10-14', 1, '81365401935', 1, 1, NULL, NULL),
(328, 'DARTIKA ANIE MARIAN', '1511521004', 2015, 'Kota Padang Panjang', '1997-08-26', 2, '8982628920', 1, 1, NULL, NULL),
(329, 'AGUSTI AMRI RAHMI', '1511521005', 2015, 'Kota Padang', '1996-08-13', 2, '82382099802', 1, 1, NULL, NULL),
(330, 'RERA ABEL GEMILANG', '1511521006', 2015, 'Kota Padang', '1997-05-02', 1, '7517050175', 1, 1, NULL, NULL),
(331, 'AULIA RAHMI', '1511521007', 2015, 'Kota Bukittinggi', '1998-01-24', 2, '82386292596', 1, 1, NULL, NULL),
(332, 'AFRI RADIATULLAH', '1511521008', 2015, 'Kota Padang', '1997-04-14', 2, '82385310788', 1, 1, NULL, NULL),
(333, 'TARI VANDIRA', '1511521009', 2015, 'Kota Padang', '1996-11-08', 2, '81378046862', 1, 1, NULL, NULL),
(334, 'NOZY NANDA PUTRA', '1511521010', 2015, 'Kota Bukittinggi', '1996-12-17', 1, '81276912424', 1, 1, NULL, NULL),
(335, 'SILVIA SYAPUTRI', '1511521011', 2015, 'Kab. Pasaman', '1997-09-22', 2, '85363439729', 1, 1, NULL, NULL),
(336, 'UTARI SEPTIA DHARMA', '1511521012', 2015, 'Kota Padang', '1997-09-29', 2, '85365961517', 1, 1, NULL, NULL),
(337, 'YOLANDA PARAWITA', '1511521013', 2015, 'Kota Padang', '1997-04-12', 2, '6,28127E+12', 1, 1, NULL, NULL),
(338, 'RICHEL YOLANDA', '1511521014', 2015, 'Kota Padang', '1996-12-29', 2, '81374961148', 1, 1, NULL, NULL),
(339, 'RIZKA AULIA', '1511521015', 2015, 'Kota Bukittinggi', '1998-03-07', 2, '81378197230', 1, 1, NULL, NULL),
(340, 'VEDO ALFARIZI', '1511521016', 2015, 'Kota Padang Panjang', '1997-05-09', 1, '85763460893', 1, 1, NULL, NULL),
(341, 'REGITHA INDAH FERNICHA', '1511521017', 2015, 'Kab. Pesisir Selatan', '1997-06-30', 2, '82288353645', 1, 1, NULL, NULL),
(342, 'NADYA FRITANITA JULYAZTI', '1511521018', 2015, 'Kota Jambi', '1997-07-24', 2, '81267050741', 1, 1, NULL, NULL),
(343, 'PUTRI TANJUNG SARI', '1511521019', 2015, 'Kab. Solok', '1996-12-07', 2, '81276055308', 1, 1, NULL, NULL),
(344, 'MARCHELLA ANRISYA', '1511521020', 2015, 'Kota Padang', '1997-03-23', 2, '81267045185', 1, 1, NULL, NULL),
(345, 'UTARI RAHMADIANI', '1511521021', 2015, 'Kota Padang', '1996-12-29', 2, '81364988549', 1, 1, NULL, NULL),
(346, 'TATA BAYU AMARTA', '1511521022', 2015, 'Kota Padang', '1997-05-04', 1, '81378119797', 1, 1, NULL, NULL),
(347, 'MUHAMMAD IMAM SUTRIA', '1511521023', 2015, 'Kota Solok', '1997-02-14', 1, '82288119250', 5, 1, NULL, NULL),
(348, 'WAHYU ADE PRATAMA', '1511521024', 2015, 'Kota Padang', '1997-05-11', 1, '81371321971', 5, 1, NULL, NULL),
(349, 'AHMAD FAUZAN HASBULLAH', '1511521025', 2015, 'Kota Pariaman', '1997-06-03', 1, '82391269662', 5, 1, NULL, NULL),
(350, 'AHMAD FADIL DW', '1511521026', 2015, 'Kota Bukittinggi', '1997-01-22', 1, '85766361828', 5, 1, NULL, NULL),
(351, 'VIRANI OKTAVIA', '1511521027', 2015, 'Kota Padang', '1997-10-03', 2, '82386040072', 5, 1, NULL, NULL),
(352, 'ANNISA RAHMITA FRIZANGGI', '1511521028', 2015, 'Kota Jakarta Timur', '1997-06-06', 2, '85767778485', 5, 1, NULL, NULL),
(353, 'JESI NAMORA', '1511521029', 2015, 'Kab. Pasaman Barat', '1997-08-13', 1, '85376199777', 5, 1, NULL, NULL),
(354, 'SYIFA CHAIRUNNISSA DELIVA AKBAR', '1511522001', 2015, 'Kota Padang', '1997-09-07', 2, '85264231375', 2, 1, NULL, NULL),
(355, 'IVAN HASALI', '1511522002', 2015, 'Kota Bukittinggi', '1997-05-09', 1, '81372590553', 2, 1, NULL, NULL),
(356, 'MUHAMMAD AL HAMID AFIZA', '1511522003', 2015, 'Kota Padang', '1997-07-18', 1, '83181422356', 2, 1, NULL, NULL),
(357, 'RIDHO DARMAN', '1511522004', 2015, 'Kota Padang', '1997-06-25', 1, '85356923492', 2, 1, NULL, NULL),
(358, 'VANESHA ASYARIZA', '1511522005', 2015, 'Kota Padang', '1997-10-11', 2, '82283612301', 2, 1, NULL, NULL),
(359, 'HARDI YANTI PURNAMA', '1511522006', 2015, 'Kab. Merangin', '1998-10-03', 2, '82283029208', 2, 1, NULL, NULL),
(360, 'TENTI ATIKA PUTRI', '1511522007', 2015, 'Kota Bukittinggi', '1997-09-10', 2, '81374537123', 2, 1, NULL, NULL),
(361, 'AGHILL TRESNA AVIANTO', '1511522008', 2015, 'Kota Bukittinggi', '1996-11-13', 1, '82383446160', 2, 1, NULL, NULL),
(362, 'ADE INDRA', '1511522009', 2015, 'Kota Jakarta Selatan', '1996-09-19', 1, '81993711617', 2, 1, NULL, NULL),
(363, 'CHAIRANI NUSHIDA', '1511522010', 2015, 'Kota Padang', '1997-04-06', 2, '6,28238E+12', 2, 1, NULL, NULL),
(364, 'IVAN RIDA RIVALDO', '1511522011', 2015, 'Kab. Solok Selatan', '1996-09-19', 1, '85263736911', 2, 1, NULL, NULL),
(365, 'ANEESHA KHARISMA DARYODI', '1511522012', 2015, 'Kota Bukittinggi', '1997-09-03', 2, '85263993562', 2, 1, NULL, NULL),
(366, 'NILAM SURI', '1511522013', 2015, 'Kota Bukittinggi', '1996-11-28', 2, '82392795310', 2, 1, NULL, NULL),
(367, 'MUHAMMAD YOGA AFFELLA PUTRA', '1511522014', 2015, 'Kota Padang', '1998-08-09', 1, '85274224215', 2, 1, NULL, NULL),
(368, 'ARIYAN ORIZA ARLOCA', '1511522015', 2015, 'Kota Padang', '1997-03-23', 1, '89507852291', 2, 1, NULL, NULL),
(369, 'ADNAN KHALIQ SYAHRUL', '1511522016', 2015, '', '1997-04-26', 1, '81374994234', 2, 1, NULL, NULL),
(370, 'NAZHIFA NAJLA ARDIAN', '1511522017', 2015, 'Kota Solok', '1997-05-14', 2, '75521354', 2, 1, NULL, NULL),
(371, 'FAUZAN PRAMULIA', '1511522019', 2015, 'Kab. Pesisir Selatan', '1996-05-20', 1, '82169040212', 2, 1, NULL, NULL),
(372, 'FERINA DWI FITRI', '1511522020', 2015, '', '1997-04-13', 2, '81364399977', 2, 1, NULL, NULL),
(373, 'ANGGUN MARDIASNI', '1511522021', 2015, 'Kota Padang Panjang', '1997-06-27', 2, '85278716075', 2, 1, NULL, NULL),
(374, 'MAHFUZ JAILANI IBRAHIM', '1511522022', 2015, 'Kab. Agam', '1996-06-05', 1, '85263884529', 2, 1, NULL, NULL),
(375, 'JIMMY VERNANDO', '1511522023', 2015, 'Kab. Agam', '1996-08-10', 1, '83180721918', 2, 1, NULL, NULL),
(376, 'RESA DEFRIYENTI', '1511522024', 2015, 'Kota Padang', '1997-09-20', 2, '85100962352', 2, 1, NULL, NULL),
(377, 'NOVISA ARDEWATI', '1511522025', 2015, 'Kota Solok', '1997-12-10', 2, '81364245318', 2, 1, NULL, NULL),
(378, 'MONICA SILVIA', '1511522026', 2015, 'Kab. Pesisir Selatan', '1997-03-01', 2, '81364278199', 2, 1, NULL, NULL),
(379, 'KHAIRUL FADLI', '1511522027', 2015, 'Kab. Sijunjung', '1996-02-22', 1, '82391803063', 2, 1, NULL, NULL),
(380, 'MARIZKA', '1511522028', 2015, 'Kab. Tanah Datar', '1997-03-06', 2, '81994294836', 2, 1, NULL, NULL),
(381, 'CAHAYA CAMILA', '1511522029', 2015, 'Kota Jakarta Selatan', '1996-11-11', 2, '85766175977', 2, 1, NULL, NULL),
(382, 'DINI RASYIDDAH', '1511522030', 2015, 'Kab. Agam', '1997-01-01', 2, '85264457589', 2, 1, NULL, NULL),
(383, 'DINA MARDANA DULAS', '1611521001', 2016, 'Kota Padang', '1998-03-17', 2, '85375154396', 1, 1, NULL, NULL),
(384, 'MUHAMMAD AL HAFIDZ', '1611521002', 2016, 'Kota Padang', '1998-08-19', 1, '83181324841', 1, 1, NULL, NULL),
(385, 'HANIFAH AZRA LUBIS', '1611521003', 2016, 'Kota Padang', '1998-06-19', 2, '8116625765', 1, 1, NULL, NULL),
(386, 'NOR ADZILLAH ADYA', '1611521004', 2016, 'Kota Padang', '1999-02-18', 2, '6,28318E+12', 1, 1, NULL, NULL),
(387, 'GABRIEL ASRIAL PUTRI', '1611521005', 2016, 'Kota Padang', '1998-03-01', 2, '6,28127E+12', 1, 1, NULL, NULL),
(388, 'ANNISA AULIA KHAIRA', '1611521006', 2016, 'Kota Sawahlunto', '1998-04-18', 2, '81267878016', 1, 1, NULL, NULL),
(389, 'NURUL INAYA', '1611521007', 2016, 'Kota Pariaman', '1998-06-02', 2, '85274779766', 1, 1, NULL, NULL),
(390, 'ANGGRILA YUSANDRA', '1611521008', 2016, 'Kota Solok', '1997-05-02', 2, '85263578954', 1, 1, NULL, NULL),
(391, 'ILMA SULISTIA', '1611521009', 2016, 'Kab. Pasaman Barat', '1998-05-26', 2, '85364522808', 1, 1, NULL, NULL),
(392, 'LEONI ZAHRA IREVIANA', '1611521010', 2016, 'Kota Padang', '1998-08-22', 2, '82174906708', 1, 1, NULL, NULL),
(393, 'THASYA LARA SUCI', '1611521011', 2016, 'Kab. Pesisir Selatan', '1998-07-14', 2, '81374047215', 1, 1, NULL, NULL),
(394, 'ISRA SAGITA AMELIA', '1611521012', 2016, 'Kota Padang', '1997-11-28', 2, '85260258047', 1, 1, NULL, NULL),
(395, 'SYUKRI RAHMAT ILAHI', '1611521013', 2016, 'Kota Padang', '1997-11-18', 1, '82174668877', 1, 1, NULL, NULL),
(396, 'LISA KASRILA', '1611521014', 2016, 'Kab. Pasaman', '1998-06-05', 2, '82382316868', 1, 1, NULL, NULL),
(397, 'SRI RAHMADHANI', '1611521015', 2016, 'Kab. Lima Puluh Kota', '1997-12-23', 2, '82389990525', 5, 1, NULL, NULL),
(398, 'MALIK A.AZIZ LUBIS', '1611521016', 2016, 'Kota Batam', '1998-08-19', 1, '82284935300', 5, 1, NULL, NULL),
(399, 'MUTIA OCTAVIANY', '1611521017', 2016, 'Kab. Dharmasraya', '1997-10-18', 2, '6,28227E+12', 5, 1, NULL, NULL),
(400, 'GILANG PRIYATNA FERDANA', '1611521018', 2016, 'Kab. Tanah Datar', '1999-04-04', 1, '85271619352', 5, 1, NULL, NULL),
(401, 'NADYA FRISANTIKA PUTRI', '1611521019', 2016, 'Kota Padang', '1998-09-11', 2, '82171007899', 5, 1, NULL, NULL),
(402, 'ASTRI', '1611521020', 2016, 'Kota Padang', '1998-09-30', 2, '85274778011', 1, 1, NULL, NULL),
(403, 'FAJAR WIRYA PUTRA', '1611521021', 2016, 'Kota Padang', '1997-11-16', 1, '82341332845', 5, 1, NULL, NULL),
(404, 'ANGGIA OKTA YORIZKA', '1611521022', 2016, 'Kota Padang', '1997-10-30', 2, '81233132311', 5, 1, NULL, NULL),
(405, 'SHINTA MELANY ANWAR', '1611521023', 2016, 'Kab. Padang Pariaman', '1997-11-08', 2, '81293378451', 5, 1, NULL, NULL),
(406, 'REYCA RISNA METTY', '1611521024', 2016, 'Kota Padang', '1997-08-24', 2, '83181686049', 5, 1, NULL, NULL),
(407, 'ADITYAWARMAN', '1611522001', 2016, 'Kota Bukittinggi', '1998-07-03', 1, '82288411815', 2, 1, NULL, NULL),
(408, 'AQLI MULIA FIRMAN', '1611522002', 2016, 'Kab. Solok', '1997-07-22', 1, '82381451050', 2, 1, NULL, NULL),
(409, 'ABDUL AFIF', '1611522003', 2016, 'Kota Sungai Penuh', '1998-04-10', 1, '82280155505', 2, 1, NULL, NULL),
(410, 'Dira Yosfiranda', '1611522004', 2016, '', '1997-09-04', 2, '82284989284', 2, 1, NULL, NULL),
(411, 'MUHAMMAD WAHYU WAHDINI', '1611522005', 2016, 'Kota Padang', '1997-06-02', 1, '82384832787', 2, 1, NULL, NULL),
(412, 'ELDWIN LAUWLY', '1611522006', 2016, 'Kota Padang', '1999-08-12', 1, '81374546789', 2, 1, NULL, NULL),
(413, 'WAHYU AGRETA PERDANA', '1611522007', 2016, 'Kab. Tanah Datar', '1997-08-05', 1, '82384452426', 2, 1, NULL, NULL),
(414, 'NINA MULYANI', '1611522008', 2016, 'Kota Padang', '1998-01-15', 2, '82384129731', 2, 1, NULL, NULL),
(415, 'AHMAD FADHIL', '1611522009', 2016, 'Kab. Lima Puluh Kota', '1998-02-01', 1, '85356402013', 2, 1, NULL, NULL),
(416, 'KELFIN AMBAR SUSILO', '1611522010', 2016, 'Kab. Dharmasraya', '1998-07-04', 1, '82172767472', 2, 1, NULL, NULL),
(417, 'MUHAMMAD RENO AKHYAR M', '1611522011', 2016, 'Kota Padang', '1998-05-03', 1, '8116645460', 2, 1, NULL, NULL),
(418, 'REINALDO SHANDEV PRATAMA', '1611522012', 2016, 'Kota Padang', '1998-06-03', 1, '82284009498', 2, 1, NULL, NULL),
(419, 'MEYSA PUTRI', '1611522013', 2016, 'Kab. Agam', '1998-05-24', 2, '82284943494', 2, 1, NULL, NULL),
(420, 'DARA FARESILA', '1611522014', 2016, 'Kota Padang', '1998-01-03', 2, '82170477004', 2, 1, NULL, NULL),
(421, 'AULIA ANSHARI FATHURRAHMAN', '1611522015', 2016, 'Kota Payakumbuh', '1998-06-16', 1, '81266898480', 2, 1, NULL, NULL),
(422, 'AFFAN HANAFIAH', '1611522016', 2016, 'Kab. Solok', '1998-07-10', 1, '85364971368', 2, 1, NULL, NULL),
(423, 'DODI RIZALDI', '1611522017', 2016, 'Kota Bukittinggi', '1997-09-02', 1, '82283480390', 2, 1, NULL, NULL),
(424, 'ANGGIT MARCELLINO', '1611522018', 2016, 'Kota Padang', '1998-03-12', 1, '85274216098', 2, 1, NULL, NULL),
(425, 'GARCIA FHALMA', '1611523001', 2016, 'Kab. Agam', '1998-04-28', 2, '85264296816', 3, 1, NULL, NULL),
(426, 'PUTRI LAILI RAMDHANI', '1611523002', 2016, 'Kota Solok', '1998-01-25', 2, '82288218131', 3, 1, NULL, NULL),
(427, 'KHAIRUNNISA ARIIBAH', '1611523003', 2016, 'Kota Padang', '1998-12-30', 2, '82390662434', 3, 1, NULL, NULL),
(428, 'FUAD ALI TANJUNG', '1611523004', 2016, 'Kab. Tapanuli Tengah', '1998-08-28', 1, '85358764619', 3, 1, NULL, NULL),
(429, 'MUHAMAD FEBRI ALGANI', '1611523005', 2016, 'Kota Bukittinggi', '1998-02-03', 1, '81277641223', 3, 1, NULL, NULL),
(430, 'FAREL MUHAMMAD ALESKI', '1611523006', 2016, 'Kota Padang', '1998-08-24', 1, '81374531793', 3, 1, NULL, NULL),
(431, 'ILFA ZAKIA', '1611523007', 2016, 'Kab. Solok', '1998-05-22', 2, '82387270685', 3, 1, NULL, NULL),
(432, 'ALVI RAHMI YESRI', '1611523008', 2016, 'Kota Padang Panjang', '1998-10-02', 2, '85264624602', 3, 1, NULL, NULL),
(433, 'ANNISA NURGUSTIA', '1611523009', 2016, 'Kota Padang Panjang', '1998-04-14', 2, '82387601470', 3, 1, NULL, NULL),
(434, 'ISHA NEEMARA', '1611523010', 2016, 'Kota Depok', '1998-08-30', 2, '81266398459', 3, 1, NULL, NULL),
(435, 'YAUMA AMANDA SASKIA', '1611523011', 2016, 'Kab. Purwakarta', '1997-12-30', 2, '82385260896', 3, 1, NULL, NULL),
(436, 'MIFTAHUL ASRAF', '1611523012', 2016, 'Kota Jambi', '1998-11-24', 1, '82279580150', 3, 1, NULL, NULL),
(437, 'REZKI YUNANDA', '1611523013', 2016, 'Kota Padang', '1997-06-04', 1, '82169568226', 3, 1, NULL, NULL),
(438, 'SALSABILLA JULIA PUTRI', '1611523014', 2016, 'Kota Padang', '1998-07-23', 2, '81267095634', 3, 1, NULL, NULL),
(439, 'RAFI MARYUDWIKA PUTRA', '1611523015', 2016, 'Kota Padang', '1996-12-14', 1, '87895438220', 3, 1, NULL, NULL),
(440, 'RANDA JULIO MEZA', '1611523016', 2016, 'Kab. Pasaman Barat', '1997-07-31', 1, '81374149348', 3, 1, NULL, NULL),
(441, 'FRANSINA MABEL', '1611529001', 2016, 'Kota Jayapura', '1998-10-05', 2, '82359356127', 4, 1, NULL, NULL),
(442, 'MURDAYANI', '1611529002', 2016, 'Kab. Gayo Luas', '1997-11-16', 2, '82168570538', 4, 1, NULL, NULL),
(443, 'NOVA NOVIANA', '1711521001', 2017, 'Kab. Agam', '1998-11-16', 2, '81266253895', 1, 1, NULL, NULL),
(444, 'ERICK OKTA WIRDANA', '1711521002', 2017, 'Kota Padang', '1999-10-15', 1, '82169090415', 1, 1, NULL, NULL),
(445, 'ISA DEWI SARTIKA', '1711521003', 2017, 'Kota Padang', '1999-04-14', 2, '82283772898', 1, 1, NULL, NULL),
(446, 'MARWAN AZIZ', '1711521004', 2017, 'Kab. Siak', '1999-03-12', 1, '81365788806', 1, 1, NULL, NULL),
(447, 'WAHYU FEBRIAN PRATAMA', '1711521005', 2017, 'Kota Palembang', '2000-02-02', 1, '81224981925', 1, 1, NULL, NULL),
(448, 'ANNISA WISTIA RIZALMI', '1711521006', 2017, 'Kota Jakarta Utara', '1998-11-04', 2, '81310586626', 1, 1, NULL, NULL),
(449, 'NADYA AULIA PUTRI', '1711521007', 2017, 'Kota Padang', '1998-07-28', 2, '85765456548', 1, 1, NULL, NULL),
(450, 'FADHILA HANIFA', '1711521008', 2017, 'Kota Bukittinggi', '1999-07-15', 2, '81268803258', 1, 1, NULL, NULL),
(451, 'DINDA SRI FATMA SARAGIH', '1711521009', 2017, 'Kab. Simalungun', '1999-11-04', 2, '82363003401', 1, 1, NULL, NULL),
(452, 'VIRA PRAHMADITA', '1711521010', 2017, 'Kab. Pesisir Selatan', '1999-07-29', 2, '82283204183', 1, 1, NULL, NULL),
(453, 'RIYON FORMIS', '1711521011', 2017, 'Kota Padang', '1999-10-08', 1, '85355142959', 1, 1, NULL, NULL),
(454, 'NADILLA SYIHAQ', '1711521012', 2017, 'Kab. Solok Selatan', '1999-01-08', 2, '82386003596', 1, 1, NULL, NULL),
(455, 'RONNY KURNIAWAN', '1711521013', 2017, 'Kab. Pesisir Selatan', '1998-11-16', 1, '85278030094', 1, 1, NULL, NULL),
(456, 'YOLANDA APRICILIA', '1711521014', 2017, 'Kota Padang', '2000-04-03', 2, '83181762950', 1, 1, NULL, NULL),
(457, 'OVY NANDA PUTRI', '1711521015', 2017, 'Kab. Kerinci', '1999-07-08', 2, '85289533066', 1, 1, NULL, NULL),
(458, 'ANANDA MARDHATILLAH', '1711521016', 2017, 'Kota Padang', '1999-06-19', 1, '85263978185', 1, 1, NULL, NULL),
(459, 'NADA', '1711521017', 2017, 'Kota Padang', '1998-05-05', 2, '83181853252', 1, 1, NULL, NULL),
(460, 'SITTI MUTIAH', '1711522001', 2017, 'Kota Payakumbuh', '1999-03-20', 2, '81267900836', 2, 1, NULL, NULL),
(461, 'RAHMANIA JASMIN', '1711522002', 2017, 'Kota Jakarta Selatan', '2001-02-04', 2, '89666683786', 2, 1, NULL, NULL),
(462, 'ILHAM AKBAR', '1711522003', 2017, 'Kab. Bandung', '1996-02-20', 1, '82283818817', 2, 1, NULL, NULL),
(463, 'DIO HARVANDY', '1711522004', 2017, 'Kab. Pesisir Selatan', '1999-08-27', 1, '82288210084', 2, 1, NULL, NULL),
(464, 'HARIS IKHSAN ARFI', '1711522005', 2017, 'Kota Padang', '1998-08-13', 1, '85272507256', 2, 1, NULL, NULL);
INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `angkatan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `nohp`, `jalur_masuk`, `status_masuk`, `created_at`, `updated_at`) VALUES
(465, 'M. NUR FAIZ PUTRO', '1711522006', 2017, 'Kota Bukittinggi', '1999-06-23', 1, '82386031642', 2, 1, NULL, NULL),
(466, 'FADLI IHSAN MAULANA', '1711522007', 2017, 'Kab. Padang Pariaman', '1999-06-25', 1, '82387314114', 2, 1, NULL, NULL),
(467, 'WAHYUDHIKA CHANDRA PERMANA', '1711522008', 2017, 'Kota Padang', '1999-06-13', 1, '6,28128E+12', 2, 1, NULL, NULL),
(468, 'RIFQI HADI PUTRA', '1711522009', 2017, 'Kota Padang', '1999-07-11', 1, '81364767420', 2, 1, NULL, NULL),
(469, 'AZ ZAHRA FARADISI', '1711522010', 2017, 'Kota Bukittinggi', '1999-09-22', 2, '82384346012', 2, 1, NULL, NULL),
(470, 'SITI HILDA FHADILLA', '1711522011', 2017, 'Kota Padang', '1999-04-21', 2, '85274061088', 2, 1, NULL, NULL),
(471, 'AFIF MAULANA ISMAN', '1711522012', 2017, 'Kota Padang', '1998-11-30', 1, '82169075855', 2, 1, NULL, NULL),
(472, 'FURQANIL TAQWA', '1711522013', 2017, 'Kota Padang', '1999-04-05', 1, '81374061315', 2, 1, NULL, NULL),
(473, 'MUHAMMAD HAMDI', '1711522014', 2017, 'Kota Padang', '2000-02-03', 1, '82385424220', 2, 1, NULL, NULL),
(474, 'VICKY ARIGA ELSAYRAFL', '1711522015', 2017, 'Kota Padang', '1997-08-22', 1, '81267197752', 2, 1, NULL, NULL),
(475, 'FIKRI RIZALDI', '1711522016', 2017, 'Kota Payakumbuh', '1999-02-10', 1, '83180707571', 2, 1, NULL, NULL),
(476, 'ALFARIZI', '1711522017', 2017, 'Kab. Batubara', '1999-10-27', 1, '83196676825', 2, 1, NULL, NULL),
(477, 'TRIANA DILA FEBRIZHA', '1711522018', 2017, 'Kota Jambi', '2000-02-15', 2, '85266490493', 2, 1, NULL, NULL),
(478, 'YOGI PRATAMA FIKRI', '1711522019', 2017, 'Kota Padang', '1998-04-30', 1, '81374537591', 2, 1, NULL, NULL),
(479, 'FENY MAMETRI', '1711522020', 2017, 'Kota Jakarta Selatan', '1998-03-02', 2, '82386329584', 2, 1, NULL, NULL),
(480, 'AGUNG MHD SIDDIQ', '1711522021', 2017, 'Kab. Agam', '1998-09-02', 1, '82392240619', 2, 1, NULL, NULL),
(481, 'ANNISA MIFTAHURRAHMI', '1711523001', 2017, 'Kota Padang', '1999-05-04', 2, '83181511001', 3, 1, NULL, NULL),
(482, 'MUHAMMAD HASBILLAH', '1711523002', 2017, 'Kab. Pesisir Selatan', '1999-05-28', 1, '82285512354', 3, 1, NULL, NULL),
(483, 'YUNITA ERA REFSI', '1711523003', 2017, 'Kab. Pasaman', '1999-06-22', 2, '82384803367', 3, 1, NULL, NULL),
(484, 'MUHAMMAD ALBI ISRA', '1711523005', 2017, 'Kota Payakumbuh', '1998-12-07', 1, '82388710969', 3, 1, NULL, NULL),
(485, 'YULIA AGUSTIN', '1711523006', 2017, 'Kab. Agam', '1998-07-26', 2, '82268734943', 3, 1, NULL, NULL),
(486, 'PRIMA PRASETYO', '1711523007', 2017, 'Kota Padang', '1999-06-28', 1, '81280888557', 3, 1, NULL, NULL),
(487, 'FHIZRA PUTI KHAIRANI', '1711523008', 2017, 'Kota Padang', '1999-04-22', 2, '81364157372', 3, 1, NULL, NULL),
(488, 'HALIM WARDANA', '1711523010', 2017, 'Kab. Solok', '1998-07-28', 1, '81363525347', 3, 1, NULL, NULL),
(489, 'ATHIFAH ZAHRA', '1711523011', 2017, 'Kota Padang', '1999-05-27', 2, '85265808130', 3, 1, NULL, NULL),
(490, 'DINDA FITRIA', '1811521001', 2018, 'Kab. Agam', '1999-12-31', 2, '85272728656', 1, 1, NULL, NULL),
(491, 'DHINDA AMALIA KIFLIA', '1811521002', 2018, 'Kota Bukittinggi', '2000-03-01', 2, '85760741460', 1, 1, NULL, NULL),
(492, 'LATHIFA HARDI', '1811521003', 2018, 'Kota Bukittinggi', '2000-11-21', 2, '81372527238', 1, 1, NULL, NULL),
(493, 'MUHAMMAD HARLEY ADINAMA', '1811521004', 2018, 'Kota Solok', '2000-06-27', 1, '82170440487', 1, 1, NULL, NULL),
(494, 'NESVI RAMAHDANI', '1811521005', 2018, 'Kab. Pesisir Selatan', '1999-12-11', 2, '82385201738', 1, 1, NULL, NULL),
(495, 'ANNISA KHAIRANI NASUTION', '1811521006', 2018, 'Kab. Gayo Luas', '2000-04-22', 2, '895613809076', 1, 1, NULL, NULL),
(496, 'AMANDA NOVERDINA PUTRI', '1811521007', 2018, 'Kota Padang', '2000-11-22', 2, '89501919848', 1, 1, NULL, NULL),
(497, 'RIVALDO AGUSTI', '1811521008', 2018, 'Kota Padang', '1999-08-12', 1, '82268391962', 1, 1, NULL, NULL),
(498, 'MAYANG SARI DEYUVI', '1811521009', 2018, 'Kota Padang', '2000-03-12', 2, '81363205181', 1, 1, NULL, NULL),
(499, 'ADITYA ILHAM RAMADHAN', '1811521010', 2018, 'Kota Padang', '2000-01-02', 1, '81992722279', 1, 1, NULL, NULL),
(500, 'HANIFA ALWI', '1811521011', 2018, 'Kab. Bengkulu Selatan', '2000-05-27', 2, '81363204233', 1, 1, NULL, NULL),
(501, 'NEDIA PUTRI ISMALA', '1811521012', 2018, 'Kota Pekanbaru', '2000-01-10', 2, '85217110857', 1, 1, NULL, NULL),
(502, 'NADHILA FARIZA', '1811521013', 2018, 'Kota Bekasi', '2000-08-10', 2, '82136132907', 1, 1, NULL, NULL),
(503, 'NADYA MELANIE RAGITA AZAHARI', '1811521014', 2018, 'Kab. Pandeglang', '2000-05-14', 2, '83812631162', 1, 1, NULL, NULL),
(504, 'ANNISA SUPRIMA', '1811521015', 2018, 'Kota Solok', '2000-08-30', 2, '82285265855', 1, 1, NULL, NULL),
(505, 'FILZI MUHAIMIN MANAN', '1811521016', 2018, 'Kab. Padang Pariaman', '2000-07-08', 1, '82288922268', 1, 1, NULL, NULL),
(506, 'NADHILAH BUNGA FOURESKA', '1811521017', 2018, 'Kab. Lima Puluh Kota', '2000-01-05', 2, '85837335259', 1, 1, NULL, NULL),
(507, 'MUHAMMAD RAFI', '1811521018', 2018, 'Kota Jambi', '2000-06-13', 1, '85363637922', 1, 1, NULL, NULL),
(508, 'VELIA ANDRINI FAHIRA', '1811522001', 2018, 'Kota Mataram', '2000-09-06', 2, '81377954513', 2, 1, NULL, NULL),
(509, 'IRFAN RAHMAT RAMADHAN', '1811522002', 2018, 'Kota Bukittinggi', '2000-12-06', 1, '81380254125', 2, 1, NULL, NULL),
(510, 'ANGGI JULIETA', '1811522003', 2018, 'Kota Padang', '2000-07-28', 2, '85271858713', 2, 1, NULL, NULL),
(511, 'ANISSA ATIFA', '1811522004', 2018, 'Kota Bukittinggi', '2000-06-01', 2, '82174779035', 2, 1, NULL, NULL),
(512, 'GHANI ARRASYID ZULKARNAEN', '1811522005', 2018, 'Kota Bukittinggi', '2000-07-14', 1, '81275354863', 2, 1, NULL, NULL),
(513, 'ALDHI HAMDANI', '1811522006', 2018, 'Kota Bukittinggi', '2000-03-29', 1, '85265260347', 2, 1, NULL, NULL),
(514, 'FEBBY PUTRI MILENIA PITER', '1811522007', 2018, 'Kota Solok', '2000-02-27', 2, '81267567750', 2, 1, NULL, NULL),
(515, 'FADHLULLAH AHMAD', '1811522009', 2018, 'Kota Padang', '2000-02-26', 1, '81374135127', 2, 1, NULL, NULL),
(516, 'YOPI SAPUTRA', '1811522010', 2018, 'Kota Jakarta Timur', '2000-06-23', 1, '81211824181', 2, 1, NULL, NULL),
(517, 'RAHMAT HANAFI', '1811522011', 2018, 'Kota Padang', '1999-11-14', 1, '81267363303', 2, 1, NULL, NULL),
(518, 'RIFA MAULINA', '1811522012', 2018, 'Kota Jakarta Timur', '2000-06-14', 2, '85263507407', 2, 1, NULL, NULL),
(519, 'SABRINA PRATAMA PUTRI', '1811522013', 2018, 'Kota Bukittinggi', '2000-02-16', 2, '82388422722', 2, 1, NULL, NULL),
(520, 'PUTY SYALIMA', '1811522014', 2018, 'Kota Padang', '2000-11-21', 2, '81266050054', 2, 1, NULL, NULL),
(521, 'FARAS SARTIKA DEWI', '1811522015', 2018, 'Kota Bukittinggi', '2000-09-12', 2, '82385596309', 2, 1, NULL, NULL),
(522, 'FIRHAN HADI YOZA', '1811522016', 2018, 'Kab. Tanah Datar', '1999-09-10', 1, '81268460682', 2, 1, NULL, NULL),
(523, 'AHMAD FAUZAN', '1811522017', 2018, 'Kab. Lima Puluh Kota', '2000-05-13', 1, '85363063802', 2, 1, NULL, NULL),
(524, 'MUHAMMAD FACHRI ANANTA', '1811522018', 2018, 'Kota Padang', '1999-12-13', 1, '85274817872', 2, 1, NULL, NULL),
(525, 'DIFAH ALFERINA PUTRI', '1811522019', 2018, 'Kab. Pesisir Selatan', '1999-11-30', 2, '85271123955', 2, 1, NULL, NULL),
(526, 'NURUL AFIFAH', '1811522020', 2018, 'Kab. Lima Puluh Kota', '1999-11-14', 2, '85376636088', 2, 1, NULL, NULL),
(527, 'NAUFAL FADILAN', '1811522021', 2018, 'Kota Bukittinggi', '1999-12-19', 1, '81378965166', 2, 1, NULL, NULL),
(528, 'DAFFA IKLIL DZAKWAN', '1811522022', 2018, 'Kota Payakumbuh', '2000-05-15', 1, '82288023026', 2, 1, NULL, NULL),
(529, 'RINGGO SAHARA AGSYA LOVA', '1811522023', 2018, 'Kab. Lima Puluh Kota', '1999-11-16', 1, '81266322435', 2, 1, NULL, NULL),
(530, 'IRFAN ZAIN', '1811522024', 2018, 'Kota Padang', '1999-03-28', 1, '89674841992', 2, 1, NULL, NULL),
(531, 'RANGGI AURELIYANTO PUTRA', '1811522025', 2018, 'Kota Padang', '2000-07-21', 1, '82383648441', 2, 1, NULL, NULL),
(532, 'FARHAN NAUFAL OTRA', '1811522026', 2018, 'Kota Padang', '2000-03-28', 1, '82268328293', 2, 1, NULL, NULL),
(533, 'LUZYA RAHMADILLA', '1811522027', 2018, 'Kota Bukittinggi', '1999-10-07', 2, '82283708437', 2, 1, NULL, NULL),
(534, 'MUHAMMAD AGUNG MAHARDHIKA', '1811523001', 2018, 'Kota Padang', '1999-11-12', 1, '82172289949', 3, 1, NULL, NULL),
(535, 'MUHAMMAD HADI ZAHFRAN HASMI', '1811523002', 2018, 'Kota Padang', '2000-11-16', 1, '81285254004', 3, 1, NULL, NULL),
(536, 'HASYA RONA AMIRAHMI', '1811523003', 2018, 'Kota Jakarta Pusat', '1999-11-17', 2, '81386875577', 3, 1, NULL, NULL),
(537, 'FANDY AKBAR', '1811523004', 2018, 'Kab. Bungo', '1999-04-05', 1, '81373415123', 3, 1, NULL, NULL),
(538, 'HIFZHON ALNUTARI', '1811523005', 2018, 'Kota Solok', '2000-01-22', 1, '81270545462', 3, 1, NULL, NULL),
(539, 'MUHAMMAD ARRIDHO', '1811523006', 2018, 'Kota Padang', '1999-04-17', 1, '82386465697', 3, 1, NULL, NULL),
(540, 'MUHAMMAD IQBAL MUBARAK', '1811523007', 2018, 'Kota Padang', '2001-02-07', 1, '81341452992', 3, 1, NULL, NULL),
(541, 'AULIA PUTRI NAZHIRA', '1811523008', 2018, 'Kab. Pesisir Selatan', '2001-01-28', 2, '82286394800', 3, 1, NULL, NULL),
(542, 'DANIA CLARASINTA HANSEN', '1811523009', 2018, 'Kota Surabaya', '2000-12-08', 2, '8982664846', 3, 1, NULL, NULL),
(543, 'SALMA HANIFAH', '1811523010', 2018, 'Kota Padang', '2000-03-23', 2, '82301142534', 3, 1, NULL, NULL),
(544, 'ACHMAD NABIL FIKRI', '1811523011', 2018, 'Kota Padang', '1999-02-15', 1, '82385972045', 3, 1, NULL, NULL),
(545, 'ELINDA SAFITRI', '1811529001', 2018, 'Kab. Seluma', '2000-02-26', 2, '85381634279', 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa_kp`
--

CREATE TABLE `mahasiswa_kp` (
  `id` int(10) UNSIGNED NOT NULL,
  `mahasiswa_id` int(10) UNSIGNED NOT NULL,
  `bidang` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proposal_id` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED DEFAULT NULL,
  `mulai_kp` date DEFAULT NULL,
  `selesai_kp` date DEFAULT NULL,
  `pembimbing` int(10) UNSIGNED DEFAULT NULL,
  `judul_laporan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_seminar` date DEFAULT NULL,
  `jam_seminar` time DEFAULT NULL,
  `ruang_seminar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline_seminar` date DEFAULT NULL,
  `nilai_kp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lap_kegiatan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanda_terima_laporan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nilai_lapangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daftar_hadir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berita_acara` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `laporan_kp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sertifikat_kp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan_verifikasi` text COLLATE utf8mb4_unicode_ci,
  `catatan_nilai` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa_kp`
--

INSERT INTO `mahasiswa_kp` (`id`, `mahasiswa_id`, `bidang`, `proposal_id`, `status`, `mulai_kp`, `selesai_kp`, `pembimbing`, `judul_laporan`, `tanggal_seminar`, `jam_seminar`, `ruang_seminar`, `deadline_seminar`, `nilai_kp`, `lap_kegiatan`, `tanda_terima_laporan`, `nilai_lapangan`, `daftar_hadir`, `berita_acara`, `laporan_kp`, `sertifikat_kp`, `catatan_verifikasi`, `catatan_nilai`, `created_at`, `updated_at`) VALUES
(1, 277, 'divisi IT', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-12 11:58:49', '2018-11-12 11:58:49'),
(2, 290, 'divisi IT', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-12 12:02:15', '2018-11-12 12:02:15'),
(3, 294, 'divisi IT', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-12 12:03:07', '2018-11-12 12:03:07'),
(4, 276, 'perencanaan', 2, 8, '2019-01-02', '2018-11-19', 6, 'analisis proses bisnis', '2019-03-02', '09:00:00', 'e.1.8', '2019-01-19', 'A-', 'lap_kegiatan//laporan_kegiatan-4.jpeg', 'tanda_terima_laporan//tanda_terima_laporan-4.jpeg', 'nilai_lapangan//nilai_lapangan-9.pdf', 'nilai_lapangan//nilai_lapangan-9.pdf', 'berita_acara//berita_acara-4.jpeg', 'laporan_kp//laporan_kp-4.jpeg', 'sertifikat_kp//sertifikat_kp-4.jpeg', 'lengkapi laporan kp', NULL, '2018-11-12 12:13:29', '2018-11-30 05:29:42'),
(5, 456, 'perencanaan', 2, 7, '2018-11-14', '2018-12-14', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-12 12:14:02', '2018-11-12 13:22:27'),
(6, 337, 'perencanaan', 2, 3, '2019-01-02', '2019-01-02', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-12 12:14:22', '2018-11-12 13:22:33'),
(7, 414, 'Penelitian dan Pengembangan', 3, 2, '2018-12-24', '2019-02-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 02:38:01', '2018-11-13 03:02:14'),
(8, 426, 'Penelitian dan Pengembangan', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 02:44:53', '2018-11-14 01:03:41'),
(9, 429, 'Aplikasi dan Sistem Informasi', 4, 4, '2018-12-26', '2019-01-28', 7, 'saya lapor ini judul', '2019-01-31', '09:00:00', 'Teknik', '2019-03-28', 'B+', 'lap_kegiatan//laporan_kegiatan-9.png', 'tanda_terima_laporan//tanda_terima_laporan-9.jpeg', 'nilai_lapangan//nilai_lapangan-9.pdf', 'daftar_hadir//daftar_hadir-9.jpeg', 'berita_acara//berita_acara-9.png', 'laporan_kp//laporan_kp-9.jpeg', 'sertifikat_kp//sertifikat_kp-9.pdf', '', NULL, '2018-11-13 02:44:58', '2018-11-18 07:48:56'),
(10, 413, 'Penelitian dan Pengembangan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 02:45:10', '2018-11-13 02:45:10'),
(11, 386, 'Aplikasi dan Sistem Informasi', 4, 6, '2018-12-26', '2017-01-26', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 02:45:20', '2018-11-15 02:54:22'),
(12, 393, 'Penelitian dan Pengembangan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 02:45:20', '2018-11-13 02:45:20'),
(13, 404, 'Aplikasi dan Sistem Informasi', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 02:45:43', '2018-11-13 02:45:43'),
(14, 384, 'Penelitian dan Pengembangan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 02:45:49', '2018-11-13 02:45:49'),
(15, 428, 'Aplikasi dan Sistem Informasi', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 02:45:52', '2018-11-13 02:45:52'),
(16, 398, 'Aplikasi dan Sistem Informasi', 4, 3, '2018-11-26', '2019-01-10', 6, 'laporan', NULL, NULL, NULL, '2019-01-19', 'B', 'lap_kegiatan//laporan_kegiatan-16.docx', 'tanda_terima_laporan//tanda_terima_laporan-16.docx', 'nilai_lapangan//nilai_lapangan-16.docx', NULL, NULL, NULL, 'sertifikat_kp//sertifikat_kp-16.docx', 'salah', 'nilai error', '2018-11-13 02:46:01', '2018-11-19 05:56:00'),
(17, 388, 'BidTI', 5, 4, '2018-11-13', '2019-01-28', 2, 'KERJA PRAKTIK KEPOLISIAN NEGARA REPUBLIK INDONESIA DAERAH SUMATERA BARAT', '2019-01-30', '10:00:00', 'ruang seminar SI', '2019-03-28', 'A', 'lap_kegiatan//laporan_kegiatan-17.pdf', 'tanda_terima_laporan//tanda_terima_laporan-17.pdf', 'nilai_lapangan//nilai_lapangan-17.pdf', 'daftar_hadir//daftar_hadir-17.pdf', 'berita_acara//berita_acara-17.pdf', 'laporan_kp//laporan_kp-17.pdf', 'sertifikat_kp//sertifikat_kp-17.pdf', '', NULL, '2018-11-13 02:48:58', '2018-11-14 07:51:53'),
(18, 418, 'BidTI', 5, 3, '2018-12-26', '2017-01-26', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 02:49:36', '2019-01-10 13:13:54'),
(19, 410, 'BidTI', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 02:49:53', '2018-11-13 02:49:53'),
(20, 395, 'BidTI', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 02:50:14', '2018-11-13 02:50:14'),
(21, 430, 'BidTI', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 02:50:27', '2018-11-13 02:50:27'),
(22, 390, 'BSI', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 03:11:07', '2018-11-13 03:11:07'),
(23, 402, 'BSI', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 03:12:11', '2018-11-13 03:12:11'),
(24, 383, 'BSI', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 03:12:58', '2018-11-13 03:12:58'),
(25, 394, 'BSI', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 03:13:24', '2018-11-13 03:13:24'),
(26, 432, 'coba', 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '2018-11-13 07:53:10', '2018-11-13 07:53:10'),
(27, 264, 'SDM', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-21 05:44:43', '2018-11-21 05:44:43'),
(28, 266, 'SDM', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-21 05:45:02', '2018-11-21 05:45:02'),
(29, 297, 'SDM', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-21 05:45:16', '2018-11-21 05:45:16'),
(31, 264, 'pengadaan', 13, 1, '2018-11-21', '2018-12-22', 2, 'makan ikan', '2019-01-04', '10:01:00', 'e.19', '2018-09-22', NULL, 'lap_kegiatan//laporan_kegiatan-31.docx', 'tanda_terima_laporan//tanda_terima_laporan-31.docx', 'nilai_lapangan//nilai_lapangan-31.docx', 'daftar_hadir//daftar_hadir-31.docx', 'berita_acara//berita_acara-31.docx', 'laporan_kp//laporan_kp-31.docx', 'sertifikat_kp//sertifikat_kp-31.docx', 'berita acara kosong', NULL, '2018-11-21 06:04:49', '2018-11-23 07:53:52'),
(32, 266, 'pengadaan', 13, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-21 06:11:48', '2018-11-21 06:20:34'),
(33, 297, 'pengadaan', 13, 1, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-21 06:12:01', '2018-11-23 07:45:31'),
(34, 298, 'pengadaan', 13, 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-21 06:12:16', '2019-01-06 06:25:14'),
(35, 273, 'sdm', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-23 07:41:46', '2018-11-23 07:41:46'),
(38, 340, 'hps', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-05 08:20:23', '2018-12-05 08:20:23'),
(39, 443, 'pengembangan IT', 18, 4, '2018-11-02', '2018-12-09', 4, 'analisis proses kenaikan gaji', '2018-12-10', '09:00:00', 'e.1.8', '2019-02-09', 'A', 'lap_kegiatan//laporan_kegiatan-39.pdf', 'tanda_terima_laporan//tanda_terima_laporan-39.pdf', 'nilai_lapangan//nilai_lapangan-39.pdf', 'daftar_hadir//daftar_hadir-39.pdf', 'berita_acara//berita_acara-39.pdf', 'laporan_kp//laporan_kp-39.pdf', 'sertifikat_kp//sertifikat_kp-39.pdf', NULL, NULL, '2018-12-07 08:45:54', '2018-12-09 05:55:16'),
(43, 471, 'SDM', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-07 09:05:06', '2018-12-07 09:05:06'),
(44, 474, 'pengembangan IT', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-07 09:05:25', '2018-12-07 09:05:25'),
(45, 485, 'SDM', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-07 09:05:38', '2018-12-07 09:05:38'),
(46, 295, 'Perencanaan', 19, 3, '2018-12-10', '2019-01-18', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-17 04:31:21', '2018-12-17 04:40:11'),
(47, 272, 'humas', 19, 3, '2019-12-18', '2019-01-18', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-17 04:31:45', '2018-12-17 05:01:32'),
(48, 301, 'keamanan', 19, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-17 04:32:09', '2018-12-17 04:38:52'),
(49, 407, 'SDM', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-01-11 14:13:42', '2019-01-11 14:13:42'),
(50, 396, 'uni', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-01-06 07:02:07', '2019-01-06 07:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_26_054555_create_permission_tables', 1),
(4, '2018_04_26_054743_create_dosens_table', 1),
(5, '2018_04_26_054750_create_mahasiswas_table', 1),
(6, '2018_05_31_153649_create_instansi_table', 1),
(7, '2018_05_31_154149_create_kegiatan_harian_table', 1),
(8, '2018_05_31_154544_create_kp_table', 1),
(9, '2018_05_31_155512_create_mahasiswa_kp_table', 1),
(10, '2018_05_31_160449_create_status_kp_table', 1),
(11, '2018_05_31_160603_create_status_proposal_table', 1),
(12, '2018_04_26_054801_create_tendiks_table', 2),
(13, '2018_05_01_164701_create_peminjaman_statuses_table', 2),
(14, '2018_05_01_164805_create_fasilitas_table', 2),
(15, '2018_05_01_164842_create_ruangan_fungsis_table', 2),
(16, '2018_05_01_164856_create_perbaikan_statuses_table', 2),
(17, '2018_05_01_164908_create_ruangan_kondisis_table', 2),
(18, '2018_05_01_164924_create_gedungs_table', 2),
(19, '2018_05_01_164946_create_units_table', 2),
(20, '2018_05_01_165003_create_penanggung_jawab_units_table', 2),
(21, '2018_05_01_165025_create_ruangans_table', 2),
(22, '2018_05_01_165045_create_ruangan_fasilitas_table', 2),
(23, '2018_05_01_165117_create_peminjaman_ruangans_table', 2),
(24, '2018_05_01_165137_create_perbaikan_ruangans_table', 2),
(25, '2018_07_16_200638_create_harian_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 1),
(3, 'App\\User', 1),
(6, 'App\\User', 4),
(7, 'App\\user', 1),
(14, 'App\\User', 1),
(16, 'App\\User', 5),
(17, 'App\\User', 1),
(18, 'App\\User', 1),
(19, 'App\\User', 1),
(20, 'App\\User', 1),
(21, 'App\\User', 1),
(22, 'App\\User', 1),
(26, 'App\\User', 1),
(27, 'App\\user', 1),
(28, 'App\\User', 1),
(29, 'App\\User', 1),
(30, 'App\\User', 1),
(36, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(2, 'App\\User', 18),
(2, 'App\\User', 19),
(2, 'App\\User', 20),
(2, 'App\\User', 21),
(2, 'App\\User', 22),
(2, 'App\\User', 23),
(2, 'App\\User', 24),
(2, 'App\\User', 25),
(2, 'App\\User', 26),
(2, 'App\\User', 27),
(2, 'App\\User', 28),
(2, 'App\\User', 29),
(2, 'App\\User', 30),
(2, 'App\\User', 31),
(2, 'App\\User', 32),
(2, 'App\\User', 33),
(2, 'App\\User', 34),
(2, 'App\\User', 35),
(2, 'App\\User', 36),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(2, 'App\\User', 39),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(2, 'App\\User', 42),
(2, 'App\\User', 43),
(2, 'App\\User', 44),
(2, 'App\\User', 45),
(2, 'App\\User', 46),
(2, 'App\\User', 47),
(2, 'App\\User', 48),
(2, 'App\\User', 49),
(2, 'App\\User', 50),
(2, 'App\\User', 51),
(2, 'App\\User', 52),
(2, 'App\\User', 53),
(2, 'App\\User', 54),
(2, 'App\\User', 55),
(2, 'App\\User', 56),
(2, 'App\\User', 57),
(2, 'App\\User', 58),
(2, 'App\\User', 59),
(2, 'App\\User', 60),
(2, 'App\\User', 61),
(2, 'App\\User', 62),
(2, 'App\\User', 63),
(2, 'App\\User', 64),
(2, 'App\\User', 65),
(2, 'App\\User', 66),
(2, 'App\\User', 67),
(2, 'App\\User', 68),
(2, 'App\\User', 69),
(2, 'App\\User', 70),
(2, 'App\\User', 71),
(2, 'App\\User', 72),
(2, 'App\\User', 73),
(2, 'App\\User', 74),
(2, 'App\\User', 75),
(2, 'App\\User', 76),
(2, 'App\\User', 77),
(2, 'App\\User', 78),
(2, 'App\\User', 79),
(2, 'App\\User', 80),
(2, 'App\\User', 81),
(2, 'App\\User', 82),
(2, 'App\\User', 83),
(2, 'App\\User', 84),
(2, 'App\\User', 85),
(2, 'App\\User', 86),
(2, 'App\\User', 87),
(2, 'App\\User', 88),
(2, 'App\\User', 89),
(2, 'App\\User', 90),
(2, 'App\\User', 91),
(2, 'App\\User', 92),
(2, 'App\\User', 93),
(2, 'App\\User', 94),
(2, 'App\\User', 95),
(2, 'App\\User', 96),
(2, 'App\\User', 97),
(2, 'App\\User', 98),
(2, 'App\\User', 99),
(2, 'App\\User', 100),
(2, 'App\\User', 101),
(2, 'App\\User', 102),
(2, 'App\\User', 103),
(2, 'App\\User', 104),
(2, 'App\\User', 105),
(2, 'App\\User', 106),
(2, 'App\\User', 107),
(2, 'App\\User', 108),
(2, 'App\\User', 109),
(2, 'App\\User', 110),
(2, 'App\\User', 111),
(2, 'App\\User', 112),
(2, 'App\\User', 113),
(2, 'App\\User', 114),
(2, 'App\\User', 115),
(2, 'App\\User', 116),
(2, 'App\\User', 117),
(2, 'App\\User', 118),
(2, 'App\\User', 119),
(2, 'App\\User', 120),
(2, 'App\\User', 121),
(2, 'App\\User', 122),
(2, 'App\\User', 123),
(2, 'App\\User', 124),
(2, 'App\\User', 125),
(2, 'App\\User', 126),
(2, 'App\\User', 127),
(2, 'App\\User', 128),
(2, 'App\\User', 129),
(2, 'App\\User', 130),
(2, 'App\\User', 131),
(2, 'App\\User', 132),
(2, 'App\\User', 133),
(2, 'App\\User', 134),
(2, 'App\\User', 135),
(2, 'App\\User', 136),
(2, 'App\\User', 137),
(2, 'App\\User', 138),
(2, 'App\\User', 139),
(2, 'App\\User', 140),
(2, 'App\\User', 141),
(2, 'App\\User', 142),
(2, 'App\\User', 143),
(2, 'App\\User', 144),
(2, 'App\\User', 145),
(2, 'App\\User', 146),
(2, 'App\\User', 147),
(2, 'App\\User', 148),
(2, 'App\\User', 149),
(2, 'App\\User', 150),
(2, 'App\\User', 151),
(2, 'App\\User', 152),
(2, 'App\\User', 153),
(2, 'App\\User', 154),
(2, 'App\\User', 155),
(2, 'App\\User', 156),
(2, 'App\\User', 157),
(2, 'App\\User', 158),
(2, 'App\\User', 159),
(2, 'App\\User', 160),
(2, 'App\\User', 161),
(2, 'App\\User', 162),
(2, 'App\\User', 163),
(2, 'App\\User', 164),
(2, 'App\\User', 165),
(2, 'App\\User', 166),
(2, 'App\\User', 167),
(2, 'App\\User', 168),
(2, 'App\\User', 169),
(2, 'App\\User', 170),
(2, 'App\\User', 171),
(2, 'App\\User', 172),
(2, 'App\\User', 173),
(2, 'App\\User', 174),
(2, 'App\\User', 175),
(2, 'App\\User', 176),
(2, 'App\\User', 177),
(2, 'App\\User', 178),
(2, 'App\\User', 179),
(2, 'App\\User', 180),
(2, 'App\\User', 181),
(2, 'App\\User', 182),
(2, 'App\\User', 183),
(2, 'App\\User', 184),
(2, 'App\\User', 185),
(2, 'App\\User', 186),
(2, 'App\\User', 187),
(2, 'App\\User', 188),
(2, 'App\\User', 189),
(2, 'App\\User', 190),
(2, 'App\\User', 191),
(2, 'App\\User', 192),
(2, 'App\\User', 193),
(2, 'App\\User', 194),
(2, 'App\\User', 195),
(2, 'App\\User', 196),
(2, 'App\\User', 197),
(2, 'App\\User', 198),
(2, 'App\\User', 199),
(2, 'App\\User', 200),
(2, 'App\\User', 201),
(2, 'App\\User', 202),
(2, 'App\\User', 203),
(2, 'App\\User', 204),
(2, 'App\\User', 205),
(2, 'App\\User', 206),
(2, 'App\\User', 207),
(2, 'App\\User', 208),
(2, 'App\\User', 209),
(2, 'App\\User', 210),
(2, 'App\\User', 211),
(2, 'App\\User', 212),
(2, 'App\\User', 213),
(2, 'App\\User', 214),
(2, 'App\\User', 215),
(2, 'App\\User', 216),
(2, 'App\\User', 217),
(2, 'App\\User', 218),
(2, 'App\\User', 219),
(2, 'App\\User', 220),
(2, 'App\\User', 221),
(2, 'App\\User', 222),
(2, 'App\\User', 223),
(2, 'App\\User', 224),
(2, 'App\\User', 225),
(2, 'App\\User', 226),
(2, 'App\\User', 227),
(2, 'App\\User', 228),
(2, 'App\\User', 229),
(2, 'App\\User', 230),
(2, 'App\\User', 231),
(2, 'App\\User', 232),
(2, 'App\\User', 233),
(2, 'App\\User', 234),
(2, 'App\\User', 235),
(2, 'App\\User', 236),
(2, 'App\\User', 237),
(2, 'App\\User', 238),
(2, 'App\\User', 239),
(2, 'App\\User', 240),
(2, 'App\\User', 241),
(2, 'App\\User', 242),
(2, 'App\\User', 243),
(2, 'App\\User', 244),
(2, 'App\\User', 245),
(2, 'App\\User', 246),
(2, 'App\\User', 247),
(2, 'App\\User', 248),
(2, 'App\\User', 249),
(2, 'App\\User', 250),
(2, 'App\\User', 251),
(2, 'App\\User', 252),
(2, 'App\\User', 253),
(2, 'App\\User', 254),
(2, 'App\\User', 255),
(2, 'App\\User', 256),
(2, 'App\\User', 257),
(2, 'App\\User', 258),
(2, 'App\\User', 259),
(2, 'App\\User', 260),
(2, 'App\\User', 261),
(2, 'App\\User', 262),
(2, 'App\\User', 263),
(2, 'App\\User', 264),
(2, 'App\\User', 265),
(2, 'App\\User', 266),
(2, 'App\\User', 267),
(2, 'App\\User', 268),
(2, 'App\\User', 269),
(2, 'App\\User', 270),
(2, 'App\\User', 271),
(2, 'App\\User', 272),
(2, 'App\\User', 273),
(2, 'App\\User', 274),
(2, 'App\\User', 275),
(2, 'App\\User', 276),
(2, 'App\\User', 277),
(2, 'App\\User', 278),
(2, 'App\\User', 279),
(2, 'App\\User', 280),
(2, 'App\\User', 281),
(2, 'App\\User', 282),
(2, 'App\\User', 283),
(2, 'App\\User', 284),
(2, 'App\\User', 285),
(2, 'App\\User', 286),
(2, 'App\\User', 287),
(2, 'App\\User', 288),
(2, 'App\\User', 289),
(2, 'App\\User', 290),
(2, 'App\\User', 291),
(2, 'App\\User', 292),
(2, 'App\\User', 293),
(2, 'App\\User', 294),
(2, 'App\\User', 295),
(2, 'App\\User', 296),
(2, 'App\\User', 297),
(2, 'App\\User', 298),
(2, 'App\\User', 299),
(2, 'App\\User', 300),
(2, 'App\\User', 301),
(2, 'App\\User', 302),
(2, 'App\\User', 303),
(2, 'App\\User', 304),
(2, 'App\\User', 305),
(2, 'App\\User', 306),
(2, 'App\\User', 307),
(2, 'App\\User', 308),
(2, 'App\\User', 309),
(2, 'App\\User', 310),
(2, 'App\\User', 311),
(2, 'App\\User', 312),
(2, 'App\\User', 313),
(2, 'App\\User', 314),
(2, 'App\\User', 315),
(2, 'App\\User', 316),
(2, 'App\\User', 317),
(2, 'App\\User', 318),
(2, 'App\\User', 319),
(2, 'App\\User', 320),
(2, 'App\\User', 321),
(2, 'App\\User', 322),
(2, 'App\\User', 323),
(2, 'App\\User', 324),
(2, 'App\\User', 325),
(2, 'App\\User', 326),
(2, 'App\\User', 327),
(2, 'App\\User', 328),
(2, 'App\\User', 329),
(2, 'App\\User', 330),
(2, 'App\\User', 331),
(2, 'App\\User', 332),
(2, 'App\\User', 333),
(2, 'App\\User', 334),
(2, 'App\\User', 335),
(2, 'App\\User', 336),
(2, 'App\\User', 337),
(2, 'App\\User', 338),
(2, 'App\\User', 339),
(2, 'App\\User', 340),
(2, 'App\\User', 341),
(2, 'App\\User', 342),
(2, 'App\\User', 343),
(2, 'App\\User', 344),
(2, 'App\\User', 345),
(2, 'App\\User', 346),
(2, 'App\\User', 347),
(2, 'App\\User', 348),
(2, 'App\\User', 349),
(2, 'App\\User', 350),
(2, 'App\\User', 351),
(2, 'App\\User', 352),
(2, 'App\\User', 353),
(2, 'App\\User', 354),
(2, 'App\\User', 355),
(2, 'App\\User', 356),
(2, 'App\\User', 357),
(2, 'App\\User', 358),
(2, 'App\\User', 359),
(2, 'App\\User', 360),
(2, 'App\\User', 361),
(2, 'App\\User', 362),
(2, 'App\\User', 363),
(2, 'App\\User', 364),
(2, 'App\\User', 365),
(2, 'App\\User', 366),
(2, 'App\\User', 367),
(2, 'App\\User', 368),
(2, 'App\\User', 369),
(2, 'App\\User', 370),
(2, 'App\\User', 371),
(2, 'App\\User', 372),
(2, 'App\\User', 373),
(2, 'App\\User', 374),
(2, 'App\\User', 375),
(2, 'App\\User', 376),
(2, 'App\\User', 377),
(2, 'App\\User', 378),
(2, 'App\\User', 379),
(2, 'App\\User', 380),
(2, 'App\\User', 381),
(2, 'App\\User', 382),
(2, 'App\\User', 383),
(2, 'App\\User', 384),
(2, 'App\\User', 385),
(2, 'App\\User', 386),
(2, 'App\\User', 387),
(2, 'App\\User', 388),
(2, 'App\\User', 389),
(2, 'App\\User', 390),
(2, 'App\\User', 391),
(2, 'App\\User', 392),
(2, 'App\\User', 393),
(2, 'App\\User', 394),
(2, 'App\\User', 395),
(2, 'App\\User', 396),
(2, 'App\\User', 397),
(2, 'App\\User', 398),
(2, 'App\\User', 399),
(2, 'App\\User', 400),
(2, 'App\\User', 401),
(2, 'App\\User', 402),
(2, 'App\\User', 403),
(2, 'App\\User', 404),
(2, 'App\\User', 405),
(2, 'App\\User', 406),
(2, 'App\\User', 407),
(2, 'App\\User', 408),
(2, 'App\\User', 409),
(2, 'App\\User', 410),
(2, 'App\\User', 411),
(2, 'App\\User', 412),
(2, 'App\\User', 413),
(2, 'App\\User', 414),
(2, 'App\\User', 415),
(2, 'App\\User', 416),
(2, 'App\\User', 417),
(2, 'App\\User', 418),
(2, 'App\\User', 419),
(2, 'App\\User', 420),
(2, 'App\\User', 421),
(2, 'App\\User', 422),
(2, 'App\\User', 423),
(2, 'App\\User', 424),
(2, 'App\\User', 425),
(2, 'App\\User', 426),
(2, 'App\\User', 427),
(2, 'App\\User', 428),
(2, 'App\\User', 429),
(2, 'App\\User', 430),
(2, 'App\\User', 431),
(2, 'App\\User', 432),
(2, 'App\\User', 433),
(2, 'App\\User', 434),
(2, 'App\\User', 435),
(2, 'App\\User', 436),
(2, 'App\\User', 437),
(2, 'App\\User', 438),
(2, 'App\\User', 439),
(2, 'App\\User', 440),
(2, 'App\\User', 441),
(2, 'App\\User', 442),
(2, 'App\\User', 443),
(2, 'App\\User', 444),
(2, 'App\\User', 445),
(2, 'App\\User', 446),
(2, 'App\\User', 447),
(2, 'App\\User', 448),
(2, 'App\\User', 449),
(2, 'App\\User', 450),
(2, 'App\\User', 451),
(2, 'App\\User', 452),
(2, 'App\\User', 453),
(2, 'App\\User', 454),
(2, 'App\\User', 455),
(2, 'App\\User', 456),
(2, 'App\\User', 457),
(2, 'App\\User', 458),
(2, 'App\\User', 459),
(2, 'App\\User', 460),
(2, 'App\\User', 461),
(2, 'App\\User', 462),
(2, 'App\\User', 463),
(2, 'App\\User', 464),
(2, 'App\\User', 465),
(2, 'App\\User', 466),
(2, 'App\\User', 467),
(2, 'App\\User', 468),
(2, 'App\\User', 469),
(2, 'App\\User', 470),
(2, 'App\\User', 471),
(2, 'App\\User', 472),
(2, 'App\\User', 473),
(2, 'App\\User', 474),
(2, 'App\\User', 475),
(2, 'App\\User', 476),
(2, 'App\\User', 477),
(2, 'App\\User', 478),
(2, 'App\\User', 479),
(2, 'App\\User', 480),
(2, 'App\\User', 481),
(2, 'App\\User', 482),
(2, 'App\\User', 483),
(2, 'App\\User', 484),
(2, 'App\\User', 485),
(2, 'App\\User', 486),
(2, 'App\\User', 487),
(2, 'App\\User', 488),
(2, 'App\\User', 489),
(2, 'App\\User', 490),
(2, 'App\\User', 491),
(2, 'App\\User', 492),
(2, 'App\\User', 493),
(2, 'App\\User', 494),
(2, 'App\\User', 495),
(2, 'App\\User', 496),
(2, 'App\\User', 497),
(2, 'App\\User', 498),
(2, 'App\\User', 499),
(2, 'App\\User', 500),
(2, 'App\\User', 501),
(2, 'App\\User', 502),
(2, 'App\\User', 503),
(2, 'App\\User', 504),
(2, 'App\\User', 505),
(2, 'App\\User', 506),
(2, 'App\\User', 507),
(2, 'App\\User', 508),
(2, 'App\\User', 509),
(2, 'App\\User', 510),
(2, 'App\\User', 511),
(2, 'App\\User', 512),
(2, 'App\\User', 513),
(2, 'App\\User', 514),
(2, 'App\\User', 515),
(2, 'App\\User', 516),
(2, 'App\\User', 517),
(2, 'App\\User', 518),
(2, 'App\\User', 519),
(2, 'App\\User', 520),
(2, 'App\\User', 521),
(2, 'App\\User', 522),
(2, 'App\\User', 523),
(2, 'App\\User', 524),
(2, 'App\\User', 525),
(2, 'App\\User', 526),
(2, 'App\\User', 527),
(2, 'App\\User', 528),
(2, 'App\\User', 529),
(2, 'App\\User', 530),
(2, 'App\\User', 531),
(2, 'App\\User', 532),
(2, 'App\\User', 533),
(2, 'App\\User', 534),
(2, 'App\\User', 535),
(2, 'App\\User', 536),
(2, 'App\\User', 537),
(2, 'App\\User', 538),
(2, 'App\\User', 539),
(2, 'App\\User', 540),
(2, 'App\\User', 541),
(2, 'App\\User', 542),
(2, 'App\\User', 543),
(2, 'App\\User', 544),
(2, 'App\\User', 545),
(3, 'App\\User', 2),
(3, 'App\\User', 3),
(3, 'App\\User', 4),
(3, 'App\\User', 5),
(3, 'App\\User', 6),
(3, 'App\\User', 7),
(3, 'App\\User', 8),
(3, 'App\\User', 9),
(4, 'App\\User', 2),
(5, 'App\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'kelola_mahasiswa', 'web', '2018-06-07 17:07:10', '2018-06-07 17:07:10'),
(2, 'kelola_instansi', 'web', '2018-06-07 17:31:19', '2018-06-07 17:31:19'),
(3, 'kelola_dosen', 'web', '2018-06-08 20:16:12', '2018-06-08 20:16:12'),
(4, 'kegiatan_harian', 'web', '2018-06-25 17:14:34', '2018-06-25 17:14:34'),
(5, 'isi_proposal', 'web', '2018-07-01 19:45:10', '2018-07-01 19:45:10'),
(6, 'acc_proposal', 'web', '2018-08-01 22:11:52', '2018-08-01 22:11:52'),
(7, 'proposal_mahasiswa', 'web', NULL, NULL),
(8, 'set_dosbing', 'web', NULL, NULL),
(9, 'batalkan_kp', 'web', NULL, NULL),
(10, 'konfirmasi_kp', 'web', NULL, NULL),
(11, 'konfirmasi_nilai', 'web', NULL, NULL),
(12, 'input_nilai', 'web', NULL, NULL),
(13, 'balas_catatan', 'web', NULL, NULL),
(14, 'acc_berkas_kp', 'web', NULL, NULL),
(15, 'ubah_status_proposal', 'web', NULL, NULL),
(16, 'acc_nilai', 'web', NULL, NULL),
(17, 'surat_permohonan', 'web', NULL, NULL),
(18, 'surat_tugas', 'web', NULL, NULL),
(19, 'proposal_mhs', 'web', NULL, NULL),
(20, 'status_kp', 'web', NULL, NULL),
(21, 'berkas_kp', 'web', NULL, NULL),
(22, 'laporan_kp', 'web', NULL, NULL),
(23, 'lihat_kegiatan_harian', 'web', NULL, NULL),
(24, 'lihat_nilai', 'web', NULL, NULL),
(25, 'cetak_harian', 'web', NULL, NULL),
(26, 'edit_harian', 'web', NULL, NULL),
(27, 'acc_seminar', 'web', NULL, NULL),
(28, 'berkas_seminar', 'web', NULL, NULL),
(29, 'surat_balasan', 'web', NULL, NULL),
(30, 'sidebar_mhs', 'web', NULL, NULL),
(31, 'status_kp_bimbingan', 'web', NULL, NULL),
(32, 'sidebar_mhs_bimbingan', 'web', NULL, NULL),
(33, 'daftar_nilai_bimbingan', 'web', NULL, NULL),
(34, 'berkas_kp_bimbingan', 'web', NULL, NULL),
(35, 'laporan_kp_bimbingan', 'web', NULL, NULL),
(36, 'laporan_tahunan', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', NULL, NULL),
(2, 'mahasiswa', 'web', NULL, NULL),
(3, 'dosen', 'web', NULL, NULL),
(4, 'ka_prodi', 'web', NULL, NULL),
(5, 'sekjur', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 4),
(7, 1),
(7, 3),
(7, 4),
(8, 4),
(9, 4),
(12, 3),
(13, 3),
(14, 1),
(15, 4),
(16, 5),
(17, 1),
(18, 1),
(19, 1),
(19, 3),
(19, 4),
(20, 1),
(20, 3),
(20, 4),
(20, 5),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(22, 1),
(22, 3),
(22, 4),
(22, 5),
(23, 3),
(23, 4),
(24, 3),
(24, 4),
(24, 5),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(30, 4),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 1),
(36, 4);

-- --------------------------------------------------------

--
-- Table structure for table `status_kp`
--

CREATE TABLE `status_kp` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_kp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_kp`
--

INSERT INTO `status_kp` (`id`, `status_kp`, `created_at`, `updated_at`) VALUES
(1, 'Diterima', NULL, NULL),
(2, 'Ditolak', NULL, NULL),
(3, 'Sedang kp', NULL, NULL),
(4, 'Selesai', NULL, NULL),
(5, 'Dibatalkan', NULL, NULL),
(6, 'Mulai Bimbingan', NULL, NULL),
(7, 'Sudah Seminar', NULL, NULL),
(8, 'Nilai belum Disetujui', NULL, NULL),
(9, 'Berkas KP tidak lengkap', NULL, NULL),
(10, 'Berkas Seminar Tidak Lengkap', NULL, NULL),
(11, 'Nilai Tidak Disetujui', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_proposal`
--

CREATE TABLE `status_proposal` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_proposal`
--

INSERT INTO `status_proposal` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Diajukan', NULL, NULL),
(2, 'Diterima', NULL, NULL),
(3, 'Ditolak', NULL, NULL),
(4, 'Revisi', NULL, NULL),
(5, 'sudah diperbaiki', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_login` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `type`, `status`, `avatar`, `first_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$7o.O6dI/wmfJ0Q5a8xRFa.aExdGRa/jTP/Df.DZ9fbf8L9E5L/MIW', 3, 1, 'avatars-5bb8e00750831.jpeg', 1, 'n0cUezRguDxjvcXFYbG1BQEe83FyzPOsYWGiKpgwD0zQsPzXavKy2fVUdmOP', '2018-06-05 01:37:06', '2018-11-12 03:07:47'),
(2, '198201182008121002', 'husnilk@fti.unand.ac.id', '$2y$10$7o.O6dI/wmfJ0Q5a8xRFa.aExdGRa/jTP/Df.DZ9fbf8L9E5L/MIW', 3, 1, NULL, 1, '1gOxxGFggOoyuTKqTWST3Y46pcOgpxkh7AED0DaKaxv0x5O2NudVTk3Tlak4', '2018-11-09 04:40:19', '2018-11-09 04:40:19'),
(3, '198307272008121003', 'hasdiputra@gmail.com', '$2y$10$7o.O6dI/wmfJ0Q5a8xRFa.aExdGRa/jTP/Df.DZ9fbf8L9E5L/MIW', 3, 1, NULL, 1, 's2jAMeYGpgmpjMnAPkOnC0rWdSktOu0H3glnhbnbzzV4S8GhsMs1Efm7ZA4s', '2018-11-09 05:32:43', '2018-11-09 05:32:43'),
(4, '198001102008121002', 'ijabee98@gmail.com', '$2y$10$7o.O6dI/wmfJ0Q5a8xRFa.aExdGRa/jTP/Df.DZ9fbf8L9E5L/MIW', 3, 1, NULL, 1, 'lmNSBUkvlKFubVZ3NuyIRpGOLNR0TndcVeyLuF5SaNtAiaJzOMrvDnYtG9jw', '2018-11-09 05:35:29', '2018-11-09 05:35:29'),
(5, '196404091995121001', 's_afnarius@yahoo.com', '$2y$10$iEV.RTrwU1kCyMr3kMMla.cBbP56jJMSdgRFe45tVf28vvyaKQLmW', 3, 1, NULL, 1, NULL, '2018-11-09 05:38:21', '2018-11-09 05:38:21'),
(6, '198103252008122003', 'mezasilvana@gmail.com', '$2y$10$7o.O6dI/wmfJ0Q5a8xRFa.aExdGRa/jTP/Df.DZ9fbf8L9E5L/MIW', 3, 1, NULL, 1, 'zPMbEZ8sPJR5hyKWFjEnaWyjLRHC9EO2M2HkHlwZxtKkjgywsfvH5ETKX5pP', '2018-11-09 05:41:41', '2018-11-09 05:41:41'),
(7, '198410062012121001', 'rickyakbar1984@gmail.com', '$2y$10$7o.O6dI/wmfJ0Q5a8xRFa.aExdGRa/jTP/Df.DZ9fbf8L9E5L/MIW', 3, 1, NULL, 1, 'zCCExpKVBexKfNCE6TCHI546tXmqlcZ4cwL4U1ZbGetLPRjj0yxVwyiznwFj', '2018-11-09 05:44:14', '2018-11-09 05:44:14'),
(8, '197503232012121001', 'hsuryamen@gmail.com', '$2y$10$njnkURormXhRhraCmpYoFeuxLuKIYJf/IzXPQIV/aVV4HkDUUJJ9e', 3, 1, NULL, 1, NULL, '2018-11-09 05:46:19', '2018-11-09 05:46:19'),
(9, '198105052014041001', 'wahyudi@fti.unand.ac.id', '$2y$10$pnJKWKFxYixJvOgN4gYx0.CMzuO3v2qQfHPTu9E66U4qhm5jbk6ES', 3, 1, NULL, 1, NULL, '2018-11-09 05:49:49', '2018-11-09 05:49:49'),
(10, '1010961001', 'khairualman@yahoo.com', '$2y$10$in9kdvGFJAil1YK6kjpETOULkAiA6rF8TOB2royhhgKMs./f.0Hk.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:23'),
(11, '1010961002', '', '$2y$10$6mhUqLAkXQNyy6IWVC77tO13nX4vZGKUms64unjora2eE2MlfnOdC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:23'),
(12, '1010961003', '', '$2y$10$HX2qafnxX4/EP6dtTOx1G.nu8NnnyGdkjCTiYfZN6OfG3JvtfVjfS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:23'),
(13, '1010961004', '', '$2y$10$XcVUGtxIuqbZzYJxMo8cx.vvNuUY68CPXBVC97SaFKVRvOLHhAkAW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:23'),
(14, '1010961005', '', '$2y$10$zAr/q4aw/UdTkqcarqVequUT6A6QDXOaVooLy/6Qd5cP09nvQVnde', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:23'),
(15, '1010961006', '', '$2y$10$KmTOk3RNna0goDFjMfBT.uYr5AnhZ0CK7xbgjgeDc99nZ8mhxKNjm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:23'),
(16, '1010961007', '', '$2y$10$jyXMQDwpgcIv.8x2rGF.ouYMWVqMtNtGGTs4hJyV/PhwiGLcW8OKO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:23'),
(17, '1010961008', '', '$2y$10$8zXIUDs4kIPvztjojLNnLuP9CmON.jkiDNoE.EWeCFeIbAnWm4Ml2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:24'),
(18, '1010961009', 'yutiaputra@gmail.com', '$2y$10$PEZkte6AAB43ax4oXKCAg.cNfmGqN93lPuwUa0rS/eBxHGxKblOFC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:24'),
(19, '1010961010', '', '$2y$10$mMXOWO9RotLI9NqFMtk7S..sBQ6zg8QkitI6Sa0/sS1vNxJqd/FbS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:24'),
(20, '1010961011', '', '$2y$10$9LWM/Wb0DeihFvfvr4BwVO06QKjqtRfuNN2myHr/ikW68Q9Ju5ntO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:24'),
(21, '1010961012', '', '$2y$10$Ln8QVB0e.efnVn.h6LZlKOL6ryrEp8RAoBqEoC.VZvTn8glqjlyyu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:24'),
(22, '1010961013', '', '$2y$10$uzm7YHo3fjM9cD5alUzXvu6hyHbIPkzzXQQqjQvjyEE9TXlV4aoom', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:24'),
(23, '1010961014', '', '$2y$10$aWiQnlHd/16whmVO.3fdEursnJ3gmVYIq/bjlNPyRFWWoXq2yeA2K', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:24'),
(24, '1010961015', '', '$2y$10$Ks2zhCkGPzjiJkWTQvu2DujwrSsWxr0GftZhlgBR1gHjQFppnAjPa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:24'),
(25, '1010961016', '', '$2y$10$YBgXUzMu0IIZWZhq.avvZekeYD2Ms12mqK5YJBGxYBIZR0eILLoWK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:25'),
(26, '1010961017', '', '$2y$10$9ujDXbcJuIG3WYUAqUnFkeLAk9fk37m23oG/Ie.NPbUuDxvLHDhJG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:25'),
(27, '1010962001', '', '$2y$10$WSjT.WM/0d7EZv5k9aKcP.tAZqktSM8vBgmntC78X5krgEtAWziIK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:25'),
(28, '1010962002', '', '$2y$10$SSeisi4M3UB2cD5LQszlL.IOoViiw.cySGdsACTNdr2w5TsL2vzFG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:25'),
(29, '1010962003', '', '$2y$10$40U6y4k8Zxsy8NepnW.jPOxNJ/5TI95ykpEKlaR5UnABCvNQGMfBa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:25'),
(30, '1010962004', 'edroagustaa@gmail.com', '$2y$10$o6dlNZikBCQiqDMBGSgLCOmSXBy8l6ECFxwhCJWj/BvBt9K0HKGlW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:25'),
(31, '1010962005', '', '$2y$10$2rGetoCcZYPp9KIlV3iTU.cKJTntd3PSpwjHbskjrm7xcQxwvnGo6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:25'),
(32, '1010962006', 'vennyyosilia@gmail.com', '$2y$10$ry7P2DyIfdsczeI/AIyakew.RNFhKmdW8YwcFkVkoCsAzYqsHABvO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:25'),
(33, '1010962007', '', '$2y$10$NSYlW7GNBnS1UwzHnrdV1uQl.Pwws3aEUsm2tDek9wfMJ9vGeMuX2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:26'),
(34, '1010962008', '', '$2y$10$zWYWoS4if6QtdEa2HUhlJeNAazWywApCUAtrkoup2gSHjl2TI7uwG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:26'),
(35, '1010962009', '', '$2y$10$Eyf7pf/V2R.JRawi3TnqUOP.4sg0tTbVt7mVE4aOIpjhgTPxhcgfW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:26'),
(36, '1010962010', 'andre.sarizal.putra@gmail.com', '$2y$10$Tm7Y399OpiRuV3oY.S.y4.9mh1FaHPS8J3XteAFDvSprPZ/mZulmK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:26'),
(37, '1010962011', 'nova.yeni2@gmail.com', '$2y$10$lVrASvpFVUxIGshUV7rxbO8cGnrJp2k6JiCV3G7ZiqZLKJ25szMAC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:26'),
(38, '1010962012', 'mad.fajri13@gmail.com', '$2y$10$hy9RyBs6PZUMEiCfMq9C7Olz0KhflndOM0Bp93vltMZdvdCEJezmy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:26'),
(39, '1010962013', '', '$2y$10$eNBhOzUWFDOqMeMRBK/i7OQjDgpDuNlWpkSg/lXXf81eFtAC5k5lG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:26'),
(40, '1010962014', '', '$2y$10$9YOA3HHZgseCbitNpbG.ZuOa7p2LJesIxxN3.wPMqXp31cwP0AEnC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:26'),
(41, '1010962015', '', '$2y$10$HfqcW4b1e5Zluxe43DNUGePM3nshIeRzHW.0cMx5GWQKY8vCW449G', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:26'),
(42, '1010962016', '', '$2y$10$bDDS7YRBlxF4CWWp7N02Aen9XXk/m9HaUksKLjQRDH.fudgkhsy6O', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:27'),
(43, '1010962017', '', '$2y$10$ZITytQoOuFcYsVBgIxX9GuWhVUVX58rY2SqkXKJ6i4/i9/abh7m/y', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:27'),
(44, '1010962018', '', '$2y$10$giBs8q.XgJb.vFj6EdLJ5u47vyyCVbAxnprQMNfP8iO8X5Fsc3G5G', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:27'),
(45, '1010962019', '', '$2y$10$NcGBU95/xRNd8nuMdyCSiOnnlwskkNyqTHQUsOu/ydcFLzQhuX/NW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:27'),
(46, '1010962020', '', '$2y$10$PqksY4Ktvsy50aP99WGU6.y.iY1HwkzHIdPB0L0zF48mfXvAXEkum', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:27'),
(47, '1010962021', '', '$2y$10$bCLXa6WOjHR6YC9iXvVgpeoZVqvzOZ5Fyl/T0U0meETDGu3clhfH.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:27'),
(48, '1010962022', '', '$2y$10$9/Q9oX1zouRkVaTbsdsC9eZvC15tyP2.Per.0wAN7QMwuEW18OR0K', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:27'),
(49, '1010962023', 'dhyhusna@gmail.com', '$2y$10$oqzMIaDP1W.xNwL4wmjpEe8HDwtVv3p8qR1ghPf6Flx3p8WXO64h2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:27'),
(50, '1010962024', '', '$2y$10$21qyysX7n9cl8UXs1Qb4JuCkQq1Zw9Pe5AUWZ/imv8IuqhdIPBK7K', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:28'),
(51, '1010962025', '', '$2y$10$aEyyH2N6.1Hp2q8E57qsR.bko93uDUg9rvGBR7sLL26625.l.jez.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:28'),
(52, '1010962026', '', '$2y$10$I/pp1c37CLd3v4WnqxtU8O80ViOnWlNImo2fHvyKf731E5if3Dql6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:28'),
(53, '1010962027', '', '$2y$10$WXXq1dZ93bU8.4CVD1rdd.A2RyCYAGdp3iR4XwUuLp7LhxUBm9LnK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:28'),
(54, '1010962028', 'bagus0302satria@gmail.com', '$2y$10$/I7v3hyFu1aqxAh0YH8DD.VwVoDrH0Iv.JWZjWLo26BM.j2p5GKgO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:28'),
(55, '1010962029', '', '$2y$10$Ps0JQj9z8kQDFKQQRArKgOVBPtz3h2HyIThDFB9BYNVQop1eZXEUW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:28'),
(56, '1010963001', '', '$2y$10$pw3NH5eHLta0NDO32cEOv.0j0uUvn5j9wgz8BJQ3WruOB7mDaBKVO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:28'),
(57, '1010963003', '', '$2y$10$3ITp9fEfVH/YbwM5rKZMa.4B3m5nq9d00db/4xZGYAXqbks4mpJaK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:28'),
(58, '1010963004', '', '$2y$10$mUhDB5akH8dbt6T4IyfkHuDmvG7YwXsj6VHz7TJbrHtypVWGLHS4C', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:29'),
(59, '1010963005', '', '$2y$10$xBUsmKDEhn75BZbyQIR4puaoNRH0vUduHQqzCcBIIgePjj.9Eb9IG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:29'),
(60, '1010963006', '', '$2y$10$eOHyeuZtRShDidyu.Fsduu1IdhWfj5zFMQb/PBS0CPyGAeblZtEzu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:29'),
(61, '1010963007', 'mulia.asyrawi@gmail.com', '$2y$10$ykOJ9laJxPHROZtci.lJYObiBeisCloR5u.q.d8nQLwHjXzLusEQm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:29'),
(62, '1010963008', '', '$2y$10$bix/BWEHD8iRxAC/vYZ6TOVzUQqAPQ6UIW8x7P2t9hjl0kAh/76c2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:29'),
(63, '1010963009', '', '$2y$10$.PGwdemXW31RUDQNxUst5eF5A0bZf8QjVc1obfS7Xe6fpelfYowpy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:29'),
(64, '1010963010', '', '$2y$10$UPyVhvGfn1WVBApsDtryPei3sEaQSUfkvNHeGDSjnjBVgYZ6G1K6K', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:29'),
(65, '1010963011', '', '$2y$10$XfaDIUJDBgTVKXpoAPoOA.GslIui6bmwo0dnFjccOh6jgtPJ3IOxi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:29'),
(66, '1010963012', '', '$2y$10$/jZEUtZeEQwpSvIb.2wlRuRAQ.oSOypwY9PQQ99ytdDH75DQY5BKG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:29'),
(67, '1010963013', '', '$2y$10$wp2YH0o0vNvNcIwj1NYx9OxmXnqUkIggy2fLJvcHYsFchwYSdocN.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:30'),
(68, '1010963014', '', '$2y$10$8zx1cHYyGMAEdwLHDWVYe.r/mVBCMfVqFszm/NPiIP3MqWQ7qiByG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:30'),
(69, '1010963015', 'muhammad.junaidi0692@gmail.com', '$2y$10$zGDunIfcC5nhD9YSJ.AcAuHpEZOQfY.MSQsoYX8jPnFpEEAwCMmiC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:30'),
(70, '1010963016', 'agungprastioo@gmail.com', '$2y$10$N1WjUy1tmYNne7UZgwX0OuoMqwik4oZjwUA9zKJX/ngrE/NhV6vpK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:30'),
(71, '1110961001', '', '$2y$10$5wBvkR21Ng8csMN3dDw28ugPrDdxaAs5p4T98uVG/gBGjBEtBuZHq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:30'),
(72, '1110961002', 'tharimenthari@gmail.com', '$2y$10$r2ka1ltYeDBashwAAsN1deuKXPJ5imZy2V51MnKow2iXRseu.hNEK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:30'),
(73, '1110961003', '', '$2y$10$hVixYVUy14fi3klPyjxgUeSffkWyMQBEJ2Ht9/lS/u0h642n5nBQG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:30'),
(74, '1110961004', '', '$2y$10$Noq4yWp7h2pyR17SiqknluzLQcncTv5YigNZGYFXoieTEyrzikv2y', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:30'),
(75, '1110961005', '', '$2y$10$VvRX5kGS0vJejih3xNPgiOJzpi44UjmXLrLueMpASGH9GOT.1/V/G', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:31'),
(76, '1110961006', '', '$2y$10$SsubyLG92K6Fp7fYBsRtGOFZC3vhwvwBqmNbpxY030Eytnfz.xCTu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:31'),
(77, '1110961007', '', '$2y$10$bJPM26rzUrxlC.WUzUj5t.S1Xs/pM3LhrjNCRrP6BrU9nahLcX23O', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:31'),
(78, '1110961008', '', '$2y$10$E5GfSsQgzDDbpfJSirjt8ufKiji1NYWbp1MGWpeE9rhR0SobYjLyO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:31'),
(79, '1110961009', 'metri_rahayu@yahoo.com', '$2y$10$qmOf8ymhct2AGzZ90wDukOJKV3j2iANdAoCQjthe8TAFBzHyC1Vry', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:31'),
(80, '1110961010', '', '$2y$10$7bcgCLCZc14xLswYUcXrouuHNvK8wY0d5NW1pX9oqtpLw7Np7qwhu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:31'),
(81, '1110961011', '', '$2y$10$/WLzn/2nUDEqciPhINhd.up8O4kgvb5beB/4cz1cQ5k5qePXKFR2q', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:31'),
(82, '1110961012', '', '$2y$10$aKyAYuW5ACttXmaBukmXqunY5CHlo2RCl2zOpw1sX8IMrfduUBO4q', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:31'),
(83, '1110961013', '', '$2y$10$5cdZFtV0vIRIaIhDpSYqCelCytmIkoQgjwoAR12fmBb7q5UFFonUq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:31'),
(84, '1110962001', '', '$2y$10$Y5siLSgP5RKVgw.DxSvAYOVZPO2Ce4f7P3ZZDtC16Ullmh.ZmK25i', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:32'),
(85, '1110962002', '', '$2y$10$WOmhEJYZS4.ulBtHYP/s2u4Sbtcp1wdpbjSgqWaBim5Pyc6uaVUC6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:32'),
(86, '1110962003', '', '$2y$10$V8YEymMLd/JeqZL2kYsyieti2qM2nw.vsNynaOvIG1ejqe748pfDG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:32'),
(87, '1110962004', '', '$2y$10$e0NUFSMDHrNp3qp.DlpocOaDrxLeVYPjVfd1RmePRDtMJwjCenyLi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:32'),
(88, '1110962005', 'yogiedp@gmail.com', '$2y$10$d1RFj7gEvpn3Po7cGgyGAuz2F9wFSedL7sGKroioe0rqt//l0oBpW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:32'),
(89, '1110962006', '', '$2y$10$GbEfsR4xshOfcRoWqLnngOakCmCVqM4PwlG9ncSjTjqKIb9PG5o4G', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:32'),
(90, '1110962007', '', '$2y$10$/.bESXxRPmBwsKqWCAgRauupS6EPS6qBCSugQ5/qETUTQOGqWR.SS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:32'),
(91, '1110962008', '', '$2y$10$w3G7OVGw0SMyFUEK4P3w9.GdwZqtHQxKBVtL87YQOkfIgVi5YYWra', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:32'),
(92, '1110962009', 'ahmadsisfo1@gmail.com', '$2y$10$S8o6rJdhDBhkqQ1k7cQ.7.6dyUKI2wutYfdZDroKoEkNhR5romiXe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:33'),
(93, '1110962010', '', '$2y$10$hfINtePvnKYsC6BLvkX8RubZ4tTT.7P7mJtGXwusibBtVIvAsCdz6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:33'),
(94, '1110962011', 'sriimelvii@gmail.com', '$2y$10$ol8aBH1kaUaGVypv8jHG6OljlDGzaylH8Ca8E4yqyUKJ6kr1lLL/.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:33'),
(95, '1110962012', '', '$2y$10$p9Gh4ve6MjyU1SZFfPoiH.Xdwzn5iFVhdXeVcO8j4yZFEmkbWZ0l2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:33'),
(96, '1110962013', '', '$2y$10$DkAcUAqY0h6QxZ7Q0MnhaOw3ntK8J7o37VmQNKl6lhKvpwJ0N5FUO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:33'),
(97, '1110962014', '', '$2y$10$MYvMdCV03S2vK5.S8RGW5ez2gXpoxZCEJZ7y3xW1dBvtiTcpC5.S6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:33'),
(98, '1110962015', '', '$2y$10$7DqkGrs0J8QDLfQ.s4O6W.nlU9Dhzq.k93FEvmHPs4peHTnS44Xg6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:33'),
(99, '1110962016', '', '$2y$10$gUmuvmd3PIqBiDKKgrfyPuKdEaN/5VmEIdXujtFhJX2QrbrZpdlrO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:33'),
(100, '1110962017', '', '$2y$10$8rdIxjnEU4NdNjwVSs.Gj.h0Kg9LziL8FKX2wztu/iKguLEcO4rl2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:34'),
(101, '1110962018', '', '$2y$10$s0ZKizYwHT/AWGKRJwDhbebNC9Mw12Lx9rPuw8dtSqvEle0yu5PVq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:34'),
(102, '1110962019', 'chalifaliashshiddieqy@gmail.com', '$2y$10$vFzTG6CIIoZe7iFXCSikGOVnHt6nQ8N6OCXhMLlxzuQUUXCNmuiWO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:34'),
(103, '1110962020', '', '$2y$10$dP4fHH8xgQvv5SoU9ez5ouSZN8woPJVUkmyXysEoFb9A61BsCJiqK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:34'),
(104, '1110962021', 'hidjrie@gmail.com', '$2y$10$5EbaMCnJ1MuChDk.sIrPEeXSUF5sSnnwJ09N0wVRXtK.8H2dfPx7C', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:34'),
(105, '1110962022', '', '$2y$10$ESCUo6k4D5ibgB2CId55I.Kwm.y3J1XBMNtrt.wQArMHLegV.4JLi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:34'),
(106, '1110962023', 'matiusnugroho@gmail.com', '$2y$10$eET4v371r1fx5Jx2hNWUzOV2Qvaat1/y1KctmTd/pAur2hoXzw6N.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:34'),
(107, '1110962024', '', '$2y$10$RSb8.SZjFL/AJLqwhrpuCOIQ57k.Hbpro6dTYMYOn2xC1ORgwFrjm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:34'),
(108, '1110962025', '', '$2y$10$X9Kvq0jCPAOymHobYiXa3OEBk9P6UjNPLueDY3hk76pZYIShP74gW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:35'),
(109, '1110962026', '', '$2y$10$6l2Msu1/xBYijsrSCxugWu3Z0OYYfdEiRJQUWMH8zJKYHMxdFTYke', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:35'),
(110, '1110962027', '', '$2y$10$2iZp4VUB99hQjX/BRFvbhuU7JUuzJe1D0iXOiIfjI1n4d2Y/78khe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:35'),
(111, '1110962028', '', '$2y$10$9M79/qFOVL1LQTvu2Wj8ruIC7fmp11OtDue8kEV5WavPhT5Jm/.S2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:35'),
(112, '1110962029', '', '$2y$10$6X0yMf32QCcfXM5C6K//zOQEVrRHzjKQqkCOT8Jx07u6r/oMdkodq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:35'),
(113, '1110962030', '', '$2y$10$.pmM2P6fPdZ6KWwPMb21wejVEhIdTA1XzXKgIRkX1/eY0VaIDAgf6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:35'),
(114, '1110962031', '', '$2y$10$OJk2kSvz8N1fe2XwYk1SlOHr38Jguu9uN07v0tl.lsQMmohtIT5fq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:35'),
(115, '1110962032', '', '$2y$10$tvGBPphNvZGBdE2Gq3aeoe/u00VCFcfS8YDWUcmXv7Pm2Fiit2DSe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:35'),
(116, '1110962033', 'primaanake@gmail.com', '$2y$10$PR27dRD7HApQhpitQSo9wuu4vZvb.iRWEKSbhOqZO5uSUbjkUkuKW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:36'),
(117, '1110962034', 'ofitra_majesty@yahoo.com', '$2y$10$FsClVFMUeA6pxMLyHAED3u6KEvEOWgUTBxXc9A1DvE.IuMj0/rq.i', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:36'),
(118, '1110962035', '', '$2y$10$PY8zZlK8d46l0GqX5FCSDeBHz8qxRTse2W6oo/4I874yDd5EsmUV2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:36'),
(119, '1110963001', '', '$2y$10$j6fJHr/BcwEnzG2jaa4.zuTYuDJiaaS6x6fT1Ah17YpRngaP8diHy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:36'),
(120, '1110963002', 'ishaqfakhrozi@gmail.com', '$2y$10$gGc4XmB9Z.pxKfliQbxGbeJztfyM0lhEr1EbwOEF/BMga2FO3n8GW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:36'),
(121, '1110963003', '', '$2y$10$2TwmwPum51cgXD/9vo99nug/T5uxU7txYLaifgjEWArlp80U9mtby', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:36'),
(122, '1110963004', '', '$2y$10$QQjWomehMHB44AlI5mWcCul0EFp8nVc6XarjE0f6J89djUeO0jtMy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:36'),
(123, '1110963005', 'ravkyrd@gmail.com', '$2y$10$y9Q7u2sUuCmJpUtYVD.KVuJ1yOpV/yUeR7qT9JkHnQ5IpIsT8TSB.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:36'),
(124, '1110963006', 'fandya46@gmail.com', '$2y$10$6yILCJcmOY4B2fg/ZRKRWue1wNMZ0uhIdznG.N5nYrbICnXM9MN5S', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:36'),
(125, '1110963007', 'niko.t.rahman@gmail.com', '$2y$10$lobzdeIwk5HNvOTy9D8nDeRH5jNQ6aTBTKyieT0CdVM7mILbobtCq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:37'),
(126, '1110963008', '', '$2y$10$Et0KJLsT.41mRG5VedY3petNiwY/WWLnmyeYya32GKlREYWwGCK6S', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:37'),
(127, '1110963009', '', '$2y$10$TjODK4M62Qq4XeURHZKt.u2wvnQKTdvF9OEXSJFF8p48wETZyOSNC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:37'),
(128, '1110963010', '', '$2y$10$E2t2dnZlJax8NVKhyux7S.O3ykExJDVGkedkNcvj1hyZjuFGg3nLm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:37'),
(129, '1110963012', '', '$2y$10$j4xyfT.um.lLQzWMEBFtzecIK3.WXpTgPaB.QjWzWsvNOYdsIsNgi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:37'),
(130, '1110963013', '', '$2y$10$Iddn9Ia/ApKMEbwDZFFA6uqzFcinowTIqG20iu0pSwalFYOcQevv2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:37'),
(131, '1110963014', '', '$2y$10$lGTLSe8hN0dl0IRbCx.tw.tM0jQ8usp6g989WwD3FqzSwFWDFXGY2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:37'),
(132, '1110963015', '', '$2y$10$VFB9Yw8hAp1S4Pb194XNkOMukF7PFNV5nId0iwu5g.Z/T5GNGvrcK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:37'),
(133, '1110963016', '', '$2y$10$10OhHjST10kUbcHSFgucyOCrx5rDCFAbfPNrY6uSN1xK16YNyqG8.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:38'),
(134, '1110963017', '', '$2y$10$RIbMSxWB0WjTwH1O2l1Cxuc/DbQFVVeBM7W3Oc3Vt/SiK9g6fA27u', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:38'),
(135, '1110963018', 'hendrik.pratama1@gmail.com', '$2y$10$w09RHtNz/FEkpI.zKZXaD.eq08T5wsQuwTYl6K9m8bk9szlguCbIG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:38'),
(136, '1110963019', '', '$2y$10$RAsoEmQMziEQY9nf4b/hauWXhLFL.pw56CeEgC/UCyegX.m6/YNNO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:38'),
(137, '1110963020', 'ravi.azhari@ymail.com', '$2y$10$ncTM5yGwlf4.qhG.4Z.xx.y9FhOYCEIzzbMVcknx0Jdw6KWfzKOhC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:38'),
(138, '1110964001', 'davidonesime@yahoo.fr', '$2y$10$Uzdzw1vm0xpe/20FUU3XAOmpsqq3M15kndPXacLSFLv42O61e3SIa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:38'),
(139, '1210961001', 'audiahduhani@yahoo.co.id', '$2y$10$NXjkUi4ClVIpnD9kWAwt/.wa7.yQdGICreH3gzFLgFSriG5sdOj42', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:38'),
(140, '1210961002', 'rafiqros94@gmail.com', '$2y$10$mf10z.vN3B8uzng9f9ffz.UQdrxxP5dNMAfXwOLHin1zJvDsP/3Ce', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:38'),
(141, '1210961003', '', '$2y$10$khFMZ8cUwgJ5l2ivblHCFOcbfCNATpycWidGlqfxzIx/XEoZQ0ISO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:38'),
(142, '1210961004', '', '$2y$10$Iv59zjXh4PQlg6YQgxUGGOfK/ksj.INONyIB98PZ9fW1abn5zJpT6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:39'),
(143, '1210961005', 'israwilna@gmail.com', '$2y$10$4fZo41EXGFMaVuM.2wn7Ferr4G1EXfZ.oZQGI9Q0AMyrqK.8F2kfC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:39'),
(144, '1210961006', 'asiskajenisi@gmail.com', '$2y$10$kG6WMdRNeYCxiWkKu5aTfOnu1HK.Kq23RIdkK1P0iOjG6K/qK/NTy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:39'),
(145, '1210961007', 'rullirhamananda@gmail.com', '$2y$10$If0javZXa3z5tWhNfogZLeHRY1bvmtK6FMINEh5qRtSyMmQ6djweG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:39'),
(146, '1210962001', 'modilomura@gmail.com', '$2y$10$4iG1STGylmx8tFbqdyafku6ghvNW4a9pLdgKfYENX1AiNNq76SIoW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:39'),
(147, '1210962002', '', '$2y$10$fdoH9Je2qbCqfIk5c/TBh.hQjbelrDD5ug5.jdFuccgiW2XYpuwUC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:39'),
(148, '1210962003', 'wandasyaputra03@gmail.com', '$2y$10$9N2L/Z/UFDdYouYTaKpY3unf7LcOzzgnR/3evqr1QMsVUC5.d1G26', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:39'),
(149, '1210962004', 'aris.exe48@gmail.com', '$2y$10$1i5MXA8.ex3yKiC6.aUYqOrq9Rjwx4Phhq8t79XCJkk6BHE/9G3D6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:39'),
(150, '1210962005', '', '$2y$10$61i3KYNsFbZGeM3E363a0.UyGo92k5YVM0nMLSaQWR5pqMdmIfeLC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:40'),
(151, '1210962006', 'mayasopie275@ymail.com', '$2y$10$RWgvm9qAj9KQiwFQfZYrputzGcK9iW01obvKkcEmxW3PD27pfgAh2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:40'),
(152, '1210962007', 'vella.vella17@gmail.com', '$2y$10$B5WiZgTe6g4G0wzhxFKTBOnor0tPeugA1Yi6UAjoNSpIWkIZsRssC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:40'),
(153, '1210962008', 'adehijrianti@yahoo.co.id', '$2y$10$x4mNZp88HBKraeOg/D6k4.ttDV04la8zIhp54cUjqh0TxhI7u2IAu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:40'),
(154, '1210962009', 'ryan93sp@gmail.com', '$2y$10$S1UF04Q6XVWXdLcGWsetlusUwB55vPm/JEG.96qbyeVCqfIxgfoi2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:40'),
(155, '1210962010', '', '$2y$10$6hjxAMLgMj2hyKA4.AtN7eUI7dEBTrqBfpdR326/ON0nm9HKKJMbq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:40'),
(156, '1210962011', 'rabilfikri33@gmail.com', '$2y$10$QMjRFOJI2bRU1Tsv4b79pOK3OGh75mUKbx2nj1oTOhfaz88m6BIrC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:40'),
(157, '1210962012', 'aisyatullathifah@gmail.com', '$2y$10$HwtBLb5GFr01mtu2mQiS6.U177ju0rPElPV4RJjqW4lTxWNyvTf0y', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:40'),
(158, '1210962013', 'fajririzkiramadhan@gmail.com', '$2y$10$3pRQCDSAOjp0JwKURW5e9OcdOwRCFsgYXGQOlG3/mF94G4HzLOiY6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:40'),
(159, '1210962014', 'meitridelfiza@gmail.com', '$2y$10$ibRuIdFLeyMBKxWQ2fXec.rrrwyXQ/g1hREPBxV6Up1pBkT0immcS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:41'),
(160, '1210962015', 'wf.hafidz@gmail.com', '$2y$10$U4PR8aQrV.MpZXMX.z/nLOhG0mV5TGFx60O0SR5TpWv63Zp7CUFaq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:41'),
(161, '1210962016', '', '$2y$10$8BHmMKhl0wZW80zejOyMRe3nyNDi3xQpxlmvRSi0OES4X8DC4XtDC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:41'),
(162, '1210962017', 'indri.widian@gmail.com', '$2y$10$oVAKY1HxduDB6iQbRe0ptOZlQ7/rYVVJG/jWvNZSCyZtrrJvzZh9a', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:41'),
(163, '1210962018', '', '$2y$10$DoJWEbAm5axAf1zRa7NeY.J7Cjmjh3hh07XtytiyIm1B1/FyjWNCu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:41'),
(164, '1210962019', 'yerihidayat@gmail.com', '$2y$10$KMWwuwgxZ8fxXmcMg0ChteJVTVlijECiszEwM1UZvXrsLpl0Joxv2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:41'),
(165, '1210962020', '', '$2y$10$z6PtV2vVZyZbH6GMTQhM1ODL5nUyU7LefTsIVXc8dZuA0YhXM/hcC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:41'),
(166, '1210962021', '', '$2y$10$96SXWXeGzPPTX8qzTPMNYe4GiLOuMa9GNz50tdg3QlRGTSu5du0te', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:42'),
(167, '1210962022', 'dinihryt@gmail.com', '$2y$10$G9AyWiKYf1KEyjxGZrgCUeWlSS7qMG.NGv2CBkVGEp3Uxw1qQAfpC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:42'),
(168, '1210962023', 'parfisepriandra@yahoo.com', '$2y$10$2DgbEelvewdQfiuokC4RHushOYaGA9nR/iKYg81jODzOINvTUn.ba', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:42'),
(169, '1210962024', 'ivoniranch@gmail.com', '$2y$10$zbkfM3xXfo.RUyc70BOp2O3rccjgXDNyLiqP34wBXJCOSA3fy8gSm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:42'),
(170, '1210962025', 'dayat.hidayat.rivai@gmail.com', '$2y$10$./1qMgFvlU6adOJ0fg330usSW4YoOkfnvEapmBs.m5fGqn2wK2nFK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:42'),
(171, '1210962026', 'lisa.monalisa24@gmail.com', '$2y$10$KrZ3YFFnsYKnFm51DK/SEOpO1iruVIWFEfpEZdjHKCjETI91F383S', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:42'),
(172, '1210962027', 'riva.hazmul@gmail.com', '$2y$10$zfX8l/2AWpIQcgMwgJV3uOdp2hIN5/zYhe.LecA/Px5OKrHc/82ja', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:42'),
(173, '1210962028', '', '$2y$10$YE70.Lc4k40QMi6KsnvfHeec3nx6T.BKhkxkbwgUHzSJmoxclaoY2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:42'),
(174, '1210963001', 'fajry_boy@yahoo.com', '$2y$10$dGsHoa2KjWLJfKeOux5B5e9/JGCsisR4VRfvJGq07I/GcA/Het/ni', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:42'),
(175, '1210963002', 'ulfafithriyyah@gmail.com', '$2y$10$5kBqU9MLum8nvIviT0zG.OAQIQAfL2naEDxAk15IUg2s2p4Al9PKW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:43'),
(176, '1210963003', 'trysno.3003@gmail.com', '$2y$10$Vk0DVdm3fZRX33V1ue.VYOg54aK/ZHVcwHIZ09dehneXGOBQDkd1G', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:43'),
(177, '1210963004', '', '$2y$10$z8GIhWFlvh4igJPcDNT58uRWqosGdR8YaghW5rsCEd1s17CPesTw2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:43'),
(178, '1210963005', 'marliza.sy@gmail.com', '$2y$10$In05Qx0Mf0GCVXJOGuzIve3lJukxAmCuqZWX1zULyqNnA9vinOyk.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:43'),
(179, '1210963006', '', '$2y$10$lMVtp7pyPRli1wR65ycHC.XyKNqiy8qXIjEnfWHdnfN/97EtU0696', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:43'),
(180, '1210963007', 'vionivarisa@gmail.com', '$2y$10$rsVcuvTkRbxEH7mvojUt8uC5NOgM.9o7WJflEiQladgjHJG8Qh7vK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:43'),
(181, '1210963008', 'doaiyan@gmail.com', '$2y$10$r14vPzj3UrF3liZgISOINuAPJQcTookgJS/Y0EwdRTpBCSgrscqnC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:43'),
(182, '1210963009', 'ikramiauliyaa@gmail.com', '$2y$10$3Ua29OOVAzA8y8CArwl5tekrht5RP7XmK/n7igYG9SxYj8kEinErK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:43'),
(183, '1210963010', 'septian9999@gmail.com', '$2y$10$YybNsCYZCE8rMEK6u20D2.S3VaE884oTUHsMXaqfGE62arGb4xMaK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:44'),
(184, '1210963011', 'fifekawahid@gmail.com', '$2y$10$j/p27bVscW2Os1WmZ0HhheHRZMZtmQkRKIWfnMY4JdaUA/YCcazR6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:44'),
(185, '1210963012', '23fajri@gmail.com', '$2y$10$Yyz58jLc1jr3HLyjEJpxa.AmGV1dqwiOqQVdtWY7NkjY/DN9FBFJ2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:44'),
(186, '1210963013', '', '$2y$10$K/6eqG4xFTSz4daWfm2WzORHoSmgFCepAN47cg0HXZFver3EDZYCS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:44'),
(187, '1210963014', 'yossiprimaa@gmail.com', '$2y$10$ODNm5yOOBNRouezcQW/wkO8OReQF0MgSxAXaj3HlOLWGpOd/Gp5R2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:44'),
(188, '1311521001', 'khairiyatinnuzha@gmail.com', '$2y$10$NTb161KgHSubfd6RM6IbGeNDWdfoYDfH91NNDDJWECOP9FIaBcqfK', 2, 1, '', 1, '17lkxP7ocReU2YAzqOp4C4HBTgj6TZV2k4gOu4xzDPMFTemlkUKOhjlwu7kh', NULL, '2018-11-10 22:37:44'),
(189, '1311521002', 'habibihsb94@gmail.com', '$2y$10$wttzB02gsooUnXG8EQXMzOm1tm6qbgT.yma75067aHvsZqrUIz.6a', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:44'),
(190, '1311521003', 'nadokeren808@gmail.com', '$2y$10$invLUbRSYjqyeGcDr/XLXOKta6uGjjeldhd6H4hFXTh5/jN024Gdy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:44'),
(191, '1311521004', 'suciramadhanip16@gmail.com', '$2y$10$KybS2sjpffc0yVnDveqmf.gLTnMh4K5vmSZ8W4cZT7MZKJQDrNDe6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:45'),
(192, '1311521005', 'intansuri66@yahoo.com', '$2y$10$FGf/.I3VpRNrpH3644PRt.dFISq8arRFeTTXd7d2TZwr0guCbFCUe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:45'),
(193, '1311521006', 'fwzakiy@gmail.com', '$2y$10$hwLY8RSC4Y8Eps6ZzFjgUeMqlXu2vNnOLnUap4xFPjowlNJPy2bRa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:45'),
(194, '1311521007', 'wellarahmatika@yahoo.com', '$2y$10$bt5ROZg5LcWdFiPmq6BxGeB15B8FpspOS4SYK8y6KQypMrCxhrZri', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:45'),
(195, '1311521008', 'fitriyuliani.riri65@yahoo.com', '$2y$10$0ouSNZTsIMnhgTTO9rbLlOyMDHi2x9BABI6uMvIYMPbh3DOCUKOsq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:45'),
(196, '1311521009', 'ichapratilla@gmail.com', '$2y$10$bX06jV6PnQw/91fM7DeepOX1YvITVKshvlqjW.PdCIf2u/z3fiLPW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:45'),
(197, '1311521010', 'ardipinok@gmail.com', '$2y$10$0sulRDlZCq3UEhuWahX24O08/8TczJL0NssT3KuExGSnRuc1agL0i', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:45'),
(198, '1311521011', '', '$2y$10$9QjUDt6U3V4sMFarxWTGEe59WxG7fCzMjcPvSsXXO7DOmta5jxwU2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:45'),
(199, '1311521012', 'alfisyahnum@yahoo.com', '$2y$10$U2pARLSEhbU77hDhr6iwzurJ3RbpIrX3lk.7pPZrslSa1Ds6a2WtC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:46'),
(200, '1311521013', 'sepwandranurzait@gmail.com', '$2y$10$XSRgJY.5Mei/fNIPVdV74ecmoPYR8fW50tF5/n.748491t5lbbN7a', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:46'),
(201, '1311521014', 'miaaudina173@gmail.com', '$2y$10$8G6tAMEIfQODhzvdCIaPOecq.gLttV/bnExmE7f3eT8vTouFayA0S', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:46'),
(202, '1311521015', 'ociovelina@yahoo.com', '$2y$10$79VFKCLFzTLFwQDjG6FGaOrH3ip7W70sWRQAKjJJHDgbm9/AKwzYW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:46'),
(203, '1311521016', 'friscaferla@gmail.com', '$2y$10$1BXTuT95d9PfCOI33AVpFulmEXXiwf0jvaqzGx9x8aJsEXVaJFNsO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:46'),
(204, '1311521017', 'kc.jm019@gmail.com', '$2y$10$NEyxeaJ.9zuMPUZxCyvnBejSVXIqMY/.BoD6CwKnzg1FjYvo9bLbq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:46'),
(205, '1311521018', 'fitriany.chairunnisa@yahoo', '$2y$10$jMJb7Jjdm.ks6OHSyq.EGe9FIZKR1rFHYbMoXUbRnNBozINDCpkrm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:46'),
(206, '1311521019', 'raniagt05@gmail.com', '$2y$10$eyPso2Q9QM7a.uIBYJ1X3.PZBD3tqr1gKPzogHkz4YfZjZHaTwyv2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:46'),
(207, '1311521020', 'sucifitriyeni@gmail.com', '$2y$10$xLj1gVvKCS9Pvtz8uZrM2OYctpcWffS16lVFcDkF/vujXQR4nV4WC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:46'),
(208, '1311521021', 'ronalchandragumara@gmail.com', '$2y$10$GfaduWX8ZaUpz3/3ar/sDOAl0Y7X1yWC0rNk7hNvWGy9AX7/kZh/m', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:47'),
(209, '1311521022', 'anggi_tamara2105@yahoo.co.id', '$2y$10$dry6CIGqae3t9/OuU9FwneNZ62HAxD5RCPHUdg6zLKZhDvduhRa5.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:47'),
(210, '1311521023', 'egaevan1@gmail.com', '$2y$10$xX.139OoKuaNLHH61hiiPOT792b4h9oL6HPzWqDdjpAK1qCkSIhjm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:47'),
(211, '1311521024', 'dwirahmayunika@ymail.com', '$2y$10$9Z74GvLsYnXpZtsNn8l33.gncsr6.MzHOeGeb.c1PrA9Lkcohb9T2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:47'),
(212, '1311521025', 'eltarivenia@gmail.com', '$2y$10$/AHxKGx8vLIQjfcCrrnjx.NPvAs3bmKHxF6Q2EPZFq.tvJaUpH9vW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:47'),
(213, '1311521026', 'vaniadwishendani@rocketmail.com', '$2y$10$4m3LXSF4qzckrAFgSxP1heZJ5G1tEpN6rtrk47Uu.ZYFyZ1nAJAQ.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:47'),
(214, '1311521027', 'larayastinova27@gmail.com', '$2y$10$nkuH4d0npjnvcAGo/DQwSO9FkuI9rm2xyUbTLsz1h/8KrAjQsdHpO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:47'),
(215, '1311521028', 'desyolawati@gmail.com', '$2y$10$V7WRibiJtLvTEBFnEo0Yw.MfR09NmDJXCMj8fwW/fNSmdgYnzBPiC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:47'),
(216, '1311521029', 'riyanmeidiaputra99@gmail.com', '$2y$10$ypQg9FTtx7NOzpIGkX4bWuBA13g350qWn3aYwAM.77cavBfZ5iKUC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:48'),
(217, '1311521030', 'aulianez@gmail.com', '$2y$10$Y0lzjw.IDMkPiaVzufSiFewNKz9kBvbNSk0E79Vrna.YKfJW9jPXO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:48'),
(218, '1311521031', '', '$2y$10$3XpGWwtwsYvOhPmhSD/W3O0vn2.23kNBzJ5BLZ140fabNky0Wfq.i', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:48'),
(219, '1311521032', 'zikrikhairan156@gmail.com', '$2y$10$gu6n05YLkBIbvvl/1XIn4eqJ0CIvRL8VOrN1hBkfuLG.H/7vd9VT2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:48'),
(220, '1311521033', 'ayumarlina19@gmail.com', '$2y$10$U0dmzOlul.2Y6vGWkAJ2FuBOLMEWjHFEyF7a7YAbrVwvGOoKRwrDm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:48'),
(221, '1311521034', 'riskatewe@gmail.com', '$2y$10$IHwHZxb.xMkQK5fU/5u1NevEHP9M.CBAZ/4DA/.4bo7jTPO8kX1Hu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:48'),
(222, '1311521035', 'alham280895@gmal.com', '$2y$10$kYVJlkHrWG85Jnu91LoUKe3HUAUE43QY5gSg29XIYHOm69teZS.dG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:48'),
(223, '1311521036', 'hayin4@gmail.com', '$2y$10$XnzypKOAPqe816co3DBlUOkGeRjJElTZkHXYoKn5zaOAQ.rPiqnIC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:48'),
(224, '1311521037', 'aerhaen@gmail.com', '$2y$10$3pmXZPHSPdF0B0uMzBteCOPdz5K14fgaM5eCMipiIH9rxl10DsYYW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:48'),
(225, '1311521038', 'ipratama0805@gmail.com', '$2y$10$79YvVQOx7OaG.pxpJU6ylu9KeyqpEOvCvNAMPpQJGWK/N496QY1Sq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:49'),
(226, '1311521039', 'ranidianneliani@yahoo.com', '$2y$10$3MB3p6KLzwQS97owvdzeku5DcuzCihEwOYRd.XXcsoDj7yyrn8pdO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:49'),
(227, '1311521040', 'deslasaro06@gmail.com', '$2y$10$JzpzCQJ7Uv3mOcMqcTadgOR2HVkohSIjjjcgSeSrQ0XG77uaFAyI2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:49'),
(228, '1311521041', 'yaadesitaa@gmail.com', '$2y$10$di74tw0SCTwzmgwii.E76ONkLltioPeLBQM2r2P5oFXH9F.f5QCku', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:49'),
(229, '1311521042', 'sjuwita.mona@gmail.com', '$2y$10$SkKJClJSlm.T6yhzOmbIuO2kC6uqnFotrwtGJHcaQx8VQarqUUEgu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:49'),
(230, '1311521043', '', '$2y$10$5aPbf4bspsOgWrsGMo/fwuE6o9CHPAInmEmqI7eCrvDUp9OkU2cp6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:49'),
(231, '1311521044', 'elsa146.ek@gmail.com', '$2y$10$gOn7WW5gycCkzWAYjk3eEOziAdM9oWDr33P4CydQXP38v9Y7RU1NC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:49'),
(232, '1311521045', 'restiyuli53@gmail.com', '$2y$10$t0b1BTpWj1mdWCGgdAGfr.jIcLvSsU2JOZ2DqrcWeXfi0CvbwaiRa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:49'),
(233, '1311521046', 'ditaviolita210895@gmail.com', '$2y$10$QMLooR.32aSxBYu8MeMpmOxT.trPJEMSO1DztWj5v8oLqCRMN.PP.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:50'),
(234, '1311521047', 'rahmanovia1047@gmail.com', '$2y$10$c03bxYpPi9RMznjGEX7OBujWHIOoFFqjyOP.1ZEaoAjCkCOc3JYh2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:50'),
(235, '1311521048', 'alvidwiwahyuni@gmail.com', '$2y$10$eFiGh4V/CAzwQuMckk51Ru4EmkrLjbbttQ9mfolNQFPgTGlNvYrt2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:50'),
(236, '1311521049', 'jeutau@gmail.com', '$2y$10$/wVMN7V9tVcxrYIU4eTmqexIstQdLaZBePWjxtZGTwPE04wnVLD7q', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:50'),
(237, '1311521050', 'rahayutifani@gmail.com', '$2y$10$jDSY3DtblaRDGt6Tf35ijeaDBij8wDSI5y5IDz0JQ6BHB9xXCRW5O', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:50'),
(238, '1311522001', 'hadiandasalwa2@gmail.com', '$2y$10$W/faPdMojbYva26joLXB9uzpdtGqKS4UXgvNydhIde8TyGzRrYTsW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:50'),
(239, '1311522002', 'adenurhidayat101294@gmail.com', '$2y$10$GVASvmfyXW1rf/rHAR7T2.iMgNJkGHJWEnoKETETYia0ffXpLP3Oq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:50'),
(240, '1311522003', 'ilham.aja1994@gmail.com', '$2y$10$Fm3Dy.sS/N4zEqI2sjf.pe.VeRZD5sDO4nYW7pfI7GmywdXnnuQIm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:50'),
(241, '1311522004', 'ezmulmawardi@gmail', '$2y$10$Z1Zow3UwpfwpGoufHjRxCOrY0WDH2aMMgiq9RYNPUErlcGwhtOIeO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:50'),
(242, '1311522005', 'tegarpercy@gmail.com', '$2y$10$NbjYl.GPVbIcnMKJKOr4DemVfxFx5vKmoaojSm51Se/qjAMA94u.W', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:51'),
(243, '1311522006', 'rachmathidayanto12@gmail.com', '$2y$10$/NNyJduT8pvblfcfwQ.sK.NYKxRXNvcVhHW9hQa5ZT7I4e0J7I/jq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:51'),
(244, '1311522007', 'hausayoruba@gmail.com', '$2y$10$QSc642zAG8nDzjDAgqKlt.WDk3VZeaJf3MHnGrmUbkHWDYhUos5Lq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:51'),
(245, '1311522008', 'auliafikrializar@gmail.com', '$2y$10$tUdUbd0oaudlpyDrJbxVJezWStqVT306vQ6dSWBNDfoyVY5VyIVai', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:51'),
(246, '1311522009', 'subnanda1212s@gmail.com', '$2y$10$HpJE.bHmGGJ4rwNmKYcXaOYl6UrTFzaQ.rmR3.EBzoIRN5cqAt5Ei', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:51'),
(247, '1311522010', '', '$2y$10$ByYwsevkg5YtHwvhoTd..u4NBAC8Yx85En4tFs6qeiVfozb7t5cau', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:51'),
(248, '1311522011', 'asmakarimah24@gmail.com', '$2y$10$pqSMJDw7caEgMuGcXMr9n.VILBpUI3kqfpAQodkxR4ZVLK8dLefGa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:51'),
(249, '1311522012', 'lukmanmulaya254@gmail.com', '$2y$10$xzQ0lvk0D3dPGR23uJYAx.cr3eRUrB/1Svm4/J7P/4ovJt7JON9Xy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:51'),
(250, '1311522013', 'aja.ikhwan@gmail.com', '$2y$10$FqMvmXOgJXLNz8L.rcxXNO/v5BxdsmO.LunQqpo3VO3s.nubgn9gW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:52'),
(251, '1311522014', 'arrestino.kevin@yahoo.com', '$2y$10$pFDX4qIiNo8F9oJN7TeCmeEanjyXczUJ4syMJRFQtC98gejM6GniW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:52'),
(252, '1311522015', '', '$2y$10$Oxpxun8zQ.jsMUOJ0Ta3h.hQeXVUzZ041p1/b5u36/isqCRq5Qmz.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:52'),
(253, '1311522016', 'muhammadhabibie1904@gmail.com', '$2y$10$xplESsrS4q7i8NRK1E3WTOCLNXDpjKOsDEII09NNSOxwSXdQWnVmW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:52'),
(254, '1311522017', 'fadhillakusuma@gmail.com', '$2y$10$Wy973JDsZ6wsAn/moh9.q.QG4E63ueIb9l0V2FeI7R93U87ERow0e', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:52'),
(255, '1311522018', 'duasatunopember@gmail.com', '$2y$10$apGRQzFIM0gUYNVfr5u86OFIRojxFZ/bJXfDyY4Fy33IwL2KFh1i6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:52'),
(256, '1311522019', 'benardo.aulia@gmail.com', '$2y$10$8fpvrAcWt4xkE7T.5VNV9O.iDranWczYzGkIt3juw7DjR5BbnmA1m', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:52'),
(257, '1311522020', 'uci.lasmana@gmail.com', '$2y$10$eidZpvjDFpGiBIA3/66tw.qTFQgw0/Sx0xa6IgwW1DI4R6fdMVq/6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:52'),
(258, '1311522021', 'elsa.aprilina@gmail.com', '$2y$10$ytSyjQHLvckdRYkoxLrgceXG6llOWkLOGRc2pSH05PpiOC/XRTYmS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:52'),
(259, '1311522022', 'Fandy24basilisk@gmail.com', '$2y$10$EJrC9LzMkS.LSVGw0YysnO8qlL653kCHq1Jv8O1l0GOdtyvgUUUeO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:53'),
(260, '1311522023', 'kusumaryan8@gmail.com', '$2y$10$FoVeQOP1GUroinFKgX3IM.9Auj2CJ316vmfBVBehRxur6SjJaA6oG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:53'),
(261, '1311522024', 'nurrahmanhaadii@gmail.com', '$2y$10$guj/2amxhABy3pMsdejt9OnOcb7ivrVshySUc0QOTZaXmj6EuFx7K', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:53'),
(262, '1311522025', 'ayu.lestarry4@gmail.com', '$2y$10$pHBSpoD97vzzLeoeAbLBMegbRsfTejs8hYQpuGYVpvBajKSCLu/nC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:53'),
(263, '1311522026', '', '$2y$10$eqJCnvZDQpWrSA4zPARZRuD0mX1ehEWO9HLcHLECCCzerk.xfbM9q', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:53'),
(264, '1411521001', 'selvi.azali@gmail.com', '$2y$10$w7PnemMva1/oKSTO5yqaUOFdlJuja3eWNdVwW3Vt/gmGamBhBsxza', 2, 1, '', 1, 'Rn2uAUoX8QhxPfa4Qi0E2WTQoRXPA00GkXZQl9gIIQxbVTt2V6WNCKB4xXlS', NULL, '2018-11-10 22:37:53'),
(265, '1411521002', 'herumika5@gmail.com', '$2y$10$NVSdah9ZjLbY2Ajwl4HSkOqA24bOCaBXoRNHrPq5uZHe87ylxGp9G', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:53'),
(266, '1411521003', 'maghfirahmaulani123@gmail.com', '$2y$10$foeiEyNjLSfW7QWBEq5sZeitUEW6koniSlBLhr1R7cMZlyxRl6RrW', 2, 1, '', 1, '22hWdxb1bD99psnwDZp0oXP1t6WfPGIH4LHVMpsxElwD9HGyOyMSaeUXeaCA', NULL, '2018-11-10 22:37:53'),
(267, '1411521004', '', '$2y$10$znB1lFTfhA9LeogylW.QPOqvtKIuLNWYg5AdF1JBnPKCSna7XhlHC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:54'),
(268, '1411521005', 'riyan.adhitiya.okta@gmail.com', '$2y$10$XZZs2M4jagKYaQS5pu3OnuHj6AlglDmP0ExHFTDZycFL4iWZfz8pK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:54'),
(269, '1411521006', 'trilindalucy19@gmail.com', '$2y$10$r8ovZ4UGEdap3pfCYW9.g.2wi45Z1lznkTaWlgIDgnJwtx9N.Og/e', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:54'),
(270, '1411521007', 'auliaayulukman@gmail.com', '$2y$10$pzuGJFHy01yv9QFdTheyv.llzAGWVhXz0Ont3DYuB8F29aVlat3Cu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:54'),
(271, '1411521008', 'ariq.naufal29@gmail.com', '$2y$10$UQmfdJCfab0HPEb6MEuKHuNBCR0I.cmHU1W4TKVuKYC4vYu2tc/x.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:54'),
(272, '1411521009', 'azizi.soniawan@gmail.com', '$2y$10$EAojfBYoLOEIHJJX4fvXw.j6ILNBLU/DcIWlvaC7IrE8vDq7syiqy', 2, 1, '', 1, 'RPeg21ROP1RLsOM38s1DgHQuz5eBUzVE6Hsl8kf6IhaOXtwd60dwXmMcOpS4', NULL, '2018-11-10 22:37:54'),
(273, '1411521010', 'syifashavira29@gmail.com', '$2y$10$c89iB9vTUlAZJX4RCCU9A.ZgCDs0seHKSwy2oHZeOdHNmWw1937ia', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:54'),
(274, '1411521011', 'atikahijriandini@gmail.com', '$2y$10$871B1/kVhBAeJEsK6X7EXeUpkBUBVU1KwidlTZDLG1y3yZBOWiGc2', 2, 1, '', 1, 'rau32t1P2khG7GQoSsZJM20WA1Pa3SeaDTcNkygw1W1CIMsItKcTD5Wrs2Er', NULL, '2018-11-10 22:37:54'),
(275, '1411521012', 'iqbalnawa22@gmail.com', '$2y$10$/Z17Dzp5V9W8AtM9Nb8e.uKw4wJJTxg7mtVcq/qGXxadzP/nZFv0K', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:55'),
(276, '1411521013', 'wardatulalifah71@gmail.com', '$2y$10$Dd93TalQ5QMJWSPxF8PjXeTD67fsgIN2jOu0.cj8jjUYwDc4xt0Gm', 2, 1, '', 1, 'l3sKrAj4pkOZFRYD71Qw1h5Ytsbhn2Hz1LTlDVuSJx50f5e35qjRTwHxWseh', NULL, '2018-11-10 22:37:55'),
(277, '1411521014', 'whanifah14@gmail.com', '$2y$10$3MEIbZ3nvnmzOzWDh91Eo.YGEgveLAy/OVp34.ryLNT74ziQAEmTm', 2, 1, '', 1, 'EVUM3gNAtskA8NxGJg9e8VUGe45WhfEwJYh3cYArxIT62H0RzBLVkcetcJl7', NULL, '2018-11-10 22:37:55'),
(278, '1411521015', 'ryanrinaldi10@gmail.com', '$2y$10$fXV6LPNBdCWmul5TT6aThOqlOQZcoFv3IBhdgBDazmL9IIG0vmqYW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:55'),
(279, '1411521016', 'rafeldinur4796@gmail.com', '$2y$10$FxNhxQjz9BcDXj5rO81nUONFMLOyMgVc5wsWpmvpdEkvvC9q3.0p2', 2, 1, '', 1, '0hoXqEeEPhvwQsHrEg0YL1e8uer9Sow6gDoiRLZX1fGwzY8wntJVD5wc068O', NULL, '2018-11-10 22:37:55'),
(280, '1411521017', 'umarsyukri7@gmail.com', '$2y$10$SA88oQFPGo1qED5T0UiscuzZOu6k/ReMxcfQ1OQPVWhTee2qn7DO.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:55'),
(281, '1411521018', '', '$2y$10$ENLWRUdCWep.5/BqqBT4fuRIKg9eEUydMi0unEvZw8QKEfqOO14si', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:55'),
(282, '1411521019', 'nabilaulfawalmii@gmail.com', '$2y$10$qggiD3xLvavYrrdwG9LmX.Mx3qV.S4LnBaPohgYz0p8GlxhZOn2fy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:55'),
(283, '1411521020', 'kijim90@gmail.com', '$2y$10$TjJczDuqGOFchsgjvE/sseb20ZRRilv56w84gf6G4L47swFpuHhWe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:56'),
(284, '1411521021', 'joviadrian.ja@gmail.com', '$2y$10$sTf7h6ET4uDjaPKVfgKf6.Pw5mHSdERghHhCYQPTGOilf7lDg0DmW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:56'),
(285, '1411521022', 'nulfahmi14@gmail.com', '$2y$10$7K3W5E0FsteP158z8CvYqeueTxL.8BWqdpW/HASCYSTSl3QOn38NC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:56'),
(286, '1411521023', 'widyawulandari.wewe@gmail.com', '$2y$10$38XikJiM.JFVDBqdymhfJenOklVOjVVLzL/YwMiZZaAG8VvVv3LFy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:56'),
(287, '1411521024', 'yupisriyunita06@gmail.com', '$2y$10$rOhkzFdPMXREOZQyv7hQse0sFbpzkYm/6/vuXk1JTrSrTltJWr1bK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:56'),
(288, '1411521025', 'oxsapicasso@gmail.com', '$2y$10$76Of3T8epekKW6E76mRadO/3GsWwKFczGHd7tE/npEUgPcJ5EWJVm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:56'),
(289, '1411521026', 'rockykurniawan3@gmail.com', '$2y$10$6EQXhg6nWp3uHWMn6LyEB.9Y3AjIYDNZK9eoce3wxXC4NqbUMO58e', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:56'),
(290, '1411521027', 'zeraolviana@gmail.cim', '$2y$10$moSgFEKhB949mFHMxxdl5O5CI0jz/SLZipNd1lwKA0uwoxxFcjJFW', 2, 1, '', 1, 'zwud6Mp1JU8UuBD1AGpFX1cu1RDpA42zSFWdx99ZUjbke90QcpHODIKiJVZb', NULL, '2018-11-10 22:37:56'),
(291, '1411521028', 'florenthi0608@gmail.com', '$2y$10$oZ.Xliap2nFtpaisPpGfROiXmn7yWXO8XaMyfhC/GSSlXGMulYOOu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:56'),
(292, '1411521029', '', '$2y$10$ayiQGDbMQ5x87iWJb8sXe.HsMT2HMZ39YjOpq5j85QKo/GniWFTAC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:57'),
(293, '1411521030', '', '$2y$10$u72pJ9LWReb6PZQ5PTXPKutHex1VU7ay7qWZZkdkF0fA4Oyud8WhS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:57'),
(294, '1411521031', 'adelianifitri8@gmail.com', '$2y$10$SZf.SBvzXUeKnmJ2XzX/ieSgU2ZXRinIiD/MZ3ljHpmMZAE70ThCO', 2, 1, '', 1, 'BIWZ86CUIHT0ocsTZ2rt4Oh8t0VsxxIj1pwu0QjmTxCiL1GjzijQcIhEZubk', NULL, '2018-11-10 22:37:57'),
(295, '1411522001', 'triagustianameldi@gmail.com', '$2y$10$kIWSVL.Dt4JtOO5pW50/8eComRoMwNcKBDfabxBmvzL/BJPrMtssK', 2, 1, '', 1, 'aC2dALWzfCICjeListSkZa4HE6cNLmi7WFCLjcBKWISdyfeCe9PRs9bki9K6', NULL, '2018-11-10 22:37:57'),
(296, '1411522002', 'elshayulianizulmi@gmail.com', '$2y$10$3qA7tPG1nqNAOrsqqa7TnOciGJn2Yt.aRO08J4PLhgNp5cGsSjYUy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:57'),
(297, '1411522003', 'lydyasariyunandha@gmail.com', '$2y$10$bUDziiFW1.z5A3pI0OjKauVTlUhUz8rGOe/JOw7p5x.sxBOW0qAfu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:57'),
(298, '1411522004', 'wynabelmi1@gmail.com', '$2y$10$xa44d1OQgG7j.UHlr1O0pe54yjPZftW9DLU3iPsNNINMAQLJnQbnS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:57'),
(299, '1411522005', 'afdhalzikr@gmail.com', '$2y$10$VHIy9ynZMo4H1ceh90fUyeNGadw8SVPpQYkj1STnwlogLoarhhpxS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:57'),
(300, '1411522006', '', '$2y$10$8GCBzjl4O3jB324pF7XNN.TRcbiL3q6WjLXEUcAw5LFLp2DtREGqa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:58'),
(301, '1411522007', 'sandhylp01@gmail.com', '$2y$10$7v10TO0c.Iyh7nhlZsd3SOy5OyJzb4IqiBW5Mb2glj9T.g.8Uq8Ne', 2, 1, '', 1, 'kr2lQPWxoOMp3hqJbOOgcAXmM3ALq8wFlLNQIwfJzbuvuDF1eHbTMghdBes2', NULL, '2018-11-10 22:37:58'),
(302, '1411522008', 'annisa_amalia.ze21@yahoo.com', '$2y$10$Xr47qsTzyTENMc/8VTvOYezFEJ73UKviSIEv9xRNp1/lGgli.dOnq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:58'),
(303, '1411522009', 'ugisparkyu@gmail.com', '$2y$10$7ROoNQunvqqwSkqYlpfluOEqMqwlsdb6bk9ztiNYFaa20/uNHFGvi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:58'),
(304, '1411522010', 'rahmihandayani3@gmail.com', '$2y$10$NJCPwWqF4wO0bsCL.IgVaOE3GePYhyD0Zdki5yo2aGec8htKFX1.W', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:58'),
(305, '1411522011', 'nurmanm91@gmail.com', '$2y$10$tTGjJkbb/CxdBOoBshGmN.UsofNfMvnJ1G7Z2YPRRBwaTpP2Rqg86', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:58'),
(306, '1411522012', 'ryudhagen96@gmail.com', '$2y$10$Y1ZO6xQ9gS.BcrelqFioy.45ZfPY/e0bYKnKFyQ3zlkNM07EbG/Yi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:58'),
(307, '1411522013', '', '$2y$10$KtAGoEpB7qV0LOnFfK3BjeMs9v46ayG8W5.fVf5up7EgpYms01lxG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:58'),
(308, '1411522014', 'fauzi.padlaw@gmail.com', '$2y$10$NlGRbRqfKc6DN8OzOEVe/.GvcOi6pNjFUKvaMlrk8TaHliciAsEfu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:59'),
(309, '1411522015', '', '$2y$10$54Hvj37Bx49R10/jdpvDm.wpIqKhLB7Dz5.VAZEAgFreibTmLZWYe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:59'),
(310, '1411522016', 'saidah_piece@rocketmail.com', '$2y$10$/UzxcajCNdjEHrd4q12uDeeOQEIsIAQIwNVrY6uplyWy/l7DREDk6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:59'),
(311, '1411522017', 'arviansyahdn@gmail.com', '$2y$10$HAhG8YjICaRLehpED0Rlf.mqIJ3.1/qRTAuqnBKfQ5AKkDpwPqA0C', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:59'),
(312, '1411522018', 'khairunnisalativa@yahoo.co.id', '$2y$10$aycjNdn.DoMAqmsaNB9.x.Jaio1eJLQbWP4r4EVybufS51uiCJ7KK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:59'),
(313, '1411522019', 'fadliarif.deliyus@gmail.com', '$2y$10$iuJ2C5xyUDSvMtCKEginhu9Q8AChf7Nl2zNZQw5KUJTNnHAaW6iUq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:59'),
(314, '1411522020', 'zikrya.hasanah@yahoo.com', '$2y$10$eqIx1zFVWohMpAwRFiKBcuggv9PpydpwxldJVP6Cm.fPUFfqEcjW.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:59'),
(315, '1411522021', 'riaoktaviani17@gmail.com', '$2y$10$B3k.A1DMpCGYd3bfIFtNWO5nxmNW/mwTg9Q3YyvsQmjVWvSmrFqtG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:59'),
(316, '1411522022', 'dittoafiq@gmail.com', '$2y$10$t3VJG.LijJUgwLQfVDeHau/387qt20wR4Y05fg96pa8HSjYmUdT96', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:37:59'),
(317, '1411522023', 'thami336@gmail.com', '$2y$10$Xx.ULyd0wFM0pAOXRhhg.eGWhPpbLGZTPQQCVBbYd4XZGyXNtoPsi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:00'),
(318, '1411522024', 'rahmadanitriwinda@gmail.com', '$2y$10$o2GuEk5sSgOtvf02Qn9YI.7tCSx2X1/K3j15OOYnxJdhD4A3cRr66', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:00'),
(319, '1411522025', 'fikriardhana27@gmail.com', '$2y$10$XzP3gA1ygAcIZsertCwwReEqowX5DmpWOjBbdMSohVU8i/DBJLVXe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:00'),
(320, '1411522026', 'mawaddahqisthy@gmail.com', '$2y$10$8YM3pnsUtpLmkmPMAN9USuJWNUmZOuaSAKd6DhHK7G2hoXm2gy.rK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:00'),
(321, '1411522027', 'galuhkurai@gmail.com', '$2y$10$9txGeo2YoDFeky8zWWNz2.1FY4AdA12UvReyVA7p8vYyYx7Zvbe.i', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:00'),
(322, '1411522028', 'agumymous63@gmail.com', '$2y$10$H5ot8ggSondpeD5kZtlVY.MbpNtAqdu9k0toXSSRLeSNd6u5NQf/i', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:00'),
(323, '1411522029', 'hestigravina6@gmail.com', '$2y$10$m6wAtf0h53cfgWg6ol4nwugd2L.ZZOsoTf0oEuFG7PaPPui3T4I/a', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:00'),
(324, '1411522030', 'candlelight1296@gmail.com', '$2y$10$aSmRK90Mj9ccHr4/dNK/dOthhC2QApUfRInn8SunjTqqqU4dXveTm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:00'),
(325, '1511521001', 'srgusesya@gmail.com', '$2y$10$/TV.ZY1OimPWKKdUPamg3OUMO8eyYGnZYeu9.q3seq7dH9FckzN96', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:01'),
(326, '1511521002', 'ayaaayayat@gmail.com', '$2y$10$g7qxJibGsQUj8bCpQahPq.AVTKrkdOQmmMBK7VTiViTzmvgA7Jpm2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:01');
INSERT INTO `users` (`id`, `username`, `email`, `password`, `type`, `status`, `avatar`, `first_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(327, '1511521003', 'vikranmaulana3@gmail.com', '$2y$10$jpv7lzkz1GvtrW2ioTWIkOi5Q8gCHrpYQzRV/jfVs2QN3l/HxeHcm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:01'),
(328, '1511521004', 'dartikaaniemarian@gmail.com', '$2y$10$.jTsr0hAnwz8lAmtG6NHk.24e.M1dqm.oUTnhjQvwPcwQKllQQoaG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:01'),
(329, '1511521005', 'agustiamrirahmi73@gmail.com', '$2y$10$zWgu551ejZz9lwWoEKBhje/fEPGt9Ah.YVsxemvPuKCzUIt09vhbG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:01'),
(330, '1511521006', 'xx4ragxx@gmail.com', '$2y$10$Gmy5EXItpiYVy6vXyGwy9e4GV9qLznchr6CuRSFpBO2xQnwNcdXWO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:01'),
(331, '1511521007', 'auliarahmi873@gmail.com', '$2y$10$uF8qMxQ5DYaDyLPXgvaQ6O2ZCVRLs5jisiyCP2x6yrnmGyruW.iZm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:01'),
(332, '1511521008', 'afri.radiatullah123@gmail.com', '$2y$10$UD51hh.XBTqvt52aaMuzd.0y35b2SJAptcWIEXbAG2G6EVultGQm6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:01'),
(333, '1511521009', 'vandiratari@gmail.com', '$2y$10$NNenLIstidUYTNNRCjWo0.RvvNfvHF5nXZI2c1FQfW1KAIr8iORw2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:01'),
(334, '1511521010', 'nozynandaputra@gmail.com', '$2y$10$Ls2ME1FxVQogPzs4954BXuloIFPoRjzGs.S/W8PSlT5JTt5wFpXS.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:02'),
(335, '1511521011', 'silviasyaputri22@gmail.com', '$2y$10$7QO6qudTHAWaecM2SUGApu2vU9JD2C70M6zRh7NuK6n9ctDqw4AGC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:02'),
(336, '1511521012', '', '$2y$10$43w95NclQ4kyazmxQ0PJ9OV864d0L9ooQEyhy3qVCGqXXSpBmoguy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:02'),
(337, '1511521013', 'parawitayolanda@gmail.com', '$2y$10$NHGfZsPvmkwLhwdfdgWkK.bTfN20e2kpM5gNy3l6CK9C1xAbRn9oC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:02'),
(338, '1511521014', 'richelyolanda@gmail.com', '$2y$10$B7ihBEmDbmruau2PR3pOrOzgSBCbDETauGIq8SQJDU9d/8BDEwZ72', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:02'),
(339, '1511521015', 'rizkaaulia0578@gmail.com', '$2y$10$0KBWLb2kussnCZm388t2wO1vucOnfXMyD9xMt5s5CPDJs9BIeSXbi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:02'),
(340, '1511521016', 'alfarizivedo@gmail.com', '$2y$10$6TLEUoHp/8HXJbhpPlh4OePPM/9rDUZ6qQFXFD2S1oeJExngGZJma', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:02'),
(341, '1511521017', 'indahregitha@gmail.com', '$2y$10$Tm2YEKcB0CB2230zGam0Nebc9NWIJX0tmBATGTNg.twbJM6nlvqcK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:02'),
(342, '1511521018', 'nadyafritanita@gmail.com', '$2y$10$7yW19NwhWNVgfM9a5S1NquEQSEPwTclVI2XXvLXyGd03MHVCjlB3K', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:03'),
(343, '1511521019', 'tjsputri@gmail.com', '$2y$10$Hzu0ZpNpPp4NRLeAPVDFneCw1hHUu80SxTy4PykiyDZWhGNSM5g86', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:03'),
(344, '1511521020', 'marchellaanrisya@gmail.com', '$2y$10$yc2X7WE0hreIlisj.ftfGOZAEArkkdO6J.Ovc1uSLjrHOsAQfCuqu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:03'),
(345, '1511521021', 'utarirahmadiani1023@gmail.con', '$2y$10$hZNoWhtkp/4GZKJQ/5sTFu1lBViXeVngsHQH6FVFP2H5zTyHU9s1C', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:03'),
(346, '1511521022', 'tatabayu04@gmail.com', '$2y$10$4P74hT6oubx4g0OLu7wR0uOhzDD2ygPZhfM1LkRdrvgyXnBo2CrDi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:03'),
(347, '1511521023', 'imamsutria19@gmail.com', '$2y$10$LM4tx5y51ezlijoTTO60WuDz43kIlSL06LybfVDLu.iM8iuCeyIky', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:04'),
(348, '1511521024', 'wahyuadepratam4@gmail.com', '$2y$10$UzbMAjChKs3YzvpEQfW0Q.1KsAbo2Oa0betHhyiTyQIh1drB3qrxK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:04'),
(349, '1511521025', 'fauzanahmad174@gmail.com', '$2y$10$EhqLPRgbdcZkfU2O9lq6y.wOZzTWzQm8oXZNzr7FYRWTm8DzXme0O', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:04'),
(350, '1511521026', 'fadhil.phoenix@gmail.com', '$2y$10$HcgtjCKqsHlyLXDhJ2aDx.ArjqkdlRzlRp8Zb9DApD/HZ9gP/S5W6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:04'),
(351, '1511521027', 'viranioktavia3@gmail.com', '$2y$10$5bp4LSqTWunJbD5OShcIR.W76.zSlCRTTXdRjCdess6omFsIkBNwy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:05'),
(352, '1511521028', 'annisarahmitafrizanggi@gmail.com', '$2y$10$t/lw21LDM7XgIyvceN4x5O6z6DbjBA/xQMjfhJLBXZRVCMpoZjBd.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:05'),
(353, '1511521029', 'bloggersejati7@gmail.com', '$2y$10$yIatERFfbrtpY6QKBS.32OWM/Q/2lxzaYwQm6x9G0WaFxSvgwm9FO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:05'),
(354, '1511522001', 'syifaa.chai@gmail.com', '$2y$10$iXO.Fpg6hD.wrotuOnUXCOwFM5Gj1XSQbGyzahTyqmZjqSaHsKDs2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:05'),
(355, '1511522002', 'ivanhasali@gmail.com', '$2y$10$.y1pwf8qXcDdbQe88fOE.OkWhIPpsnW2b2I3vGrYGZWo3KYnBF1km', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:05'),
(356, '1511522003', 'hamidafiza15@gmail.com', '$2y$10$ONYYbIVDVH3ubJV7ibVUD.AlwzE4/ifuC3BNjUiIehoviun8Fn.hm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:06'),
(357, '1511522004', 'ridhodarman@gmail.com', '$2y$10$WqCg7mCLnPfHCI5afd.A8O4KLxsfQdX7rFT2hRTEzwdWK9yQI3ofq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:06'),
(358, '1511522005', 'vaneshaasyariza@yahoo.com', '$2y$10$K2VYoTIwv7Nw9lrz6gP7yePd87TR2RjjV71GJh1qY7Nm2KUqa/GsO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:06'),
(359, '1511522006', 'hardiyantipurnama@gmail.com', '$2y$10$R6A.RcEcW0VXQD81Yb36X.jRcyTVEn1X9PFfWKf4IwVXJ4luUwAyW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:06'),
(360, '1511522007', 'tentiaap@gmail.com', '$2y$10$J2Gut08cxUZIrzIJ7Kva0.iIBKDUtCW1NjML0CqAEVmnL3YQR6Knu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:06'),
(361, '1511522008', 'aghill.tresna@gmail.com', '$2y$10$G7dYXksvSyqH/x9n3ictcu49wgTnReEgo/Kwrt3PLOehPk.dTEuvO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:06'),
(362, '1511522009', 'ade22indra@gmail.com', '$2y$10$mMMlXKBP4MIybk7nbUMYDORHdwYsJuqg5.TiOFRIukmiJEATUoLa6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:06'),
(363, '1511522010', 'nushida.chairani@gmail.com', '$2y$10$ScZPTGdbUYFDHt6vWb7bB.HWB63vKvA9FByMJX3ODAZAi19byv.e2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:06'),
(364, '1511522011', 'ivan_ridarivaldo@yahoo.com', '$2y$10$z30YoKtAASQxFFQunlAc1uXuRxpESAzeeDbnLxLPZoBgKYhGTyRzW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:06'),
(365, '1511522012', '', '$2y$10$GflMc0GinGlJ3p8BYbhXWel9NoT7qQyYh71H9nFHomW5l6jZfx.pG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:07'),
(366, '1511522013', 'nilamsuri4@gmail.com', '$2y$10$VgSihkYexn0HUS6zLr7JJ.WLCl369t/2W7GHDne.pMH9.OnWI8vZW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:07'),
(367, '1511522014', 'rasakmarsawa@gmail.com', '$2y$10$qcuzDe0mS41UBGfHFEbVBOkHVyFlDvJ9g/2OUXq2xRIYatY5QmxU2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:07'),
(368, '1511522015', 'ariyanoriza@gmail.com', '$2y$10$a2tMaXyXW8pszWowwYAaL.2Jo.y3ntx4Jq6yClSthahYhrlTEyCWu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:07'),
(369, '1511522016', 'adnankhaliq99.ak@gmail.com', '$2y$10$FmbRG.MOavvpK8hw.Hm0Xewh4u7JSnsplUxCBteCVqpbqCJk//9U6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:07'),
(370, '1511522017', 'nazhifanajlaa@gmail.com', '$2y$10$jj.zW.NX.UlueoqdyX7gSuII3qgSDiikYePSSvdYtc3e51/jy07Hq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:07'),
(371, '1511522019', 'pramuliafauzan@gmail.com', '$2y$10$.T4NsF3/prokY187S5yMM.3TGGs87mgrAFG7xZ1ER1HZAg4v7dGOu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:07'),
(372, '1511522020', 'ferinadwifitri@gmail.com', '$2y$10$1mdpRPfC/rDZ9cg.6BthEeGexWsF49/uGq45Ie7phkXV.37pD0Mji', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:07'),
(373, '1511522021', 'mardiasni97@gmail.com', '$2y$10$/B575HFBEEyIsBjgvhx5Z.Dou98ClnmA3zCkqBknA.YIQbaEDwMhO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:08'),
(374, '1511522022', 'mahfuzjailaniibrahim@gmail.com', '$2y$10$zT39ZHpME9AVJgmXwHkg0ehLJxFWUSAPu6WE5yEw7XFKxuvs7TRdO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:08'),
(375, '1511522023', '', '$2y$10$vlMNIcnak7gudubD35gzl.eXXHE43YINHy.nad9PwYWJ3xwTQdgpG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:08'),
(376, '1511522024', 'resadefriyenti@gmail.com', '$2y$10$MezWGgk1C1g5rdPKCT5zyO103Ka5mi.Lovnsiq2u06SZBRELejHpa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:08'),
(377, '1511522025', 'novisa.ard@gmail.com', '$2y$10$NNhMuFCZvYhZzB8bhAoeOOY3K66cv.ruARfvffdwSYr3qw3/RfESa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:08'),
(378, '1511522026', 'monicasilvia311@gmail.com', '$2y$10$nbtAn3USELgPBhY4WxLFeOvmpmRDvEZ1wwSSQAjWDV6QGm1MZgLg.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:08'),
(379, '1511522027', 'fkhairul22@gmail.com', '$2y$10$ZHjBOiCOjYjtYslJkatf.OKE6XyZtMAS96z8w658/EEEdoj4YuF1u', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:08'),
(380, '1511522028', 'marizka7@gmail.com', '$2y$10$9FGaCohLjdPn4EUHoeCWu.YxiGCtMSv2nRTs6w9TqmN8sKG4TwMcy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:08'),
(381, '1511522029', 'cahayacamila96@gmail.com', '$2y$10$c83ArqH4F4lltu/dS05hL.7Y95nwfF./pdHC9TXI9CC2kz..CfGmW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:09'),
(382, '1511522030', 'dini.rasyiddah1@gmail.com', '$2y$10$Aq5UhRFw2QEs5cjyfXTWIucYKLRUhG7ne6kspPebZmRwRyyFHCRSm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:09'),
(383, '1611521001', 'dinamardanad@gmail.com', '$2y$10$vIbL3PcCgncjmhN4rGmzsOdY9Gb/sra3PCLopMpdWP3EdEoSHOFVK', 2, 1, '', 1, 'uveRSaMwfZE22DTRzupO4n0fPTNboAJBwHJXRpLd7ieKh2Ck3EIDxilLY83V', NULL, '2018-11-10 22:38:09'),
(384, '1611521002', 'muhammad_apiz@yahoo.com', '$2y$10$9Y3RlV0qHNeihqUwNhtN0.hXe8t86K5DrJPKypb5S.IK4MN4HpMPa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:09'),
(385, '1611521003', 'azra.hanifah@ymail.com', '$2y$10$W9o2rOKJgyUubaWs.qEE.euzM6PYtSAN0Yj7zdkOcCYk.ag8HdhJ.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:09'),
(386, '1611521004', 'noradzillahadya@yahoo.com', '$2y$10$VgJAOnR1FPTJWKRkyfIzS.Bd8pDUPelkCrlxqM.kg.hDPBkIgPO8u', 2, 1, '', 1, 'ibf68vKaL8VoL4hEqcIXjWmWZ2TOEcrrveqtUZq0VGg8JXydqIum1lkNv0xZ', NULL, '2018-11-10 22:38:09'),
(387, '1611521005', 'aputrigabriel@gmail.com', '$2y$10$5e98M2o5vuBWS4QDlcFIDeAGygSbBabJxQ5ockO3Ct8yyzGmnmWQO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:09'),
(388, '1611521006', 'khairaannisa107@gmail.com', '$2y$10$7xq31PwqJwE/iCHi3l8NM.J5Fr1TjlKEkQdkE54ZUEzeZyOkcn1ny', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:09'),
(389, '1611521007', 'nurulinayya@gmail.com', '$2y$10$Pgwj8RDnnnEuAuxR6mcl7uksukngnOEczLoVp6ee6SeWZwogYxU4.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:10'),
(390, '1611521008', 'anggrila13@gmail.com', '$2y$10$5xCQCJSZGF8dCub88eYN2ORqc2wwfAg6yMYdxvrHir2jZyE1YicPS', 2, 1, '', 1, 'msQFRhi36bv7eM0tARxVbnnQ95ER36yMI9LphGkq58C47N82nyXX0JOf3Ma6', NULL, '2018-11-10 22:38:10'),
(391, '1611521009', 'ilma.dclovers@gmail.com', '$2y$10$Fcv6pNlVFcTIgLTBgXzqke0E4ps7SpqChyQNQPd/XyCyrDVDb94AS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:10'),
(392, '1611521010', 'leonizahra10@gmail.com', '$2y$10$BhTbwzqexQ0uMar/w4YZ4.qcTMx5dqjGeTGopjBVT4OtZbbl7za.G', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:10'),
(393, '1611521011', 'thasyalara@gmail.com', '$2y$10$5jNUS5K40OCmYeb2D26y8uBxDhf3PIfolW5JRS2M2d7s2BOoH..5y', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:10'),
(394, '1611521012', 'israsagitaa@gmail.com', '$2y$10$bCeMVtRwmFWeRe9VtcnYVu977mk1ze0nwTLz3iNTxt6gfhZ9mc0r6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:10'),
(395, '1611521013', 'sunyi1819@gmail.com', '$2y$10$iY0uytHTvUFZpOBoNo.sJegbgaX0YgZgxnQvWBvbtgvmFXlBzbex.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:10'),
(396, '1611521014', 'Lisakasila98@gmail.com', '$2y$10$ZEqifOkAb60Y69j7W4B7tueDKzdqdqPf8.7.JHzD5ozxG.ZUl6qDi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:10'),
(397, '1611521015', 'srirahmadhani822@gmail.com', '$2y$10$qT4xqPDcX24WkGNGEci5/e8SCyHgC3baQ5z9S9MVSQzQfi/kzsqS2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:10'),
(398, '1611521016', 'malik.lubis@gmail.com', '$2y$10$76RjK8aHseNN0Doym63r7OgneHguPf6OYYyURhjkWsok2tXpsaKoq', 2, 1, 'avatars-5c4e8de6c421f.jpeg', 1, 'NpIlJ1n0mBNqYK5o5NvynswmYvp6niMn2JDypwhv5ooPgCvqrJwnXUYqbzOc', NULL, '2019-01-28 03:36:46'),
(399, '1611521017', 'mutyaoctaviany@yahoo.com', '$2y$10$3APoLJWqvautoS3FQSzF6exbeiAb10jDjoAgOThwDrl6IRjVZFw5G', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:11'),
(400, '1611521018', 'd.reaper04@yahoo.com', '$2y$10$7QaIne5.tKmfQp1mVS7l5.W4ewf6qLW3UhNScAYj5mHCitTnuNKGW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:11'),
(401, '1611521019', '', '$2y$10$ArdnSfY6y8nGF4ovBTJ7DuFPMvW80wYul.WZ43/t1fCWlSfVlLPRa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:11'),
(402, '1611521020', 'astriastri839@gmail.com', '$2y$10$F.KevCZ4stQ8HzDTE44hHeV5tJD57bpB2K5j1V3EYAvxdojYxxhXi', 2, 1, '', 1, 'T4z5QzuPmKQBxgPupTQ6adk3LGWiDHwh8anreMOZTFd4qyIUtBXvu5PHpgo7', NULL, '2018-11-10 22:38:11'),
(403, '1611521021', 'fajarwp58@gmail.com', '$2y$10$LFAi1KWH/8Us5GjMQbcwY..3uSLR6VmiigEoSS9VaII5jZ6.ri.c2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:11'),
(404, '1611521022', 'yorizka30@gmail.com', '$2y$10$/9vkbd7eQXTjazBx7TkHgOCtBHNm3zBLA.BAE8n2asAWkEwmBo5Oq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:11'),
(405, '1611521023', 'shintamelanyanwar@gmail.com', '$2y$10$rRp2sdzPfMAxsO1CrL8tgewAT9mRotYWoPzzpUZkaLOWqdwJtNUi.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:11'),
(406, '1611521024', 'reycarisnametty@gmail.com', '$2y$10$Tm9EgnnOMqIlJwjjmPjrZegNB6A5QM7B0fX38I9uUJMqz9iR6w/xS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:12'),
(407, '1611522001', 'adityaw09@gmail.com', '$2y$10$pbOlvDmpsb.S7WIi3BSg4.rnvm5cnsikpCWturPGmfLZHAKak4X0m', 2, 1, '', 1, 'zkPQY1gSr5ss4OmF4IT8pClyyY96prQoe8DYpfBx4rkU4y25hZA06tViVRgN', NULL, '2018-11-10 22:38:12'),
(408, '1611522002', 'aqlipalala@gmail.com', '$2y$10$nS1bw0SoVfXAT/dP3c7L5.OmZBxl7NJMIM3cd37SaXQV3LGFR5eLm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:12'),
(409, '1611522003', 'abdul.afif999@gmail.com', '$2y$10$KluWTa/AL4n83AedlaJlHeMIK4UwNyX2Zr25kmSu2kyQJEWavZMSi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:12'),
(410, '1611522004', 'dira_nda@gmail.com', '$2y$10$QTV3/qGZV.K.4pD1QT1EeOURDdIXyRiTO8Q6SZnRproUUpCVOr2fW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:12'),
(411, '1611522005', 'otosakayuu1@gmail.com', '$2y$10$rzWBeUSR0ctNCMFyfgByhe9ZEZ6K6OUqPOxC3Za9tWm/xdIZvJYoW', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:12'),
(412, '1611522006', '', '$2y$10$DAcW4w.s7vzeOn8nTu/x2.U3x0B.7rgZKOX9wENLYZa/2zTCPQ3Gi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:12'),
(413, '1611522007', 'waperdana87@gmail.com', '$2y$10$IcNpe9Qh7r7G9ZkMsENXGemX33v96B.lz.GsK5G2G1cbrbh1ote3q', 2, 1, '', 1, 'b9kQG1Sg8V9fsuZXyhLR0UBBoMaaV0O0Rmq10LQ2U1qzDVCGjJntBw9Fy2gV', NULL, '2018-11-10 22:38:12'),
(414, '1611522008', 'Inha2kamhy15@gmail.com', '$2y$10$IYc7b4sJPvHIsRaMIGCAHuIFsU5OP5ETBJVHSbH6wTg.LU9F7qIue', 2, 1, 'avatars-5bea4e7fc1b39.jpeg', 1, '5ztpw1w5pvagr9ts2HZ4k1cUJufQyCmTMxQ0ITL8VzMLrDMGCd6MFVbp2Re1', NULL, '2018-11-13 02:39:37'),
(415, '1611522009', 'apakadin@gmail.com', '$2y$10$5SX7T2xVuFImw.ldtCvQt.upH1CbNWlVm6N826lrVfamx7yocyScS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:13'),
(416, '1611522010', 'finsoesilo@gmail.com', '$2y$10$.hCelqlf13NYsEezjn649ever9caVB6Ac4R8vCjJ1067tQZLN7slm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:13'),
(417, '1611522011', '', '$2y$10$Hzt.ICYr1V3Q5JjjyK4ko.lYi16Z4800elUg5BlrJLQ0bwzdxZxFS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:13'),
(418, '1611522012', 'darkrenshandev@gmail.com', '$2y$10$Ue2IMdYVW6yz5jxkmVd1auv82a3NKN5BgsShSmaJh2eKr.fkMO4gy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:13'),
(419, '1611522013', 'meysaputri2405@gmail.com', '$2y$10$.mrZeehoYc2TQObVcdUHoOBveMKsRCKPI9QhTxtNyy.7yC5KWHcsy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:13'),
(420, '1611522014', 'faresiladara@gmail.com', '$2y$10$qFMz2b21vL/V/O7GtGKNJOCWEKrEwJrctc/yr.uxW8zYppjRIQCoG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:13'),
(421, '1611522015', 'auliaansharifathurrahman@gmail.com', '$2y$10$oa1iE5dE47r0b0rRsqpHXeL/f6PNQ.R8pTJ27XUlAL9rM/Gkck2sy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:13'),
(422, '1611522016', 'affanhanafiah@gmail.com', '$2y$10$/CgJv8rHYO1G75GEkAdVQezWLFYj3VA0NxTiDMOl9tysbRWk85DOm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:13'),
(423, '1611522017', 'dodi.rizaldi02@gmail.com', '$2y$10$/m9u3MxfpdUsj5WFLHtjUegN09YZc9C2BvJrABk/qtWXPENKr7Qn.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:14'),
(424, '1611522018', 'anggitdoanx5@gmail.com', '$2y$10$Z8KgAgxKSt2GCY9oleqOse5rOaWPDE7JQwv8tmctUV13c/A9sMLwa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:14'),
(425, '1611523001', 'garciafhalma28@gmail.com', '$2y$10$KB2Ljooz4WzA/aDubxPPbOLb93vJuGeokvTS3xOTYddhBZ94.Cuh2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:14'),
(426, '1611523002', 'ldhani@outlook.com', '$2y$10$bBdvT2Mz4yfdD0S8008gO.NIGzsFEHm4ndVDRvS4rMPY0KKZCo272', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:14'),
(427, '1611523003', 'krarb.arb@gmail.com', '$2y$10$NBtZjNMu248D2bZviXc3Wesn8Lpp0p5bfSu9tCR9AK3o3zfMxVryS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:14'),
(428, '1611523004', 'fuad6755@gmail.com', '$2y$10$Fp0eaxiDoghtrvHuTgPxAO/iiSS9AkmS6HbWa.dOAX81ZqqDNAfUe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:14'),
(429, '1611523005', 'febrialgani@gmail.com', '$2y$10$uBNGah/0EfSq9jh58ZWhduJY5xau4ZYbXK6nW9VBjPgBfNQX4o3m.', 2, 1, 'avatars-5c4e8dd1a76c7.jpeg', 1, 'r87ZN8mmn7XFV1mXlj8Z42VUidVVYpE6zNKZiabYnWyzifmyAH7d56ZBU06G', NULL, '2019-01-28 03:36:26'),
(430, '1611523006', 'farelaleski@yahoo.co.id', '$2y$10$eW0OaT63P5RcV1w6hUeG8u0SCl0D..6S7gfhhiiaH5XiHZ0jlgaDi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:14'),
(431, '1611523007', 'ilfazakia@gmail.com', '$2y$10$Q/6YttBFlKleqDjdwTjnmeCg6vsxQpQdRsbT5qfbGJLtDBlVEbT7e', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:15'),
(432, '1611523008', 'alvi.yesri@yahoo.com', '$2y$10$4ZHHS3R04IWWyl7VUoOYTONoPe82rCpwQ0FYx9f0dGx5r1FLp3a2K', 2, 1, '', 1, 'CH6BLjRh6rlCazG6XOTIpCNbIl7fIV36WqPmEmiSaiGMGdof1gmQ3w0DZ5CY', NULL, '2018-11-10 22:38:15'),
(433, '1611523009', 'annisanurgustia14@gmail.com', '$2y$10$OjQsEssBhoH0cWRYcF.r2eITBNdk1DPcXxJl3cF/NXYdeANapmKS2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:15'),
(434, '1611523010', 'ishaneemara.in@gmail.com', '$2y$10$bbrm1YrWbcOxhWfQOCzXM.7UawcMsYfuZESipyi7GC7IUt.jxsLFq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:15'),
(435, '1611523011', 'amandasaskia46@yahoo.com', '$2y$10$qFHhAjiM62Y4r/zgGOFGUeBgFT5656RhnvF5YjB8CzJ.WcB7wti2e', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:15'),
(436, '1611523012', 'miftahulasraf24@gmail.com', '$2y$10$ma.f1tRrE.9yCiWcqx4pHuIUeFc06pq2qBteUeFPQjjJ4xAuT7SH6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:15'),
(437, '1611523013', 'rzyunanda@gmail.com', '$2y$10$JWE/5ypWXVPHEUJdWR2uGOlVNPWpajmrJjdwtXI15.RLntRRyZ.VS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:15'),
(438, '1611523014', 'salsabillajp09@gmail.com', '$2y$10$A0hyFYRIdfb0s.eozT9RPunlt4qKKNp8X6P3vViA8T7FM7xN/7Fu.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:15'),
(439, '1611523015', 'northernosprey2013@gmail.com', '$2y$10$Q3shBLD4wQqXCPYuksIB4uo8kRABT3R2yEnqG0TActM1/fmjMtKkm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:16'),
(440, '1611523016', 'randajulio31@gmail.com', '$2y$10$vydmT/Xsv.I9gC25GzHdSeOBMPyieodzKPL2v4uiQ1PSUrbk7KDE.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:16'),
(441, '1611529001', '', '$2y$10$Xn9I5ZBwIyF9tiDFq/PE/.jYshDIvMk6cHdTqJgk8miULfQVpf3vm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:16'),
(442, '1611529002', 'murdayani1116@gmail.com', '$2y$10$NJ2h01qIqJD4Aifgqsix/.v5bknSQw3HBNUju1R8/NZd/sLLYq1Ii', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:16'),
(443, '1711521001', 'novanoviana10@gmail.com', '$2y$10$QOHdm8NC7AdTbHjQrrN/gOYZnMJ7sEekpoeLLHHVYVS.CajCBbbom', 2, 1, '', 1, 'O26u9hqSnjYvIva0Jn2tEL9WZyl26oQV9SndxZ6ppo2bhWN3ntKBibzE4ErQ', NULL, '2018-11-10 22:38:16'),
(444, '1711521002', 'erickoow@gmail.com', '$2y$10$EubHxSO/yiZP..oh70NQROZnq1kTMe6e57U.U4c2ZvuscKRJyT09q', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:16'),
(445, '1711521003', 'isadewi_sartika@yahoo.com', '$2y$10$nh32SgrGxc2c/6Wq/IT9A.LpGR5gxHYYqSXNk/2z6kLFiZeGjDLH2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:16'),
(446, '1711521004', 'shinobiaziz@gmail.com', '$2y$10$naL/TufqaYyAHDdEOr57kO.uopzgcI3IewGfc11ZW7s6VPKpJYSXa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:16'),
(447, '1711521005', 'wahyu.febrian18@gmail.com', '$2y$10$3nFwMECACyVreNRHkkxE4eqZ2Y7xYpwED5y7sVEOLOY7gN9NcSE0.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:17'),
(448, '1711521006', 'annisa.wistiar@gmail.com', '$2y$10$nQ9.D7Qw8hILfOKoCWezlu0wDUy0otX4tHO70FeIehWdIJ2TxZIZO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:17'),
(449, '1711521007', 'nadyaaulia294@gmail.com', '$2y$10$eV9Hh0kjNwE3Q5Hu2f4mNuQx/91DQGYw8u8WK9BNxOBTftfuzrI6i', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:17'),
(450, '1711521008', 'fadhilahanifapku@gmail.com', '$2y$10$MjfRBng43dPa5n.kCWYId.RfXbTLcC4p5G3EhymEisdgFGc2eSr8u', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:17'),
(451, '1711521009', 'dindasri_fatmasaragih@yahoo.com', '$2y$10$y/YmfUCrhCxTavadnCEBuuAH87y/jV/Syfq9Cd1olLgqazhPCyvrC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:17'),
(452, '1711521010', 'virapradita98@gmail.com', '$2y$10$A3Ot4XQakdidheaCPu7cx.MB926/7L1K2OYwyPP68XP5QJgOeEI1C', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:17'),
(453, '1711521011', 'rivahestaria@gmail.com', '$2y$10$l14bi3NbBgmkoHa1QWUl2uCq4cmNG6thFY/85G03xXyog5rvyovbG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:17'),
(454, '1711521012', 'nadila.syihaq8@gmail.com', '$2y$10$0SiXC7JOurw7TzgA8IUrTuvP7YgRfihEmDRPgpeFxxlau5fvFwU3e', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:17'),
(455, '1711521013', 'ronny161198@gmail.com', '$2y$10$kqN0aLp04ITdBmIHfSa.0..YBhxMuPW.iR.xvHlkXWgfyeYmj8Q.W', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:17'),
(456, '1711521014', 'yolandaapricilia03@yahoo.com', '$2y$10$qEnA34upfMmoBGmYKUOve.dh3lwYb2J/E01elGZuuRcYpiGgwYPqW', 2, 1, '', 1, '8meIst3PJ1Hfsf0B6GyLjnKSKqB2dF6TshBzy2V0Tk0pfZxqsQcYvrUXHxAs', NULL, '2018-11-10 22:38:18'),
(457, '1711521015', 'ovynandaputri08@gmail.com', '$2y$10$RXO65VrUwRCPwr5Dqj4Uxe.MKMpapT5gDm.E6BDpPaBJLrbcTRRKu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:18'),
(458, '1711521016', 'Anandamardhatillah23@gmail.com', '$2y$10$vP0xSqrBoN/hTpRXnSV7RO1SxVAFnT3RlQRkYZTtjcajuaOaTxcCC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:18'),
(459, '1711521017', 'Nadaa050598@gmail.com', '$2y$10$is1lSBvVJfZ2L6UCCiG/B.cDFdkmJfYAv8vVaCzNLhTyaN2bzh0KO', 2, 1, '', 1, 'RPhtT8UbbAyV4ge62RecGiW0FiUAtLkjXf7bVaEb7riDxparNj3gztdb3M6l', NULL, '2018-11-10 22:38:18'),
(460, '1711522001', 'sittimutiah20jp@gmail.com', '$2y$10$JmV.Ii9L1hMK8dcx1PBH9uQJhZ.2LQncm3ObSGtHGwfALOd0sBWSi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:18'),
(461, '1711522002', 'fararahmania5@gmail.com', '$2y$10$8hygBihdbvEpJliJYwCl6.1kDNwKBKtwvmI5K7e6oAq5PAh/u0.Qe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:18'),
(462, '1711522003', 'neoilhamakbar123@gmail.com', '$2y$10$.UPXvasWpUCpTvEepf2HBeK8wMizA5ZDwl3zIUW11aJJwbMLdA18y', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:18'),
(463, '1711522004', 'dioharvandy21@gmail.com', '$2y$10$6kSD5pH5D7hXMVHF.aDSlOHRG5tRSQpsz8TASCkzgWDgcOhp/5u7S', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:18'),
(464, '1711522005', 'harisikhsan7@gmail.com', '$2y$10$Vx69nTDeW08ZrlqrTiVryOog0yqDISFcF.T7XxE8PcPjr5h90049y', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:19'),
(465, '1711522006', 'faizp@protonmail.ch', '$2y$10$9oqV1I9cb2V5Ql4HGOAbQ.iySrIawUXzii3kytmiGlR0fZiU7kneS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:19'),
(466, '1711522007', 'fihsan20@gmail.com', '$2y$10$8/oW8.Sb2k2g4ppZfsyHluSoKAj.IgeohbJ2azMXGG4rrxX0GEcwa', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:19'),
(467, '1711522008', 'wahyudhika1999@gmail.com', '$2y$10$vK5.MiZrokcmUX/Et6ptCOQnof8CxIAk3.bV.9XyKfKCQQ8NmUORe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:19'),
(468, '1711522009', 'rifqihadiputra@gmail.com', '$2y$10$f0WusEHtLR1HeZ7WiQfwZuiXps2EwgTMCx2NGEkrM5BlWUXQMx2l.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:19'),
(469, '1711522010', 'azzahrafaradisi22@gmail.com', '$2y$10$1nIWR69g5.iJ858I8Htk9O/cht2uE5Yguh5J2ftLp9lODxYLf8rKe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:19'),
(470, '1711522011', 'sitihilda044@gmail.com', '$2y$10$cPT/KmFD0eOxdTgHRbpOQOcNlCcqVNNh8pTUmTPsO1SRVgpG765bK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:19'),
(471, '1711522012', 'afif.maulana.isman@gmail.com', '$2y$10$9TEUO5CYp7sEPu3wMGkYxumeigFRioTn7EknlREq0.DZBo6RDMgTC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:19'),
(472, '1711522013', 'furqanil.taqwa@gmail.com', '$2y$10$oknP/13GpFhGfUKHF9pc..dEZl65talp.FynHw5OnykLhsMr/lptm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:20'),
(473, '1711522014', 'muhammadhamdi702@gmail.com', '$2y$10$Ir19KSIdaKdSNNj3suPiiOV7tHdcv0ZOz0gDgRKh46LxbTJFn9sxy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:20'),
(474, '1711522015', 'vickyariiga2@gmail.com', '$2y$10$HvHMoM0bEx0B.93eW7vdteXZ6j5zhmZcYyS6FxrsYiKUmdjAp.haq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:20'),
(475, '1711522016', 'fikririzaldi00@gmail.com', '$2y$10$LwYZxxOcVDlHFe3f15Qdyu9LnhoXYku8/Pa.AsH6JCAEB9JaNsC4q', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:20'),
(476, '1711522017', 'arizi931@yahoo.com', '$2y$10$JDf6u7lt/mAizZZgvpOueOXpG9rUe13b6CUomScqRKjG.x1taffcS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:20'),
(477, '1711522018', 'febried99@gmail.com', '$2y$10$JJxbHqHgqx23E7lULXXD0Od6jxwcCFuQY29h3z4fHHhrtGBhyQWFm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:20'),
(478, '1711522019', 'ypf300498@gmail.com', '$2y$10$3UIHruJUBzLsHtNbAPXi4.b80QpP0HPTIvZe3l6oK6Aq0TB0RRSJe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:20'),
(479, '1711522020', 'fenymametri98@gmail.com', '$2y$10$qbon587BLLoC/ma8ZKoqf.GxoiUMTuRR04t6ofA5D9eZ3t6ZIPRyu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:20'),
(480, '1711522021', 'agungmhdsiddiq@icloud.com', '$2y$10$Vgny.7nRp3ZNlbOZdAgVvurIqueEx5Gu7cyXccqUyHm1fzaLmYv82', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:20'),
(481, '1711523001', 'annisa4599@yahoo.com', '$2y$10$nhzVHwzhibdGp.4DffE9H.saIO1DsApq1jWwvCWAcdNeVleTT73vu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:21'),
(482, '1711523002', 'hasbillah28@gmail.com', '$2y$10$TyYSCnqvOWPIbcsI22.Z1u8HEUkVT9LjCtFN6l5UQEZ6NtHwyqL9e', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:21'),
(483, '1711523003', 'yunitaerarefsi@gmail.com', '$2y$10$ZdZJ39fzAVETi2tesryyIeTtGP2ZWP9jQY455tszbiGN.BBwwYpVO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:21'),
(484, '1711523005', 'albi98arsi@gmail.com', '$2y$10$Hciu2K0ufsrmJObaXE09LOYTlhL52RoSYy8OoGcaX9sO3Heg0me36', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:21'),
(485, '1711523006', 'Yuliaagustin929@gmail.com', '$2y$10$g82dmySTc5Xi2bvvs219Iuk0NEZL3S.Li7mjO.0Nt6h/oM7tNWPYu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:21'),
(486, '1711523007', 'primaweasly@gmail.com', '$2y$10$pLqnziptm2eft1Dk41JZiuGUYydI1FE8PtA6785lJdWiSKr7ttZ9u', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:21'),
(487, '1711523008', 'fputikhairani@gmail.com', '$2y$10$igrWl8Jt9rX1xJdwft9M6uRahO20wxACv2G9LLQtWjgRidGIYo.H.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:21'),
(488, '1711523010', 'halimwardana7@gmail.com', '$2y$10$2OE8r9cJ2gKbLW8YsDTSQOJd6NqoG9xwRLrzDc41sh5Faxa/V.GxC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:21'),
(489, '1711523011', 'athifah27zahra@gmail.com', '$2y$10$jzajw96lj0ybWgnWGmDhd.hCpxLOo/bhuyAOjqUr743OMZyzxzshG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:22'),
(490, '1811521001', 'dynda.fitr31@gmail.com', '$2y$10$nqcyEp9kMpMQ3gFUDUjDT.E689/aUpisKdHnIB7JenrWGObCtNKZS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:22'),
(491, '1811521002', 'kifliadhinda@gmail.com', '$2y$10$ZfTGjR9.wvRyath3V0XGKeX1z/ig6ReJzTh7ag.HWl4Su3mVr.bTy', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:22'),
(492, '1811521003', 'lathifa.hardi11@gmail.com', '$2y$10$tnlqed.709nWmbmwAJKAou.TXdAngVp1a6.IB4C6LQmGefRlhfMEq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:22'),
(493, '1811521004', 'harleyadinama274@gmail.com', '$2y$10$eTIipYrwPdhglKQds8qeeOPZfCWzQ.va.Q5VH4.Y.oz8zIO7tRVC.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:22'),
(494, '1811521005', 'nesviramahdani1112@gmail.com', '$2y$10$Q0S9RMH3NMipnqv0Y0VBguFWNrLNjemn1Mtyh0tHvkjqEzFi88Uh2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:22'),
(495, '1811521006', 'annisakhairani224@gmail.com', '$2y$10$r7sQWWwE888aFGqcmfxTcusN7zMEC3jx7kggitEdJm9ucEUBboiAO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:22'),
(496, '1811521007', 'amandanoverdina22@yahoo.com', '$2y$10$5VSvA16emDAGvsaonRoCb.K3nqYwNTjoxiSuvu.vmMj/y3iRUYGXC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:22'),
(497, '1811521008', 'rivaldo_agusti@yahoo.com', '$2y$10$3/3rpfZVXegGeP9sAyLu0OCXYhMsvE4r4dBh0QbHITJ9AwYmbZoT2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:23'),
(498, '1811521009', 'mayangsari1231@gmail.com', '$2y$10$qaEFZVZjxse4CgR0j0V8j.5ZxQYxQI4s862G9j6KkKNMidZUg8DfS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:23'),
(499, '1811521010', 'aditir020100@gmail.com', '$2y$10$rpXFSTuWZPOcUTw6gqGF/.oXqgGEtr/.rZ8aCSngBlUtWNh590qum', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:23'),
(500, '1811521011', 'hanialwi081@gmail.com', '$2y$10$TElmdsptEfbkNXfDPTYtbOM/vVbNYRIDhnbMIu0iX4h1DHrrOgh9a', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:23'),
(501, '1811521012', 'nediaputrii@gmail.com', '$2y$10$1rydBC7HP4jnqDZta.P5weFT/XZSl6lm59J7Qn3IYfRWRDUS/v.OG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:23'),
(502, '1811521013', 'farizanadhilla3@gmail.com', '$2y$10$jqd32jO3VSmbRrubt5ggieNAEHfyCtZ69jXurlWCDEjWQTBTBS8cu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:23'),
(503, '1811521014', 'nadyamelanie15@gmail.com', '$2y$10$fB0SYk0wkKym4WjYSXdTE.Fk9Zd6BiRpAubET4FD34I0tz6tBT1FO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:23'),
(504, '1811521015', 'annisa.suprima@gmail.com', '$2y$10$7ikFAqR3DAjubFbelFxPPOJw4xqBojkz8dBPHmIvTIZO69Wf9oqWu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:23'),
(505, '1811521016', 'filzimuhaiminmanan@gmail.com', '$2y$10$Tvyu/8kXANj7wwBfcgD29uMI0BGrUc.Ba0NtlkjDEtE45ZshrlshS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:24'),
(506, '1811521017', 'nadhilahbunga@gmail.com', '$2y$10$i3RmJbqHQ1KxMxlcBCJOQeLuWBlUSC4ETxvOKKl0YO0TBllzuQuWi', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:24'),
(507, '1811521018', 'muhammadrafi13062000@gmail.com', '$2y$10$Ib/sKZ3ZngzDsWPIUA8O0uAm4DWgx0EUj5NEQYqi4CUFVsib7NC4u', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:24'),
(508, '1811522001', 'fahiravelia@gmail.com', '$2y$10$KLP8ETMRKFO8KAV5jAH8curLTXwmye1klYdR6JmqsNG52wpmOJ3TG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:24'),
(509, '1811522002', 'irfan.ramadhan.sip1@gmail.com', '$2y$10$udaLo8WYeIt4UfCb0FQVPOVWN9iT5bvaaljpUlhLkhkAyZkGS./M.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:24'),
(510, '1811522003', 'anggijulieta66@gmail.com', '$2y$10$4.uTbD/qlUflZYNNkzbmzuOb6aw/Tic/5Yvbd9eLUhnEij8hEkmX6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:24'),
(511, '1811522004', 'anissaatifa@gmail.com', '$2y$10$KV4aL8m1c6Ej/75VrN/Qwuqezi5fxxKUaew2Tk7Nr6/Fmd1PskyUm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:24'),
(512, '1811522005', 'ghaniarrasyid1111@gmail.com', '$2y$10$MH17Lt4dkhixbjuMV6B37uw/ZA1d0lObJnHzFWDhNaQog9Xfp2vu2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:24'),
(513, '1811522006', 'aldhihamdani92@gmail.com', '$2y$10$s/dpmtMoyX1IVQgJ.tjkZuYyrbuxQa6vZWTmueOrMXR/RVkADXL2O', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:24'),
(514, '1811522007', 'febbypiter27@gmail.com', '$2y$10$DWHIBZFmUHhbDy8y.O/cz.elIr89rKvHGwKrgM/r6GuzIRIZAZYMG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:25'),
(515, '1811522009', 'fadhlullahahmad26@gmail.com', '$2y$10$85kYLev01gD5sP1sLC2jNeaWymTYA3gko3wenQs9HTec83BFI8cT2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:25'),
(516, '1811522010', 'yopisaputra9@gmail.com', '$2y$10$dPRGfpJ7/QP4MQcJypUCxu56B3nZw1m8ekDeI.SYFf9Jtm9oBDfdO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:25'),
(517, '1811522011', 'personal.rahmathanafi@gmail.com', '$2y$10$sN4URCt62JCchZ7ZhxNI4u5U9qNAM5fVhIi0tPhVMDEQ0TC/QsjA.', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:25'),
(518, '1811522012', 'rifamaulina200@gmail.com', '$2y$10$NWXEuotLQ3VowTmx0sBZz.tqJ18XWlBXaXIwL73wqZdBJmyH7fqc6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:25'),
(519, '1811522013', 'sabrina.pratamaputri@gmail.com', '$2y$10$L55CRqb9iXLfYwtUgd9d2emt4TeBJx8fPkTMRNR8CUYdTfO4rTov2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:25'),
(520, '1811522014', 'puttysalima1@gmail.com', '$2y$10$.9CCt1aQSeH2JUSuuGIlPebyKi9FBaOisy3brzPNkL9nAWpGvjWUG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:25'),
(521, '1811522015', 'farassartikadewi1209@gmail.com', '$2y$10$djg1/EIoT4wYerNGZ9XfaO1CM1X2TTjTrYVWUCJOUj4If/4kpI/ii', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:26'),
(522, '1811522016', 'firhanz123@gmail.com', '$2y$10$.Kf29/wwYlSaxwenzFDdnusyd1MtazNVi1YXhKKYapE/F63w96JKe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:26'),
(523, '1811522017', 'fauzanpiliang13@gmail.com', '$2y$10$QiiWj1lMsro9R8dEshTyTelLW7UYgX6f8dz2.5zP6gMj6E7RIOJVu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:26'),
(524, '1811522018', 'mrmuhammadfachriananta@gmail.com', '$2y$10$hZvZVbcO3Tfz30IjVIEz1ORrhYmy7/qp47lY58hTSE8MrKjh.XhQK', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:26'),
(525, '1811522019', 'difah.putri@gmail.com', '$2y$10$T4YlmOL7mrmRHALzD.2n1eKIACHh3qOtsnq.WrDty28sLFluoFTnC', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:26'),
(526, '1811522020', 'nurul.afifah141199@gmail.com', '$2y$10$9gj5F4MnbWwGGl6pbalTp.xgdUeW96jDEdUAIxj1F1ivECrpxq2XO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:26'),
(527, '1811522021', 'nfadilan@gmail.com', '$2y$10$7.fpzIuzvIJuuh6lwogPZ.YJJwi8n/HggNY/GJAcm0pXOr2sZfabS', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:26'),
(528, '1811522022', 'daffaiklil1@gmail.com', '$2y$10$gPi9yu6BubT9TBtGqN3GJ.xc3by8W3YvzJbiUqXRT/tr.MewF3EUG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:26'),
(529, '1811522023', 'ringgoputra96@gmail.com', '$2y$10$uht.rLuOXJ3HXo5PK6RTtO1V7p3kId9elh9DnByU0VADhk5/h7Xv6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:26'),
(530, '1811522024', 'trafis.bling@gmail.com', '$2y$10$wVwgmgH.olddVeVjCJfmHOZB0WePRT7gVm0ktiIuEfA2yaPYN6JVe', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:27'),
(531, '1811522025', 'ranggiaureliyanto@gmail.com', '$2y$10$IGycoFytyzcf1I1Wo6vrb.MBp8.Sm26MQF1sFRB0hMOr/UU/K1LRu', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:27'),
(532, '1811522026', 'otra.farhan@gmail.com', '$2y$10$2xpZSmVBHfJWcI1S1t8aHevGbWcckLecYVvnmJM8EJ5BZRgeU8PMG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:27'),
(533, '1811522027', 'luzyarahmadillaa@yahoo.com', '$2y$10$D4wexgxwOI7nW8iDXJIWgOBRFTHiqSNdb1GaDrj3Df5rTYuw8Q8R2', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:27'),
(534, '1811523001', 'm.agungmahardhika@yahoo.co.id', '$2y$10$e/i2jUsWJ8ATCmvcfsaBdOHFhmAKXzzCG2lgBybRwr4lAKUf5vDKq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:27'),
(535, '1811523002', 'diozahfran@gmail.com', '$2y$10$gNnN7C7ZwntBHlocnn1tEurVYt0WwogK/uUp7BaChR4wBqGxHr/9q', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:27'),
(536, '1811523003', 'hasyarona1711@gmail.com', '$2y$10$wBmsL9FtfUzO5FVc.NNvVOCO2pyjEUXnwYT6razUerREVkmVVojwO', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:27'),
(537, '1811523004', 'fandyakbar99a@gmail.com', '$2y$10$YD37e0kRbj4wKIemDHkP5eu0Eha9dtK48Be4NhJ3CBOM5cLPmr2Va', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:27'),
(538, '1811523005', 'hifzhonaln@gmail.com', '$2y$10$WNpsKJg5gcHx82pcD9eGHerbhq3teoU2BqIgYOSGpTIf50eiYYSTq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:28'),
(539, '1811523006', 'maridho3@gmail.com', '$2y$10$st2J5QGeHOU3n.4Y.8F4P.66tBWDe3wrFz.eRS9NwrijbHtLJaLma', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:28'),
(540, '1811523007', 'iqbalmubarak212@gmail.com', '$2y$10$cmMObvWeRlJgJ9hlzAzsvepn9hO4fHy607w5su1Hb83szNuHZo55u', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:28'),
(541, '1811523008', 'aulianazhira3118@gmail.com', '$2y$10$RzUL7m/OP0NbWkqipJwowOy.U5WtYK2UmWM4xoI6Yn4KFVc2q0cB6', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:28'),
(542, '1811523009', 'daniaclarasinta@gmail.com', '$2y$10$WEWbu2CoBRG/z8ZyN5l2LOT1Zbbzw4.fbk1zpcX8imq.jSAG6Ikbq', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:28'),
(543, '1811523010', 'hanifahsalma2000@gmail.com', '$2y$10$YVdawMrESRFbIkwZuWNWQeuSUbUPiBIgTPHFRvkzQCPJ7arjHwhAm', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:28'),
(544, '1811523011', 'achmadnabil1999@gmail.com', '$2y$10$XstFQ2YaFPE131bdhB7/Vez6j.OoSLlln8QSQtUJGhNBJTFO9Pw26', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:28'),
(545, '1811529001', 'elindaravindha@gmail.com', '$2y$10$qX2icLiY.Q8RnygJ6d/Vuuq27lRBs77omtTnVG7TOuvTdSWKm0yOG', 2, 1, '', 1, NULL, NULL, '2018-11-10 22:38:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `harian`
--
ALTER TABLE `harian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mhs` (`mhs_kp_id`);

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kp`
--
ALTER TABLE `kp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instansi_id` (`instansi_id`),
  ADD KEY `status_proposal` (`status_proposal`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa_kp`
--
ALTER TABLE `mahasiswa_kp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_mahasiswa_2` (`mahasiswa_id`,`proposal_id`),
  ADD UNIQUE KEY `kp` (`mahasiswa_id`,`proposal_id`),
  ADD KEY `id_mahasiswa` (`mahasiswa_id`),
  ADD KEY `pembimbing` (`pembimbing`),
  ADD KEY `id_proposal` (`proposal_id`),
  ADD KEY `status` (`status`),
  ADD KEY `status_2` (`status`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `status_kp`
--
ALTER TABLE `status_kp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_proposal`
--
ALTER TABLE `status_proposal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `harian`
--
ALTER TABLE `harian`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kp`
--
ALTER TABLE `kp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mahasiswa_kp`
--
ALTER TABLE `mahasiswa_kp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status_kp`
--
ALTER TABLE `status_kp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `status_proposal`
--
ALTER TABLE `status_proposal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `harian`
--
ALTER TABLE `harian`
  ADD CONSTRAINT `harian_ibfk_1` FOREIGN KEY (`mhs_kp_id`) REFERENCES `mahasiswa_kp` (`id`);

--
-- Constraints for table `kp`
--
ALTER TABLE `kp`
  ADD CONSTRAINT `kp_ibfk_1` FOREIGN KEY (`instansi_id`) REFERENCES `instansi` (`id`),
  ADD CONSTRAINT `kp_ibfk_2` FOREIGN KEY (`status_proposal`) REFERENCES `status_proposal` (`id`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `mahasiswa_kp`
--
ALTER TABLE `mahasiswa_kp`
  ADD CONSTRAINT `mahasiswa_kp_ibfk_1` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `mahasiswa_kp_ibfk_2` FOREIGN KEY (`pembimbing`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `mahasiswa_kp_ibfk_3` FOREIGN KEY (`status`) REFERENCES `status_kp` (`id`),
  ADD CONSTRAINT `mahasiswa_kp_ibfk_4` FOREIGN KEY (`proposal_id`) REFERENCES `kp` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
