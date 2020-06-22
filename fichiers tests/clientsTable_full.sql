-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 20 juin 2020 à 00:44
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.6

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
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `cp` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `customer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(10, 'James Dennis', '0273 05 65 27', 'Sed@lorem.edu', 'CP 121, 9164 Ultrices Rue', '9331', 'Pinto', 'Yes'),
(11, 'Kyla Bowers', '0393 13 31 77', 'tincidunt@Phasellusataugue.net', '6172 Quisque Avenue', '6005', 'Allerona', 'No'),
(12, 'Karleigh Yang', '0030 10 78 63', 'consectetuer@dolorFusce.co.uk', '196-141 Magna. Rue', '4846', 'Santiago', 'No'),
(13, 'Erica Underwood', '0063 93 95 84', 'odio@tellus.edu', 'Appartement 666-8696 Sem. Impasse', '2793', 'Portland', 'No'),
(14, 'Kane Luna', '0317 20 36 10', 'Fusce.dolor.quam@nonummy.edu', '619-2405 Donec Rd.', '7616', 'Newbury', 'No'),
(15, 'Chadwick Burris', '0635 92 51 37', 'Sed.eu@nec.org', 'CP 546, 6663 Duis Av.', '9940', 'Forgaria nel Friuli', 'Yes'),
(16, 'Otto Wong', '0431 52 83 11', 'vestibulum.nec@iaculisquis.ca', 'Appartement 477-2007 Pede, Impasse', '4595', 'Selkirk', 'Yes'),
(17, 'Jena Reynolds', '0894 99 44 87', 'tellus.imperdiet@In.org', '7528 Vel Chemin', '4750', 'Waterbury', 'No'),
(18, 'Harper Randall', '0899 46 59 01', 'Donec@posuereat.org', '3221 Lorem. Ave', '4125', 'Wokingham', 'Yes'),
(19, 'Daphne Spencer', '0272 62 78 69', 'nec@enimCurabitur.ca', '2460 Placerat Rue', '3483', 'Ercilla', 'Yes'),
(20, 'Malik Sheppard', '0964 91 74 90', 'dui.Cras@pellentesquemassalobortis.com', 'CP 502, 6117 Nascetur Av.', '5265', 'Cochrane', 'No'),
(21, 'Eleanor Fuller', '0374 32 65 70', 'iaculis.aliquet.diam@Utsemper.co.uk', 'Appartement 747-4135 Vivamus Avenue', '1576', 'Bressoux', 'No'),
(22, 'Eve Becker', '0012 18 54 53', 'Nunc.sed.orci@Nullamvelit.edu', 'Appartement 350-4261 Aliquam Chemin', '2187', 'Saint John', 'No'),
(23, 'Colby Bauer', '0776 93 90 33', 'ligula.Nullam.feugiat@Sedeu.com', 'Appartement 820-7342 Id Chemin', '4176', 'Linkebeek', 'Yes'),
(24, 'Thane Hart', '0516 00 90 39', 'Quisque@etrisusQuisque.co.uk', 'Appartement 574-1736 Aliquam Rd.', '7147', 'Bellevue', 'No'),
(25, 'Zorita Mcmillan', '0969 12 87 43', 'ac.arcu.Nunc@turpisNulla.org', 'Appartement 383-2676 Nulla Avenue', '3282', 'Camaçari', 'No'),
(26, 'Austin Small', '0582 10 25 24', 'rhoncus.Donec.est@imperdietnon.com', 'Appartement 737-3021 At Rd.', '3104', 'Illapel', 'Yes'),
(27, 'Matthew Pugh', '0477 52 05 80', 'malesuada.malesuada@dignissimMaecenas.org', 'Appartement 935-6306 Purus Ave', '7543', 'Tongerlo', 'Yes'),
(28, 'Bo Knapp', '0181 43 79 14', 'fringilla.ornare@nibhAliquam.ca', '9201 Vestibulum. Rue', '9821', 'Gwangmyeong', 'No'),
(29, 'Justine Sheppard', '0318 58 58 40', 'eu@Fuscefeugiat.com', 'Appartement 796-4365 Et Rd.', '4384', 'Hasselt', 'No'),
(30, 'Astra Hayes', '0376 65 89 46', 'non@nec.co.uk', '270-9101 Duis Rd.', '8263', 'Grimma', 'Yes'),
(31, 'Robert Nicholson', '0022 70 77 85', 'aliquam.adipiscing@Pellentesque.ca', '674-2448 Ac Route', '4766', 'Skegness', 'No'),
(32, 'Chandler Norton', '0321 20 71 02', 'urna.Ut.tincidunt@Fuscefermentum.org', 'Appartement 630-8056 Augue Impasse', '6095', 'Carnoustie', 'Yes'),
(33, 'Celeste Sanders', '0436 24 89 20', 'massa@semper.com', 'Appartement 802-7597 Egestas Impasse', '7722', 'Saint-Sébastien-sur-Loire', 'Yes'),
(34, 'Ray Watson', '0174 98 84 10', 'id@idantedictum.edu', 'Appartement 205-8515 Sapien, Avenue', '6768', 'Saint-Dié-des-Vosges', 'Yes'),
(35, 'Palmer Molina', '0901 99 30 15', 'arcu@nislsemconsequat.com', '3967 Integer Av.', '9879', 'Varena', 'No'),
(36, 'Jelani Jensen', '0687 85 17 51', 'justo@Duisa.ca', '997-181 Amet Av.', '6119', 'Relegem', 'No'),
(37, 'Chiquita Bullock', '0392 57 18 80', 'risus.Quisque@atliberoMorbi.co.uk', '199-3334 Morbi Av.', '7500', 'Rio Marina', 'No'),
(38, 'Reed Tillman', '0147 42 00 11', 'orci@musProinvel.org', 'Appartement 652-9695 Etiam Impasse', '6960', 'Ingelheim', 'No'),
(39, 'Adria Fisher', '0088 65 96 75', 'sem@velit.co.uk', 'CP 969, 7281 Sapien, Rue', '5440', 'Castelluccio Valmaggiore', 'No'),
(40, 'Avram Moreno', '0479 72 22 81', 'pretium.neque.Morbi@Integertincidunt.net', '4787 Amet Impasse', '1293', 'Lutsel K\'e', 'Yes'),
(41, 'Ferdinand Hayden', '0976 73 46 36', 'adipiscing@magnis.org', 'CP 648, 1171 Nec Route', '3199', 'Bowling Green', 'No'),
(42, 'Elliott Hernandez', '0105 85 48 81', 'tellus@venenatis.ca', 'Appartement 216-3701 In Impasse', '9521', 'Speyer', 'No'),
(43, 'Duncan Ortiz', '0203 94 63 23', 'risus.Donec.egestas@Fusce.com', 'CP 777, 2392 Dictum Avenue', '6766', 'Redwater', 'Yes'),
(44, 'Price Cain', '0757 95 37 20', 'imperdiet.ornare.In@idnuncinterdum.co.uk', 'CP 240, 9407 Rutrum Rue', '7081', 'SŽlange', 'No'),
(45, 'Tamekah Terrell', '0881 46 18 93', 'luctus.et.ultrices@semegetmassa.co.uk', 'CP 233, 9433 Et Chemin', '8593', 'Lugnano in Teverina', 'Yes'),
(46, 'Emi Farrell', '0137 82 49 73', 'elementum.purus.accumsan@arcu.net', 'Appartement 223-4661 Commodo Route', '3836', 'Hilo', 'Yes'),
(47, 'Bruno Griffith', '0572 21 95 96', 'malesuada.vel.convallis@nec.org', '9621 Lacus. Avenue', '6397', 'Oelegem', 'Yes'),
(48, 'Eugenia Compton', '0244 07 48 65', 'egestas@semPellentesque.co.uk', 'Appartement 205-9821 Aliquet, Route', '8162', 'Korocha', 'Yes'),
(49, 'August Medina', '0112 02 39 92', 'lobortis.nisi.nibh@Suspendissenon.org', 'Appartement 601-8597 Nec Avenue', '8083', 'Ponta Grossa', 'Yes'),
(50, 'Cara Clayton', '0767 14 18 26', 'quam@Suspendissealiquet.edu', '946-4593 Lacus. Ave', '8547', 'Ambala Sadar', 'Yes'),
(51, 'Luke Snider', '0277 01 24 33', 'faucibus@non.net', 'Appartement 465-9008 Egestas. Chemin', '1590', 'Pencahue', 'Yes'),
(52, 'Griffin Hayes', '0815 76 45 38', 'nunc.id.enim@Integer.edu', 'CP 162, 4002 Natoque Impasse', '7881', 'Brucargo', 'No'),
(53, 'Macy Ware', '0269 65 06 57', 'sit@Duis.com', 'CP 592, 8094 Dolor Rd.', '1692', 'Loralai', 'Yes'),
(54, 'Sarah Potts', '0568 33 69 08', 'iaculis@Nullamscelerisque.co.uk', '608-6775 Sit Rd.', '2132', 'Ovalle', 'Yes'),
(55, 'Colton Hancock', '0996 98 56 10', 'accumsan.convallis@euismodin.com', '8862 Magna Rue', '9932', 'Quesada', 'Yes'),
(56, 'Aspen Bishop', '0752 99 72 11', 'nunc.nulla@Nuncuterat.co.uk', 'CP 171, 9801 Mollis Chemin', '6876', 'Miraj', 'No'),
(57, 'Fuller Velazquez', '0796 41 75 64', 'Donec.nibh.enim@porttitor.net', 'Appartement 978-6883 Lorem Impasse', '8121', 'Gumi', 'No'),
(58, 'Deanna Compton', '0627 67 55 69', 'semper.cursus.Integer@sodales.co.uk', 'Appartement 862-2122 Vivamus Impasse', '1603', 'Karachi', 'Yes'),
(59, 'Lawrence Lane', '0917 46 16 98', 'non.massa@fringillacursus.org', 'CP 703, 3793 Faucibus Avenue', '8803', 'Korbach', 'Yes'),
(60, 'Gary Noble', '0216 22 38 82', 'mattis.velit.justo@Proinsedturpis.edu', 'Appartement 713-1461 Aliquet Av.', '6805', 'Legal', 'Yes'),
(61, 'Cara Burnett', '0831 82 45 48', 'vitae.orci@malesuada.co.uk', 'CP 394, 9810 Nec Impasse', '6425', 'Jauche', 'No'),
(62, 'Rhoda Holloway', '0430 55 44 97', 'vitae.velit@idblandit.co.uk', '6416 Vivamus Rue', '3401', 'Tierra Amarilla', 'Yes'),
(63, 'Chava Pitts', '0164 33 65 19', 'malesuada.ut.sem@Nunc.co.uk', '5950 Aliquam Rue', '9498', 'Sudhanoti', 'Yes'),
(64, 'Sylvester Christensen', '0857 72 87 51', 'magnis.dis@auctorquistristique.ca', '9059 Egestas Av.', '3938', 'St. Paul', 'Yes'),
(65, 'Gloria Perkins', '0963 06 88 27', 'Suspendisse@lobortisauguescelerisque.edu', '7814 Non Route', '5835', 'Ollagüe', 'Yes'),
(66, 'Bernard Dudley', '0201 49 10 90', 'quam@rutrum.org', '200-5989 Diam Avenue', '7312', 'Coldstream', 'Yes'),
(67, 'Rahim Bennett', '0889 97 15 29', 'vitae@dolordolortempus.org', 'CP 972, 7930 Ipsum. Ave', '7369', 'Heikruis', 'No'),
(68, 'Xanthus Bass', '0261 11 55 13', 'morbi@seddictumeleifend.co.uk', '131-5690 Eleifend Route', '2847', 'Sinaai-Waas', 'No'),
(69, 'Jolene Guerrero', '0825 19 84 01', 'hendrerit@sitamet.com', '6138 Et Av.', '8061', 'Abaetetuba', 'Yes'),
(70, 'Stewart Fowler', '0039 90 28 18', 'vitae.semper.egestas@dapibusid.co.uk', 'CP 836, 4060 Augue Avenue', '2894', 'Mont-Sainte-Genevive', 'Yes'),
(71, 'Abraham Beasley', '0235 91 18 16', 'mauris.ipsum@ametmassa.org', 'CP 585, 3984 Hymenaeos. Av.', '9805', 'Rattray', 'Yes'),
(72, 'Lesley Dyer', '0208 66 61 05', 'Aliquam@Aeneanegestashendrerit.com', '268-7614 Eleifend Impasse', '6442', 'Montresta', 'Yes'),
(73, 'Rooney Higgins', '0480 14 06 88', 'lorem.fringilla@arcu.com', '442-4614 Malesuada Av.', '5375', 'Oxford County', 'No'),
(74, 'Igor Castro', '0574 70 23 88', 'a@mi.org', 'Appartement 853-1657 Sed Impasse', '4603', 'Camerino', 'No'),
(75, 'Rinah Clayton', '0922 00 99 59', 'purus.in.molestie@velitduisemper.ca', '549-4534 Non Chemin', '5597', 'Baden-Baden', 'Yes'),
(76, 'Walker Frye', '0003 37 64 56', 'Curae.Donec@nibhAliquam.com', 'CP 537, 7204 Habitant Avenue', '1192', '100 Mile House', 'No'),
(77, 'Jack Sharp', '0977 18 47 14', 'Fusce@felis.co.uk', '7398 Tempus Route', '7296', 'Nuneaton', 'No'),
(78, 'Christopher Hartman', '0694 89 47 55', 'elementum@pedesagittis.net', '227-9526 Lectus, Rd.', '3211', 'Brampton', 'Yes'),
(79, 'Chanda Sharp', '0340 04 24 86', 'sapien.Nunc.pulvinar@Sedeget.edu', 'CP 562, 3861 Lacus. Route', '7488', 'Romano d\'Ezzelino', 'Yes'),
(80, 'Ray Ayers', '0686 05 06 70', 'ut.ipsum.ac@atpede.ca', 'CP 667, 7326 In Av.', '9900', 'Zaragoza', 'Yes'),
(81, 'Edward Acevedo', '0167 69 41 26', 'sed@iaculisaliquet.co.uk', '4049 Risus. Rd.', '5715', 'Dole', 'No'),
(82, 'Quamar Baldwin', '0038 43 93 83', 'ultricies.ligula.Nullam@Nullaeu.ca', 'Appartement 519-273 Arcu Rd.', '1166', 'Alphen aan den Rijn', 'Yes'),
(83, 'Shafira Woodward', '0781 97 94 18', 'interdum.Curabitur@blanditNamnulla.ca', '2031 Vitae Ave', '7127', 'Lienz', 'No'),
(84, 'Basia Burks', '0286 68 83 37', 'elit.pellentesque@Nuncuterat.edu', '965-9832 Morbi Ave', '6807', 'Valcourt', 'No'),
(85, 'Britanni Sosa', '0026 01 90 15', 'lectus.pede@imperdietnecleo.co.uk', '4366 Lectus Route', '3509', 'Tramonti di Sopra', '1'),
(86, 'Inez Herrera', '0136 46 68 79', 'diam.luctus.lobortis@insodaleselit.org', 'Appartement 649-718 Sit Rd.', '5765', 'Alert Bay', '1'),
(87, 'Eleanor Rush', '0368 51 65 08', 'posuere@quamCurabitur.co.uk', '4456 Mollis. Chemin', '2902', 'Montemilone', '1'),
(88, 'Bevis Pena', '0580 17 57 56', 'Ut.sagittis@Nam.org', 'Appartement 114-9628 Integer Rd.', '6869', 'Sunshine Coast Regional District', '0'),
(89, 'Dante Collins', '0647 42 98 66', 'elit.sed@fringillaornare.net', '671-409 Nulla. Ave', '7985', 'Veldwezelt', 'No'),
(90, 'Hilel Kelley', '0372 48 91 40', 'Lorem.ipsum.dolor@eget.edu', 'CP 165, 8114 Hendrerit Rd.', '8030', 'Pizzoferrato', 'No'),
(91, 'Valentine Mcpherson', '0077 19 35 24', 'erat.vitae.risus@tinciduntDonec.edu', '4695 Rhoncus. Chemin', 'B1815', 'Paita', 'No'),
(92, 'Neil Battle', '0418 17 31 38', 'ultrices@Vestibulumuteros.org', 'Appartement 883-3955 Ut Route', '5276', 'Fosses-la-Ville', 'No'),
(93, 'Mary Cochran', '0357 95 56 11', 'felis.orci.adipiscing@conubianostraper.co.uk', '342-721 Facilisis Rd.', '3570', 'Renfrew', 'Yes'),
(94, 'Amal Willis', '0885 52 31 18', 'lorem@magna.com', '703-3135 Velit Avenue', '9325', 'Langenburg', 'No'),
(95, 'Ann Roman', '0959 37 89 25', 'Curabitur.massa.Vestibulum@loremvehicula.net', '583-2531 Donec Route', '1664', 'San Juan de Dios', 'Yes'),
(96, 'Shea Cook', '04/42.32.61.', 'eu.augue.porttitor@ultrices.co.uk', 'Appartement 583-1091 Fusce Route', '7213', 'Trochu', 'No'),
(97, 'Stuart Morrison', '0504 37 91 57', 'tellus@et.ca', 'Appartement 130-5490 Non Route', '6649', 'Maransart', 'No'),
(98, 'Trevor Nichols', '0332 35 95 73', 'et@purusDuiselementum.ca', 'CP 775, 6593 Consectetuer Chemin', '5694', 'Gasp�', 'Yes'),
(99, 'Nichole Beasley', '0964 51 85 84', 'metus.In.lorem@nectempus.co.uk', '1969 Dolor l\'Ave', '3313', 'Coldstream', 'Yes'),
(100, 'Troy Benjamin', '0792 35 02 99', 'mollis.lectus@utnullaCras.ca', '796-6886 Lorem Chemin', '6749', 'Albiano', 'No');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
