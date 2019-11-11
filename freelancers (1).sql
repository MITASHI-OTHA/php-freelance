-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 20 Juillet 2018 à 01:32
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `freelancers`
--

-- --------------------------------------------------------

--
-- Structure de la table `boots`
--

CREATE TABLE `boots` (
  `idFree` int(11) NOT NULL,
  `idRecru` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `boots`
--

INSERT INTO `boots` (`idFree`, `idRecru`) VALUES
(52, 4),
(52, 16);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `ids` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `couleur` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`ids`, `libelle`, `couleur`) VALUES
(1, 'Administration de serveurs', '#A10684'),
(2, 'Agriculture', '#7FDD4C'),
(3, 'Android', '#1E7FCB'),
(4, 'Animation 3D', '#884DA7'),
(5, 'Agronomie', '#AE642D'),
(6, 'Architecture', '#0000FF'),
(7, 'Bases de données', '#6050DC'),
(8, 'Autre', '#FCDC12	'),
(9, 'Batiment', '#6050DC'),
(10, 'Blogging', '#FF5E4D'),
(11, 'Boucherie', '#BB0B0B'),
(12, 'Bureautique', '#FF5E4D'),
(13, 'CMS', '#DB1702'),
(14, 'Chaudronnerie', '#00FFFF'),
(15, 'Climatisation', '#E73E01'),
(16, 'Coaching', '#00FFFF'),
(17, 'Coiffure', '#FF69B4'),
(18, 'Communication', '#01D758'),
(19, 'Commerce', '#FFFF6B'),
(20, 'Composition musicale', '#C72C48'),
(21, 'Comptabilité', '#649B88'),
(22, 'Consulting', '#C9A0DC'),
(23, 'Création sites web', '#D2CAEC'),
(24, 'Cuisine', '#FF6F7D'),
(25, 'Design', '#791CF8'),
(26, 'Design d\'interieur', 'rgb(119, 119, 30)'),
(27, 'Développement logiciels', '#C7CF00'),
(28, 'Développement web', '#26619C'),
(29, 'Développement applications mobile', '#8F5922'),
(30, 'Droit', '#9683EC'),
(31, 'Enseignement', '#AC1E44'),
(32, 'E-Commerce', '#FF00FF'),
(33, 'Electricité', '#DB0073'),
(34, 'Evenementielle', '#800080	'),
(35, 'Esthétique', '#FFDE75'),
(36, 'Fer forger', '#1FA055'),
(37, 'Evenementiel', '#FEA347'),
(38, 'Finances', '#03224C'),
(39, 'Formation', '#582900'),
(40, 'Genie Ã¨lectrique', '#B3B191'),
(41, 'Genie civil', '#D473D4'),
(42, 'Génie civil', '#DE9816'),
(43, 'Infirmerie', '#16B84E'),
(44, 'Genie Electronique', '#54F98D'),
(45, 'Génie mécanique', '#DAB30A'),
(46, 'Genie mechanique', '#87591A'),
(47, 'Ingenierie', '#000000'),
(48, 'Infographie', '#FC5D5D'),
(49, 'Jardinage', '#955628'),
(50, 'Maintenance informatique', '#DD985C'),
(51, 'Linux', '#DFAF2C'),
(52, 'Maintenance rÃ©seaux informatique', '#F2FFFF'),
(53, 'MaÃ§onnerie', '#FFD700'),
(54, 'Maintenance Electronique', '#FCD21C'),
(55, 'Maintenance réseaux Electrique', '#CFA0E9'),
(56, 'Maintenance réseaux téléphonique', '#56739A	'),
(57, 'Marketing', '#CCCCFF	'),
(58, 'Maintenance téléphones', '#BEF574'),
(59, 'Médecine', '#FAF0C5'),
(60, 'Mixage audio', '#798081'),
(61, 'Marketing en ligne', '#B67823'),
(62, 'Montage vidÃ©os', '#C60800'),
(63, 'Menuiserie', '#FD6C9E'),
(64, 'Nettoyage', '#FF5E4D'),
(65, 'Musique', '#01D758'),
(66, 'Oracle', '#0131B4'),
(67, 'Mysql', '#850606	'),
(68, 'Notariat', '#008E8E	'),
(69, 'Photographie', '#F88E55'),
(70, 'Ponts et chaussées', '#149414'),
(71, 'Peinture', '#01D758'),
(72, 'Presse', '#FFFF6B'),
(73, 'Programmation', '#25FDE9	'),
(74, 'Plomberie', '#FAEA73'),
(75, 'Publicité', '#FF7F00'),
(76, 'Publicité en ligne', '#9F551E'),
(77, 'Rédaction Arcticles', '#E1CE9A'),
(78, 'Réferencement Web (SEO)', '#E9C9B1'),
(79, 'Rédaction Articles', '#FF0921	'),
(80, 'Restauration', '#DB1702'),
(81, 'Sécurité et gardiennage', '#660099'),
(82, 'Réseaux sociaux', '#A10684'),
(83, 'Soudure', '#40826D'),
(84, 'Vente', '#83A697'),
(85, 'Tourisme', '#34C924'),
(86, 'Web Design', '#6C0277'),
(87, 'Traduction', '#DF73FF'),
(88, 'Website Project Management', '#649B88'),
(89, 'Website QA', '#F7FF3C'),
(90, 'Wordpress', '#00CCCB'),
(91, 'Yoga', '#0F056B'),
(94, 'Combat', '#0F056B');

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

