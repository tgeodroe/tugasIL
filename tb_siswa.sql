-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 12:29 PM
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
-- Database: `nama_saya`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(100) NOT NULL,
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
(1, '0068510925', 'Chyrania Priency Safira Manossoh', 'chyranmanossoh@gmail.com', 'XII MIA 2', 'Montresor', '081524522313', 'Raymond Manossoh', '081524522313'),
(2, '0077657246', 'Valentino Divo Werdi', '.', 'XI A', 'Ateenagers', '085256501234', 'Fonny Mokalu', '085256501234'),
(3, '0077551687', 'Stephanie Apricilia Kumaseh', '.', 'XI C', 'Ganador', '085256027528', 'Stenly Kumaseh', '085256027528'),
(4, '0084686244', 'Skolastiko Gaudensio Ponamon', '.', 'XI C', 'Ganador', '085756639067', 'Yanwarius Ponamon', '085756639067'),
(5, '0084067014', 'Sesilia Marsya Pineke Tumbel', '.', 'XI C', 'Ganador', '0895711075555', 'Frangky Tumbel', '0895711075555'),
(6, '0078594889', 'Samuel Farrel Maabut', '.', 'XI C', 'Ganador', '085242507178', 'Ferry Maabuat', '085242507178'),
(7, '0052002191', 'Rafael Panungkelan', '.', 'XI C', 'Ganador', '081523871852', 'Reflen Panungkelan', '081523871852'),
(8, '0073604978', 'Natalya Grisela Carundeng', '.', 'XI C', 'Ganador', '085394950445', 'Alex Carundeng', '085394950445'),
(9, ' 0084228531', 'Mathew Gilbert Sumaraw Winoto', '.', 'XI C', 'Ganador', '082196963392', 'Greis Sumaraw', '082196963392'),
(10, '0079637355', 'Andrew Richard Laurentius Tobo', '.', 'XI C', 'Ganador', '085298521819', 'Nolfius Tobo', '085298521819'),
(11, '78980354', 'Arga Putra Purbaya', '.', 'XI C', 'Ganador', '085246663307', 'Ricky Rotinsulu', '085246663307'),
(12, '0079098214', 'Aurelia Angella Merichi Islani', '.', 'XI B', 'Ravenclaw', '085340277246', 'Glando Islani', '085340277246'),
(13, '0085372376', 'Alyshia Hillary Walangitan', '.', 'XI B', 'Ravenclaw', '085398920079', 'Barter Walangitan ', '085398920079'),
(14, '0083281534', 'Calvin Jonathan Lineleyan', '.', 'XI B', 'Ravenclaw', '085756906770', 'Jonly Lineleyan', '085756906770'),
(15, '0074538883', 'Cahaya Fransisca Tikonowu', '.', 'XI C', 'Ganador', '081341941322', 'Raymond Tikonowu', '081341941322'),
(16, '0075933625', 'Cevin Septinus Vincensius Mukuan', '.', 'XI C', 'Ganador', '081245964455', 'Rona Mukuan', '081245964455'),
(17, '0081121729', 'Chelsea Cresensia Tielung', '.', 'XI A', 'Ateenagers', '085298656356', 'Silvester Tielung', '085298656356'),
(18, '0083456163', 'Chrivansia Rivlia Angelika Koho', '.', 'XI A', 'Ateenagers', '08960125150', 'Allen Koho', '08960125150'),
(19, '0081240681', 'Cinta Prilly Geraldine Tamon', '.', 'XI B', 'Ravenclaw', '082393176518', 'Maxi Tamon', '082393176518'),
(20, '0082359791', 'Daniel Engelbert Tambuwun', '.', 'XI A', 'Ateenagers', '089504813136', 'Eman Tambuwun', '089504813136'),
(21, '0068342044', 'Deddy Ignatius Kotambunan', '.', 'XI A', 'Ateenagers', '085823547827', 'Michael Maireom', '085823547827'),
(22, '0086501727', 'Dona Maria Imaculata Wenur', '.', 'XI B', 'Ravenclaw', '085241302188', 'Donny Wenur', '085241302188'),
(23, '0079684378', 'Eduardo Rasubala', '.', 'XI C', 'Ganador', '081218628416', 'Romeo Rasubala', '081218628416'),
(24, '0083175727', 'Erlhy Yosefa Lumentut', '.', 'XI C', 'Ganador', '085240058857', 'Jantje Lumentut', '085240058857'),
(25, '0078983906', 'Euclid Miracelia Tumipa', '.', 'XI A', 'Ateenagers', '085796852440', 'Adrianes Tumipa', '085796852440'),
(26, '0069143897', 'Febrilia Mangoli', '.', 'XI A', 'Ateenagers', '085242179364', 'Yunus Mangoli', '085242179364'),
(27, '0087246594', 'Flower Navyseal Corneles', '.', 'XI B', 'Ravenclaw', '.', 'Billy Corneles', '.'),
(28, '0081090301', 'Gisela Aurel Ramengkomole', '.', 'XI A', 'Ateenagers', '0887435575462', 'Alfian Ramengkomole', '0887435575462'),
(29, '0083223639', 'Gloria Teresa Seon', '.', 'XI C', 'Ganador', '0899283740012', 'Iwan Antonius Seon', '0899283740012'),
(30, '0087331211', 'Gracia Oktavia Kapugu', '.', 'XI C', 'Ganador', '082216566885', 'Valentino Kapugu', '082216566885'),
(31, '0074317718', 'Gracia Silow', '.', 'XI C', 'Ganador', '081527745710', 'Landy Silow', '081527745710'),
(32, '0087264180', 'Grychell Geannedrach Wowor', '.', 'XI A', 'Ateenagers', '085823022062', 'Rico Wowor', '085823022062'),
(33, '0075206872', 'Hana Sestia Alfa Artiani', '.', 'XI B', 'Ravenclaw', '085242332712', 'Sugiarto', '085242332712'),
(34, '0082918304', 'Hendriko Lengkong', '.', 'XI B', 'Ravenclaw', '089531814588', 'Jufri Lengkong', '089531814588'),
(35, '0078664046', 'Hyachiano Justin Carundeng', '.', 'XI C', 'Ganador', '085256862123', 'Rolly Carundeng', '085256862123'),
(36, '0077565078', 'Izack Barnabas Hormati', '.', 'XI B', 'Ravenclaw', '085756777729', 'Arlocius Hormati', '085756777729'),
(37, '0077035012', 'Jacsen Sefrianus Rory', '.', 'XI C', 'Ganador', '081526070420', 'Benyamin Rory', '081526070420'),
(38, '0081989256', 'Jaeden Pontoh', '.', 'XI A', 'Ateenagers', '085340370356', 'Romel Pontoh', '085340370356'),
(39, '0133459054', 'Jelove Jerini Tuuk ', '.', 'XI C', 'Ganador', '085255987887', 'Jerry Tuuk', '085255987887'),
(40, '0081785905', 'Jenifer Gladly Tawas', '.', 'XI A', 'Ateenagers', '085823137994', 'Lucky Tawas', '085823137994'),
(41, '0087063624', 'Jeremi Kapugu', '.', 'XI B', 'Ravenclaw', '089694998725', 'Freni Kapugu', '089694998725'),
(42, '307103356', 'Jilly Renata Putri Kumolontang', '.', 'XI B', 'Ravenclaw', '085757468067', 'Felmer Kumolontang', '085757468067'),
(43, '0089761397', 'Joel Kenza Antameng', '.', 'XI B', 'Ravenclaw', '081242998023', 'Rivo Antameng', '081242998023'),
(44, '0077161546', 'Jonathan Richardo Sinaga', '.', 'XI C', 'Ganador', '081342389286', 'Jondrianson Sinaga', '081342389286'),
(45, '0063831680', 'Jhonatan Arnold Sariowan', '.', 'XI C', 'Ganador', '085340443637', 'Fanny Sariowan', '085340443637'),
(46, '0071836596', 'Juan Christian Kaporoh', '.', 'XI A', 'Ateenagers', '082266882578', 'Denny Kaporoh', '082266882578'),
(47, '0082749699', 'Julio David Andrew Tumbelaka', '.', 'XI A', 'Ateenagers', '085823050515', 'Maikel Tumbelaka', '085823050515'),
(48, '0075154456', 'Juven Jeskri Lombogia', '.', 'XI B', 'Ravenclaw', '0895805191952', 'Fentje Lombogia', '0895805191952'),
(49, '0076889958', 'Keysa Celia Carundeng', '.', 'XI C', 'Ganador', '081356080021', 'Denny Carundeng', '081356080021'),
(50, '0084644773', 'Kensya Josua Yosafat Harisondak', '.', 'XI A', 'Ateenagers', '085211548878', 'Desmon Harisondak', '085211548878'),
(51, '0071741378', 'Kharis Evangel Mantiri', '.', 'XI B', 'Ravenclaw', '0887436523443', 'Ronald Mantiri', '0887436523443'),
(52, '0072736018', 'Kimberly Georgiana Dominuque Loho', '.', 'XI C', 'Ganador', '081356098488', 'Rosano Loho', '081356098488'),
(53, '0076881488', 'Lady Chelsea Wuwumbene', '.', 'XI C', 'Ganador', '081242625604', 'Charles Wuwumbene', '081242625604'),
(54, '0074061124', 'Lian Irene Gaghana', 'liangaghana@gmail.com', 'XI A', 'Ateenagers', '082393177230', 'Jonly Gaghana', '082393177230'),
(55, '0084119403', 'Lindsay Kezia Latando', '.', 'XI B', 'Ravenclaw', '082122590677', 'Frangky Latando', '082122590677'),
(56, '0089131121', 'Loveitha Laatung', '.', 'XI B', 'Ravenclaw', '085696251300', 'Hence Laatung', '085696251300'),
(57, '0077686708', 'Lutwika Sipradina Lahea', '.', 'XI C', 'Ganador', '082344104018', 'Salundang Lahea', '082344104018'),
(58, '0067857524', 'Maria Goreti Telaubun', '.', 'XI C', 'Ganador', '085823044471', 'Ignasius Telaubun', '085823044471'),
(59, '0074385368', 'Michaela Cicilia Tumbelaka', '.', 'XI A', 'Ateenagers', '085242682100', 'Jefry Tumbelaka', '085242682100'),
(60, '0086816032', 'Nasyanta Aurelia Chiantoery', '.', 'XI B', 'Ravenclaw', '085255673712', 'Edward Chiantoery ', '085255673712'),
(61, '0083778260', 'Nathnael Gilbert Keegan Abraham', '.', 'XI A', 'Ateenagers', '089694830612', 'Demeysus Abraham', '089694830612'),
(62, '0076064952', 'Nicky Marcelino Malingkas', '.', 'XI A', 'Ateenagers', '0895360629502', 'Janter Malingkas', '0895360629502'),
(63, '0073174609', 'Nicole Andrea Wulur', '.', 'XI A', 'Ateenagers', '082259923453', 'Reza Wulur', '082259923453'),
(64, '0086362875', 'Nikita Lumentah', '.', 'XI B', 'Ravenclaw', '085823325208', 'Pally Lumentah', '085823325208'),
(65, '0074168299', 'Peggy Anastasia Saroinsong', '.', 'XI A', 'Ateenagers', '081355035554', 'Jeffry Saroinsong', '081355035554'),
(66, '0089429069', 'Pinky Queen Manuas', '.', 'XI C', 'Ganador', '082190698330', 'Jackson Manuas', '082190698330'),
(67, '0084087986', 'Princesly Ezra Miracle Chelsea Moray Jr', '.', 'XI B', 'Ravenclaw', '085240576088', 'Rommy Moray', '085240576088'),
(68, '0074938167', 'Putri Blesing Sanger', '.', 'XI B', 'Ravenclaw', '085394094745', 'Evan Sanger', '085394094745'),
(69, '0075089068', 'Putri Tyas Asih', '.', 'XI A', 'Ateenagers', '.', 'Ismubadir', '.'),
(70, '0072550300', 'Rachel Luna Awuy', '.', 'XI A', 'Ateenagers', '082194212298', 'Rolly Awuy', '082194212298'),
(71, '0079607201', 'Valentino Jeremy Kumendong', '.', 'XI B', 'Ravenclaw', '085696681705', 'Fanny Kumendong', '085696681705'),
(72, '0088171184', 'Velove Laurencia Bongkona', '.', 'XI A', 'Ateenagers', '081545221979', 'Fenny Bongkona', '081545221979'),
(73, '0071198894', 'Virginia Mutiara Kawengian', '.', 'XI B', 'Ravenclaw', '082261078591', 'Jefry Kawengian', '082261078591'),
(74, '0077457314', 'William Boneventura Sampouw', '.', 'XI A', 'Ateenagers', '082191122431', 'Devi Sampouw', '082191122431'),
(75, '0083153050', 'Christian Affabil Sumenda ', '.', 'XI A', 'Ateenagers', '082187912530', 'Yos Sumenda', '082187912530'),
(76, '0081946928', 'Marsya Agnesya Mose', '.', 'XI A', 'Ateenagers', '085398401091', 'Marthen Mose', '085398401091'),
(77, '0073604978', 'Natasya Angela Wondal', '.', 'XI A', 'Ateenagers', '082393143774', 'Jefri Wondal', '082393143774'),
(78, '0076388715', 'Syallomita Anjela Aurelya Kau', '.', 'XI A', 'Ateenagers', '0895395328469', 'Aryanto Kau', '0895395328469'),
(79, '0076434511', 'Reihant Maindoka', '.', 'XI A', 'Ateenagers', '081527465974', 'Wiklif Maindoka', '081527465974'),
(80, '0077826273', 'Aileen Vanessa Rondonuwu', '.', 'XI A', 'Ateenagers', '085240502018', 'Rommy Rondonuwu', '085240502018'),
(81, '0083191426', 'Alvaro Samuel Rumengan', '.', 'XI A', 'Ateenagers', '081245836257', 'Manly Rumengan', '081245836257'),
(82, '0083257885', 'Cheysia Aodia Junus', '.', 'XI B', 'Ravenclaw', '082393208859', 'Yudy Junus', '082393208859'),
(83, '0075341045', 'Eleasha Desire Tumimomor', '.', 'XI B', 'Ravenclaw', '082187473638', 'Philip Tumimomor', '082187473638'),
(84, '0074850534', 'Geraldo Aloysius Gonzaga Manorek', '.', 'XI B', 'Ravenclaw', '081241931341', 'Fransiskus Manorek', '081241931341'),
(85, '0081464681', 'Kasih Florensia Mukuan', '.', 'XI B', 'Ravenclaw', '085823515037', 'Maikel Mukuan', '085823515037'),
(86, '0082506365', 'Rafael Gavra Miracle Piri', '.', 'XI B', 'Ravenclaw', '085340102012', 'Elfritzo Piri', '085340102012'),
(87, '0082167562', 'Rhenata Giroth ', '.', 'XI B', 'Ravenclaw', '081245836287', 'Fainly Giroth', '081245836287'),
(88, '0067927512', 'Seflina Gloria Tunas', '.', 'XI B', 'Ravenclaw', '081543035017', 'Mayirsil Tunas', '081543035017'),
(89, '0072161068', 'Sweety Descyana Reppi', '.', 'XI B', 'Ravenclaw', '08124392810', 'Ferry Reppi', '08124392810'),
(90, '0078180445', 'Syevi Chelsea Roring', '.', 'XI B', 'Ravenclaw', '08884244288', 'Nolvy Roring', '08884244288'),
(91, '0076463163', 'AleX Ander Phang', '.', 'XI C', 'Ganador', '081241906525', 'Fu Hendra', '081241906525'),
(92, '0078994282', 'Kathlyn Qeyla Mokoginta', '.', 'XI C', 'Ganador', '085256833317', 'Yansen Mokoginta', '085256833317'),
(93, '0084988535', 'Kasih Sumolang', '.', 'XI A', 'Ateenagers', '081229558062', 'Billy Sumolang', '081229558062'),
(94, '0085641177', 'Aprilla Violet Giselle Kodongan', '.', 'X A', 'Allstarx', '0895704360309', 'Leo Kodongan', '0895704360309'),
(95, ' 0084228531', 'Mathew Gilbert Sumaraw Winoto', '.', 'XI C', 'Ganador', '082196963392', 'Greis Sumaraw', '082196963392'),
(96, '0084182149', 'Bilqis Salsabila Kustiyana', '.', 'X A', 'Allstarx', '.', 'Didik Kustiyana', '.'),
(97, '0086584665', 'Chens Mosses Octo Nusalawo', '.', 'X A', 'Allstarx', '089694994857', 'Nolpius Nusalawo', '089694994857'),
(98, '0084324646', 'Clark Clay Einstein Mantiri', '.', 'X A', 'Allstarx', '081242274737', 'Ezra Mantiri', '081242274737'),
(99, '0082565676', 'Daud Gregorius Sumampouw', '.', 'X A', 'Allstarx', '081238389544', 'Jendri Sumampouw', '081238389544'),
(100, '0089292786', 'Diolova Stifly Wentong', '.', 'X A', 'Allstarx', '085240522338', 'Devis Wentong', '085240522338'),
(101, '0082553678', 'Eirene Laoritan', '.', 'X A', 'Allstarx', '085256292538', 'Edwin Laoritan', '085256292538'),
(102, '0098017742', 'Estevania Imbrugilia Koagow', '.', 'X A', 'Allstarx', '085256693287', 'Rivansi Koagow', '085256693287'),
(103, '0086730823', 'Gabriel Chiko Pondaag', '.', 'X A', 'Allstarx', '082195024837', 'Richo Pondaag', '082195024837'),
(104, '0098043575', 'Gabriela Tumalun', '.', 'X A', 'Allstarx', '085796356307', 'Siluester Tumalun', '085796356307'),
(105, '0071993536', 'Genesis Samuel Rumengan', '.', 'X A', 'Allstarx', '089698097756', 'Bobby Rumengan', '089698097756'),
(106, '0075139135', 'Ignatio Kawengian', '.', 'X A', 'Allstarx', '085796391492', 'Sonny Kawengian', '085796391492'),
(107, '0084819300', 'Injilia Indah Laoh', '.', 'X A', 'Allstarx', '082196578059', 'Milkson Laoh', '082196578059'),
(108, '0085619182', 'Jacquiline Natania Manangka ', '.', 'X A', 'Allstarx', '081524407822', 'Yans Manangka', '081524407822'),
(109, '0088201336', 'Joana Ecclesia Laterina', ',', 'X A', 'Allstarx', '085696200346', 'Suroto', '085696200346'),
(110, '0089023198', 'Junior Paulus Lumenta', '.', 'X A', 'Allstarx', '085757166133', 'Doni Lumenta', '085757166133'),
(111, '0085283113', 'Kristian Aldo Prasetya', '.', 'X A', 'Allstarx', '081526042528', 'Prio Santoso', '081526042528'),
(112, '0087889289', 'Margaretha Khayllila Nurak Lelo', '.', 'X A', 'Allstarx', '.', 'Patrisius Lusi', '.'),
(113, '0084955131', 'Marisska Gloria Lumentut ', '.', 'X A', 'Allstarx', '081524725969', 'Terry Lumentut', '081524725969'),
(114, '0097295473', 'Martha Apriani Siagian', '.', 'X A', 'Allstarx', '081243958576', 'Marolop Siagian ', '081243958576'),
(115, '3087036207', 'Matthew Nicholas Manchester Hosang', '.', 'X A', 'Allstarx', '085256672210', 'Rifani Hosang', '085256672210'),
(116, '0082323972', 'Monica Lie Nindy', '.', 'X A', 'Allstarx', '085299674566', 'Stevanus Arfan', '085299674566'),
(117, '0083862750', 'Pingkan Inggina Mamesah', '.', 'X A', 'Allstarx', '085823759829', 'Ezra Mamesah', '085823759829'),
(118, '0085590192', 'Prayer Miracle Elgibbor Melale', '.', 'X A', 'Allstarx', '081324839182', 'Khristian Melale', '081324839182'),
(119, '0082611871', 'Rafael Mario Yanto ', '.', 'X A', 'Allstarx', '085299674514', 'Ronny Yanto', '085299674514'),
(120, '0085088071', 'Rifky Erlangga Legoh', '.', 'X A', 'Allstarx', '085757854289', 'Mario Legoh', '085757854289'),
(121, '0085416799', 'Rivana Aprilia Sumuru ', '.', 'X A', 'Allstarx', '082190886928', 'Haspan Sumuru', '082190886928'),
(122, '0083726330', 'Vincentius Kevin Wonombong', '.', 'X A', 'Allstarx', '081245811837', 'Stenli Wonombong', '081245811837'),
(123, '0084428751', 'Afrilia Maria Moningka', '.', 'X B', 'Descendants', '081340020021', 'Stenly Moningka', '081340020021'),
(124, '0081817656', 'Anugerah Riguelme Mamahit', '.', 'X B', 'Descendants', '085823547062', 'Novi Mamahit', '085823547062'),
(125, '0083785798', 'Aurelia Tabhita Aomo', '.', 'X B', 'Descendants', '085340145577', 'Julianto Aomo', '085340145577'),
(126, '0085001942', 'Brigita Julinov Encarnacao', '.', 'X B', 'Descendants', '082213266989', 'Basilio Encaracao', '082213266989'),
(127, '0085382717', 'Chriliya Gheisya Lovenia Sarean', '.', 'X B', 'Descendants', '081339446355', 'Christ Sarean', '081339446355'),
(128, '0087624368', 'Christovano Berwyn Rumangu', '.', 'X B', 'Descendants', '.', 'Stefanus Rumangu', '.'),
(129, '0091513832', 'Deandra Anabelle Kalangi', '.', 'X B', 'Descendants', '085398764941', 'Samuel Kalangi', '085398764941'),
(130, '0089306874', 'Filipi Lionel Tambayong', '.', 'X B', 'Descendants', '082196958151', 'Feky Tambayong', '082196958151'),
(131, '0083431123', 'Florence Karina Winbi Rumampuk', '.', 'X B', 'Descendants', '08124490270', 'Erwin Rumampuk', '08124490270'),
(132, '0097954800', 'Giok Yin Faustina Repi', '.', 'X B', 'Descendants', '082190584216', 'Irvandi Repi', '082190584216'),
(133, '0089131482', 'Hosana Igreya Ratu', '.', 'X B', 'Descendants', '085256030822', 'Deky Ratu', '085256030822'),
(134, '3089402726', 'Jericho Hamonangan Dominggus Sitorus', '.', 'X B', 'Descendants', '081346835224', 'Jadi Sitorus', '081346835224'),
(135, '0074997491', 'Jesika Korneles', '.', 'X B', 'Descendants', '085254458634', 'Verawaty', '085254458634'),
(136, '0089553405', 'Jovi Noel Tumipa', '.', 'X B', 'Descendants', '085657200756', 'Novri Tumipa', '085657200756'),
(137, '0087220871', 'Kyrie Gadsya Lovenita Pangkey', '.', 'X B', 'Descendants', '082195052755', 'Fenty Pangkey', '082195052755'),
(138, '0082984136', 'Louis Sebastian Tumipa', '.', 'X B', 'Descendants', '085825191024', 'Reflan Tumipa', '085825191024'),
(139, '0076532495', 'Majestic Blesing Ido Rantung ', '.', 'X B', 'Descendants', '085756985276', 'Sam Rantung', '085756985276'),
(140, '0092558229', 'Marcello Christian Buyung', '.', 'X B', 'Descendants', '081283872809', 'Hanny Buyung', '081283872809'),
(141, '0083647420', 'Nofani Momongan', '.', 'X B', 'Descendants', '081543037173', 'Yukdi Momongan', '081543037173'),
(142, '0096009895', 'Prayer Belief Liando', '.', 'X B', 'Descendants', '089531818441', 'Poke Liando', '089531818441'),
(143, '0085582089', 'Princio Angelo Tumembow', '.', 'X B', 'Descendants', '.', 'Stevy Tumembow', '.Stevy '),
(144, '0088765116', 'Queency Miracle Monde ', '.', 'X B', 'Descendants', '082349924098', 'Steven Monde', '082349924098'),
(145, '0081456476', 'Rainheart Supriyadi', '.', 'X B', 'Descendants', '085825195935', 'Stevvan Supriyadi', '085825195935'),
(146, '0092903554', 'Rifky Efraim Mamahit', '.', 'X B', 'Descendants', '082231376340', 'Aruy Mamahit', '082231376340'),
(147, '0088039057', 'Roscoe Lumenta', '.', 'X B', 'Descendants', '085657200351', 'Rudy Lumenta', '085657200351'),
(148, '0081931535', 'Samuel Efraim Bolang', '.', 'X B', 'Descendants', '081523941528', 'Yobert Bolang', '081523941528'),
(149, '0086096199', 'Shanmica Kyvi Ekklesia Roring', '.', 'X B', 'Descendants', '085656993950', 'Meyki Rorong', '085656993950'),
(150, '0099756368', 'Tiara Equilya Valencya Nadya Siwu', '.', 'X B', 'Descendants', '082192375848', 'Yani Siwu', '082192375848'),
(151, '0087096178', 'AleX Ander Asiong Sariowan', '.', 'X C', 'Alphabetz', '085340443646', 'Fanny Sariowan', '085340443646'),
(152, '0091313661', 'Anugrah Jeskal Selah', '.', 'X C', 'Alphabetz', '.', 'Jemi Selah', '.'),
(153, '0084881363', 'Bonfilio Fidelis Melo', '.', 'X C', 'Alphabetz', '08579660320', 'Nicolaus Melo', '08579660320'),
(154, '0084017398', 'Brychie Medison Umboh', '.', 'X C', 'Alphabetz', '085342106220', 'Donny Umboh', '085342106220'),
(155, '0076337071', 'Danisa Iklesia Otta', '.', 'X C', 'Alphabetz', '081543023697', 'Iksun Otta ', '081543023697'),
(156, '0087074153', 'Diva Mangundap', '.', 'X C', 'Alphabetz', '.', 'Deky Mangundap', '.'),
(157, '0085459494', 'Dominico Savio Lembong', '.', 'X C', 'Alphabetz', '080530757799', 'Johanis Lembong', '080530757799'),
(158, '0098980922', 'Edward Wuwumbene ', '.', 'X C', 'Alphabetz', '085240261198', 'Elvan Wuwumbene', '085240261198'),
(159, '0083378654.', 'Evelyn Angie Gosyantu', '.', 'X C', 'Alphabetz', '081340407575', 'Lengky Gosyantu', '081340407575'),
(160, '0086973571', 'Ezra Naomi Luciana Wokas', '.', 'X C', 'Alphabetz', '085145789339', 'Harry Wokas', '085145789339'),
(161, '0094948745', 'Gabriel Tulalo', '.', 'X C', 'Alphabetz', '085756482640', 'Norris Tulalo', '085756482640'),
(162, '0089554814', 'Gea Trifena Walangitan', '.', 'X C', 'Alphabetz', '081527838818', 'Hesky Walangitan', '081527838818'),
(163, '0088050918', 'Greyzhia Lyoctha Inerbeauty Tulandi', 'tulandi@gmail.com', 'X C', 'Alphabetz', '082191200238', 'Junly Tulandi', '082191200238'),
(164, '0087283396', 'Jorel Pundoko', '.', 'X C', 'Alphabetz', '.', 'Jemy Pundoko', '.'),
(165, '0099211181', 'Julius Jhosua Iroth', '.', 'X C', 'Alphabetz', '082187485207', 'Rudy Iroth', '082187485207'),
(166, '0098599431', 'Kasih Karunia Tambahani', '.', 'X C', 'Alphabetz', '085696242392', 'Jefry Tambahani', '085696242392'),
(167, '0081043002', 'Kimbearly Elshadai Tumalun', '.', 'X C', 'Alphabetz', '081527606484', 'Risky Tumalun', '081527606484'),
(168, '0097328822', 'Kristian Reky Posumah Kapoh', '.', 'X C', 'Alphabetz', '081526086672', 'Decky Kapoh', '081526086672'),
(169, '0086314857', 'Marvel Edward Lapian', '.', 'X C', 'Alphabetz', '082187783672', 'Vincente Lapian', '082187783672'),
(170, '0089800611', 'Relly Rumario Tasik', '.', 'X C', 'Alphabetz', '085298066689', 'Vernando Tasik', '085298066689'),
(171, '0083704931', 'Natalia Febirdikha Yuliana Laian', '.', 'X C', 'Alphabetz', '0895805092721', 'Wensislaus Laian', '0895805092721'),
(172, '0086282426', 'Natalia Zivana Chandra', '.', 'X C', 'Alphabetz', '085342443703', 'Yanny Chandra ', '085342443703'),
(173, '0088561400', 'Ovrilia Prayshe Wowiling', '.', 'X C', 'Alphabetz', '085241048061', 'Heppy Wowiling', '085241048061'),
(174, '0087014911', 'Pelita Keisya Lempas', '.', 'X C', 'Alphabetz', '081527230759', 'Boyke Lempas', '081527230759'),
(175, '0088033694', 'Rafael Angelo Adriansah', '.', 'X C', 'Alphabetz', '081387969752', 'Daniel Adriansah', '081387969752'),
(176, '0081021271', 'Stela Jevischa Michi Mongi', '.', 'X C', 'Alphabetz', '085394685935', 'Stanley Mongi', '085394685935'),
(177, '3089013391', 'Steveen Said', '.', 'X C', 'Alphabetz', '.', 'Ichwan Said', '.'),
(178, '0085949936', 'Timoti Komaling', '.', 'X C', 'Alphabetz', '0895806591645', 'Royke Komaling', '0895806591645'),
(179, '0061430362', 'Edwardo Stevanus Waworundeng', 'eduardowaworundeng@gmail.com', 'XII MIA 2', 'Montresor', '081354973767', 'Melchior Waworundeng', '081354973767'),
(180, '0062514500', 'Galatia Vecchia Italia Maleke', 'ciamaleke@gmail.com', 'XII IIS', 'Equiti', '0895806578443', 'Happy Maleke', '0895806578443'),
(181, '00652500288', 'Gladiva Warouw', 'warouwgladiva@gmail.com', 'XII MIA 1', 'Houston', '085823478740', 'Yorry Warouw', '085823478733'),
(182, '00747679555', 'Gisele Nacita Imanuela Saroinsong', 'giselesaroinsong@gmail.com', 'XII MIA 2', 'Montresor', '0895805287999', 'Ino Saroinsong', '0895805287999'),
(183, '0067824506', 'Mutiara Clara Wuisan', 'wuisanmutiara@gmail.com', 'XII MIA 2', 'Montresor', '085827807824', 'Andries Wuisan', '085827807824'),
(184, '0069590171', 'Theodore Christiano Devinto Murti', 'theodorecdm22@gmail.com', 'XII MIA 1', 'Houston', '089637099928', 'Agustinus Murti', '089637099928'),
(185, '0062791596', 'Rawindo Yoseph Singal', 'rawindosingal@gmail.com', 'XII MIA 2', 'Montresor', '085696459971', 'AleX Ander Singal', '085696459971'),
(186, '0065894011', 'Vensy Fillipo Inzaghi Ratu', 'vensyratu@gmail.com', 'XII MIA 1', 'Houston', '081344727784', 'Veydi Ratu', '081344727784'),
(187, '0077394926', 'Mellody Oroh', '.', 'XI A', 'Ateenagers', '082292315422', 'Romi Oroh', '082292315422');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
