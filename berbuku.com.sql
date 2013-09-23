-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2013 at 07:50 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `berbuku.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `foto_produk`
--

CREATE TABLE IF NOT EXISTS `foto_produk` (
  `id_foto_produk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `produk_id` int(10) unsigned NOT NULL,
  `image` text,
  `thumb` text,
  `default` enum('1','0') DEFAULT '0',
  PRIMARY KEY (`id_foto_produk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `foto_produk`
--

INSERT INTO `foto_produk` (`id_foto_produk`, `produk_id`, `image`, `thumb`, `default`) VALUES
(17, 31, 'uploads/produk/b4d240cafa660610ce0db71b58b0bbb8Muka_Market_Plac_5174b71bce34b.jpg', 'uploads/produk/thumb/thumb_b4d240cafa660610ce0db71b58b0bbb8Muka_Market_Plac_5174b71bce34b.jpg', '1'),
(14, 30, 'uploads/produk/2ed63bc65ff4515581988f562638e34dketikamusimgugurtelahtiba.jpg', 'uploads/produk/thumb/thumb_2ed63bc65ff4515581988f562638e34dketikamusimgugurtelahtiba.jpg', '1'),
(3, 32, '', '', '1'),
(19, 34, 'uploads/produk/63bfa0a7da07e38f14a443893591116b3.jpg', 'uploads/produk/thumb/thumb_63bfa0a7da07e38f14a443893591116b3.jpg', '1'),
(16, 33, 'uploads/produk/ce7b86887d8b755917ad401f26085ec4mempelairemirez.jpg', 'uploads/produk/thumb/thumb_ce7b86887d8b755917ad401f26085ec4mempelairemirez.jpg', '1'),
(12, 36, 'uploads/produk/2237d65fdc26e23964fc981dc20ca57fstripesmeetdothijab.jpg', 'uploads/produk/thumb/thumb_2237d65fdc26e23964fc981dc20ca57fstripesmeetdothijab.jpg', '1'),
(18, 37, 'uploads/produk/2ed63bc65ff4515581988f562638e34dketikamusimgugurtelahtiba.jpg', 'uploads/produk/thumb/thumb_2ed63bc65ff4515581988f562638e34dketikamusimgugurtelahtiba.jpg', '1'),
(21, 38, 'uploads/produk/a8261d682c136d9c7e547532013424662.jpg', 'uploads/produk/thumb/thumb_a8261d682c136d9c7e547532013424662.jpg', '1'),
(24, 40, 'uploads/produk/4a8d07e1a3c741847bc3bbee175c194dhujandanpelangi.jpg', 'uploads/produk/thumb/thumb_4a8d07e1a3c741847bc3bbee175c194dhujandanpelangi.jpg', '1'),
(25, 41, 'uploads/produk/b18825fb4d370050c1065fa2c3de32b5AccidentallyFabulous.jpg', 'uploads/produk/thumb/thumb_b18825fb4d370050c1065fa2c3de32b5AccidentallyFabulous.jpg', '1'),
(26, 42, 'uploads/produk/243d76886322b4577930c087290b56ceagirllikemoi.jpg', 'uploads/produk/thumb/thumb_243d76886322b4577930c087290b56ceagirllikemoi.jpg', '1'),
(27, 43, 'uploads/produk/ed880ac6db114e3e71aff886644935bb12menit.jpg', 'uploads/produk/thumb/thumb_ed880ac6db114e3e71aff886644935bb12menit.jpg', '1'),
(28, 44, 'uploads/produk/7ffefc95b1d6f3cfb455d4c551263d96gogoboiband.jpg', 'uploads/produk/thumb/thumb_7ffefc95b1d6f3cfb455d4c551263d96gogoboiband.jpg', '1'),
(29, 45, 'uploads/produk/924094f82475d5c84de080f6301d1ce5komikbandkoplak.jpg', 'uploads/produk/thumb/thumb_924094f82475d5c84de080f6301d1ce5komikbandkoplak.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_kategori` varchar(50) DEFAULT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `deskripsi` text,
  `parent` int(10) unsigned DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `url` varchar(250) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kode_kategori`, `nama_kategori`, `deskripsi`, `parent`, `status`, `url`) VALUES
(5, 'AGM001', 'Agama Islam', 'Buku Tentang Keagamaan Islam', 1, '1', 'agama_islam'),
(4, 'AGM003', 'Agama Budha', 'Buku Tentang Keagamaan Budha', 1, '1', 'budha'),
(3, 'AGM002', 'Agama Hindu', 'Buku Tentang Keagamaan Hindu', 1, '1', 'hindu'),
(1, 'AGM', 'AGAMA', 'Buku Tentang Keagamaan', 0, '1', 'agama'),
(2, 'AGM004', 'Agama Kristen', 'Buku Tentang Keagamaan Kristen', 1, '1', 'agama_kristen'),
(6, 'AGM005', 'Agama Katholik', 'Buku Tentang Keagamaan Katholik', 1, '1', 'katholik'),
(7, 'AGM006', 'Kepercayaan Lainnya', 'Buku Tentang Kepercayaan Agama lain', 1, '1', 'kepercayaan_lain'),
(8, 'BKS', 'BAHASA DAN KAMUS', 'Bahasa Dan Kamus', 0, '1', 'bahasa_dan_kamus'),
(9, 'BKS001', 'Kamus Umum', 'Translate berbagai bahasa asing', 8, '1', 'kamus_umum'),
(10, 'BKS002', 'Pengkajian Bahasa', 'Granmmar Bahasa', 8, '1', 'tata_bahasa'),
(11, 'ANB', 'ANAK DAN BALITA', 'Buku untuk Anak dan Balita', 0, '1', 'anak_dan_balita'),
(12, 'ANB001', 'Cerita Anak dan Balita', 'Kumpulan buku Cerita anak dan balita', 11, '1', 'cerita_anak'),
(13, 'ANB002', 'Buku Kreatifitas', 'Buku Kreatifitas anak anak dan balita', 11, '1', 'buku_kreatifitas'),
(14, 'NVL', 'NOVEL', 'NOVEL', 0, '1', 'novel'),
(15, 'NVL001', 'Novel Remaja', 'NOVEL', 14, '1', 'novel_remaja'),
(16, 'NVL002', 'Novel Fiksi', 'NOVEL', 14, '1', 'novel_fiksi'),
(17, 'NVL003', 'Novel Motivasi', 'NOVEL', 14, '1', 'novel_motivasi'),
(18, 'SKL', 'SEKOLAH', 'SEKOLAH', 0, '1', 'sekolah'),
(19, 'SKL001', 'SMA', 'SEKOLAH', 18, '1', 'sma'),
(20, 'SKL002', 'SMP', 'SEKOLAH', 18, '1', 'smp'),
(21, 'SKL003', 'SD', 'SEKOLAH', 18, '1', 'sd'),
(22, 'SKL004', 'Kuliah', 'SEKOLAH', 18, '1', 'perkuliahan'),
(23, 'FSH', 'FASHION', 'FASHION', 0, '1', 'fashion'),
(24, 'FSH001', 'Busana Pria', 'Busana Pria', 23, '1', 'busana_pria'),
(25, 'FSH002', 'Busana Wanita', 'Baju Wanita', 23, '1', 'busana_wanita'),
(26, 'FSH003', 'Busana Anak Anak ', 'Busana Anak Anak', 23, '1', 'busana_anak_anak'),
(27, 'TKG', 'TEKNOLOGI', 'Teknologi', 0, '1', 'teknologi'),
(28, 'TKG001', 'Seri Pemrograman', 'Pemorgraman', 27, '1', 'pemrograman'),
(29, 'BSU', 'BISNIS DAN USAHA', 'Bisnis dan Usaha', 0, '1', 'bisnis_dan_usaha'),
(30, 'BSU001', 'Bisnis Kewriausahaan', 'KWU', 29, '1', 'bisnis_kewriausahaan'),
(31, 'KSH', 'KESEHATAN', 'Kesehatan', 0, '1', 'kesehatan'),
(32, 'RSP', 'RESEP', 'Resep', 0, '1', 'resep'),
(33, 'KMK', 'KOMIK', 'Buku gambar jepang', 0, '1', 'komik'),
(34, 'KMK001', 'Komik Anak Anak', 'anak anak story', 33, '1', 'komik_anak'),
(35, 'KMK002', 'Komik Dewasa', 'Komik Dewasa', 33, '1', 'komik_dewasa');

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

CREATE TABLE IF NOT EXISTS `option` (
  `id_option` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_opsi` varchar(50) NOT NULL,
  `value_opsi` text NOT NULL,
  PRIMARY KEY (`id_option`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `option`
--

INSERT INTO `option` (`id_option`, `nama_opsi`, `value_opsi`) VALUES
(1, 'store_option', 'a:2:{s:6:"slogan";s:40:"Toko Buku Online Terdepan dan Terpercaya";s:8:"sambutan";s:29:"Selamat Datang di Berbuku.com";}');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `tanggal_masuk` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_order` enum('0','1','2','3') NOT NULL,
  `total_item` int(10) unsigned DEFAULT '0',
  `total_biaya` int(20) unsigned DEFAULT '0',
  PRIMARY KEY (`id_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id_order`, `user_id`, `tanggal_masuk`, `status_order`, `total_item`, `total_biaya`) VALUES
(8, 10, '2013-05-19 12:10:58', '0', 1, 40000),
(7, 10, '2013-05-20 02:41:04', '3', 8, 360000),
(3, 8, '2013-05-14 13:44:11', '3', 9, 290000),
(4, 10, '2013-05-13 18:08:28', '3', 2, 90000),
(5, 11, '2013-05-14 02:08:11', '1', 6, 242000),
(6, 11, '2013-05-14 02:09:16', '0', 1, 45000),
(9, 1, '2013-05-18 02:08:41', '2', 300, 15000000),
(10, 10, '2013-05-16 01:31:02', '0', 7, 224000),
(11, 10, '2013-05-17 03:29:09', '2', 5, 130000),
(12, 10, '2013-05-17 04:00:53', '3', 1, 26000),
(13, 10, '2013-05-17 04:02:10', '0', 11, 352000),
(14, 10, '2013-05-17 15:17:04', '0', 8, 400000),
(15, 15, '2013-05-18 08:59:09', '1', 8, 376000),
(16, 10, '2013-05-19 03:14:47', '2', 9, 234000),
(17, 17, '2013-05-20 09:03:19', '3', 6, 252000),
(18, 10, '2013-05-20 16:47:07', '3', 4, 104000),
(22, 20, '2013-05-22 04:10:55', '3', 4, 152000),
(21, 19, '2013-05-22 02:17:38', '3', 10, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `order_data`
--

CREATE TABLE IF NOT EXISTS `order_data` (
  `id_order_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `produk_id` tinyint(3) unsigned NOT NULL,
  `kuantitas` int(50) unsigned NOT NULL DEFAULT '0',
  `subtotal` int(50) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_data`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `order_data`
--

INSERT INTO `order_data` (`id_order_data`, `order_id`, `produk_id`, `kuantitas`, `subtotal`) VALUES
(4, 2, 36, 1, 32000),
(29, 22, 34, 2, 52000),
(7, 4, 33, 2, 90000),
(28, 21, 37, 10, 500000),
(10, 5, 36, 1, 32000),
(11, 6, 33, 1, 45000),
(12, 7, 33, 8, 360000),
(15, 10, 36, 7, 224000),
(16, 11, 34, 5, 130000),
(17, 12, 34, 1, 26000),
(18, 13, 36, 11, 352000),
(30, 22, 37, 2, 100000),
(21, 15, 33, 3, 126000),
(22, 16, 34, 9, 234000),
(23, 17, 33, 6, 252000),
(24, 18, 34, 4, 104000),
(25, 19, 36, 100, 3200000);

--
-- Triggers `order_data`
--
DROP TRIGGER IF EXISTS `kurangistok`;
DELIMITER //
CREATE TRIGGER `kurangistok` AFTER INSERT ON `order_data`
 FOR EACH ROW BEGIN 
UPDATE produk SET stok = stok - NEW.kuantitas WHERE id_produk = NEW.produk_id;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kategori_id` tinyint(10) unsigned NOT NULL,
  `kode_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `penulis` varchar(300) NOT NULL,
  `penerbit` varchar(300) NOT NULL,
  `terbit` varchar(50) NOT NULL,
  `jml_halaman` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `jenis_cover` varchar(20) NOT NULL,
  `bahasa` varchar(50) NOT NULL,
  `url_produk` varchar(250) NOT NULL,
  `harga_jual` int(10) unsigned DEFAULT '0',
  `harga_baru` int(10) unsigned DEFAULT '0',
  `status_produk` enum('1','0') NOT NULL DEFAULT '1',
  `deskripsi_produk` text,
  `stok` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `kategori_id`, `kode_produk`, `nama_produk`, `penulis`, `penerbit`, `terbit`, `jml_halaman`, `berat`, `ukuran`, `jenis_cover`, `bahasa`, `url_produk`, `harga_jual`, `harga_baru`, `status_produk`, `deskripsi_produk`, `stok`) VALUES
(33, 16, 'NVL002-001', 'Remirezs dear', 'Yogi', 'mediakita', 'Januari 2013', 222, 500, '15 x 20', 'hardcover', 'indonesia', 'remirezs_dear', 45000, 42000, '1', 'Masa lalu Nick Ramirez diwarnai ketenaran, kekayaan, mobil-mobil cepat, dan wanita mana pun yang ia inginkan. Kini, ia terpaksa melepaskan semua kesenangan pribadi jika ingin bertemu saudara-saudara yang tak pernah ia ketahui sebelumnya. Syaratnya: carilah seorang wanita yang ingin kaujadikan istri, nikahi wanita itu, perolehlah anak darinya dalam waktu satu tahun.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nWalaupun banyak wanita yang sudah pernah menjadi kekasih Nick, hanya satu orang yang akan ia pilih sebagai mempelai. Wanita yang takkan menuntut apa pun jika suatu saat nanti mereka memutuskan bercerai. Tessa Steele, putri kandung pria yang pernah menjadi ayah tiri Nick. Pewaris kekayaan tambang Steele. Hanya saja, Tess juga menyimpan rahasianya sendiri. Rahasia yang akan membuat pernikahan penuh syarat ini tidak seperti yang dibayangkan Nick.', 300),
(34, 15, 'NVL001-002', 'Setahun Berkisah', 'Dwiky', 'gramedia', 'Februari 2013', 96, 200, '15 x 20', 'softcover', 'indonesia', 'setahun_berkisah', 26000, 0, '1', 'Aku mau tidak usah terlalu takut pada akhir dari sesuatu, tak peduli betapa besar dan berharganya sesuatu itu untukku, karena setiap akhir dari sesuatu adalah awal yang baru.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nAku mau tidak takut pada kemungkinan-kemungkinan pada masa depan.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nAku mau tidak takut memulai kembali.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nAku mau jatuh cinta lagi.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nHari ini mengajarkanku tentang semua itu.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nSelamat Tahun Baru.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nLove.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n****\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nTunjukkan dan rasakan cinta setiap hari, begitu katanya. Tidak peduli pada hari apa, musim apa, kamu selalu bisa merayakannya. Setahun Berkisah berisi delapan kisah cinta, delapan hari raya, dari delapan pencerita. Dengan keunikan tiap hari raya, latar belakang dan sudut pandang pencerita yang unik, kamu akan ikut dibawa merayakan cinta dengan banyak cara.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nAda banyak cinta pada musim-musim ini. Cinta yang mengharapkan banyak hoki dan peruntungan ketika Imlek, cinta yang menunjukkan banyak wajahnya pada Hari Kasih Sayang—Valentine—cinta berselimutkan misteri dalam seramnya suasana Halloween, sampai cinta yang menemui akhir sekaligus memulai langkah barunya di pergantian tahun.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nRayakan hari ini, karena besok selalu menjadi hari baru—mungkin pula, cinta yang baru.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n', 298),
(36, 5, 'AGM001-001', 'Syariah Hijab', 'Pandu', 'satuhati', 'Maret 2013', 402, 400, '15 x 20', 'softcover', 'indonesia', 'syariah_hijab', 32000, 0, '1', 'Muslimah masa kini membutuhkan banyak inspirasi dalam menerapkan jilbab untuk tampilan sehari-hari. Dengan aneka motif kerudung yang tersedia di pasaran, muslimah Indonesia benar-benar dilimpahi materi untuk bisa tampil syar’i sekaligus cantik.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nDalam buku ini dibahas beragam kreasi hijab dari motif stripes (garis-garis) dan dots (titik-titik) yang populer. Kehadiran kedua motif ini dalam setiap pergantian tren menunjukkan bahwa mereka cukup banyak penggemarnya.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nSelain deretan insprasi hijab dari materi stripes, dots, atau paduan keduanya, buku ini juga memuat tip dan trik yang akan membantu muslimah dalam menerapkan motif-motif ini sehingga tidak terkesan berlebihan, tetap cantik, sekaligus santun dan syar’i.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n', 100),
(37, 15, 'NVL001-001', 'Ketika Musim Gugur Telah Tiba', 'Zacky', 'novelkita', 'April 2013', 310, 350, '15 x 20', 'hardcover', 'indonesia', 'ketika_musim_gugur_telah_tiba', 50000, 0, '1', '', 188),
(38, 15, 'NVL001-003', 'Mother Keder', 'Viyanthi Silvana', 'Bukune', 'Mei 2013', 220, 500, '13 x 19', 'HardCover', 'Indonesia', 'mother_keder', 40000, 38000, '1', 'Pas gue lagi asyik milih-milih jaket di bagian new arrival, tiba-tiba nyokap gue teriak nyaring  banget, sampe-sampe SPB toko  itu kebingungan dan cenderung panik ketakutan. Mungkin SPB yang malang itu menyangka emak gue kerasukan setan Thailand.\r\n\n\r\n\n\r\n\n\r\n\nMami : KAKAAAAAAAKKKKK! Tunggu dulu, sebentar!\r\n\n\r\n\n\r\n\n\r\n\nGue : *bingung* Hah?! Kenapa, Mak? Eh, maap M.O.T.H.E.R!\r\n\n\r\n\n\r\n\n\r\n\nMami : Ngapain beli jaket ginian?\r\n\n\r\n\n\r\n\n\r\n\nGue : Soalnya, yang Valdy mau itu dah nggak dijual lagi, M.O.T.H.E.R. Dah barang lama katanya.\r\n\n\r\n\n\r\n\n\r\n\nMami : Tapi, kan, dia mintanya Adid*s! Kenapa kamu milih-milih yang ini, sih?\r\n\n\r\n\n\r\n\n\r\n\nGue  : *celingak-celinguk* HAH? Emang kenapa?\r\n\n\r\n\n\r\n\n\r\n\nMami : AH! Kamu dari tadi nanya kenapa-kenapa melulu… bosen! Adik kamu itu, kan, mintanya Adid*s, kenapa kamu milihnya merek Nu Aripal? Kalo merek NU ARIPAL mah di Jakarta juga banyak. Mami aja tiap ke mal selalu ngelihat di mana-mana jual merek NU ARIPAL!!! \r\n\n\r\n\n\r\n\n\r\n\nGue : *GEDUBRAAAAAKKKKKK*\r\n\n\r\n\n\r\n\n\r\n\nYa, Tuhaaaan…, gue tau kalo emak gue itu eror dari lahirnya, tapi gue nggak nyangka kalo beliau segininya. Mami menyangka tulisan NEW ARRIVAL (yang dibacanyaNU) adalah sebuah merek pakaian ternama!\r\n\n\r\n\n\r\n\n\r\n\nVivi boleh jadi punya semuanya—muka caem, otak tokcer, karier bagus, dan banyak lagi—tapi siapa yang sangka kalo setiap hari Vivi dibuat pusing sama nyokapnya yang… ehm, tulalit bin tulalat. Untuk mencurahkan cinta dan perhatian, nyokap Vivi emang punya cara yang nggak biasa. Mulai dari ikut-ikutan gaul ke mal, ngebangunin pagi pake cara ngeselin, sampai menyeleksi calon pacar Vivi dengan persyaratan yang bahkan tidak bisa dipenuhi seorang pangeran Inggris.\r\n\n\r\n\n\r\n\n\r\n\nYa…, seperti kata papatah; di balik anak yang sukses, selalu ada orangtua yang gengges.\r\n\n\r\n\n\r\n\n\r\n\nBerbagai kisah. Ada tentang Violette yang dibangkitkan dari kubur oleh ayahnya. Onryo, hantu\r\n\n\r\n\n\r\n\n\r\n\nyang berusaha membalas dendam kepada kekasihnya. Atau, kutukan Firaun yang memakan\r\n\n\r\n\n\r\n\n\r\n\nkorban para peneliti. Semua itu bukan untuk membuatmu takut, melainkan menantangmu untuk\r\n\n\r\n\n\r\n\n\r\n\nlebih berani. Apa kamu siap membacanya?\r\n\n\r\n\n\r\n\n\r\n\n', 300),
(40, 15, 'NVL001-004', 'Hujan dan Pelangi', 'Mikayla Fernanda, Ch Marcia, Idawati Zhang', 'PlotPoint', 'Mei 2013', 328, 500, '14 x 18', 'SoftCover', 'Indonesia', 'hujan_dan_pelangi', 54000, 45900, '1', 'Bagi Sabrina, Cammile adalah awan mendung di hari cerahnya. Oh, ralat, Camm ibarat hujan badai penuh petir yang bikin banjir mendadak. Kenapa? Karena sejak ada Camm hidupnya berubah total.Dia bukan lagi "queen bee" di sekolahnya, sahabatnya, Patrice, mendadak jadi musuh yang menyebalkan dan Aldo, pacar sekaligus bintang di sekolahnya, kini seperti orang yang tak dia kenal. Bahkan hubungan Sabrina dengan Ayahnya juga ikut berantakan.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nBagi Camm, Sabrina adalah pelangi di hari yang amat cerah.  Pelangi selalu mencuri perhatian dari indahnya cerah hari. Itulah Sabrina bagi Camm: cewek yang merasa dirinya pusat semesta dan titik dari segalanya. Bagi Camm, yang anak baru di SMA itu, justru ini saatnya untuk mengambil semuanya dari Sabrina. Tak ada juga yang dia pertaruhkan. Ibunya juga sudah meninggal dunia. Siapa yang bisa melarang anak sebatangkara?\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nHidup Sabrina dan Camm kini mendadak berada di bawah "langit" yang sama. Berselang-seling di antara dentam musik group dance, bel sekolah, dan rahasia besar di antara mereka berdua.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n', 200),
(41, 15, 'NVL001-005', 'Accidentally Fabulous', 'Lisa Barham', 'Bentang Pustaka', 'Mei 2013', 252, 500, '14 x 18', 'SoftCover', 'Indonesia', 'accidentally_fabulous', 34000, 28900, '1', 'Fashion Fantasy Camp! Nggak ada yang lebih keren daripada ini. Dua minggu pada musim panas dihabiskan untuk proyek fesyen! Aku dan Evie terbang ke L.A. demi mencurahkan bakat fesyen kami yang, ehem, tentu saja luar biasa.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nLalu, tanpa terduga, sesuatu yang spektakuler terjadi. Aku “ditemukan” oleh orang yang sangat penting—tunggu sampai kamu tahu sendiri. Apa ini saatnya aku menjadi selebritas? Benar-benar dikejar paparazi dan mendapatkan semua merek yang ingin kupunya?\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nTapi, luapan kegembiraan belum tentu bertahan lama. Setelah hari-hari yang Oh-So-Wow bergulir, selalu saja ada masalah. Ini berat! Saat aku harus mempertaruhkan persahabatanku dengan Evie!', 200),
(42, 15, 'NVL001-006', 'A Girl Like Moi', 'Lisa Barham', 'Bentang Belia', 'Mei 2013', 0, 500, '', 'SoftCover', 'Indonesia', 'a_girl_like_moi', 54000, 45900, '1', 'Tunggakan kartu kreditku yang gila-gilaan membuat Mom murka. Tanpa kompromi lagi, Mom menjatuhkan hukuman paling kejam yang pernah ada: gagal liburan ke Paris!\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nBisa kamu bayangkan betapa mengerikannya itu? Liburan yang sudah kuidam-idamkan selama setahun penuh harus digantikan dengan magang di perpustakaan kota. No! Aku harus melakukan sesuatu. Gadis cerdas, peramal fesyen, dan fashionista seperti diriku nggak mungkin melewatkan musim panas dengan berdiam diri di rumah.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nAkan kugunakan koneksiku untuk meraih pekerjaan magang impianku, bekerja untuk sebuah agensi peramal fesyen terkenal di New York. Demi apapun, ini harus jadi kenyataan!', 200),
(43, 15, 'NVL001-007', '12 Menit', 'Oka Aurora', 'Noura Book Publising', 'Mei 2013', 0, 500, '', 'SoftCover', 'Indonesia', '12_menit', 54000, 43200, '1', 'Elaine, sang pemain biola, yakin bahwa musik adalah segala-galanya. Namun, ayahnya menentang, menganggapnya sia-sia.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nTara, berusaha menguasai nada-nada snare drum meski memiliki keterbatasan pendengaran. Tetapi, luka masa lalunya terus menghantui.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nLahang, di tengah deritanya, berusaha memenuhi janji pada sang ayah. Namun, dilema membuatnya ragu melangkah.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nRene bermimpi membawa mereka, tim marching band yang dilatihnya, menjadi juara.  Meskipun mereka hanya datang dari sebuah kota di pelosok negeri. Meskipun orang lain menganggap itu mustahil.\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\n\r\n\nMereka berlatih ribuan jam hanya demi 12 menit penentuan. Mereka bertedad membuktikan pada dunia. Bahwa mimpi harus kau percayai agar terwujud. Dreaming is believing. Dan bersama-sama mereka akan menyerukan, Vincero! ', 200),
(44, 15, 'NVL001-008', 'Go..Go..Go..Boiband', 'Maulana Faris', 'MediaKom', 'Mei 2013', 128, 300, '', 'SoftCover', 'Indonesia', 'go..go..go..boiband', 20000, 17000, '1', 'Lum Ce Bok harus membentuk beincong band eh...boiband untuk berkompetisi dengan saudara kembarnya Dah Ce Bok. Siapa yang menang dia akan diangkat menjadi manager, yang kalah siap-siap untuk dipecat. Dengan penuh perjuangan jiwa dan raga (lebay banget gitu) Lum Ce Bok mencari personil-personil untuk direkrut buat menjadi anggota Boibandnya. Takdir mempertemukannya dengan anggota-anggota yang sangat ''berbakat''; Tajun Park si tukang pukul. Seong Kirie si tukang tahu, Bou Set Dah si tukang potong rambut, dan terakhir Sun Dong Yang seorang anak dari keluarga yang tajir banget. Hmm...ga kebayang gimana caranya ngatur personil seperti ini agar bisa sukses ngikutin kompetisi Boiband. Bener2 bikin LOL!!!', 150),
(45, 15, 'NVL001-008', 'Komik Band Koplak', 'Tom Capunk', ' Gradienmediatama', 'juni 2013', 230, 200, '19 x 23', 'hardcover', 'indonesia', 'komik_band_koplak', 23000, 0, '1', 'test', 200);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `level` enum('admin','user') NOT NULL DEFAULT 'user',
  `last_visit` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `status`, `level`, `last_visit`) VALUES
(1, 'administrator', 'admin@gmail.com', '200ceb26807d6bf99fd6f4f0d1ca54d4', '1', 'admin', NULL),
(15, 'ranggarakhmad', 'ranggarakhmad@gmail.com', '489018bedcc394a86da1b9025586fd0d', '1', 'user', NULL),
(16, 'oktavian', 'oktavian@gmail.com', 'ea4cf1c427c59d0c4f3527e9b7c6f727', '1', 'user', NULL),
(10, 'handitowira', 'handito.kw@gmail.com', '090c90593678b6d0a6b1cf760259b916', '1', 'admin', NULL),
(14, 'darindindi', 'darindindi@gmail.com', '64870db6698936bcb9d97b8d3625e5e3', '1', 'admin', NULL),
(12, 'dibajtyas', 'dibajtyas@gmail.com', 'da7b26537e2f204d1cc1321aeac8d0f0', '1', 'admin', NULL),
(19, 'nadiya', 'nadiya@gmail.com', 'ea4cf1c427c59d0c4f3527e9b7c6f727', '1', 'user', NULL),
(18, 'yuvita', 'yuvita@gmail.com', '6118237aa5b6f6eb5c3bbcdc54fefba5', '1', 'user', NULL),
(20, 'smktelkom', 'smktelkom@smktelkom.sch.id', 'ea4cf1c427c59d0c4f3527e9b7c6f727', '1', 'user', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `id_user_data` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(10) unsigned NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `alamat` text,
  `kode_pos` int(10) unsigned DEFAULT NULL,
  `propinsi_id` int(10) unsigned DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user_data`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id_user_data`, `user_id`, `nama_depan`, `nama_belakang`, `alamat`, `kode_pos`, `propinsi_id`, `phone`) VALUES
(14, 18, 'Yuvita', 'Novitasari', 'Jl. Danau Ranau IX', 65139, NULL, '082331012634'),
(16, 19, 'nadiya', 'ayu', 'Jalan Danau Ranau Sawojajar', 65163, NULL, '086756329848'),
(10, 10, 'Kurniawan', 'Handito', 'Jl. Danau Ranau', 65139, NULL, '082331012632'),
(8, 1, 'Kurniawan', 'Handito', 'Jl. Danau Ranau Sawojajar Malang', 65139, NULL, '082331012632'),
(12, 15, 'Rangga', 'Rakhmad', 'Jl. Danau Sulfat', 65139, NULL, '082312312398'),
(15, 14, 'Darin', 'Dindi', 'Jl. Danau Kepanjen raya', 65323, NULL, '085612378123'),
(17, 20, 'smktelkom', 'malang', 'jalan danau ranau sawojajar', 65163, NULL, '086527398309');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
