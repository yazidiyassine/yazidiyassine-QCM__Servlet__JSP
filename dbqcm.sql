-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2022 at 10:54 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbqcm`
--

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id_form` int(11) NOT NULL,
  `lib_form` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id_form`, `lib_form`) VALUES
(1, 'PHP'),
(2, 'JEE'),
(3, 'ORACLE');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id_question` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `lib_question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id_question`, `id_form`, `lib_question`) VALUES
(1, 1, 'Comment appelle-t-on un programme écrit en PHP ?'),
(2, 1, 'Quel est l\'usage le plus courant du PHP ?'),
(3, 1, 'PHP remplace-t-il HTML ?'),
(4, 2, 'Le pattern MVC signifie :'),
(5, 2, 'Que signifie JEE ?'),
(6, 2, 'Java est un langage\'…'),
(7, 3, 'Pour créer une base de données Oracle on doit avoir le privilège :'),
(8, 3, 'La mémoire partagée par les processus Oracle s\'appelle :'),
(9, 3, 'Un index sous Oracle permet d\'améliorer les temps de réponse :');

-- --------------------------------------------------------

--
-- Table structure for table `reponse`
--

CREATE TABLE `reponse` (
  `id_reponse` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `lib_reponse` varchar(255) NOT NULL,
  `correct` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reponse`
--

INSERT INTO `reponse` (`id_reponse`, `id_question`, `lib_reponse`, `correct`) VALUES
(1, 1, 'Script PHP', 1),
(2, 1, 'Fichier PHP', 0),
(3, 1, 'Code HTLM', 0),
(4, 2, 'Créer le design des pages Web', 0),
(5, 2, 'Créer des sites Web statiques', 0),
(6, 2, 'Générer le contenu des pages Web mis à jour systématiquement.', 1),
(7, 3, 'Oui, PHP possède des fonctions permettant de remplacer HTML', 0),
(8, 3, 'Non, HTML permet de créer le contenu et PHP génère l\'interface graphique.', 1),
(9, 3, 'Oui, PHP génère aussi du code HTML.', 0),
(10, 4, 'Multiple Versions Combined', 0),
(11, 4, 'Mandatory Validated Controls', 0),
(12, 4, 'Model View Controler', 1),
(13, 5, 'Java E-business E-commerce', 0),
(14, 5, 'Java Enterprise Edition', 1),
(15, 5, 'Java Edition Enterprise', 0),
(16, 6, 'Interprété', 1),
(17, 6, 'Non Compilé', 0),
(18, 6, 'non type', 0),
(19, 7, 'SYSASM', 0),
(20, 7, 'SYSDBA', 1),
(21, 7, 'DBA', 0),
(22, 8, 'PGA', 0),
(23, 8, 'SGA', 1),
(24, 8, 'PDA', 0),
(25, 9, 'Des requêtes', 1),
(26, 9, 'Des requêtes avec jointure', 0),
(27, 9, 'Des requêtes de sélection', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id_form`),
  ADD KEY `id_form` (`id_form`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_question`),
  ADD KEY `question_libfk_1` (`id_form`);

--
-- Indexes for table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id_reponse`),
  ADD KEY `id_question` (`id_question`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id_form` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id_reponse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_libfk_1` FOREIGN KEY (`id_form`) REFERENCES `form` (`id_form`);

--
-- Constraints for table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `reponse_libfk_1` FOREIGN KEY (`id_question`) REFERENCES `question` (`id_question`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
