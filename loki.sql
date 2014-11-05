-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 05 Novembre 2014 à 01:28
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `lokisalle`
--
CREATE DATABASE IF NOT EXISTS `lokisalle` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lokisalle`;

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE IF NOT EXISTS `avis` (
  `id_avis` int(5) NOT NULL AUTO_INCREMENT,
  `id_membre` int(5) NOT NULL,
  `id_salle` int(5) NOT NULL,
  `commentaire` text NOT NULL,
  `note` int(2) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id_avis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Contenu de la table `avis`
--

INSERT INTO `avis` (`id_avis`, `id_membre`, `id_salle`, `commentaire`, `note`, `date`) VALUES
(1, 1, 1, 'Très satisfait du produit dans son ensemble', 7, '2014-09-01 12:00:00'),
(2, 2, 1, 'Salle Correct', 5, '2014-08-14 14:00:00'),
(3, 2, 5, 'Trop grande pour petite réunion', 6, '2014-09-16 23:00:00'),
(4, 3, 6, 'Très bonne salle de réunion', 7, '2014-09-21 13:00:00'),
(5, 4, 2, 'Test pour id_avis', 8, '2014-10-08 23:30:00'),
(6, 0, 0, '', 0, '0000-00-00 00:00:00'),
(23, 0, 0, '', 0, '0000-00-00 00:00:00'),
(24, 0, 0, 'Commentaire de test', 0, '0000-00-00 00:00:00'),
(40, 0, 0, 'Bon', 0, '0000-00-00 00:00:00'),
(41, 0, 0, 'Bon', 0, '0000-00-00 00:00:00'),
(42, 0, 0, 'Bon', 0, '0000-00-00 00:00:00'),
(43, 0, 0, 'Bon', 0, '0000-00-00 00:00:00'),
(44, 0, 0, 'Bon', 0, '0000-00-00 00:00:00'),
(45, 0, 0, 'Bon', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `id_commande` int(6) NOT NULL AUTO_INCREMENT,
  `montant` int(5) NOT NULL,
  `id_membre` int(5) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `id_membre` (`id_membre`),
  KEY `id_membre_2` (`id_membre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `montant`, `id_membre`, `date`) VALUES
