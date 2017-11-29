-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 28 nov. 2017 à 14:36
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `films`
--

-- --------------------------------------------------------

--
-- Structure de la table `a`
--

DROP TABLE IF EXISTS `a`;
CREATE TABLE IF NOT EXISTS `a` (
  `id` int(11) NOT NULL,
  `id_Genre` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_Genre`),
  KEY `FK_a_id_Genre` (`id_Genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `a`
--

INSERT INTO `a` (`id`, `id_Genre`) VALUES
(1, 1),
(2, 1),
(3, 1),
(10, 1),
(4, 2),
(6, 2),
(8, 2),
(9, 2),
(6, 3),
(11, 3),
(4, 4),
(7, 4),
(12, 4),
(5, 5),
(9, 5),
(5, 6);

-- --------------------------------------------------------

--
-- Structure de la table `acteurs`
--

DROP TABLE IF EXISTS `acteurs`;
CREATE TABLE IF NOT EXISTS `acteurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Prenom` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Date_de_naissance` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `acteurs`
--

INSERT INTO `acteurs` (`id`, `Nom`, `Prenom`, `Date_de_naissance`) VALUES
(1, 'de Funès', 'Louis', '1914-07-31'),
(2, 'Carmet', 'Jean', '1920-04-25'),
(3, 'Villeret', 'Jacques', '1951-02-06'),
(4, 'Colucci', 'Michel', '1944-10-28'),
(5, 'Guiomar', 'Julien', '1928-05-03'),
(6, 'Montand\r\n', 'Yves', '1921-10-13'),
(7, 'Pitt', 'Brad', '1963-12-18'),
(8, 'Norton', 'Edward', '1969-08-18'),
(9, 'Bonham Carter', 'Helena', '1966-05-26'),
(10, 'Hanks', 'Tom', '1956-07-09'),
(11, 'Clarke Duncan', 'Michael', '1957-12-10'),
(12, 'Morse', 'David', '1953-10-11'),
(13, 'Portman', 'Nathalie', '1981-06-09'),
(14, 'Weaving', 'Hugo', '1960-04-04'),
(15, 'Rea', 'Stephan', '1946-10-31'),
(16, 'Cassel', 'Vincent', '1966-11-23'),
(17, 'Kound', 'Hubert', '1970-12-30'),
(18, 'Taghmaoui', 'Said', '1973-07-19'),
(19, 'Kaluuya', 'Daniel', '1989-02-24'),
(20, 'Williams', 'Allison', '1988-04-15'),
(21, 'Keener', 'Catherine', '1960-03-26'),
(22, 'Mcavoy', 'James', '1979-04-21'),
(23, 'Taylor-Joy', 'Anya', '1996-04-16'),
(24, 'Buckler', 'Betty', '1947-07-03'),
(25, 'Lhermitte', 'Thierry', '1952-11-24'),
(26, 'Huster', 'Francis', '1947-12-08'),
(27, 'Prévost', 'Daniel', '1939-10-20'),
(28, 'Smith', 'Will', '1968-07-25'),
(29, 'Braga', 'Alice', '1983-04-15'),
(30, 'Tahan', 'Charlie', '1998-06-11'),
(31, 'Hanks', 'Tom', '1956-07-09'),
(32, 'Sanchez', 'Paul', '1944-08-21'),
(33, 'White', 'Lari', '1965-05-13');

-- --------------------------------------------------------

--
-- Structure de la table `a_joue`
--

DROP TABLE IF EXISTS `a_joue`;
CREATE TABLE IF NOT EXISTS `a_joue` (
  `id` int(11) NOT NULL,
  `id_Acteurs` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_Acteurs`),
  KEY `FK_a_joue_id_Acteurs` (`id_Acteurs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `a_joue`
--

INSERT INTO `a_joue` (`id`, `id_Acteurs`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(1, 3),
(10, 3),
(2, 4),
(2, 5),
(3, 6),
(4, 7),
(4, 8),
(4, 9),
(5, 10),
(5, 11),
(5, 12),
(6, 13),
(6, 14),
(6, 15),
(7, 16),
(7, 17),
(7, 18),
(8, 19),
(8, 20),
(8, 21),
(9, 22),
(9, 23),
(9, 24),
(10, 25),
(10, 26),
(10, 27),
(11, 28),
(11, 29),
(11, 30),
(12, 31),
(12, 32),
(12, 33);

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Description` text COLLATE utf8_bin,
  `Date_de_sortie` date DEFAULT NULL,
  `id_Realisateurs` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Films_id_Realisateurs` (`id_Realisateurs`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `Titre`, `Description`, `Date_de_sortie`, `id_Realisateurs`) VALUES
(1, 'La soupe aux choux', 'Une nuit, à la suite d\'un concours de pets auquel se sont livrés les deux amis, un extraterrestre que le Glaude nommera la Denrée débarque en soucoupe volante de la planète Oxo dans le jardin de celui-ci. Le Glaude lui donne alors à manger de la soupe aux choux.', '1981-12-02', 1),
(2, 'L\'aile ou la cuisse', 'Charles Duchemin, le directeur d\'un guide gastronomique qui vient d\'être élu à l\'Académie Française, se trouve un adversaire de taille en la personne de Jacques Tricatel, le PDG d\'une chaîne de restaurants. Son fils Gérard anime en cachette une petite troupe de cirque.', '1976-10-27', 2),
(3, 'La folie des grandeurs', 'Don Salluste (Louis de Funès) profite de ses fonctions de ministre des Finances du roi d\'Espagne pour s\'enrichir. Mais la reine Marie-Anne de Neubourg, qui le déteste, réussit à le chasser de la cour. Ivre de vengeance, il décide de la compromettre.', '1971-12-08', 3),
(4, 'Fight Club', 'Le narrateur, sans identité précise, vit seul, travaille seul, dort seul, mange seul ses plateaux-repas pour une personne comme beaucoup d\'autres personnes seules qui connaissent la misère humaine, morale et sexuelle. C\'est pourquoi il va devenir membre du Fight club, un lieu clandestin ou il va pouvoir retrouver sa virilité, l\'échange et la communication. Ce club est dirigé par Tyler Durden, une sorte d\'anarchiste entre gourou et philosophe qui prêche l\'amour de son prochain. ', '1999-11-10', 4),
(5, 'La ligne verte', 'Paul Edgecomb, pensionnaire centenaire d\'une maison de retraite, est hanté par ses souvenirs. Gardien-chef du pénitencier de Cold Mountain en 1935, il était chargé de veiller au bon déroulement des exécutions capitales en s’efforçant d\'adoucir les derniers moments des condamnés. Parmi eux se trouvait un colosse du nom de John Coffey, accusé du viol et du meurtre de deux fillettes. Intrigué par cet homme candide et timide aux dons magiques, Edgecomb va tisser avec lui des liens très forts. ', '1999-03-01', 5),
(6, 'V pour Vendetta', 'Londres, au 21ème siècle...\r\nEvey Hammond ne veut rien oublier de l\'homme qui lui sauva la vie et lui permit de dominer ses peurs les plus lointaines. Mais il fut un temps où elle n\'aspirait qu\'à l\'anonymat pour échapper à une police secrète omnipotente. Comme tous ses concitoyens, trop vite soumis, elle acceptait que son pays ait perdu son âme et se soit donné en masse au tyran Sutler et à ses partisans.\r\nUne nuit, alors que deux \"gardiens de l\'ordre\" s\'apprêtaient à la violer dans une rue déserte, Evey vit surgir son libérateur. Et rien ne fut plus comme avant.\r\nSon apprentissage commença quelques semaines plus tard sous la tutelle du mystérieux \"V\".. ', '2006-04-19', 6),
(7, 'La haine', 'Trois copains d\'une banlieue ordinaire traînent leur ennui et leur jeunesse qui se perd. Ils vont vivre la journée la plus importante de leur vie après une nuit d\'émeutes provoquée par le passage à tabac d\'Abdel Ichah par un inspecteur de police lors d\'un interrogatoire.', '1995-05-31', 7),
(8, 'Get out', 'Couple mixte, Chris et sa petite amie Rose  filent le parfait amour. Le moment est donc venu de rencontrer la belle famille, Missy et Dean lors d’un week-end sur leur domaine dans le nord de l’État. Chris commence par penser que l’atmosphère tendue est liée à leur différence de couleur de peau, mais très vite une série d’incidents de plus en plus inquiétants lui permet de découvrir l’inimaginable. ', '2017-05-31', 8),
(9, 'Split', 'Kevin a déjà révélé 23 personnalités, avec des attributs physiques différents pour chacune, à sa psychiatre dévouée, la docteure Fletcher, mais l’une d’elles reste enfouie au plus profond de lui. Elle va bientôt se manifester et prendre le pas sur toutes les autres. Poussé à kidnapper trois adolescentes, dont la jeune Casey, aussi déterminée que perspicace, Kevin devient dans son âme et sa chair, le foyer d’une guerre que se livrent ses multiples personnalités, alors que les divisions qui régnaient jusqu’alors dans son subconscient volent en éclats. ', '2017-02-22', 9),
(10, 'Le Dîner de con', 'Riche et célèbre éditeur, Pierre Brochant s\'adonne tous les mercredis à des soirées d\'amis baptisées \" dîners de cons \" : c\'est à celui qui dénichera et amènera le con le plus spectaculaire. Ce soir-là il en tient un bon, un vrai, idéal : François Pignon, déniché par son ami Jean Cordier dans le train de Biarritz.', '1998-04-15', 10),
(11, 'Je suis une légende', 'Robert Neville était un savant de haut niveau et de réputation mondiale, mais il en aurait fallu plus pour stopper les ravages de cet incurable et terrifiant virus d\'origine humaine. Mystérieusement immunisé contre le mal, Neville est aujourd\'hui le dernier homme à hanter les ruines de New York.', '2007-12-05', 11),
(12, 'Seul au monde', 'Travaillant pour FedEx, Chuck Noland est appelé en urgence sur un vol, le soir de Noël, alors qu\'il dînait avec sa fiancée et sa famille. Victime d\'une grave avarie, l\'avion cargo s\'écrase et il est le seul à en réchapper.', '2000-12-22', 12);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `Nom`) VALUES
(1, 'Comédie'),
(2, 'Thriller'),
(3, 'Science_fiction'),
(4, 'Drame'),
(5, 'Fantastique'),
(6, 'Policier'),
(7, 'Epouvante-horreur');

-- --------------------------------------------------------

--
-- Structure de la table `realisateurs`
--

DROP TABLE IF EXISTS `realisateurs`;
CREATE TABLE IF NOT EXISTS `realisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Prenom` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Date_de_naissance` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `realisateurs`
--

INSERT INTO `realisateurs` (`id`, `Nom`, `Prenom`, `Date_de_naissance`) VALUES
(1, 'Girault', 'Jean', '1924-05-09'),
(2, 'Zidi', 'Claude', '1934-07-25'),
(3, 'Oury', 'Gérard', '1919-04-29'),
(4, 'Fincher', 'David', '1962-08-28'),
(5, 'Darabont', 'Frank', '1959-01-28'),
(6, 'McTeigue', 'James', '1967-12-29'),
(7, 'Kassovitz', 'Mathieu', '1967-04-03'),
(8, 'Peele', 'Jordan', '1979-02-21'),
(9, 'Shyamalan', 'M.Night', '1970-08-06'),
(10, 'Weber', 'Francis', '1937-07-28'),
(11, 'Lawrence', 'Francis', '1971-03-26'),
(12, 'Zemeckis', 'Robert', '1952-05-14');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `a`
--
ALTER TABLE `a`
  ADD CONSTRAINT `FK_a_id` FOREIGN KEY (`id`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `FK_a_id_Genre` FOREIGN KEY (`id_Genre`) REFERENCES `genre` (`id`);

--
-- Contraintes pour la table `a_joue`
--
ALTER TABLE `a_joue`
  ADD CONSTRAINT `FK_a_joue_id` FOREIGN KEY (`id`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `FK_a_joue_id_Acteurs` FOREIGN KEY (`id_Acteurs`) REFERENCES `acteurs` (`id`);

--
-- Contraintes pour la table `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `FK_Films_id_Realisateurs` FOREIGN KEY (`id_Realisateurs`) REFERENCES `realisateurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
