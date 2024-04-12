-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 03:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_masuk2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_datadata`
--

CREATE TABLE `tb_datadata` (
  `id` int(50) NOT NULL,
  `nama_pengguna` varchar(100) NOT NULL,
  `kata_sandi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_datadata`
--

INSERT INTO `tb_datadata` (`id`, `nama_pengguna`, `kata_sandi`) VALUES
(1, 'theo', 'qwerty'),
(2, 'lourdes', 'kimdoggyja');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menampilkan`
--

CREATE TABLE `tb_menampilkan` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nisn` int(100) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `waktu_kehadiran` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_menampilkan`
--

INSERT INTO `tb_menampilkan` (`id`, `nama`, `nisn`, `kelas`, `waktu_kehadiran`) VALUES
(1, 'Chyrania Priency Safira Manossoh', 68510925, 'XII MIA 2', '2024-04-07 08:42:02.006884'),
(2, 'Mutiara Clara Wuisan', 67824506, 'XII MIA 2', '2024-04-08 09:45:11.257653'),
(3, 'Theodore Christiano Devinto Murti', 69590171, 'XII MIA 1', '2024-04-08 09:49:24.522071'),
(4, 'Theodore Christiano Devinto Murti', 69590171, 'XII MIA 1', '2024-04-08 09:51:14.053061'),
(5, 'Theodore Christiano Devinto Murti', 69590171, 'XII MIA 1', '2024-04-08 09:51:16.673248'),
(6, 'Theodore Christiano Devinto Murti', 69590171, 'XII MIA 1', '2024-04-08 09:51:18.204838'),
(7, 'Cevin Septinus Vincensius Mukuan', 75933625, 'XI C', '2024-04-08 10:04:54.524758'),
(8, 'Vensy Fillipo Inzaghi Ratu', 65894011, 'XII MIA 1', '2024-04-08 10:05:17.122524'),
(9, 'Deddy Ignatius Kotambunan', 68342044, 'XI A', '2024-04-08 10:06:20.148978'),
(10, 'Calvin Jonathan Lineleyan', 83281534, 'XI B', '2024-04-08 10:52:52.455120'),
(11, 'Calvin Jonathan Lineleyan', 83281534, 'XI B', '2024-04-08 10:53:08.129585'),
(12, 'Alyshia Hillary Walangitan', 85372376, 'XI B', '2024-04-08 10:54:05.203078'),
(13, 'Theodore Christiano Devinto Murti', 69590171, 'XII MIA 1', '2024-04-09 04:52:03.721531'),
(14, 'Kristian Aldo Prasetya', 85283113, 'XA', '2024-04-09 05:05:15.311537'),
(15, 'Pingkan Inggina Mamesah', 83862750, 'X A', '2024-04-09 05:08:11.308523'),
(16, 'Jesika Korneles', 74997491, 'X B', '2024-04-09 05:10:06.779978'),
(17, 'Jesika Korneles', 74997491, 'X B', '2024-04-09 05:10:08.818120'),
(18, 'Hosana Igreya Ratu', 89131482, 'X B', '2024-04-09 05:10:16.335571'),
(19, 'Edward Wuwumbene ', 98980922, 'X C', '2024-04-09 05:10:25.540535'),
(20, 'Velove Laurencia Bongkona', 88171184, 'XI A', '2024-04-09 05:12:43.402549'),
(21, 'Virginia Mutiara Kawengian', 71198894, 'XI B', '2024-04-09 05:12:50.635795'),
(22, 'Pinky Queen Manuas', 89429069, 'XI C', '2024-04-09 05:12:57.827133'),
(23, 'Gisele Nacita Imanuela Saroinsong', 747679555, 'XII MIA 2', '2024-04-09 05:13:07.013548'),
(24, 'Chyrania Priency Safira Manossoh', 68510925, 'XII MIA 2', '2024-04-09 11:49:28.876281'),
(25, 'Theodore Christiano Devinto Murti', 69590171, 'XII MIA 1', '2024-04-10 14:30:06.877368'),
(26, 'Mutiara Clara Wuisan', 67824506, 'XII MIA 2', '2024-04-10 14:34:33.928479'),
(27, 'Vensy Fillipo Inzaghi Ratu', 65894011, 'XII MIA 1', '2024-04-10 15:28:01.421517'),
(28, 'Gladiva Warouw', 652500288, 'XII MIA 1', '2024-04-11 08:45:41.387455'),
(29, 'Gladiva Warouw', 652500288, 'XII MIA 1', '2024-04-11 08:52:28.230198'),
(30, 'Gladiva Warouw', 652500288, 'XII MIA 1', '2024-04-11 08:52:30.760255'),
(31, 'Rawindo Yoseph Singal', 62791596, 'XII MIA 2', '2024-04-11 08:54:39.925076'),
(32, 'Erlhy Yosefa Lumentut', 83175727, 'XI C', '2024-04-11 08:55:10.205957'),
(33, 'Dona Maria Imaculata Wenur', 86501727, 'XI B', '2024-04-11 08:55:31.928971'),
(34, 'Deddy Ignatius Kotambunan', 68342044, 'XI A', '2024-04-11 08:55:49.162948'),
(35, 'Christovano Berwyn Rumangu', 87624368, 'X B', '2024-04-11 08:56:06.853946'),
(36, 'Prayer Miracle Elgibbor Melale', 85590192, 'X A', '2024-04-11 08:56:14.405334'),
(37, 'Natalia Zivana Chandra', 86282426, 'X C', '2024-04-11 08:56:20.975107'),
(38, 'Kathlyn Qeyla Mokoginta', 78994282, 'XI C', '2024-04-11 09:21:31.769065'),
(39, 'Aurelia Angella Merichi Islani', 79098214, 'XI B', '2024-04-11 09:32:37.299159'),
(40, 'Gladiva Warouw', 652500288, 'XII MIA 1', '2024-04-11 09:35:08.739780'),
(41, 'Theodore Christiano Devinto Murti', 69590171, 'XII MIA 1', '2024-04-11 09:35:18.539369');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(4) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama_siswa` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `rombel` text NOT NULL,
  `no_siswa` varchar(15) NOT NULL,
  `nama_orangtua` text NOT NULL,
  `no_orangtua` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nisn`, `nama_siswa`, `email`, `kelas`, `rombel`, `no_siswa`, `nama_orangtua`, `no_orangtua`) VALUES