(1, 599, 1, '2014-09-08 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `details_commande`
--

CREATE TABLE IF NOT EXISTS `details_commande` (
  `id_details_commande` int(6) NOT NULL AUTO_INCREMENT,
  `id_commande` int(6) NOT NULL,
  `id_produit` int(5) NOT NULL,
  PRIMARY KEY (`id_details_commande`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
  `id_membre` int(5) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(15) NOT NULL,
  `mdp` varchar(32) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `sexe` enum('m','f') NOT NULL,
  `ville` varchar(20) NOT NULL,
  `cp` int(5) NOT NULL,
  `adresse` varchar(30) NOT NULL,
  `statut` int(1) NOT NULL,
  PRIMARY KEY (`id_membre`),
  KEY `id_membre` (`id_membre`),
  KEY `id_membre_2` (`id_membre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`id_membre`, `pseudo`, `mdp`, `nom`, `prenom`, `email`, `sexe`, `ville`, `cp`, `adresse`, `statut`) VALUES
(1, 'Youssef95', '147896321', 'ouldamri', 'Youssef', 'ou@ymail.com', 'm', 'Cergy', 95800, '33 rue ', 0),
(7, 'Eric123', '123698741', 'PierreHo', 'Eric', 'ouf@yahoo.fr', 'm', 'Paris', 75800, '20 Rue ', 0),
(8, 'admin', 'admin', 'admintest', 'admintest', 'ad@yahoo.fr', 'm', 'Paris', 75000, '20 rue', 1);

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `id_newsletter` int(5) NOT NULL AUTO_INCREMENT,
  `id_membre` int(5) NOT NULL,
  PRIMARY KEY (`id_newsletter`),
  KEY `id_membre` (`id_membre`),
  KEY `id_membre_2` (`id_membre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `id_produit` int(5) NOT NULL AUTO_INCREMENT,
  `date_arrivee` datetime NOT NULL,
  `date_depart` datetime NOT NULL,
  `id_salle` int(5) NOT NULL,
  `id_promo` int(2) NOT NULL,
  `prix` int(5) NOT NULL,
  `etat` int(1) NOT NULL,
  PRIMARY KEY (`id_produit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `date_arrivee`, `date_depart`, `id_salle`, `id_promo`, `prix`, `etat`) VALUES
(1, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 1, 0, 300, 0),
(2, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 2, 0, 350, 0),
(3, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 3, 0, 300, 1),
(4, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 4, 0, 300, 0),
(5, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 5, 0, 500, 0),
(6, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 6, 0, 666, 1),
(7, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 7, 0, 500, 0),
(8, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 8, 1, 600, 0),
(9, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 7, 0, 527, 0),
(10, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 8, 0, 587, 0),
(11, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 9, 0, 256, 0),
(12, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 10, 0, 457, 1),
(13, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 11, 0, 874, 1),
(14, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 12, 0, 458, 0),
(15, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 13, 0, 457, 1),
(16, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 14, 0, 652, 1),
(17, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 15, 0, 856, 0),
(18, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 16, 0, 752, 0),
(19, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 19, 0, 123, 0),
(20, '2014-07-01 00:00:00', '2014-12-01 00:00:00', 20, 0, 456, 0),
(21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 51, 0, 250, 0),
(22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 52, 0, 586, 0);

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

CREATE TABLE IF NOT EXISTS `promotion` (
  `id_promo` int(2) NOT NULL AUTO_INCREMENT,
  `code_promo` varchar(6) NOT NULL,
  `reduction` int(5) NOT NULL,
  PRIMARY KEY (`id_promo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `promotion`
--

INSERT INTO `promotion` (`id_promo`, `code_promo`, `reduction`) VALUES
(1, '', 0),
(2, '', 0),
(3, 'fgdfg', 0),
(4, '45454', 545454),
(5, '878787', 545454),
(6, 'A123', 10);

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE IF NOT EXISTS `salle` (
  `id_salle` int(5) NOT NULL AUTO_INCREMENT,
  `pays` varchar(20) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `adresse` text NOT NULL,
  `cp` int(5) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(200) NOT NULL,
  `capacite` int(3) NOT NULL,
  `categorie` enum('capacite') NOT NULL,
  PRIMARY KEY (`id_salle`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `salle`
--

INSERT INTO `salle` (`id_salle`, `pays`, `ville`, `adresse`, `cp`, `titre`, `description`, `photo`, `capacite`, `categorie`) VALUES
(1, 'France', 'Paris', '10 Rue adresse', 75, 'Salle duval', 'Description', '', 50, ''),
(2, 'France', 'Paris', '10 Rue adresse', 75, 'Salle Baron', 'Description', '', 70, ''),
(3, 'France', 'Paris', '10 rue Adresse', 75, 'Salle Bardin', 'Description', '', 20, ''),
(4, 'France', 'Paris', '10 rue Adresse', 75, 'Salle Baille', 'Description', '', 80, ''),
(5, 'France', 'Paris', '10 rue Adresse', 75, 'Salle Ballerat', 'Description', '', 50, ''),
(6, 'France', 'Marseille', '10 rue Adresse', 13, 'Salle Victoire', 'Description', '', 30, ''),
(7, 'France ', 'Lyon', '10 rue Adresse', 69, 'Salle Balerat', 'Description', '', 15, ''),
(8, 'France', 'Paris', '10 rue adresse', 75, 'Salle Cabat', 'Description', '', 25, ''),
(9, 'France', 'Marseille', '10 rue adresse', 13, 'Salle Carriere', 'Description', '', 10, ''),
(10, 'France', 'Lyon', '10 rue adresse', 69, 'Salle Cezanne', 'Description', '', 30, ''),
(11, 'France', 'Paris', '10 rue adresse', 75, 'Salle Clesinger', 'Description', '', 45, ''),
(12, 'France', 'Marseille', '10 rue adresse', 13, 'Salle Couture', 'Description', '', 20, ''),
(13, 'France', 'Paris', '10 rue adresse', 75, 'Salle Daubigny', 'Description', '', 30, ''),
(14, 'France', 'Lyon', '10 rue adresse', 69, 'Salle Delacroix', 'Description', '', 20, ''),
(15, 'France', 'Paris', '10 rue adresse', 75, 'Salle Delaroche', 'Description', '', 20, ''),
(16, 'France', 'Marseille', '10 rue adresse', 13, 'Salle Demanche', 'Description', '', 35, ''),
(17, 'France', 'Lyon', '10 rue adresse', 69, 'Salle Latour', 'Description', '', 20, ''),
(18, 'France', 'Paris', '10 rue adresse', 75, 'Salle Jouvenet', 'Description', '', 60, ''),
(19, 'France', 'Lyon', '10 rue adresse', 69, 'Salle Grimaud', 'Description', '', 65, ''),
(20, 'France', 'Paris', '10 rue adresse', 75, 'Salle Langlois', 'Description', '', 30, ''),
(22, 'France', 'Madrid', '33 Rue du chemin de fer', 95800, 'Lisbonne', 'dd', '', 58, '');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id_membre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `newsletter`
--
ALTER TABLE `newsletter`
  ADD CONSTRAINT `newsletter_ibfk_1` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id_membre`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