CREATE TABLE `competences` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `competences`
--

INSERT INTO `competences` (`id`, `libelle`) VALUES
(1, '.Net'),
(2, 'Administration de serveurs'),
(3, 'Active Directory'),
(4, 'Agronomie'),
(5, 'Agriculture'),
(6, 'AJAX'),
(7, 'Allemand'),
(8, 'Android'),
(9, 'Anglais'),
(10, 'Animation 3D'),
(11, 'Apache'),
(12, 'Arabe'),
(13, 'Architecture'),
(14, 'Architecture SOA'),
(15, 'ASP'),
(16, 'Bases de donnÃ©es'),
(17, 'Autre'),
(18, 'BÃ¢timent'),
(19, 'Bing Ads'),
(20, 'Biologie'),
(21, 'Blogging'),
(22, 'bootstrap'),
(23, 'Boucherie'),
(24, 'C'),
(25, 'Bureautique'),
(26, 'C++'),
(27, 'C#'),
(28, 'CAF'),
(29, 'Chaudronnerie'),
(30, 'Chimie'),
(31, 'Cisco'),
(32, 'Chinois'),
(33, 'Citrix â€“ XenDesktop'),
(34, 'Citrix'),
(35, 'Climatisation'),
(36, 'Cloud Architecture'),
(37, 'CMMI'),
(38, 'CMS'),
(39, 'Coaching'),
(40, 'Coiffure'),
(41, 'Commerce'),
(42, 'Composition musicale'),
(43, 'ComptabilitÃ©'),
(44, 'Copywriting'),
(45, 'CSS'),
(46, 'Consulting'),
(47, 'CSS3'),
(48, 'CrÃ©ation sites web'),
(49, 'Cuisine Chinoise'),
(50, 'Cuisine FranÃ§aise'),
(51, 'Cuisine Italienne'),
(52, 'Cuisine Japonaise'),
(53, 'Design'),
(54, 'Design dâ€™interieur'),
(55, 'DÃ©veloppement applications mobile'),
(56, 'DÃ©veloppement logiciels'),
(57, 'Cuisine Marocaine'),
(58, 'Delphi'),
(59, 'DÃ©veloppement web'),
(60, 'DHCP'),
(61, 'Diagnostic et Monitoring des serveurs dâ€™applications'),
(62, 'DNS'),
(63, 'Droit'),
(64, 'E-Commerce'),
(65, 'Ã‰lectricitÃ©'),
(66, 'EMC Avamar'),
(67, 'Drupal'),
(68, 'EMC Data Domain'),
(69, 'EMC RecoverPoint'),
(70, 'EMC VPLEX'),
(71, 'Enseignement'),
(72, 'ESCALA Hardware'),
(73, 'Espagnol'),
(74, 'Esthétique'),
(75, 'Escala P8'),
(76, 'ETOM'),
(77, 'Evenementielle'),
(78, 'Excel'),
(79, 'Facebook'),
(80, 'Facebook Ads'),
(81, 'Finances'),
(82, 'Firewalls'),
(83, 'Fer forger'),
(84, 'Flash'),
(85, 'Flash animations'),
(86, 'Français'),
(87, 'Génie civil'),
(88, 'Gestion de Projets'),
(89, 'Google Adwords'),
(90, 'Graphic Design'),
(91, 'Ghostwriting'),
(92, 'HTML'),
(93, 'HTML5'),
(94, 'IBM Lotus'),
(95, 'Infirmerie'),
(96, 'Infographie'),
(97, 'iOS'),
(98, 'ISO 9001 Foundation'),
(99, 'Internet Marketing'),
(100, 'Italien'),
(101, 'J2E'),
(102, 'Japonais'),
(103, 'Java'),
(104, 'Java script'),
(105, 'Joomla'),
(106, 'Jquery'),
(107, 'JAVA/J2EE'),
(108, 'Link Building'),
(109, 'Linux'),
(110, 'Linux centos'),
(111, 'Linux redhat'),
(112, 'Linux Ubuntu'),
(113, 'Logiciel autocad'),
(114, 'Logiciel sage'),
(115, 'Logiciel Archicad'),
(116, 'MaÃ§onnerie'),
(117, 'magento'),
(118, 'Maintenance Ã©lectronique'),
(119, 'Maintenance informatique'),
(120, 'Maintenance rÃ©seaux Ã©lectrique'),
(121, 'Maintenance rÃ©seaux informatique'),
(122, 'Maintenance tÃ©lÃ©phones'),
(123, 'Management Projet'),
(124, 'Maintenance rÃ©seaux tÃ©lÃ©phonique'),
(125, 'Management Transversal'),
(126, 'Management Transversal Diagnostic et Monitoring des serveurs dâ€™applications JAVA/J2EE Salesforce ETOM Oracle DB Tuning'),
(127, 'Marketing'),
(128, 'Marketing en ligne'),
(129, 'Mathematiques'),
(130, 'Medecine'),
(131, 'Menuiserie'),
(132, 'Merise'),
(133, 'Microsoft Access'),
(134, 'Microsoft Excel'),
(135, 'Microsoft office'),
(136, 'Microsoft Outlook'),
(137, 'Microsoft powerpoint'),
(138, 'Microsoft Word'),
(139, 'Mixage audio'),
(140, 'Montage vidÃ©os'),
(141, 'Microsoft Publisher'),
(142, 'MVC'),
(143, 'MySql'),
(144, 'MYSQL : Administration'),
(145, 'Nettoyage'),
(146, 'Nginx'),
(147, 'Notariat'),
(148, 'Oracle'),
(149, 'Oracle DB Tuning'),
(150, 'Oracle SOA Suite'),
(151, 'Other Skills'),
(152, 'Peinture'),
(153, 'Perl'),
(154, 'Photographie'),
(155, 'Photoshop'),
(156, 'PHP'),
(157, 'Physique'),
(158, 'Plomberie'),
(159, 'PostgreSQL'),
(160, 'Presse'),
(161, 'Pretashop'),
(162, 'Publicité'),
(163, 'Publicité en ligne'),
(164, 'Python'),
(165, 'QA'),
(166, 'Redaction Arcticles'),
(167, 'Raferencement Web (seo)'),
(168, 'Reseaux sociaux'),
(169, 'Restauration'),
(170, 'Salesforce'),
(171, 'Sciences de la terre'),
(172, 'Sécurité et gardiennage'),
(173, 'SEO'),
(174, 'Software Testing'),
(175, 'Soudure'),
(176, 'SQL'),
(177, 'Testing / QA'),
(178, 'TMFORUM'),
(179, 'Tourisme'),
(180, 'Traduction'),
(181, 'UI/IA'),
(182, 'Usability Testing'),
(183, 'User Experience Design'),
(184, 'User Interface / IA'),
(185, 'UX/UI Design'),
(186, 'VCE Vblock Systems'),
(187, 'Vente'),
(188, 'VMAX'),
(189, 'VMWARE'),
(190, 'VMware Site Recovery Manager'),
(191, 'VMWare View'),
(192, 'VxRAIL'),
(193, 'Webmethods : BPM/ESB'),
(194, 'Website Design'),
(195, 'Website hosting'),
(196, 'website Management'),
(197, 'Website testing'),
(198, 'Windows'),
(199, 'Windows 10'),
(200, 'Windows 7'),
(201, 'Windows 8'),
(202, 'Windows server 2003'),
(203, 'Windows server 2012'),
(204, 'Wordpress'),
(205, 'Karaté'),
(206, 'kung fu'),
(207, ''),
(208, ''),
(209, ''),
(210, ''),
(211, ''),
(212, ''),
(213, ''),
(214, ''),
(215, ''),
(216, ''),
(217, ''),
(218, ''),
(219, ''),
(220, ''),
(221, ''),
(222, ''),
(223, ''),
(224, ''),
(225, ''),
(226, ''),
(227, ''),
(228, ''),
(229, ''),
(230, ''),
(231, ''),
(232, ''),
(233, ''),
(234, ''),
(235, ''),
(236, ''),
(237, ''),
(238, ''),
(239, ''),
(240, ''),
(241, ''),
(242, ''),
(243, ''),
(244, ''),
(245, ''),
(246, ''),
(247, ''),
(248, ''),
(249, ''),
(250, ''),
(251, ''),
(252, ''),
(253, ''),
(254, ''),
(255, ''),
(256, ''),
(257, ''),
(258, ''),
(259, ''),
(260, ''),
(261, ''),
(262, ''),
(263, ''),
(264, ''),
(265, ''),
(266, ''),
(267, ''),
(268, ''),
(269, ''),
(270, ''),
(271, ''),
(272, ''),
(273, ''),
(274, ''),
(275, ''),
(276, ''),
(277, ''),
(278, ''),
(279, ''),
(280, ''),
(281, ''),
(282, ''),
(283, ''),
(284, ''),
(285, ''),
(286, ''),
(287, ''),
(288, ''),
(289, ''),
(290, ''),
(291, ''),
(292, ''),
(293, ''),
(294, ''),
(295, '');

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE `devis` (
  `id` int(11) NOT NULL,
  `IDprojet` int(11) NOT NULL,
  `iDfree` int(11) NOT NULL,
  `date_post` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `temps` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `devis`
--

INSERT INTO `devis` (`id`, `IDprojet`, `iDfree`, `date_post`, `status`, `temps`, `prix`) VALUES
(2, 28, 52, 'mercredi 18 juillet Ã  21:05', 'en cours', '4 heure', '1000'),
(3, 23, 52, 'mercredi 18 juillet Ã  21:10', 'en cours', '4 heure', '10000');

-- --------------------------------------------------------

--
-- Structure de la table `employeurs`
--

CREATE TABLE `employeurs` (
  `id_EMP` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `inscription` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `skill` int(11) DEFAULT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `employeurs`
--

INSERT INTO `employeurs` (`id_EMP`, `nom`, `ville`, `email`, `inscription`, `password`, `skill`, `photo`) VALUES
(1, 'mabika', 'Libreville', 'dcs@gmail.com', '23 juillet 2018', '1234', NULL, ''),
(2, 'dougaka', 'Portgentilk', 'daoudoua@gmail.com', '30 Avril 2015', '1234', 1, ''),
(3, 'podrigue', 'Lambaréné', 'Rod@gmail.com', '01 avril 2014', '1234', NULL, ''),
(4, 'hildas', 'Libreville', 'bbbb@gmail.com', '09 07 2018', '1234', 1, ''),
(5, 'toto', 'Moila', 'toto@gmail.com', '', '1234', NULL, ''),
(16, 'Luck', 'Akanda', 'yahanthony@gmail.com', 'dimanche 15 juillet Ã  00:12', '1234', 1, 'http://localhost/myfreelancer/src/avatars/12-54-03amblob.png');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `Autor` int(11) NOT NULL,
  `idProjet` int(11) NOT NULL,
  `idFree` int(11) NOT NULL,
  `dates` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `notifications`
--

INSERT INTO `notifications` (`id`, `Autor`, `idProjet`, `idFree`, `dates`) VALUES
(1, 16, 28, 5, 'jeudi 19 juillet Ã  00:36'),
(2, 16, 23, 5, 'jeudi 19 juillet Ã  00:39'),
(3, 16, 23, 52, 'jeudi 19 juillet Ã  23:10');

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Auteur` int(25) DEFAULT NULL,
  `dates` text NOT NULL,
  `budget` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `categorie` int(11) NOT NULL,
  `devis` int(11) NOT NULL,
  `description` text NOT NULL,
  `relatif` varchar(255) NOT NULL,
  `etat` int(11) DEFAULT '0',
  `file` text,
  `competences` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `projets`
--

INSERT INTO `projets` (`id`, `titre`, `Auteur`, `dates`, `budget`, `type`, `categorie`, `devis`, `description`, `relatif`, `etat`, `file`, `competences`) VALUES
(1, 'Developper app Android', 1, '03-02-15', '5000', 'Distance', 1, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo     consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse     cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non     proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-02-10 16:26:51', 0, '', 'Active Directory,AgrÃ©culture,AJAX,Allemand'),
(3, 'Creer un site web E-commerce', 5, '09-03-18', '2000', 'sur place', 18, 18, 'adipisicing elit, sed do eiusmod     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo     consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse     cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non     proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-02-10 16:26:51', 0, '', 'Active Directory,AgrÃ©culture,AJAX,Allemand'),
(7, 'Cherche developpeur Scala', 5, '09-03-20', '1000', 'sur place', 33, 3, 'adipisicing elit, sed do eiusmod     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo     consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse     cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non     proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-02-10 16:26:51', 0, '', 'Active Directory,AgrÃ©culture,AJAX,Allemand'),
(4, 'Mettre en place une API', 4, '15-10-18', '25000', 'Distance', 45, 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo     consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse     cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non     proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-02-10 16:26:51', 0, '', 'Active Directory,AgrÃ©culture,AJAX,Allemand'),
(5, 'Charge de clientele', 3, 'mars 20 2018', '10 000', 'distance', 8, 8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo     consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse     cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non     proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-02-10 16:26:51', 0, '', 'Active Directory,AgrÃ©culture,AJAX,Allemand'),
(6, 'App Hybride', 5, 'Jeu 20 11', '20 000', 'sur place', 5, 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo     consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse     cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non     proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-02-10 16:26:51', 0, '', 'Active Directory,AgrÃ©culture,AJAX,Allemand'),
(8, 'Femme de menage', 5, '15-03-20', '2000', 'sur place', 6, 6, 'adipisicing elit, sed do eiusmod     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo     consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse     cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non     proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-02-10 16:26:51', 0, '', 'Active Directory,AgrÃ©culture,AJAX,Allemand'),
(9, 'Reparteur telephone', 5, '25-23-20', '5000', 'sur place', 12, 1, 'adipisicing elit, sed do eiusmod     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo     consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse     cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non     proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-02-10 16:26:51', 0, '', 'Active Directory,AgrÃ©culture,AJAX,Allemand'),
(11, 'Ventes de parfums', 1, '10-23-20', '3000', 'sur place', 35, 3, 'blabla', '2018-02-10 16:26:51', 0, '', 'Active Directory,AgrÃ©culture,AJAX,Allemand'),
(23, 'SUPER PROJET', 16, '10-23-20', '1000', 'sur place', 7, 1, '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', '2018-07-15 15:46:37', 1, '', 'Active Directory,AgrÃ©culture,AJAX,Allemand'),
(28, 'Médecin sans Frontière', 16, 'mercredi 18 juillet Ã  20:37', '1000', 'Sur place', 2, 1, '<p>tgrgrt</p>', '2018-07-18 20:37:32', 2, '', 'AgrÃ©culture,Administration de serveurs,Allemand');

-- --------------------------------------------------------

--
-- Structure de la table `projets-postule`
--

CREATE TABLE `projets-postule` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `ID_proj` int(11) NOT NULL,
  `datesPub` varchar(255) NOT NULL,
  `etat` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `projets-postule`
--

INSERT INTO `projets-postule` (`id`, `user`, `ID_proj`, `datesPub`, `etat`) VALUES
(4, 2, 2, '2018-02-10 16:26:51', 'tyutyu');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` text,
  `specialite` text,
  `inscription` varchar(255) DEFAULT NULL,
  `evaluation` int(11) DEFAULT NULL,
  `password` text,
  `skill` int(11) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `prix` varchar(255) DEFAULT NULL,
  `categorie` text,
  `apropos` text,
  `experience` int(11) DEFAULT NULL,
  `metier` varchar(255) DEFAULT NULL,
  `dispo` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `email`, `photo`, `specialite`, `inscription`, `evaluation`, `password`, `skill`, `ville`, `percent`, `prix`, `categorie`, `apropos`, `experience`, `metier`, `dispo`) VALUES
(1, 'Mitashi Anthony', 'er@g', 'http://localhost/myfreelancer/src/avatars/12-53-04amblob.png', 'AgrÃ©culture,Ã‰lectricitÃ©', '23 juin 2018', 5, '1234', 1, 'Akanda', 100, '15000 Fcfa /jour', '4', '<p>szdz</p>', 4, 'Infomaticien', 1),
(2, 'Dina', 'diana@gmail.com', 'http://localhost/myfreelancer/src/avatars/12-47-22amblob.png', 'Developpement, Photoshop, WebDesign, Cordova', '20 Avril 2012', 2, '1234', 1, 'Libreville', NULL, '15000 Fcfa /jour', '1', '', 0, 'Developpeur', 0),
(3, 'Molly', 'molly@gmail.com', 'http://localhost/myfreelancer/src/avatars/IMG.jpg', 'Developpement, Photoshop, WebDesign, Cordova', '13 Aout 2017', 3, '1234', 1, 'Mouila', NULL, '15000 Fcfa /jour', '5', '', 0, 'Developpeur', 1),
(4, 'Dona', 'Dona@gmail.com', 'http://localhost/myfreelancer/src/avatars/me.jpg', 'Developpement, Photoshop, WebDesign, Cordova', '05 Mai 2011', 1, '1234', NULL, 'Lambaréné', NULL, '15000 Fcfa /jour', '10', '', 0, 'Developpeur', 0),
(5, 'Martial', 'Martial@gmail.com', 'http://localhost/myfreelancer/src/avatars/molly.png', 'Developpement, Photoshop, WebDesign, Cordova', '05 Mai 2010', 6, '', NULL, 'Bouée', NULL, '15000 Fcfa /jour', '8', '', 0, 'Developpeur', 0),
(49, 'Rodrigue', 'rodrigue@gmail.com', NULL, NULL, 'mercredi 04 juillet Ã  19:58', 0, '1234', NULL, 'Ndjolé', NULL, '15000 Fcfa /jour', '4', '', 0, 'Developpeur', 0),
(42, 'Rodriguez', 'rodriguez@gmail.com', NULL, NULL, 'dimanche 01 juillet Ã  16:45', 0, '1234', NULL, 'Franceville', NULL, '15000 Fcfa /jour', '70', '', 0, 'Developpeur', 0),
(50, 'trty', 'rty@gmaol', 'http://localhost/myfreelancer/src/avatars/default.png', NULL, 'dimanche 08 juillet Ã  21:05', 0, '1235', NULL, 'Port-Gentil', NULL, NULL, '11', NULL, NULL, NULL, NULL),
(51, 'popo', 'pop@g', 'http://localhost/myfreelancer/src/avatars/default.png', NULL, 'dimanche 08 juillet Ã  21:07', 0, '1234', NULL, 'Mayoumba', NULL, NULL, '20', NULL, NULL, NULL, NULL),
(52, 'Tom Saywer', 'sawyer@gmail.fr', 'http://localhost/myfreelancer/src/avatars/09-25-59pmblob.png', 'Active Directory,Agronomie,AgrÃ©culture,AJAX', 'vendredi 13 juillet Ã  21:14', 3, '1234', 1, 'Libreville', 100, '2000 Fcfa /heure', '1', '<p>Je suis cool et <strong>sympas, i am a </strong><a href="https://www.malt.fr" target="_blank"><strong>boos</strong></a></p>', 3, 'Marketeur', NULL),
(53, 'danile', 'dan@gg.fr', 'http://localhost/myfreelancer/src/avatars/default.png', NULL, 'dimanche 15 juillet Ã  20:59', 0, '1234', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'User5', 'user@gmail', 'http://localhost/myfreelancer/src/avatars/01-01-30amblob.png', 'Agronomie,Active Directory,AgrÃ©culture', 'vendredi 20 juillet Ã  01:00', NULL, '1234', NULL, 'Libreville', 50, '5000 Fcfa /heure', '3', '<p>zedzed</p>', 3, 'Marketeur', NULL),
(55, 'samson', 'sam@gmail.com', 'http://localhost/myfreelancer/src/avatars/01-06-44amblob.png', 'Administration de serveurs,Active Directory,AJAX', 'vendredi 20 juillet Ã  01:06', NULL, '1234', 1, 'BoouÃ©', 100, '10000 Fcfa /heure', '5', '<p>rfefer</p>', 3, 'MÃ©decin sans FrontiÃ¨re', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ids`);

--
-- Index pour la table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `devis`
--
ALTER TABLE `devis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `employeurs`
--
ALTER TABLE `employeurs`
  ADD PRIMARY KEY (`id_EMP`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projets-postule`
--
ALTER TABLE `projets-postule`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT pour la table `competences`
--
ALTER TABLE `competences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;
--
-- AUTO_INCREMENT pour la table `devis`
--
ALTER TABLE `devis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `employeurs`
--
ALTER TABLE `employeurs`
  MODIFY `id_EMP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `projets-postule`
--
ALTER TABLE `projets-postule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
