-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 08:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vishnu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'vishnuayurveda', 'vishnu123');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `caption` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `caption`) VALUES
(19, '../images/d39b07b5efb27bdb706ef31804dadca2.jpg', 'image'),
(20, '../images/5312bf6d4429e5dd606526e74d875ccb.jpg', 'image'),
(21, '../images/a88ed941dbd4aa40f0c8d892e5bd5556.jpg', 'image'),
(22, '../images/6e45d0c5579fa6383ba385b24688a0da.jpg', 'image'),
(23, '../images/4215e805be9c6ba4097b0807c53cae73.jpg', 'image'),
(24, '../images/e08f52f5b94cab72d8db8395a7a54085.jpg', 'image'),
(25, '../images/742a3bcdb1fca81f7aac5fcb94af4694.jpg', 'image'),
(26, '../images/1fbf1d247d2dd73c77d914c91440a880.jpg', 'image'),
(27, '../images/229815bb1feac8125df91a54a4dff956.jpg', 'image'),
(28, '../images/7fa490d7d6ee7550b6d7de026bf4f440.jpg', 'image'),
(29, '../images/6e85341018d7f2c7678dc388d173f769.jpg', 'image'),
(30, '../images/a78ae8c478a18cbe552f7dfa9ea162eb.jpg', 'image'),
(31, '../images/8291e4cc3938ce0f7992da7db025a133.jpg', 'image'),
(32, '../images/fe660394c06820dc31f9c8b36539105e.jpg', 'image'),
(33, '../images/0230f6cc9429f231d52e80c7800b358e.jpg', 'image'),
(34, '../images/b109b592e3144f772cd5edfff51e4dce.jpg', 'image'),
(35, '../images/e9d803c6a1bcbdb8e18501f08836c133.jpg', 'image'),
(36, '../images/b20e0627079329af4951b511eeda4665.jpg', 'image'),
(37, '../images/6243175366e9d932f84d661692966848.jpg', 'image'),
(38, '../images/7666bdcb0009bfeaafcf37a6597a313a.jpg', 'eimage');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `images` text DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `images`, `title`, `date`, `text`) VALUES
(8, '19dfed462ec2cddd92dff6f4f3027b4b.jpg', 'AC Shanmughadas Ayurveda child and adolescent care centre visit 2023 batch edited', '2024-01-31', '<p>As part of trans curricular orientation programme for the new admission, 2023 batch of KMCT Ayurveda Medical College were taken to visit the AC Shanmughadas Ayurveda child and adolescent care centre at Purakkattiri on 21.11.2023. They were allowed to visit the inpatient wards under the guidance of medical officers of the institution, following which there was an interactive session on cases, its treatment and integrated therapies provided.The field visit was informative and interesting to all.</p>'),
(9, 'c2bf87de8eb03d426badddcaeacbd846.jpg', 'National ayurveda day 2023', '2024-01-11', '<p>6B.ng)0.<br>@3pmn.Jtau<br>CUD. 41-0<br>@ånejosmo god. en<br>sl. 013, 4.0.<br>cmoo. (Tualcü,<br>caco. DB.<br>anmo\'ö\'å1Dd,<br>t-æoal,<br>moolAJ.</p>'),
(10, '8a97dcac549d92f819034a332e27753f.jpg', 'Anti ragging awareness class', '2024-01-31', '<p>Anti ragging awarness class Guest speaker P. Assain (Police sub inspector janamytri police, Mukkam)</p>'),
(11, 'de6cf46ac880a4bc32d54257e2afcbb7.png', 'Where can I get some?', '2024-01-31', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>'),
(12, '4e736ac4b489b73a409907f0fd0338dd.png,0650ef20c7ce329c479f4faf95a0a296.png,779406c25c5f735551bea010a0cec446.png,8f1240502e053ee03bc1bdc1bba8195d.png,e3fd29d45e8df519aa7fa058f5c20a4c.png,d00dde5514db8b0a2dd07bbf6d549499.png', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', '2024-01-31', '<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
