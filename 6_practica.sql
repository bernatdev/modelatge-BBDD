-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 01:55 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `6_practica`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(10) NOT NULL,
  `client_nom` varchar(10) NOT NULL,
  `client_cognom` varchar(15) NOT NULL,
  `client_adr` text NOT NULL,
  `client_telf` int(10) NOT NULL,
  `client_mail` varchar(25) NOT NULL,
  `client_registre` date NOT NULL,
  `client_idrefer` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_nom`, `client_cognom`, `client_adr`, `client_telf`, `client_mail`, `client_registre`, `client_idrefer`) VALUES
(1, 'paco', 'perez', 'ribes 55 08013 Barcelona', 931112233, 'pacoperez@hotmail.com', '2020-02-23', 0),
(2, 'jose', 'gomez', 'padilla 33 08012 Barcelona', 935558899, 'josegomez@yahoo.es', '2020-02-24', 0),
(3, 'manolo', 'martinez', 'lepant 51 08013 Barcelona', 936612233, 'manolom@hotmail.com', '2020-02-25', 1),
(4, 'pepe', 'gotera', 'gran via 533 08012 Barcelona', 934458899, 'ppgotera@yahoo.es', '2020-02-26', 2),
(5, 'pedro', 'rodriguez', 'Rogent 21, 08032 Barcelona', 932112233, 'pedro@yahoo.com', '2020-02-26', 2),
(6, 'Joseba', 'Egibar', 'Navas 12, 08657 Bilbao', 925558899, 'joseba@gmail.com', '2020-02-26', 3),
(7, 'Raul', 'Rivas', 'Valencia 22, 08012 Barcelona', 935987845, 'rivas@gmail.com', '2020-02-26', 4),
(8, 'Toni', 'Allen', 'Rafols 1, 08034 Barcelona', 932041568, 'toni@hotmail.com', '2020-02-27', 3);

-- --------------------------------------------------------

--
-- Table structure for table `empleats`
--

CREATE TABLE `empleats` (
  `empleat_id` int(10) NOT NULL,
  `empleat_nom` varchar(10) NOT NULL,
  `empleat_cognom` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empleats`
--

INSERT INTO `empleats` (`empleat_id`, `empleat_nom`, `empleat_cognom`) VALUES
(1, 'franco', 'armani'),
(2, 'gonzalo', 'montiel'),
(3, 'sicario', 'rojas'),
(4, 'milton', 'casco');

-- --------------------------------------------------------

--
-- Table structure for table `marca`
--

