-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 14 fév. 2023 à 14:31
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dwwm30`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `rue` varchar(100) NOT NULL,
  `code postal` varchar(5) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id_client`, `prenom`, `nom`, `rue`, `code postal`, `ville`, `id_produit`) VALUES
(1, 'Alberto', 'Dubois', '3 rue du pont', '57500', 'Saint-Avoid', 1),
(2, 'Mi', 'Volond', '4 Rue de la liberté', '57500', 'Saint-Avoid', 2),
(3, 'Roger', 'Botas', '5 place du marché\r\n', '57500', 'Saint-Avoid', 1),
(4, 'Edouard', 'Noulas', '41 Rue de l\'église', '57600', 'Forbach', 1),
(5, 'Paul', 'Lontague', '21 Boulevard des oiseaux', '57800', 'Freyming', 1),
(6, 'Eric', 'Pondier', '14 rue des Agates', '57600', 'Forbach', 1),
(7, 'Thomas', 'Malon', '12 Rue des lapins', '57600', 'Forbach', 1),
(8, 'Rénato', 'Point', '451 rue de l\'égalité', '57500', 'Saint-Avoid', 1),
(9, 'Michel', 'Botas', '17 Rue des hochets', '57500', 'Saint-Avoid', 1),
(10, 'david', 'collague', '14 rue Utrillo', '57600', 'Forbach', 1),
(11, 'Simon', 'Potillon', '17 rue des marguerittes', '57800', 'Freyming', 2),
(14, 'Scott', 'BIS', '3, rue des Capucins', '67500', 'Haguenau', 2);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(100) NOT NULL,
  `origine` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id_produit`, `nom_produit`, `origine`, `description`) VALUES
(1, 'pomme', 'mexique', 'super pomme'),
(2, 'poire', 'france', 'super poire');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id_produit`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
