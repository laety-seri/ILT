-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 03 juil. 2020 à 16:21
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
-- Base de données : `ilt`
--

-- --------------------------------------------------------

--
-- Structure de la table `activités`
--

CREATE TABLE `activités` (
  `id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `texte1` varchar(255) NOT NULL,
  `langue_start` varchar(255) NOT NULL,
  `texte2` varchar(255) NOT NULL,
  `langue_end` varchar(255) NOT NULL,
  `audio` varchar(255) NOT NULL,
  `datec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `data`
--

INSERT INTO `data` (`id`, `texte1`, `langue_start`, `texte2`, `langue_end`, `audio`, `datec`) VALUES
(1, 'femme', 'Français', 'wonnon', 'bété', 'daudios/BTfemme.m4a', '2020-07-02 11:39:15'),
(2, 'viens manger', 'Français', 'hi ké li', 'bété', 'daudios/BTviensmanger.m4a', '2020-07-03 01:17:09'),
(3, 'je suis une femme', 'Français', 'é non wonnon mon', 'bété', 'daudios/BTjesuisunefemme.m4a', '2020-07-03 01:22:04');

-- --------------------------------------------------------

--
-- Structure de la table `langues`
--

CREATE TABLE `langues` (
  `id` int(11) NOT NULL,
  `langue` varchar(255) NOT NULL,
  `datec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `langues`
--

INSERT INTO `langues` (`id`, `langue`, `datec`) VALUES
(1, 'bété', '2020-06-27 05:48:40'),
(2, 'dioula', '2020-06-28 02:43:27'),
(4, 'Français', '2020-06-28 03:18:18'),
(5, 'Anglais', '2020-06-28 03:18:48'),
(6, 'Baoulé', '2020-06-30 05:16:52');

-- --------------------------------------------------------

--
-- Structure de la table `recherches`
--

CREATE TABLE `recherches` (
  `id` int(11) NOT NULL,
  `search_text` varchar(100) NOT NULL,
  `langue_start` varchar(50) NOT NULL,
  `langue_end` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `statut` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recherches`
--

INSERT INTO `recherches` (`id`, `search_text`, `langue_start`, `langue_end`, `ip`, `statut`, `date`) VALUES
(1, 'femme', 'Français', 'bété', '::1', '', '2020-07-02'),
(2, 'femme', 'Français', 'bété', '::1', '', '2020-07-02'),
(3, 'viens manger', 'Français', 'bété', '::1', '', '2020-07-03'),
(4, 'viens manger', 'Français', 'bété', '::1', '', '2020-07-03'),
(5, 'viens manger', 'Français', 'bété', '::1', '', '2020-07-03'),
(6, 'viens manger', 'Français', 'bété', '::1', '', '2020-07-03'),
(7, 'viens manger', 'Français', 'bété', '::1', '', '2020-07-03'),
(8, 'je suis une femme', 'Français', 'bété', '::1', '', '2020-07-03');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nometprenoms` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `role` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nometprenoms`, `email`, `password`, `role`, `date`) VALUES
(9, 'laety', 'laety@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Opérateur de saisie', '2020-06-28 04:44:09'),
(10, 'seri', 'seri@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Administrateur', '2020-06-28 06:55:54'),
(11, 'jean marc', 'marc@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Superviseur', '2020-06-28 07:08:55'),
(12, 'patrick', 'patrick@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Administrateur', '2020-06-29 06:43:12'),
(13, 'jules', 'jules@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Opérateur de saisie', '2020-06-29 10:58:17'),
(15, 'kouassi koffi christ', 'christ@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 'Administrateur', '2020-06-30 05:09:38'),
(16, 'kone oumar', 'oumar@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Opérateur de saisie', '2020-06-30 05:11:28'),
(17, 'cedirc', 'cedric@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Administrateur', '2020-07-01 02:34:23'),
(19, 'franck', 'franck@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Opérateur de saisie', '2020-07-01 02:37:04');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activités`
--
ALTER TABLE `activités`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `langues`
--
ALTER TABLE `langues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recherches`
--
ALTER TABLE `recherches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activités`
--
ALTER TABLE `activités`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `langues`
--
ALTER TABLE `langues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `recherches`
--
ALTER TABLE `recherches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