CREATE TABLE `marca` (
  `marca_id` int(10) NOT NULL,
  `marca_nom` varchar(10) NOT NULL,
  `id_prov` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marca`
--

INSERT INTO `marca` (`marca_id`, `marca_nom`, `id_prov`) VALUES
(1, 'rayban', 1),
(2, 'bolle', 1),
(3, 'fendi', 2),
(4, 'dior', 3),
(5, 'chanel', 4),
(6, 'dg', 4),
(7, 'persol', 1);

-- --------------------------------------------------------

--
-- Table structure for table `proveidors`
--

CREATE TABLE `proveidors` (
  `provider_id` int(10) NOT NULL,
  `provider_nom` varchar(20) NOT NULL,
  `provider_adr` text NOT NULL,
  `provider_telf` int(10) NOT NULL,
  `provider_fax` int(10) NOT NULL,
  `provider_nif` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proveidors`
--

INSERT INTO `proveidors` (`provider_id`, `provider_nom`, `provider_adr`, `provider_telf`, `provider_fax`, `provider_nif`) VALUES
(1, 'opticas cottet', 'diagonal 600 , 1 2,  08034 barcelona, Espanya', 932048798, 935987854, '14654123B'),
(2, 'opticauniversitaria', 'numancia 87, 2 3, 08014 Madrid, Espanya', 916547852, 915321254, '45987564E'),
(3, 'afflelou', 'paris 93, 1 2, 08017 Lugo, Espanya', 982548725, 982541258, '74586123B'),
(4, 'general optica', 'mallorca 32, 3 3, 08032 Girona, Espanya', 972547852, 972117852, '21987564E');

-- --------------------------------------------------------

--
-- Table structure for table `ullera`
--

CREATE TABLE `ullera` (
  `ullera_id` int(10) NOT NULL,
  `id_marca` int(10) NOT NULL,
  `grad_esq` float NOT NULL,
  `grad_dreta` float NOT NULL,
  `muntura_tipus` varchar(10) NOT NULL,
  `muntura_color` varchar(10) NOT NULL,
  `vidre_esq` varchar(10) NOT NULL,
  `vidre_dreta` varchar(10) NOT NULL,
  `preu` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ullera`
--

INSERT INTO `ullera` (`ullera_id`, `id_marca`, `grad_esq`, `grad_dreta`, `muntura_tipus`, `muntura_color`, `vidre_esq`, `vidre_dreta`, `preu`) VALUES
(1, 1, 0.5, 1, 'flotant', 'negre', 'blanc', 'blanc', 80),
(2, 2, 0.25, 0.3, 'pasta', 'vermell', 'negre', 'negre', 120.5),
(3, 3, 1, 1, 'metall', 'blanc', 'negre', 'negre', 135),
(4, 4, 0.25, 0.5, 'flotant', 'blau', 'negre', 'negre', 125),
(5, 5, 0.4, 0.35, 'pasta', 'verd', 'verd', 'verd', 215),
(6, 6, 0.2, 0.1, 'metall', 'groc', 'blanc', 'blanc', 98);

-- --------------------------------------------------------

--
-- Table structure for table `venda`
--

CREATE TABLE `venda` (
  `venda_id` int(11) NOT NULL,
  `id_ullera` int(11) NOT NULL,
  `id_empleat` int(11) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venda`
--

INSERT INTO `venda` (`venda_id`, `id_ullera`, `id_empleat`, `id_client`) VALUES
(1, 1, 2, 8),
(7, 1, 4, 2),
(2, 2, 2, 7),
(8, 2, 4, 1),
(3, 3, 1, 6),
(4, 4, 1, 5),
(5, 5, 3, 4),
(6, 6, 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `empleats`
--
ALTER TABLE `empleats`
  ADD PRIMARY KEY (`empleat_id`);

--
-- Indexes for table `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`marca_id`),
  ADD KEY `id_prov` (`id_prov`);

--
-- Indexes for table `proveidors`
--
ALTER TABLE `proveidors`
  ADD PRIMARY KEY (`provider_id`);

--
-- Indexes for table `ullera`
--
ALTER TABLE `ullera`
  ADD PRIMARY KEY (`ullera_id`),
  ADD KEY `id_marca` (`id_marca`);

--
-- Indexes for table `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`venda_id`),
  ADD KEY `id_ullera` (`id_ullera`,`id_empleat`,`id_client`),
  ADD KEY `id_empleat` (`id_empleat`),
  ADD KEY `id_client` (`id_client`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `empleats`
--
ALTER TABLE `empleats`
  MODIFY `empleat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marca`
--
ALTER TABLE `marca`
  MODIFY `marca_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `proveidors`
--
ALTER TABLE `proveidors`
  MODIFY `provider_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ullera`
--
ALTER TABLE `ullera`
  MODIFY `ullera_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `venda`
--
ALTER TABLE `venda`
  MODIFY `venda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marca`
--
ALTER TABLE `marca`
  ADD CONSTRAINT `marca_ibfk_1` FOREIGN KEY (`id_prov`) REFERENCES `proveidors` (`provider_id`);

--
-- Constraints for table `ullera`
--
ALTER TABLE `ullera`
  ADD CONSTRAINT `ullera_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`marca_id`);

--
-- Constraints for table `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`id_empleat`) REFERENCES `empleats` (`empleat_id`),
  ADD CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`id_ullera`) REFERENCES `ullera` (`ullera_id`),
  ADD CONSTRAINT `venda_ibfk_3` FOREIGN KEY (`id_client`) REFERENCES `clients` (`client_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
