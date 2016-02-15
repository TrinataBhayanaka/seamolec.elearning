-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 16, 2016 at 02:55 AM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `seamolec_learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id_album` int(4) NOT NULL AUTO_INCREMENT,
  `nm_album` varchar(30) NOT NULL,
  `cover_album` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_album`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `nm_album`, `cover_album`, `create_date`) VALUES
(2, 'SEAOL2', '3ac67061f26fc68199c58bf8fe123311.jpg', '2016-02-15 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `banksoal`
--

CREATE TABLE IF NOT EXISTS `banksoal` (
  `idSoal` int(11) NOT NULL AUTO_INCREMENT,
  `soal` text,
  `pilihan1` tinytext,
  `pilihan2` tinytext,
  `pilihan3` tinytext,
  `pilihan4` tinytext,
  `jenissoal` tinyint(1) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  `jawaban` text,
  `idKursus` int(11) DEFAULT NULL,
  `idMateri` int(11) DEFAULT NULL,
  `idGrup_kursus` int(11) DEFAULT NULL,
  `n_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idSoal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `banksoal`
--

INSERT INTO `banksoal` (`idSoal`, `soal`, `pilihan1`, `pilihan2`, `pilihan3`, `pilihan4`, `jenissoal`, `keterangan`, `jawaban`, `idKursus`, `idMateri`, `idGrup_kursus`, `n_status`) VALUES
(1, 'chinese language greetings question', 'option a', 'option b', 'option c', 'option d', 0, 'Bla bla bla', '2', 1, 1, 11, 1),
(2, 'chinese language openings question', 'option a', 'option b', 'option c', 'option d', 0, 'Bla bla bla', '1', 2, 2, 11, 1),
(3, 'Soal bahasa indonesia satu', 'option a', 'option b', 'option c', 'option d', 0, 'Bla bla bla', '3', 4, 3, 12, 1),
(4, 'Soal bahasa indonesia dua', 'option a', 'option b', 'option c', 'option d', 0, 'Bla bla bla', '4', 3, 4, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catatan`
--

CREATE TABLE IF NOT EXISTS `catatan` (
  `idCatatan` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `tipe` tinyint(1) DEFAULT NULL COMMENT '1:qlosarium;2:quote',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `n_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idCatatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `catatan`
--

INSERT INTO `catatan` (`idCatatan`, `judul`, `keterangan`, `tipe`, `create_time`, `n_status`) VALUES
(1, 'Mandarin Language', 'Mandarin language is traditional language in china', 1, '2016-02-15 19:07:58', 1),
(2, 'William Edward Deming, the Father of Quality', 'Who ever rules standards, rules industries', 2, '2016-02-15 19:16:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `idFile` int(11) NOT NULL AUTO_INCREMENT,
  `namafile` varchar(255) DEFAULT NULL,
  `jenisfile` tinyint(1) DEFAULT NULL,
  `statusfile` tinyint(1) DEFAULT NULL COMMENT '1:login,2:free',
  `idMateri` int(11) DEFAULT NULL,
  `idKursus` int(11) DEFAULT NULL,
  `idGrup_kursus` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `files` varchar(255) DEFAULT NULL,
  `downloadCount` int(11) DEFAULT NULL,
  `n_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idFile`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`idFile`, `namafile`, `jenisfile`, `statusfile`, `idMateri`, `idKursus`, `idGrup_kursus`, `create_time`, `files`, `downloadCount`, `n_status`) VALUES
(1, 'chinnese language', 2, 1, 1, 1, 11, '2016-02-15 18:47:52', 'https://www.youtube.com/embed/gk4VlFycxmI', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id_gallery` int(4) NOT NULL AUTO_INCREMENT,
  `id_album` int(4) NOT NULL,
  `jns_file` varchar(7) NOT NULL,
  `nm_gallery` varchar(50) NOT NULL,
  `path_lokasi` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_gallery`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `jns_file`, `nm_gallery`, `path_lokasi`, `deskripsi`, `create_date`) VALUES
(3, 2, 'Foto', 'Seamolec Open Chinese Language Learning', 'c022fa3a27c3ad1620b944882e5a9656.jpg', '', '2016-02-15 17:00:00'),
(4, 2, 'Foto', 'Seamolec Open Indonesia Language Learning', '98c5ae13e7bf7fc50164e7c48050509e.jpg', '', '2016-02-15 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `grup_kursus`
--

CREATE TABLE IF NOT EXISTS `grup_kursus` (
  `idGrup_kursus` int(11) NOT NULL AUTO_INCREMENT,
  `namagrup` varchar(255) DEFAULT NULL,
  `syaratkelulusan` tinytext,
  `keterangan` text,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `n_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idGrup_kursus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `grup_kursus`
--

INSERT INTO `grup_kursus` (`idGrup_kursus`, `namagrup`, `syaratkelulusan`, `keterangan`, `create_time`, `n_status`) VALUES
(11, 'Open Chinnese Language learning', 'Mandarin Language', NULL, '2016-02-15 18:34:20', 1),
(12, 'Open Indonesian Language Learning', 'Indonesian', NULL, '2016-02-15 18:34:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kursus`
--

CREATE TABLE IF NOT EXISTS `kursus` (
  `idKursus` int(11) NOT NULL AUTO_INCREMENT,
  `namakursus` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `jeniskursus` varchar(45) DEFAULT NULL,
  `statuskursus` tinyint(1) DEFAULT NULL,
  `list_order` smallint(5) DEFAULT NULL,
  `statussoal` tinyint(1) DEFAULT NULL,
  `tipepenutupan` tinyint(1) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quota` int(11) DEFAULT NULL,
  `idGrup_kursus` int(11) DEFAULT NULL,
  `parentCourse` int(11) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `n_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idKursus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `kursus`
--

INSERT INTO `kursus` (`idKursus`, `namakursus`, `keterangan`, `jeniskursus`, `statuskursus`, `list_order`, `statussoal`, `tipepenutupan`, `start_date`, `end_date`, `quota`, `idGrup_kursus`, `parentCourse`, `image`, `create_time`, `n_status`) VALUES
(1, 'Greetings', 'Chinese greetings', NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 11, NULL, '6f7424f4d257c4a12dc5f48ab932aebe.jpg', '2016-02-15 18:42:10', 1),
(2, 'Openings', 'Chinnese openings', NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, 11, NULL, '4bdfa929320585cd728dd178257607d8.jpg', '2016-02-15 18:42:36', 1),
(3, 'Openings', 'Indonesian Openings', NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, 12, NULL, '72a2a6ef2a3b6894a04da6b3590bce7c.jpg', '2016-02-15 18:56:32', 1),
(4, 'Greetings', 'Indonesian Greetings', NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 12, NULL, '1479bc434553ec3a0af7cfed3dc19180.jpg', '2016-02-15 18:56:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE IF NOT EXISTS `materi` (
  `idMateri` int(11) NOT NULL AUTO_INCREMENT,
  `urutan` int(11) DEFAULT NULL,
  `namamateri` tinytext,
  `keterangan` text,
  `jenismateri` tinyint(1) DEFAULT NULL,
  `idKursus` int(11) DEFAULT NULL,
  `idGrup_kursus` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hirarki` int(11) DEFAULT NULL,
  `n_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idMateri`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`idMateri`, `urutan`, `namamateri`, `keterangan`, `jenismateri`, `idKursus`, `idGrup_kursus`, `create_time`, `hirarki`, `n_status`) VALUES
(1, 1, 'Chinnese Greetings', 'Chinnese greetings material', 0, 1, 11, '2016-02-15 18:44:13', NULL, 1),
(2, 1, 'Chinnese Opening Material', 'Material for chinnese Openings', 0, 2, 11, '2016-02-15 18:45:04', NULL, 1),
(3, 1, 'Sapaan', 'material for indonesian greetings', 0, 4, 12, '2016-02-15 18:58:26', NULL, 1),
(4, 2, 'Openings Material', 'Indonesian Openings Material', 0, 3, 12, '2016-02-15 18:58:53', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id_news` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  `posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gambar` varchar(255) NOT NULL,
  `brief` tinytext NOT NULL,
  `isi` text NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `judul`, `author`, `posted`, `gambar`, `brief`, `isi`, `status`) VALUES
(1, 'Teknologi RFID untuk Busway, DPRD ke Ahok: Jangan Coba-coba Terus', 1, '2015-07-02 12:36:29', '35006ec9d00d92fe45c89d29e907c327.jpg', 'Jakarta - Berbagai cara telah dilakukan Pemprov DKI dalam hal menjaga busway steril dari kendaraan lain bukan bus TransJ. Meski belum berhasil, Gubernur DKI Jakarta Basuki T Purnama (Ahok) enggan patah arang.\r\n\r\nKali ini, Ahok berencana akan menerapkan ba', '<p><b>Jakarta</b> - Berbagai cara telah dilakukan Pemprov DKI dalam hal \r\nmenjaga busway steril dari kendaraan lain bukan bus TransJ. Meski belum \r\nberhasil, Gubernur DKI Jakarta Basuki T Purnama (Ahok) enggan patah \r\narang.<br><br>Kali ini, Ahok berencana akan menerapkan bantuan teknologi\r\n berupa RFID (Radio Frequency Identificatin) di palang yang tersebar di \r\nsejumlah jalur khusus TransJ. Bagaimana tanggapan DPRD DKI terhadap \r\nrencana tersebut?<br><br>"Jangan coba-coba tapi harus punya kajian \r\ntersendiri karena sampai sekarang belum ada solusinya agar kendaraan \r\nbermotor tidak lewat busway. Tapi perlu diuji dulu efektifitas anggaran \r\nyang digunakan, harus ada uji coba," kata Ketua Fraksi D yang membidangi\r\n Pembangunan di DPRD DKI, Mohamad Sanusi, saat dihubungi detikcom, Senin\r\n (15/6/2015).<br><br>Menurut politisi Gerindra itu, Pemprov harus \r\nmempertimbangkan baik-baik sistem yang akan diterapkan nantinya. Sebab, \r\napabila sistem kebijakan yang diterapkan kerap berubah-ubah tidak akan \r\nmembuat para pengguna kendaraan pribadi jera apalagi takut menerobos \r\nbusway.<br><br>"Pertimbangan-pertimbangan itu perlu dalam penggunaan \r\nAPBD, jangan ganti-ganti terus. Ya mudah-mudahan dikaji dulu dengan \r\nbaik," sambungnya.<br><br>Sanusi juga menyebut pentingnya kerjasama \r\nantara Pemprov dengan pihak kepolisian. Namun, dia meminta agar para \r\npetugas bisa terus konsisten menilang penerobos jalur khusus itu.<br><br>"Langsung\r\n tilang di tempat. Kasus (penilangan) itu harus konsisten, jangan \r\nsekarang ada terus besok nggak ada lagi," kata Sanusi.<br><br>Menurut \r\ndia, selain meningkatkan hukum juga perlu diperhatikan standar pelayanan\r\n dari PT Transportasi Jakarta itu sendiri. Terutama dengan jarak \r\nkedatangan bus (headway) yang berdekatan secara otomatis dapat \r\nmengurangi upaya kendaraan lain masuk ke busway.<br><br>"Yang perlu \r\ndiperhatikan lagi mobilisasi bus yang konstan, sehingga orang tidak bisa\r\n masuk (busway). Orang merasa jalur biasa macet terus bus (di busway) \r\nnggak lewat-lewat, ya orang pilih lewat sana. Yang paling penting \r\nbagaimana standarisasi SOP tercapai, di mana setiap 5 menit sekali ada \r\nbus. Sehingga, orang tanpa dipaksa juga tidak akan melewati," \r\npungkasnya.<br><br>Sebelum ini, Ahok berencana akan mencoba terapkan \r\nRFID. Dengan sistem sensor yang terpasang di badan bus nanti, maka \r\npalang busway tidak lagi bisa sembaranagn dimasuki kendaraan lain. \r\nTerlebih, dengan separator yang rencananya juga akan ditinggikannya \r\nkelak.<br><br>"Kita mau pasangin nanti ada RFID (Radio-frequency \r\nidentification). Jadi bus itu tempelin, dia buka sendiri. Terus \r\nseparator mau kita tinggikan," kata Ahok di Balai Kota, Jl Kebon Sirih, \r\nJakarta Pusat, Kamis (11/6) lalu.<br><br>"Yang penting kita akan hantam semua. Terus kita akan tutup. Dia mau masuk harus buka tutup, buka tutup," sebutnya.\r\n<br><strong>(aws/ega)</strong></p>', 2),
(2, 'Permohonan Perkawinan Beda Agama Ditolak MK, Pemohon: Ya, Sudahlah....', 1, '2015-07-02 12:36:22', '5e481e440a29dd279be6475be4d1f633.jpg', 'Jakarta - Mahkamah Konstitusi (MK) menolak permohonan Damian dkk agar perkawinan beda agama diakui secara sah oleh negara. Setelah digelar persidangan yang cukup lama, MK berketetapan perkawinan beda agama adalah inkonstitusional.\r\n', '<p><b>Jakarta</b> - Mahkamah Konstitusi (MK) menolak permohonan Damian dkk \r\nagar perkawinan beda agama diakui secara sah oleh negara. Setelah \r\ndigelar persidangan yang cukup lama, MK berketetapan perkawinan beda \r\nagama adalah inkonstitusional.<br><br>Pemohon adalah Damian Agata Yuvens, Rangga Sujud Widigda, Varida Megawati Simarmata, Anbar Jayadi serta Luthfi Sahputra.<br><br>"Tapi\r\n ya sudahlah, hakim sudah memutuskan dan nggak ada yang bisa saya \r\nlakukan terhadap itu. Judicial review UU Perkawinan resmi selesai," \r\nkicau salah satu pemohon Rangga Sujud Widigda dalam akun twiternya \r\n@RanggaWidigda, Kamis (18/6/2015).<br><br>Menurut MK, bunyi pasal yang \r\nmenyatakan bahwa perkawinan dianggap sah apabila dilakukan menurut \r\nmasing-masing agama dan dicatat sesuai aturan perundangan, bukanlah \r\nsuatu pelanggaran konstitusi. MK berpendapat bahwa perkawinan tidak \r\nboleh dilihat dari aspek formal, tapi juga aspek spiritual dan sosial.<br><br>"Dari\r\n awal sebenarnya sudah berfirasat buruk pas tahu-tahu putusannya ngilang\r\n karena kalau putusannya hasilnya baik nggak mungkin bisa kejadian \r\nbegitu," ujar Rangga.<br><br>Dalam persidangan di MK ini, hadir para \r\ntokoh agama untuk memberikan masukan. Seperti perwakilan agama Hindu \r\nyang diwakili oleh Parisada Hindu Dharma dan mereka menetang pernikahan \r\nbeda agama ini dilegalkan. Hal ini karena dalam ajaran Hindu setiap \r\npasangan diharuskan menjalani sejumlah ritual yang mensyaratkan pasangan\r\n memeluk agama Hindu.<br><br>"Perkawinan beda agama menurut Hindu \r\ndinyatakan tidak bisa disahkan menurut wiwaha samskara sehingga bila \r\ndilakukan maka pasangan itu dianggap tidak sah dan selamanya dianggap \r\nzina. Sebagai konsekuensinya dianggap batal dan tidak dapat dicatat \r\nadministrasi di Dukcapil," ucap Ketua Komite Parisada, I Nengah Dana \r\ndalam sidang pada 24 November 2014 lalu.\r\n <br><strong>(asp/nrl)</strong></p>', 2),
(3, 'Webconference Perkuliahan Standardisasi di Universitas Brawijaya', 1, '2016-02-15 18:22:49', '39744f64c4d466c9595bf01a91cd7f47.png', 'Dr. Sucipto menjelaskan bahwa sangat penting bagi mahasiswa Jurusan Teknologi Pangan untuk paham mengenai standar, khususnya standar produk dan standar sistem manajemen pada Agroindustri, seperti CPPB-IRT, SSOP, GMP, HACCP, dan lain-lain', '<p style="text-align: justify;"><span style="font-size: small;">â€œStandar\r\n akan memberikan kemudahan, menjamin keamanan, kualitas, kehalalan, dan \r\nmemastikan kompabilitas produk. Lalu, bagaimana bila tanpa standar?â€. \r\nPernyataan tersebut disampaikan oleh Dr. Sucipto, STP.MP, Dosen Program \r\nStudi Teknologi Industri Pertanian Fakultas Teknologi Pertanian \r\nUniversitas Brawijaya, pada perkuliahan <em>webconference</em> 30 April 2015. Masih dalam rangkaian kegiatan perkuliahan jarak jauh dengan media <em>webconference</em>\r\n yang kali ini membahas tentang â€œStandardisasi di Sektor Agroindustri : \r\nMenjamin Keamanan dan Kehalalan Panganâ€ ini diikuti oleh 45 Mahasiswa \r\nSemester 4 Angkatan 2013 Jurusan Teknologi Pangan. di ruang TIK Gedung \r\nRektorat Universitas Brawijaya.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: small;">Mengutip\r\n dari pernyataan Mantan Sekjen PBB, Kofi Annan, Dr. Sucipto \r\nmengungkapkan, â€œStandard sangat penting untuk pembangunan berkelanjutan,\r\n mereka dapat membantu negara-negara untuk dapat membangun ekonomi dan \r\nmembangun kapasitas untuk bersaing di pasar global. Standar membuat \r\npengaruh positif dunia kita...â€ Penerapan standar merupakan tanggung \r\njawab bersama para <em>stakeholder</em>, diantaranya pemeritah, pakar, \r\ndan Perguruan Tinggi. Standar yang berlaku secara nasional di Indonesia \r\nadalah Standar Nasional Indonesia (SNI) yang dirumuskan oleh Panitia \r\nTeknis secara konsensus dan ditetapkan oleh BSN serta dikajiulang secara\r\n periodik. Dengan diberlakukannya SNI pada suatu produk, produsen akan \r\nmemahami persyaratan/ batas yang diterima pasar serta memberikan \r\nkepastian kualitas, keamanan, keselamatan dan kesehatan produk bagi \r\nmasyarakat sebagai pengguna produk.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: small;">Standardisasi\r\n sangat dibutuhkan untuk meningkatkan daya saing Indonesia dalam \r\nMasyarakat Ekonomi ASEAN (MEA) 2015, dimana pemerintah harus mampu \r\nmelindungi kepentingan rakyat dan mengupayakan aliran barang tersebut \r\ndapat meningkatkan kemajuan negara dan rakyat. Berdasarkan Grafik \r\nKetersediaan SNI terkait 12 Sektor Prioritas Masyarakat Ekonomi ASEAN \r\n(MEA) per Maret 2015, 26% SNI untuk produk berbasis agro, 13% SNI untuk \r\nperikanan, 7% SNI untuk produk berbasis kayu dan 3% SNI untuk karet dan \r\nproduk karet. Oleh karena itu, Dr. Sucipto menjelaskan bahwa sangat \r\npenting bagi mahasiswa Jurusan Teknologi Pangan untuk paham mengenai \r\nstandar, khususnya standar produk dan standar sistem manajemen pada \r\nAgroindustri, seperti CPPB-IRT, SSOP, GMP, HACCP, dan lain-lain.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: small;">Menurut \r\nSNI ISO 9000 tentangÂ  Manajemen Mutu, standardisasi berorientasi pada \r\nmutu. Mutu yang dimaksud mengenai spesifikasi produk agar dapat memenuhi\r\n kebutuhan pelanggan dan terbebas dari kegagalan. Untuk saat ini, semua \r\nsistem manajemen keamanan pangan berbasis HACCP yang diatur dalam SNI \r\n01-4852-1998 tentang Sistem Analisa Bahaya dan Pengendalian Titik Kritis\r\n (HACCP) serta pedoman penerapannya. Panduan penyusunan rencana sistem \r\nanalisa bahaya dan pengendalian titik kritis (HACCP) sesuai dengan \r\nPedoman BSN 1004-1999. Penetapan standar didasarkan pada syarat, \r\nkebutuhan dan keinginan konsumen yang disesuaikan dengan karakteristik \r\nbarang yang diproduksi.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: small;"> Selain \r\nstandar mutu pangan, perlu pula adanya standar kehalalan pangan baik \r\ndari bahan baku, proses maupun produk yang dihasilkan. Standar kehalalan\r\n di Indonesia ditetapkan oleh Majelis Ulama Indonesia (MUI) melalui \r\nfatwa.</span></p>\r\n<p><span style="font-size: small;"><img style="display: block; margin-left: auto; margin-right: auto;" src="http://www.bsn.go.id/assets/js/tiny_mce/plugins/jbimages/ci/uploads/images/gambar3.jpg" alt=""><br></span></p>\r\n<p style="text-align: justify;"><span style="font-size: small;">Pada \r\nakhir perkuliahan, Fadly Amri, Staff Sub Bidang Sistem dan Evaluasi \r\nDiklat menginformasikan beberapa referensi standardisasi seperti <em>e-learning</em> dan <em>flipbook</em>\r\n kepada para mahasiswa. Beliau menjelaskan bagaimana cara mengakses \r\nreferensi tersebut melalui website bsn.go.id. Selain itu dijelaskan pula\r\n bahwa perkuliahan melalui <em>webconference</em> ini juga pernah \r\ndilaksanakan di beberapa universitas yang diantaranya Universitas \r\nDiponegoro, Universitas Sriwijaya, Institut Teknologi Bandung, \r\nUniversitas Sebelas Maret, Universitas Gajah Mada dan Universitas Ubaya.\r\n Hasil rekaman <em>webconference</em> ini dapat diakses melalui website BSN.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: small;"> Perkuliahan ditutup dengan <em>teleconference</em> oleh Ibu Kristiati Andriani selaku Kepala Sub Bidang Sistem dan Evaluasi Diklat. <em>Telecoference</em>\r\n ini dilakukan oleh Ibu Kristiati Andriani dari rumah pribadi beliau di \r\nTangerang. Beliau menyampaikan bahwa standar sangat penting dalam Bidang\r\n Agroindustri serta memotivasi para mahasiswa untuk lebih tertarik dalam\r\n memandalami standar dalam bidang agroindustri. Ibu Kristiati Andriani \r\njuga mengucapkan terima kasih kepada Dr. Sucipto, STP. MP. dan mahasiswa\r\n Semester 4 Angkatan 2013 Jurusan Teknologi Pangan atas partisipasinya \r\ndalam perkuliahan <em>webconference </em>ini.</span></p><p style="text-align: justify;"><span style="font-size: small;"><br></span></p><p style="text-align: justify;"><span style="font-size: small;">sumber: http://www.bsn.go.id/main/berita/berita_det/6149/Webconference-Perkuliahan-Standardisasi-di-Universitas-Brawijaya-#.VZS3KEbTST8<br></span></p>', 2),
(4, 'Webconference Perkuliahan Standardisasi di Universitas Diponegoro ', 1, '2016-02-15 18:22:54', 'b58e034f840f5d1e2dbc4cf403a55d31.png', 'diujicobakan di perkuliahan standardisasi yang diampu oleh Dr. Bambang Purwanggono di Program Studi Teknik Industri Universitas Diponegoro di Semarang pada 19 Maret 2015. ', '<div style="text-align: justify;"><span style="font-family: Verdana;">Kondisi geografis dan demografi Indonesia yang begitu luar biasa, negara kepulauan dengan lebih dari 13000 pulau dan lebih dari 250 juta jumlah penduduknya, membuat BSN harus berinovasi dalam melakukan pembudayaan standar di masyarakat. Salah satu inovasi yang sedang dikembangkan adalah pengembangan sistem distance learning standardisasi.Sistem ini diharapkan mampu membuat upaya pembudayaan standardisasi dan penilaian kesesuaian baik dari sisi peningkatan pemahaman maupun keterampilan menjadi tersistematis, terstruktur dan massif. Nanti sistem yang berbasis internet ini dapat diakses dimanapun oleh siapapun yang ingin belajar standardisasi dan penilaian kesesuaian dengan perangkat gadget seperti PC, Laptop, smartphone dan tablet.</span><br><span style="font-family: Verdana;"></span><br><span style="font-family: Verdana;">Sekarang salah satu fitur, yaitu webconference sedang melalui rangkaian ujicoba. Rencananya fitur ini akan diujicoa di 12 perguruan tinggi di Indonesia yang mengajarkan standardisasi. Terdapat dua alternatif teknologi yang sedang diujicoba, yaitu ISO webex (fasilitas web based meeting, conference and training gratis dari ISO karena Indonesia menjadi anggotanya) dan teknologi multicross (web and broadcasting based).</span><br><span style="font-family: Verdana;"></span><br><span style="font-family: Verdana;">Untuk kali pertama, kedua teknologi tersebut diujicobakan di perkuliahan standardisasi yang diampu oleh Dr. Bambang Purwanggono di Program Studi Teknik Industri Universitas Diponegoro di Semarang pada 19 Maret 2015. Ujicoba berlangsung dalam pertemuan ke-3 Mata kuliah pilihan Standardisasi yang diikuti oleh 24 mahasiswa. Dalam kesempatan tersebut Dr. Bambang Purwanggono menyampaikan topik tentang pengembangan standar. Menurutnya prinsip pengembangan standar sangat sesuai dengan kebudayaan sudah lama berkembangan di masyarakat Indonesia, diantaranya konsensus yang sejalan dengan prinsip musyawarah mufakat, keterbukaan, koheren atau harmonis, efektif dan efisien dan berdimensi pembangunan.</span><br><span style="font-family: Verdana;"></span><br><span style="font-family: Verdana;">Deputi Bidang Informasi dan Pemasyarakatan Standardisasi, Dewi Odjar Ratna Komala, turun langsung untuk memantau dan memastikan uji coba teknologi ini dapat berjalan baik dan nantinya dapat digunakan. Wanita yang sudah 8 tahun lebih giat melakukan pembudayaan standar ini berharap pemahaman standardisasi dapat â€œmenetesâ€ secara terus menerus ke adik-adik mahasiswa oleh dosen-dosen melalui perkuliahan. Kami berkeyakinan bahwa standar adalah instrumen penting untuk meningkatkan daya saing, maka standar menjadi penting untuk menjadi bagian kompetensi SDM terutama adik-adik mahasiswa. Demikian ujar Dewi Odjar. Ingat bangsa ini dengan segala kekayaan alam yang dimiliki adalah bukan warisan nenek moyang melainkan titipan untuk anak cucu kita di masa depan dan standar adalah salah satu alat untuk menjaga titipan itu. (Har)</span></div><div style="text-align: justify;"><br><div style="text-align: left;"><span style="font-family: Verdana;">Sumber : http://bsn.go.id/main/berita/berita_det/6004/Webconference-Perkuliahan-Standardisasi-di-Universitas-Diponegoro#.VZTQVUbTST9</span><br></div><span style="font-family: Verdana;"></span></div>', 2),
(5, 'Webconference Perkuliahan Standardisasi di Universitas Surabaya ', 1, '2015-07-31 13:49:34', 'b875582f26c074220bef8623c492b4dc.png', 'topik Military Standard Acceptance Sampling (MIL â€“ STD â€“ 105) dan ISO/TR 10017:2003 Guidance on Statiscal techniques for ISO 9001 ', '<p style="text-align: justify;"><span style="font-size: small;"><em>â€œBagaimana menjamin proses produksi yang selalu memenuhi keinginan perusahaan?â€.</em> Pertanyaan tersebut menjadi pembuka dari perkuliahan melalui <em>web conference</em>\r\n oleh seorang Dosen Standardiasasi yaitu Mochammad Arbi Hidayat \r\nS.Si.,M.Si di Universitas Surabaya. Sebanyak 32 mahasiswa S1 dari \r\nprogram studi Teknik Industri mengikuti perkuliahan Statistical Quality \r\nControl dengan topik <em>Military Standard Acceptance Sampling (MIL â€“ STD â€“ 105) dan ISO/TR 10017:2003 Guidance on Statiscal techniques for ISO 9001 </em>selama\r\n kurang lebih 2 jam perkuliahan. Pertanyaan pembuka muncul karena proses\r\n produksi yang biasanya tidak selalu dalam kondisi â€œbaik-baik sajaâ€, \r\nterjadi kondisi yang bervariasi dari suatu proses produksi. Kondisi yang\r\n bervariasi tersebut terdiri dari variasi yang â€œalamiâ€ dari proses dan \r\nvariasi yang â€œtidak alamiâ€ karena penyebab dari luar proses.</span></p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="http://www.bsn.go.id/assets/js/tiny_mce/plugins/jbimages/ci/uploads/images/Arbi_UBAYA_Webex.png" alt=""></p>\r\n<p style="text-align: justify;"><span style="font-size: small;">Dalam perkuliahannya, Mochammad Arbi Hidayat menjelaskan bahwa seringkali SPC (<em>Statistical Process Control</em>)\r\n sulit diterapkan dengan beberapa alasan yang dilontarkan perusahaan \r\nseperti untuk menggambar peta kendali hanya menghabiskan waktu, lebih \r\npenting melatih operator, serta SPC diterapkan nanti saja jika sudah \r\nditemui banyak produk yang cacat. Padahal pentingnya SPC bagi suatu \r\nperusahaan adalah untuk mengendalikan proses produksi agar sesuai \r\nspesifikasi, stabil, membantu menemukan akar masalah dan <em>corrective action</em>. Pada dasarnya, SPC akan mampu berjalan sukses ketika manajer dan supervisor â€œmenyemangatiâ€<em>operator line</em>\r\n produksi, bahwa operator justru mempunyai peran paling penting untuk \r\nmewujudkan produk yang baik serta â€œkerja extraâ€ untuk melakukan analisis\r\n penyebab variasi produk.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-size: small;">Penemuan\r\n produk cacat dari hasil produksi, tidak dipungkiri juga diakibatkan \r\nkarena terlalu tinggi tingkat variasi yang ada pada produk tersebut. \r\nDari hasil analisis Mochammad Arbi Hidayat, menurunkan tingkat variasi, \r\nmemungkinkan untuk adanya penigkatan kualitas hasil produksi. Namun \r\nuntuk hasil produksinya kelak, tetap tidak mungkin suatu proses akan \r\nmenghasilkan produk yang sama sekali tidak berbeda. Perbedaan antar \r\nproduk bisa besar atau kecil, perbedaan tersebut yang dikenal dengan \r\nvariasi, itulah mengapa â€œtoleransiâ€ dibutuhkan.</span></p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="http://www.bsn.go.id/assets/js/tiny_mce/plugins/jbimages/ci/uploads/images/Screenshot_2015-04-28-07-54-39.png" alt=""></p>\r\n<p style="text-align: justify;"><span style="font-size: small;">Pentingnya\r\n menanamkan pembelajaran sistem manajemen mutu ISO 9001:2008 ini menjadi\r\n modal dalam meminimalkan tingkat variasi dari hasil proses suatu \r\nproduksi dipaparkan oleh Mochammad Arbi Hidayat. Pada umumnya masyarakat\r\n beranggapan bahwa ISO 9001 hanya sekedar membenahi administrasi \r\nperusahaan saja. Padahal, jika penerapan ISO 9001 bisa dioptimalkan, ISO\r\n 9001 akan menjadi alat yang <em>powerfull</em> untuk mengukur performa perusahaan.</span></p>\r\n<p style="text-align: justify;"><br></p>\r\n<p style="text-align: justify;"><span style="font-size: small;">Pada \r\nakhir perkuliahan, Kristiati Andriani selaku Kepala Sub Bidang Sistem \r\ndan Evaluasi Diklat menginformasikan beberapa referensi standardisasi \r\nseperti <em>e-learning</em> dan <em>flipbook</em> kepada para mahasiswa. Anne, sapaan akrabnya, menjelaskan bagaimana cara mengakses referensi tersebut melalui website <em>bsn.go.id</em>. Selain itu dijelaskan pula bahwa perkuliahan melalui <em>webconference </em>ini\r\n juga pernah dilaksanakan di beberapa universitas yang diantaranya \r\nUniversitas Diponegoro, Universitas Sriwijaya, Institut Teknologi \r\nBandung, Universitas Sebelas Maret, dan Universitas Gajah Mada. Hasil \r\nrekaman <em>webconference</em> ini dapat diakses melalui website BSN.</span></p><p style="text-align: justify;"><span style="font-size: small;"><br></span></p><p style="text-align: justify;"><span style="font-size: small;">Penutup perkuliahan ini, dilakukan secara <em>teleconference</em>\r\n oleh Dewi Odjar Ratna Komala, Deputi Bidang Informasi dan Pesyarakatan \r\nStandardisasi. Telecoference ini dilakukan oleh Dewi Odjar Ratna Komala \r\ndari PT Gapura Angkasa Branch Djuanda International Airport (Penerima \r\nSNI <em>Award</em> 2014). Dewi Odjar menyampaikan bahwa penerapan \r\nstandar untuk saat ini terutama saat kita menghadapi persaingan yang \r\nterbuka dengan berbagai negara, standar bukan lagi menjadi keharusan \r\nnamun menjadi kebutuhan yang harus dilaksanakan apabila kita mau setara \r\ndengan perusahaan lain di berbagai negara. Peran pendidikan \r\nstandardisasi menjadi penting untuk diajarkan kepada mahasiswa di \r\nPerguruan Tinggi, karena mereka sebagai generasi muda yang akan \r\nmelanjutkan pembangunan di Indonesia. (diklat)</span></p>\r\n<p style="text-align: justify;">Â </p>\r\n<span style="font-size: small;">Materi dan rekaman webconference dapat diakses <a href="https://drive.google.com/folderview?id=0BwS3hGlKI9r5fklZLW5CSkt2VElmUEdDNk94ZjR0WG9KcDd3VGhCc2NqSkZSQzZiX05sY28&usp=sharing" target="_blank"><strong>di sini</strong></a></span>', 2),
(6, 'Webconference Perkuliahan Standardisasi di Universitas Surabaya', 1, '2016-02-15 18:22:59', 'e893775a1d051b6d82f99a0852356600.png', 'topik Military Standard Acceptance Sampling (MIL â€“ STD â€“ 105) dan ISO/TR 10017:2003 Guidance on Statiscal techniques for ISO 9001', '<p style="text-align: justify;">â€œBagaimana menjamin proses produksi yang selalu memenuhi keinginan perusahaan?â€. Pertanyaan tersebut menjadi pembuka dari perkuliahan melalui web conference oleh seorang Dosen Standardiasasi yaitu Mochammad Arbi Hidayat S.Si.,M.Si di Universitas Surabaya. Sebanyak 32 mahasiswa S1 dari program studi Teknik Industri mengikuti perkuliahan Statistical Quality Control dengan topik Military Standard Acceptance Sampling (MIL â€“ STD â€“ 105) dan ISO/TR 10017:2003 Guidance on Statiscal techniques for ISO 9001 selama kurang lebih 2 jam perkuliahan. Pertanyaan pembuka muncul karena proses produksi yang biasanya tidak selalu dalam kondisi â€œbaik-baik sajaâ€, terjadi kondisi yang bervariasi dari suatu proses produksi. Kondisi yang bervariasi tersebut terdiri dari variasi yang â€œalamiâ€ dari proses dan variasi yang â€œtidak alamiâ€ karena penyebab dari luar proses.<br><br>Dalam perkuliahannya, Mochammad Arbi Hidayat menjelaskan bahwa seringkali SPC (Statistical Process Control) sulit diterapkan dengan beberapa alasan yang dilontarkan perusahaan seperti untuk menggambar peta kendali hanya menghabiskan waktu, lebih penting melatih operator, serta SPC diterapkan nanti saja jika sudah ditemui banyak produk yang cacat. Padahal pentingnya SPC bagi suatu perusahaan adalah untuk mengendalikan proses produksi agar sesuai spesifikasi, stabil, membantu menemukan akar masalah dan corrective action. Pada dasarnya, SPC akan mampu berjalan sukses ketika manajer dan supervisor â€œmenyemangatiâ€operator line produksi, bahwa operator justru mempunyai peran paling penting untuk mewujudkan produk yang baik serta â€œkerja extraâ€ untuk melakukan analisis penyebab variasi produk.<br><br>Penemuan produk cacat dari hasil produksi, tidak dipungkiri juga diakibatkan karena terlalu tinggi tingkat variasi yang ada pada produk tersebut. Dari hasil analisis Mochammad Arbi Hidayat, menurunkan tingkat variasi, memungkinkan untuk adanya penigkatan kualitas hasil produksi. Namun untuk hasil produksinya kelak, tetap tidak mungkin suatu proses akan menghasilkan produk yang sama sekali tidak berbeda. Perbedaan antar produk bisa besar atau kecil, perbedaan tersebut yang dikenal dengan variasi, itulah mengapa â€œtoleransiâ€ dibutuhkan.<br><br>Pentingnya menanamkan pembelajaran sistem manajemen mutu ISO 9001:2008 ini menjadi modal dalam meminimalkan tingkat variasi dari hasil proses suatu produksi dipaparkan oleh Mochammad Arbi Hidayat. Pada umumnya masyarakat beranggapan bahwa ISO 9001 hanya sekedar membenahi administrasi perusahaan saja. Padahal, jika penerapan ISO 9001 bisa dioptimalkan, ISO 9001 akan menjadi alat yang powerfull untuk mengukur performa perusahaan.<br><br>Pada akhir perkuliahan, Kristiati Andriani selaku Kepala Sub Bidang Sistem dan Evaluasi Diklat menginformasikan beberapa referensi standardisasi seperti e-learning dan flipbook kepada para mahasiswa. Anne, sapaan akrabnya, menjelaskan bagaimana cara mengakses referensi tersebut melalui website bsn.go.id. Selain itu dijelaskan pula bahwa perkuliahan melalui webconference ini juga pernah dilaksanakan di beberapa universitas yang diantaranya Universitas Diponegoro, Universitas Sriwijaya, Institut Teknologi Bandung, Universitas Sebelas Maret, dan Universitas Gajah Mada. Hasil rekaman webconference ini dapat diakses melalui website BSN.<br><br>Penutup perkuliahan ini, dilakukan secara teleconference oleh Dewi Odjar Ratna Komala, Deputi Bidang Informasi dan Pesyarakatan Standardisasi. Telecoference ini dilakukan oleh Dewi Odjar Ratna Komala dari PT Gapura Angkasa Branch Djuanda International Airport (Penerima SNI Award 2014). Dewi Odjar menyampaikan bahwa penerapan standar untuk saat ini terutama saat kita menghadapi persaingan yang terbuka dengan berbagai negara, standar bukan lagi menjadi keharusan namun menjadi kebutuhan yang harus dilaksanakan apabila kita mau setara dengan perusahaan lain di berbagai negara. Peran pendidikan standardisasi menjadi penting untuk diajarkan kepada mahasiswa di Perguruan Tinggi, karena mereka sebagai generasi muda yang akan melanjutkan pembangunan di Indonesia. (diklat)<br><br>Materi dan rekaman webconference dapat diakses di sini<br></p>', 2),
(7, 'SEAMEO Workshops on the New Education Agenda: 7 Priority Areas', 1, '2016-02-15 17:00:00', 'a3fd9593dc4dfb52031691aaefc07765.jpg', 'SEAMEO Workshops on the New Education Agenda: 7 Priority Areas, 16â€17 November 2015 in Jakarta, Indonesia', '<p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">SEAMEO Workshops on the New Education Agenda: 7 Priority Areas, 16â€17 November 2015 in Jakarta, Indonesia</p><p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">The meeting was participated by SEAMEO Centre Directors, Ministry of Education and Culture Indonesia, Indonesian teacher education institutions, Indonesia provincial quality assurance and education authorities, researchers from SEAMEO Centres and secretaries. The participants had the opportunity to share their Centreâ€™s flagship projects under the priority areas and were able to gain insights on the ministry of Indonesiaâ€™s ongoing education initiatives.</p>', 1),
(8, 'SEAMEO Centre Directors Meeting 2015 Convened', 1, '2016-02-15 17:00:00', 'b1613b5176d1578916ea27025d13722b.jpg', 'The annual meeting of the SEAMEO Regional Centre Directors this year was held on 8 â€“ 9 June 2015 at the S31 Hotel in Bangkok, Thailand. The meeting focused on actions taken on resolutions of the 48th SEAMEO Council Conference , such as the SEAMEO Online', '<p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">The annual meeting of the SEAMEO Regional Centre Directors this year was held on 8 â€“ 9 June 2015 at the S31 Hotel in Bangkok, Thailand. The meeting focused on actions taken on resolutions of the 48th SEAMEO Council Conference , such as the SEAMEO Online Capacity Building for Southeast Asian Member Countries and the Regional Activities of Celebrating the SEAMEO 50th Anniversary,<strong style="margin: 0px; padding: 0px;">Â </strong>and Ministerial Round Table Meeting in May 2015, as well as reporting on progress of major initiatives under the SEAMEO Strategic Plan 2011-2020. New initiatives, proposal, plan, and activities through the support of SEAMEO partners, collaborators and among SEAMEO Centres also discussed during the meeting.</p><p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">The CDM 2015 was followed by The Mid-Term Review Meeting on 10 June 2015 at Anantara Bangkok Riverside Resort & SPA in Bankok, Thailand to analyzed lessons learned through the implementation of SEAMEO Strategic Plan (2011-2020) and assessed the challenges.</p><p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">The Meeting was organized by the SEAMEO Secretariat and was attended by 83 participants, comprising 21 SEAMEO Centres/Network and the SEAMEO Secretariat, representatives from three SEAMEO Affiliate Members and nine Partners.</p><p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">Other meeting attendees include representatives from SEAMEO Affiliate Members, namely, the British Council, the University of Tsukuba, and Chain Education Association for International Exchange (CEAIE). Invited presenters and observers also participated including the Australian Academy of Technological Sciences and Engineering (ATSE), International Council for Education of People with Visual Impairment (ICEVI), EDC, Ministry of Education, Culture, Sports, Science and Technology (MEXT), Japan, ASEAN-China Centre(ACC), ASEAN Secretariat, Korean Educational Development Institute (KEDI), UNESCO Asia and Pacific Regional Bureau for Education, and UNICEF East Asia and Pacific Regional Office (EAPRO).</p><p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">The CDM serves as platform for discussion among SEAMEO Centres on programmatic and operational issues, as well as a venue to engage partners for collaborative initiative for the region. The result of CDM 2015 will be submitted to subsequent relevant SEAMEO meetings such as the SEAMEO High Officials Meeting and SEAMEO Council Conference. Relevant agenda items and agreements will also be presented to the Governing Boards of the SEAMEO Centres.</p>', 1),
(9, 'SEAMEO Signs MoU with Korean Education Development Institute (KEDI)', 1, '2016-02-15 17:00:00', 'c833ac23edc0efcd8738739a5560dded.jpg', 'Southeast Asian Ministers of Education Organization (SEAMEO) signed a Memorandum of Understanding (MoU) for its partnership with Korean Education Development (KEDI) on 21 May 2015 in Inchoen, Korea.', '<p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">Southeast Asian Ministers of Education Organization (SEAMEO) signed a Memorandum of Understanding (MoU) for its partnership with Korean Education Development (KEDI) on 21 May 2015 in Inchoen, Korea.</p><p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">Relationship between SEAMEO and KEDI started as early as in 2005, with project based partnerships with SEAMEO INNOTECH. Seeing the potential for further partnerships on mutual areas of interests, a series of discussions and meetings began in 2011 to identify key areas of collaboration.</p><p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">The four key areas of collaboration stated in the MoU are: (a) mobility and exchange of researchers and/or staff; (b) join research activities and publications; (c) mutual participation in regular meetings and other activities; and (d) exchange of academic materials and other relevant information. The signing marked a beginning of a broader and deeper relationship between SEAMEO and KEDI.</p><p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">Prior to the Signing, the SEAMEO Council approved the formalisation of the collaboration between SEAMEO and KEDI during the 48<sup style="margin: 0px; padding: 0px;">th</sup>Â SEAMEO Council Conference on 6 - 9 May 2015 in Chonburi, Thailand.</p><p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">Korean Educational Development Institute (KEDI) is a government-funded institute established in 1972 that performs research and related activities on educational policy to contribute to education development. KEDI is a Member Institute of National Research Council for Economics, Humanities, and Social Science affiliated to the Prime Minister of the Republic of Korea, and Based in Seoul, Republic of Korea.</p><p style="margin-top: 17px; margin-bottom: 17px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 19.2000007629395px;">Closer collaborations in education research and benchmarking studies will help both SEAMEO and KEDI deepen an understanding of best practices in education.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `idNilai` int(11) NOT NULL AUTO_INCREMENT,
  `nilai` int(11) DEFAULT NULL,
  `benar` int(11) NOT NULL DEFAULT '0',
  `salah` int(11) NOT NULL DEFAULT '0',
  `statusulang` tinyint(1) DEFAULT NULL,
  `statuskelulusan` tinyint(1) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idUser` int(11) DEFAULT NULL,
  `idGroupKursus` int(11) NOT NULL DEFAULT '0',
  `idKursus` int(11) DEFAULT NULL,
  `kodeSertifikat` varchar(50) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `n_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idNilai`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`idNilai`, `nilai`, `benar`, `salah`, `statusulang`, `statuskelulusan`, `create_time`, `idUser`, `idGroupKursus`, `idKursus`, `kodeSertifikat`, `data`, `n_status`) VALUES
(1, 100, 1, 0, 0, 1, '2016-02-15 19:47:58', 2268, 11, 2, 'ELS/1/XVI', 'a:2:{s:9:"testimoni";s:19:"Nice, very helpfull";s:16:"status_testimoni";i:0;}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE IF NOT EXISTS `soal` (
  `idSoal_user` int(11) NOT NULL AUTO_INCREMENT,
  `soal` text,
  `pilihan1` tinytext,
  `pilihan2` tinytext,
  `pilihan3` tinytext,
  `pilihan4` tinytext,
  `jenissoal` tinyint(1) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `jawaban` text,
  `jawabanuser` text,
  `idSoal` int(11) DEFAULT NULL,
  `idMateri` int(11) DEFAULT NULL,
  `idGrup_kursus` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idKursus` int(11) DEFAULT NULL,
  `attempt` int(11) DEFAULT '0',
  `attempt_date` datetime DEFAULT NULL,
  `n_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idSoal_user`),
  UNIQUE KEY `idSoal` (`idSoal`,`idUser`,`attempt`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`idSoal_user`, `soal`, `pilihan1`, `pilihan2`, `pilihan3`, `pilihan4`, `jenissoal`, `keterangan`, `jawaban`, `jawabanuser`, `idSoal`, `idMateri`, `idGrup_kursus`, `idUser`, `idKursus`, `attempt`, `attempt_date`, `n_status`) VALUES
(1, '1', NULL, NULL, NULL, NULL, NULL, 'a:1:{s:16:"id_generate_soal";s:1:"1";}', '1', '1', 2, 2, 11, 2268, 2, 1, '2016-02-16 02:47:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_log`
--

CREATE TABLE IF NOT EXISTS `tbl_activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `source` varchar(255) DEFAULT NULL,
  `datetimes` datetime NOT NULL,
  `n_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `tbl_activity_log`
--

INSERT INTO `tbl_activity_log` (`id`, `activity`, `description`, `userID`, `source`, `datetimes`, `n_status`) VALUES
(1, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 01:40:59', 1),
(2, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 01:41:09', 1),
(3, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 01:43:12', 1),
(4, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 01:45:07', 1),
(5, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 01:47:57', 1),
(6, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 01:53:39', 1),
(7, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 01:55:42', 1),
(8, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 01:59:14', 1),
(9, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 01:59:48', 1),
(10, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:00:24', 1),
(11, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:02:39', 1),
(12, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:03:11', 1),
(13, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:04:00', 1),
(14, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:04:06', 1),
(15, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:04:29', 1),
(16, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:04:39', 1),
(17, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:04:45', 1),
(18, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:04:52', 1),
(19, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:04:59', 1),
(20, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:05:08', 1),
(21, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:05:22', 1),
(22, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:05:29', 1),
(23, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:05:36', 1),
(24, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:06:11', 1),
(25, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:06:52', 1),
(26, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:07:16', 1),
(27, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:08:01', 1),
(28, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:09:59', 1),
(29, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:10:50', 1),
(30, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:14:53', 1),
(31, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:15:18', 1),
(32, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:16:50', 1),
(33, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:17:12', 1),
(34, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:18:28', 1),
(35, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:18:55', 1),
(36, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:19:45', 1),
(37, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:20:28', 1),
(38, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:20:40', 1),
(39, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:21:05', 1),
(40, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:21:49', 1),
(41, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:22:19', 1),
(42, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:22:42', 1),
(43, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:23:03', 1),
(44, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:23:52', 1),
(45, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:24:02', 1),
(46, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:24:09', 1),
(47, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:24:53', 1),
(48, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:29:37', 1),
(49, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:30:40', 1),
(50, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:31:05', 1),
(51, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:40:25', 1),
(52, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:40:34', 1),
(53, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:43:36', 1),
(54, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:44:01', 1),
(55, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:44:24', 1),
(56, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:46:20', 1),
(57, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:47:09', 1),
(58, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:48:29', 1),
(59, 'surf', 'landing home bsn', 0, '127.0.0.1', '2016-02-16 02:54:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_generate_soal`
--

CREATE TABLE IF NOT EXISTS `tbl_generate_soal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idGrupKursus` int(11) DEFAULT NULL,
  `idKursus` int(11) NOT NULL,
  `idMateri` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `soal` text NOT NULL,
  `generate_date` datetime NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `finish` int(11) NOT NULL DEFAULT '0',
  `attempt` int(11) NOT NULL DEFAULT '0',
  `n_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idGrupKursus` (`idGrupKursus`,`idUser`,`attempt`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_generate_soal`
--

INSERT INTO `tbl_generate_soal` (`id`, `idGrupKursus`, `idKursus`, `idMateri`, `idUser`, `soal`, `generate_date`, `start_date`, `end_date`, `finish`, `attempt`, `n_status`) VALUES
(1, 11, 0, 0, 2268, 'a:1:{i:0;s:1:"2";}', '2016-02-16 02:47:51', '2016-02-16 02:47:54', '2016-02-16 02:52:54', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quiz_setting`
--

CREATE TABLE IF NOT EXISTS `tbl_quiz_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxSoal` int(11) NOT NULL,
  `kategoriBaik` varchar(20) DEFAULT NULL,
  `kategoriCukup` varchar(20) DEFAULT NULL,
  `kategoriKurang` varchar(20) DEFAULT NULL,
  `waktu` int(11) NOT NULL,
  `idGroupKursus` int(11) NOT NULL DEFAULT '0',
  `idKursus` int(11) NOT NULL DEFAULT '0',
  `data` varchar(255) DEFAULT NULL,
  `n_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idGroupKursus` (`idGroupKursus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_quiz_setting`
--

INSERT INTO `tbl_quiz_setting` (`id`, `maxSoal`, `kategoriBaik`, `kategoriCukup`, `kategoriKurang`, `waktu`, `idGroupKursus`, `idKursus`, `data`, `n_status`) VALUES
(1, 1, '90', '70', '50', 5, 11, 0, NULL, 1),
(2, 1, '90', '70', '50', 5, 12, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_activity`
--

CREATE TABLE IF NOT EXISTS `tbl_user_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `kursusid` int(11) NOT NULL DEFAULT '0',
  `groupid` int(11) NOT NULL DEFAULT '0',
  `createdate` datetime DEFAULT NULL,
  `data` text,
  `otherid` int(11) DEFAULT '0',
  `n_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user_activity`
--

INSERT INTO `tbl_user_activity` (`id`, `userid`, `kursusid`, `groupid`, `createdate`, `data`, `otherid`, `n_status`) VALUES
(1, 2268, 1, 11, '2016-02-16 02:47:34', NULL, 0, 1),
(2, 2268, 2, 11, '2016-02-16 02:47:43', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(16) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jeniskelamin` tinyint(1) DEFAULT NULL,
  `tempatlahir` tinytext,
  `tanggallahir` date DEFAULT NULL,
  `pendidikan` varchar(255) DEFAULT NULL,
  `institusi` tinytext,
  `jenispekerjaan` varchar(255) DEFAULT NULL,
  `hp` tinytext,
  `alamat` text,
  `type` int(11) DEFAULT NULL COMMENT '1:admin,2:user',
  `salt` varchar(200) DEFAULT NULL,
  `login_count` int(11) NOT NULL DEFAULT '0',
  `email_token` varchar(255) DEFAULT NULL,
  `is_online` int(11) NOT NULL DEFAULT '0',
  `n_status` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2269 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `name`, `username`, `email`, `password`, `register_date`, `jeniskelamin`, `tempatlahir`, `tanggallahir`, `pendidikan`, `institusi`, `jenispekerjaan`, `hp`, `alamat`, `type`, `salt`, `login_count`, `email_token`, `is_online`, `n_status`) VALUES
(1, 'admin', 'admin', 'admin@example.com', '73e040a176a1ed539ff946be05ad1fb80909eb7a', '2015-06-04 04:26:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'codekir v3.0', 0, NULL, 0, 1),
(2268, 'bayu', 'bayu', 'andreass.bayu@gmail.com', 'a79463c981d361d67628b9be3ee75eded30295bf', '2016-02-15 19:45:55', NULL, 'Jakarta', '1989-08-09', 'S2', 'Gunadarma', 'Dosen', '2331231', 'Depok', 2, 'c0d3k1r-v1.0', 1, '0xnh36vp4ayjzse7gmbki5c2rfo9utq1w8dl', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_webex`
--

CREATE TABLE IF NOT EXISTS `video_webex` (
  `id_video` int(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `video` varchar(255) NOT NULL,
  `jenisfile` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `video_webex`
--

INSERT INTO `video_webex` (`id_video`, `title`, `video`, `jenisfile`, `status`) VALUES
(11, 'Prinsip Dasar Pengembangan Standar', 'https://www.youtube.com/embed/CO4X4i0oxgU', 1, 1),
(12, 'Penilaian Kesesuaian dan Metrologi', 'https://www.youtube.com/embed/CmZbfhSnJms', 1, 1),
(13, 'Penerapan Standar', 'https://www.youtube.com/embed/Yg3ho3kdryI', 1, 1),
(14, 'Manfaat Ekonomi Standar', 'https://www.youtube.com/embed/L6g0S_wQ9HY', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `webex`
--

CREATE TABLE IF NOT EXISTS `webex` (
  `id_webex` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(50) NOT NULL,
  `speaker` varchar(50) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `site` varchar(255) DEFAULT NULL,
  `schedule` date NOT NULL,
  `waktu` time DEFAULT NULL,
  `meeting_number` varchar(20) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id_webex`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `webex`
--

INSERT INTO `webex` (`id_webex`, `topic`, `speaker`, `picture`, `site`, `schedule`, `waktu`, `meeting_number`, `status`) VALUES
(4, 'Live webinar ISO Days 2015', 'Dr. Rob Steele, the ISO Secretary General', '69f8636e4846d07143c5f2d06d5a3c2b.jpg', 'http://iso-meetings.webex.com/', '2015-06-03', '13:00:00', '148 077 791', 2),
(5, 'Kuliah Umum Kepala BSN di Sekolah Tinggi Perikanan', 'Prof. Dr. Ir. Bambang Prasetya, M.Sc.', 'c90f35cb6a00916e7698b16a450ddfa2.jpg', 'https://iso-meetings.webex.com/iso-meetings/j.php?MTID=m68b3333b7a57b439ad41a7e8a00c07a4', '2015-08-13', '10:00:00', '955 473 630 ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE IF NOT EXISTS `wilayah` (
  `kode_wilayah` varchar(255) DEFAULT NULL,
  `nama_wilayah` varchar(255) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `n_status` int(11) NOT NULL DEFAULT '1',
  `createDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`kode_wilayah`, `nama_wilayah`, `parent`, `n_status`, `createDate`) VALUES
('01', 'DKI JAKARTA', '0', 1, NULL),
('0151', 'KOTA JAKARTA PUSAT', '01', 1, NULL),
('0152', 'KOTA JAKARTA UTARA', '01', 1, NULL),
('0153', 'KOTA JAKARTA BARAT', '01', 1, NULL),
('0154', 'KOTA JAKARTA SELATAN', '01', 1, NULL),
('0155', 'KOTA JAKARTA TIMUR', '01', 1, NULL),
('0156', 'KEPULAUAN SERIBU', '01', 1, NULL),
('02', 'JAWA BARAT', '0', 1, NULL),
('0205', 'KAB.BOGOR', '02', 1, NULL),
('0206', 'KAB.SUKABUMI', '02', 1, NULL),
('0207', 'KAB.CIANJUR', '02', 1, NULL),
('0208', 'KAB.BEKASI', '02', 1, NULL),
('0209', 'KAB.KERAWANG', '02', 1, NULL),
('0210', 'KAB.PURWAKARTA', '02', 1, NULL),
('0211', 'KAB. SUBANG', '02', 1, NULL),
('0212', 'KAB. BANDUNG', '02', 1, NULL),
('0213', 'KAB. SUMEDANG', '02', 1, NULL),
('0214', 'KAB. G A R U T', '02', 1, NULL),
('0215', 'KAB. TASIKMALAYA', '02', 1, NULL),
('0216', 'KAB. CIAMIS', '02', 1, NULL),
('0217', 'KAB. CIREBON', '02', 1, NULL),
('0218', 'KAB. KUNINGAN', '02', 1, NULL),
('0219', 'KAB. INDRAMAYU', '02', 1, NULL),
('0220', 'KAB. MAJALENGKA', '02', 1, NULL),
('0221', 'KAB. BANDUNG BARAT', '02', 1, NULL),
('0251', 'KOTA BANDUNG', '02', 1, NULL),
('0252', 'KOTA BOGOR', '02', 1, NULL),
('0253', 'KOTA SUKABUMI', '02', 1, NULL),
('0254', 'KOTA CIREBON', '02', 1, NULL),
('0257', 'KOTA BEKASI', '02', 1, NULL),
('0258', 'KOTA DEPOK', '02', 1, NULL),
('0260', 'KOTA TASIKMALAYA', '02', 1, NULL),
('0261', 'KOTA CIMAHI', '02', 1, NULL),
('0262', 'KOTA BANJAR', '02', 1, NULL),
('03', 'JAWA TENGAH', '0', 1, NULL),
('0301', 'KAB. SEMARANG', '03', 1, NULL),
('0302', 'KAB. KENDAL', '03', 1, NULL),
('0303', 'KAB. DEMAK', '03', 1, NULL),
('0304', 'KAB. GROBOGAN', '03', 1, NULL),
('0305', 'KAB. PEKALONGAN', '03', 1, NULL),
('0306', 'KAB. BATANG', '03', 1, NULL),
('0307', 'KAB. TEGAL', '03', 1, NULL),
('0308', 'KAB. BREBES', '03', 1, NULL),
('0309', 'KAB. PATI', '03', 1, NULL),
('0310', 'KAB. KUDUS', '03', 1, NULL),
('0311', 'KAB. PEMALANG', '03', 1, NULL),
('0312', 'KAB. JEPARA', '03', 1, NULL),
('0313', 'KAB. REMBANG', '03', 1, NULL),
('0314', 'KAB. BLORA', '03', 1, NULL),
('0315', 'KAB. BANYUMAS', '03', 1, NULL),
('0316', 'KAB. CILACAP', '03', 1, NULL),
('0317', 'KAB. PURBALINGGA', '03', 1, NULL),
('0318', 'KAB. BANJARNEGARA', '03', 1, NULL),
('0319', 'KAB. MAGELANG', '03', 1, NULL),
('0320', 'KAB. TEMANGGUNG', '03', 1, NULL),
('0321', 'KAB. WONOSOBO', '03', 1, NULL),
('0322', 'KAB. PURWOREJO', '03', 1, NULL),
('0323', 'KAB. KEBUMEN', '03', 1, NULL),
('0324', 'KAB. KLATEN', '03', 1, NULL),
('0325', 'KAB. BOYOLALI', '03', 1, NULL),
('0326', 'KAB. SRAGEN', '03', 1, NULL),
('0327', 'KAB. SUKOHARJO', '03', 1, NULL),
('0328', 'KAB. KARANGANYAR', '03', 1, NULL),
('0329', 'KAB. WONOGIRI', '03', 1, NULL),
('0330', 'KAB. CEPU', '03', 1, NULL),
('0351', 'KOTA SEMARANG', '03', 1, NULL),
('0352', 'KOTA SALATIGA', '03', 1, NULL),
('0353', 'KOTA PEKALONGAN', '03', 1, NULL),
('0354', 'KOTA TEGAL', '03', 1, NULL),
('0355', 'KOTA MAGELANG', '03', 1, NULL),
('0356', 'KOTA SURAKARTA', '03', 1, NULL),
('04', 'DI YOGYAKARTA', '0', 1, NULL),
('0401', 'KAB. BANTUL', '04', 1, NULL),
('0402', 'KAB. SLEMAN', '04', 1, NULL),
('0403', 'KAB. GUNUNGKIDUL', '04', 1, NULL),
('0404', 'KAB. KULONPROGO', '04', 1, NULL),
('0451', 'KOTA YOGYAKARTA', '04', 1, NULL),
('05', 'JAWA TIMUR', '0', 1, NULL),
('0501', 'KAB. GRESIK', '05', 1, NULL),
('0502', 'KAB. MOJOKERTO', '05', 1, NULL),
('0503', 'KAB. SIDOARJO', '05', 1, NULL),
('0504', 'KAB. JOMBANG', '05', 1, NULL),
('0505', 'KAB. SAMPANG', '05', 1, NULL),
('0506', 'KAB. PAMEKASAN', '05', 1, NULL),
('0507', 'KAB. SUMENEP', '05', 1, NULL),
('0508', 'KAB. BANGKALAN', '05', 1, NULL),
('0509', 'KAB. BONDOWOSO', '05', 1, NULL),
('0510', 'KAB. SITUBONDO', '05', 1, NULL),
('0511', 'KAB. BANYUWANGI', '05', 1, NULL),
('0512', 'KAB. JEMBER', '05', 1, NULL),
('0513', 'KAB. MALANG', '05', 1, NULL),
('0514', 'KAB. PASURUAN', '05', 1, NULL),
('0515', 'KAB. PROBOLINGGO', '05', 1, NULL),
('0516', 'KAB. LUMAJANG', '05', 1, NULL),
('0517', 'KAB. KEDIRI', '05', 1, NULL),
('0518', 'KAB. TULUNGAGUNG', '05', 1, NULL),
('0519', 'KAB. NGANJUK', '05', 1, NULL),
('0520', 'KAB. TRENGGALEK', '05', 1, NULL),
('0521', 'KAB. BLITAR', '05', 1, NULL),
('0522', 'KAB. MADIUN', '05', 1, NULL),
('0523', 'KAB. NGAWI', '05', 1, NULL),
('0524', 'KAB. MAGETAN', '05', 1, NULL),
('0525', 'KAB. PONOROGO', '05', 1, NULL),
('0526', 'KAB. PACITAN', '05', 1, NULL),
('0527', 'KAB. BOJONEGORO', '05', 1, NULL),
('0528', 'KAB. TUBAN', '05', 1, NULL),
('0529', 'KAB. LAMONGAN', '05', 1, NULL),
('0551', 'KOTA SURABAYA', '05', 1, NULL),
('0552', 'KOTA MOJOKERTO', '05', 1, NULL),
('0553', 'KOTA MALANG', '05', 1, NULL),
('0554', 'KOTA PASURUAN', '05', 1, NULL),
('0555', 'KOTA PROBOLINGGO', '05', 1, NULL),
('0556', 'KOTA BLITAR', '05', 1, NULL),
('0557', 'KOTA KEDIRI', '05', 1, NULL),
('0558', 'KOTA MADIUN', '05', 1, NULL),
('0559', 'KOTA BATU', '05', 1, NULL),
('06', 'ACEH', '0', 1, NULL),
('0601', 'KAB. ACEH BESAR', '06', 1, NULL),
('0602', 'KAB. P I D I E', '06', 1, NULL),
('0603', 'KAB. ACEH UTARA', '06', 1, NULL),
('0604', 'KAB. ACEH TIMUR', '06', 1, NULL),
('0605', 'KAB. ACEH SELATAN', '06', 1, NULL),
('0606', 'KAB. ACEH BARAT', '06', 1, NULL),
('0607', 'KAB. ACEH TENGAH', '06', 1, NULL),
('0608', 'KAB. ACEH TENGGARA', '06', 1, NULL),
('0609', 'KAB. SIMEULEU', '06', 1, NULL),
('0610', 'KAB. ACEH SINGKIL', '06', 1, NULL),
('0611', 'KAB. BIREUN', '06', 1, NULL),
('0612', 'KAB. ACEH BARAT DAYA', '06', 1, NULL),
('0613', 'KAB. ACEH GAYO LUES', '06', 1, NULL),
('0614', 'KAB. ACEH JAYA', '06', 1, NULL),
('0615', 'KAB. NAGAN RAYA', '06', 1, NULL),
('0616', 'KAB. ACEH TAMIANG', '06', 1, NULL),
('0617', 'KAB. BENER MERIAH', '06', 1, NULL),
('0618', 'KAB. PIDIE JAYA', '06', 1, NULL),
('0651', 'KOTA BANDA ACEH', '06', 1, NULL),
('0652', 'KOTA SABANG', '06', 1, NULL),
('0653', 'KOTA LANGSA', '06', 1, NULL),
('0654', 'KOTA LHOKSEUMAWE', '06', 1, NULL),
('0655', 'KOTA MEULABOH', '06', 1, NULL),
('0656', 'KOTA SUMBULUSSALAM', '06', 1, NULL),
('07', 'SUMATERA UTARA', '0', 1, NULL),
('0701', 'KAB. DELISERDANG', '07', 1, NULL),
('0702', 'KAB. KARO', '07', 1, NULL),
('0703', 'KAB. LANGKAT', '07', 1, NULL),
('0704', 'KAB. TAPANULI TENGAH', '07', 1, NULL),
('0705', 'KAB. SIMALUNGUN', '07', 1, NULL),
('0706', 'KAB. LABUHANBATU', '07', 1, NULL),
('0707', 'KAB. D A I R I', '07', 1, NULL),
('0708', 'KAB. TAPANULI UTARA', '07', 1, NULL),
('0709', 'KAB. TAPANULI SELATAN', '07', 1, NULL),
('0710', 'KAB. ASAHAN', '07', 1, NULL),
('0711', 'KAB. N I A S', '07', 1, NULL),
('0712', 'KAB. SAMOSIR', '07', 1, NULL),
('0713', 'KAB. MANDAILING NATAL', '07', 1, NULL),
('0714', 'KAB. NIAS SELATAN', '07', 1, NULL),
('0715', 'KAB. PAKPAK BARAT', '07', 1, NULL),
('0716', 'KAB. HUMBANG HASUNDUTAN', '07', 1, NULL),
('0717', 'KAB. TOBA SAMOSIR', '07', 1, NULL),
('0718', 'KAB. TARUTUNG', '07', 1, NULL),
('0720', 'KAB. SERDANG BEDAGAI', '07', 1, NULL),
('0721', 'KAB. BATUBARA', '07', 1, NULL),
('0722', 'KAB. PADANG LAWAS', '07', 1, NULL),
('0723', 'KAB. PADANG LAWAS UTARA', '07', 1, NULL),
('0724', 'KAB. LABUHAN BATU SELATAN', '07', 1, NULL),
('0725', 'KAB. LABUHAN BATU UTARA', '07', 1, NULL),
('0726', 'KAB. NIAS UTARA', '07', 1, NULL),
('0727', 'KAB. NIAS BARAT', '07', 1, NULL),
('0751', 'KOTA MEDAN', '07', 1, NULL),
('0752', 'KOTA TEBINGTINGGI', '07', 1, NULL),
('0753', 'KOTA B I N J A I', '07', 1, NULL),
('0754', 'KOTA PEMATANGSIANTAR', '07', 1, NULL),
('0755', 'KOTA TANJUNGBALAI', '07', 1, NULL),
('0756', 'KOTA SIBOLGA', '07', 1, NULL),
('0757', 'KOTA PADANG SIDEMPUAN', '07', 1, NULL),
('0758', 'KOTA STABAT', '07', 1, NULL),
('0759', 'KOTA LUBUK PAKAM', '07', 1, NULL),
('0760', 'KOTA SIDI KALANG', '07', 1, NULL),
('0761', 'KOTA GUNUNG SITOLI', '07', 1, NULL),
('08', 'SUMATERA BARAT', '0', 1, NULL),
('0801', 'KAB. A G A M', '08', 1, NULL),
('0802', 'KAB. PASAMAN', '08', 1, NULL),
('0803', 'KAB. LIMAPULUH KOTA', '08', 1, NULL),
('0804', 'KAB. S O L O K', '08', 1, NULL),
('0805', 'KAB. PADANG PARIAMAN', '08', 1, NULL),
('0806', 'KAB. PESISIR SELATAN', '08', 1, NULL),
('0807', 'KAB. TANAH DATAR', '08', 1, NULL),
('0808', 'KAB. SAWAHLUNTO', '08', 1, NULL),
('0809', 'KAB. KEPULAUAN MENTAWAI', '08', 1, NULL),
('0810', 'KAB. DHARMAS RAYA', '08', 1, NULL),
('0811', 'KAB. SOLOK SELATAN', '08', 1, NULL),
('0812', 'KAB. PASAMAN BARAT', '08', 1, NULL),
('0813', 'KAB. SIJUNJUNG', '08', 1, NULL),
('0814', 'KAB. SAWAHLUNTO SIJUNJUNG', '08', 1, NULL),
('0851', 'KOTA BUKITTINGGI', '08', 1, NULL),
('0852', 'KOTA PADANG PANJANG', '08', 1, NULL),
('0853', 'KOTA S O L O K', '08', 1, NULL),
('0854', 'KOTA SAWAHLUNTO', '08', 1, NULL),
('0855', 'KOTA PADANG', '08', 1, NULL),
('0856', 'KOTA PAYAKUMBUH', '08', 1, NULL),
('0857', 'KOTA PARIAMAN', '08', 1, NULL),
('0858', 'KOTA LUBUK SIKAPING', '08', 1, NULL),
('0859', 'KOTA PAINAN', '08', 1, NULL),
('09', 'RIAU', '0', 1, NULL),
('0901', 'KAB. KAMPAR', '09', 1, NULL),
('0902', 'KAB. BENGKALIS', '09', 1, NULL),
('0904', 'KAB. INDRAGIRI HULU', '09', 1, NULL),
('0905', 'KAB. INDRAGIRI HILIR', '09', 1, NULL),
('0906', 'KAB. PELALAWAN', '09', 1, NULL),
('0907', 'KAB. ROKAN HULU', '09', 1, NULL),
('0908', 'KAB. ROKAN HILIR', '09', 1, NULL),
('0909', 'KAB. SIAK', '09', 1, NULL),
('0912', 'KAB. KUANTAN SINGINGI', '09', 1, NULL),
('0913', 'KAB. KEPULAUAN MERANTI', '09', 1, NULL),
('0951', 'KOTA PEKANBARU', '09', 1, NULL),
('0953', 'KOTA DUMAI', '09', 1, NULL),
('0954', 'KOTA RENGAT', '09', 1, NULL),
('0955', 'OTORITA BATAM', '09', 1, NULL),
('10', 'JAMBI', '0', 1, NULL),
('1001', 'KAB. BATANGHARI', '10', 1, NULL),
('1002', 'KAB. TANJUNG JABUNG BARAT', '10', 1, NULL),
('1003', 'KAB. BUNGO', '10', 1, NULL),
('1004', 'KAB. SAROLANGUN', '10', 1, NULL),
('1005', 'KAB. KERINCI', '10', 1, NULL),
('1006', 'KAB. MERANGIN', '10', 1, NULL),
('1007', 'KAB. TANJUNG JABUNG TIMUR', '10', 1, NULL),
('1008', 'KAB. T E B O', '10', 1, NULL),
('1009', 'KAB. MUARO JAMBI', '10', 1, NULL),
('1051', 'KOTA JAMBI', '10', 1, NULL),
('1052', 'KOTA SUNGAI PENUH', '10', 1, NULL),
('11', 'SUMATERA SELATAN', '0', 1, NULL),
('1103', 'KAB. MUSI BANYU ASIN', '11', 1, NULL),
('1104', 'KAB. OGAN KOMERING ULU', '11', 1, NULL),
('1105', 'KAB. MUARA ENIM', '11', 1, NULL),
('1106', 'KAB. L A H A T', '11', 1, NULL),
('1107', 'KAB. MUSI RAWAS', '11', 1, NULL),
('1108', 'KAB. OGAN KOMERING ILIR', '11', 1, NULL),
('1109', 'KAB. BANYUASIN', '11', 1, NULL),
('1110', 'KAB. OKU TIMUR', '11', 1, NULL),
('1111', 'KAB. OKU SELATAN', '11', 1, NULL),
('1112', 'KAB. OGAN ILIR', '11', 1, NULL),
('1113', 'KAB. OKU UTARA', '11', 1, NULL),
('1115', 'KAB. IDRALAYA', '11', 1, NULL),
('1116', 'KAB. BATU RAJA', '11', 1, NULL),
('1117', 'KAB. EMPAT LAWANG', '11', 1, NULL),
('1151', 'KOTA PALEMBANG', '11', 1, NULL),
('1153', 'KOTA PRABUMULIH', '11', 1, NULL),
('1154', 'KOTA PAGAR ALAM', '11', 1, NULL),
('1155', 'KOTA LUBUK LINGGAU', '11', 1, NULL),
('12', 'LAMPUNG', '0', 1, NULL),
('1201', 'KAB. LAMPUNG SELATAN', '12', 1, NULL),
('1202', 'KAB. LAMPUNG TENGAH', '12', 1, NULL),
('1203', 'KAB. LAMPUNG UTARA', '12', 1, NULL),
('1204', 'KAB. LAMPUNG BARAT', '12', 1, NULL),
('1205', 'KAB. TULANG BAWANG', '12', 1, NULL),
('1206', 'KAB. TANGGAMUS', '12', 1, NULL),
('1207', 'KAB. LAMPUNG TIMUR', '12', 1, NULL),
('1208', 'KAB. WAY KANAN', '12', 1, NULL),
('1209', 'KAB. PESAWARAN', '12', 1, NULL),
('1210', 'KAB. PRINGSEWU', '12', 1, NULL),
('1211', 'KAB. MESUJI', '12', 1, NULL),
('1212', 'KAB. TULANG BAWANG BARAT', '12', 1, NULL),
('1251', 'KOTA BANDAR LAMPUNG', '12', 1, NULL),
('1252', 'KOTA METRO', '12', 1, NULL),
('13', 'KALIMANTAN BARAT', '0', 1, NULL),
('1301', 'KAB. SAMBAS', '13', 1, NULL),
('1302', 'KAB. SANGGAU', '13', 1, NULL),
('1303', 'KAB. SINTANG', '13', 1, NULL),
('1304', 'KAB. PONTIANAK', '13', 1, NULL),
('1305', 'KAB. KAPUAS HULU', '13', 1, NULL),
('1306', 'KAB. KETAPANG', '13', 1, NULL),
('1307', 'KAB. BENGKAYANG', '13', 1, NULL),
('1308', 'KAB. LANDAK', '13', 1, NULL),
('1309', 'KAB. MELAWI', '13', 1, NULL),
('1310', 'KAB. SEKADAU', '13', 1, NULL),
('1311', 'KAB. KAYONG UTARA', '13', 1, NULL),
('1312', 'KAB. KUBU RAYA', '13', 1, NULL),
('1351', 'KOTA PONTIANAK', '13', 1, NULL),
('1352', 'KOTA SINGKAWANG', '13', 1, NULL),
('14', 'KALIMANTAN TENGAH', '0', 1, NULL),
('1401', 'KAB. KAPUAS', '14', 1, NULL),
('1402', 'KAB. BARITO UTARA', '14', 1, NULL),
('1403', 'KAB. BARITO SELATAN', '14', 1, NULL),
('1404', 'KAB. KOTAWARINGIN TIMUR', '14', 1, NULL),
('1405', 'KAB. KOTAWARINGIN BARAT', '14', 1, NULL),
('1406', 'KAB. KATINGAN', '14', 1, NULL),
('1407', 'KAB. SERUYAN', '14', 1, NULL),
('1408', 'KAB. SUKAMARA', '14', 1, NULL),
('1409', 'KAB. LAMANDAU', '14', 1, NULL),
('1410', 'KAB. GUNUNG MAS', '14', 1, NULL),
('1411', 'KAB. PULANG PISAU', '14', 1, NULL),
('1412', 'KAB. MURUNG RAYA', '14', 1, NULL),
('1413', 'KAB. BARITO TIMUR', '14', 1, NULL),
('1451', 'KOTA PALANGKARAYA', '14', 1, NULL),
('15', 'KALIMANTAN SELATAN', '0', 1, NULL),
('1501', 'KAB. BANJAR', '15', 1, NULL),
('1502', 'KAB. TANAH LAUT', '15', 1, NULL),
('1503', 'KAB. TAPIN', '15', 1, NULL),
('1504', 'KAB. HULU SUNGAI SELATAN', '15', 1, NULL),
('1505', 'KAB. HULU SUNGAI TENGAH', '15', 1, NULL),
('1506', 'KAB. BARITO KUALA', '15', 1, NULL),
('1507', 'KAB. TABALONG', '15', 1, NULL),
('1508', 'KAB. KOTABARU', '15', 1, NULL),
('1509', 'KAB. HULU SUNGAI UTARA', '15', 1, NULL),
('1510', 'KAB. TANAH BUMBU', '15', 1, NULL),
('1511', 'KAB. BALANGAN', '15', 1, NULL),
('1551', 'KOTA BANJARMASIN', '15', 1, NULL),
('1552', 'KOTA BANJARBARU', '15', 1, NULL),
('16', 'KALIMANTAN TIMUR', '0', 1, NULL),
('1601', 'KAB. K U T A I', '16', 1, NULL),
('1602', 'KAB. P A S E R', '16', 1, NULL),
('1603', 'KAB. BULUNGAN', '16', 1, NULL),
('1604', 'KAB. B E R A U', '16', 1, NULL),
('1605', 'KAB. NUNUKAN', '16', 1, NULL),
('1606', 'KAB. MALINAU', '16', 1, NULL),
('1607', 'KAB. KUTAI BARAT', '16', 1, NULL),
('1608', 'KAB. KUTAI TIMUR', '16', 1, NULL),
('1609', 'KAB. PENAJAM PASER UTARA', '16', 1, NULL),
('1610', 'KAB. KUTAI KERTANEGARA', '16', 1, NULL),
('1611', 'TENGGARONG', '16', 1, NULL),
('1612', 'KAB. TANA TIDUNG', '16', 1, NULL),
('1651', 'KOTA SAMARINDA', '16', 1, NULL),
('1652', 'KOTA BALIKPAPAN', '16', 1, NULL),
('1653', 'KOTA TARAKAN', '16', 1, NULL),
('1654', 'KOTA BONTANG', '16', 1, NULL),
('17', 'SULAWESI UTARA', '0', 1, NULL),
('1702', 'KAB. MINAHASA', '17', 1, NULL),
('1703', 'KAB. BOLAANG MONGONDOW', '17', 1, NULL),
('1704', 'KAB. KEPULAUAN SANGIHE', '17', 1, NULL),
('1705', 'KAB. KEPULAUAN TALAUD', '17', 1, NULL),
('1706', 'KAB. MINAHASA SELATAN', '17', 1, NULL),
('1707', 'KAB. TOMOHON', '17', 1, NULL),
('1708', 'KAB. MINAHASA UTARA', '17', 1, NULL),
('1709', 'KAB. KEP.SANGIHE TALAUD', '17', 1, NULL),
('1710', 'KAB. MINAHASA TENGGARA', '17', 1, NULL),
('1711', 'KAB. BOLAANG MONGONDOW UTARA', '17', 1, NULL),
('1712', 'KAB. KEP. SIAU TAGULANDANG BIARO', '17', 1, NULL),
('1713', 'KAB. BOLAANG MONGONDOW SELATAN', '17', 1, NULL),
('1714', 'KAB. BOLAANG MONGONDOW TIMUR', '17', 1, NULL),
('1751', 'KOTA MANADO', '17', 1, NULL),
('1752', 'KOTA TOMOHON', '17', 1, NULL),
('1753', 'KOTA BITUNG', '17', 1, NULL),
('1754', 'KOTA KOTAMOBAGO', '17', 1, NULL),
('18', 'SULAWESI TENGAH', '0', 1, NULL),
('1801', 'KAB. P O S O', '18', 1, NULL),
('1802', 'KAB. DONGGALA', '18', 1, NULL),
('1803', 'KAB. TOLI-TOLI', '18', 1, NULL),
('1804', 'KAB. BANGGAI', '18', 1, NULL),
('1805', 'KAB. B U O L', '18', 1, NULL),
('1806', 'KAB. MOROWALI', '18', 1, NULL),
('1807', 'KAB. BANGGAI KEPULAUAN', '18', 1, NULL),
('1808', 'KAB. PARIGI MOUTONG', '18', 1, NULL),
('1809', 'KAB. TOJO UNA-UNA', '18', 1, NULL),
('1812', 'KAB. SIGI', '18', 1, NULL),
('1851', 'KOTA PALU', '18', 1, NULL),
('19', 'SULAWESI SELATAN', '0', 1, NULL),
('1901', 'KAB. PINRANG', '19', 1, NULL),
('1902', 'KAB. GOWA', '19', 1, NULL),
('1903', 'KAB. WAJO', '19', 1, NULL),
('1905', 'KAB. BONE', '19', 1, NULL),
('1906', 'KAB. TANATORAJA', '19', 1, NULL),
('1907', 'KAB. MAROS', '19', 1, NULL),
('1909', 'KAB. LUWU', '19', 1, NULL),
('1910', 'KAB. SINJAI', '19', 1, NULL),
('1911', 'KAB. BULUKUMBA', '19', 1, NULL),
('1912', 'KAB. BANTAENG', '19', 1, NULL),
('1913', 'KAB. JENEPONTO', '19', 1, NULL),
('1914', 'KAB. KEPULAUAN SELAYAR', '19', 1, NULL),
('1915', 'KAB. TAKALAR', '19', 1, NULL),
('1916', 'KAB. BARRU', '19', 1, NULL),
('1917', 'KAB. SIDENRENG RAPPANG', '19', 1, NULL),
('1918', 'KAB. PANGKAJENE KEPULAUAN', '19', 1, NULL),
('1919', 'KAB. SOPPENG', '19', 1, NULL),
('1921', 'KAB. ENREKANG', '19', 1, NULL),
('1922', 'KAB. LUWU UTARA', '19', 1, NULL),
('1924', 'KAB. LUWU TIMUR', '19', 1, NULL),
('1925', 'KAB. TORAJA UTARA', '19', 1, NULL),
('1951', 'KOTA MAKASSAR', '19', 1, NULL),
('1952', 'KOTA PARE-PARE', '19', 1, NULL),
('1953', 'KOTA PALOPO', '19', 1, NULL),
('20', 'SULAWESI TENGGARA', '0', 1, NULL),
('2001', 'KAB. KENDARI (SDH TIDAK ADA)', '20', 1, NULL),
('2002', 'KAB. BUTON', '20', 1, NULL),
('2003', 'KAB. MUNA', '20', 1, NULL),
('2004', 'KAB. KOLAKA', '20', 1, NULL),
('2005', 'KAB. KONAWE SELATAN', '20', 1, NULL),
('2006', 'KAB. BOMBANA', '20', 1, NULL),
('2007', 'KAB. WAKATOBI', '20', 1, NULL),
('2008', 'KAB. KOLAKA UTARA', '20', 1, NULL),
('2009', 'KAB. KONAWE', '20', 1, NULL),
('2010', 'KAB. KONAWE UTARA', '20', 1, NULL),
('2011', 'KAB. BUTON UTARA', '20', 1, NULL),
('2051', 'KOTA KENDARI', '20', 1, NULL),
('2052', 'KOTA BAU-BAU', '20', 1, NULL),
('21', 'MALUKU', '0', 1, NULL),
('2101', 'KAB. MALUKU TENGAH', '21', 1, NULL),
('2102', 'KAB. MALUKU TENGGARA', '21', 1, NULL),
('2103', 'KAB. MALUKU TENGGARA BARAT', '21', 1, NULL),
('2104', 'KAB. PULAU BURU', '21', 1, NULL),
('2105', 'KAB. KEPULAUAN ARU', '21', 1, NULL),
('2106', 'KAB. SERAM BAGIAN BARAT', '21', 1, NULL),
('2107', 'KAB. SERAM BAGIAN TIMUR', '21', 1, NULL),
('2108', 'KAB. MALUKU', '21', 1, NULL),
('2109', 'KAB. MALUKU BARAT DAYA', '21', 1, NULL),
('2110', 'KAB. BURU SELATAN', '21', 1, NULL),
('2151', 'KOTA AMBON', '21', 1, NULL),
('2152', 'KOTA TUAL', '21', 1, NULL),
('22', 'BALI', '0', 1, NULL),
('2201', 'KAB. BULELENG', '22', 1, NULL),
('2202', 'KAB. JEMBRANA', '22', 1, NULL),
('2203', 'KAB. KLUNGKUNG', '22', 1, NULL),
('2204', 'KAB. GIANYAR', '22', 1, NULL),
('2205', 'KAB. KARANGASEM', '22', 1, NULL),
('2206', 'KAB. BANGLI', '22', 1, NULL),
('2207', 'KAB. BADUNG', '22', 1, NULL),
('2208', 'KAB. TABANAN', '22', 1, NULL),
('2209', 'KAB. NEGARA', '22', 1, NULL),
('2251', 'KOTA DENPASAR', '22', 1, NULL),
('23', 'NUSA TENGGARA BARAT', '0', 1, NULL),
('2301', 'KAB. LOMBOK BARAT', '23', 1, NULL),
('2302', 'KAB. LOMBOK TENGAH', '23', 1, NULL),
('2303', 'KAB. LOMBOK TIMUR', '23', 1, NULL),
('2304', 'KAB. B I M A', '23', 1, NULL),
('2305', 'KAB. SUMBAWA', '23', 1, NULL),
('2306', 'KAB. DOMPU', '23', 1, NULL),
('2307', 'KAB. SUMBAWA BARAT', '23', 1, NULL),
('2308', 'KAB. LOMBOK UTARA', '23', 1, NULL),
('2351', 'KOTA MATARAM', '23', 1, NULL),
('2352', 'KOTA BIMA', '23', 1, NULL),
('24', 'NUSA TENGGARA TIMUR', '0', 1, NULL),
('2401', 'KAB. KUPANG', '24', 1, NULL),
('2402', 'KAB. B E L U', '24', 1, NULL),
('2403', 'KAB. TIMOR TENGAH UTARA', '24', 1, NULL),
('2404', 'KAB. TIMOR TENGAH SELATAN', '24', 1, NULL),
('2405', 'KAB. A L O R', '24', 1, NULL),
('2406', 'KAB. S I K K A', '24', 1, NULL),
('2407', 'KAB. FLORES TIMUR', '24', 1, NULL),
('2408', 'KAB. E N D E', '24', 1, NULL),
('2409', 'KAB. NGADA', '24', 1, NULL),
('2410', 'KAB. MANGGARAI', '24', 1, NULL),
('2411', 'KAB. SUMBA TIMUR', '24', 1, NULL),
('2412', 'KAB. SUMBA BARAT', '24', 1, NULL),
('2413', 'KAB. LEMBATA', '24', 1, NULL),
('2414', 'KAB. ROTE NDAO', '24', 1, NULL),
('2415', 'KAB. MANGGARAI BARAT', '24', 1, NULL),
('2416', 'KAB. TIMOR', '24', 1, NULL),
('2417', 'KAB. NAGEKEO', '24', 1, NULL),
('2418', 'KAB. SUMBA TENGAH', '24', 1, NULL),
('2419', 'KAB. SUMBA BARAT DAYA', '24', 1, NULL),
('2420', 'MANGGARAI TIMUR', '24', 1, NULL),
('2421', 'KAB. SABU RAIJUA', '24', 1, NULL),
('2451', 'KOTA KUPANG', '24', 1, NULL),
('2453', 'KAB. RUTENG', '24', 1, NULL),
('25', 'PAPUA', '0', 1, NULL),
('2501', 'KAB. JAYAPURA', '25', 1, NULL),
('2502', 'KAB. BIAK-NUMFOR', '25', 1, NULL),
('2504', 'KAB. KEPULAUAN YAPEN', '25', 1, NULL),
('2507', 'KAB. MERAUKE', '25', 1, NULL),
('2508', 'KAB. JAYAWIJAYA', '25', 1, NULL),
('2509', 'KAB. PANIAI', '25', 1, NULL),
('2510', 'KAB. NABIRE', '25', 1, NULL),
('2511', 'KAB. PUNCAK JAYA', '25', 1, NULL),
('2512', 'KAB. MIMIKA', '25', 1, NULL),
('2513', 'KAB. MAPPI', '25', 1, NULL),
('2514', 'KAB. ASMAT', '25', 1, NULL),
('2515', 'KAB. BOVEN DIGOEL', '25', 1, NULL),
('2516', 'KAB. SARMI', '25', 1, NULL),
('2517', 'KAB. KEEROM', '25', 1, NULL),
('2518', 'KAB. TOLIKARA', '25', 1, NULL),
('2519', 'KAB. PEGUNUNGAN BINTANG', '25', 1, NULL),
('2520', 'KAB. MAMBERAMO RAYA', '25', 1, NULL),
('2523', 'KAB. WAROPEN', '25', 1, NULL),
('2524', 'KAB. YAHUKIMO', '25', 1, NULL),
('2527', 'KAB. SUPIORI', '25', 1, NULL),
('2528', 'MAMBERAMO TENGAH', '25', 1, NULL),
('2529', 'KAB. LANNY JAYA', '25', 1, NULL),
('2530', 'KAB.DOGIYAI', '25', 1, NULL),
('2531', 'KAB.YALIMO', '25', 1, NULL),
('2532', 'KAB.NDUGA', '25', 1, NULL),
('2533', 'KAB. PUNCAK', '25', 1, NULL),
('2534', 'KAB. DAYAI', '25', 1, NULL),
('2535', 'KAB. INTAN JAYA', '25', 1, NULL),
('2536', 'KAB. DEIYAI', '25', 1, NULL),
('2551', 'KOTA JAYAPURA', '25', 1, NULL),
('26', 'BENGKULU', '0', 1, NULL),
('2601', 'KAB. BENGKULU UTARA', '26', 1, NULL),
('2602', 'KAB. BENGKULU SELATAN', '26', 1, NULL),
('2603', 'KAB. REJANG LEBONG', '26', 1, NULL),
('2604', 'KAB. SELUMA', '26', 1, NULL),
('2605', 'KAB. K A U R', '26', 1, NULL),
('2606', 'KAB. MUKO-MUKO', '26', 1, NULL),
('2607', 'KAB. LEBONG', '26', 1, NULL),
('2608', 'KAB. KEPAHIANG', '26', 1, NULL),
('2609', 'KAB. BENGKULU TENGAH', '26', 1, NULL),
('2651', 'KOTA BENGKULU', '26', 1, NULL),
('28', 'MALUKU UTARA', '0', 1, NULL),
('2801', 'KAB. MALUKU UTARA', '28', 1, NULL),
('2802', 'KAB. HALMAHERA TENGAH', '28', 1, NULL),
('2803', 'KAB. HALMAHERA UTARA', '28', 1, NULL),
('2804', 'KAB. HALMAHERA SELATAN', '28', 1, NULL),
('2805', 'KAB. KEPULAUAN SULA', '28', 1, NULL),
('2806', 'KAB. HALMAHERA TIMUR', '28', 1, NULL),
('2807', 'KAB. HALMAHERA BARAT', '28', 1, NULL),
('2808', 'KAB. PULAU MOROTAI', '28', 1, NULL),
('2851', 'KOTA TERNATE', '28', 1, NULL),
('2852', 'KOTA TIDORE', '28', 1, NULL),
('2853', 'KOTA TIDORE KEPULAUAN', '28', 1, NULL),
('29', 'BANTEN', '0', 1, NULL),
('2901', 'KAB. SERANG', '29', 1, NULL),
('2902', 'KAB. PANDEGLANG', '29', 1, NULL),
('2903', 'KAB. LEBAK', '29', 1, NULL),
('2904', 'KAB. TANGERANG', '29', 1, NULL),
('2951', 'KOTA TANGERANG', '29', 1, NULL),
('2952', 'KOTA CILEGON', '29', 1, NULL),
('2953', 'KOTA SERANG', '29', 1, NULL),
('2954', 'KOTA TANGERANG SELATAN', '29', 1, NULL),
('30', 'BANGKA BELITUNG', '0', 1, NULL),
('3001', 'KAB. BELITUNG', '30', 1, NULL),
('3002', 'KAB. BANGKA', '30', 1, NULL),
('3003', 'KAB. BANGKA BARAT', '30', 1, NULL),
('3004', 'KAB. BANGKA TENGAH', '30', 1, NULL),
('3005', 'KAB. BANGKA SELATAN', '30', 1, NULL),
('3006', 'KAB. BELITUNG TIMUR', '30', 1, NULL),
('3007', 'KAB. SUNGAI LIAT', '30', 1, NULL),
('3051', 'KOTA PANGKALPINANG', '30', 1, NULL),
('31', 'GORONTALO', '0', 1, NULL),
('3101', 'KAB. GORONTALO', '31', 1, NULL),
('3102', 'KAB. BOALEMO', '31', 1, NULL),
('3103', 'KAB. POHUWATO', '31', 1, NULL),
('3104', 'KAB. BONE BOLANGO', '31', 1, NULL),
('3105', 'KAB. LIMBOTO', '31', 1, NULL),
('3106', 'KAB. MARISA', '31', 1, NULL),
('3107', 'KAB. GORONTALO UTARA', '31', 1, NULL),
('3151', 'KOTA GORONTALO', '31', 1, NULL),
('32', 'KEPULAUAN RIAU', '0', 1, NULL),
('3201', 'KAB. BINTAN', '32', 1, NULL),
('3202', 'KAB. KARIMUN', '32', 1, NULL),
('3203', 'KAB. NATUNA', '32', 1, NULL),
('3204', 'KAB. LINGGA', '32', 1, NULL),
('3205', 'KAB. ANAMBAS', '32', 1, NULL),
('3206', 'KAB. BARELANG', '32', 1, NULL),
('3207', 'KAB. MERANTI', '32', 1, NULL),
('3251', 'KOTA BATAM', '32', 1, NULL),
('3252', 'KOTA TANJUNG PINANG', '32', 1, NULL),
('33', 'PAPUA BARAT', '0', 1, NULL),
('3301', 'KAB. MANOKWARI', '33', 1, NULL),
('3302', 'KAB. SORONG', '33', 1, NULL),
('3303', 'KAB. FAK FAK', '33', 1, NULL),
('3304', 'KAB. SORONG SELATAN', '33', 1, NULL),
('3305', 'KAB. RAJA AMPAT', '33', 1, NULL),
('3306', 'KAB. TELUK BINTUNI', '33', 1, NULL),
('3307', 'KAB. TELUK WONDAMA', '33', 1, NULL),
('3308', 'KAB. KAIMANA', '33', 1, NULL),
('3309', 'KAB. TAMBRAUW', '33', 1, NULL),
('3310', 'KAB. MAYBRAT', '33', 1, NULL),
('34', 'SULAWESI BARAT', '0', 1, NULL),
('3401', 'KAB. MAJENE', '34', 1, NULL),
('3402', 'KAB. MAMUJU', '34', 1, NULL),
('3403', 'KAB. MAMUJU UTARA', '34', 1, NULL),
('3404', 'KAB. POLEWALI MANDAR', '34', 1, NULL),
('3405', 'KAB. MAMASA', '34', 1, NULL),
('3451', 'KOTA.MAMUJU', '34', 1, NULL),
('35', 'tes', '0', 0, '2015-07-06 10:03:49');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
