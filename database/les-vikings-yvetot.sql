-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 17 sep. 2022 à 16:27
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `les-vikings-yvetot`
--

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingscommentmeta`
--

CREATE TABLE `wpvikingscommentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingscomments`
--

CREATE TABLE `wpvikingscomments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingslinks`
--

CREATE TABLE `wpvikingslinks` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsnextend2_image_storage`
--

CREATE TABLE `wpvikingsnextend2_image_storage` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpvikingsnextend2_image_storage`
--

INSERT INTO `wpvikingsnextend2_image_storage` (`id`, `hash`, `image`, `value`) VALUES
(1, '37ea3062defc3831a9b357da81881546', '$upload$/slider3/imageslider-background2.jpeg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(2, '75031acb3373697968656613f342f27a', '$upload$/slider3/imageslider-background1.jpeg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(3, '37ac00665e0dbee550312097c2324fc9', '$upload$/slider3/imageslider-background3.jpeg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(4, '867211fc29bdd2a67e9f3f84e718eeee', '$upload$/2020/09/13.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(5, 'fb9bef44ed3964516a99dbd84948b4d9', '$upload$/2020/09/14.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(6, 'bb6a9fdced3d0fd42dddd623982d9b5b', '$upload$/2020/09/12.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(7, '8a8c93438cedce58ee438362fe7646f9', '$upload$/2020/09/9.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(8, 'd4fb6259b30fa072d05dfae844937baa', '$upload$/2020/09/10.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(9, 'ce3bdf51bf4fef41f5abceb5a2021820', '$upload$/2020/09/11.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(10, '493ea3e85165d1765ee75af5832d916f', '$upload$/2020/09/7.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(11, '245383cc8777521b2c73fbc6241b57e3', '$upload$/2020/09/8.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(12, 'ec2a666d900f66241af8160eb96740c1', '$upload$/2020/09/5.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(13, 'c18e4e2b5609eea29907fb95f5238ad6', '$upload$/2020/09/6.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ==');

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsnextend2_section_storage`
--

