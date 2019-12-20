-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2019 a las 22:14:20
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dc_maskotsport`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_cf7dbplugin_st`
--

CREATE TABLE `ms_cf7dbplugin_st` (
  `submit_time` decimal(16,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_cf7dbplugin_submits`
--

CREATE TABLE `ms_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8 DEFAULT NULL,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_commentmeta`
--

CREATE TABLE `ms_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_comments`
--

CREATE TABLE `ms_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ms_comments`
--

INSERT INTO `ms_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-08 16:43:31', '2019-12-08 16:43:31', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_links`
--

CREATE TABLE `ms_links` (
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
-- Estructura de tabla para la tabla `ms_options`
--

CREATE TABLE `ms_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ms_options`
--

INSERT INTO `ms_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dev.maskotsport.com', 'yes'),
(2, 'home', 'http://dev.maskotsport.com', 'yes'),
(3, 'blogname', 'Maskot Sport', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'frankdelarosacampos@gmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:9:\"hello.php\";i:6;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'maskot', 'yes'),
(41, 'stylesheet', 'maskot', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'ms_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_PE', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:8:{i:1576878213;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1576903412;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1576903413;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1576946612;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576946622;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576946653;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576961036;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(136, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1576860294;s:7:\"checked\";a:1:{s:6:\"maskot\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(144, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"frankdelarosacampos@gmail.com\";s:7:\"version\";s:5:\"5.2.5\";s:9:\"timestamp\";i:1576213803;}', 'no'),
(147, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'theme_mods_twentynineteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1575823435;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(150, 'current_theme', 'Maskot Sport', 'yes'),
(151, 'theme_mods_maskot', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(153, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1575823452;s:7:\"version\";s:5:\"5.1.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(154, 'CF7DBPlugin_NoSaveFields', '/.*wpcf7.*/,_wpnonce', 'yes'),
(155, 'CF7DBPlugin__version', '2.10.26', 'yes'),
(156, 'CF7DBPlugin__installed', '1', 'yes'),
(157, 'CF7DBPlugin_IntegrateWithCF7', 'true', 'yes'),
(158, 'CF7DBPlugin_GenerateSubmitTimeInCF7Email', 'false', 'yes'),
(159, 'CF7DBPlugin_IntegrateWithFSCF', 'true', 'yes'),
(160, 'CF7DBPlugin_IntegrateWithJetPackContactForm', 'true', 'yes'),
(161, 'CF7DBPlugin_IntegrateWithGravityForms', 'true', 'yes'),
(162, 'CF7DBPlugin_IntegrateWithFormidableForms', 'true', 'yes'),
(163, 'CF7DBPlugin_IntegrateWithWrContactForms', 'true', 'yes'),
(164, 'CF7DBPlugin_IntegrateWithQuform', 'true', 'yes'),
(165, 'CF7DBPlugin_IntegrateWithNinjaForms', 'true', 'yes'),
(166, 'CF7DBPlugin_IntegrateWithCalderaForms', 'true', 'yes'),
(167, 'CF7DBPlugin_IntegrateWithEnfoldThemForms', 'true', 'yes'),
(168, 'CF7DBPlugin_IntegrateWithCFormsII', 'true', 'yes'),
(169, 'CF7DBPlugin_IntegrateWithFormCraft', 'true', 'yes'),
(170, 'CF7DBPlugin_IntegrateWithVerySimpleContactForm', 'true', 'yes'),
(171, 'CF7DBPlugin_IntegrateWithFMS', 'true', 'yes'),
(172, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:6:\"12.6.2\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1575823452;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(173, 'wpseo_titles', 'a:71:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:40:\"%%name%%, autor en %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:58:\"Has buscado %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:42:\"Página no encontrada %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:60:\"La entrada %%POSTLINK%% se publicó primero en %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:32:\"Error 404: Página no encontrada\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:10:\"Archivo de\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:7:\"Portada\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:15:\"Has buscado por\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(174, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(175, 'wpseo_flush_rewrite', '1', 'yes'),
(176, '_transient_timeout_wpseo_link_table_inaccessible', '1607359453', 'no'),
(177, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(178, '_transient_timeout_wpseo_meta_table_inaccessible', '1607359453', 'no'),
(179, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(181, 'CF7DBPlugin_HideAdminPanelFromNonAdmins', 'true', 'yes'),
(182, 'acf_version', '5.7.7', 'yes'),
(187, 'rewrite_rules', 'a:113:{s:14:\"casos-exito/?$\";s:25:\"index.php?post_type=casos\";s:31:\"casos-exito/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=casos&paged=$matches[1]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"casos-exito/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"casos-exito/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"casos-exito/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"casos-exito/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"casos-exito/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"casos-exito/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"casos-exito/([^/]+)/embed/?$\";s:38:\"index.php?casos=$matches[1]&embed=true\";s:32:\"casos-exito/([^/]+)/trackback/?$\";s:32:\"index.php?casos=$matches[1]&tb=1\";s:40:\"casos-exito/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?casos=$matches[1]&paged=$matches[2]\";s:47:\"casos-exito/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?casos=$matches[1]&cpage=$matches[2]\";s:36:\"casos-exito/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?casos=$matches[1]&page=$matches[2]\";s:28:\"casos-exito/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"casos-exito/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"casos-exito/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"casos-exito/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"casos-exito/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"casos-exito/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(235, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1576860295;s:15:\"version_checked\";s:5:\"5.2.5\";s:12:\"translations\";a:0:{}}', 'no'),
(244, '_site_transient_timeout_browser_2894fb4dbf964f58ccf3d2e4e372b316', '1577073151', 'no'),
(245, '_site_transient_browser_2894fb4dbf964f58ccf3d2e4e372b316', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"78.0.3904.108\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(246, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1577073151', 'no'),
(247, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(279, 'options_logo', '84', 'no'),
(280, '_options_logo', 'field_5df7049692f33', 'no'),
(281, 'options_wsp_number', '+511960579083', 'no'),
(282, '_options_wsp_number', 'field_5df704a892f34', 'no'),
(283, 'options_visita_title', 'Solicita una <b>visita gratuita a la escuela</b>', 'no'),
(284, '_options_visita_title', 'field_5df704e6a977a', 'no'),
(285, 'options_visita_content', 'Y responderemos a todas tus dudas sobre nuestros servicios.', 'no'),
(286, '_options_visita_content', 'field_5df70501a977b', 'no'),
(287, 'options_visita_direction', 'Calle Miami 196, Psje. 11 Mz D-25, Urb. Sol de La Molina, La Molina - Lima', 'no'),
(288, '_options_visita_direction', 'field_5df70527a977c', 'no'),
(289, 'options_contact_description', '<h3>Llámanos</h3>\r\n<ul>\r\n 	<li><a href=\"tel:+51 952 122 101\">+51 952 122 101</a></li>\r\n 	<li><a href=\"tel:+51 993 484 871\">+51 993 484 871</a></li>\r\n</ul>\r\n<h3>Escríbenos</h3>\r\n<ul>\r\n 	<li><a href=\"mailto:escuela@maskotsport.pe\">escuela@maskotsport.pe</a></li>\r\n</ul>', 'no'),
(290, '_options_contact_description', 'field_5df70542a977d', 'no'),
(291, 'options_social', '3', 'no'),
(292, '_options_social', 'field_5df7055ea977e', 'no'),
(293, 'options_logo_verde', '83', 'no'),
(294, '_options_logo_verde', 'field_5df705b8a9781', 'no'),
(295, 'options_title_acreditaciones', 'Nuestras Acreditaciones', 'no'),
(296, '_options_title_acreditaciones', 'field_5df7099b78656', 'no'),
(297, 'options_acreditaciones', '5', 'no'),
(298, '_options_acreditaciones', 'field_5df709aa78657', 'no'),
(300, 'options_social_0_link', '#', 'no'),
(301, '_options_social_0_link', 'field_5df705a0a977f', 'no'),
(302, 'options_social_0_imagen', '80', 'no'),
(303, '_options_social_0_imagen', 'field_5df705a5a9780', 'no'),
(304, 'options_social_1_link', '#', 'no'),
(305, '_options_social_1_link', 'field_5df705a0a977f', 'no'),
(306, 'options_social_1_imagen', '81', 'no'),
(307, '_options_social_1_imagen', 'field_5df705a5a9780', 'no'),
(308, 'options_social_2_link', '#', 'no'),
(309, '_options_social_2_link', 'field_5df705a0a977f', 'no'),
(310, 'options_social_2_imagen', '82', 'no'),
(311, '_options_social_2_imagen', 'field_5df705a5a9780', 'no'),
(312, 'options_acreditaciones_0_imagen', '85', 'no'),
(313, '_options_acreditaciones_0_imagen', 'field_5df709c278658', 'no'),
(314, 'options_acreditaciones_0_flag', '', 'no'),
(315, '_options_acreditaciones_0_flag', 'field_5df709d178659', 'no'),
(316, 'options_acreditaciones_0_title', 'ANACP', 'no'),
(317, '_options_acreditaciones_0_title', 'field_5df709e07865a', 'no'),
(318, 'options_acreditaciones_0_subtitle', 'Integrantes de la Asociación Nacional de Adiestradores Caninos Profesionales.', 'no'),
(319, '_options_acreditaciones_0_subtitle', 'field_5df709eb7865b', 'no'),
(320, 'options_acreditaciones_1_imagen', '86', 'no'),
(321, '_options_acreditaciones_1_imagen', 'field_5df709c278658', 'no'),
(322, 'options_acreditaciones_1_flag', '87', 'no'),
(323, '_options_acreditaciones_1_flag', 'field_5df709d178659', 'no'),
(324, 'options_acreditaciones_1_title', 'Universidad Alas Peruanas', 'no'),
(325, '_options_acreditaciones_1_title', 'field_5df709e07865a', 'no'),
(326, 'options_acreditaciones_1_subtitle', 'Mantrailing e Implantación Cognitiva para Perros Detectores.', 'no'),
(327, '_options_acreditaciones_1_subtitle', 'field_5df709eb7865b', 'no'),
(328, 'options_acreditaciones_2_imagen', '87', 'no'),
(329, '_options_acreditaciones_2_imagen', 'field_5df709c278658', 'no'),
(330, 'options_acreditaciones_2_flag', '88', 'no'),
(331, '_options_acreditaciones_2_flag', 'field_5df709d178659', 'no'),
(332, 'options_acreditaciones_2_title', 'Universidad Alas Peruanas', 'no'),
(333, '_options_acreditaciones_2_title', 'field_5df709e07865a', 'no'),
(334, 'options_acreditaciones_2_subtitle', 'Odorología Forense y Equipo Táctico de Seguimiento K9.', 'no'),
(335, '_options_acreditaciones_2_subtitle', 'field_5df709eb7865b', 'no'),
(336, 'options_acreditaciones_3_imagen', '86', 'no'),
(337, '_options_acreditaciones_3_imagen', 'field_5df709c278658', 'no'),
(338, 'options_acreditaciones_3_flag', '', 'no'),
(339, '_options_acreditaciones_3_flag', 'field_5df709d178659', 'no'),
(340, 'options_acreditaciones_3_title', 'Fuerza Aérea del Perú', 'no'),
(341, '_options_acreditaciones_3_title', 'field_5df709e07865a', 'no'),
(342, 'options_acreditaciones_3_subtitle', 'Integrantes de la Brigada Canina de Guerra del Perú. Perros de Defensa y Detección de Sustancias.', 'no'),
(343, '_options_acreditaciones_3_subtitle', 'field_5df709eb7865b', 'no'),
(344, 'options_acreditaciones_4_imagen', '86', 'no'),
(345, '_options_acreditaciones_4_imagen', 'field_5df709c278658', 'no'),
(346, 'options_acreditaciones_4_flag', '', 'no'),
(347, '_options_acreditaciones_4_flag', 'field_5df709d178659', 'no'),
(348, 'options_acreditaciones_4_title', 'Brigada Canina - SENASA', 'no'),
(349, '_options_acreditaciones_4_title', 'field_5df709e07865a', 'no'),
(350, 'options_acreditaciones_4_subtitle', 'Instructor de la Brigada Canina del SENASA. Perros detectores de productos agrÍcolas y pecuarios.', 'no'),
(351, '_options_acreditaciones_4_subtitle', 'field_5df709eb7865b', 'no'),
(363, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(375, '_transient_timeout_acf_plugin_updates', '1576941150', 'no'),
(376, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";}}', 'no'),
(412, '_site_transient_timeout_theme_roots', '1576862093', 'no'),
(413, '_site_transient_theme_roots', 'a:1:{s:6:\"maskot\";s:7:\"/themes\";}', 'no'),
(415, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1576860296;s:7:\"checked\";a:7:{s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";s:5:\"2.3.0\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";s:7:\"2.10.26\";s:9:\"hello.php\";s:5:\"1.7.2\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"12.6.2\";}s:8:\"response\";a:2:{s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"12.7.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.12.7.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/acf-content-analysis-for-yoast-seo\";s:4:\"slug\";s:34:\"acf-content-analysis-for-yoast-seo\";s:6:\"plugin\";s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";s:11:\"new_version\";s:5:\"2.3.0\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/acf-content-analysis-for-yoast-seo.2.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/icon-256x256.png?rev=1717503\";s:2:\"1x\";s:87:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/icon-128x128.png?rev=1717503\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/banner-1544x500.png?rev=1717503\";s:2:\"1x\";s:89:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/banner-772x250.png?rev=1717503\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(425, '_site_transient_timeout_available_translations', '1576884669', 'no');
INSERT INTO `ms_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(426, '_site_transient_available_translations', 'a:119:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-06 08:13:24\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-22 22:33:28\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.13\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.13/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-09 13:59:01\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.12\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.12/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-12 07:38:44\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-25 20:23:36\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-12-15 19:05:55\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-28 19:06:07\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-22 10:34:50\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-06 07:19:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-05 22:26:10\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 07:08:52\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.2.4/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 07:07:34\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 15:10:06\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.5/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 15:09:43\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-13 12:22:13\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-20 22:32:55\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 14:36:29\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.4/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-20 22:33:08\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-20 00:26:02\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-20 20:46:03\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-17 18:21:18\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-23 13:47:59\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-12-07 04:01:34\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 21:26:01\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 23:07:29\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-12-06 15:26:29\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-26 11:08:21\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-22 14:09:21\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-13 10:59:12\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-12 15:46:57\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 22:06:57\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-05 14:00:58\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-28 08:31:37\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-09 22:16:56\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.5/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.0.8\";s:7:\"updated\";s:19:\"2019-09-24 03:05:30\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-12-20 17:12:58\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-12 03:38:48\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-11-04 08:57:25\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.13\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.13/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-05 01:54:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.11\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.11/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-12-12 16:55:35\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-25 09:26:04\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.5/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-25 09:24:54\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-27 08:50:23\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-24 08:39:27\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-29 19:02:29\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-12-17 12:03:44\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 15:13:04\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-20 09:41:26\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-02 07:58:03\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.2.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-22 09:34:18\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 14:39:35\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-15 09:18:40\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-20 12:34:38\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 10:03:57\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 13:41:32\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 08:19:37\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-12-19 13:39:53\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-16 10:31:10\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-23 07:14:52\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-14 00:33:57\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-12-05 18:52:27\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-01 15:59:49\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_postmeta`
--

CREATE TABLE `ms_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ms_postmeta`
--

INSERT INTO `ms_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'templates/home.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<label> Tu nombre (requerido)\n    [text* your-name] </label>\n\n<label> Tu correo electrónico (requerido)\n    [email* your-email] </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Tu mensaje\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]'),
(4, 5, '_mail', 'a:8:{s:7:\"subject\";s:29:\"Maskot Sport \"[your-subject]\"\";s:6:\"sender\";s:44:\"Maskot Sport <wordpress@dev.maskotsport.com>\";s:4:\"body\";s:198:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Maskot Sport (http://dev.maskotsport.com)\";s:9:\"recipient\";s:29:\"frankdelarosacampos@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:29:\"Maskot Sport \"[your-subject]\"\";s:6:\"sender\";s:44:\"Maskot Sport <wordpress@dev.maskotsport.com>\";s:4:\"body\";s:143:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Maskot Sport (http://dev.maskotsport.com)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:39:\"Reply-To: frankdelarosacampos@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 5, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:74:\"Uno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\";s:4:\"spam\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:24:\"El campo es obligatorio.\";s:16:\"invalid_too_long\";s:28:\"El campo es demasiado largo.\";s:17:\"invalid_too_short\";s:28:\"El campo es demasiado corto.\";}'),
(7, 5, '_additional_settings', NULL),
(8, 5, '_locale', 'es_PE'),
(9, 1, '_edit_lock', '1576667574:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1576668372:1'),
(12, 20, '_edit_last', '1'),
(13, 20, '_edit_lock', '1576869749:1'),
(14, 41, '_edit_last', '1'),
(15, 41, '_edit_lock', '1576873245:1'),
(16, 55, '_edit_last', '1'),
(17, 55, '_edit_lock', '1576471070:1'),
(18, 57, '_edit_last', '1'),
(19, 57, '_edit_lock', '1576668675:1'),
(21, 80, '_wp_attached_file', '2019/12/facebook-blanco.svg'),
(22, 81, '_wp_attached_file', '2019/12/instagram.svg'),
(23, 82, '_wp_attached_file', '2019/12/youtube.svg'),
(24, 83, '_wp_attached_file', '2019/12/logo-maskot-footer.svg'),
(25, 84, '_wp_attached_file', '2019/12/logo-maskot-header.svg'),
(26, 85, '_wp_attached_file', '2019/12/españa.svg'),
(27, 86, '_wp_attached_file', '2019/12/peru.svg'),
(28, 87, '_wp_attached_file', '2019/12/uruguay.svg'),
(29, 88, '_wp_attached_file', '2019/12/mexico.svg'),
(30, 89, '_edit_last', '1'),
(31, 89, '_edit_lock', '1576875250:1'),
(32, 90, '_wp_attached_file', '2019/12/banner_kaisser.png'),
(33, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:440;s:4:\"file\";s:26:\"2019/12/banner_kaisser.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"banner_kaisser-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"banner_kaisser-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 89, '_thumbnail_id', '90'),
(35, 89, 'date', 'Pastor Alemán - 11 meses'),
(36, 89, '_date', 'field_5df708b674a81'),
(37, 89, 'tag', 'Expediente'),
(38, 89, '_tag', 'field_5df708c874a82'),
(39, 89, 'resumen', 'Presentaba indicios de agresividad. Se le conocía por destrozar cosas, morder a otros amiguitos y ser muy territorial.'),
(40, 89, '_resumen', 'field_5df708de74a83'),
(41, 89, '_yoast_wpseo_content_score', '90'),
(42, 92, '_wp_attached_file', '2019/12/banner_bianca.png'),
(43, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:440;s:4:\"file\";s:25:\"2019/12/banner_bianca.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"banner_bianca-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"banner_bianca-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 91, '_edit_last', '1'),
(45, 91, '_edit_lock', '1576667298:1'),
(46, 91, '_thumbnail_id', '92'),
(47, 91, 'date', 'Mestiza - 4 años'),
(48, 91, '_date', 'field_5df708b674a81'),
(49, 91, 'tag', 'Expediente'),
(50, 91, '_tag', 'field_5df708c874a82'),
(51, 91, 'resumen', 'Perrita rescatada. Ingresó a la escuela para rehabilitación, tenía miedo de salir a pasear y mostraba agresividad.'),
(52, 91, '_resumen', 'field_5df708de74a83'),
(53, 91, '_yoast_wpseo_content_score', '60'),
(54, 93, '_edit_last', '1'),
(55, 93, '_edit_lock', '1576863921:1'),
(56, 94, '_wp_attached_file', '2019/12/banner_zeus.png'),
(57, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:440;s:4:\"file\";s:23:\"2019/12/banner_zeus.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"banner_zeus-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"banner_zeus-300x210.png\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 93, '_thumbnail_id', '94'),
(59, 93, 'date', 'Rottweiller - 3 años'),
(60, 93, '_date', 'field_5df708b674a81'),
(61, 93, 'tag', 'Expediente'),
(62, 93, '_tag', 'field_5df708c874a82'),
(63, 93, 'resumen', 'Recibió entrenamiento especializado para ser policía. Ahora es un profesional de la detección de sustancias y drogas.'),
(64, 93, '_resumen', 'field_5df708de74a83'),
(65, 93, '_yoast_wpseo_content_score', '60'),
(66, 96, '_wp_attached_file', '2019/12/Screenshot_64.png'),
(67, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:281;s:6:\"height\";i:210;s:4:\"file\";s:25:\"2019/12/Screenshot_64.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Screenshot_64-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 1, '_edit_last', '1'),
(69, 1, '_thumbnail_id', '96'),
(71, 1, '_yoast_wpseo_content_score', '90'),
(72, 1, 'date', '5 de nov. 2019'),
(73, 1, '_date', 'field_5df70a95a6f4a'),
(74, 97, 'date', ''),
(75, 97, '_date', 'field_5df70a95a6f4a'),
(76, 1, '_yoast_wpseo_primary_category', ''),
(78, 98, 'date', '5 de nov. 2019'),
(79, 98, '_date', 'field_5df70a95a6f4a'),
(80, 99, '_edit_last', '1'),
(81, 99, '_edit_lock', '1576667606:1'),
(82, 99, '_thumbnail_id', '96'),
(84, 99, '_yoast_wpseo_content_score', '60'),
(85, 99, 'date', '5 de nov. 2019'),
(86, 99, '_date', 'field_5df70a95a6f4a'),
(87, 100, 'date', '5 de nov. 2019'),
(88, 100, '_date', 'field_5df70a95a6f4a'),
(89, 99, '_yoast_wpseo_primary_category', ''),
(90, 101, '_edit_last', '1'),
(91, 101, '_edit_lock', '1576667639:1'),
(92, 101, '_thumbnail_id', '96'),
(94, 101, '_yoast_wpseo_content_score', '30'),
(95, 101, 'date', '5 de nov. 2019'),
(96, 101, '_date', 'field_5df70a95a6f4a'),
(97, 102, 'date', '5 de nov. 2019'),
(98, 102, '_date', 'field_5df70a95a6f4a'),
(99, 101, '_yoast_wpseo_primary_category', ''),
(100, 2, '_edit_lock', '1576869628:1'),
(101, 2, '_edit_last', '1'),
(102, 2, '_yoast_wpseo_content_score', '60'),
(103, 2, 'banner', '2'),
(104, 2, '_banner', 'field_5df70625e336d'),
(105, 2, 'iframe_video', '<iframe src=\"https://www.youtube.com/embed/w8C0pPO2-UI\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>'),
(106, 2, '_iframe_video', 'field_5df706b1e3371'),
(107, 2, 'title_services', 'Ofrecemos la mejor <b>atención para tu mascota</b>'),
(108, 2, '_title_services', 'field_5df706cee3372'),
(109, 2, 'subtitle_services', 'Descubre nuestros servicios especializados.'),
(110, 2, '_subtitle_services', 'field_5df706e4e3373'),
(111, 2, 'services', '5'),
(112, 2, '_services', 'field_5df706fce3374'),
(113, 2, 'title_promotional', 'Todos nuestros servicios <b>incluyen</b>'),
(114, 2, '_title_promotional', 'field_5df707fee337a'),
(115, 2, 'promotional', '3'),
(116, 2, '_promotional', 'field_5df70810e337b'),
(117, 2, 'title_casos', 'Resultados que <b>garantizan nuestra experiencia</b>'),
(118, 2, '_title_casos', 'field_5df7084fe337e'),
(119, 2, 'subtitle_casos', 'Mira nuestros casos de éxito.'),
(120, 2, '_subtitle_casos', 'field_5df70874e337f'),
(121, 2, 'title_about', '¿Por qué <b>confiar en Maskot Sport?</b>'),
(122, 2, '_title_about', 'field_5df70890e3380'),
(123, 2, 'subtitle_about', 'Somos profesionales con más de 15 años de experiencia con acreditaciones internacionales en adiestramiento y psicología canina.'),
(124, 2, '_subtitle_about', 'field_5df7090fd6827'),
(125, 2, 'imagen_about', '115'),
(126, 2, '_imagen_about', 'field_5df70927d6828'),
(127, 2, 'title_blog', 'Entérate de las <b>últimas novedades de la escuela</b>'),
(128, 2, '_title_blog', 'field_5df70a0dd682b'),
(129, 2, 'subtitle_blog', 'Lee nuestra sección de noticias.'),
(130, 2, '_subtitle_blog', 'field_5df70a61d682c'),
(131, 103, 'banner', ''),
(132, 103, '_banner', 'field_5df70625e336d'),
(133, 103, 'iframe_video', ''),
(134, 103, '_iframe_video', 'field_5df706b1e3371'),
(135, 103, 'title_services', ''),
(136, 103, '_title_services', 'field_5df706cee3372'),
(137, 103, 'subtitle_services', ''),
(138, 103, '_subtitle_services', 'field_5df706e4e3373'),
(139, 103, 'services', ''),
(140, 103, '_services', 'field_5df706fce3374'),
(141, 103, 'title_promotional', ''),
(142, 103, '_title_promotional', 'field_5df707fee337a'),
(143, 103, 'promotional', ''),
(144, 103, '_promotional', 'field_5df70810e337b'),
(145, 103, 'title_casos', ''),
(146, 103, '_title_casos', 'field_5df7084fe337e'),
(147, 103, 'subtitle_casos', ''),
(148, 103, '_subtitle_casos', 'field_5df70874e337f'),
(149, 103, 'title_about', ''),
(150, 103, '_title_about', 'field_5df70890e3380'),
(151, 103, 'subtitle_about', ''),
(152, 103, '_subtitle_about', 'field_5df7090fd6827'),
(153, 103, 'imagen_about', ''),
(154, 103, '_imagen_about', 'field_5df70927d6828'),
(155, 103, 'title_blog', ''),
(156, 103, '_title_blog', 'field_5df70a0dd682b'),
(157, 103, 'subtitle_blog', ''),
(158, 103, '_subtitle_blog', 'field_5df70a61d682c'),
(159, 105, '_wp_attached_file', '2019/12/home.png'),
(160, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1104;s:4:\"file\";s:16:\"2019/12/home.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"home-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"home-300x255.png\";s:5:\"width\";i:300;s:6:\"height\";i:255;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"home-768x652.png\";s:5:\"width\";i:768;s:6:\"height\";i:652;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"home-1024x870.png\";s:5:\"width\";i:1024;s:6:\"height\";i:870;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 106, '_wp_attached_file', '2019/12/Servicio-4.svg'),
(162, 107, '_wp_attached_file', '2019/12/Servicio-5.svg'),
(163, 108, '_wp_attached_file', '2019/12/Servicio-1.svg'),
(164, 109, '_wp_attached_file', '2019/12/Servicio-2.svg'),
(165, 110, '_wp_attached_file', '2019/12/Servicio-3.svg'),
(166, 111, '_wp_attached_file', '2019/12/icono-3.svg'),
(167, 112, '_wp_attached_file', '2019/12/icono-1.svg'),
(168, 113, '_wp_attached_file', '2019/12/icono-2.svg'),
(169, 2, '_thumbnail_id', '105'),
(170, 2, 'banner_0_title', 'Somos especialistas <b>en conducta canina y lenguaje animal</b>'),
(171, 2, '_banner_0_title', 'field_5df70685e336e'),
(172, 2, 'banner_0_subtitle', '¡Un perro equilibrado es un perro feliz!'),
(173, 2, '_banner_0_subtitle', 'field_5df7068ae336f'),
(174, 2, 'banner_0_imagen', '105'),
(175, 2, '_banner_0_imagen', 'field_5df70699e3370'),
(176, 2, 'banner_1_title', 'Somos especialistas <b>en conducta canina y lenguaje animal</b>'),
(177, 2, '_banner_1_title', 'field_5df70685e336e'),
(178, 2, 'banner_1_subtitle', '¡Un perro equilibrado es un perro feliz!'),
(179, 2, '_banner_1_subtitle', 'field_5df7068ae336f'),
(180, 2, 'banner_1_imagen', '105'),
(181, 2, '_banner_1_imagen', 'field_5df70699e3370'),
(182, 2, 'services_0_k9', '0'),
(183, 2, '_services_0_k9', 'field_5df70733e3375'),
(184, 2, 'services_0_link', ''),
(185, 2, '_services_0_link', 'field_5df7076ae3376'),
(186, 2, 'services_0_imagen', '108'),
(187, 2, '_services_0_imagen', 'field_5df7078ae3377'),
(188, 2, 'services_0_title', 'Adiestramiento canino'),
(189, 2, '_services_0_title', 'field_5df707a4e3378'),
(190, 2, 'services_0_content', 'Logramos el objetivo que tu mascota necesita'),
(191, 2, '_services_0_content', 'field_5df707afe3379'),
(192, 2, 'services_1_k9', '0'),
(193, 2, '_services_1_k9', 'field_5df70733e3375'),
(194, 2, 'services_1_link', ''),
(195, 2, '_services_1_link', 'field_5df7076ae3376'),
(196, 2, 'services_1_imagen', '109'),
(197, 2, '_services_1_imagen', 'field_5df7078ae3377'),
(198, 2, 'services_1_title', 'Hospedaje canino'),
(199, 2, '_services_1_title', 'field_5df707a4e3378'),
(200, 2, 'services_1_content', 'Tu engreído tendrá una estadía con mucha diversión'),
(201, 2, '_services_1_content', 'field_5df707afe3379'),
(202, 2, 'services_2_k9', '0'),
(203, 2, '_services_2_k9', 'field_5df70733e3375'),
(204, 2, 'services_2_link', ''),
(205, 2, '_services_2_link', 'field_5df7076ae3376'),
(206, 2, 'services_2_imagen', '110'),
(207, 2, '_services_2_imagen', 'field_5df7078ae3377'),
(208, 2, 'services_2_title', 'Paseos divertidos'),
(209, 2, '_services_2_title', 'field_5df707a4e3378'),
(210, 2, 'services_2_content', 'Largos minutos de paseo, juegos y aprendizaje'),
(211, 2, '_services_2_content', 'field_5df707afe3379'),
(212, 2, 'services_3_k9', '0'),
(213, 2, '_services_3_k9', 'field_5df70733e3375'),
(214, 2, 'services_3_link', ''),
(215, 2, '_services_3_link', 'field_5df7076ae3376'),
(216, 2, 'services_3_imagen', '106'),
(217, 2, '_services_3_imagen', 'field_5df7078ae3377'),
(218, 2, 'services_3_title', 'Baños relajantes'),
(219, 2, '_services_3_title', 'field_5df707a4e3378'),
(220, 2, 'services_3_content', 'Un baño relajante, después de jugar es lo mejor.'),
(221, 2, '_services_3_content', 'field_5df707afe3379'),
(222, 2, 'services_4_k9', '1'),
(223, 2, '_services_4_k9', 'field_5df70733e3375'),
(224, 2, 'services_4_link', ''),
(225, 2, '_services_4_link', 'field_5df7076ae3376'),
(226, 2, 'services_4_imagen', '107'),
(227, 2, '_services_4_imagen', 'field_5df7078ae3377'),
(228, 2, 'services_4_title', 'Servicios <b>Especiales K9</b>'),
(229, 2, '_services_4_title', 'field_5df707a4e3378'),
(230, 2, 'services_4_content', 'Programas de adiestramiento para investigación y resguardo'),
(231, 2, '_services_4_content', 'field_5df707afe3379'),
(232, 2, 'promotional_0_imagen', '112'),
(233, 2, '_promotional_0_imagen', 'field_5df7082be337c'),
(234, 2, 'promotional_0_title', 'Asistencia veterinaria'),
(235, 2, '_promotional_0_title', 'field_5df7083de337d'),
(236, 2, 'promotional_1_imagen', '113'),
(237, 2, '_promotional_1_imagen', 'field_5df7082be337c'),
(238, 2, 'promotional_1_title', 'Supervisión y cuidado'),
(239, 2, '_promotional_1_title', 'field_5df7083de337d'),
(240, 2, 'promotional_2_imagen', '111'),
(241, 2, '_promotional_2_imagen', 'field_5df7082be337c'),
(242, 2, 'promotional_2_title', 'Envío diario de fotos y videos'),
(243, 2, '_promotional_2_title', 'field_5df7083de337d'),
(244, 114, 'banner', '2'),
(245, 114, '_banner', 'field_5df70625e336d'),
(246, 114, 'iframe_video', '<iframe src=\"https://www.youtube.com/embed/w8C0pPO2-UI\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>'),
(247, 114, '_iframe_video', 'field_5df706b1e3371'),
(248, 114, 'title_services', 'Ofrecemos la mejor <b>atención para tu mascota</b>'),
(249, 114, '_title_services', 'field_5df706cee3372'),
(250, 114, 'subtitle_services', 'Descubre nuestros servicios especializados.'),
(251, 114, '_subtitle_services', 'field_5df706e4e3373'),
(252, 114, 'services', '5'),
(253, 114, '_services', 'field_5df706fce3374'),
(254, 114, 'title_promotional', 'Todos nuestros servicios <b>incluyen</b>'),
(255, 114, '_title_promotional', 'field_5df707fee337a'),
(256, 114, 'promotional', '3'),
(257, 114, '_promotional', 'field_5df70810e337b'),
(258, 114, 'title_casos', ''),
(259, 114, '_title_casos', 'field_5df7084fe337e'),
(260, 114, 'subtitle_casos', ''),
(261, 114, '_subtitle_casos', 'field_5df70874e337f'),
(262, 114, 'title_about', '¿Por qué <b>confiar en Maskot Sport?</b>'),
(263, 114, '_title_about', 'field_5df70890e3380'),
(264, 114, 'subtitle_about', 'Somos profesionales con más de 15 años de experiencia con acreditaciones internacionales en adiestramiento y psicología canina.'),
(265, 114, '_subtitle_about', 'field_5df7090fd6827'),
(266, 114, 'imagen_about', ''),
(267, 114, '_imagen_about', 'field_5df70927d6828'),
(268, 114, 'title_blog', ''),
(269, 114, '_title_blog', 'field_5df70a0dd682b'),
(270, 114, 'subtitle_blog', ''),
(271, 114, '_subtitle_blog', 'field_5df70a61d682c'),
(272, 114, 'banner_0_title', 'Somos especialistas <b>en conducta canina y lenguaje animal</b>'),
(273, 114, '_banner_0_title', 'field_5df70685e336e'),
(274, 114, 'banner_0_subtitle', '¡Un perro equilibrado es un perro feliz!'),
(275, 114, '_banner_0_subtitle', 'field_5df7068ae336f'),
(276, 114, 'banner_0_imagen', '105'),
(277, 114, '_banner_0_imagen', 'field_5df70699e3370'),
(278, 114, 'banner_1_title', 'Somos especialistas <b>en conducta canina y lenguaje animal</b>'),
(279, 114, '_banner_1_title', 'field_5df70685e336e'),
(280, 114, 'banner_1_subtitle', '¡Un perro equilibrado es un perro feliz!'),
(281, 114, '_banner_1_subtitle', 'field_5df7068ae336f'),
(282, 114, 'banner_1_imagen', '105'),
(283, 114, '_banner_1_imagen', 'field_5df70699e3370'),
(284, 114, 'services_0_k9', '0'),
(285, 114, '_services_0_k9', 'field_5df70733e3375'),
(286, 114, 'services_0_link', ''),
(287, 114, '_services_0_link', 'field_5df7076ae3376'),
(288, 114, 'services_0_imagen', '108'),
(289, 114, '_services_0_imagen', 'field_5df7078ae3377'),
(290, 114, 'services_0_title', 'Adiestramiento canino'),
(291, 114, '_services_0_title', 'field_5df707a4e3378'),
(292, 114, 'services_0_content', 'Logramos el objetivo que tu mascota necesita'),
(293, 114, '_services_0_content', 'field_5df707afe3379'),
(294, 114, 'services_1_k9', '0'),
(295, 114, '_services_1_k9', 'field_5df70733e3375'),
(296, 114, 'services_1_link', ''),
(297, 114, '_services_1_link', 'field_5df7076ae3376'),
(298, 114, 'services_1_imagen', '109'),
(299, 114, '_services_1_imagen', 'field_5df7078ae3377'),
(300, 114, 'services_1_title', 'Hospedaje canino'),
(301, 114, '_services_1_title', 'field_5df707a4e3378'),
(302, 114, 'services_1_content', 'Tu engreído tendrá una estadía con mucha diversión'),
(303, 114, '_services_1_content', 'field_5df707afe3379'),
(304, 114, 'services_2_k9', '0'),
(305, 114, '_services_2_k9', 'field_5df70733e3375'),
(306, 114, 'services_2_link', ''),
(307, 114, '_services_2_link', 'field_5df7076ae3376'),
(308, 114, 'services_2_imagen', '110'),
(309, 114, '_services_2_imagen', 'field_5df7078ae3377'),
(310, 114, 'services_2_title', 'Paseos divertidos'),
(311, 114, '_services_2_title', 'field_5df707a4e3378'),
(312, 114, 'services_2_content', 'Largos minutos de paseo, juegos y aprendizaje'),
(313, 114, '_services_2_content', 'field_5df707afe3379'),
(314, 114, 'services_3_k9', '0'),
(315, 114, '_services_3_k9', 'field_5df70733e3375'),
(316, 114, 'services_3_link', ''),
(317, 114, '_services_3_link', 'field_5df7076ae3376'),
(318, 114, 'services_3_imagen', '106'),
(319, 114, '_services_3_imagen', 'field_5df7078ae3377'),
(320, 114, 'services_3_title', 'Baños relajantes'),
(321, 114, '_services_3_title', 'field_5df707a4e3378'),
(322, 114, 'services_3_content', 'Un baño relajante, después de jugar es lo mejor.'),
(323, 114, '_services_3_content', 'field_5df707afe3379'),
(324, 114, 'services_4_k9', '1'),
(325, 114, '_services_4_k9', 'field_5df70733e3375'),
(326, 114, 'services_4_link', ''),
(327, 114, '_services_4_link', 'field_5df7076ae3376'),
(328, 114, 'services_4_imagen', '107'),
(329, 114, '_services_4_imagen', 'field_5df7078ae3377'),
(330, 114, 'services_4_title', 'Servicios <b>Especiales K9</b>'),
(331, 114, '_services_4_title', 'field_5df707a4e3378'),
(332, 114, 'services_4_content', 'Programas de adiestramiento para investigación y resguardo'),
(333, 114, '_services_4_content', 'field_5df707afe3379'),
(334, 114, 'promotional_0_imagen', '112'),
(335, 114, '_promotional_0_imagen', 'field_5df7082be337c'),
(336, 114, 'promotional_0_title', 'Asistencia veterinaria'),
(337, 114, '_promotional_0_title', 'field_5df7083de337d'),
(338, 114, 'promotional_1_imagen', '113'),
(339, 114, '_promotional_1_imagen', 'field_5df7082be337c'),
(340, 114, 'promotional_1_title', 'Supervisión y cuidado'),
(341, 114, '_promotional_1_title', 'field_5df7083de337d'),
(342, 114, 'promotional_2_imagen', '111'),
(343, 114, '_promotional_2_imagen', 'field_5df7082be337c'),
(344, 114, 'promotional_2_title', 'Envío diario de fotos y videos'),
(345, 114, '_promotional_2_title', 'field_5df7083de337d'),
(346, 115, '_wp_attached_file', '2019/12/staff.png'),
(347, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1020;s:4:\"file\";s:17:\"2019/12/staff.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"staff-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"staff-300x255.png\";s:5:\"width\";i:300;s:6:\"height\";i:255;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"staff-768x653.png\";s:5:\"width\";i:768;s:6:\"height\";i:653;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"staff-1024x870.png\";s:5:\"width\";i:1024;s:6:\"height\";i:870;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 116, 'banner', '2'),
(349, 116, '_banner', 'field_5df70625e336d'),
(350, 116, 'iframe_video', '<iframe src=\"https://www.youtube.com/embed/w8C0pPO2-UI\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>'),
(351, 116, '_iframe_video', 'field_5df706b1e3371'),
(352, 116, 'title_services', 'Ofrecemos la mejor <b>atención para tu mascota</b>'),
(353, 116, '_title_services', 'field_5df706cee3372'),
(354, 116, 'subtitle_services', 'Descubre nuestros servicios especializados.'),
(355, 116, '_subtitle_services', 'field_5df706e4e3373'),
(356, 116, 'services', '5'),
(357, 116, '_services', 'field_5df706fce3374'),
(358, 116, 'title_promotional', 'Todos nuestros servicios <b>incluyen</b>'),
(359, 116, '_title_promotional', 'field_5df707fee337a'),
(360, 116, 'promotional', '3'),
(361, 116, '_promotional', 'field_5df70810e337b'),
(362, 116, 'title_casos', 'Resultados que <b>garantizan nuestra experiencia</b>'),
(363, 116, '_title_casos', 'field_5df7084fe337e'),
(364, 116, 'subtitle_casos', 'Mira nuestros casos de éxito.'),
(365, 116, '_subtitle_casos', 'field_5df70874e337f'),
(366, 116, 'title_about', '¿Por qué <b>confiar en Maskot Sport?</b>'),
(367, 116, '_title_about', 'field_5df70890e3380'),
(368, 116, 'subtitle_about', 'Somos profesionales con más de 15 años de experiencia con acreditaciones internacionales en adiestramiento y psicología canina.'),
(369, 116, '_subtitle_about', 'field_5df7090fd6827'),
(370, 116, 'imagen_about', '115'),
(371, 116, '_imagen_about', 'field_5df70927d6828'),
(372, 116, 'title_blog', 'Entérate de las <b>últimas novedades de la escuela</b>'),
(373, 116, '_title_blog', 'field_5df70a0dd682b'),
(374, 116, 'subtitle_blog', 'Lee nuestra sección de noticias.'),
(375, 116, '_subtitle_blog', 'field_5df70a61d682c'),
(376, 116, 'banner_0_title', 'Somos especialistas <b>en conducta canina y lenguaje animal</b>'),
(377, 116, '_banner_0_title', 'field_5df70685e336e'),
(378, 116, 'banner_0_subtitle', '¡Un perro equilibrado es un perro feliz!'),
(379, 116, '_banner_0_subtitle', 'field_5df7068ae336f'),
(380, 116, 'banner_0_imagen', '105'),
(381, 116, '_banner_0_imagen', 'field_5df70699e3370'),
(382, 116, 'banner_1_title', 'Somos especialistas <b>en conducta canina y lenguaje animal</b>'),
(383, 116, '_banner_1_title', 'field_5df70685e336e'),
(384, 116, 'banner_1_subtitle', '¡Un perro equilibrado es un perro feliz!'),
(385, 116, '_banner_1_subtitle', 'field_5df7068ae336f'),
(386, 116, 'banner_1_imagen', '105'),
(387, 116, '_banner_1_imagen', 'field_5df70699e3370'),
(388, 116, 'services_0_k9', '0'),
(389, 116, '_services_0_k9', 'field_5df70733e3375'),
(390, 116, 'services_0_link', ''),
(391, 116, '_services_0_link', 'field_5df7076ae3376'),
(392, 116, 'services_0_imagen', '108'),
(393, 116, '_services_0_imagen', 'field_5df7078ae3377'),
(394, 116, 'services_0_title', 'Adiestramiento canino'),
(395, 116, '_services_0_title', 'field_5df707a4e3378'),
(396, 116, 'services_0_content', 'Logramos el objetivo que tu mascota necesita'),
(397, 116, '_services_0_content', 'field_5df707afe3379'),
(398, 116, 'services_1_k9', '0'),
(399, 116, '_services_1_k9', 'field_5df70733e3375'),
(400, 116, 'services_1_link', ''),
(401, 116, '_services_1_link', 'field_5df7076ae3376'),
(402, 116, 'services_1_imagen', '109'),
(403, 116, '_services_1_imagen', 'field_5df7078ae3377'),
(404, 116, 'services_1_title', 'Hospedaje canino'),
(405, 116, '_services_1_title', 'field_5df707a4e3378'),
(406, 116, 'services_1_content', 'Tu engreído tendrá una estadía con mucha diversión'),
(407, 116, '_services_1_content', 'field_5df707afe3379'),
(408, 116, 'services_2_k9', '0'),
(409, 116, '_services_2_k9', 'field_5df70733e3375'),
(410, 116, 'services_2_link', ''),
(411, 116, '_services_2_link', 'field_5df7076ae3376'),
(412, 116, 'services_2_imagen', '110'),
(413, 116, '_services_2_imagen', 'field_5df7078ae3377'),
(414, 116, 'services_2_title', 'Paseos divertidos'),
(415, 116, '_services_2_title', 'field_5df707a4e3378'),
(416, 116, 'services_2_content', 'Largos minutos de paseo, juegos y aprendizaje'),
(417, 116, '_services_2_content', 'field_5df707afe3379'),
(418, 116, 'services_3_k9', '0'),
(419, 116, '_services_3_k9', 'field_5df70733e3375'),
(420, 116, 'services_3_link', ''),
(421, 116, '_services_3_link', 'field_5df7076ae3376'),
(422, 116, 'services_3_imagen', '106'),
(423, 116, '_services_3_imagen', 'field_5df7078ae3377'),
(424, 116, 'services_3_title', 'Baños relajantes'),
(425, 116, '_services_3_title', 'field_5df707a4e3378'),
(426, 116, 'services_3_content', 'Un baño relajante, después de jugar es lo mejor.'),
(427, 116, '_services_3_content', 'field_5df707afe3379'),
(428, 116, 'services_4_k9', '1'),
(429, 116, '_services_4_k9', 'field_5df70733e3375'),
(430, 116, 'services_4_link', ''),
(431, 116, '_services_4_link', 'field_5df7076ae3376'),
(432, 116, 'services_4_imagen', '107'),
(433, 116, '_services_4_imagen', 'field_5df7078ae3377'),
(434, 116, 'services_4_title', 'Servicios <b>Especiales K9</b>'),
(435, 116, '_services_4_title', 'field_5df707a4e3378'),
(436, 116, 'services_4_content', 'Programas de adiestramiento para investigación y resguardo'),
(437, 116, '_services_4_content', 'field_5df707afe3379'),
(438, 116, 'promotional_0_imagen', '112'),
(439, 116, '_promotional_0_imagen', 'field_5df7082be337c'),
(440, 116, 'promotional_0_title', 'Asistencia veterinaria'),
(441, 116, '_promotional_0_title', 'field_5df7083de337d'),
(442, 116, 'promotional_1_imagen', '113'),
(443, 116, '_promotional_1_imagen', 'field_5df7082be337c'),
(444, 116, 'promotional_1_title', 'Supervisión y cuidado'),
(445, 116, '_promotional_1_title', 'field_5df7083de337d'),
(446, 116, 'promotional_2_imagen', '111'),
(447, 116, '_promotional_2_imagen', 'field_5df7082be337c'),
(448, 116, 'promotional_2_title', 'Envío diario de fotos y videos'),
(449, 116, '_promotional_2_title', 'field_5df7083de337d'),
(450, 117, '_menu_item_type', 'post_type'),
(451, 117, '_menu_item_menu_item_parent', '0'),
(452, 117, '_menu_item_object_id', '2'),
(453, 117, '_menu_item_object', 'page'),
(454, 117, '_menu_item_target', ''),
(455, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(456, 117, '_menu_item_xfn', ''),
(457, 117, '_menu_item_url', ''),
(458, 117, '_menu_item_orphaned', '1576668821'),
(459, 118, '_menu_item_type', 'post_type'),
(460, 118, '_menu_item_menu_item_parent', '0'),
(461, 118, '_menu_item_object_id', '2'),
(462, 118, '_menu_item_object', 'page'),
(463, 118, '_menu_item_target', ''),
(464, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(465, 118, '_menu_item_xfn', ''),
(466, 118, '_menu_item_url', ''),
(467, 118, '_menu_item_orphaned', '1576668821'),
(468, 119, '_menu_item_type', 'custom'),
(469, 119, '_menu_item_menu_item_parent', '0'),
(470, 119, '_menu_item_object_id', '119'),
(471, 119, '_menu_item_object', 'custom'),
(472, 119, '_menu_item_target', ''),
(473, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(474, 119, '_menu_item_xfn', ''),
(475, 119, '_menu_item_url', '#'),
(477, 120, '_menu_item_type', 'custom'),
(478, 120, '_menu_item_menu_item_parent', '0'),
(479, 120, '_menu_item_object_id', '120'),
(480, 120, '_menu_item_object', 'custom'),
(481, 120, '_menu_item_target', ''),
(482, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(483, 120, '_menu_item_xfn', ''),
(484, 120, '_menu_item_url', '/casos-exito'),
(486, 121, '_menu_item_type', 'custom'),
(487, 121, '_menu_item_menu_item_parent', '0'),
(488, 121, '_menu_item_object_id', '121'),
(489, 121, '_menu_item_object', 'custom'),
(490, 121, '_menu_item_target', ''),
(491, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(492, 121, '_menu_item_xfn', ''),
(493, 121, '_menu_item_url', '#'),
(495, 122, '_menu_item_type', 'custom'),
(496, 122, '_menu_item_menu_item_parent', '0'),
(497, 122, '_menu_item_object_id', '122'),
(498, 122, '_menu_item_object', 'custom'),
(499, 122, '_menu_item_target', ''),
(500, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(501, 122, '_menu_item_xfn', ''),
(502, 122, '_menu_item_url', '#'),
(504, 123, '_edit_last', '1'),
(505, 123, '_edit_lock', '1576866617:1'),
(506, 123, '_thumbnail_id', '96'),
(508, 123, '_yoast_wpseo_content_score', '30'),
(509, 123, 'date', ''),
(510, 123, '_date', 'field_5df70a95a6f4a'),
(511, 124, 'date', ''),
(512, 124, '_date', 'field_5df70a95a6f4a'),
(513, 123, '_yoast_wpseo_primary_category', ''),
(515, 125, '_edit_last', '1'),
(516, 125, '_edit_lock', '1576869786:1'),
(517, 125, '_wp_trash_meta_status', 'draft'),
(518, 125, '_wp_trash_meta_time', '1576870961'),
(519, 125, '_wp_desired_post_slug', ''),
(520, 89, 'iframe_video', ''),
(521, 89, '_iframe_video', 'field_5dfd2c4e66325'),
(522, 89, 'antes_title', 'Antes'),
(523, 89, '_antes_title', 'field_5dfd2c5766326'),
(524, 89, 'antes_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in elementum eros. In sit amet dignissim arcu, in euismod tellus. Sed vitae enim augue. Cras in nibh et ... Leer más'),
(525, 89, '_antes_content', 'field_5dfd2cc46632e'),
(526, 89, 'antes_imagenes_0_video', '0'),
(527, 89, '_antes_imagenes_0_video', 'field_5dfd2c6a66328'),
(528, 89, 'antes_imagenes_0_imagen', '96'),
(529, 89, '_antes_imagenes_0_imagen', 'field_5dfd2c8d66329'),
(530, 89, 'antes_imagenes_0_videoiframe', ''),
(531, 89, '_antes_imagenes_0_videoiframe', 'field_5dfd2c946632a'),
(532, 89, 'antes_imagenes', '1'),
(533, 89, '_antes_imagenes', 'field_5dfd2c6166327'),
(534, 89, 'time_adiestramiento', '12 semanas de adiestramiento'),
(535, 89, '_time_adiestramiento', 'field_5dfd2c9f6632b'),
(536, 89, 'despues_title', 'Despues'),
(537, 89, '_despues_title', 'field_5dfd2ca66632c'),
(538, 89, 'despues_content', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in elementum eros. In sit amet dignissim arcu, in euismod tellus. Sed vitae enim augue. Cras in nibh et ... Leer más'),
(539, 89, '_despues_content', 'field_5dfd2cad6632d'),
(540, 89, 'despues_imagenes', '1'),
(541, 89, '_despues_imagenes', 'field_5dfd2cdd6632f'),
(542, 89, 'title_casos', 'Mira otros casos similares'),
(543, 89, '_title_casos', 'field_5dfd2d1966333'),
(544, 89, 'despues_imagenes_0_video', '0'),
(545, 89, '_despues_imagenes_0_video', 'field_5dfd2ce666330'),
(546, 89, 'despues_imagenes_0_imagen', '96'),
(547, 89, '_despues_imagenes_0_imagen', 'field_5dfd2d0266331'),
(548, 89, 'despues_imagenes_0_videoiframe', ''),
(549, 89, '_despues_imagenes_0_videoiframe', 'field_5dfd2d0a66332');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_posts`
--

CREATE TABLE `ms_posts` (
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
-- Volcado de datos para la tabla `ms_posts`
--

INSERT INTO `ms_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-12-08 16:43:31', '2019-12-08 16:43:31', '<!-- wp:paragraph -->\r\n<p>Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!</p>\r\n<!-- /wp:paragraph -->', 'Maskot Sport en la ExpoMascotas Perú', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2019-12-18 11:15:16', '2019-12-18 11:15:16', '', 0, 'http://dev.maskotsport.com/?p=1', 0, 'post', '', 1),
(2, 1, '2019-12-08 16:43:31', '2019-12-08 16:43:31', '¡Un perro equilibrado es un perro feliz!', 'Somos especialistas <b>en conducta canina y lenguaje animal</b>', '', 'publish', 'closed', 'open', '', 'pagina-de-ejemplo', '', '', '2019-12-18 11:30:03', '2019-12-18 11:30:03', '', 0, 'http://dev.maskotsport.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-12-08 16:43:31', '2019-12-08 16:43:31', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://dev.maskotsport.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Multimedia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-12-08 16:43:31', '2019-12-08 16:43:31', '', 0, 'http://dev.maskotsport.com/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-12-08 16:44:12', '2019-12-08 16:44:12', '<label> Tu nombre (requerido)\n    [text* your-name] </label>\n\n<label> Tu correo electrónico (requerido)\n    [email* your-email] </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Tu mensaje\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]\nMaskot Sport \"[your-subject]\"\nMaskot Sport <wordpress@dev.maskotsport.com>\nDe: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Maskot Sport (http://dev.maskotsport.com)\nfrankdelarosacampos@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nMaskot Sport \"[your-subject]\"\nMaskot Sport <wordpress@dev.maskotsport.com>\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Maskot Sport (http://dev.maskotsport.com)\n[your-email]\nReply-To: frankdelarosacampos@gmail.com\n\n0\n0\nGracias por tu mensaje. Ha sido enviado.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.', 'Formulario de contacto 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2019-12-08 16:44:12', '2019-12-08 16:44:12', '', 0, 'http://dev.maskotsport.com/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2019-12-16 03:52:31', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-16 03:52:31', '0000-00-00 00:00:00', '', 0, 'http://dev.maskotsport.com/?p=8', 0, 'post', '', 0),
(9, 1, '2019-12-16 04:15:11', '2019-12-16 04:15:11', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'options', 'options', 'publish', 'closed', 'closed', '', 'group_5df70429a3d8d', '', '', '2019-12-18 10:56:19', '2019-12-18 10:56:19', '', 0, 'http://dev.maskotsport.com/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2019-12-16 04:15:11', '2019-12-16 04:15:11', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5df7049692f33', '', '', '2019-12-16 04:15:11', '2019-12-16 04:15:11', '', 9, 'http://dev.maskotsport.com/?post_type=acf-field&p=10', 0, 'acf-field', '', 0),
(11, 1, '2019-12-16 04:15:11', '2019-12-16 04:15:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'numero whatssapp', 'wsp_number', 'publish', 'closed', 'closed', '', 'field_5df704a892f34', '', '', '2019-12-16 04:15:11', '2019-12-16 04:15:11', '', 9, 'http://dev.maskotsport.com/?post_type=acf-field&p=11', 1, 'acf-field', '', 0),
(12, 1, '2019-12-16 04:19:37', '2019-12-16 04:19:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título visita', 'visita_title', 'publish', 'closed', 'closed', '', 'field_5df704e6a977a', '', '', '2019-12-16 04:19:37', '2019-12-16 04:19:37', '', 9, 'http://dev.maskotsport.com/?post_type=acf-field&p=12', 2, 'acf-field', '', 0),
(13, 1, '2019-12-16 04:19:37', '2019-12-16 04:19:37', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Contenido visita', 'visita_content', 'publish', 'closed', 'closed', '', 'field_5df70501a977b', '', '', '2019-12-16 04:19:37', '2019-12-16 04:19:37', '', 9, 'http://dev.maskotsport.com/?post_type=acf-field&p=13', 3, 'acf-field', '', 0),
(14, 1, '2019-12-16 04:19:37', '2019-12-16 04:19:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dirección visita', 'visita_direction', 'publish', 'closed', 'closed', '', 'field_5df70527a977c', '', '', '2019-12-16 04:19:37', '2019-12-16 04:19:37', '', 9, 'http://dev.maskotsport.com/?post_type=acf-field&p=14', 4, 'acf-field', '', 0),
(15, 1, '2019-12-16 04:19:37', '2019-12-16 04:19:37', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descripción Contacto', 'contact_description', 'publish', 'closed', 'closed', '', 'field_5df70542a977d', '', '', '2019-12-18 10:56:19', '2019-12-18 10:56:19', '', 9, 'http://dev.maskotsport.com/?post_type=acf-field&#038;p=15', 5, 'acf-field', '', 0),
(16, 1, '2019-12-16 04:19:37', '2019-12-16 04:19:37', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'social', 'social', 'publish', 'closed', 'closed', '', 'field_5df7055ea977e', '', '', '2019-12-16 04:19:37', '2019-12-16 04:19:37', '', 9, 'http://dev.maskotsport.com/?post_type=acf-field&p=16', 6, 'acf-field', '', 0),
(17, 1, '2019-12-16 04:19:37', '2019-12-16 04:19:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_5df705a0a977f', '', '', '2019-12-16 04:19:37', '2019-12-16 04:19:37', '', 16, 'http://dev.maskotsport.com/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2019-12-16 04:19:37', '2019-12-16 04:19:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5df705a5a9780', '', '', '2019-12-16 04:19:37', '2019-12-16 04:19:37', '', 16, 'http://dev.maskotsport.com/?post_type=acf-field&p=18', 1, 'acf-field', '', 0),
(19, 1, '2019-12-16 04:19:37', '2019-12-16 04:19:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo Verde', 'logo_verde', 'publish', 'closed', 'closed', '', 'field_5df705b8a9781', '', '', '2019-12-16 04:19:37', '2019-12-16 04:19:37', '', 9, 'http://dev.maskotsport.com/?post_type=acf-field&p=19', 7, 'acf-field', '', 0),
(20, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"templates/home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'home', 'home', 'publish', 'closed', 'closed', '', 'group_5df7060d863cd', '', '', '2019-12-18 11:28:56', '2019-12-18 11:28:56', '', 0, 'http://dev.maskotsport.com/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'banner', 'banner', 'publish', 'closed', 'closed', '', 'field_5df70625e336d', '', '', '2019-12-16 04:31:22', '2019-12-16 04:31:22', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&p=21', 0, 'acf-field', '', 0),
(22, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5df70685e336e', '', '', '2019-12-16 04:31:22', '2019-12-16 04:31:22', '', 21, 'http://dev.maskotsport.com/?post_type=acf-field&p=22', 0, 'acf-field', '', 0),
(23, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_5df7068ae336f', '', '', '2019-12-16 04:31:22', '2019-12-16 04:31:22', '', 21, 'http://dev.maskotsport.com/?post_type=acf-field&p=23', 1, 'acf-field', '', 0),
(24, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5df70699e3370', '', '', '2019-12-16 04:31:22', '2019-12-16 04:31:22', '', 21, 'http://dev.maskotsport.com/?post_type=acf-field&p=24', 2, 'acf-field', '', 0),
(25, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'iframe_video', 'iframe_video', 'publish', 'closed', 'closed', '', 'field_5df706b1e3371', '', '', '2019-12-16 04:31:22', '2019-12-16 04:31:22', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&p=25', 1, 'acf-field', '', 0),
(26, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Servicios Titulo', 'title_services', 'publish', 'closed', 'closed', '', 'field_5df706cee3372', '', '', '2019-12-16 04:31:22', '2019-12-16 04:31:22', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&p=26', 2, 'acf-field', '', 0),
(27, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Servicios sub titulo', 'subtitle_services', 'publish', 'closed', 'closed', '', 'field_5df706e4e3373', '', '', '2019-12-16 04:31:22', '2019-12-16 04:31:22', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&p=27', 3, 'acf-field', '', 0),
(28, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Servicios', 'services', 'publish', 'closed', 'closed', '', 'field_5df706fce3374', '', '', '2019-12-16 04:31:22', '2019-12-16 04:31:22', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&p=28', 4, 'acf-field', '', 0),
(29, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:14:\"k9 Active Core\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'k9', 'k9', 'publish', 'closed', 'closed', '', 'field_5df70733e3375', '', '', '2019-12-16 04:31:22', '2019-12-16 04:31:22', '', 28, 'http://dev.maskotsport.com/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
(30, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_5df7076ae3376', '', '', '2019-12-16 04:31:22', '2019-12-16 04:31:22', '', 28, 'http://dev.maskotsport.com/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
(31, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5df7078ae3377', '', '', '2019-12-16 04:31:22', '2019-12-16 04:31:22', '', 28, 'http://dev.maskotsport.com/?post_type=acf-field&p=31', 2, 'acf-field', '', 0),
(32, 1, '2019-12-16 04:31:22', '2019-12-16 04:31:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5df707a4e3378', '', '', '2019-12-16 04:31:22', '2019-12-16 04:31:22', '', 28, 'http://dev.maskotsport.com/?post_type=acf-field&p=32', 3, 'acf-field', '', 0),
(33, 1, '2019-12-16 04:31:23', '2019-12-16 04:31:23', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'content', 'content', 'publish', 'closed', 'closed', '', 'field_5df707afe3379', '', '', '2019-12-16 04:31:23', '2019-12-16 04:31:23', '', 28, 'http://dev.maskotsport.com/?post_type=acf-field&p=33', 4, 'acf-field', '', 0),
(34, 1, '2019-12-16 04:31:23', '2019-12-16 04:31:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título promocional', 'title_promotional', 'publish', 'closed', 'closed', '', 'field_5df707fee337a', '', '', '2019-12-16 04:31:23', '2019-12-16 04:31:23', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&p=34', 5, 'acf-field', '', 0),
(35, 1, '2019-12-16 04:31:23', '2019-12-16 04:31:23', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'promotional', 'promotional', 'publish', 'closed', 'closed', '', 'field_5df70810e337b', '', '', '2019-12-16 04:31:23', '2019-12-16 04:31:23', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&p=35', 6, 'acf-field', '', 0),
(36, 1, '2019-12-16 04:31:23', '2019-12-16 04:31:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5df7082be337c', '', '', '2019-12-16 04:31:23', '2019-12-16 04:31:23', '', 35, 'http://dev.maskotsport.com/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2019-12-16 04:31:23', '2019-12-16 04:31:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5df7083de337d', '', '', '2019-12-16 04:31:23', '2019-12-16 04:31:23', '', 35, 'http://dev.maskotsport.com/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(38, 1, '2019-12-16 04:31:23', '2019-12-16 04:31:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título casos', 'title_casos', 'publish', 'closed', 'closed', '', 'field_5df7084fe337e', '', '', '2019-12-16 04:31:23', '2019-12-16 04:31:23', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&p=38', 7, 'acf-field', '', 0),
(39, 1, '2019-12-16 04:31:23', '2019-12-16 04:31:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtitulo casos', 'subtitle_casos', 'publish', 'closed', 'closed', '', 'field_5df70874e337f', '', '', '2019-12-16 04:31:23', '2019-12-16 04:31:23', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&p=39', 8, 'acf-field', '', 0),
(40, 1, '2019-12-16 04:31:23', '2019-12-16 04:31:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título nosotros', 'title_about', 'publish', 'closed', 'closed', '', 'field_5df70890e3380', '', '', '2019-12-16 04:39:36', '2019-12-16 04:39:36', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&#038;p=40', 9, 'acf-field', '', 0),
(41, 1, '2019-12-16 04:32:50', '2019-12-16 04:32:50', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"casos\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'casos', 'casos', 'publish', 'closed', 'closed', '', 'group_5df708a077de4', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 0, 'http://dev.maskotsport.com/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2019-12-16 04:32:50', '2019-12-16 04:32:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'date', 'date', 'publish', 'closed', 'closed', '', 'field_5df708b674a81', '', '', '2019-12-16 04:32:50', '2019-12-16 04:32:50', '', 41, 'http://dev.maskotsport.com/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(43, 1, '2019-12-16 04:32:50', '2019-12-16 04:32:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tag', 'tag', 'publish', 'closed', 'closed', '', 'field_5df708c874a82', '', '', '2019-12-16 04:32:50', '2019-12-16 04:32:50', '', 41, 'http://dev.maskotsport.com/?post_type=acf-field&p=43', 1, 'acf-field', '', 0),
(44, 1, '2019-12-16 04:32:50', '2019-12-16 04:32:50', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'resumen', 'resumen', 'publish', 'closed', 'closed', '', 'field_5df708de74a83', '', '', '2019-12-16 04:32:50', '2019-12-16 04:32:50', '', 41, 'http://dev.maskotsport.com/?post_type=acf-field&p=44', 2, 'acf-field', '', 0),
(45, 1, '2019-12-16 04:37:30', '2019-12-16 04:37:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título acreditaciones', 'title_acreditaciones', 'publish', 'closed', 'closed', '', 'field_5df7099b78656', '', '', '2019-12-16 04:37:30', '2019-12-16 04:37:30', '', 9, 'http://dev.maskotsport.com/?post_type=acf-field&p=45', 8, 'acf-field', '', 0),
(46, 1, '2019-12-16 04:37:30', '2019-12-16 04:37:30', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'acreditaciones', 'acreditaciones', 'publish', 'closed', 'closed', '', 'field_5df709aa78657', '', '', '2019-12-16 04:37:30', '2019-12-16 04:37:30', '', 9, 'http://dev.maskotsport.com/?post_type=acf-field&p=46', 9, 'acf-field', '', 0),
(47, 1, '2019-12-16 04:37:30', '2019-12-16 04:37:30', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5df709c278658', '', '', '2019-12-16 04:37:30', '2019-12-16 04:37:30', '', 46, 'http://dev.maskotsport.com/?post_type=acf-field&p=47', 0, 'acf-field', '', 0),
(48, 1, '2019-12-16 04:37:30', '2019-12-16 04:37:30', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'flag', 'flag', 'publish', 'closed', 'closed', '', 'field_5df709d178659', '', '', '2019-12-16 04:37:30', '2019-12-16 04:37:30', '', 46, 'http://dev.maskotsport.com/?post_type=acf-field&p=48', 1, 'acf-field', '', 0),
(49, 1, '2019-12-16 04:37:30', '2019-12-16 04:37:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5df709e07865a', '', '', '2019-12-16 04:37:30', '2019-12-16 04:37:30', '', 46, 'http://dev.maskotsport.com/?post_type=acf-field&p=49', 2, 'acf-field', '', 0),
(50, 1, '2019-12-16 04:37:30', '2019-12-16 04:37:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_5df709eb7865b', '', '', '2019-12-16 04:37:30', '2019-12-16 04:37:30', '', 46, 'http://dev.maskotsport.com/?post_type=acf-field&p=50', 3, 'acf-field', '', 0),
(51, 1, '2019-12-16 04:39:36', '2019-12-16 04:39:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtitulo nosotros', 'subtitle_about', 'publish', 'closed', 'closed', '', 'field_5df7090fd6827', '', '', '2019-12-16 04:39:36', '2019-12-16 04:39:36', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&p=51', 10, 'acf-field', '', 0),
(52, 1, '2019-12-16 04:39:36', '2019-12-16 04:39:36', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen nosotros', 'imagen_about', 'publish', 'closed', 'closed', '', 'field_5df70927d6828', '', '', '2019-12-18 11:28:56', '2019-12-18 11:28:56', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&#038;p=52', 11, 'acf-field', '', 0),
(53, 1, '2019-12-16 04:39:36', '2019-12-16 04:39:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título Blog', 'title_blog', 'publish', 'closed', 'closed', '', 'field_5df70a0dd682b', '', '', '2019-12-16 04:39:36', '2019-12-16 04:39:36', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&p=53', 12, 'acf-field', '', 0),
(54, 1, '2019-12-16 04:39:36', '2019-12-16 04:39:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtitulo blog', 'subtitle_blog', 'publish', 'closed', 'closed', '', 'field_5df70a61d682c', '', '', '2019-12-16 04:39:36', '2019-12-16 04:39:36', '', 20, 'http://dev.maskotsport.com/?post_type=acf-field&p=54', 13, 'acf-field', '', 0),
(55, 1, '2019-12-16 04:39:55', '2019-12-16 04:39:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'blog', 'blog', 'publish', 'closed', 'closed', '', 'group_5df70a8ccabe0', '', '', '2019-12-16 04:39:56', '2019-12-16 04:39:56', '', 0, 'http://dev.maskotsport.com/?post_type=acf-field-group&#038;p=55', 0, 'acf-field-group', '', 0),
(56, 1, '2019-12-16 04:39:55', '2019-12-16 04:39:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'date', 'date', 'publish', 'closed', 'closed', '', 'field_5df70a95a6f4a', '', '', '2019-12-16 04:39:55', '2019-12-16 04:39:55', '', 55, 'http://dev.maskotsport.com/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:19:\"templates/about.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'nosotros', 'nosotros', 'publish', 'closed', 'closed', '', 'group_5df70aaf4f963', '', '', '2019-12-16 04:58:20', '2019-12-16 04:58:20', '', 0, 'http://dev.maskotsport.com/?post_type=acf-field-group&#038;p=57', 0, 'acf-field-group', '', 0),
(58, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'resumen', 'resumen', 'publish', 'closed', 'closed', '', 'field_5df70aeeda297', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 57, 'http://dev.maskotsport.com/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título Staff', 'title_staff', 'publish', 'closed', 'closed', '', 'field_5df70af7da298', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 57, 'http://dev.maskotsport.com/?post_type=acf-field&p=59', 1, 'acf-field', '', 0),
(60, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'staff', 'staff', 'publish', 'closed', 'closed', '', 'field_5df70b0ada299', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 57, 'http://dev.maskotsport.com/?post_type=acf-field&p=60', 2, 'acf-field', '', 0),
(61, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5df70b25da29a', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 60, 'http://dev.maskotsport.com/?post_type=acf-field&p=61', 0, 'acf-field', '', 0),
(62, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5df70b33da29b', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 60, 'http://dev.maskotsport.com/?post_type=acf-field&p=62', 1, 'acf-field', '', 0),
(63, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'cargo', 'cargo', 'publish', 'closed', 'closed', '', 'field_5df70b3fda29c', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 60, 'http://dev.maskotsport.com/?post_type=acf-field&p=63', 2, 'acf-field', '', 0),
(64, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'description', 'description', 'publish', 'closed', 'closed', '', 'field_5df70b4dda29d', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 60, 'http://dev.maskotsport.com/?post_type=acf-field&p=64', 3, 'acf-field', '', 0),
(65, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_promotional', 'title_promotional', 'publish', 'closed', 'closed', '', 'field_5df70b67da29e', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 57, 'http://dev.maskotsport.com/?post_type=acf-field&p=65', 3, 'acf-field', '', 0),
(66, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'promotional', 'promotional', 'publish', 'closed', 'closed', '', 'field_5df70b79da29f', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 57, 'http://dev.maskotsport.com/?post_type=acf-field&p=66', 4, 'acf-field', '', 0),
(67, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5df70b9eda2a0', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 66, 'http://dev.maskotsport.com/?post_type=acf-field&p=67', 0, 'acf-field', '', 0),
(68, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5df70bafda2a1', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 66, 'http://dev.maskotsport.com/?post_type=acf-field&p=68', 1, 'acf-field', '', 0),
(69, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_casos', 'title_casos', 'publish', 'closed', 'closed', '', 'field_5df70bc0da2a2', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 57, 'http://dev.maskotsport.com/?post_type=acf-field&p=69', 5, 'acf-field', '', 0),
(70, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'instalaciones', 'instalaciones', 'publish', 'closed', 'closed', '', 'field_5df70becda2a3', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 57, 'http://dev.maskotsport.com/?post_type=acf-field&p=70', 6, 'acf-field', '', 0),
(71, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'video', 'video', 'publish', 'closed', 'closed', '', 'field_5df70c18da2a4', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 70, 'http://dev.maskotsport.com/?post_type=acf-field&p=71', 0, 'acf-field', '', 0);
INSERT INTO `ms_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(72, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5df70ddfda2a5', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 70, 'http://dev.maskotsport.com/?post_type=acf-field&p=72', 1, 'acf-field', '', 0),
(73, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'videoiframe', 'videoiframe', 'publish', 'closed', 'closed', '', 'field_5df70e4ada2a6', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 70, 'http://dev.maskotsport.com/?post_type=acf-field&p=73', 2, 'acf-field', '', 0),
(74, 1, '2019-12-16 04:58:19', '2019-12-16 04:58:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_testimoniales', 'title_testimoniales', 'publish', 'closed', 'closed', '', 'field_5df70e63da2a7', '', '', '2019-12-16 04:58:19', '2019-12-16 04:58:19', '', 57, 'http://dev.maskotsport.com/?post_type=acf-field&p=74', 7, 'acf-field', '', 0),
(75, 1, '2019-12-16 04:58:20', '2019-12-16 04:58:20', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'testimoniales', 'testimoniales', 'publish', 'closed', 'closed', '', 'field_5df70e7ada2a8', '', '', '2019-12-16 04:58:20', '2019-12-16 04:58:20', '', 57, 'http://dev.maskotsport.com/?post_type=acf-field&p=75', 8, 'acf-field', '', 0),
(76, 1, '2019-12-16 04:58:20', '2019-12-16 04:58:20', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'content', 'content', 'publish', 'closed', 'closed', '', 'field_5df70eb0da2a9', '', '', '2019-12-16 04:58:20', '2019-12-16 04:58:20', '', 75, 'http://dev.maskotsport.com/?post_type=acf-field&p=76', 0, 'acf-field', '', 0),
(77, 1, '2019-12-16 04:58:20', '2019-12-16 04:58:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'autor', 'autor', 'publish', 'closed', 'closed', '', 'field_5df70ebdda2aa', '', '', '2019-12-16 04:58:20', '2019-12-16 04:58:20', '', 75, 'http://dev.maskotsport.com/?post_type=acf-field&p=77', 1, 'acf-field', '', 0),
(78, 1, '2019-12-16 04:58:20', '2019-12-16 04:58:20', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5df70eceda2ab', '', '', '2019-12-16 04:58:20', '2019-12-16 04:58:20', '', 75, 'http://dev.maskotsport.com/?post_type=acf-field&p=78', 2, 'acf-field', '', 0),
(80, 1, '2019-12-18 10:59:44', '2019-12-18 10:59:44', '', 'facebook blanco', '', 'inherit', 'open', 'closed', '', 'facebook-blanco', '', '', '2019-12-18 10:59:44', '2019-12-18 10:59:44', '', 0, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/facebook-blanco.svg', 0, 'attachment', 'image/svg+xml', 0),
(81, 1, '2019-12-18 11:00:43', '2019-12-18 11:00:43', '', 'instagram', '', 'inherit', 'open', 'closed', '', 'instagram', '', '', '2019-12-18 11:00:43', '2019-12-18 11:00:43', '', 0, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/instagram.svg', 0, 'attachment', 'image/svg+xml', 0),
(82, 1, '2019-12-18 11:00:58', '2019-12-18 11:00:58', '', 'youtube', '', 'inherit', 'open', 'closed', '', 'youtube', '', '', '2019-12-18 11:00:58', '2019-12-18 11:00:58', '', 0, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/youtube.svg', 0, 'attachment', 'image/svg+xml', 0),
(83, 1, '2019-12-18 11:01:24', '2019-12-18 11:01:24', '', 'logo maskot footer', '', 'inherit', 'open', 'closed', '', 'logo-maskot-footer', '', '', '2019-12-18 11:01:24', '2019-12-18 11:01:24', '', 0, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/logo-maskot-footer.svg', 0, 'attachment', 'image/svg+xml', 0),
(84, 1, '2019-12-18 11:02:30', '2019-12-18 11:02:30', '', 'logo maskot header', '', 'inherit', 'open', 'closed', '', 'logo-maskot-header', '', '', '2019-12-18 11:02:30', '2019-12-18 11:02:30', '', 0, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/logo-maskot-header.svg', 0, 'attachment', 'image/svg+xml', 0),
(85, 1, '2019-12-18 11:07:20', '2019-12-18 11:07:20', '', 'españa', '', 'inherit', 'open', 'closed', '', 'espana', '', '', '2019-12-18 11:07:20', '2019-12-18 11:07:20', '', 0, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/españa.svg', 0, 'attachment', 'image/svg+xml', 0),
(86, 1, '2019-12-18 11:07:41', '2019-12-18 11:07:41', '', 'peru', '', 'inherit', 'open', 'closed', '', 'peru', '', '', '2019-12-18 11:07:41', '2019-12-18 11:07:41', '', 0, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/peru.svg', 0, 'attachment', 'image/svg+xml', 0),
(87, 1, '2019-12-18 11:07:49', '2019-12-18 11:07:49', '', 'uruguay', '', 'inherit', 'open', 'closed', '', 'uruguay', '', '', '2019-12-18 11:07:49', '2019-12-18 11:07:49', '', 0, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/uruguay.svg', 0, 'attachment', 'image/svg+xml', 0),
(88, 1, '2019-12-18 11:08:18', '2019-12-18 11:08:18', '', 'mexico', '', 'inherit', 'open', 'closed', '', 'mexico', '', '', '2019-12-18 11:08:18', '2019-12-18 11:08:18', '', 0, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/mexico.svg', 0, 'attachment', 'image/svg+xml', 0),
(89, 1, '2019-12-18 11:10:11', '2019-12-18 11:10:11', 'Presentaba indicios de agresividad. Se le conocía por destrozar cosas, morder a otros amiguitos y ser muy territorial.', 'Kaisser', '', 'publish', 'closed', 'closed', '', 'kaisser', '', '', '2019-12-20 20:54:10', '2019-12-20 20:54:10', '', 0, 'http://dev.maskotsport.com/?post_type=casos&#038;p=89', 0, 'casos', '', 0),
(90, 1, '2019-12-18 11:10:05', '2019-12-18 11:10:05', '', 'banner_kaisser', '', 'inherit', 'open', 'closed', '', 'banner_kaisser', '', '', '2019-12-18 11:10:05', '2019-12-18 11:10:05', '', 89, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/banner_kaisser.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2019-12-18 11:10:40', '2019-12-18 11:10:40', 'Perrita rescatada. Ingresó a la escuela para rehabilitación, tenía miedo de salir a pasear y mostraba agresividad.', 'Bianca', '', 'publish', 'closed', 'closed', '', 'bianca', '', '', '2019-12-18 11:10:40', '2019-12-18 11:10:40', '', 0, 'http://dev.maskotsport.com/?post_type=casos&#038;p=91', 0, 'casos', '', 0),
(92, 1, '2019-12-18 11:10:18', '2019-12-18 11:10:18', '', 'banner_bianca', '', 'inherit', 'open', 'closed', '', 'banner_bianca', '', '', '2019-12-18 11:10:18', '2019-12-18 11:10:18', '', 91, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/banner_bianca.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2019-12-18 11:11:14', '2019-12-18 11:11:14', 'Recibió entrenamiento especializado para ser policía. Ahora es un profesional de la detección de sustancias y drogas.', 'Zeus', '', 'publish', 'closed', 'closed', '', 'zeus', '', '', '2019-12-18 11:11:14', '2019-12-18 11:11:14', '', 0, 'http://dev.maskotsport.com/?post_type=casos&#038;p=93', 0, 'casos', '', 0),
(94, 1, '2019-12-18 11:11:09', '2019-12-18 11:11:09', '', 'banner_zeus', '', 'inherit', 'open', 'closed', '', 'banner_zeus', '', '', '2019-12-18 11:11:09', '2019-12-18 11:11:09', '', 93, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/banner_zeus.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2019-12-18 11:12:33', '2019-12-18 11:12:33', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!</p>\n<!-- /wp:paragraph -->', 'Maskot Sport en la ExpoMascotas Perú', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2019-12-18 11:12:33', '2019-12-18 11:12:33', '', 1, 'http://dev.maskotsport.com/2019/12/18/1-autosave-v1/', 0, 'revision', '', 0),
(96, 1, '2019-12-18 11:14:48', '2019-12-18 11:14:48', '', 'Screenshot_64', '', 'inherit', 'open', 'closed', '', 'screenshot_64', '', '', '2019-12-18 11:14:48', '2019-12-18 11:14:48', '', 1, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/Screenshot_64.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2019-12-18 11:15:03', '2019-12-18 11:15:03', '<!-- wp:paragraph -->\r\n<p>Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!</p>\r\n<!-- /wp:paragraph -->', 'Maskot Sport en la ExpoMascotas Perú', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-12-18 11:15:03', '2019-12-18 11:15:03', '', 1, 'http://dev.maskotsport.com/2019/12/18/1-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-12-18 11:15:16', '2019-12-18 11:15:16', '<!-- wp:paragraph -->\r\n<p>Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!</p>\r\n<!-- /wp:paragraph -->', 'Maskot Sport en la ExpoMascotas Perú', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-12-18 11:15:16', '2019-12-18 11:15:16', '', 1, 'http://dev.maskotsport.com/2019/12/18/1-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-12-18 11:15:46', '2019-12-18 11:15:46', '', 'Maskot Sport en la ExpoMascotas Perú 2', '', 'publish', 'open', 'open', '', 'maskot-sport-en-la-expomascotas-peru-2', '', '', '2019-12-18 11:15:46', '2019-12-18 11:15:46', '', 0, 'http://dev.maskotsport.com/?p=99', 0, 'post', '', 0),
(100, 1, '2019-12-18 11:15:46', '2019-12-18 11:15:46', '', 'Maskot Sport en la ExpoMascotas Perú 2', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2019-12-18 11:15:46', '2019-12-18 11:15:46', '', 99, 'http://dev.maskotsport.com/2019/12/18/99-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-12-18 11:16:11', '2019-12-18 11:16:11', '', 'Maskot Sport en la ExpoMascotas Perú 3', '', 'publish', 'open', 'open', '', 'maskot-sport-en-la-expomascotas-peru-3', '', '', '2019-12-18 11:16:11', '2019-12-18 11:16:11', '', 0, 'http://dev.maskotsport.com/?p=101', 0, 'post', '', 0),
(102, 1, '2019-12-18 11:16:11', '2019-12-18 11:16:11', '', 'Maskot Sport en la ExpoMascotas Perú 3', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2019-12-18 11:16:11', '2019-12-18 11:16:11', '', 101, 'http://dev.maskotsport.com/2019/12/18/101-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-12-18 11:16:39', '2019-12-18 11:16:39', '', 'home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-12-18 11:16:39', '2019-12-18 11:16:39', '', 2, 'http://dev.maskotsport.com/2019/12/18/2-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-12-18 11:18:01', '2019-12-18 11:18:01', '¡Un perro equilibrado es un perro feliz!', 'Somos especialistas <b>en conducta canina y lenguaje animal</b>', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2019-12-18 11:18:01', '2019-12-18 11:18:01', '', 2, 'http://dev.maskotsport.com/2019/12/18/2-autosave-v1/', 0, 'revision', '', 0),
(105, 1, '2019-12-18 11:18:08', '2019-12-18 11:18:08', '', 'home', '', 'inherit', 'open', 'closed', '', 'home', '', '', '2019-12-18 11:18:08', '2019-12-18 11:18:08', '', 2, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/home.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2019-12-18 11:21:31', '2019-12-18 11:21:31', '', 'Servicio 4', '', 'inherit', 'open', 'closed', '', 'servicio-4', '', '', '2019-12-18 11:21:31', '2019-12-18 11:21:31', '', 2, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/Servicio-4.svg', 0, 'attachment', 'image/svg+xml', 0),
(107, 1, '2019-12-18 11:21:31', '2019-12-18 11:21:31', '', 'Servicio 5', '', 'inherit', 'open', 'closed', '', 'servicio-5', '', '', '2019-12-18 11:21:31', '2019-12-18 11:21:31', '', 2, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/Servicio-5.svg', 0, 'attachment', 'image/svg+xml', 0),
(108, 1, '2019-12-18 11:21:32', '2019-12-18 11:21:32', '', 'Servicio 1', '', 'inherit', 'open', 'closed', '', 'servicio-1', '', '', '2019-12-18 11:21:32', '2019-12-18 11:21:32', '', 2, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/Servicio-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(109, 1, '2019-12-18 11:21:32', '2019-12-18 11:21:32', '', 'Servicio 2', '', 'inherit', 'open', 'closed', '', 'servicio-2', '', '', '2019-12-18 11:21:32', '2019-12-18 11:21:32', '', 2, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/Servicio-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(110, 1, '2019-12-18 11:21:32', '2019-12-18 11:21:32', '', 'Servicio 3', '', 'inherit', 'open', 'closed', '', 'servicio-3', '', '', '2019-12-18 11:21:32', '2019-12-18 11:21:32', '', 2, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/Servicio-3.svg', 0, 'attachment', 'image/svg+xml', 0),
(111, 1, '2019-12-18 11:27:16', '2019-12-18 11:27:16', '', 'icono 3', '', 'inherit', 'open', 'closed', '', 'icono-3', '', '', '2019-12-18 11:27:16', '2019-12-18 11:27:16', '', 2, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/icono-3.svg', 0, 'attachment', 'image/svg+xml', 0),
(112, 1, '2019-12-18 11:27:16', '2019-12-18 11:27:16', '', 'icono 1', '', 'inherit', 'open', 'closed', '', 'icono-1', '', '', '2019-12-18 11:27:16', '2019-12-18 11:27:16', '', 2, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/icono-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(113, 1, '2019-12-18 11:27:17', '2019-12-18 11:27:17', '', 'icono 2', '', 'inherit', 'open', 'closed', '', 'icono-2', '', '', '2019-12-18 11:27:17', '2019-12-18 11:27:17', '', 2, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/icono-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(114, 1, '2019-12-18 11:28:35', '2019-12-18 11:28:35', '¡Un perro equilibrado es un perro feliz!', 'Somos especialistas <b>en conducta canina y lenguaje animal</b>', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-12-18 11:28:35', '2019-12-18 11:28:35', '', 2, 'http://dev.maskotsport.com/2019/12/18/2-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-12-18 11:29:21', '2019-12-18 11:29:21', '', 'staff', '', 'inherit', 'open', 'closed', '', 'staff', '', '', '2019-12-18 11:29:21', '2019-12-18 11:29:21', '', 2, 'http://dev.maskotsport.com/wp-content/uploads/2019/12/staff.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2019-12-18 11:30:03', '2019-12-18 11:30:03', '¡Un perro equilibrado es un perro feliz!', 'Somos especialistas <b>en conducta canina y lenguaje animal</b>', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-12-18 11:30:03', '2019-12-18 11:30:03', '', 2, 'http://dev.maskotsport.com/2019/12/18/2-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2019-12-18 11:33:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-18 11:33:41', '0000-00-00 00:00:00', '', 0, 'http://dev.maskotsport.com/?p=117', 1, 'nav_menu_item', '', 0),
(118, 1, '2019-12-18 11:33:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-18 11:33:41', '0000-00-00 00:00:00', '', 0, 'http://dev.maskotsport.com/?p=118', 1, 'nav_menu_item', '', 0),
(119, 1, '2019-12-18 11:34:42', '2019-12-18 11:34:42', '', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2019-12-20 19:25:06', '2019-12-20 19:25:06', '', 0, 'http://dev.maskotsport.com/?p=119', 1, 'nav_menu_item', '', 0),
(120, 1, '2019-12-18 11:34:42', '2019-12-18 11:34:42', '', 'Casos de Éxito', '', 'publish', 'closed', 'closed', '', 'casos-de-exito', '', '', '2019-12-20 19:25:06', '2019-12-20 19:25:06', '', 0, 'http://dev.maskotsport.com/?p=120', 2, 'nav_menu_item', '', 0),
(121, 1, '2019-12-18 11:34:42', '2019-12-18 11:34:42', '', 'Nosotros', '', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2019-12-20 19:25:06', '2019-12-20 19:25:06', '', 0, 'http://dev.maskotsport.com/?p=121', 3, 'nav_menu_item', '', 0),
(122, 1, '2019-12-18 11:34:42', '2019-12-18 11:34:42', '', 'Noticias', '', 'publish', 'closed', 'closed', '', 'noticias', '', '', '2019-12-20 19:25:06', '2019-12-20 19:25:06', '', 0, 'http://dev.maskotsport.com/?p=122', 4, 'nav_menu_item', '', 0),
(123, 1, '2019-12-20 17:48:13', '2019-12-20 17:48:13', '', 'Maskot Sport en la ExpoMascotas Perú 4', '', 'publish', 'open', 'open', '', 'maskot-sport-en-la-expomascotas-peru-4', '', '', '2019-12-20 17:48:21', '2019-12-20 17:48:21', '', 0, 'http://dev.maskotsport.com/?p=123', 0, 'post', '', 0),
(124, 1, '2019-12-20 17:48:13', '2019-12-20 17:48:13', '', 'Maskot Sport en la ExpoMascotas Perú 4', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2019-12-20 17:48:13', '2019-12-20 17:48:13', '', 123, 'http://dev.maskotsport.com/2019/12/20/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2019-12-20 19:42:41', '2019-12-20 19:42:41', '', 'Casos de éxito', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-12-20 19:42:41', '2019-12-20 19:42:41', '', 0, 'http://dev.maskotsport.com/?page_id=125', 0, 'page', '', 0),
(126, 1, '2019-12-20 19:42:41', '2019-12-20 19:42:41', '', 'Casos de éxito', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2019-12-20 19:42:41', '2019-12-20 19:42:41', '', 125, 'http://dev.maskotsport.com/2019/12/20/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'iframe_video', 'iframe_video', 'publish', 'closed', 'closed', '', 'field_5dfd2c4e66325', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 41, 'http://dev.maskotsport.com/?post_type=acf-field&p=127', 3, 'acf-field', '', 0),
(128, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'antes_title', 'antes_title', 'publish', 'closed', 'closed', '', 'field_5dfd2c5766326', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 41, 'http://dev.maskotsport.com/?post_type=acf-field&p=128', 4, 'acf-field', '', 0),
(129, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'antes_content', 'antes_content', 'publish', 'closed', 'closed', '', 'field_5dfd2cc46632e', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 41, 'http://dev.maskotsport.com/?post_type=acf-field&p=129', 5, 'acf-field', '', 0),
(130, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'antes_imagenes', 'antes_imagenes', 'publish', 'closed', 'closed', '', 'field_5dfd2c6166327', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 41, 'http://dev.maskotsport.com/?post_type=acf-field&p=130', 6, 'acf-field', '', 0),
(131, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'video', 'video', 'publish', 'closed', 'closed', '', 'field_5dfd2c6a66328', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 130, 'http://dev.maskotsport.com/?post_type=acf-field&p=131', 0, 'acf-field', '', 0),
(132, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5dfd2c8d66329', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 130, 'http://dev.maskotsport.com/?post_type=acf-field&p=132', 1, 'acf-field', '', 0),
(133, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'videoiframe', 'videoiframe', 'publish', 'closed', 'closed', '', 'field_5dfd2c946632a', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 130, 'http://dev.maskotsport.com/?post_type=acf-field&p=133', 2, 'acf-field', '', 0),
(134, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'time_adiestramiento', 'time_adiestramiento', 'publish', 'closed', 'closed', '', 'field_5dfd2c9f6632b', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 41, 'http://dev.maskotsport.com/?post_type=acf-field&p=134', 7, 'acf-field', '', 0),
(135, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'despues_title', 'despues_title', 'publish', 'closed', 'closed', '', 'field_5dfd2ca66632c', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 41, 'http://dev.maskotsport.com/?post_type=acf-field&p=135', 8, 'acf-field', '', 0),
(136, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'despues_content', 'despues_content', 'publish', 'closed', 'closed', '', 'field_5dfd2cad6632d', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 41, 'http://dev.maskotsport.com/?post_type=acf-field&p=136', 9, 'acf-field', '', 0),
(137, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'despues_imagenes', 'despues_imagenes', 'publish', 'closed', 'closed', '', 'field_5dfd2cdd6632f', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 41, 'http://dev.maskotsport.com/?post_type=acf-field&p=137', 10, 'acf-field', '', 0),
(138, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'video', 'video', 'publish', 'closed', 'closed', '', 'field_5dfd2ce666330', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 137, 'http://dev.maskotsport.com/?post_type=acf-field&p=138', 0, 'acf-field', '', 0),
(139, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5dfd2d0266331', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 137, 'http://dev.maskotsport.com/?post_type=acf-field&p=139', 1, 'acf-field', '', 0),
(140, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'videoiframe', 'videoiframe', 'publish', 'closed', 'closed', '', 'field_5dfd2d0a66332', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 137, 'http://dev.maskotsport.com/?post_type=acf-field&p=140', 2, 'acf-field', '', 0),
(141, 1, '2019-12-20 20:20:45', '2019-12-20 20:20:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title_casos', 'title_casos', 'publish', 'closed', 'closed', '', 'field_5dfd2d1966333', '', '', '2019-12-20 20:20:45', '2019-12-20 20:20:45', '', 41, 'http://dev.maskotsport.com/?post_type=acf-field&p=141', 11, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_termmeta`
--

CREATE TABLE `ms_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_terms`
--

CREATE TABLE `ms_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ms_terms`
--

INSERT INTO `ms_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_term_relationships`
--

CREATE TABLE `ms_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ms_term_relationships`
--

INSERT INTO `ms_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(99, 1, 0),
(101, 1, 0),
(119, 2, 0),
(120, 2, 0),
(121, 2, 0),
(122, 2, 0),
(123, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_term_taxonomy`
--

CREATE TABLE `ms_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ms_term_taxonomy`
--

INSERT INTO `ms_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_usermeta`
--

CREATE TABLE `ms_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ms_usermeta`
--

INSERT INTO `ms_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'blue'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'ms_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'ms_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"44e977eb8e864a28f7fea2b30bff25c3dc9160ea231baea780f1a2b5f5b857c5\";a:4:{s:10:\"expiration\";i:1577035793;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1576862993;}}'),
(17, 1, 'ms_dashboard_quick_press_last_post_id', '8'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'ms_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:254:\"<strong>Enorme problema de SEO: Estás bloqueando el acceso a los robots.</strong> Debes <a href=\"http://dev.maskotsport.com/wp-admin/options-reading.php\">ir a tus ajustes de lectura</a> y desactivar la casilla de visibilidad en los motores de búsqueda.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(21, 1, '_yoast_wpseo_profile_updated', '1575823497'),
(22, 1, 'wpseo_title', ''),
(23, 1, 'wpseo_metadesc', ''),
(24, 1, 'wpseo_noindex_author', ''),
(25, 1, 'wpseo_content_analysis_disable', ''),
(26, 1, 'wpseo_keyword_analysis_disable', ''),
(27, 1, 'facebook', ''),
(28, 1, 'instagram', ''),
(29, 1, 'linkedin', ''),
(30, 1, 'myspace', ''),
(31, 1, 'pinterest', ''),
(32, 1, 'soundcloud', ''),
(33, 1, 'tumblr', ''),
(34, 1, 'twitter', ''),
(35, 1, 'youtube', ''),
(36, 1, 'wikipedia', ''),
(37, 1, 'ms_user-settings', 'libraryContent=browse&editor=tinymce'),
(38, 1, 'ms_user-settings-time', '1576668512'),
(39, 1, 'closedpostboxes_casos', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(40, 1, 'metaboxhidden_casos', 'a:5:{i:0;s:23:\"acf-group_5df70a8ccabe0\";i:1;s:23:\"acf-group_5df7060d863cd\";i:2;s:23:\"acf-group_5df70aaf4f963\";i:3;s:23:\"acf-group_5df70429a3d8d\";i:4;s:7:\"slugdiv\";}'),
(41, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:51:\"submitdiv,postimagediv,categorydiv,tagsdiv-post_tag\";s:6:\"normal\";s:203:\"wpseo_meta,acf-group_5df70a8ccabe0,acf-group_5df708a077de4,acf-group_5df7060d863cd,acf-group_5df70aaf4f963,acf-group_5df70429a3d8d,postexcerpt,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(42, 1, 'screen_layout_post', '2'),
(43, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(44, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:19:\"add-post-type-casos\";i:1;s:12:\"add-post_tag\";}'),
(45, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_users`
--

CREATE TABLE `ms_users` (
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
-- Volcado de datos para la tabla `ms_users`
--

INSERT INTO `ms_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BnYUR80q9c13AGHiNHr3nujEPyvy6U/', 'admin', 'frankdelarosacampos@gmail.com', '', '2019-12-08 16:43:31', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_yoast_seo_links`
--

CREATE TABLE `ms_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ms_yoast_seo_meta`
--

CREATE TABLE `ms_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ms_yoast_seo_meta`
--

INSERT INTO `ms_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, 0),
(2, 0, 0),
(4, 0, 0),
(6, 0, 0),
(7, 0, 0),
(79, 0, 0),
(89, 0, 0),
(91, 0, 0),
(93, 0, 0),
(99, 0, 0),
(101, 0, 0),
(123, 0, 0),
(125, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ms_cf7dbplugin_st`
--
ALTER TABLE `ms_cf7dbplugin_st`
  ADD PRIMARY KEY (`submit_time`);

--
-- Indices de la tabla `ms_cf7dbplugin_submits`
--
ALTER TABLE `ms_cf7dbplugin_submits`
  ADD KEY `submit_time_idx` (`submit_time`),
  ADD KEY `form_name_idx` (`form_name`),
  ADD KEY `field_name_idx` (`field_name`);

--
-- Indices de la tabla `ms_commentmeta`
--
ALTER TABLE `ms_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `ms_comments`
--
ALTER TABLE `ms_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `ms_links`
--
ALTER TABLE `ms_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `ms_options`
--
ALTER TABLE `ms_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `ms_postmeta`
--
ALTER TABLE `ms_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `ms_posts`
--
ALTER TABLE `ms_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `ms_termmeta`
--
ALTER TABLE `ms_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `ms_terms`
--
ALTER TABLE `ms_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `ms_term_relationships`
--
ALTER TABLE `ms_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `ms_term_taxonomy`
--
ALTER TABLE `ms_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `ms_usermeta`
--
ALTER TABLE `ms_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `ms_users`
--
ALTER TABLE `ms_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `ms_yoast_seo_links`
--
ALTER TABLE `ms_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indices de la tabla `ms_yoast_seo_meta`
--
ALTER TABLE `ms_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ms_commentmeta`
--
ALTER TABLE `ms_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ms_comments`
--
ALTER TABLE `ms_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ms_links`
--
ALTER TABLE `ms_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ms_options`
--
ALTER TABLE `ms_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- AUTO_INCREMENT de la tabla `ms_postmeta`
--
ALTER TABLE `ms_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT de la tabla `ms_posts`
--
ALTER TABLE `ms_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de la tabla `ms_termmeta`
--
ALTER TABLE `ms_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ms_terms`
--
ALTER TABLE `ms_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ms_term_taxonomy`
--
ALTER TABLE `ms_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ms_usermeta`
--
ALTER TABLE `ms_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `ms_users`
--
ALTER TABLE `ms_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ms_yoast_seo_links`
--
ALTER TABLE `ms_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