(1, '0068510925', 'Chyrania Priency Safira Manossoh', 'chyranmanosssoh@gmail.com', 'XII MIA 2', 'Montresor', '081524522313', 'Raymond Manossoh', '081524522313'),
(2, '0061430362', 'Eduardo Stevanus Waworundeng', 'eduardowaworundeng@gmail.com', 'XII MIA 2', 'Montresor', '081354973767', 'Melchior Waworundeng', '081354973767'),
(3, '0062514500', 'Galatia Vecchia Italia Maleke', 'ciamaleke@gmail.com', 'XII IIS', 'Equiti', '0895806578443', 'Happy Maleke', '0895806578443'),
(4, '00652500288', 'Gladiva Warouw', 'warouwgladiva@gmail.com', 'XII MIA 1', 'Houston', '085823478740', 'Yorry Warouw', '085823478740'),
(5, '00747679555', 'Gisele Nacita Imanuela Saroinsong', 'giselesaroinsong@gmail.com', 'XII MIA 2', 'Montresor', '0895805287999', 'Ino Saroinsong', '0895805287999'),
(6, '0067824506', 'Mutiara Clara Wuisan', 'wuisanmutiara@gmail.com', 'XII MIA 2', 'Montresor', '085827807824', 'Andries Wuisan', '085827807824'),
(7, '0069590171', 'Theodore Christiano Devinto Murti', 'theodorecdm22@gmail.com', 'XII MIA 1', 'Houston', '089637099928', 'Agustinus Murti', '089637099928'),
(8, '0062791596', 'Rawindo Yoseph Singal', 'rawindosingal@gmail.com', 'XII MIA 2', 'Montresor', '085696459971', 'Alexander Singal', '085696459971'),
(9, '0065894011', 'Vensy Fillipo Inzaghi Ratu', 'vensyratu@gmail.com', 'XII MIA 1', 'Houston', '081344727784', 'Veydi Ratu', '081344727784'),
(13, '0079637355', 'Andrew Richard Laurentius Tobo', '.', 'XI C', 'Ganador', '085298521819', 'Nolfius Tobo', '085298521819'),
(14, '78980354', 'Arga Putra Purbaya', '.', 'XI C', 'Ganador', '085246663307', 'Ricky Rotinsulu', '085246663307'),
(15, '0079098214', 'Aurelia Angella Merichi Islani', '.', 'XI B', 'Ravenclaw', '085340277246', 'Glando Islani', '085340277246'),
(16, '0085372376', 'Alyshia Hillary Walangitan', '.', 'XI B', 'Ravenclaw', '085398920079', 'Barter Walangitan ', '085398920079'),
(17, '0083281534', 'Calvin Jonathan Lineleyan', '.', 'XI B', 'Ravenclaw', '085756906770', 'Jonly Lineleyan', '085756906770'),
(18, '0074538883', 'Cahaya Fransisca Tikonowu', '.', 'XI C', 'Ganador', '081341941322', 'Raymond Tikonowu', '081341941322'),
(19, '0075933625', 'Cevin Septinus Vincensius Mukuan', '.', 'XI C', 'Ganador', '081245964455', 'Rona Mukuan', '081245964455'),
(20, '0081121729', 'Chelsea Cresensia Tielung', '.', 'XI A', 'Ateenagers', '085298656356', 'Silvester Tielung', '085298656356'),
(21, '0083456163', 'Chrivansia Rivlia Angelika Koho', '.', 'XI A', 'Ateenagers', '08960125150', 'Allen Koho', '08960125150'),
(22, '0081240681', 'Cinta Prilly Geraldine Tamon', '.', 'XI B', 'Ravenclaw', '082393176518', 'Maxi Tamon', '082393176518'),
(23, '0082359791', 'Daniel Engelbert Tambuwun', '.', 'XI A', 'Ateenagers', '089504813136', 'Eman Tambuwun', '089504813136'),
(24, '0068342044', 'Deddy Ignatius Kotambunan', '.', 'XI A', 'Ateenagers', '085823547827', 'Michael Maireom', '085823547827'),
(25, '0086501727', 'Dona Maria Imaculata Wenur', '.', 'XI B', 'Ravenclaw', '085241302188', 'Donny Wenur', '085241302188'),
(26, '0079684378', 'Eduardo Rasubala', '.', 'XI C', 'Ganador', '081218628416', 'Romeo Rasubala', '081218628416'),
(27, '0083175727', 'Erlhy Yosefa Lumentut', '.', 'XI C', 'Ganador', '085240058857', 'Jantje Lumentut', '085240058857'),
(28, '0078983906', 'Euclid Miracelia Tumipa', '.', 'XI A', 'Ateenagers', '085796852440', 'Adrianes Tumipa', '085796852440'),
(29, '0069143897', 'Febrilia Mangoli', '.', 'XI A', 'Ateenagers', '085242179364', 'Yunus Mangoli', '085242179364'),
(30, '0087246594', 'Flower Navyseal Corneles', '.', 'XI B', 'Ravenclaw', '.', 'Billy Corneles', '.'),
(31, '0081090301', 'Gisela Aurel Ramengkomole', '.', 'XI A', 'Ateenagers', '0887435575462', 'Alfian Ramengkomole', '0887435575462'),
(32, '0083223639', 'Gloria Teresa Seon', '.', 'XI C', 'Ganador', '0899283740012', 'Iwan Antonius Seon', '0899283740012'),
(33, '0087331211', 'Gracia Oktavia Kapugu', '.', 'XI C', 'Ganador', '082216566885', 'Valentino Kapugu', '082216566885'),
(34, '0074317718', 'Gracia Silow', '.', 'XI C', 'Ganador', '081527745710', 'Landy Silow', '081527745710'),
(35, '0087264180', 'Grychell Geannedrach Wowor', '.', 'XI A', 'Ateenagers', '085823022062', 'Rico Wowor', '085823022062'),
(36, '0075206872', 'Hana Sestia Alfa Artiani', '.', 'XI B', 'Ravenclaw', '085242332712', 'Sugiarto', '085242332712'),
(37, '0082918304', 'Hendriko Lengkong', '.', 'XI B', 'Ravenclaw', '089531814588', 'Jufri Lengkong', '089531814588'),
(38, '0078664046', 'Hyachiano Justin Carundeng', '.', 'XI C', 'Ganador', '085256862123', 'Rolly Carundeng', '085256862123'),
(39, '0077565078', 'Izack Barnabas Hormati', '.', 'XI B', 'Ravenclaw', '085756777729', 'Arlocius Hormati', '085756777729'),
(40, '0077035012', 'Jacsen Sefrianus Rory', '.', 'XI C', 'Ganador', '081526070420', 'Benyamin Rory', '081526070420'),
(41, '0081989256', 'Jaeden Pontoh', '.', 'XI A', 'Ateenagers', '085340370356', 'Romel Pontoh', '085340370356'),
(42, '0133459054', 'Jelove Jerini Tuuk ', '.', 'XI C', 'Ganador', '085255987887', 'Jerry Tuuk', '085255987887'),
(43, '0081785905', 'Jenifer Gladly Tawas', '.', 'XI A', 'Ateenagers', '085823137994', 'Lucky Tawas', '085823137994'),
(44, '0087063624', 'Jeremi Kapugu', '.', 'XI B', 'Ravenclaw', '089694998725', 'Freni Kapugu', '089694998725'),
(45, '307103356', 'Jilly Renata Putri Kumolontang', '.', 'XI B', 'Ravenclaw', '085757468067', 'Felmer Kumolontang', '085757468067'),
(46, '0089761397', 'Joel Kenza Antameng', '.', 'XI B', 'Ravenclaw', '081242998023', 'Rivo Antameng', '081242998023'),
(47, '0077161546', 'Jonathan Richardo Sinaga', '.', 'XI C', 'Ganador', '081342389286', 'Jondrianson Sinaga', '081342389286'),
(48, '0063831680', 'Jhonatan Arnold Sariowan', '.', 'XI C', 'Ganador', '085340443637', 'Fanny Sariowan', '085340443637'),
(49, '0071836596', 'Juan Christian Kaporoh', '.', 'XI A', 'Ateenagers', '082266882578', 'Denny Kaporoh', '082266882578'),
(50, '0082749699', 'Julio David Andrew Tumbelaka', '.', 'XI A', 'Ateenagers', '085823050515', 'Maikel Tumbelaka', '085823050515'),
(51, '0075154456', 'Juven Jeskri Lombogia', '.', 'XI B', 'Ravenclaw', '0895805191952', 'Fentje Lombogia', '0895805191952'),
(55, '0076889958', 'Keysa Celia Carundeng', '.', 'XI C', 'Ganador', '081356080021', 'Denny Carundeng', '081356080021'),
(54, '0084644773', 'Kensya Josua Yosafat Harisondak', '.', 'XI A', 'Ateenagers', '085211548878', 'Desmon Harisondak', '085211548878'),
(56, '0071741378', 'Kharis Evangel Mantiri', '.', 'XI B', 'Ravenclaw', '0887436523443', 'Ronald Mantiri', '0887436523443'),
(57, '0072736018', 'Kimberly Georgiana Dominuque Loho', '.', 'XI C', 'Ganador', '081356098488', 'Rosano Loho', '081356098488'),
(58, '0076881488', 'Lady Chelsea Wuwumbene', '.', 'XI C', 'Ganador', '081242625604', 'Charles Wuwumbene', '081242625604'),
(59, '0074061124', 'Lian Irene Gaghana', 'liangaghana@gmail.com', 'XI A', 'Ateenagers', '082393177230', 'Jonly Gaghana', '082393177230'),
(60, '0084119403', 'Lindsay Kezia Latando', '.', 'XI B', 'Ravenclaw', '082122590677', 'Frangky Latando', '082122590677'),
(61, '0089131121', 'Loveitha Laatung', '.', 'XI B', 'Ravenclaw', '085696251300', 'Hence Laatung', '085696251300'),
(62, '0077686708', 'Lutwika Sipradina Lahea', '.', 'XI C', 'Ganador', '082344104018', 'Salundang Lahea', '082344104018'),
(63, '0067857524', 'Maria Goreti Telaubun', '.', 'XI C', 'Ganador', '085823044471', 'Ignasius Telaubun', '085823044471'),
(64, '0074385368', 'Michaela Cicilia Tumbelaka', '.', 'XI A', 'Ateenagers', '085242682100', 'Jefry Tumbelaka', '085242682100'),
(65, '0086816032', 'Nasyanta Aurelia Chiantoery', '.', 'XI B', 'Ravenclaw', '085255673712', 'Edward Chiantoery ', '085255673712'),
(66, '0083778260', 'Nathnael Gilbert Keegan Abraham', '.', 'XI A', 'Ateenagers', '089694830612', 'Demeysus Abraham', '089694830612'),
(67, '0076064952', 'Nicky Marcelino Malingkas', '.', 'XI A', 'Ateenagers', '0895360629502', 'Janter Malingkas', '0895360629502'),
(68, '0073174609', 'Nicole Andrea Wulur', '.', 'XI A', 'Ateenagers', '082259923453', 'Reza Wulur', '082259923453'),
(69, '0086362875', 'Nikita Lumentah', '.', 'XI B', 'Ravenclaw', '085823325208', 'Pally Lumentah', '085823325208'),
(70, '0074168299', 'Peggy Anastasia Saroinsong', '.', 'XI A', 'Ateenagers', '081355035554', 'Jeffry Saroinsong', '081355035554'),
(71, '0089429069', 'Pinky Queen Manuas', '.', 'XI C', 'Ganador', '082190698330', 'Jackson Manuas', '082190698330'),
(72, '0084087986', 'Princesly Ezra Miracle Chelsea Moray Jr', '.', 'XI B', 'Ravenclaw', '085240576088', 'Rommy Moray', '085240576088'),
(73, '0074938167', 'Putri Blesing Sanger', '.', 'XI B', 'Ravenclaw', '085394094745', 'Evan Sanger', '085394094745'),
(74, '0075089068', 'Putri Tyas Asih', '.', 'XI A', 'Ateenagers', '.', 'Ismubadir', '.'),
(75, '0072550300', 'Rachel Luna Awuy', '.', 'XI A', 'Ateenagers', '082194212298', 'Rolly Awuy', '082194212298'),
(76, '0079607201', 'Valentino Jeremy Kumendong', '.', 'XI B', 'Ravenclaw', '085696681705', 'Fanny Kumendong', '085696681705'),
(77, '0088171184', 'Velove Laurencia Bongkona', '.', 'XI A', 'Ateenagers', '081545221979', 'Fenny Bongkona', '081545221979'),
(78, '0071198894', 'Virginia Mutiara Kawengian', '.', 'XI B', 'Ravenclaw', '082261078591', 'Jefry Kawengian', '082261078591'),
(79, '0077457314', 'William Boneventura Sampouw', '.', 'XI A', 'Ateenagers', '082191122431', 'Devi Sampouw', '082191122431'),
(80, '0083153050', 'Christian Affabil Sumenda ', '.', 'XI A', 'Ateenagers', '082187912530', 'Yos Sumenda', '082187912530'),
(81, '0081946928', 'Marsya Agnesya Mose', '.', 'XI A', 'Ateenagers', '085398401091', 'Marthen Mose', '085398401091'),
(82, '0073604978', 'Natasya Angela Wondal', '.', 'XI A', 'Ateenagers', '082393143774', 'Jefri Wondal', '082393143774'),
(83, '0076388715', 'Syallomita Anjela Aurelya Kau', '.', 'XI A', 'Ateenagers', '0895395328469', 'Aryanto Kau', '0895395328469'),
(84, '0076434511', 'Reihant Maindoka', '.', 'XI A', 'Ateenagers', '081527465974', 'Wiklif Maindoka', '081527465974'),
(85, '0077826273', 'Aileen Vanessa Rondonuwu', '.', 'XI A', 'Ateenagers', '085240502018', 'Rommy Rondonuwu', '085240502018'),
(86, '0083191426', 'Alvaro Samuel Rumengan', '.', 'XI A', 'Ateenagers', '081245836257', 'Manly Rumengan', '081245836257'),
(87, '0083257885', 'Cheysia Aodia Junus', '.', 'XI B', 'Ravenclaw', '082393208859', 'Yudy Junus', '082393208859'),
(88, '0075341045', 'Eleasha Desire Tumimomor', '.', 'XI B', 'Ravenclaw', '082187473638', 'Philip Tumimomor', '082187473638'),
(89, '0074850534', 'Geraldo Aloysius Gonzaga Manorek', '.', 'XI B', 'Ravenclaw', '081241931341', 'Fransiskus Manorek', '081241931341'),
(90, '0081464681', 'Kasih Florensia Mukuan', '.', 'XI B', 'Ravenclaw', '085823515037', 'Maikel Mukuan', '085823515037'),
(91, '0082506365', 'Rafael Gavra Miracle Piri', '.', 'XI B', 'Ravenclaw', '085340102012', 'Elfritzo Piri', '085340102012'),
(92, '0082167562', 'Rhenata Giroth ', '.', 'XI B', 'Ravenclaw', '081245836287', 'Fainly Giroth', '081245836287'),
(93, '0067927512', 'Seflina Gloria Tunas', '.', 'XI B', 'Ravenclaw', '081543035017', 'Mayirsil Tunas', '081543035017'),
(94, '0072161068', 'Sweety Descyana Reppi', '.', 'XI B', 'Ravenclaw', '08124392810', 'Ferry Reppi', '08124392810'),
(95, '0078180445', 'Syevi Chelsea Roring', '.', 'XI B', 'Ravenclaw', '08884244288', 'Nolvy Roring', '08884244288'),
(96, '0076463163', 'Alexander Phang', '.', 'XI C', 'Ganador', '081241906525', 'Fu Hendra', '081241906525'),
(97, '0078994282', 'Kathlyn Qeyla Mokoginta', '.', 'XI C', 'Ganador', '085256833317', 'Yansen Mokoginta', '085256833317'),
(98, '0085641177', 'Aprilla Violet Giselle Kodongan', '.', 'X A', 'Allstarx', '0895704360309', 'Leo Kodongan', '0895704360309'),
(100, '0084182149', 'Bilqis Salsabila Kustiyana', '.', 'X A', 'Allstarx', '.', 'Didik Kustiyana', '.'),
(101, '0086584665', 'Chens Mosses Octo Nusalawo', '.', 'X A', 'Allstarx', '089694994857', 'Nolpius Nusalawo', '089694994857'),
(102, '0084324646', 'Clark Clay Einstein Mantiri', '.', 'X A', 'Allstarx', '081242274737', 'Ezra Mantiri', '081242274737'),
(103, '0082565676', 'Daud Gregorius Sumampouw', '.', 'X A', 'Allstarx', '081238389544', 'Jendri Sumampouw', '081238389544'),
(104, '0089292786', 'Diolova Stifly Wentong', '.', 'X A', 'Allstarx', '085240522338', 'Devis Wentong', '085240522338'),
(105, '0082553678', 'Eirene Laoritan', '.', 'X A', 'Allstarx', '085256292538', 'Edwin Laoritan', '085256292538'),
(106, '0098017742', 'Estevania Imbrugilia Koagow', '.', 'X A', 'Allstarx', '085256693287', 'Rivansi Koagow', '085256693287'),
(107, '0086730823', 'Gabriel Chiko Pondaag', '.', 'X A', 'Allstarx', '082195024837', 'Richo Pondaag', '082195024837'),
(108, '0098043575', 'Gabriela Tumalun', '.', 'X A', 'Allstarx', '085796356307', 'Siluester Tumalun', '085796356307'),
(109, '0071993536', 'Genesis Samuel Rumengan', '.', 'X A', 'Allstarx', '089698097756', 'Bobby Rumengan', '089698097756'),
(110, '0075139135', 'Ignatio Kawengian', '.', 'X A', 'Allstarx', '085796391492', 'Sonny Kawengian', '085796391492'),
(111, '0084819300', 'Injilia Indah Laoh', '.', 'X A', 'Allstarx', '082196578059', 'Milkson Laoh', '082196578059'),
(112, '0085619182', 'Jacquiline Natania Manangka ', '.', 'X A', 'Allstarx', '081524407822', 'Yans Manangka', '081524407822'),
(113, '0088201336', 'Joana Ecclesia Laterina', ',', 'X A', 'Allstarx', '085696200346', 'Suroto', '085696200346'),
(114, '0089023198', 'Junior Paulus Lumenta', '.', 'X A', 'Allstarx', '085757166133', 'Doni Lumenta', '085757166133'),
(115, '0085283113', 'Kristian Aldo Prasetya', '.', 'X A', 'Allstarx', '081526042528', 'Prio Santoso', '081526042528'),
(116, '0087889289', 'Margaretha Khayllila Nurak Lelo', '.', 'X A', 'Allstarx', '.', 'Patrisius Lusi', '.'),
(117, '0084955131', 'Marisska Gloria Lumentut ', '.', 'X A', 'Allstarx', '081524725969', 'Terry Lumentut', '081524725969'),
(118, '0097295473', 'Martha Apriani Siagian', '.', 'X A', 'Allstarx', '081243958576', 'Marolop Siagian ', '081243958576'),
(119, '3087036207', 'Matthew Nicholas Manchester Hosang', '.', 'X A', 'Allstarx', '085256672210', 'Rifani Hosang', '085256672210'),
(120, '0082323972', 'Monica Lie Nindy', '.', 'X A', 'Allstarx', '085299674566', 'Stevanus Arfan', '085299674566'),
(121, '0083862750', 'Pingkan Inggina Mamesah', '.', 'X A', 'Allstarx', '085823759829', 'Ezra Mamesah', '085823759829'),
(122, '0085590192', 'Prayer Miracle Elgibbor Melale', '.', 'X A', 'Allstarx', '081324839182', 'Khristian Melale', '081324839182'),
(123, '0082611871', 'Rafael Mario Yanto ', '.', 'X A', 'Allstarx', '085299674514', 'Ronny Yanto', '085299674514'),
(124, '0085088071', 'Rifky Erlangga Legoh', '.', 'X A', 'Allstarx', '085757854289', 'Mario Legoh', '085757854289'),
(125, '0085416799', 'Rivana Aprilia Sumuru ', '.', 'X A', 'Allstarx', '082190886928', 'Haspan Sumuru', '082190886928'),
(126, '0083726330', 'Vincentius Kevin Wonombong', '.', 'X A', 'Allstarx', '081245811837', 'Stenli Wonombong', '081245811837'),
(127, '0084428751', 'Afrilia Maria Moningka', '.', 'X B', 'Descendants', '081340020021', 'Stenly Moningka', '081340020021'),
(128, '0081817656', 'Anugerah Riguelme Mamahit', '.', 'X B', 'Descendants', '085823547062', 'Novi Mamahit', '085823547062'),
(129, '0083785798', 'Aurelia Tabhita Aomo', '.', 'X B', 'Descendants', '085340145577', 'Julianto Aomo', '085340145577'),
(130, '0085001942', 'Brigita Julinov Encarnacao', '.', 'X B', 'Descendants', '082213266989', 'Basilio Encaracao', '082213266989'),
(131, '0085382717', 'Chriliya Gheisya Lovenia Sarean', '.', 'X B', 'Descendants', '081339446355', 'Christ Sarean', '081339446355'),
(132, '0087624368', 'Christovano Berwyn Rumangu', '.', 'X B', 'Descendants', '.', 'Stefanus Rumangu', '.'),
(133, '0091513832', 'Deandra Anabelle Kalangi', '.', 'X B', 'Descendants', '085398764941', 'Samuel Kalangi', '085398764941'),
(134, '0089306874', 'Filipi Lionel Tambayong', '.', 'X B', 'Descendants', '082196958151', 'Feky Tambayong', '082196958151'),
(135, '0083431123', 'Florence Karina Winbi Rumampuk', '.', 'X B', 'Descendants', '08124490270', 'Erwin Rumampuk', '08124490270'),
(136, '0097954800', 'Giok Yin Faustina Repi', '.', 'X B', 'Descendants', '082190584216', 'Irvandi Repi', '082190584216'),
(137, '0089131482', 'Hosana Igreya Ratu', '.', 'X B', 'Descendants', '085256030822', 'Deky Ratu', '085256030822'),
(138, '3089402726', 'Jericho Hamonangan Dominggus Sitorus', '.', 'X B', 'Descendants', '081346835224', 'Jadi Sitorus', '081346835224'),
(139, '0074997491', 'Jesika Korneles', '.', 'X B', 'Descendants', '085254458634', 'Verawaty', '085254458634'),
(140, '0089553405', 'Jovi Noel Tumipa', '.', 'X B', 'Descendants', '085657200756', 'Novri Tumipa', '085657200756'),
(141, '0087220871', 'Kyrie Gadsya Lovenita Pangkey', '.', 'X B', 'Descendants', '082195052755', 'Fenty Pangkey', '082195052755'),
(142, '0082984136', 'Louis Sebastian Tumipa', '.', 'X B', 'Descendants', '085825191024', 'Reflan Tumipa', '085825191024'),
(143, '0076532495', 'Majestic Blesing Ido Rantung ', '.', 'X B', 'Descendants', '085756985276', 'Sam Rantung', '085756985276'),
(144, '0092558229', 'Marcello Christian Buyung', '.', 'X B', 'Descendants', '081283872809', 'Hanny Buyung', '081283872809'),
(145, '0083647420', 'Nofani Momongan', '.', 'X B', 'Descendants', '081543037173', 'Yukdi Momongan', '081543037173'),
(146, '0096009895', 'Prayer Belief Liando', '.', 'X B', 'Descendants', '089531818441', 'Poke Liando', '089531818441'),
(147, '0085582089', 'Princio Angelo Tumembow', '.', 'X B', 'Descendants', '.', 'Stevy Tumembow', '.Stevy '),
(148, '0088765116', 'Queency Miracle Monde ', '.', 'X B', 'Descendants', '082349924098', 'Steven Monde', '082349924098'),
(149, '0081456476', 'Rainheart Supriyadi', '.', 'X B', 'Descendants', '085825195935', 'Stevvan Supriyadi', '085825195935'),
(150, '0092903554', 'Rifky Efraim Mamahit', '.', 'X B', 'Descendants', '082231376340', 'Aruy Mamahit', '082231376340'),
(151, '0088039057', 'Roscoe Lumenta', '.', 'X B', 'Descendants', '085657200351', 'Rudy Lumenta', '085657200351'),
(152, '0081931535', 'Samuel Efraim Bolang', '.', 'X B', 'Descendants', '081523941528', 'Yobert Bolang', '081523941528'),
(153, '0086096199', 'Shanmica Kyvi Ekklesia Roring', '.', 'X B', 'Descendants', '085656993950', 'Meyki Rorong', '085656993950'),
(154, '0099756368', 'Tiara Equilya Valencya Nadya Siwu', '.', 'X B', 'Descendants', '082192375848', 'Yani Siwu', '082192375848'),
(155, '0087096178', 'Alexander Asiong Sariowan', '.', 'X C', 'Alphabetz', '085340443646', 'Fanny Sariowan', '085340443646'),
(156, '0091313661', 'Anugrah Jeskal Selah', '.', 'X C', 'Alphabetz', '.', 'Jemi Selah', '.'),
(157, '0084881363', 'Bonfilio Fidelis Melo', '.', 'X C', 'Alphabetz', '08579660320', 'Nicolaus Melo', '08579660320'),
(158, '0084017398', 'Brychie Medison Umboh', '.', 'X C', 'Alphabetz', '085342106220', 'Donny Umboh', '085342106220'),
(159, '0076337071', 'Danisa Iklesia Otta', '.', 'X C', 'Alphabetz', '081543023697', 'Iksun Otta ', '081543023697'),
(160, '0087074153', 'Diva Mangundap', '.', 'X C', 'Alphabetz', '.', 'Deky Mangundap', '.'),
(161, '0085459494', 'Dominico Savio Lembong', '.', 'X C', 'Alphabetz', '080530757799', 'Johanis Lembong', '080530757799'),
(162, '0098980922', 'Edward Wuwumbene ', '.', 'X C', 'Alphabetz', '085240261198', 'Elvan Wuwumbene', '085240261198'),
(163, '0083378654.', 'Evelyn Angie Gosyantu', '.', 'X C', 'Alphabetz', '081340407575', 'Lengky Gosyantu', '081340407575'),
(164, '0086973571', 'Ezra Naomi Luciana Wokas', '.', 'X C', 'Alphabetz', '085145789339', 'Harry Wokas', '085145789339'),
(165, '0094948745', 'Gabriel Tulalo', '.', 'X C', 'Alphabetz', '085756482640', 'Norris Tulalo', '085756482640'),
(166, '0089554814', 'Gea Trifena Walangitan', '.', 'X C', 'Alphabetz', '081527838818', 'Hesky Walangitan', '081527838818'),
(167, '0088050918', 'Greyzhia Lyoctha Inerbeauty Tulandi', 'tulandi@gmail.com', 'X C', 'Alphabetz', '082191200238', 'Junly Tulandi', '082191200238'),
(168, '0087283396', 'Jorel Pundoko', '.', 'X C', 'Alphabetz', '.', 'Jemy Pundoko', '.'),
(169, '0099211181', 'Julius Jhosua Iroth', '.', 'X C', 'Alphabetz', '082187485207', 'Rudy Iroth', '082187485207'),
(170, '0098599431', 'Kasih Karunia Tambahani', '.', 'X C', 'Alphabetz', '085696242392', 'Jefry Tambahani', '085696242392'),
(171, '0081043002', 'Kimbearly Elshadai Tumalun', '.', 'X C', 'Alphabetz', '081527606484', 'Risky Tumalun', '081527606484'),
(172, '0097328822', 'Kristian Reky Posumah Kapoh', '.', 'X C', 'Alphabetz', '081526086672', 'Decky Kapoh', '081526086672'),
(173, '0086314857', 'Marvel Edward Lapian', '.', 'X C', 'Alphabetz', '082187783672', 'Vincente Lapian', '082187783672'),
(174, '0089800611', 'Relly Rumario Tasik', '.', 'X C', 'Alphabetz', '085298066689', 'Vernando Tasik', '085298066689'),
(175, '0083704931', 'Natalia Febirdikha Yuliana Laian', '.', 'X C', 'Alphabetz', '0895805092721', 'Wensislaus Laian', '0895805092721'),
(176, '0086282426', 'Natalia Zivana Chandra', '.', 'X C', 'Alphabetz', '085342443703', 'Yanny Chandra ', '085342443703'),
(177, '0088561400', 'Ovrilia Prayshe Wowiling', '.', 'X C', 'Alphabetz', '085241048061', 'Heppy Wowiling', '085241048061'),
(178, '0087014911', 'Pelita Keisya Lempas', '.', 'X C', 'Alphabetz', '081527230759', 'Boyke Lempas', '081527230759'),
(179, '0088033694', 'Rafael Angelo Adriansah', '.', 'X C', 'Alphabetz', '081387969752', 'Daniel Adriansah', '081387969752'),
(180, '0081021271', 'Stela Jevischa Michi Mongi', '.', 'X C', 'Alphabetz', '085394685935', 'Stanley Mongi', '085394685935'),
(181, '3089013391', 'Steveen Said', '.', 'X C', 'Alphabetz', '.', 'Ichwan Said', '.'),
(182, '0085949936', 'Timoti Komaling', '.', 'X C', 'Alphabetz', '0895806591645', 'Royke Komaling', '0895806591645');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_datadata`
--
ALTER TABLE `tb_datadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menampilkan`
--
ALTER TABLE `tb_menampilkan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_datadata`
--
ALTER TABLE `tb_datadata`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_menampilkan`
--
ALTER TABLE `tb_menampilkan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
