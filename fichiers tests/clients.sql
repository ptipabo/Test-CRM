-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 18 juin 2020 à 22:18
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `clientlist`
--

-- --------------------------------------------------------

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `name`, `phone`, `email`, `address`, `cp`, `city`, `customer`) VALUES
(1, 'Ciaran Snider', '0521 69 73 51', 'est.Mauris@malesuadautsem.edu', '105-9614 Ut, Avenue', '2336', 'Harnai', 'Yes'),
(2, 'Colleen Wilcox', '0011 29 05 65', 'ullamcorper@sitamet.org', 'Appartement 630-1531 Ligula. Impasse', '9334', 'Kansas City', 'Yes'),
(3, 'Yuli Carver', '0316 46 20 35', 'Mauris.vestibulum@purus.ca', 'Appartement 193-7915 Et Avenue', '5234', 'Stargard Szczeciński', 'Yes'),
(4, 'Marsden Crane', '0698 89 10 87', 'Nam.consequat@felispurus.co.uk', 'Appartement 130-3541 Aenean Avenue', '3226', 'Dubuisson', 'No'),
(5, 'Emerson Snyder', '0078 34 41 40', 'convallis@tincidunt.net', 'CP 451, 4314 Ullamcorper, Route', '3573', 'Rothesay', 'No'),
(6, 'Illana Kemp', '0078 38 14 26', 'sem@Donecdignissim.edu', 'Appartement 918-3732 Nisi. Impasse', '4772', 'LaSalle', 'No'),
(7, 'Porter Kaufman', '0881 01 57 75', 'turpis@Etiamlaoreet.com', 'Appartement 727-7357 Euismod Rue', '8459', 'Zwettl-Niederösterreich', 'No'),
(8, 'Keane Robertson', '0512 36 22 51', 'quis.arcu@necanteblandit.com', 'CP 462, 5954 Enim Chemin', '7024', 'Gyeongsan', 'No'),
(9, 'Tashya Bruce', '0122 42 97 32', 'volutpat.Nulla@nibhPhasellusnulla.net', 'Appartement 782-6254 Sit Rd.', '5569', 'Zwolle', 'Yes'),
(10, 'James Dennis', '0273 05 65 27', 'Sed@lorem.edu', 'CP 121, 9164 Ultrices Rue', '9331', 'Pinto', 'Yes');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
