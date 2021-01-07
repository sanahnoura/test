-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 28 déc. 2020 à 11:03
-- Version du serveur :  8.0.21
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_exam`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adminId` int NOT NULL AUTO_INCREMENT,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(3, 'Alamgir_JUST', '8226a3c238456069bbec8b760a8babaa');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_ans`
--

DROP TABLE IF EXISTS `tbl_ans`;
CREATE TABLE IF NOT EXISTS `tbl_ans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quesNo` int NOT NULL,
  `rightAns` int NOT NULL DEFAULT '0',
  `ans` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(128, 1, 0, 'Une action qui permet d’identifie plusieurs éléments dans une donnée'),
(129, 1, 1, 'Une requête par rapport aux données de votre organisation qui fournit des réponses à des questions concernant l\'activité.'),
(130, 1, 0, 'C’est l’analyse des informations des services et toutes les sources de données opérationnelles relatives a l’entreprise \r\n\r\n'),
(132, 2, 1, 'Sous forme graphique'),
(133, 2, 0, 'Sous forme d’image'),
(134, 2, 0, 'Sous forme de liste'),
(136, 3, 0, 'Affiche les données les plus utilise dans le tableau de bord '),
(137, 3, 0, 'Affiche l’ensemble des données '),
(138, 3, 1, 'Affiche automatiquement les données les plus récentes chaque fois que vous\r\nAccédez au tableau de bord\r\n'),
(139, 3, 0, 'Affiche dans un tableau de bords les donnes utiles et récentes '),
(140, 4, 1, 'Il affiche les connexions, les ensembles de données, les flux de données, modèles d\'autres contenus associés aux données.'),
(141, 4, 0, 'Il affiche les connexions se rapportant a des rapports d’analyses en indiquant les données'),
(144, 5, 0, 'vrai'),
(146, 5, 1, 'Faux'),
(148, 6, 1, 'Oracle Analytics Synopsys'),
(149, 6, 0, 'Oracle Analytics Synopsis'),
(150, 6, 1, 'Oracle Analytics Day by Day\r\n'),
(152, 7, 1, 'Ils permettent d\'explorer des informations et d\'interagir avec elles en présentant les données de façon visuelle dans des tableaux, des graphiques, des tableaux croisés dynamiques et d\'autres vues de données. '),
(153, 7, 0, 'Ils permettent d’identifier les informations en vue de l’analyse et de personnalisés les données relatives à l’entreprise.'),
(154, 7, 0, 'Ils permettent d\'explorer dynamiquement plusieurs ensembles de données sous une forme graphique, dans différentes interfaces.\r\n\r\n'),
(156, 8, 0, 'Il faut une des applications mobiles ou, pour les projets de visualisation, vous pouvez utiliser le navigateur sur votre appareil mobile.\r\n\r\n'),
(158, 8, 1, 'Il faut une des applications mobiles ou, pour les projets de visualisation, vous pouvez utiliser le navigateur sur votre appareil mobile.\r\n\r\n'),
(160, 9, 0, 'Création de l’analyse, ajout du tableau de bord, modification du graphique'),
(161, 9, 0, 'Créer votre première analyse, création du premier tableau de bord, ajout de l’ensemble des données '),
(162, 9, 1, 'réer votre première analyse, Création du tableau de bord, Modification des vues de graphique'),
(164, 10, 0, 'Oracle Analytics Day by Day fournit des analyses instantanées sur un appareil mobile. Avec cette application vous pouvez charger le chargement des données à analyse.'),
(165, 10, 0, 'Oracle Analytics Day by Day est une application innovante qui fournit des analyses pertinentes sur la visualisation d’un projet.\r\n\r\n'),
(167, 10, 1, 'Oracle Analytics Day by Day effectue des recherches En fonction des données métier, l\'application mémorise ce qui vous intéresse, où et à quel moment, et présente les données dans des graphiques analytiques prêts à l\'emploi'),
(168, 11, 0, 'Ils affichent des liens des documents, ainsi que du contenu des documents ou des pages Web.'),
(169, 11, 0, 'Ils affichent les donnes dans les pages d’un tableau de bord dans lequel nous avons accès et dans les navigateurs web.'),
(170, 11, 1, 'Ils affichent tous les éléments auxquels vous avez accès ou que vous pouvez ouvrir avec un navigateur Web, y compris des résultats d\'analyses, des images, du texte.'),
(171, 12, 0, 'Il permet d\'explorer dynamiquement plusieurs ensembles de données sous une forme graphique, dans différentes interfaces.'),
(172, 12, 1, 'Il permet d\'exploration dynamique de plusieurs ensembles de données sous une forme graphique, dans une seule et même interface.'),
(173, 12, 0, 'Il permet la vérification des données dans un ensemble de source courante contenant des informations.'),
(174, 13, 1, 'Vrai'),
(175, 13, 0, 'Faux'),
(176, 14, 0, 'Oui, car en créant des filtres ils appliquant différentes visualisations'),
(177, 14, 1, 'Oui, car ces derniers ne vous permettent pas de manipuler les données en ajoutant ou en enlevant des colonnes'),
(178, 14, 0, 'Non, car il ne manipule pas les donnes avec les différentes colonnes '),
(179, 15, 1, 'C’est une fonction statistique appliquez pour améliorer les données affichées dans les visualisations'),
(180, 15, 0, 'C’est une fonction d\'analyse qui calcule les colonnes de référencement des scripts statistiques'),
(181, 16, 1, 'Défini des filtres plus complexes à l\'aide d\'expressions SQL'),
(182, 16, 0, 'Défini les éléments de données d\'indicateur auquel il s’applique'),
(183, 16, 0, 'Défini les éléments de données qui sont dans types d’expression'),
(184, 17, 1, 'Aux nombres d\'ensembles de donnée'),
(185, 17, 0, 'Aux nombres d’élément du projet'),
(186, 17, 0, 'Aux nombres de filtre lors de la visualisation'),
(187, 18, 0, 'Connectez-vous à Oracle Cloud à l\'adresse cloud.oracle.ci, puis sélectionnez Oracle Analytics Cloud'),
(188, 18, 1, 'Ouvrez votre courriel de bienvenue dans Oracle Analytics Cloud, cliquez sur le lien vers le service et connectez-vous\r\n\r\n'),
(189, 19, 1, 'Indiquez si les données de projet, les informations d\'identification de connexion et les droits d\'accès doivent être inclus.'),
(190, 19, 0, 'Indiquez les donnes du fichier, ainsi que l’identification du délimiteur de connexion'),
(191, 20, 0, 'Une source de données   comporte une seule colonne en fonction du contenu de la source de données'),
(192, 20, 0, 'Une source de donnes une seule ou deux sources de données en fonction du contenu de la source de données '),
(193, 20, 1, 'Une source de données seule, ou deux sources de données ou plus ensemble, en fonction du contenu de la source de données'),
(194, 21, 0, 'Numérique'),
(195, 21, 1, 'Multi-classificateur Numérique'),
(196, 21, 0, 'Multi-classificateur alphabétique'),
(197, 22, 1, 'Les données affichées garantissent les mises à jour réexécutant les requêtes de visualisation pour toutes les vues de votre projet'),
(198, 22, 0, 'Les donnes affiches s’exécute dans le projet avec les requêtes applique '),
(199, 23, 0, 'Utiliser des invites de variable et d\'image dans les projets de visualisation'),
(200, 23, 1, 'Crée des projets de visualisation et stockez-les dans le catalogue'),
(201, 23, 0, 'Analyse le projet stocke dans un canevas '),
(202, 24, 0, 'Calcule le prix des articles'),
(203, 24, 0, 'Calcule chaque unité des articles'),
(204, 24, 1, 'Calcule le prix des articles en solde '),
(205, 25, 0, 'Chaine de donnée spécifié'),
(206, 25, 1, 'Précision Numérique et masque de format'),
(207, 25, 0, 'Format numérique spécifique'),
(208, 26, 1, 'Les étapes de sélections, de filtre, de groupe et d’élément calculé dans l’analyse '),
(209, 26, 0, 'Les formats de valeur d\'affichage des données dans l’analyse'),
(210, 26, 0, 'Indiquer les filtres de calcule à la sélection de l’analyse'),
(211, 27, 1, 'Contrôle la présentation de la colonne '),
(212, 27, 0, 'Affiche les valeurs de la colonne distinct'),
(213, 27, 0, 'Affiche les valeurs de ligne'),
(214, 28, 1, 'De la colonne sélectionnée'),
(215, 28, 0, 'Des tables affiches'),
(216, 28, 0, 'De toute les colonnes affiches'),
(217, 29, 1, 'La modification des propriétés'),
(218, 29, 0, 'La création d’une nouvelle table'),
(219, 29, 0, 'La modification de la table'),
(220, 30, 0, 'A la modification des vues '),
(221, 30, 0, 'A l’ajout des vues '),
(222, 30, 1, 'A la réorganisation des vues'),
(223, 31, 0, 'Sur l’opérateur et les fonctions du filtre'),
(224, 31, 1, 'Sur l\'opérateur et les valeurs d\'un filtre'),
(225, 31, 0, 'Sur l’operateur et les résultats du filtre'),
(226, 32, 1, 'Sur la barre d\'outils du concepteur de tableaux de bord'),
(227, 32, 0, 'Sur la barre d’outils du panneau de tableau de bord'),
(228, 32, 0, 'Sur la barre d’outils du tableau de bord '),
(229, 33, 0, 'Ajouter, modifier, supprimer et télécharger'),
(230, 33, 0, 'Ajouter, modifier, suppression'),
(231, 33, 1, 'Ajouter, modifier, télécharger'),
(232, 34, 1, 'Le contenu copié vers le tableau de bord de destination, et ses références sont mises à jour'),
(233, 34, 0, 'Le contenu est copie vers un autre utilisateur'),
(234, 34, 0, 'Le contenu et c’est référence sont publié dans le tableau de bord'),
(235, 35, 0, 'Lorsque l\'utilisateur choisi un opérateur lors de l\'exécution de son analyse'),
(236, 35, 1, 'Lorsque l’utilisateur passe le pointeur de la souris sur le libellé de l\'invite dans le tableau de bord ou l\'analyse'),
(237, 36, 0, 'D’utilise les boutons pour remplacer les paramètres dans l’éditeur d’invite'),
(238, 36, 1, 'Utilise les boutons comme indiqué dans la définition d\'invite dans l\'éditeur d\'invite.'),
(239, 37, 1, 'Afficher la sortie enregistrée et l\'historique des travaux de rapport.'),
(240, 37, 0, 'Planification des rapports exécuté aux intervalles sélectionnés et vers les différentes destinations telles que l\'imprimante, le fax ou la messagerie.'),
(241, 37, 0, 'Affichage des travaux de rapports en temps réel à partir du terminal.'),
(242, 38, 1, 'Template Builder for Microsoft Word'),
(243, 38, 1, 'Template Viewer'),
(244, 38, 0, 'Template Builder '),
(245, 39, 0, 'SQL Deblog'),
(246, 39, 0, 'PLSQL'),
(247, 39, 1, 'SQL Developer'),
(248, 40, 0, 'Excel '),
(249, 40, 0, 'Word '),
(250, 40, 0, 'HMTL'),
(251, 40, 1, 'PDF'),
(252, 41, 0, 'Il génère le lien et le réutilise pour afficher URL'),
(253, 41, 1, 'Il génère la copie du lien en fonction du rapport de l’affichage en cours'),
(254, 41, 0, 'Il permet de sélectionner le lien en cours d\'exécution.'),
(255, 42, 0, 'En bas de la zone d’affichage'),
(256, 42, 0, 'A droite de la zone d’affichage'),
(257, 42, 1, 'En haut de la zone d’affichage'),
(258, 43, 0, 'XHTML'),
(259, 43, 1, 'HTML'),
(260, 43, 0, 'PDF'),
(261, 44, 0, 'Vrai'),
(262, 44, 1, 'Faux'),
(263, 45, 0, 'La date de la planification du rapport'),
(264, 45, 1, 'La date de fin auquel le système du serveur s’exécute'),
(265, 45, 0, 'La date en cours, date système du serveur s\'exécute'),
(266, 46, 0, 'Rapport terminé sans des avertissements'),
(267, 46, 1, 'Rapport accepte '),
(268, 46, 1, 'Echec de rapport'),
(269, 47, 1, 'ID de l’utilisateur'),
(270, 47, 0, 'Travaux inactifs'),
(271, 47, 0, 'Filtrage de la valeur '),
(272, 47, 1, 'Valeur des travaux public et prives '),
(273, 48, 0, 'Recherche'),
(274, 48, 1, 'Actif '),
(275, 48, 1, 'En pause '),
(276, 49, 1, '10 000'),
(277, 49, 0, '100'),
(278, 49, 0, '10'),
(279, 50, 0, 'Table'),
(280, 50, 0, 'Type de vue prenant en charge les invites de vue'),
(281, 50, 1, 'Narrer, bandeau'),
(282, 51, 0, '20Go'),
(283, 51, 1, '25 Mo'),
(284, 51, 0, '25 Go'),
(285, 52, 1, 'Oui., en Rétablissant l\'utilisateur supprimé, puis supprimez les fichiers de l\'ensemble de données.'),
(286, 52, 0, 'Oui, en supprimant des fichiers de données à partir de la page Sources de données'),
(287, 52, 0, 'Non, on ne peut pas supprimer les fichiers sur l’ensemble des données'),
(288, 53, 0, 'Vérifiez auprès de votre administrateur que vous pouvez disposer de droits aux options qui ne sont pas dans vos besoins. '),
(289, 53, 0, 'Vérifier auprès des utilisateurs pour accéder au droits et option dont vous avez besoin.'),
(290, 53, 1, 'Vérifier que vous ayez tous les droits nécessaires pour accéder à l’option dont vous avez besoin auprès de vote administrateur. '),
(291, 54, 1, '\"Erreur d\'affichage de la vue. Nombre maximal configuré d\'enregistrements d\'entrée autorisés dépassé.\"'),
(292, 54, 0, '\"Erreur d’affichage de l’enregistrement. Nombre maximal configuré d\'enregistrements d\'entrée autorisés dépassé.\"'),
(293, 54, 0, '\"Erreur de vue. Nombre maximal configuré d\'enregistrements d\'entrée autorisés dépassé.\"'),
(294, 55, 0, 'Le fichier. dva indique que la chaîne de connexion et les sources de données associées du projet utilise la même connexion '),
(295, 55, 1, 'Des sources de données utilisent une connexion portant le même nom que celle que vous essayez d\'importer. Supprimez ces sources de données.'),
(296, 55, 1, 'La taille d\'un fichier dans l\'archive est supérieure à la taille maximale de téléchargement (100 Mo). '),
(297, 56, 0, 'un fichier Excel.'),
(298, 56, 0, 'Un fichier schémas. '),
(299, 56, 1, 'Un fichier cache.'),
(300, 56, 0, 'Un fichier source.'),
(301, 57, 0, 'Des niveaux temporels, des colonnes de dimension et des colonnes'),
(302, 57, 1, 'Des niveaux de fait, de colonnes de dimension, niveaux temporels'),
(303, 58, 1, 'BETWEEN [LowerBound] AND [UpperBound]'),
(304, 58, 0, 'BETWEEN ([UpperBound])  AND [(LowerBound])'),
(305, 58, 0, 'BETWEEN  [UpperBound]  AND [LowerBound]'),
(306, 59, 1, 'Elles décrivent dans une section la création de bloc permettant de créer des expressions qui convertissent des valeurs d\'un format en un autre.'),
(307, 59, 0, 'Elles permettent la création de section dans un bloc de section d’un format a une valeur. '),
(308, 59, 0, 'Elles convertissent différentes valeurs d’un format a un autre a travers divers section.'),
(309, 60, 0, 'MONTH'),
(310, 60, 0, 'MONTH_OF_QUARTER'),
(311, 60, 1, 'MONTHNAME');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_ques`
--