CREATE TABLE `wpvikingsnextend2_section_storage` (
  `id` int(11) NOT NULL,
  `application` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referencekey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `system` int(11) NOT NULL DEFAULT 0,
  `editable` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpvikingsnextend2_section_storage`
--

INSERT INTO `wpvikingsnextend2_section_storage` (`id`, `application`, `section`, `referencekey`, `value`, `system`, `editable`) VALUES
(10000, 'smartslider', 'settings', '', '{\"n2_ss3_version\":\"3.5.0.9\\/b:release-3.5.0.9\\/r:569f102c8f61911b73874a859b245fe446ead99b\"}', 0, 1),
(10001, 'smartslider', 'tutorial', 'GettingStarted', '1', 0, 1),
(10004, 'smartslider', 'free', 'dismissNewsletterSampleSliders', '1', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsnextend2_smartslider3_generators`
--

CREATE TABLE `wpvikingsnextend2_smartslider3_generators` (
  `id` int(11) NOT NULL,
  `group` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsnextend2_smartslider3_sliders`
--

CREATE TABLE `wpvikingsnextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `time` datetime NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpvikingsnextend2_smartslider3_sliders`
--

INSERT INTO `wpvikingsnextend2_smartslider3_sliders` (`id`, `alias`, `title`, `type`, `params`, `status`, `time`, `thumbnail`, `ordering`) VALUES
(3, NULL, 'Espace professionnel', 'simple', '{\"aria-label\":\"Slider\",\"alias-id\":\"\",\"alias-smoothscroll\":\"\",\"alias-slideswitch\":\"\",\"alias-slideswitch-scroll\":\"1\",\"align\":\"center\",\"margin\":\"0|*|0|*|0|*|0\",\"width\":\"1200\",\"height\":\"600\",\"responsiveLimitSlideWidth\":\"0\",\"responsiveSlideWidth\":\"0\",\"responsiveSlideWidthMax\":\"3000\",\"responsiveSlideWidthTablet\":\"0\",\"responsiveSlideWidthMaxTablet\":\"3000\",\"responsiveSlideWidthMobile\":\"0\",\"responsiveSlideWidthMaxMobile\":\"480\",\"responsive-breakpoint-tablet-portrait\":\"1199\",\"responsive-breakpoint-tablet-portrait-landscape\":\"1199\",\"responsive-breakpoint-mobile-portrait\":\"700\",\"responsive-breakpoint-mobile-portrait-landscape\":\"900\",\"responsive-breakpoint-tablet-portrait-enabled\":\"1\",\"responsive-breakpoint-mobile-portrait-enabled\":\"1\",\"responsive-breakpoint-global\":\"0\",\"breakpoints-orientation\":\"portrait\",\"responsive-mode\":\"auto\",\"responsiveScaleDown\":\"1\",\"responsiveScaleUp\":\"0\",\"responsiveSliderHeightMin\":\"0\",\"controlsTouch\":\"horizontal\",\"controlsScroll\":\"0\",\"controlsKeyboard\":\"1\",\"widget-arrow-enabled\":\"1\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-previous\":\"thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"1\",\"widget-arrow-previous-hover-color\":\"ffffffff\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widget-arrow-base64\":\"1\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-display-mobileportrait\":\"1\",\"widget-arrow-display-tabletportrait\":\"1\",\"widget-arrow-display-desktopportrait\":\"1\",\"widget-bullet-enabled\":\"1\",\"widgetbullet\":\"transition\",\"widget-bullet-position-area\":\"10\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-style\":\"{\\\"name\\\":\\\"Static\\\",\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"ffffff80\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"5|*|5|*|5|*|5|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"50\\\",\\\"extra\\\":\\\"margin: 4px;\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffcc\\\"}]}\",\"widget-bullet-bar\":\"\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"100\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"{\\\"name\\\":\\\"Static\\\",\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000080\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"margin: 5px;background-size:cover;\\\"}]}\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-display-mobileportrait\":\"1\",\"widget-bullet-display-tabletportrait\":\"1\",\"widget-bullet-display-desktopportrait\":\"1\",\"widget-bar-enabled\":\"0\",\"widgetbar\":\"horizontal\",\"widget-bar-position-area\":\"10\",\"widget-bar-position-stack\":\"1\",\"widget-bar-position-offset\":\"30\",\"widget-bar-animate\":\"0\",\"widget-bar-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"5|*|20|*|5|*|20|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"40\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-bar-show-title\":\"1\",\"widget-bar-font-title\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http:\\/\\/fonts.googleapis.com\\/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-show-description\":\"1\",\"widget-bar-font-description\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":1,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http:\\/\\/fonts.googleapis.com\\/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-slide-count\":\"0\",\"widget-bar-full-width\":\"0\",\"widget-bar-separator\":\" - \",\"widget-bar-align\":\"center\",\"widget-bar-display-hover\":\"0\",\"widget-bar-display-mobileportrait\":\"1\",\"widget-bar-display-tabletportrait\":\"1\",\"widget-bar-display-desktopportrait\":\"1\",\"widget-thumbnail-enabled\":\"0\",\"widgetthumbnail\":\"default\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widget-thumbnail-position-area\":\"12\",\"widget-thumbnail-position-stack\":\"1\",\"widget-thumbnail-position-offset\":\"0\",\"widget-thumbnail-align-content\":\"start\",\"widget-thumbnail-style-bar\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"242424ff\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-style-slides\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"padding\\\":\\\"0|*|0|*|0|*|0|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|ffffff00\\\",\\\"borderradius\\\":\\\"0\\\",\\\"opacity\\\":\\\"40\\\",\\\"extra\\\":\\\"margin: 3px;\\\\ntransition: all 0.4s;\\\\nbackground-size: cover;\\\"},{\\\"border\\\":\\\"0|*|solid|*|ffffffcc\\\",\\\"opacity\\\":\\\"100\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-title-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"3|*|10|*|3|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"bottom: 0;\\\\nleft: 0;\\\"}]}\",\"widget-thumbnail-title\":\"0\",\"widget-thumbnail-title-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http:\\/\\/fonts.googleapis.com\\/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-description\":\"0\",\"widget-thumbnail-description-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http:\\/\\/fonts.googleapis.com\\/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-caption-placement\":\"overlay\",\"widget-thumbnail-caption-size\":\"100\",\"widget-thumbnail-minimum-thumbnail-count\":\"2\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-display-mobileportrait\":\"1\",\"widget-thumbnail-display-tabletportrait\":\"1\",\"widget-thumbnail-display-desktopportrait\":\"1\",\"widget-shadow-enabled\":\"0\",\"widgetshadow\":\"shadow\",\"widget-shadow-shadow\":\"dark.png\",\"widget-shadow-display-mobileportrait\":\"1\",\"widget-shadow-display-tabletportrait\":\"1\",\"widget-shadow-display-desktopportrait\":\"1\",\"animation\":\"horizontal\",\"animation-duration\":\"800\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"normal\",\"autoplay\":\"0\",\"autoplayDuration\":\"8000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"widget-autoplay-enabled\":\"0\",\"widgetautoplay\":\"image\",\"widget-autoplay-play\":\"small-light.svg\",\"widget-autoplay-play-color\":\"ffffffcc\",\"widget-autoplay-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"10|*|10|*|10|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"\\\"},{\\\"backgroundcolor\\\":\\\"000000ab\\\"}]}\",\"widget-autoplay-position-area\":\"4\",\"widget-autoplay-position-stack\":\"1\",\"widget-autoplay-position-offset\":\"15\",\"widget-autoplay-display-hover\":\"0\",\"widget-autoplay-display-mobileportrait\":\"1\",\"widget-autoplay-display-tabletportrait\":\"1\",\"widget-autoplay-display-desktopportrait\":\"1\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"loading-type\":\"\",\"delay\":\"0\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"is-delayed\":\"0\",\"backgroundMode\":\"fill\",\"clear-both\":\"1\",\"clear-both-after\":\"1\",\"overflow-hidden-page\":\"0\",\"responsiveFocusUser\":\"1\",\"responsiveFocusEdge\":\"auto\",\"classes\":\"\",\"custom-css-codes\":\"\",\"callbacks\":\"\",\"related-posts\":\"\"}', 'published', '2020-09-30 11:43:44', '$upload$/2020/09/8.jpg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsnextend2_smartslider3_sliders_xref`
--

CREATE TABLE `wpvikingsnextend2_smartslider3_sliders_xref` (
  `group_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpvikingsnextend2_smartslider3_sliders_xref`
--

INSERT INTO `wpvikingsnextend2_smartslider3_sliders_xref` (`group_id`, `slider_id`, `ordering`) VALUES
(0, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsnextend2_smartslider3_slides`
--

CREATE TABLE `wpvikingsnextend2_smartslider3_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpvikingsnextend2_smartslider3_slides`
--

INSERT INTO `wpvikingsnextend2_smartslider3_slides` (`id`, `title`, `slider`, `publish_up`, `publish_down`, `published`, `first`, `slide`, `description`, `thumbnail`, `params`, `ordering`, `generator_id`) VALUES
(6, '1', 3, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"flex-end\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|50|*|50|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|10|*|30|*|30|*|px+\",\"mobileportraitinneralign\":\"center\",\"mobileportraitpadding\":\"120|*|10|*|40|*|10|*|px+\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-1beb93a18130d\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":1,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[]}]', '', '$upload$/2020/09/13.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"0|*|0|*|0|*|0\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2020/09/13.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"slide 1\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.1.9\"}', 0, 0),
(7, '2', 3, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 1, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"flex-end\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|50|*|50|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|10|*|30|*|30|*|px+\",\"mobileportraitinneralign\":\"center\",\"mobileportraitpadding\":\"120|*|10|*|40|*|10|*|px+\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-1ac6423bc1692\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":1,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[]}]', '', '$upload$/2020/09/14.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"0|*|0|*|0|*|0\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2020/09/14.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.1.9\"}', 1, 0),
(8, '3', 3, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"flex-end\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|50|*|50|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|10|*|30|*|30|*|px+\",\"mobileportraitfontsize\":60,\"mobileportraitinneralign\":\"center\",\"mobileportraitpadding\":\"120|*|10|*|40|*|10|*|px+\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-149c70d29868d\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":1,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[]}]', '', '$upload$/2020/09/12.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"0|*|0|*|0|*|0\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2020/09/12.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.1.9\"}', 2, 0),
(9, '4', 3, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"flex-end\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|50|*|50|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|10|*|30|*|30|*|px+\",\"mobileportraitfontsize\":60,\"mobileportraitinneralign\":\"center\",\"mobileportraitpadding\":\"120|*|10|*|40|*|10|*|px+\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-QwHas5gd7ub3\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":1,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[]}]', '', '$upload$/2020/09/9.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"0|*|0|*|0|*|0\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2020/09/9.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.1.9\"}', 2, 0),
(10, '5', 3, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"flex-end\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|50|*|50|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|10|*|30|*|30|*|px+\",\"mobileportraitfontsize\":60,\"mobileportraitinneralign\":\"center\",\"mobileportraitpadding\":\"120|*|10|*|40|*|10|*|px+\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-lICd6eOYYd3z\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":1,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[]}]', '', '$upload$/2020/09/10.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"0|*|0|*|0|*|0\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2020/09/10.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.1.9\"}', 2, 0),
(11, '6', 3, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"flex-end\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|50|*|50|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|10|*|30|*|30|*|px+\",\"mobileportraitfontsize\":60,\"mobileportraitinneralign\":\"center\",\"mobileportraitpadding\":\"120|*|10|*|40|*|10|*|px+\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-sMtWJC931yBN\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":1,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[]}]', '', '$upload$/2020/09/11.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"0|*|0|*|0|*|0\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2020/09/11.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.1.9\"}', 2, 0),
(12, '7', 3, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"flex-end\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|50|*|50|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|10|*|30|*|30|*|px+\",\"mobileportraitfontsize\":60,\"mobileportraitinneralign\":\"center\",\"mobileportraitpadding\":\"120|*|10|*|40|*|10|*|px+\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-AzrrxA5N9ZwW\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":1,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[]}]', '', '$upload$/2020/09/7.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"0|*|0|*|0|*|0\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2020/09/7.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.1.9\"}', 2, 0),
(13, '8', 3, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"flex-end\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|50|*|50|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|10|*|30|*|30|*|px+\",\"mobileportraitfontsize\":60,\"mobileportraitinneralign\":\"center\",\"mobileportraitpadding\":\"120|*|10|*|40|*|10|*|px+\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-8Tbgnb2C0BOO\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":1,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[]}]', '', '$upload$/2020/09/8.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"0|*|0|*|0|*|0\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2020/09/8.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.1.9\"}', 2, 0),
(14, '9', 3, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"flex-end\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|50|*|50|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|10|*|30|*|30|*|px+\",\"mobileportraitfontsize\":60,\"mobileportraitinneralign\":\"center\",\"mobileportraitpadding\":\"120|*|10|*|40|*|10|*|px+\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-MCwMhliap3XE\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":1,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[]}]', '', '$upload$/2020/09/5.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"0|*|0|*|0|*|0\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2020/09/5.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.1.9\"}', 2, 0),
(15, '10', 3, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"flex-end\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|50|*|50|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|10|*|30|*|30|*|px+\",\"mobileportraitfontsize\":60,\"mobileportraitinneralign\":\"center\",\"mobileportraitpadding\":\"120|*|10|*|40|*|10|*|px+\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-yzndcZxoklQ2\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":1,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[]}]', '', '$upload$/2020/09/6.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"0|*|0|*|0|*|0\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"adaptivefont\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2020/09/6.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.1.9\"}', 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsoptions`
--

CREATE TABLE `wpvikingsoptions` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpvikingsoptions`
--

INSERT INTO `wpvikingsoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/lesvikings-yvetot', 'yes'),
(2, 'home', 'http://localhost/lesvikings-yvetot', 'yes'),
(3, 'blogname', 'Les Vikings', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nicoladufresne@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'j F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:138:{s:13:\"spectacles/?$\";s:30:\"index.php?post_type=spectacles\";s:43:\"spectacles/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=spectacles&feed=$matches[1]\";s:38:\"spectacles/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=spectacles&feed=$matches[1]\";s:30:\"spectacles/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=spectacles&paged=$matches[1]\";s:13:\"importants/?$\";s:29:\"index.php?post_type=important\";s:43:\"importants/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=important&feed=$matches[1]\";s:38:\"importants/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=important&feed=$matches[1]\";s:30:\"importants/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=important&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:38:\"spectacles/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"spectacles/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"spectacles/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"spectacles/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"spectacles/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"spectacles/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"spectacles/([^/]+)/embed/?$\";s:43:\"index.php?spectacles=$matches[1]&embed=true\";s:31:\"spectacles/([^/]+)/trackback/?$\";s:37:\"index.php?spectacles=$matches[1]&tb=1\";s:51:\"spectacles/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?spectacles=$matches[1]&feed=$matches[2]\";s:46:\"spectacles/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?spectacles=$matches[1]&feed=$matches[2]\";s:39:\"spectacles/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?spectacles=$matches[1]&paged=$matches[2]\";s:46:\"spectacles/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?spectacles=$matches[1]&cpage=$matches[2]\";s:35:\"spectacles/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?spectacles=$matches[1]&page=$matches[2]\";s:27:\"spectacles/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"spectacles/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"spectacles/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"spectacles/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"spectacles/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"spectacles/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"important/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"important/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"important/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"important/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"important/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"important/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"important/([^/]+)/embed/?$\";s:42:\"index.php?important=$matches[1]&embed=true\";s:30:\"important/([^/]+)/trackback/?$\";s:36:\"index.php?important=$matches[1]&tb=1\";s:50:\"important/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?important=$matches[1]&feed=$matches[2]\";s:45:\"important/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?important=$matches[1]&feed=$matches[2]\";s:38:\"important/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?important=$matches[1]&paged=$matches[2]\";s:45:\"important/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?important=$matches[1]&cpage=$matches[2]\";s:34:\"important/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?important=$matches[1]&page=$matches[2]\";s:26:\"important/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"important/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"important/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"important/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"important/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"important/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:33:\"smart-slider-3/smart-slider-3.php\";i:1;s:27:\"wp-optimize/wp-optimize.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:72:\"C:\\xampp\\htdocs\\lesvikings-yvetot/wp-content/themes/lesvikings/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'lesvikings', 'yes'),
(41, 'stylesheet', 'lesvikings', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:27:\"wp-optimize/wp-optimize.php\";s:21:\"wpo_uninstall_actions\";}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '6', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '148', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1647535007', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wpvikingsuser_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'fr_FR', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"smartslider_area_1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:12:{i:1663428064;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1663442464;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1663485664;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663485731;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663485732;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663486523;a:1:{s:22:\"delete_expired_coupons\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663495994;a:1:{s:28:\"wp_statistics_add_visit_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663502432;a:1:{s:26:\"wpo_minify_purge_old_cache\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663502433;a:1:{s:29:\"wpo_smush_clear_backup_images\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663831264;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1663855232;a:1:{s:21:\"wpo_weekly_cron_tasks\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601450965;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(148, 'current_theme', 'lesvikings', 'yes'),
(149, 'theme_mods_lesvikings', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(158, 'recently_activated', 'a:2:{s:31:\"wp-statistics/wp-statistics.php\";i:1603188886;s:31:\"media-cleaner/media-cleaner.php\";i:1602763163;}', 'yes'),
(165, 'n2_ss3_version', '3.5.0.9/b:release-3.5.0.9/r:569f102c8f61911b73874a859b245fe446ead99b', 'yes'),
(166, 'widget_smartslider3', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'recovery_mode_email_last_sent', '1602667501', 'yes'),
(179, 'category_children', 'a:0:{}', 'yes'),
(206, 'acf_version', '5.9.1', 'yes'),
(214, '_transient_health-check-site-status-result', '{\"good\":10,\"recommended\":10,\"critical\":0}', 'yes'),
(254, 'new_admin_email', 'nicoladufresne@gmail.com', 'yes'),
(333, 'wpmc_rating_date', '1611601198', 'no'),
(339, 'wp-optimize-schedule', 'false', 'yes'),
(340, 'wp-optimize-last-optimized', 'Never', 'yes'),
(341, 'wp-optimize-schedule-type', 'wpo_weekly', 'yes'),
(342, 'wp-optimize-retention-enabled', 'false', 'yes'),
(343, 'wp-optimize-retention-period', '2', 'yes'),
(344, 'wp-optimize-enable-admin-menu', 'false', 'yes'),
(345, 'wp-optimize-total-cleaned', '0', 'yes'),
(346, 'wp-optimize-auto', 'a:7:{s:6:\"drafts\";s:4:\"true\";s:8:\"optimize\";s:5:\"false\";s:9:\"revisions\";s:4:\"true\";s:5:\"spams\";s:4:\"true\";s:9:\"transient\";s:5:\"false\";s:5:\"trash\";s:4:\"true\";s:10:\"unapproved\";s:5:\"false\";}', 'yes'),
(347, 'wp-optimize-settings', 'a:13:{s:11:\"user-drafts\";s:4:\"true\";s:16:\"user-commentmeta\";s:5:\"false\";s:13:\"user-optimize\";s:4:\"true\";s:15:\"user-orphandata\";s:5:\"false\";s:14:\"user-pingbacks\";s:5:\"false\";s:13:\"user-postmeta\";s:5:\"false\";s:14:\"user-revisions\";s:4:\"true\";s:10:\"user-spams\";s:4:\"true\";s:15:\"user-trackbacks\";s:5:\"false\";s:14:\"user-transient\";s:5:\"false\";s:10:\"user-trash\";s:4:\"true\";s:15:\"user-unapproved\";s:4:\"true\";s:13:\"last_saved_in\";s:5:\"3.1.4\";}', 'yes'),
(348, 'wpo_minify_config', 'a:49:{s:5:\"debug\";b:0;s:19:\"enabled_css_preload\";b:0;s:18:\"enabled_js_preload\";b:0;s:11:\"hpreconnect\";s:0:\"\";s:8:\"hpreload\";s:0:\"\";s:7:\"loadcss\";b:0;s:10:\"remove_css\";b:0;s:17:\"critical_path_css\";s:0:\"\";s:31:\"critical_path_css_is_front_page\";s:0:\"\";s:30:\"preserve_settings_on_uninstall\";b:1;s:22:\"disable_when_logged_in\";b:0;s:16:\"default_protocol\";s:7:\"dynamic\";s:17:\"html_minification\";b:1;s:16:\"clean_header_one\";b:0;s:13:\"emoji_removal\";b:1;s:18:\"merge_google_fonts\";b:1;s:19:\"enable_display_swap\";b:1;s:18:\"remove_googlefonts\";b:0;s:13:\"gfonts_method\";s:6:\"inline\";s:15:\"fawesome_method\";s:6:\"inline\";s:10:\"enable_css\";b:1;s:23:\"enable_css_minification\";b:1;s:21:\"enable_merging_of_css\";b:1;s:23:\"remove_print_mediatypes\";b:0;s:10:\"inline_css\";b:0;s:9:\"enable_js\";b:1;s:22:\"enable_js_minification\";b:1;s:20:\"enable_merging_of_js\";b:1;s:15:\"enable_defer_js\";s:10:\"individual\";s:13:\"defer_js_type\";s:5:\"defer\";s:12:\"defer_jquery\";b:1;s:18:\"enable_js_trycatch\";b:0;s:19:\"exclude_defer_login\";b:1;s:7:\"cdn_url\";s:0:\"\";s:9:\"cdn_force\";b:0;s:9:\"async_css\";s:0:\"\";s:8:\"async_js\";s:0:\"\";s:24:\"disable_css_inline_merge\";b:1;s:6:\"ualist\";a:8:{i:0;s:12:\"x11.*fox\\/54\";i:1;s:20:\"oid\\s4.*xus.*ome\\/62\";i:2;s:12:\"x11.*ome\\/62\";i:3;s:5:\"oobot\";i:4;s:5:\"ighth\";i:5;s:5:\"tmetr\";i:6;s:6:\"eadles\";i:7;s:5:\"ingdo\";}s:9:\"blacklist\";a:0:{}s:11:\"ignore_list\";a:0:{}s:10:\"exclude_js\";s:0:\"\";s:11:\"exclude_css\";s:0:\"\";s:23:\"edit_default_exclutions\";b:0;s:18:\"merge_allowed_urls\";s:0:\"\";s:7:\"enabled\";b:0;s:17:\"last-cache-update\";i:1623405427;s:14:\"plugin_version\";s:5:\"0.0.0\";s:14:\"cache_lifespan\";i:30;}', 'yes'),
(349, 'updraft_task_manager_dbversion', '1.1', 'yes'),
(350, 'wpo_update_version', '3.1.11', 'yes'),
(354, 'updraft_unlocked_wpo_cache_preloader_creating_tasks', '1', 'no'),
(355, 'updraft_last_lock_time_wpo_cache_preloader_creating_tasks', '2020-10-15 12:09:36', 'no'),
(356, 'updraft_semaphore_wpo_cache_preloader_creating_tasks', '0', 'no'),
(359, 'wp-optimize-corrupted-tables-count', '0', 'yes'),
(362, 'wp-optimize-install-or-update-notice-version', '1.1', 'yes'),
(363, 'wp-optimize-enable-auto-backup', 'false', 'yes'),
(368, 'Re_Smush_It_Task', '1602763632', 'yes'),
(376, 'wp-optimize-completed_task_count', '10', 'yes'),
(377, 'wp-optimize-total_bytes_saved', '0', 'yes'),
(378, 'wp-optimize-total_percent_saved', '0', 'yes'),
(391, 'wp-optimize-failed_task_count', '0', 'yes'),
(399, 'wpo_cache_config', 'a:16:{s:19:\"enable_page_caching\";b:1;s:23:\"page_cache_length_value\";i:24;s:22:\"page_cache_length_unit\";s:5:\"hours\";s:17:\"page_cache_length\";i:86400;s:20:\"cache_exception_urls\";a:1:{i:0;s:0:\"\";}s:23:\"cache_exception_cookies\";a:1:{i:0;s:0:\"\";}s:30:\"cache_exception_browser_agents\";a:1:{i:0;s:0:\"\";}s:22:\"enable_sitemap_preload\";b:0;s:23:\"enable_schedule_preload\";s:1:\"0\";s:21:\"preload_schedule_type\";s:22:\"wpo_use_cache_lifespan\";s:21:\"enable_mobile_caching\";s:1:\"0\";s:19:\"enable_user_caching\";s:1:\"0\";s:8:\"site_url\";s:35:\"http://localhost/lesvikings-yvetot/\";s:24:\"enable_cache_per_country\";b:0;s:17:\"wpo_cache_cookies\";a:0:{}s:25:\"wpo_cache_query_variables\";a:0:{}}', 'yes'),
(400, 'wp-optimize-wpo_last_page_cache_preload_type', 'posts', 'yes'),
(442, 'wp-optimize-wpo_last_page_cache_preload', '1602770472', 'yes'),
(532, 'wp_statistics_plugin_version', '12.6.13', 'yes'),
(533, 'wp_statistics_db_version', '12.6.13', 'yes'),
(534, 'wp_statistics', 'a:28:{s:18:\"pending_db_updates\";a:2:{s:13:\"date_ip_agent\";b:0;s:11:\"unique_date\";b:0;}s:16:\"search_converted\";i:1;s:9:\"robotlist\";s:1715:\"007ac9\n5bot\nA6-Indexer\nAbachoBOT\naccoona\nAcoiRobot\nAddThis.com\nADmantX\nAdsBot-Google\nadvbot\nAhrefsBot\naiHitBot\nalexa\nalphabot\nAltaVista\nAntivirusPro\nanyevent\nappie\nApplebot\narchive.org_bot\nAsk Jeeves\nASPSeek\nBaiduspider\nBenjojo\nBeetleBot\nbingbot\nBlekkobot\nblexbot\nBOT for JCE\nbubing\nButterfly\ncbot\nclamantivirus\ncliqzbot\nclumboot\ncoccoc\ncrawler\nCrocCrawler\ncrowsnest.tv\ndbot\ndl2bot\ndotbot\ndownloadbot\nduckduckgo\nDumbot\nEasouSpider\neStyle\nEveryoneSocialBot\nExabot\nezooms\nfacebook.com\nfacebookexternalhit\nFAST\nFeedfetcher-Google\nfeedzirra\nfindxbot\nFirfly\nFriendFeedBot\nfroogle\nGeonaBot\nGigabot\ngirafabot\ngimme60bot\nglbot\nGooglebot\nGroupHigh\nia_archiver\nIDBot\nInfoSeek\ninktomi\nIstellaBot\njetmon\nKraken\nLeikibot\nlinkapediabot\nlinkdexbot\nLinkpadBot\nLoadTimeBot\nlooksmart\nltx71\nLycos\nMail.RU_Bot\nMe.dium\nmeanpathbot\nmediabot\nmedialbot\nMediapartners-Google\nMJ12bot\nmsnbot\nMojeekBot\nmonobot\nmoreover\nMRBOT\nNationalDirectory\nNerdyBot\nNetcraftSurveyAgent\nniki-bot\nnutch\nOpenbot\nOrangeBot\nowler\np4Bot\nPaperLiBot\npageanalyzer\nPagesInventory\nPimonster\nporkbun\npr-cy\nproximic\npwbot\nr4bot\nrabaz\nRambler\nRankivabot\nrevip\nriddler\nrogerbot\nScooter\nScrubby\nscrapy.org\nSearchmetricsBot\nsees.co\nSemanticBot\nSemrushBot\nSeznamBot\nsfFeedReader\nshareaholic-bot\nsistrix\nSiteExplorer\nSlurp\nSocialradarbot\nSocialSearch\nSogou web spider\nSpade\nspbot\nSpiderLing\nSputnikBot\nSuperfeedr\nSurveyBot\nTechnoratiSnoop\nTECNOSEEK\nTeoma\ntrendictionbot\nTweetmemeBot\nTwiceler\nTwitterbot\nTwitturls\nu2bot\nuMBot-LN\nuni5download\nunrulymedia\nUptimeRobot\nURL_Spider_SQL\nVagabondo\nvBSEO\nWASALive-Bot\nWebAlta Crawler\nWebBug\nWebFindBot\nWebMasterAid\nWeSEE\nWotbox\nwsowner\nwsr-agent\nwww.galaxy.com\nx100bot\nXoviBot\nxzybot\nyandex\nYahoo\nYammybot\nYoudaoBot\nZyBorg\nZemlyaCrawl\";s:13:\"anonymize_ips\";b:0;s:5:\"geoip\";b:0;s:10:\"useronline\";b:1;s:6:\"visits\";b:1;s:8:\"visitors\";b:1;s:5:\"pages\";b:1;s:12:\"check_online\";s:3:\"120\";s:8:\"menu_bar\";b:0;s:11:\"coefficient\";s:1:\"1\";s:12:\"stats_report\";b:0;s:11:\"time_report\";s:5:\"daily\";s:11:\"send_report\";s:4:\"mail\";s:14:\"content_report\";s:0:\"\";s:12:\"update_geoip\";b:1;s:8:\"store_ua\";b:0;s:21:\"exclude_administrator\";b:1;s:18:\"disable_se_clearch\";b:1;s:16:\"disable_se_qwant\";b:1;s:16:\"disable_se_baidu\";b:1;s:14:\"disable_se_ask\";b:1;s:8:\"map_type\";s:6:\"jqvmap\";s:9:\"ip_method\";s:11:\"REMOTE_ADDR\";s:18:\"force_robot_update\";b:1;s:17:\"show_welcome_page\";b:0;s:23:\"first_show_welcome_page\";b:1;}', 'yes'),
(535, 'widget_wp_statistics_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(536, 'wp_statistics_check_useronline', '1603196082', 'yes'),
(537, 'wp_statistics_overview_page_ads', 'a:3:{s:9:\"timestamp\";i:1603195966;s:3:\"ads\";a:6:{s:2:\"ID\";s:6:\"wp-sms\";s:5:\"title\";s:6:\"WP-SMS\";s:4:\"link\";s:22:\"https://bit.ly/30yWb8H\";s:5:\"image\";s:22:\"https://bit.ly/2LLePqv\";s:7:\"_target\";s:3:\"yes\";s:6:\"status\";s:3:\"yes\";}s:4:\"view\";s:0:\"\";}', 'no'),
(540, 'wp_statistics_referrals_detail', 'a:1:{s:9:\"localhost\";a:3:{s:2:\"ip\";s:9:\"127.0.0.1\";s:7:\"country\";s:0:\"\";s:5:\"title\";s:10:\"Index of /\";}}', 'no'),
(627, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"nicoladufresne@gmail.com\";s:7:\"version\";s:6:\"5.5.10\";s:9:\"timestamp\";i:1662997914;}', 'no'),
(720, 'auto_update_core_dev', 'enabled', 'yes'),
(721, 'auto_update_core_minor', 'enabled', 'yes'),
(722, 'auto_update_core_major', 'unset', 'yes'),
(723, 'db_upgraded', '', 'yes'),
(859, 'can_compress_scripts', '1', 'no'),
(908, 'wp-optimize-installed-for', '1623405416', 'yes'),
(975, '_site_transient_timeout_php_check_c35af108126e3879ab2f7bb297998072', '1663602711', 'no'),
(976, '_site_transient_php_check_c35af108126e3879ab2f7bb297998072', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(977, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:7:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.0.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.0.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.0.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.0.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.9.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.9.4.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.4\";s:7:\"version\";s:5:\"5.9.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.8.5.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.8.5.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.5\";s:7:\"version\";s:5:\"5.8.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.7.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.7.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.7\";s:7:\"version\";s:5:\"5.7.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.6.9.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.6.9.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.9\";s:7:\"version\";s:5:\"5.6.9\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1663424798;s:15:\"version_checked\";s:6:\"5.5.10\";s:12:\"translations\";a:0:{}}', 'no'),
(985, '_transient_wpo_get_cache_size', 'a:2:{s:4:\"size\";i:144;s:10:\"file_count\";i:2;}', 'yes'),
(994, '_site_transient_timeout_theme_roots', '1663426597', 'no'),
(995, '_site_transient_theme_roots', 'a:3:{s:10:\"lesvikings\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(997, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1663424800;s:7:\"checked\";a:3:{s:10:\"lesvikings\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.3.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(998, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1663424800;s:8:\"response\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"media-cleaner/media-cleaner.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:27:\"w.org/plugins/media-cleaner\";s:4:\"slug\";s:13:\"media-cleaner\";s:6:\"plugin\";s:31:\"media-cleaner/media-cleaner.php\";s:11:\"new_version\";s:5:\"6.4.5\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/media-cleaner/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/media-cleaner.6.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/media-cleaner/assets/icon-256x256.png?rev=1878128\";s:2:\"1x\";s:66:\"https://ps.w.org/media-cleaner/assets/icon-128x128.png?rev=1878128\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/media-cleaner/assets/banner-1544x500.png?rev=1874957\";s:2:\"1x\";s:68:\"https://ps.w.org/media-cleaner/assets/banner-772x250.png?rev=1874957\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"smart-slider-3/smart-slider-3.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/smart-slider-3\";s:4:\"slug\";s:14:\"smart-slider-3\";s:6:\"plugin\";s:33:\"smart-slider-3/smart-slider-3.php\";s:11:\"new_version\";s:7:\"3.5.1.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/smart-slider-3/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/smart-slider-3.3.5.1.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-256x256.png?rev=2307688\";s:2:\"1x\";s:59:\"https://ps.w.org/smart-slider-3/assets/icon.svg?rev=2307688\";s:3:\"svg\";s:59:\"https://ps.w.org/smart-slider-3/assets/icon.svg?rev=2307688\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/smart-slider-3/assets/banner-1544x500.png?rev=2632650\";s:2:\"1x\";s:69:\"https://ps.w.org/smart-slider-3/assets/banner-772x250.png?rev=2632650\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"wp-optimize/wp-optimize.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:25:\"w.org/plugins/wp-optimize\";s:4:\"slug\";s:11:\"wp-optimize\";s:6:\"plugin\";s:27:\"wp-optimize/wp-optimize.php\";s:11:\"new_version\";s:5:\"3.2.7\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-optimize/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wp-optimize.3.2.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/wp-optimize/assets/icon-256x256.png?rev=1552899\";s:2:\"1x\";s:64:\"https://ps.w.org/wp-optimize/assets/icon-128x128.png?rev=1552899\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-optimize/assets/banner-1544x500.png?rev=2125385\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-optimize/assets/banner-772x250.png?rev=2125385\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.5\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingspostmeta`
--

CREATE TABLE `wpvikingspostmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpvikingspostmeta`
--

INSERT INTO `wpvikingspostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'template-politique.php'),
(6, 6, '_edit_lock', '1601453321:1'),
(7, 6, '_wp_page_template', 'template-home.php'),
(8, 8, '_edit_lock', '1601455846:1'),
(9, 8, '_wp_page_template', 'template-espace-professionnel.php'),
(10, 10, '_edit_lock', '1601456637:1'),
(11, 10, '_wp_page_template', 'template-nous-contacter.php'),
(12, 12, '_edit_lock', '1601457027:1'),
(13, 12, '_wp_page_template', 'template-informations-pratiques.php'),
(14, 14, '_edit_lock', '1601458215:1'),
(15, 14, '_wp_page_template', 'template-mentions-legales.php'),
(16, 16, '_wp_attached_file', '2020/09/5.jpg'),
(17, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:13:\"2020/09/5.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 17, '_wp_attached_file', '2020/09/6.jpg'),
(19, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:13:\"2020/09/6.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 18, '_wp_attached_file', '2020/09/7.jpg'),
(21, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:13:\"2020/09/7.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"7-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 19, '_wp_attached_file', '2020/09/8.jpg'),
(23, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:13:\"2020/09/8.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"8-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 21, '_wp_attached_file', '2020/09/10.jpg'),
(27, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:14:\"2020/09/10.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"10-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"10-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 22, '_wp_attached_file', '2020/09/11.jpg'),
(29, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:14:\"2020/09/11.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"11-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"11-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"11-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 23, '_wp_attached_file', '2020/09/12.jpg'),
(31, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:14:\"2020/09/12.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"12-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"12-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 24, '_wp_attached_file', '2020/09/13.jpg'),
(33, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:14:\"2020/09/13.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"13-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"13-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 25, '_wp_attached_file', '2020/09/14.jpg'),
(35, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:14:\"2020/09/14.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"14-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"14-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 26, '_wp_attached_file', '2020/09/ListeMateriel-EspaceLesVikings.pdf'),
(37, 27, '_wp_attached_file', '2020/09/LivretAccueil-EspaceLesVikings.pdf'),
(38, 28, '_wp_attached_file', '2020/09/PlanPerches-EspaceLesVikings.pdf'),
(39, 29, '_wp_attached_file', '2020/09/PlanSalle-EspaceLesVikings.pdf'),
(40, 30, '_wp_attached_file', '2020/09/Programmation_LesVikings_sept_janv_2020_2021.pdf'),
(91, 90, '_edit_last', '1'),
(92, 90, '_edit_lock', '1601534609:1'),
(362, 119, '_edit_last', '1'),
(363, 119, '_edit_lock', '1602677987:1'),
(450, 24, 'original-file', '2020/09/13-updraft-pre-smush-original.jpg'),
(451, 24, 'smush-complete', '1'),
(452, 24, 'smush-info', 'Le fichier a été compressé de 253.22 KB à 253.22 KB en réduisant de 0 pourcent avec WP-Optimize.'),
(453, 24, 'smush-stats', 'a:4:{s:12:\"smushed-with\";s:11:\"re-smush-it\";s:13:\"original-size\";i:259298;s:12:\"smushed-size\";i:259298;s:15:\"savings-percent\";d:0;}'),
(454, 25, 'original-file', '2020/09/14-updraft-pre-smush-original.jpg'),
(455, 25, 'smush-complete', '1'),
(456, 25, 'smush-info', 'Le fichier a été compressé de 186.35 KB à 186.35 KB en réduisant de 0 pourcent avec WP-Optimize.'),
(457, 25, 'smush-stats', 'a:4:{s:12:\"smushed-with\";s:11:\"re-smush-it\";s:13:\"original-size\";i:190826;s:12:\"smushed-size\";i:190826;s:15:\"savings-percent\";d:0;}'),
(458, 23, 'original-file', '2020/09/12-updraft-pre-smush-original.jpg'),
(459, 23, 'smush-complete', '1'),
(460, 23, 'smush-info', 'Le fichier a été compressé de 246.84 KB à 246.84 KB en réduisant de 0 pourcent avec WP-Optimize.'),
(461, 23, 'smush-stats', 'a:4:{s:12:\"smushed-with\";s:11:\"re-smush-it\";s:13:\"original-size\";i:252760;s:12:\"smushed-size\";i:252760;s:15:\"savings-percent\";d:0;}'),
(466, 21, 'original-file', '2020/09/10-updraft-pre-smush-original.jpg'),
(467, 21, 'smush-complete', '1'),
(468, 21, 'smush-info', 'Le fichier a été compressé de 186.69 KB à 186.69 KB en réduisant de 0 pourcent avec WP-Optimize.'),
(469, 21, 'smush-stats', 'a:4:{s:12:\"smushed-with\";s:11:\"re-smush-it\";s:13:\"original-size\";i:191171;s:12:\"smushed-size\";i:191171;s:15:\"savings-percent\";d:0;}'),
(470, 22, 'original-file', '2020/09/11-updraft-pre-smush-original.jpg'),
(471, 22, 'smush-complete', '1'),
(472, 22, 'smush-info', 'Le fichier a été compressé de 462.64 KB à 462.64 KB en réduisant de 0 pourcent avec WP-Optimize.'),
(473, 22, 'smush-stats', 'a:4:{s:12:\"smushed-with\";s:11:\"re-smush-it\";s:13:\"original-size\";i:473741;s:12:\"smushed-size\";i:473741;s:15:\"savings-percent\";d:0;}'),
(474, 18, 'original-file', '2020/09/7-updraft-pre-smush-original.jpg'),
(475, 18, 'smush-complete', '1'),
(476, 18, 'smush-info', 'Le fichier a été compressé de 212.69 KB à 212.69 KB en réduisant de 0 pourcent avec WP-Optimize.'),
(477, 18, 'smush-stats', 'a:4:{s:12:\"smushed-with\";s:11:\"re-smush-it\";s:13:\"original-size\";i:217794;s:12:\"smushed-size\";i:217794;s:15:\"savings-percent\";d:0;}'),
(478, 19, 'original-file', '2020/09/8-updraft-pre-smush-original.jpg'),
(479, 19, 'smush-complete', '1'),
(480, 19, 'smush-info', 'Le fichier a été compressé de 263.83 KB à 263.83 KB en réduisant de 0 pourcent avec WP-Optimize.'),
(481, 19, 'smush-stats', 'a:4:{s:12:\"smushed-with\";s:11:\"re-smush-it\";s:13:\"original-size\";i:270158;s:12:\"smushed-size\";i:270158;s:15:\"savings-percent\";d:0;}'),
(482, 16, 'original-file', '2020/09/5-updraft-pre-smush-original.jpg'),
(483, 16, 'smush-complete', '1'),
(484, 16, 'smush-info', 'Le fichier a été compressé de 249.79 KB à 249.79 KB en réduisant de 0 pourcent avec WP-Optimize.'),
(485, 16, 'smush-stats', 'a:4:{s:12:\"smushed-with\";s:11:\"re-smush-it\";s:13:\"original-size\";i:255785;s:12:\"smushed-size\";i:255785;s:15:\"savings-percent\";d:0;}'),
(486, 17, 'original-file', '2020/09/6-updraft-pre-smush-original.jpg'),
(487, 17, 'smush-complete', '1'),
(488, 17, 'smush-info', 'Le fichier a été compressé de 200.08 KB à 200.08 KB en réduisant de 0 pourcent avec WP-Optimize.'),
(489, 17, 'smush-stats', 'a:4:{s:12:\"smushed-with\";s:11:\"re-smush-it\";s:13:\"original-size\";i:204887;s:12:\"smushed-size\";i:204887;s:15:\"savings-percent\";d:0;}'),
(540, 3, '_edit_lock', '1603185128:1'),
(541, 3, '_edit_last', '1'),
(568, 142, '_edit_lock', '1610628010:1'),
(569, 142, '_thumbnail_id', '23'),
(570, 142, '_wp_page_template', 'template-sitemap.php'),
(571, 142, '_edit_last', '1'),
(587, 148, '_wp_attached_file', '2021/01/favicon.png'),
(588, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2021/01/favicon.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"affiches\";a:4:{s:4:\"file\";s:19:\"favicon-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"affiches-page\";a:4:{s:4:\"file\";s:19:\"favicon-400x500.png\";s:5:\"width\";i:400;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsposts`
--

CREATE TABLE `wpvikingsposts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpvikingsposts`
--

INSERT INTO `wpvikingsposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2020-09-30 09:21:03', '2020-09-30 07:21:03', '', 'Politique de confidentialité', '', 'publish', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2020-10-20 11:12:08', '2020-10-20 09:12:08', '', 0, 'http://localhost/lesvikings-yvetot/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-09-30 10:11:05', '2020-09-30 08:11:05', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2020-09-30 10:11:05', '2020-09-30 08:11:05', '', 0, 'http://localhost/lesvikings-yvetot/?page_id=6', 0, 'page', '', 0),
(8, 1, '2020-09-30 10:52:29', '2020-09-30 08:52:29', '', 'Espace professionnel', '', 'publish', 'closed', 'closed', '', 'espace-professionnel', '', '', '2020-09-30 10:53:10', '2020-09-30 08:53:10', '', 0, 'http://localhost/lesvikings-yvetot/?page_id=8', 0, 'page', '', 0),
(10, 1, '2020-09-30 11:06:21', '2020-09-30 09:06:21', '', 'Nous contacter', '', 'publish', 'closed', 'closed', '', 'nous-contacter', '', '', '2020-09-30 11:06:21', '2020-09-30 09:06:21', '', 0, 'http://localhost/lesvikings-yvetot/?page_id=10', 0, 'page', '', 0),
(12, 1, '2020-09-30 11:12:44', '2020-09-30 09:12:44', '', 'Informations pratiques', '', 'publish', 'closed', 'closed', '', 'informations-pratiques', '', '', '2020-09-30 11:12:44', '2020-09-30 09:12:44', '', 0, 'http://localhost/lesvikings-yvetot/?page_id=12', 0, 'page', '', 0),
(14, 1, '2020-09-30 11:32:39', '2020-09-30 09:32:39', '', 'Mentions légales', '', 'publish', 'closed', 'closed', '', 'mentions-legales', '', '', '2020-09-30 11:32:39', '2020-09-30 09:32:39', '', 0, 'http://localhost/lesvikings-yvetot/?page_id=14', 0, 'page', '', 0),
(16, 1, '2020-09-30 11:46:54', '2020-09-30 09:46:54', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2020-09-30 11:46:54', '2020-09-30 09:46:54', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2020-09-30 11:46:54', '2020-09-30 09:46:54', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2020-09-30 11:46:54', '2020-09-30 09:46:54', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2020-09-30 11:46:55', '2020-09-30 09:46:55', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2020-09-30 11:46:55', '2020-09-30 09:46:55', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-09-30 11:46:55', '2020-09-30 09:46:55', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2020-09-30 11:46:55', '2020-09-30 09:46:55', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-09-30 11:46:56', '2020-09-30 09:46:56', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2020-09-30 11:46:56', '2020-09-30 09:46:56', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/10.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2020-09-30 11:46:56', '2020-09-30 09:46:56', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2020-09-30 11:46:56', '2020-09-30 09:46:56', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/11.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2020-09-30 11:46:57', '2020-09-30 09:46:57', '', '12', '', 'inherit', 'open', 'closed', '', '12', '', '', '2020-09-30 11:46:57', '2020-09-30 09:46:57', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/12.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2020-09-30 11:46:58', '2020-09-30 09:46:58', '', '13', '', 'inherit', 'open', 'closed', '', '13', '', '', '2020-09-30 11:46:58', '2020-09-30 09:46:58', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/13.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2020-09-30 11:46:58', '2020-09-30 09:46:58', '', '14', '', 'inherit', 'open', 'closed', '', '14', '', '', '2020-09-30 11:46:58', '2020-09-30 09:46:58', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/14.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2020-09-30 11:53:48', '2020-09-30 09:53:48', '', 'ListeMateriel-EspaceLesVikings', '', 'inherit', 'open', 'closed', '', 'listemateriel-espacelesvikings', '', '', '2020-09-30 11:53:48', '2020-09-30 09:53:48', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/ListeMateriel-EspaceLesVikings.pdf', 0, 'attachment', 'application/pdf', 0),
(27, 1, '2020-09-30 11:53:48', '2020-09-30 09:53:48', '', 'LivretAccueil-EspaceLesVikings', '', 'inherit', 'open', 'closed', '', 'livretaccueil-espacelesvikings', '', '', '2020-09-30 11:53:48', '2020-09-30 09:53:48', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/LivretAccueil-EspaceLesVikings.pdf', 0, 'attachment', 'application/pdf', 0),
(28, 1, '2020-09-30 11:53:48', '2020-09-30 09:53:48', '', 'PlanPerches-EspaceLesVikings', '', 'inherit', 'open', 'closed', '', 'planperches-espacelesvikings', '', '', '2020-09-30 11:53:48', '2020-09-30 09:53:48', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/PlanPerches-EspaceLesVikings.pdf', 0, 'attachment', 'application/pdf', 0),
(29, 1, '2020-09-30 11:53:49', '2020-09-30 09:53:49', '', 'PlanSalle-EspaceLesVikings', '', 'inherit', 'open', 'closed', '', 'plansalle-espacelesvikings', '', '', '2020-09-30 11:53:49', '2020-09-30 09:53:49', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/PlanSalle-EspaceLesVikings.pdf', 0, 'attachment', 'application/pdf', 0),
(30, 1, '2020-09-30 11:53:49', '2020-09-30 09:53:49', '', 'Programmation_LesVikings_sept_janv_2020_2021', '', 'inherit', 'open', 'closed', '', 'programmation_lesvikings_sept_janv_2020_2021', '', '', '2020-09-30 11:53:49', '2020-09-30 09:53:49', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2020/09/Programmation_LesVikings_sept_janv_2020_2021.pdf', 0, 'attachment', 'application/pdf', 0),
(86, 1, '2020-09-30 15:49:45', '2020-09-30 13:49:45', '<!-- wp:paragraph -->\n<p>Sans fard et sans artifice, Florent Peyre interprète tous les membres d’une troupe de comédie musicale, un soir de première…<br>Entre le one-man-show et la pièce de théâtre, il incarne en même temps 23 personnages et 5 animaux (dont 4 en voie de disparition…) dans une performance unique…</p>\n<!-- /wp:paragraph -->', 'Bloc réutilisable sans titre', '', 'publish', 'closed', 'closed', '', 'bloc-reutilisable-sans-titre', '', '', '2020-09-30 15:49:45', '2020-09-30 13:49:45', '', 0, 'http://localhost/lesvikings-yvetot/2020/09/30/bloc-reutilisable-sans-titre/', 0, 'wp_block', '', 0),
(90, 1, '2020-09-30 16:50:47', '2020-09-30 14:50:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'group_5f749a8d54839', '', '', '2020-09-30 16:50:47', '2020-09-30 14:50:47', '', 0, 'http://localhost/lesvikings-yvetot/?post_type=acf-field-group&#038;p=90', 0, 'acf-field-group', '', 0),
(91, 1, '2020-09-30 16:50:47', '2020-09-30 14:50:47', 'a:8:{s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:15:\"Date et horaire\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:15:\"j F Y H : i : s\";s:13:\"return_format\";s:15:\"j F Y H : i : s\";s:9:\"first_day\";i:1;}', 'date-time', 'date-time', 'publish', 'closed', 'closed', '', 'field_5f749a9cb68b4', '', '', '2020-09-30 16:50:47', '2020-09-30 14:50:47', '', 90, 'http://localhost/lesvikings-yvetot/?post_type=acf-field&p=91', 0, 'acf-field', '', 0),
(119, 1, '2020-10-14 13:51:04', '2020-10-14 11:51:04', 'Pour lutter contre la propagation du Coronavirus COVID-19, la salle de spectacle Les Vikings est exceptionnellement fermée.', 'Covid-19', '', 'pending', 'closed', 'closed', '', 'covid-19', '', '', '2020-10-14 14:19:47', '2020-10-14 12:19:47', '', 0, 'http://localhost/lesvikings-yvetot/?post_type=important&#038;p=119', 0, 'important', '', 0),
(142, 1, '2021-01-14 13:40:10', '2021-01-14 12:40:10', '', 'Plan du site', '', 'publish', 'closed', 'closed', '', 'plan-du-site', '', '', '2021-01-14 13:40:10', '2021-01-14 12:40:10', '', 0, 'http://localhost/lesvikings-yvetot/?page_id=142', 0, 'page', '', 0),
(145, 1, '2021-01-19 15:04:15', '2021-01-19 14:04:15', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', 'fdafdd6e4b8a0f495f4e5c961c39d70f', '', '', '2021-01-19 15:04:15', '2021-01-19 14:04:15', '', 0, 'http://localhost/lesvikings-yvetot/fdafdd6e4b8a0f495f4e5c961c39d70f/', 0, 'oembed_cache', '', 0),
(146, 1, '2021-01-19 15:04:26', '2021-01-19 14:04:26', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', 'dde127019cafc2503977d921da70f5b0', '', '', '2021-01-19 15:04:26', '2021-01-19 14:04:26', '', 0, 'http://localhost/lesvikings-yvetot/dde127019cafc2503977d921da70f5b0/', 0, 'oembed_cache', '', 0),
(148, 1, '2021-01-20 09:12:56', '2021-01-20 08:12:56', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2021-01-20 09:12:56', '2021-01-20 08:12:56', '', 0, 'http://localhost/lesvikings-yvetot/wp-content/uploads/2021/01/favicon.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2021-06-11 11:59:52', '2021-06-11 09:59:52', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '4a61c34bc2a3281efc81f862c8fe1327', '', '', '2021-06-11 11:59:52', '2021-06-11 09:59:52', '', 0, 'http://localhost/lesvikings-yvetot/4a61c34bc2a3281efc81f862c8fe1327/', 0, 'oembed_cache', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsstatistics_exclusions`
--

CREATE TABLE `wpvikingsstatistics_exclusions` (
  `ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `count` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsstatistics_historical`
--

CREATE TABLE `wpvikingsstatistics_historical` (
  `ID` bigint(20) NOT NULL,
  `category` varchar(25) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `value` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsstatistics_pages`
--

CREATE TABLE `wpvikingsstatistics_pages` (
  `page_id` bigint(20) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsstatistics_search`
--

CREATE TABLE `wpvikingsstatistics_search` (
  `ID` bigint(20) NOT NULL,
  `last_counter` date NOT NULL,
  `engine` varchar(64) NOT NULL,
  `host` varchar(255) DEFAULT NULL,
  `words` varchar(255) DEFAULT NULL,
  `visitor` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsstatistics_useronline`
--

CREATE TABLE `wpvikingsstatistics_useronline` (
  `ID` int(11) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `timestamp` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `referred` text NOT NULL,
  `agent` varchar(255) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `user_id` bigint(48) NOT NULL,
  `page_id` bigint(48) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsstatistics_visit`
--

CREATE TABLE `wpvikingsstatistics_visit` (
  `ID` int(11) NOT NULL,
  `last_visit` datetime NOT NULL,
  `last_counter` date NOT NULL,
  `visit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `wpvikingsstatistics_visit`
--

INSERT INTO `wpvikingsstatistics_visit` (`ID`, `last_visit`, `last_counter`, `visit`) VALUES
(1, '2020-10-20 12:12:41', '2020-10-20', 1),
(2, '0000-00-00 00:00:00', '2020-10-21', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsstatistics_visitor`
--

CREATE TABLE `wpvikingsstatistics_visitor` (
  `ID` int(11) NOT NULL,
  `last_counter` date NOT NULL,
  `referred` text NOT NULL,
  `agent` varchar(255) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `UAString` varchar(255) DEFAULT NULL,
  `ip` varchar(60) NOT NULL,
  `location` varchar(10) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `honeypot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `wpvikingsstatistics_visitor`
--

INSERT INTO `wpvikingsstatistics_visitor` (`ID`, `last_counter`, `referred`, `agent`, `platform`, `version`, `UAString`, `ip`, `location`, `hits`, `honeypot`) VALUES
(1, '2020-10-20', 'http://localhost/lesvikings-yvetot/wp-admin/plugin-install.php?s=wp+stat&tab=search&type=term', 'Firefox', 'Windows', '10.0', NULL, '::1', '000', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingstermmeta`
--

CREATE TABLE `wpvikingstermmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsterms`
--

CREATE TABLE `wpvikingsterms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpvikingsterms`
--

INSERT INTO `wpvikingsterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Affiches', 'affiches', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsterm_relationships`
--

CREATE TABLE `wpvikingsterm_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsterm_taxonomy`
--

CREATE TABLE `wpvikingsterm_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpvikingsterm_taxonomy`
--

INSERT INTO `wpvikingsterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingstm_taskmeta`
--

CREATE TABLE `wpvikingstm_taskmeta` (
  `meta_id` bigint(20) NOT NULL,
  `task_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingstm_tasks`
--

CREATE TABLE `wpvikingstm_tasks` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_identifier` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `attempts` int(11) DEFAULT 0,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_locked_at` bigint(20) DEFAULT 0,
  `status` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsusermeta`
--

CREATE TABLE `wpvikingsusermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpvikingsusermeta`
--

INSERT INTO `wpvikingsusermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'lesvikings'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wpvikingscapabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpvikingsuser_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wpvikingsdashboard_quick_press_last_post_id', '158'),
(18, 1, 'wpvikingsuser-settings', 'libraryContent=browse&editor=tinymce&editor_expand=on'),
(19, 1, 'wpvikingsuser-settings-time', '1602661665'),
(20, 1, 'meta-box-order_spectacles', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:25:\"cuztom-spectacles,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(21, 1, 'screen_layout_spectacles', '2'),
(22, 1, 'closedpostboxes_spectacles', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(23, 1, 'metaboxhidden_spectacles', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(24, 1, 'enable_custom_fields', '1'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:0:{}'),
(29, 1, 'closedpostboxes_important', 'a:1:{i:0;s:16:\"cuztom-important\";}'),
(30, 1, 'metaboxhidden_important', 'a:2:{i:0;s:7:\"slugdiv\";i:1;s:16:\"cuztom-important\";}'),
(35, 1, 'wpvikingsmedia_library_mode', 'list'),
(37, 1, 'session_tokens', 'a:1:{s:64:\"445b49c9e3febd1486ae857d1844a95abfec1d70b10a7207fa744fbd97597bed\";a:4:{s:10:\"expiration\";i:1664207505;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:104.0) Gecko/20100101 Firefox/104.0\";s:5:\"login\";i:1662997905;}}'),
(38, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wpvikingsusers`
--

CREATE TABLE `wpvikingsusers` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wpvikingsusers`
--

INSERT INTO `wpvikingsusers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lesvikings', '$P$BET9qSAvtP9GdKNpoOhr.1oULB0c860', 'lesvikings', 'nicoladufresne@gmail.com', 'http://localhost/lesvikings-yvetot', '2020-09-30 07:21:03', '', 0, 'lesvikings');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wpvikingscommentmeta`
--
ALTER TABLE `wpvikingscommentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wpvikingscomments`
--
ALTER TABLE `wpvikingscomments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wpvikingslinks`
--
ALTER TABLE `wpvikingslinks`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wpvikingsnextend2_image_storage`
--
ALTER TABLE `wpvikingsnextend2_image_storage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Index pour la table `wpvikingsnextend2_section_storage`
--
ALTER TABLE `wpvikingsnextend2_section_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system` (`system`),
  ADD KEY `editable` (`editable`),
  ADD KEY `application` (`application`,`section`(50),`referencekey`(50)),
  ADD KEY `application_2` (`application`,`section`(50));

--
-- Index pour la table `wpvikingsnextend2_smartslider3_generators`
--
ALTER TABLE `wpvikingsnextend2_smartslider3_generators`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wpvikingsnextend2_smartslider3_sliders`
--
ALTER TABLE `wpvikingsnextend2_smartslider3_sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `time` (`time`);

--
-- Index pour la table `wpvikingsnextend2_smartslider3_sliders_xref`
--
ALTER TABLE `wpvikingsnextend2_smartslider3_sliders_xref`
  ADD PRIMARY KEY (`group_id`,`slider_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Index pour la table `wpvikingsnextend2_smartslider3_slides`
--
ALTER TABLE `wpvikingsnextend2_smartslider3_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`),
  ADD KEY `publish_up` (`publish_up`),
  ADD KEY `publish_down` (`publish_down`),
  ADD KEY `generator_id` (`generator_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `slider` (`slider`),
  ADD KEY `thumbnail` (`thumbnail`(100));

--
-- Index pour la table `wpvikingsoptions`
--
ALTER TABLE `wpvikingsoptions`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wpvikingspostmeta`
--
ALTER TABLE `wpvikingspostmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wpvikingsposts`
--
ALTER TABLE `wpvikingsposts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wpvikingsstatistics_exclusions`
--
ALTER TABLE `wpvikingsstatistics_exclusions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `date` (`date`),
  ADD KEY `reason` (`reason`);

--
-- Index pour la table `wpvikingsstatistics_historical`
--
ALTER TABLE `wpvikingsstatistics_historical`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `page_id` (`page_id`),
  ADD UNIQUE KEY `uri` (`uri`),
  ADD KEY `category` (`category`);

--
-- Index pour la table `wpvikingsstatistics_pages`
--
ALTER TABLE `wpvikingsstatistics_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `date_2` (`date`,`uri`),
  ADD KEY `url` (`uri`),
  ADD KEY `date` (`date`),
  ADD KEY `id` (`id`),
  ADD KEY `uri` (`uri`,`count`,`id`);

--
-- Index pour la table `wpvikingsstatistics_search`
--
ALTER TABLE `wpvikingsstatistics_search`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `last_counter` (`last_counter`),
  ADD KEY `engine` (`engine`),
  ADD KEY `host` (`host`);

--
-- Index pour la table `wpvikingsstatistics_useronline`
--
ALTER TABLE `wpvikingsstatistics_useronline`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `wpvikingsstatistics_visit`
--
ALTER TABLE `wpvikingsstatistics_visit`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `unique_date` (`last_counter`);

--
-- Index pour la table `wpvikingsstatistics_visitor`
--
ALTER TABLE `wpvikingsstatistics_visitor`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `date_ip_agent` (`last_counter`,`ip`,`agent`(75),`platform`(75),`version`(75)),
  ADD KEY `agent` (`agent`),
  ADD KEY `platform` (`platform`),
  ADD KEY `version` (`version`),
  ADD KEY `location` (`location`);

--
-- Index pour la table `wpvikingstermmeta`
--
ALTER TABLE `wpvikingstermmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wpvikingsterms`
--
ALTER TABLE `wpvikingsterms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wpvikingsterm_relationships`
--
ALTER TABLE `wpvikingsterm_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wpvikingsterm_taxonomy`
--
ALTER TABLE `wpvikingsterm_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wpvikingstm_taskmeta`
--
ALTER TABLE `wpvikingstm_taskmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `task_id` (`task_id`);

--
-- Index pour la table `wpvikingstm_tasks`
--
ALTER TABLE `wpvikingstm_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `wpvikingsusermeta`
--
ALTER TABLE `wpvikingsusermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wpvikingsusers`
--
ALTER TABLE `wpvikingsusers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wpvikingscommentmeta`
--
ALTER TABLE `wpvikingscommentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wpvikingscomments`
--
ALTER TABLE `wpvikingscomments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wpvikingslinks`
--
ALTER TABLE `wpvikingslinks`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wpvikingsnextend2_image_storage`
--
ALTER TABLE `wpvikingsnextend2_image_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `wpvikingsnextend2_section_storage`
--
ALTER TABLE `wpvikingsnextend2_section_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10098;

--
-- AUTO_INCREMENT pour la table `wpvikingsnextend2_smartslider3_generators`
--
ALTER TABLE `wpvikingsnextend2_smartslider3_generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wpvikingsnextend2_smartslider3_sliders`
--
ALTER TABLE `wpvikingsnextend2_smartslider3_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wpvikingsnextend2_smartslider3_slides`
--
ALTER TABLE `wpvikingsnextend2_smartslider3_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `wpvikingsoptions`
--
ALTER TABLE `wpvikingsoptions`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=999;

--
-- AUTO_INCREMENT pour la table `wpvikingspostmeta`
--
ALTER TABLE `wpvikingspostmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=634;

--
-- AUTO_INCREMENT pour la table `wpvikingsposts`
--
ALTER TABLE `wpvikingsposts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT pour la table `wpvikingsstatistics_exclusions`
--
ALTER TABLE `wpvikingsstatistics_exclusions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wpvikingsstatistics_historical`
--
ALTER TABLE `wpvikingsstatistics_historical`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wpvikingsstatistics_pages`
--
ALTER TABLE `wpvikingsstatistics_pages`
  MODIFY `page_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wpvikingsstatistics_search`
--
ALTER TABLE `wpvikingsstatistics_search`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wpvikingsstatistics_useronline`
--
ALTER TABLE `wpvikingsstatistics_useronline`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wpvikingsstatistics_visit`
--
ALTER TABLE `wpvikingsstatistics_visit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wpvikingsstatistics_visitor`
--
ALTER TABLE `wpvikingsstatistics_visitor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wpvikingstermmeta`
--
ALTER TABLE `wpvikingstermmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wpvikingsterms`
--
ALTER TABLE `wpvikingsterms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wpvikingsterm_taxonomy`
--
ALTER TABLE `wpvikingsterm_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wpvikingstm_taskmeta`
--
ALTER TABLE `wpvikingstm_taskmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `wpvikingstm_tasks`
--
ALTER TABLE `wpvikingstm_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `wpvikingsusermeta`
--
ALTER TABLE `wpvikingsusermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `wpvikingsusers`
--
ALTER TABLE `wpvikingsusers`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