DROP TABLE IF EXISTS `tbl_ques`;
CREATE TABLE IF NOT EXISTS `tbl_ques` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quesNo` int NOT NULL,
  `ques` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(40, 1, 'Une analyse est :'),
(41, 2, 'Comment sont représenter les données d’une activité ?'),
(42, 3, 'Après avoir imbriquez une analyse dans un tableau de bord celui-ci '),
(43, 4, 'Dans la barre de navigation lorsqu’on clique sur l’option données on obtient'),
(44, 5, 'Pour changer de mot de passe dans oracle Analytics il faut obligatoirement le réinitialiser'),
(45, 6, 'Quelle sont les applications disponibles pour Oracle Analytics Cloud\r\n'),
(46, 7, 'Quelles sont les fonctions d’une analyse'),
(47, 8, 'Comment a accéder a oracle Analytics cloud avec un appareil mobile. '),
(48, 9, 'Quelles sont les tâches principales pour l\'analyse sont :'),
(49, 10, 'Qu’elle est l’utilisation de Oracle Analytics Day by Day? '),
(50, 11, 'Comment s’affiche les pages du tableau de bord'),
(51, 12, 'Quel est la fonction d’un projet '),
(52, 13, 'Peut-on parcourir les miniatures de la page d\'accueil pour localiser le projet '),
(53, 14, 'L\'exploration de données d’Oracle Analytics se distingue-t-il de l\'utilisation de tableaux de bord et d\'analyses prédéfinis'),
(54, 15, 'Quel est l’utilisation de Advanced Analytics '),
(55, 16, 'Les filtres d\'expression permettent de :'),
(56, 17, 'Les filtres peuvent interagir différemment par rapport au '),
(57, 18, 'Quelles sont les méthodes pour ce Connectez à Oracle Analytics Cloud '),
(59, 19, 'Le Package (DVA) permet '),
(60, 20, 'Les sources de données prennent en charge.'),
(61, 21, 'La fonction CART est de catégorie'),
(62, 22, 'L’option actualiser les données permet de'),
(63, 23, 'Comment faire pour créer une imbrication dans un tableau de bord\r\n'),
(64, 24, 'Que décrit la requête  UNITS * RETAIL_PRICE.\r\n'),
(65, 25, 'Dans quel format le type date est exporter dans un fichier Excel'),
(66, 26, 'L’affectation des valeurs de donnée dans l\'analyse décrit'),
(67, 27, 'Lorsqu’on modifie les propriétés de colonne d’une analyse lors de sa création elle :'),
(68, 28, 'L’analyse d’une vue de table ou de tableau croisé s’affiche en fonction'),
(69, 29, 'Le redimensionnement des colonnes et des lignes de vues se fait de manière persistante a l’aide '),
(70, 30, 'A quel moment le graphique de courbe Actual revenue intervient '),
(71, 31, 'La modification d’un filtre se fait '),
(72, 32, 'L’ajout de la barre de tableau de bord se situe'),
(73, 33, 'Quels sont les taches que peuvent effectuer les pages de tableau de bord dans les carnets de rapports'),
(74, 34, 'Lorsqu’on publie sur le tableau de bord le contenu de la page est '),
(75, 35, 'A quel moment le champ description de l’invite de commande affiche l’info-bulle'),
(76, 36, 'L’option qui utilise les paramètres d\'invite permet de:'),
(77, 37, 'Quelle tâche est effectuer par un destinataire de rapport'),
(78, 38, 'Quels sont les éléments Publisher Desktop '),
(79, 39, 'Quel outil graphique est gratuit et entièrement pris en charge pour le développement de bases de données'),
(80, 40, 'Quel est la liste qui affiche les types de sortie disponibles pour un rapport'),
(81, 41, 'Que fait l’action partager le lien de rapport'),
(82, 42, 'A quel endroit est présenté les paramètres de rapport\r\n'),
(83, 43, 'Quel format de rapport ne peut pas être compresser'),
(84, 44, 'Peut-on créer un travail de ventilation si le rapport n’est pas configuré '),
(85, 45, 'Que signifie la syntaxe {$SYSDATE()-1$}'),
(86, 46, 'Quel statut de notification Publisher prend en compte '),
(87, 47, 'Quel sont les filtres par défaut appliques lors des travaux de rapport '),
(88, 48, 'Quels sont les différentes valeurs de statut possibles '),
(89, 49, 'Quel est le nombre maximal de section associe aux analyses et au tableau de bord '),
(90, 50, 'Quel est le type de vue du nombre maximal de lignes affichées'),
(91, 51, 'Quelle est la taille maximale de fichier de couche de carte que je peux télécharger vers le serveur ?'),
(92, 52, 'Peut-on supprimer des fichiers de données téléchargés par un utilisateur à partir de mon service cloud ?'),
(93, 53, 'Comment faire pour avoir accès à certaines options sur la page d\'accueil'),
(94, 54, 'Quel message apparait lorsque mon analyse ou mon projet affiche une erreur d\'affichage de la vue'),
(95, 55, 'Lors de l’importation de mon projet, une erreur m’indique qu\'un problème est survenu et que je ne peux pas importer mon fichier .dva quel erreur survient'),
(96, 56, 'Lors de la première connexion à MongoDB, le pilote MongoDB crée'),
(97, 57, 'A quel moment doit-on utiliser des objets de modèle de données dans des expressions'),
(98, 58, 'Quelle est la syntaxe de l’opérateur BETWEEN'),
(99, 59, 'A quoi servent Les expressions conditionnelles '),
(100, 60, 'Quelle expression renvoie le nom du mois de la date indiquée.');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
(5, 'Md. Alamgir Hossain', 'alamgir_JUST', '8226a3c238456069bbec8b760a8babaa', 'alamgir.cse14.just@gmail.com', 0),
(8, 'sanata', 'sanahnoura', '138d3ab7fedb3af29c9fa9dca7bcf8da', 'sanahnoura02@gmail.com', 0),
(9, 'Suamah', 'Suamah', '86426d21d1381c86c3ae66d3b38c0c75', 'suamah.ngattia@gmail.com', 0),
(16, 'noura', 'nourya', 'b9e20d22b7cc9c67bfcb178b49628847', 'nourah02@hotmail.fr', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
