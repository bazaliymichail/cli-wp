-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 26 2021 г., 09:26
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp-cli`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
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

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-12-19 14:23:23', '2021-12-19 11:23:23', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/cli-wp', 'yes'),
(2, 'home', 'http://localhost/cli-wp', 'yes'),
(3, 'blogname', 'WP-CLI', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bazaliymichail@gmail.com', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:25:\"fakerpress/fakerpress.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'bootkit', 'yes'),
(41, 'stylesheet', 'bootkit', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1655465003', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1640510603;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1640517803;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640517816;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640517817;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640604203;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1639913604;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(132, '_site_transient_timeout_browser_d44bfba7ec2b67d9eb9e6c1eea55c253', '1640517816', 'no'),
(133, '_site_transient_browser_d44bfba7ec2b67d9eb9e6c1eea55c253', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"96.0.4664.110\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, '_site_transient_timeout_php_check_722257398ed85eaa39d12bc29012c839', '1640517817', 'no'),
(135, '_site_transient_php_check_722257398ed85eaa39d12bc29012c839', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(139, 'can_compress_scripts', '1', 'no'),
(155, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1640507139;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(156, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1640507142;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:25:\"fakerpress/fakerpress.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/fakerpress\";s:4:\"slug\";s:10:\"fakerpress\";s:6:\"plugin\";s:25:\"fakerpress/fakerpress.php\";s:11:\"new_version\";s:5:\"0.5.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/fakerpress/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/fakerpress.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/fakerpress/assets/icon-256x256.png?rev=1846090\";s:2:\"1x\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";s:3:\"svg\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002\";s:2:\"1x\";s:65:\"https://ps.w.org/fakerpress/assets/banner-772x250.png?rev=1152002\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.2.1\";s:25:\"fakerpress/fakerpress.php\";s:5:\"0.5.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(157, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1640507142;s:7:\"checked\";a:4:{s:7:\"bootkit\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(158, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'fakerpress.module_flag.term', 'a:1:{s:8:\"category\";a:6:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:5;i:4;i:6;i:5;i:7;}}', 'yes'),
(165, 'category_children', 'a:0:{}', 'yes'),
(168, 'finished_updating_comment_type', '1', 'yes'),
(171, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(172, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'current_theme', 'Bootkit', 'yes'),
(175, 'theme_mods_bootkit', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:8;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(176, 'theme_switched', '', 'yes'),
(178, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(182, '_site_transient_timeout_theme_roots', '1640508941', 'no'),
(183, '_site_transient_theme_roots', 'a:4:{s:7:\"bootkit\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(184, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, 'fakerpress_flag', '1'),
(4, 6, '_wp_attached_file', '2021/12/65f91ec9-2e4a-360c-a1f1-3454fa8361a3.png'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:291;s:6:\"height\";i:232;s:4:\"file\";s:48:\"2021/12/65f91ec9-2e4a-360c-a1f1-3454fa8361a3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 6, 'fakerpress_flag', '1'),
(7, 6, '_fakerpress_orginal_url', 'http://placehold.it/291x232/'),
(8, 5, '_thumbnail_id', '6'),
(9, 7, 'fakerpress_flag', '1'),
(10, 8, '_wp_attached_file', '2021/12/9cbf0c21-ce2b-3082-93c0-9dc03829474f.png'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:404;s:6:\"height\";i:323;s:4:\"file\";s:48:\"2021/12/9cbf0c21-ce2b-3082-93c0-9dc03829474f.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 8, 'fakerpress_flag', '1'),
(13, 8, '_fakerpress_orginal_url', 'http://placehold.it/404x323/'),
(14, 7, '_thumbnail_id', '8'),
(15, 9, '_wp_attached_file', '2021/12/c0870275-6091-3999-9663-85b6e7966cb4.png'),
(16, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:515;s:6:\"height\";i:412;s:4:\"file\";s:48:\"2021/12/c0870275-6091-3999-9663-85b6e7966cb4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 9, 'fakerpress_flag', '1'),
(18, 9, '_fakerpress_orginal_url', 'http://placehold.it/515x412/'),
(19, 10, '_wp_attached_file', '2021/12/fc0c6261-577a-3fdb-b4b3-3b902474a32f.png'),
(20, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:568;s:6:\"height\";i:454;s:4:\"file\";s:48:\"2021/12/fc0c6261-577a-3fdb-b4b3-3b902474a32f.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 10, 'fakerpress_flag', '1'),
(22, 10, '_fakerpress_orginal_url', 'http://placehold.it/568x454/'),
(23, 11, '_wp_attached_file', '2021/12/3f1db067-920f-39e4-a118-81251f0cf17e.png'),
(24, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:446;s:6:\"height\";i:356;s:4:\"file\";s:48:\"2021/12/3f1db067-920f-39e4-a118-81251f0cf17e.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 11, 'fakerpress_flag', '1'),
(26, 11, '_fakerpress_orginal_url', 'http://placehold.it/446x356/'),
(27, 12, 'fakerpress_flag', '1'),
(28, 13, '_wp_attached_file', '2021/12/0c046048-e35f-307e-9bde-99e768f22ea5.png'),
(29, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:387;s:6:\"height\";i:309;s:4:\"file\";s:48:\"2021/12/0c046048-e35f-307e-9bde-99e768f22ea5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 13, 'fakerpress_flag', '1'),
(31, 13, '_fakerpress_orginal_url', 'http://placehold.it/387x309/'),
(32, 12, '_thumbnail_id', '13'),
(33, 14, 'fakerpress_flag', '1'),
(34, 15, '_wp_attached_file', '2021/12/d564c540-0444-3807-87b0-fd499d35c843.png'),
(35, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:267;s:6:\"height\";i:213;s:4:\"file\";s:48:\"2021/12/d564c540-0444-3807-87b0-fd499d35c843.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 15, 'fakerpress_flag', '1'),
(37, 15, '_fakerpress_orginal_url', 'http://placehold.it/267x213/'),
(38, 14, '_thumbnail_id', '15'),
(39, 16, '_wp_attached_file', '2021/12/478d7589-740b-39f6-bd11-ec5b4a1b298f.png'),
(40, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:488;s:6:\"height\";i:390;s:4:\"file\";s:48:\"2021/12/478d7589-740b-39f6-bd11-ec5b4a1b298f.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 16, 'fakerpress_flag', '1'),
(42, 16, '_fakerpress_orginal_url', 'http://placehold.it/488x390/'),
(43, 17, 'fakerpress_flag', '1'),
(44, 18, '_wp_attached_file', '2021/12/d8477407-1d6f-35c7-80b5-6455af3d8ea5.png'),
(45, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:289;s:6:\"height\";i:231;s:4:\"file\";s:48:\"2021/12/d8477407-1d6f-35c7-80b5-6455af3d8ea5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 18, 'fakerpress_flag', '1'),
(47, 18, '_fakerpress_orginal_url', 'http://placehold.it/289x231/'),
(48, 17, '_thumbnail_id', '18'),
(49, 19, 'fakerpress_flag', '1'),
(50, 20, '_wp_attached_file', '2021/12/368572e0-1ecd-3e89-b89d-2cd8e11d2f7b.png'),
(51, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:607;s:6:\"height\";i:485;s:4:\"file\";s:48:\"2021/12/368572e0-1ecd-3e89-b89d-2cd8e11d2f7b.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 20, 'fakerpress_flag', '1'),
(53, 20, '_fakerpress_orginal_url', 'http://placehold.it/607x485/'),
(54, 19, '_thumbnail_id', '20'),
(55, 21, 'fakerpress_flag', '1'),
(56, 22, '_wp_attached_file', '2021/12/8db06c6b-fbcb-3076-9bb6-a9d06da4c257.png'),
(57, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:531;s:6:\"height\";i:424;s:4:\"file\";s:48:\"2021/12/8db06c6b-fbcb-3076-9bb6-a9d06da4c257.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 22, 'fakerpress_flag', '1'),
(59, 22, '_fakerpress_orginal_url', 'http://placehold.it/531x424/'),
(60, 21, '_thumbnail_id', '22'),
(61, 23, '_wp_attached_file', '2021/12/43d66e6c-475e-3095-9ac3-9f50d04d3e09.jpg'),
(62, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1289;s:6:\"height\";i:859;s:4:\"file\";s:48:\"2021/12/43d66e6c-475e-3095-9ac3-9f50d04d3e09.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(63, 23, 'fakerpress_flag', '1'),
(64, 23, '_fakerpress_orginal_url', 'https://picsum.photos/1289/859/?random'),
(65, 24, 'fakerpress_flag', '1'),
(66, 25, '_wp_attached_file', '2021/12/7e65add7-3203-39f1-9de8-4d918b54dec9.png'),
(67, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:560;s:6:\"height\";i:448;s:4:\"file\";s:48:\"2021/12/7e65add7-3203-39f1-9de8-4d918b54dec9.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 25, 'fakerpress_flag', '1'),
(69, 25, '_fakerpress_orginal_url', 'http://placehold.it/560x448/'),
(70, 24, '_thumbnail_id', '25'),
(71, 26, '_wp_attached_file', '2021/12/803f776b-05b4-347d-8148-5fabae4709d2.jpg'),
(72, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:48:\"2021/12/803f776b-05b4-347d-8148-5fabae4709d2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(73, 26, 'fakerpress_flag', '1'),
(74, 26, '_fakerpress_orginal_url', 'https://picsum.photos/1050/700/?random'),
(75, 27, '_wp_attached_file', '2021/12/3e717fe6-0697-3f55-a3c0-b4a13bbdeaeb.jpg'),
(76, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1357;s:6:\"height\";i:904;s:4:\"file\";s:48:\"2021/12/3e717fe6-0697-3f55-a3c0-b4a13bbdeaeb.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(77, 27, 'fakerpress_flag', '1'),
(78, 27, '_fakerpress_orginal_url', 'https://picsum.photos/1357/904/?random'),
(79, 28, '_wp_attached_file', '2021/12/a70dbbf6-2dbf-358b-8674-3b990ccdae0d.jpg'),
(80, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1210;s:6:\"height\";i:806;s:4:\"file\";s:48:\"2021/12/a70dbbf6-2dbf-358b-8674-3b990ccdae0d.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(81, 28, 'fakerpress_flag', '1'),
(82, 28, '_fakerpress_orginal_url', 'https://picsum.photos/1210/806/?random'),
(83, 29, 'fakerpress_flag', '1'),
(84, 30, '_wp_attached_file', '2021/12/30e763dd-9b05-3bdb-a574-0ebb52883790.png'),
(85, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:334;s:6:\"height\";i:267;s:4:\"file\";s:48:\"2021/12/30e763dd-9b05-3bdb-a574-0ebb52883790.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 30, 'fakerpress_flag', '1'),
(87, 30, '_fakerpress_orginal_url', 'http://placehold.it/334x267/'),
(88, 29, '_thumbnail_id', '30'),
(89, 31, 'fakerpress_flag', '1'),
(90, 32, '_wp_attached_file', '2021/12/23eb736c-b39d-3e4f-bd49-80bdf304ef0f.jpg'),
(91, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1148;s:6:\"height\";i:765;s:4:\"file\";s:48:\"2021/12/23eb736c-b39d-3e4f-bd49-80bdf304ef0f.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(92, 32, 'fakerpress_flag', '1'),
(93, 32, '_fakerpress_orginal_url', 'https://picsum.photos/1148/765/?random'),
(94, 31, '_thumbnail_id', '32'),
(95, 33, '_wp_attached_file', '2021/12/057e3771-2c3d-36cc-bdb8-0651cc4aa298.png'),
(96, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:423;s:6:\"height\";i:338;s:4:\"file\";s:48:\"2021/12/057e3771-2c3d-36cc-bdb8-0651cc4aa298.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 33, 'fakerpress_flag', '1'),
(98, 33, '_fakerpress_orginal_url', 'http://placehold.it/423x338/'),
(99, 34, '_wp_attached_file', '2021/12/5f1cd7be-96f5-3c8f-a104-7eb7506fd52a.jpg'),
(100, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1370;s:6:\"height\";i:913;s:4:\"file\";s:48:\"2021/12/5f1cd7be-96f5-3c8f-a104-7eb7506fd52a.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(101, 34, 'fakerpress_flag', '1'),
(102, 34, '_fakerpress_orginal_url', 'https://picsum.photos/1370/913/?random'),
(103, 35, 'fakerpress_flag', '1'),
(104, 36, '_wp_attached_file', '2021/12/e9bbfaa0-18bf-34e2-b0f3-ae6208a79b24.png'),
(105, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:474;s:6:\"height\";i:379;s:4:\"file\";s:48:\"2021/12/e9bbfaa0-18bf-34e2-b0f3-ae6208a79b24.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 36, 'fakerpress_flag', '1'),
(107, 36, '_fakerpress_orginal_url', 'http://placehold.it/474x379/'),
(108, 35, '_thumbnail_id', '36'),
(109, 37, 'fakerpress_flag', '1'),
(110, 38, '_wp_attached_file', '2021/12/1817a0fa-e7e2-3587-894c-e92eb479b070.jpg'),
(111, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1180;s:6:\"height\";i:786;s:4:\"file\";s:48:\"2021/12/1817a0fa-e7e2-3587-894c-e92eb479b070.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(112, 38, 'fakerpress_flag', '1'),
(113, 38, '_fakerpress_orginal_url', 'https://picsum.photos/1180/786/?random'),
(114, 37, '_thumbnail_id', '38'),
(115, 39, 'fakerpress_flag', '1'),
(116, 40, '_wp_attached_file', '2021/12/424f086f-bfd6-339f-a852-b597ecdcb773.jpg'),
(117, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1072;s:6:\"height\";i:714;s:4:\"file\";s:48:\"2021/12/424f086f-bfd6-339f-a852-b597ecdcb773.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(118, 40, 'fakerpress_flag', '1'),
(119, 40, '_fakerpress_orginal_url', 'https://picsum.photos/1072/714/?random'),
(120, 41, '_wp_attached_file', '2021/12/88af10cd-1ff4-3b02-af22-a5f9f9a18182.jpg'),
(121, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1309;s:6:\"height\";i:872;s:4:\"file\";s:48:\"2021/12/88af10cd-1ff4-3b02-af22-a5f9f9a18182.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(122, 41, 'fakerpress_flag', '1'),
(123, 41, '_fakerpress_orginal_url', 'https://picsum.photos/1309/872/?random'),
(124, 42, 'fakerpress_flag', '1'),
(125, 43, '_wp_attached_file', '2021/12/ca8c40e3-b6b1-3423-948d-f7e1d9eebe33.jpg'),
(126, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1410;s:6:\"height\";i:940;s:4:\"file\";s:48:\"2021/12/ca8c40e3-b6b1-3423-948d-f7e1d9eebe33.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(127, 43, 'fakerpress_flag', '1'),
(128, 43, '_fakerpress_orginal_url', 'https://picsum.photos/1410/940/?random'),
(129, 42, '_thumbnail_id', '43'),
(130, 44, 'fakerpress_flag', '1'),
(131, 45, '_wp_attached_file', '2021/12/e73eef0c-fb5d-3cfe-84d5-730931734c49.png'),
(132, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:266;s:6:\"height\";i:212;s:4:\"file\";s:48:\"2021/12/e73eef0c-fb5d-3cfe-84d5-730931734c49.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 45, 'fakerpress_flag', '1'),
(134, 45, '_fakerpress_orginal_url', 'http://placehold.it/266x212/'),
(135, 44, '_thumbnail_id', '45'),
(136, 46, '_wp_attached_file', '2021/12/0cd87282-957b-3bd4-878d-6fde8bfa0762.png'),
(137, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:438;s:6:\"height\";i:350;s:4:\"file\";s:48:\"2021/12/0cd87282-957b-3bd4-878d-6fde8bfa0762.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 46, 'fakerpress_flag', '1'),
(139, 46, '_fakerpress_orginal_url', 'http://placehold.it/438x350/'),
(140, 47, 'fakerpress_flag', '1'),
(141, 48, '_wp_attached_file', '2021/12/6524d0a5-310c-3e58-91c0-ecc6beee9dde.jpg'),
(142, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1205;s:6:\"height\";i:803;s:4:\"file\";s:48:\"2021/12/6524d0a5-310c-3e58-91c0-ecc6beee9dde.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(143, 48, 'fakerpress_flag', '1'),
(144, 48, '_fakerpress_orginal_url', 'https://picsum.photos/1205/803/?random'),
(145, 47, '_thumbnail_id', '48'),
(146, 49, '_wp_attached_file', '2021/12/7afc39a8-d5d8-3f52-8472-c29d4795d468.png'),
(147, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:517;s:6:\"height\";i:413;s:4:\"file\";s:48:\"2021/12/7afc39a8-d5d8-3f52-8472-c29d4795d468.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 49, 'fakerpress_flag', '1'),
(149, 49, '_fakerpress_orginal_url', 'http://placehold.it/517x413/'),
(150, 50, '_wp_attached_file', '2021/12/d5fb99e5-7a7a-3b61-b867-447cf599b3a3.png'),
(151, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:527;s:6:\"height\";i:421;s:4:\"file\";s:48:\"2021/12/d5fb99e5-7a7a-3b61-b867-447cf599b3a3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 50, 'fakerpress_flag', '1'),
(153, 50, '_fakerpress_orginal_url', 'http://placehold.it/527x421/'),
(154, 51, 'fakerpress_flag', '1'),
(155, 52, '_wp_attached_file', '2021/12/08ebdd54-ca54-3790-9604-6c5dc8f5efc6.png'),
(156, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:200;s:4:\"file\";s:48:\"2021/12/08ebdd54-ca54-3790-9604-6c5dc8f5efc6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 52, 'fakerpress_flag', '1'),
(158, 52, '_fakerpress_orginal_url', 'http://placehold.it/250x200/'),
(159, 51, '_thumbnail_id', '52'),
(160, 53, '_wp_attached_file', '2021/12/6503e14b-92fa-3f27-b271-4caa39530159.png'),
(161, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:541;s:6:\"height\";i:432;s:4:\"file\";s:48:\"2021/12/6503e14b-92fa-3f27-b271-4caa39530159.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 53, 'fakerpress_flag', '1'),
(163, 53, '_fakerpress_orginal_url', 'http://placehold.it/541x432/'),
(164, 54, '_wp_attached_file', '2021/12/740390e4-0435-37e2-839f-956c99a810b0.jpg'),
(165, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1412;s:6:\"height\";i:941;s:4:\"file\";s:48:\"2021/12/740390e4-0435-37e2-839f-956c99a810b0.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(166, 54, 'fakerpress_flag', '1'),
(167, 54, '_fakerpress_orginal_url', 'https://picsum.photos/1412/941/?random'),
(168, 55, 'fakerpress_flag', '1'),
(169, 56, '_wp_attached_file', '2021/12/da3e51f4-7070-356b-a098-3c800e4ffcba.png'),
(170, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:446;s:6:\"height\";i:356;s:4:\"file\";s:48:\"2021/12/da3e51f4-7070-356b-a098-3c800e4ffcba.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 56, 'fakerpress_flag', '1'),
(172, 56, '_fakerpress_orginal_url', 'http://placehold.it/446x356/'),
(173, 55, '_thumbnail_id', '56'),
(174, 57, 'fakerpress_flag', '1'),
(175, 58, '_wp_attached_file', '2021/12/be0bfcfc-b428-3f68-91d5-39f2e708a5bd.jpg'),
(176, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1344;s:6:\"height\";i:896;s:4:\"file\";s:48:\"2021/12/be0bfcfc-b428-3f68-91d5-39f2e708a5bd.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(177, 58, 'fakerpress_flag', '1'),
(178, 58, '_fakerpress_orginal_url', 'https://picsum.photos/1344/896/?random'),
(179, 57, '_thumbnail_id', '58'),
(180, 59, 'fakerpress_flag', '1'),
(181, 60, '_wp_attached_file', '2021/12/065c2943-a133-3c36-a1ec-c9e07d69b94f.jpg'),
(182, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:933;s:4:\"file\";s:48:\"2021/12/065c2943-a133-3c36-a1ec-c9e07d69b94f.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(183, 60, 'fakerpress_flag', '1'),
(184, 60, '_fakerpress_orginal_url', 'https://picsum.photos/1400/933/?random'),
(185, 59, '_thumbnail_id', '60'),
(186, 61, '_menu_item_type', 'custom'),
(187, 61, '_menu_item_menu_item_parent', '0'),
(188, 61, '_menu_item_object_id', '61'),
(189, 61, '_menu_item_object', 'custom'),
(190, 61, '_menu_item_target', ''),
(191, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 61, '_menu_item_xfn', ''),
(193, 61, '_menu_item_url', 'http://localhost/cli-wp/'),
(194, 61, '_menu_item_orphaned', '1639916805'),
(195, 62, '_menu_item_type', 'post_type'),
(196, 62, '_menu_item_menu_item_parent', '0'),
(197, 62, '_menu_item_object_id', '2'),
(198, 62, '_menu_item_object', 'page'),
(199, 62, '_menu_item_target', ''),
(200, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(201, 62, '_menu_item_xfn', ''),
(202, 62, '_menu_item_url', ''),
(203, 62, '_menu_item_orphaned', '1639916805'),
(204, 63, '_menu_item_type', 'custom'),
(205, 63, '_menu_item_menu_item_parent', '0'),
(206, 63, '_menu_item_object_id', '63'),
(207, 63, '_menu_item_object', 'custom'),
(208, 63, '_menu_item_target', ''),
(209, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(210, 63, '_menu_item_xfn', ''),
(211, 63, '_menu_item_url', 'http://localhost/cli-wp/'),
(212, 63, '_menu_item_orphaned', '1639917048'),
(213, 64, '_menu_item_type', 'post_type'),
(214, 64, '_menu_item_menu_item_parent', '0'),
(215, 64, '_menu_item_object_id', '2'),
(216, 64, '_menu_item_object', 'page'),
(217, 64, '_menu_item_target', ''),
(218, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(219, 64, '_menu_item_xfn', ''),
(220, 64, '_menu_item_url', ''),
(221, 64, '_menu_item_orphaned', '1639917048'),
(222, 65, '_menu_item_type', 'custom'),
(223, 65, '_menu_item_menu_item_parent', '0'),
(224, 65, '_menu_item_object_id', '65'),
(225, 65, '_menu_item_object', 'custom'),
(226, 65, '_menu_item_target', ''),
(227, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 65, '_menu_item_xfn', ''),
(229, 65, '_menu_item_url', 'http://localhost/cli-wp/'),
(231, 66, '_menu_item_type', 'post_type'),
(232, 66, '_menu_item_menu_item_parent', '0'),
(233, 66, '_menu_item_object_id', '2'),
(234, 66, '_menu_item_object', 'page'),
(235, 66, '_menu_item_target', ''),
(236, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(237, 66, '_menu_item_xfn', ''),
(238, 66, '_menu_item_url', ''),
(239, 66, '_menu_item_orphaned', '1639917624'),
(240, 67, '_menu_item_type', 'post_type'),
(241, 67, '_menu_item_menu_item_parent', '0'),
(242, 67, '_menu_item_object_id', '57'),
(243, 67, '_menu_item_object', 'post'),
(244, 67, '_menu_item_target', ''),
(245, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(246, 67, '_menu_item_xfn', ''),
(247, 67, '_menu_item_url', ''),
(249, 68, '_menu_item_type', 'post_type'),
(250, 68, '_menu_item_menu_item_parent', '67'),
(251, 68, '_menu_item_object_id', '44'),
(252, 68, '_menu_item_object', 'post'),
(253, 68, '_menu_item_target', ''),
(254, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(255, 68, '_menu_item_xfn', ''),
(256, 68, '_menu_item_url', ''),
(258, 69, '_menu_item_type', 'post_type'),
(259, 69, '_menu_item_menu_item_parent', '0'),
(260, 69, '_menu_item_object_id', '5'),
(261, 69, '_menu_item_object', 'post'),
(262, 69, '_menu_item_target', ''),
(263, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(264, 69, '_menu_item_xfn', ''),
(265, 69, '_menu_item_url', ''),
(267, 70, '_menu_item_type', 'post_type'),
(268, 70, '_menu_item_menu_item_parent', '68'),
(269, 70, '_menu_item_object_id', '47'),
(270, 70, '_menu_item_object', 'post'),
(271, 70, '_menu_item_target', ''),
(272, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(273, 70, '_menu_item_xfn', ''),
(274, 70, '_menu_item_url', ''),
(276, 71, '_menu_item_type', 'post_type'),
(277, 71, '_menu_item_menu_item_parent', '69'),
(278, 71, '_menu_item_object_id', '35'),
(279, 71, '_menu_item_object', 'post'),
(280, 71, '_menu_item_target', ''),
(281, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(282, 71, '_menu_item_xfn', ''),
(283, 71, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-12-19 14:23:23', '2021-12-19 11:23:23', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2021-12-19 14:23:23', '2021-12-19 11:23:23', '', 0, 'http://localhost/cli-wp/?p=1', 0, 'post', '', 1),
(2, 1, '2021-12-19 14:23:23', '2021-12-19 11:23:23', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/cli-wp/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-12-19 14:23:23', '2021-12-19 11:23:23', '', 0, 'http://localhost/cli-wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-12-19 14:23:23', '2021-12-19 11:23:23', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost/cli-wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-12-19 14:23:23', '2021-12-19 11:23:23', '', 0, 'http://localhost/cli-wp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-12-19 14:23:37', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-19 14:23:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=4', 0, 'post', '', 0),
(5, 1, '2021-12-18 22:25:31', '2021-12-18 19:25:31', '<h6>Nihil omnis porro similique inventore consectetur cum dolorum. Sint tenetur dolor vitae quaerat fugit maiores. Fugiat pariatur explicabo corrupti suscipit fugiat molestiae</h6>\n<blockquote>Quam repellat exercitationem <a title=\"Autem aperiam quibusdam nisi.\" href=\"http://sanford.com/\">commodi dolores minus</a> Earum vitae dicta. Consequatur autem voluptate unde facere consequatur <a title=\"Maxime hic.\" href=\"http://bartoletti.org/sed-vero-voluptate-eum-sunt-maiores-ut-delectus-dolor\">Consequatur quo mollitia dolores</a> Iure consequatur iure eos. Ex aut itaque. Molestias consectetur ipsa totam. Consequatur occaecati et impedit corrupti. Tempora <a title=\"Ut est perferendis fugit quia nam vitae non unde labore.\" href=\"http://steuber.com/\">eum maiores</a> aut. Porro doloremque est culpa id. Minima eos <a title=\"Animi recusandae est.\" href=\"http://www.deckow.biz/delectus-et-rerum-quae-magni-facere-atque-doloribus\">id vel fugit voluptatem laboriosam.</a> architecto porro quia mollitia quis. ducimus est et</blockquote>\n<hr>\n<h1>Recusandae et quod et vero quas nam a. Incidunt quibusdam ut a sunt</h1>\n<!--more-->\n<hr>\n<p>Esse explicabo omnis eius est totam iusto voluptate minus. Voluptate non eligendi pariatur odio velit et. Ea eum quas ut voluptas aliquam maiores. Porro ipsam illum aut unde ut ducimus sit. Similique necessitatibus quas alias nisi cum odio occaecati sapiente. Et veniam eaque maxime nulla voluptatem. Corporis qui aut et ad. Totam ea tempore sed et qui. Corrupti quisquam magni qui aut consequatur. Iusto dolor pariatur mollitia suscipit dolorem dolorem aperiam. Explicabo quisquam asperiores odit possimus. Quis voluptas iusto necessitatibus ipsum vero. Molestiae vitae consequatur ut omnis. Nisi et accusamus est et quasi. Dolorem quisquam sunt aut excepturi. Alias fuga saepe et voluptas. Vero voluptatem asperiores autem voluptatibus aut.</p>\n<h3>Rerum facilis dolores accusantium ratione vitae</h3>\n<ol><li>Sed suscipit</li><li>Suscipit quos ut ea ut</li></ol>\n<h1>Voluptatibus consequuntur sed libero fuga. Alias deserunt aut cum. Id in aut qui non. Est mollitia vel libero facilis</h1>\n<ul><li>Iusto aut facilis sapiente delectus</li><li>A voluptatibus</li></ul>\n<p>Cupiditate quo sunt cum adipisci sunt Ut voluptatem quia ullam et. Qui sed consequatur expedita magni. eum deserunt adipisci eum Sit id tenetur rerum sunt porro rerum. accusamus itaque nihil. Atque accusamus placeat quibusdam. Amet debitis delectus veniam cupiditate. suscipit sit pariatur vel. Et voluptas eum iure reiciendis reiciendis. Rerum voluptatem qui ut Nobis dolor error fuga. nihil reiciendis maxime iusto fuga voluptatum Voluptatibus eaque illo nemo sed quas ut minima. Consequuntur et accusamus vel fuga Amet consequuntur <a title=\"Quas ratione qui fugiat tempora.\" href=\"http://stoltenberg.com/accusamus-aut-et-explicabo-quam-magnam-voluptate\">ut dolores consequatur.</a> incidunt molestiae officia sequi facilis. Nemo suscipit quo et qui praesentium. Dolorem qui dolorum et temporibus fugiat. Ipsa error nesciunt dolores Quam consequatur delectus illum. Provident adipisci debitis Voluptas qui eos est ducimus ut. Facilis reprehenderit accusamus vel ut. ab ipsam dicta eum. Qui aspernatur dolorem Est officia eaque qui. soluta cum aut iusto eaque.</p>\n<blockquote>Illum iste quod ullam Ut voluptatem natus atque et laborum ipsum. Sit laudantium <a title=\"Ipsa aliquid minus.\" href=\"http://terry.com/odit-quae-magnam-fuga-et-iure-occaecati.html\">impedit delectus accusamus ut. Dolorem</a> deserunt autem dolorum quis.</blockquote>', 'Quia aut quasi et aut atque error', 'Incidunt quasi maiores nulla et aperiam modi aut ad est qui maiores provident tempore laborum sunt natus rerum quis non culpa a beatae non consequatur consequuntur animi animi rem ea esse nobis soluta aut voluptatem inventore velit qui aut consequatur ipsum est repellendus non nulla veritatis nesciunt repudiandae culpa repellendus aliquid ipsa porro nobis ut pariatur et omnis voluptatem velit deleniti rerum dignissimos non consectetur eum laborum quaerat impedit.', 'publish', 'open', 'closed', '', 'quia-aut-quasi-et-aut-atque-error', '', '', '2021-12-18 22:25:31', '2021-12-18 19:25:31', '', 0, 'http://localhost/cli-wp/2021/12/18/quia-aut-quasi-et-aut-atque-error/', 0, 'post', '', 0),
(6, 1, '2021-12-19 14:25:36', '2021-12-19 11:25:36', '', '65f91ec9-2e4a-360c-a1f1-3454fa8361a3', '', 'inherit', 'open', 'closed', '', '65f91ec9-2e4a-360c-a1f1-3454fa8361a3', '', '', '2021-12-19 14:25:36', '2021-12-19 11:25:36', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/65f91ec9-2e4a-360c-a1f1-3454fa8361a3.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2021-12-18 13:02:31', '2021-12-18 10:02:31', '<ul><li>Harum aut rem distinctio culpa natus voluptas</li><li>Delectus</li><li>Atque non sint et optio commodi et dicta</li><li>Culpa fugit aut dolores suscipit omnis qui</li></ul>\n<h4>Officiis laboriosam aspernatur odio laboriosam qui quas ipsum. Laborum nostrum ex nulla repellendus molestiae ut</h4>\n<hr>\n<hr>\n<!--more-->\n<hr>\n<ol><li>Sed autem et dolor qui</li><li>Accusantium</li><li>Eos commodi</li><li>Voluptas omnis id voluptas perferendis</li></ol>\n<h6>Quo vel quo omnis eligendi incidunt. Omnis doloribus ea est aut</h6>\n<ol><li>Quia possimus nulla</li><li>Qui ut officia quasi</li><li>Alias ex ad et voluptatem</li><li>Ex non laboriosam ipsam quam omnis porro</li><li>Rerum corporis molestias tempora earum</li><li>Ullam aut unde et aspernatur sit</li><li>Inventore</li><li>Nam fuga voluptas</li></ol>\n<h1>Optio nesciunt consequatur repellat. Animi in rerum beatae suscipit ut exercitationem qui et. In ea tempora et aspernatur dolorem debitis laboriosam</h1>\n<p>Aliquam molestiae reprehenderit ut labore. Occaecati aut <a title=\"Aut est rerum.\" href=\"https://nader.biz/fuga-perferendis-rerum-qui-voluptas-quia-cum.html\">qui voluptas repudiandae illo quaerat.</a> et accusamus voluptatum numquam dolor. Quae quae eligendi velit dolorem Eius quam deserunt velit minus Qui et et quia. enim animi sapiente et esse distinctio. Ducimus dolorum dicta et explicabo aliquam ut. Ratione dolor officia ut. Et ut autem incidunt sint. Est excepturi ut corporis voluptatum Necessitatibus sit deserunt vel reprehenderit doloribus. Amet est et ab ratione. Sunt nihil aut blanditiis voluptas. quia dolorem sit. Dignissimos voluptas nemo qui voluptas voluptatem et. Nesciunt aliquid reiciendis possimus Velit non voluptatem aperiam maiores magnam. Ea id suscipit dolor molestiae aliquam aut. dolorem aut recusandae illum est Impedit rerum magni non ut labore. Tenetur illo et nemo. Ea tempora ex officiis Facilis est aut ut officiis unde delectus. Natus aut et illum ut Distinctio dolores deserunt impedit in Ex dolorum maxime <a title=\"Ab odio omnis beatae eos error.\" href=\"http://abbott.org/aliquid-recusandae-et-minus-dignissimos-sit\">qui et</a> vero animi. Officia voluptas sit vitae doloremque. Eius ut nemo inventore quibusdam quam. Voluptate laborum sint mollitia explicabo. Facere quas quia voluptatem quis. ratione cumque adipisci velit ratione. Nemo accusantium dolorum at quam eum. Voluptatem odio earum tempore Id amet inventore sunt accusamus. Et cum debitis perspiciatis quo ipsam. vel quos nisi eum odio aut. Voluptatem explicabo dolor dolores dolorem et assumenda. Nobis explicabo quia natus eos. Quia sapiente in voluptas est placeat. atque autem consequatur <a title=\"Numquam veniam.\" href=\"http://schoen.biz/consequatur-delectus-qui-totam-illo\">Consequatur occaecati consequatur rerum ducimus</a> et. Eum vel officiis quibusdam.</p>\n<blockquote>Vel unde ea non consequatur molestiae. Eum saepe vero quia dolore. Dignissimos perspiciatis aperiam porro excepturi ipsa qui perferendis. Sapiente est aperiam vel hic eius fuga cupiditate. Enim facilis consequatur molestiae et. Voluptatem et voluptatem sunt ducimus quibusdam dignissimos saepe. Est tenetur totam harum. Reiciendis ea non nihil ad quidem ratione. Enim in quo ut harum. Optio beatae aliquid et eos sit et. Quidem qui nostrum dolorum. Consequuntur fugiat sunt et ratione. Exercitationem consequatur magni et accusantium optio vero quia iste. Unde provident aliquam aut eius possimus praesentium repellendus. Enim aut autem qui est quae. Dolore pariatur veritatis perspiciatis optio consequatur molestiae. Est et odit ipsa nihil sit aliquam. Ut explicabo enim at dolor et. Deserunt est odit sint dolorem facere ducimus consequatur. Quia veritatis non est quis rerum voluptatem perferendis voluptatem. Odio aut quo nostrum blanditiis dolorum. Voluptas quis explicabo molestias eos ea maxime. Modi id omnis saepe officia magnam sed. Dicta praesentium consequatur reiciendis ex qui.</blockquote>', 'Qui cumque sed et', 'Beatae beatae pariatur doloremque est ullam ut architecto dolores ut quia blanditiis velit iste quaerat ut eum quo ut officia voluptatem qui sit reprehenderit illum inventore possimus quasi tenetur ex qui dolores.\n\nQuia nesciunt velit in consequatur nesciunt et ea commodi ut exercitationem exercitationem autem eveniet repellendus tempore et voluptas non est sit ab omnis labore illum voluptatem et voluptatem impedit a quaerat quod nesciunt quibusdam quo odit eligendi delectus maiores in doloribus consequatur officia vitae deserunt quia voluptatem beatae nobis.', 'publish', 'open', 'closed', '', 'qui-cumque-sed-et', '', '', '2021-12-18 13:02:31', '2021-12-18 10:02:31', '', 0, 'http://localhost/cli-wp/2021/12/18/qui-cumque-sed-et/', 0, 'post', '', 0),
(8, 1, '2021-12-19 14:25:36', '2021-12-19 11:25:36', '', '9cbf0c21-ce2b-3082-93c0-9dc03829474f', '', 'inherit', 'open', 'closed', '', '9cbf0c21-ce2b-3082-93c0-9dc03829474f', '', '', '2021-12-19 14:25:36', '2021-12-19 11:25:36', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/9cbf0c21-ce2b-3082-93c0-9dc03829474f.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2021-12-19 14:25:37', '2021-12-19 11:25:37', '', 'c0870275-6091-3999-9663-85b6e7966cb4', '', 'inherit', 'open', 'closed', '', 'c0870275-6091-3999-9663-85b6e7966cb4', '', '', '2021-12-19 14:25:37', '2021-12-19 11:25:37', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/c0870275-6091-3999-9663-85b6e7966cb4.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2021-12-19 14:25:37', '2021-12-19 11:25:37', '', 'fc0c6261-577a-3fdb-b4b3-3b902474a32f', '', 'inherit', 'open', 'closed', '', 'fc0c6261-577a-3fdb-b4b3-3b902474a32f', '', '', '2021-12-19 14:25:37', '2021-12-19 11:25:37', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/fc0c6261-577a-3fdb-b4b3-3b902474a32f.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2021-12-19 14:25:37', '2021-12-19 11:25:37', '', '3f1db067-920f-39e4-a118-81251f0cf17e', '', 'inherit', 'open', 'closed', '', '3f1db067-920f-39e4-a118-81251f0cf17e', '', '', '2021-12-19 14:25:37', '2021-12-19 11:25:37', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/3f1db067-920f-39e4-a118-81251f0cf17e.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2021-12-18 09:23:43', '2021-12-18 06:23:43', '<h1>A explicabo maiores recusandae. Quia enim illum omnis consectetur</h1>\n<ul><li>Et qui iure odio veritatis</li></ul>\n<h2>Placeat quia similique eum nobis animi vitae. Et in in officia qui occaecati. Sed molestias qui sit alias quod. Praesentium ea qui inventore neque placeat qui voluptas</h2>\n<ol><li>Et consectetur qui aut illo sit in qui</li><li>Incidunt doloremque</li><li>Ducimus tempora cupiditate consequuntur quia</li><li>Id odio autem et</li><li>Temporibus est tempora quia impedit</li><li>Nisi similique</li><li>Natus et modi illo ratione</li></ol>\n<h4>Doloribus eveniet non nemo in error occaecati provident. Ea et velit adipisci neque consequuntur omnis in. Est suscipit nulla odio sed et</h4>\n<img src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/c0870275-6091-3999-9663-85b6e7966cb4.png\">\n<blockquote>Eligendi consequatur <a title=\"At quia ipsum pariatur facilis maiores atque.\" href=\"http://mueller.org/natus-aut-autem-autem-soluta-quia-aut.html\"><a title=\"Consectetur optio.\" href=\"http://www.reynolds.org/ea-quaerat-quia-saepe-eligendi-quis.html\">perspiciatis. Sunt et</a></a> amet dolore quis consequatur ipsa. Possimus <a title=\"Qui aut quam.\" href=\"https://www.ruecker.com/voluptas-aperiam-odio-ut-quia-autem-repellendus\">numquam quisquam quisquam aut</a> et</blockquote>\n<hr>\n<p>Debitis aliquid labore aut. Expedita consectetur aut omnis quasi. facere officiis Fugit aut impedit Dolores minima voluptatem modi Cupiditate excepturi repellendus ipsa. Quaerat neque deleniti est aliquam laboriosam. distinctio possimus error minus consequatur. Aliquam ut velit est dolor adipisci possimus. Eius dicta corrupti qui iusto Ipsum hic sint voluptates pariatur. Sapiente voluptas ab accusantium nulla corrupti occaecati. Enim consequatur aut totam at et tenetur Doloribus aliquam est eos numquam et. Ea quia consequatur aut est. inventore voluptates expedita qui. Quia porro autem mollitia Ratione dicta ab labore quaerat aperiam sit. Recusandae ut velit beatae. Magni totam dolorum sequi vero <a title=\"Blanditiis itaque.\" href=\"http://www.heidenreich.org/\">Quia hic exercitationem et</a> Id porro recusandae quos Ut maxime eos voluptatem a modi Quia labore itaque maiores ipsa. Quia deleniti porro laboriosam. Et aliquid nobis ut sit tempore incidunt. Qui aliquam vel voluptatem est autem eum. laudantium sit nostrum quo at optio. alias ut amet Aspernatur eum qui est. Ad facere voluptas quasi et. quia laudantium non. Laudantium et aspernatur. Porro aut necessitatibus non ea Quibusdam velit maxime rerum rerum aperiam.</p>\n<!--more-->\n<blockquote>Fuga ad expedita aut unde ratione ut voluptate. Et exercitationem suscipit quia iure ad soluta. Vitae eum quo assumenda commodi iure dolores tempora. Nam a pariatur rerum dicta. Voluptatem eos voluptatem aperiam voluptas molestiae. Quo quo illo dolor quasi dignissimos ratione qui. Mollitia ratione fugiat itaque possimus inventore voluptas optio et. Modi quia vel alias eum in et nam. Sint doloremque aspernatur quibusdam nostrum dolores. Voluptas blanditiis nihil sunt ratione dolores quo. Asperiores est sapiente sed. Quas ea et illum repellat. Voluptatem dignissimos consequatur magnam illum labore. Excepturi quia ea cumque mollitia laboriosam. Repellendus pariatur ipsum qui quis accusantium porro. Sunt aut occaecati dolorem nobis minima. Odit voluptatibus aut non distinctio blanditiis. Molestiae voluptatem error fuga recusandae. Quia quia maxime unde earum sed. Debitis dicta architecto vel optio distinctio et. Porro tempore aut placeat ad. Quis enim aspernatur consequuntur unde quasi inventore quam. Dicta qui fugiat debitis odit. Enim aliquam accusantium quidem est autem tenetur autem. Animi quaerat voluptatem ea ea. Consequatur mollitia accusantium expedita reprehenderit tenetur officiis est in. Natus suscipit officia ipsum est blanditiis. Esse dolor iure aperiam id. Quia quae facilis facilis sed fugiat. Quo at quae nobis velit ut fuga dolor perferendis. Ipsam sunt beatae ratione id deleniti. Maxime sunt ut ut et expedita dicta. Consectetur debitis aut et rerum itaque quo. Vitae soluta ducimus eos repellendus sint nemo sint omnis. Aut quidem soluta impedit ratione vero ut magnam debitis. Similique perferendis sit saepe quia culpa ea. Maiores est id dolore fugiat reiciendis ex doloremque. Excepturi voluptatem ad eum nobis error molestias. Quo porro tenetur esse qui aut explicabo. Cum qui et ullam consequatur qui est ducimus. Rerum tenetur sit quia vitae autem harum.</blockquote>\n<h2>Ratione id suscipit qui vel et odit. Est autem deserunt et unde aut nemo. Non unde qui fugiat debitis quo voluptatibus iure. Ullam quis adipisci qui eaque nemo maxime ad nulla</h2>\n<img alt=\"Iusto exercitationem iste velit iure\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/fc0c6261-577a-3fdb-b4b3-3b902474a32f.png\">\n<ul><li>Eum quos sed veniam</li><li>Molestiae</li><li>Qui cum enim qui omnis</li><li>Ut assumenda quo inventore aliquam autem</li><li>Quia ut ab eos</li><li>Eum provident adipisci incidunt magni</li><li>Accusamus odio corrupti aut</li></ul>\n<h1>Distinctio non magni laudantium mollitia fuga natus laboriosam. Consequatur est aperiam nisi quis accusamus. Quod soluta quam tempora optio iure est veniam. Molestias in expedita et qui</h1>\n<img alt=\"Pariatur\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/3f1db067-920f-39e4-a118-81251f0cf17e.png\">', 'Quo fuga dolores sit veniam atque dolores', 'Quidem qui suscipit illo quibusdam voluptatem dolorum adipisci animi esse ut laboriosam neque ut enim dolor qui rerum alias consequatur quia ullam est ut aliquam unde ratione omnis consectetur ex quam et non perspiciatis perspiciatis provident ex quibusdam aut et commodi soluta repudiandae possimus facilis iure corporis illo doloribus reiciendis tempore dolore asperiores ut excepturi occaecati quae consequatur qui distinctio ipsam consequuntur quis autem necessitatibus nam unde corporis voluptates velit rerum veniam soluta et.', 'publish', 'open', 'open', '', 'quo-fuga-dolores-sit-veniam-atque-dolores', '', '', '2021-12-18 09:23:43', '2021-12-18 06:23:43', '', 0, 'http://localhost/cli-wp/2021/12/18/quo-fuga-dolores-sit-veniam-atque-dolores/', 0, 'post', '', 0),
(13, 1, '2021-12-19 14:25:38', '2021-12-19 11:25:38', '', '0c046048-e35f-307e-9bde-99e768f22ea5', '', 'inherit', 'open', 'closed', '', '0c046048-e35f-307e-9bde-99e768f22ea5', '', '', '2021-12-19 14:25:38', '2021-12-19 11:25:38', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/0c046048-e35f-307e-9bde-99e768f22ea5.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2021-12-18 00:29:08', '2021-12-17 21:29:08', '<p>Esse <a title=\"Quo ut nesciunt.\" href=\"https://www.murphy.com/deserunt-labore-cumque-magni-provident\">aliquam sapiente molestiae ipsa laborum.</a> vero voluptas minus expedita. Officia ut ullam. Molestias possimus ipsam exercitationem. sequi provident omnis qui et et. Quo dolor quasi est perferendis. Hic laboriosam voluptatibus iusto non. cum eum error. Dicta praesentium non <a title=\"Ut quasi architecto rerum sed.\" href=\"http://www.klocko.com/\">minima. Et saepe officiis</a> voluptatum aut qui. sint voluptatem aperiam <a title=\"Esse id in quidem similique.\" href=\"https://monahan.com/quos-aut-nostrum-et-quibusdam-iure-magni-voluptas.html\">et</a> consequatur. Qui officiis dicta non porro consequatur. quaerat quia adipisci vel. Molestias itaque tempora <a title=\"Voluptatem pariatur esse eum.\" href=\"http://watsica.com/voluptates-ullam-repellendus-debitis-dolor-praesentium\">sint. Impedit iure facere</a> laudantium Aliquid voluptas assumenda est Aperiam quos perferendis aut est.</p>\n<h6>Aut fugiat distinctio quia sit sit consequatur aut</h6>\n<ol><li>Ea dolor explicabo nihil ut quidem</li><li>Et quibusdam nihil</li><li>Cupiditate sit magnam deserunt</li><li>Explicabo at quaerat cum tempora</li></ol>\n<h1>Magni suscipit consequatur rerum quaerat</h1>\n<!--more-->\n<p>Cum officiis vero tempora. aut et laborum Odit et earum Possimus aspernatur est. fuga nesciunt veritatis Voluptatem laudantium vitae illum et. omnis aliquam eveniet eum dolores. rerum dolores corporis qui distinctio Hic voluptatibus id et fugit. Voluptas dolorem sequi quaerat vel a pariatur. Sint repudiandae deserunt ipsam asperiores. consequatur consectetur aut voluptatem fugit molestias. Voluptate ex voluptatum temporibus sed dolor. Amet accusantium cumque <a title=\"Deleniti illo molestiae ut suscipit voluptatem impedit ipsam.\" href=\"https://www.emard.net/nam-magnam-deserunt-nisi-sunt-quibusdam\">doloremque dignissimos</a> sed. Iure laboriosam et sapiente reiciendis. Fugiat officiis nemo voluptatem omnis doloremque. Voluptatem minima ab aspernatur qui consectetur Cumque autem qui et animi. ducimus ducimus fugiat aut.</p>\n<h1>Incidunt impedit et repellat voluptas qui ut et</h1>\n<p>Et et aliquam in possimus eum. Ut voluptas accusamus assumenda et Ea vel temporibus sint et <a title=\"Atque qui voluptatum blanditiis qui inventore a suscipit rem.\" href=\"https://stokes.biz/repellat-enim-vel-dolor-magnam-quia-at-consequatur.html\">Expedita repellat perferendis</a> ipsa aut est. Animi natus non Sit quia dolor repellendus illum saepe totam. sunt harum impedit illo dolorum. voluptatem dicta magnam voluptate et voluptas corrupti. voluptas incidunt rerum exercitationem Autem qui quos quod. Neque nam rerum. Quam eius quo. Ut dolor quidem eveniet ipsa animi. sint ipsam. Ab est nulla et voluptatum. Cumque explicabo ab voluptatem. Distinctio earum ad vel. Distinctio laborum et nisi. Et porro repellat ut Commodi quaerat accusantium. Corporis dolores voluptas pariatur omnis voluptates magni. ex est nam quidem nihil. Ipsam officia ducimus quisquam consequatur et Ex reprehenderit ipsa assumenda. Voluptates soluta aut ipsum itaque. Nobis ipsa est quis dolorem eveniet. Ducimus qui sit inventore ducimus fugiat est. sit est odit sit sint</p>', 'Illo totam earum quaerat cupiditate quia', 'Ad eum distinctio in excepturi in delectus quia rerum quod ea porro et aut saepe ut totam aut dolores laborum et dolor est quo dolorum vel temporibus aut incidunt rerum dolorem doloribus aliquid iure deserunt sit.', 'publish', 'open', 'open', '', 'illo-totam-earum-quaerat-cupiditate-quia', '', '', '2021-12-18 00:29:08', '2021-12-17 21:29:08', '', 0, 'http://localhost/cli-wp/2021/12/18/illo-totam-earum-quaerat-cupiditate-quia/', 0, 'post', '', 0),
(15, 1, '2021-12-19 14:25:38', '2021-12-19 11:25:38', '', 'd564c540-0444-3807-87b0-fd499d35c843', '', 'inherit', 'open', 'closed', '', 'd564c540-0444-3807-87b0-fd499d35c843', '', '', '2021-12-19 14:25:38', '2021-12-19 11:25:38', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/d564c540-0444-3807-87b0-fd499d35c843.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2021-12-19 14:25:38', '2021-12-19 11:25:38', '', '478d7589-740b-39f6-bd11-ec5b4a1b298f', '', 'inherit', 'open', 'closed', '', '478d7589-740b-39f6-bd11-ec5b4a1b298f', '', '', '2021-12-19 14:25:38', '2021-12-19 11:25:38', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/478d7589-740b-39f6-bd11-ec5b4a1b298f.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2021-12-18 06:59:58', '2021-12-18 03:59:58', '<blockquote>Voluptatibus et qui dolore provident delectus. Quas quia debitis <a title=\"Aut delectus possimus voluptate sunt accusamus iure exercitationem doloribus.\" href=\"http://kihn.com/\">ut veniam. Exercitationem</a> accusamus nemo harum Ratione esse laborum minima. Aspernatur sapiente consectetur excepturi In voluptatem ullam facilis ab. Quis <a title=\"Deleniti autem quaerat.\" href=\"http://kertzmann.biz/optio-corrupti-debitis-optio-laborum-consequatur-unde-et\">aut</a> libero a. rerum praesentium delectus vero consequuntur Ut qui laudantium molestiae reiciendis modi <a title=\"Ut velit ut molestiae voluptatem odio cupiditate.\" href=\"http://www.jacobi.com/dolorum-deleniti-commodi-omnis.html\">aliquam. Et</a> illum quia ullam repellendus fuga. In occaecati commodi quia sed repellendus <a title=\"Aliquid nam.\" href=\"http://www.hill.com/dolorum-ducimus-eligendi-aliquid-aut.html\">veniam. Perferendis culpa nostrum architecto</a> Minus non neque quibusdam soluta. Facilis consectetur culpa fugiat non. Odio eos ipsum quod. Maxime ut unde accusantium voluptas. Enim dignissimos quos voluptates.</blockquote>\n<h6>Velit qui ut hic et et voluptate et. Eum labore eaque velit quae omnis. Officia voluptatem quo et aut dolorem architecto aspernatur</h6>\n<!--more-->\n<p>Impedit nulla vel numquam et. Ipsa debitis culpa. Ipsam consequatur ab quis. Dolore facere perferendis eos alias. fugiat sed deleniti ea. Reiciendis nihil blanditiis corporis dolore quae. Minus sint debitis labore quod Suscipit mollitia illum illo ut. Cupiditate voluptatem est <a title=\"Reiciendis est optio harum perspiciatis soluta est.\" href=\"http://yundt.com/et-aspernatur-repellat-nostrum-at-ab-possimus\">ut</a> aspernatur officiis. Ullam modi quis error. Eaque ipsum laboriosam ullam Sed occaecati libero quisquam quas doloribus. Ipsum inventore qui nulla Architecto quia saepe dicta omnis incidunt culpa. Dolorum dolor repellat est ad. Qui minima magni voluptatem quia dolor.</p>\n<ol><li>Minus dicta earum alias nesciunt</li></ol>\n<h6>Voluptatem deleniti perspiciatis vitae iste</h6>\n<ul><li>Eos rerum repellat impedit similique</li><li>Tempora eos sed qui alias</li><li>Exercitationem qui</li></ul>\n<h6>Sunt qui eos natus</h6>\n<img class=\"alignright\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/478d7589-740b-39f6-bd11-ec5b4a1b298f.png\">', 'Est cumque tenetur quia porro doloremque', 'Modi ex sequi sed nostrum veritatis illo in molestiae rem consectetur omnis ducimus est magni ut commodi consequuntur sed nostrum totam eum explicabo molestiae quia eius ab architecto dicta placeat aperiam cum est beatae corrupti unde doloremque fugiat repudiandae.', 'publish', 'open', 'closed', '', 'est-cumque-tenetur-quia-porro-doloremque', '', '', '2021-12-18 06:59:58', '2021-12-18 03:59:58', '', 0, 'http://localhost/cli-wp/2021/12/18/est-cumque-tenetur-quia-porro-doloremque/', 0, 'post', '', 0),
(18, 1, '2021-12-19 14:25:39', '2021-12-19 11:25:39', '', 'd8477407-1d6f-35c7-80b5-6455af3d8ea5', '', 'inherit', 'open', 'closed', '', 'd8477407-1d6f-35c7-80b5-6455af3d8ea5', '', '', '2021-12-19 14:25:39', '2021-12-19 11:25:39', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/d8477407-1d6f-35c7-80b5-6455af3d8ea5.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2021-12-18 06:03:27', '2021-12-18 03:03:27', '<p>Temporibus aut nulla maiores. Voluptatem impedit sint et amet ut. Molestiae dolor non non. ducimus repellat voluptate animi non quibusdam. Odio <a title=\"Et consectetur.\" href=\"http://koelpin.com/\">quasi harum</a> architecto. numquam aliquid quisquam id Cumque iusto deleniti. Tempore assumenda qui pariatur sunt quis blanditiis. Quis nihil eos ut adipisci numquam. Dicta et fugit voluptatem itaque. voluptate dolore corporis est. Sit ex velit. Aut illum ipsum quasi omnis qui. Deserunt quasi omnis non cupiditate tempore dolorem. Numquam beatae eos minus voluptas. Voluptatum dolorum iure sit atque. Quia eius dolorem ea repellat. Laboriosam et dolorem <a title=\"Odio aut modi.\" href=\"http://steuber.org/tenetur-earum-veniam-dolores-quia-voluptatum-veniam-adipisci\">porro vitae.</a> repellendus velit officia qui omnis Dicta amet sed veniam voluptatem minima quisquam id. Quae fugiat et ex sit ad Consequatur ipsam sit quasi et. Dolorum ut aliquam quaerat ipsam. Nesciunt aut nemo tempore <a title=\"Necessitatibus.\" href=\"http://prohaska.net/repellendus-sed-perspiciatis-ipsa-sed.html\">tenetur numquam.</a> ab aperiam repellendus dicta voluptatem deserunt. Explicabo rerum eum nobis Accusamus non quo enim vitae nemo. Tempore ea omnis quisquam. Alias impedit quaerat sapiente maxime dicta Voluptas error rerum dolores. Placeat soluta quo aliquam in tempora. Libero ipsa cumque soluta. Aliquid omnis quo tenetur vitae. Rerum <a title=\"Ullam optio nihil.\" href=\"http://www.wisozk.com/consectetur-optio-nesciunt-repudiandae-aut-eos-voluptatem-fuga\">ea culpa expedita.</a> consequatur nam architecto et harum. Voluptatum rerum sed nihil quibusdam.</p>\n<p>Illo ad eligendi voluptatibus illum. debitis deleniti quisquam. autem debitis ullam. sequi est et quae <a title=\"Recusandae non occaecati et placeat unde eos.\" href=\"http://nikolaus.info/ipsum-quibusdam-vel-natus-ducimus-ut\">Dicta consectetur dolor</a> natus fugiat Facilis qui autem excepturi. Ipsum eos dolores expedita minima quo placeat qui. tempora dolorem nemo saepe vitae Dolorem officiis expedita ut voluptatibus. est sit ipsum et. Atque in at nostrum</p>\n<blockquote>Architecto quo ut voluptatum. Assumenda dolor temporibus quia numquam enim. <a title=\"Sunt possimus aut.\" href=\"http://www.senger.org/eos-aliquid-enim-non-provident-blanditiis-magnam-velit\">commodi</a> harum qui quisquam. Ut itaque voluptatem harum fugiat Inventore quaerat quam <a title=\"Non maxime ipsum.\" href=\"http://beier.com/sit-eaque-mollitia-nihil-eum-sit-debitis-aut-asperiores\">porro dicta. Aspernatur deserunt et totam ut iusto</a> doloribus. Ut officia et et autem. Rerum nihil minima et suscipit Rerum cumque aut nesciunt enim. repellendus est <a title=\"Veniam occaecati aspernatur consequatur adipisci sit.\" href=\"http://mcdermott.com/\"><a title=\"Incidunt voluptatum corrupti id distinctio.\" href=\"https://www.zieme.info/odio-nihil-et-dignissimos-repudiandae-repudiandae\">Non</a></a> unde doloribus voluptas architecto sunt. natus eveniet autem aliquid autem. Vero saepe necessitatibus ut. illo enim fugiat. ut accusantium et sint eum omnis. Ea deserunt sed et distinctio. maxime nihil dolorem quos. Autem quidem est placeat dignissimos sunt. Error <a title=\"Aut aut dolor.\" href=\"http://www.kemmer.org/aperiam-rerum-voluptates-est-quos-voluptatem\">odit nihil veniam voluptates dolor</a> Quo tempora beatae quisquam cum.</blockquote>\n<!--more-->\n<h2>Dolorum sunt eum eum eveniet quia. Rerum qui impedit rerum iste vero sint vel natus</h2>\n<ol><li>Vel saepe</li><li>Sit</li><li>Fugit aut harum ab</li><li>Reprehenderit esse error vel</li><li>Delectus dolorum cum non magni</li><li>Sunt aut sed eum iure ipsam tenetur</li><li>Distinctio qui aut perferendis expedita laboriosam est</li><li>Laboriosam sed</li><li>Porro praesentium nam nisi eum</li></ol>\n<p>Aliquam cum quisquam eum occaecati Ipsa repudiandae magnam occaecati ut. Ad <a title=\"A qui repellendus quis dolor expedita dignissimos eaque velit.\" href=\"http://corwin.biz/ab-occaecati-numquam-fuga-earum\">ut quibusdam delectus consectetur. Et numquam sint corrupti minus.</a> laboriosam delectus quae explicabo <a title=\"Tempore magni atque eius pariatur veniam doloribus ullam.\" href=\"http://www.cartwright.com/maxime-voluptates-libero-nobis-quos-minima-nobis-non-animi\">voluptate quis. Tempore eos perspiciatis eum</a> <a title=\"Sunt quaerat nemo possimus nesciunt rerum.\" href=\"http://www.mcclure.com/illum-est-culpa-qui-explicabo\">ut dicta ducimus. Quisquam doloribus</a> ut aut unde beatae. Et quisquam et quod. Id <a title=\"Et iure quam eaque hic rerum.\" href=\"http://mayert.com/nisi-et-aliquid-in\">quaerat voluptatibus rem</a> Earum <a title=\"Dolores.\" href=\"http://corkery.com/nihil-architecto-voluptas-voluptatum-quibusdam-maxime-aut.html\">praesentium aspernatur cumque natus. Reiciendis</a> quia qui adipisci voluptas voluptas Non illo exercitationem assumenda. architecto sed est ut dolorum. Illum voluptatem qui Totam voluptas <a title=\"Ea et.\" href=\"http://dickinson.com/ducimus-quibusdam-quo-id-dicta-aspernatur-aspernatur-odit.html\">veritatis molestiae. Et sunt</a> numquam ab fuga Expedita qui voluptatem sed. <a title=\"Unde beatae magni nihil in ullam ducimus ut non qui.\" href=\"http://www.spinka.info/recusandae-ut-unde-harum-ut-praesentium.html\"><a title=\"Vel.\" href=\"https://fay.com/quos-esse-doloribus-repudiandae-vel-et-aliquam-laudantium.html\">adipisci</a></a> vel fuga. Consequatur doloremque possimus consectetur voluptatem. Ut harum quibusdam illum quidem alias impedit</p>\n<h3>Aut non dolor dolorem aut. Fugit non et molestiae possimus</h3>\n<hr>', 'Eveniet optio maxime possimus et', 'Error id exercitationem quo ratione facere veniam sapiente molestiae reprehenderit quo dolore earum et minus eos maxime exercitationem suscipit repellat vel sed occaecati et vel voluptatem aut dolorum minus inventore odit molestiae voluptatem asperiores totam fuga deleniti voluptatem doloribus enim sit deserunt et dolor dicta voluptate illum et rerum ea sit quo exercitationem soluta perferendis blanditiis facilis eveniet laboriosam consequatur ullam ut est est asperiores dolorem iure quod harum sunt at delectus aut.', 'publish', 'open', 'closed', '', 'eveniet-optio-maxime-possimus-et', '', '', '2021-12-18 06:03:27', '2021-12-18 03:03:27', '', 0, 'http://localhost/cli-wp/2021/12/18/eveniet-optio-maxime-possimus-et/', 0, 'post', '', 0),
(20, 1, '2021-12-19 14:25:39', '2021-12-19 11:25:39', '', '368572e0-1ecd-3e89-b89d-2cd8e11d2f7b', '', 'inherit', 'open', 'closed', '', '368572e0-1ecd-3e89-b89d-2cd8e11d2f7b', '', '', '2021-12-19 14:25:39', '2021-12-19 11:25:39', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/368572e0-1ecd-3e89-b89d-2cd8e11d2f7b.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2021-12-18 10:39:37', '2021-12-18 07:39:37', '<h3>Magni aspernatur earum consequatur ab ea quibusdam. Molestiae et magnam est. Quia quisquam qui est et voluptas illum</h3>\n<ol><li>Id at deserunt ut</li><li>Saepe quis quae molestiae praesentium</li><li>Eaque sit</li><li>Quas sunt et</li><li>Facere</li><li>At qui voluptatibus qui</li></ol>\n<!--more-->\n<hr>\n<h3>Dolores hic quis laborum et molestiae. Vel exercitationem iste qui exercitationem quis. Quia iure assumenda eos quas autem voluptas</h3>\n<p>Modi maiores similique qui aliquam velit aliquam voluptas ut. Saepe occaecati provident id dicta sapiente iste consequatur.</p>', 'Dolor laboriosam natus nisi sunt quaerat', '', 'publish', 'open', 'closed', '', 'dolor-laboriosam-natus-nisi-sunt-quaerat', '', '', '2021-12-18 10:39:37', '2021-12-18 07:39:37', '', 0, 'http://localhost/cli-wp/2021/12/18/dolor-laboriosam-natus-nisi-sunt-quaerat/', 0, 'post', '', 0),
(22, 1, '2021-12-19 14:25:39', '2021-12-19 11:25:39', '', '8db06c6b-fbcb-3076-9bb6-a9d06da4c257', '', 'inherit', 'open', 'closed', '', '8db06c6b-fbcb-3076-9bb6-a9d06da4c257', '', '', '2021-12-19 14:25:39', '2021-12-19 11:25:39', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/8db06c6b-fbcb-3076-9bb6-a9d06da4c257.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2021-12-19 14:25:40', '2021-12-19 11:25:40', '', '43d66e6c-475e-3095-9ac3-9f50d04d3e09', '', 'inherit', 'open', 'closed', '', '43d66e6c-475e-3095-9ac3-9f50d04d3e09', '', '', '2021-12-19 14:25:40', '2021-12-19 11:25:40', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/43d66e6c-475e-3095-9ac3-9f50d04d3e09.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2021-12-18 01:06:54', '2021-12-17 22:06:54', '<h6>Laboriosam temporibus voluptatem sed consequatur est adipisci. Libero eos cumque at quia est est soluta. Repellendus voluptatem provident et</h6>\n<p>Quos nobis suscipit labore magni. Delectus nihil eveniet nihil error ratione et. Natus non qui quo alias. Nam qui iusto aut perspiciatis. Recusandae dolor quia quos voluptatem. Eum laborum corporis labore perspiciatis et voluptas. Omnis qui tempora hic non dolores. Autem perferendis placeat est. In illum dolore earum corrupti vitae accusantium. Facere aut officiis adipisci eos. Voluptas eligendi cumque sunt non inventore sunt quas. Eos et delectus sunt quos consectetur sunt eum autem. Accusantium quia voluptates quasi eos qui aliquam. Id quisquam exercitationem et rerum dolor cum.</p>\n<h3>Alias aut odio velit. Laboriosam dolorem adipisci velit iusto cupiditate dolorem est. Porro corrupti dolor sequi officia qui ipsum iusto</h3>\n<ul><li>Omnis ut maiores reiciendis a</li><li>Eum iusto id facere voluptas voluptatem ut</li><li>Magni quia quia omnis</li><li>Qui ex cupiditate at vel qui</li><li>Ipsum eveniet velit rerum ad vel</li></ul>\n<h5>Omnis dicta ea quis debitis. Nostrum veritatis alias assumenda voluptas quasi. Est non in ut iure. Consequatur adipisci magni accusantium numquam est est quod eligendi</h5>\n<ol><li>Qui molestiae ducimus quisquam rerum</li><li>Et excepturi et dolore ullam error</li><li>Tempore</li><li>Error quia eos fuga necessitatibus</li><li>Error consectetur nihil</li><li>Minima dignissimos et</li><li>Impedit ut beatae nihil iusto</li></ol>\n<img class=\"alignright\" alt=\"Quos in\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/43d66e6c-475e-3095-9ac3-9f50d04d3e09.jpg\">', 'Illum sit ratione sint illum quia', 'Totam quisquam corporis reiciendis deleniti aut nemo iste odio aut et qui et voluptatem labore ab labore dolorem minus eum voluptas laudantium est nesciunt corporis delectus consectetur doloribus eos aut consequatur est vel est accusamus nesciunt quia iusto magni.', 'publish', 'open', 'open', '', 'illum-sit-ratione-sint-illum-quia', '', '', '2021-12-18 01:06:54', '2021-12-17 22:06:54', '', 0, 'http://localhost/cli-wp/2021/12/18/illum-sit-ratione-sint-illum-quia/', 0, 'post', '', 0),
(25, 1, '2021-12-19 14:25:41', '2021-12-19 11:25:41', '', '7e65add7-3203-39f1-9de8-4d918b54dec9', '', 'inherit', 'open', 'closed', '', '7e65add7-3203-39f1-9de8-4d918b54dec9', '', '', '2021-12-19 14:25:41', '2021-12-19 11:25:41', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/7e65add7-3203-39f1-9de8-4d918b54dec9.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2021-12-19 14:25:42', '2021-12-19 11:25:42', '', '803f776b-05b4-347d-8148-5fabae4709d2', '', 'inherit', 'open', 'closed', '', '803f776b-05b4-347d-8148-5fabae4709d2', '', '', '2021-12-19 14:25:42', '2021-12-19 11:25:42', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/803f776b-05b4-347d-8148-5fabae4709d2.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2021-12-19 14:25:43', '2021-12-19 11:25:43', '', '3e717fe6-0697-3f55-a3c0-b4a13bbdeaeb', '', 'inherit', 'open', 'closed', '', '3e717fe6-0697-3f55-a3c0-b4a13bbdeaeb', '', '', '2021-12-19 14:25:43', '2021-12-19 11:25:43', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/3e717fe6-0697-3f55-a3c0-b4a13bbdeaeb.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2021-12-19 14:25:44', '2021-12-19 11:25:44', '', 'a70dbbf6-2dbf-358b-8674-3b990ccdae0d', '', 'inherit', 'open', 'closed', '', 'a70dbbf6-2dbf-358b-8674-3b990ccdae0d', '', '', '2021-12-19 14:25:44', '2021-12-19 11:25:44', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/a70dbbf6-2dbf-358b-8674-3b990ccdae0d.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2021-12-18 00:27:18', '2021-12-17 21:27:18', '<img class=\"alignleft\" alt=\"Velit tenetur facere nostrum et ut a\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/803f776b-05b4-347d-8148-5fabae4709d2.jpg\">\n<h1>Vitae fuga culpa qui maiores quia exercitationem assumenda. Ab aut minus velit facere sit. Sequi dolor ad assumenda nihil rerum</h1>\n<ol><li>Quis harum sequi</li><li>Sit et voluptates numquam accusamus</li><li>Quo vero voluptatum iste harum dignissimos</li><li>Non earum eius corrupti adipisci</li><li>Rem excepturi</li></ol>\n<!--more-->\n<h3>Consectetur cumque ipsa qui nam ipsa nulla. A voluptas delectus perspiciatis ea error</h3>\n<img alt=\"Unde ex sunt id consectetur excepturi vel a non eum tenetur\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/3e717fe6-0697-3f55-a3c0-b4a13bbdeaeb.jpg\">\n<hr>\n<p>Nihil rem qui non ea dolorum accusamus minima. Voluptatem ea ipsa eum qui. Saepe facilis libero repellendus dolor magni autem. Explicabo voluptas molestiae sunt libero voluptatem necessitatibus. Enim assumenda modi aut laboriosam sunt sed minima fuga. Et voluptas impedit est ea voluptatem maxime ut. Quas quae sunt amet. Id officiis aspernatur et nesciunt neque. Nostrum qui voluptas doloremque aut consectetur dolorem culpa. Ut in eum amet earum aut ipsa rem. Eum perferendis consectetur pariatur dicta. Et vero facere libero illum. Odio voluptatem officia occaecati dicta vitae et. Blanditiis vel omnis dolore sit sint. Omnis repudiandae qui necessitatibus ut recusandae assumenda. Ex laudantium quia ea quam aut. Voluptatibus et repellat illo sint aperiam ut maxime. Rerum tempore necessitatibus dolorem est. Dolores ad illo dignissimos ducimus explicabo aliquam est nihil. Deserunt aut culpa quibusdam corrupti consequatur fugiat.</p>\n<ol><li>Qui culpa et</li><li>Ipsum tempore molestias id et</li><li>In animi hic aut explicabo</li></ol>\n<h2>Enim magnam est qui eos dolorem. Quis autem deleniti soluta optio sint</h2>\n<img src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/a70dbbf6-2dbf-358b-8674-3b990ccdae0d.jpg\">\n<img class=\"aligncenter\" alt=\"Consequuntur debitis\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/65f91ec9-2e4a-360c-a1f1-3454fa8361a3.png\">\n<h2>Corrupti dolore minima quis asperiores nostrum aut numquam distinctio. Similique suscipit rerum consectetur. Enim aperiam ullam error id. Accusantium iure a consequatur et voluptatibus</h2>\n<hr>\n<p>Accusantium ut sed molestiae illo aut architecto. Qui consequatur inventore hic minus hic cupiditate ut. Quibusdam autem fugiat autem ullam est aut. Autem numquam reprehenderit tempore animi totam veniam eum. Harum nihil sint eligendi. Natus voluptatum quod culpa aperiam suscipit odit. Facere atque alias ipsum magni et ea. Rem totam corporis molestias et iure. Et perspiciatis quis aut autem quaerat quo eos. Numquam voluptas mollitia libero vero. Sit natus et occaecati dolorem. Fuga et deserunt laudantium quos. Quas voluptas sit voluptatum et qui. Veniam repellendus minus corporis laborum. Sint minus fugit harum cupiditate doloremque soluta. Non assumenda ab ut culpa minima quaerat nisi. Repellendus modi veniam qui.</p>', 'Possimus expedita praesentium ullam a', '', 'publish', 'open', 'closed', '', 'possimus-expedita-praesentium-ullam-a', '', '', '2021-12-18 00:27:18', '2021-12-17 21:27:18', '', 0, 'http://localhost/cli-wp/2021/12/18/possimus-expedita-praesentium-ullam-a/', 0, 'post', '', 0),
(30, 1, '2021-12-19 14:25:44', '2021-12-19 11:25:44', '', '30e763dd-9b05-3bdb-a574-0ebb52883790', '', 'inherit', 'open', 'closed', '', '30e763dd-9b05-3bdb-a574-0ebb52883790', '', '', '2021-12-19 14:25:44', '2021-12-19 11:25:44', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/30e763dd-9b05-3bdb-a574-0ebb52883790.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(31, 1, '2021-12-18 06:04:56', '2021-12-18 03:04:56', '<h2>Ut sapiente similique voluptas quis molestias in laudantium cumque</h2>\n<blockquote>Sit magnam qui dignissimos voluptas labore. Alias alias amet fuga suscipit. et soluta suscipit provident. labore aut nihil. Et mollitia <a title=\"Rerum.\" href=\"https://www.torp.com/aut-cumque-ut-perferendis\">molestiae quis</a> neque delectus. Voluptas natus consequatur est non. Exercitationem velit reprehenderit <a title=\"Doloribus perferendis.\" href=\"http://www.corkery.net/et-alias-aspernatur-autem-incidunt-quam-quis-praesentium\">tempore dolore consectetur.</a> architecto vel sunt vitae aliquid Ex qui sequi odit perspiciatis debitis.</blockquote>\n<h5>Blanditiis dolore exercitationem voluptatum earum explicabo iste quis ut. Aut sint quos officiis repudiandae aut et voluptas. Molestiae illo quasi facere est dolor ullam ut</h5>\n<hr>\n<blockquote>Cupiditate et non ipsam Autem ut aperiam maiores optio. <a title=\"Repellendus ut reprehenderit sunt vel numquam.\" href=\"http://goyette.com/ratione-ut-quia-id-tempora-deleniti-voluptatibus\">vel molestias commodi</a> laborum sint doloribus. Assumenda eum error ut libero hic Dolorem rerum eaque consequatur id id Qui similique ipsam repellat illum. distinctio officia quisquam est eum. Quia consequatur et officiis enim aut. soluta enim voluptas. Tempore et voluptate blanditiis. asperiores et non perferendis. Nulla repellendus natus fugit culpa Sed rem qui et corrupti libero Quae quos provident accusamus. Consequatur hic nobis voluptatem. Laboriosam ex officia tenetur dolore officiis aliquid. <a title=\"Est rerum praesentium.\" href=\"http://www.mitchell.com/quam-vitae-et-illo-a-nam-voluptatem\">consequatur nesciunt facilis distinctio</a> maiores Et molestiae maxime et rem unde hic. Quibusdam laboriosam enim vel. Totam vel et maxime rerum suscipit. Libero aut et quaerat. Voluptatum sit consequatur quia dolorem voluptas. Porro optio voluptas officia nesciunt. Non qui nemo neque autem inventore. sed et ut ut quis quis ipsum. alias saepe blanditiis voluptas. et facilis ex laboriosam. Iusto ipsam autem inventore. Rerum beatae quidem. Recusandae numquam dolor quia cum laudantium. Est ea ipsa ipsa aliquam fugit. Debitis et labore <a title=\"Hic repudiandae neque et inventore occaecati.\" href=\"http://www.labadie.info/ea-est-sapiente-quia-nostrum-tempora\">voluptatibus. Totam tempore labore eos est</a> voluptatum illum. Est natus ut illum et qui. Officiis corrupti architecto ipsa dolores Omnis dolore eos fugiat minima hic. laudantium iure soluta ut. Nesciunt veniam esse omnis velit quia. Laboriosam provident corrupti sit. enim ratione omnis molestiae. Rem aut et eaque blanditiis. facilis itaque ea. Qui non enim sapiente enim sunt dignissimos molestias. Aut qui incidunt quis Veniam qui sed nulla. Ut nemo voluptatem. Explicabo occaecati <a title=\"Quod sit autem blanditiis excepturi.\" href=\"http://leffler.org/\">aperiam qui ut et</a> consequatur. Voluptatem ex doloribus qui ut. Dolore sunt aliquam et ad. suscipit accusantium et. Ratione quaerat eaque architecto incidunt.</blockquote>\n<ol><li>Expedita dolor temporibus qui est vel harum</li></ol>\n<h3>Et aliquid nulla quia aliquam et. Est modi et qui totam. Rerum inventore cum qui voluptatibus</h3>\n<blockquote>Similique a est pariatur veniam tempore similique. Et consequatur est magni omnis perspiciatis nihil nisi. Eum ad officiis repellendus asperiores et voluptatem amet quia. Suscipit magni quia culpa suscipit distinctio consequuntur. Commodi saepe dicta quidem adipisci autem nemo. Dicta eum dolorum amet tempora fugit voluptate nisi. Laudantium aliquam repudiandae illum. Omnis maiores amet eaque dolores voluptates nobis. Esse qui amet sit delectus eligendi vero. Qui vitae doloremque quam quo quo neque iure libero. At repellendus voluptatem dicta rerum inventore sit unde distinctio. Beatae adipisci culpa natus ullam dignissimos vel et perferendis. Ut nostrum quia et. Eos nihil qui voluptatibus eius odio nesciunt. Nam illo suscipit ut dolore praesentium. Id adipisci libero nihil ut ex. Perferendis est facere eos culpa fugit id sed omnis. Natus earum autem praesentium velit. Pariatur voluptatem dolor doloremque ipsum optio minima. Quidem doloremque quia et tempore. Necessitatibus rerum quia consequuntur. Sunt veritatis voluptas sint aliquid possimus iusto. Vel quo esse iure nisi. Et cum qui hic. Magnam dolores ea esse necessitatibus. Rerum praesentium unde repellendus quod natus.</blockquote>', 'Eligendi adipisci necessitatibus dolores veritatis', '', 'publish', 'open', 'open', '', 'eligendi-adipisci-necessitatibus-dolores-veritatis', '', '', '2021-12-18 06:04:56', '2021-12-18 03:04:56', '', 0, 'http://localhost/cli-wp/2021/12/18/eligendi-adipisci-necessitatibus-dolores-veritatis/', 0, 'post', '', 0),
(32, 1, '2021-12-19 14:25:45', '2021-12-19 11:25:45', '', '23eb736c-b39d-3e4f-bd49-80bdf304ef0f', '', 'inherit', 'open', 'closed', '', '23eb736c-b39d-3e4f-bd49-80bdf304ef0f', '', '', '2021-12-19 14:25:45', '2021-12-19 11:25:45', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/23eb736c-b39d-3e4f-bd49-80bdf304ef0f.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2021-12-19 14:25:45', '2021-12-19 11:25:45', '', '057e3771-2c3d-36cc-bdb8-0651cc4aa298', '', 'inherit', 'open', 'closed', '', '057e3771-2c3d-36cc-bdb8-0651cc4aa298', '', '', '2021-12-19 14:25:45', '2021-12-19 11:25:45', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/057e3771-2c3d-36cc-bdb8-0651cc4aa298.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2021-12-19 14:25:46', '2021-12-19 11:25:46', '', '5f1cd7be-96f5-3c8f-a104-7eb7506fd52a', '', 'inherit', 'open', 'closed', '', '5f1cd7be-96f5-3c8f-a104-7eb7506fd52a', '', '', '2021-12-19 14:25:46', '2021-12-19 11:25:46', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/5f1cd7be-96f5-3c8f-a104-7eb7506fd52a.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2021-12-18 16:01:05', '2021-12-18 13:01:05', '<img alt=\"Aut id vitae eligendi eos tempore suscipit repudiandae\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/057e3771-2c3d-36cc-bdb8-0651cc4aa298.png\">\n<h6>Consequatur atque ullam officia vel exercitationem quos. Cupiditate laboriosam ipsum natus enim minus ipsum et. Aut ab ea nihil enim placeat</h6>\n<!--more-->\n<img class=\"alignright\" alt=\"Et aut temporibus non\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/368572e0-1ecd-3e89-b89d-2cd8e11d2f7b.png\">\n<ul><li>Omnis itaque illum odio voluptate dicta</li><li>Odit error id dicta</li><li>Rem qui eos iure est facilis explicabo</li><li>Quia esse alias est</li></ul>\n<img class=\"alignleft\" alt=\"Autem\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/5f1cd7be-96f5-3c8f-a104-7eb7506fd52a.jpg\">', 'Velit ea temporibus autem est rerum', 'Vel quia non est mollitia iure repudiandae voluptas in ex atque quia officia molestiae enim quidem et eveniet sed eos rerum ut vitae voluptatibus sed non tempora optio minima at cum rem velit eos aut eos molestiae ex unde qui qui voluptas.\n\nPlaceat rerum laborum libero repellendus quia minima ea omnis eligendi est expedita consequatur tenetur magnam ea mollitia aut consectetur aliquid aliquid cum cumque libero est ipsa exercitationem nihil asperiores possimus velit fugiat quia ut pariatur accusamus officia sunt consectetur debitis rerum illum eius nihil minus sint voluptas consequuntur quaerat deleniti modi id magni occaecati labore sapiente ut fugiat sunt dolorem quidem nemo ut minus quam velit non commodi et sit ea quis et qui laudantium dolorem quaerat deserunt quidem quis laborum aspernatur.\n\nQuas distinctio corrupti architecto voluptatem facilis quasi inventore sit iure saepe occaecati laboriosam est iure aperiam ut aperiam ab minus est ut temporibus perferendis consectetur repellendus veritatis et est id est asperiores laudantium est illo vitae praesentium enim sunt facilis quod deserunt aut velit occaecati qui laboriosam cumque quam voluptas deserunt minus maxime est voluptatem rerum rerum aut voluptatem tempora consequatur eaque dolorum aut repellendus quis nobis sint deserunt maiores eos rerum qui ut in delectus.\n\nDolorum dignissimos praesentium expedita veritatis quis eum beatae et vitae iste aliquid perferendis et sed dolor suscipit iure eum culpa deserunt quibusdam consectetur repudiandae ut commodi culpa modi est totam corporis enim aut cumque maxime quia iusto dolor rerum voluptatem et accusamus ea blanditiis quia.', 'publish', 'open', 'closed', '', 'velit-ea-temporibus-autem-est-rerum', '', '', '2021-12-18 16:01:05', '2021-12-18 13:01:05', '', 0, 'http://localhost/cli-wp/2021/12/18/velit-ea-temporibus-autem-est-rerum/', 0, 'post', '', 0),
(36, 1, '2021-12-19 14:25:46', '2021-12-19 11:25:46', '', 'e9bbfaa0-18bf-34e2-b0f3-ae6208a79b24', '', 'inherit', 'open', 'closed', '', 'e9bbfaa0-18bf-34e2-b0f3-ae6208a79b24', '', '', '2021-12-19 14:25:46', '2021-12-19 11:25:46', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/e9bbfaa0-18bf-34e2-b0f3-ae6208a79b24.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2021-12-18 02:29:22', '2021-12-17 23:29:22', '<blockquote>Maxime voluptatum ea Exercitationem id quae et sit voluptatum. Omnis quis non sit provident asperiores Asperiores eius illo aut iste vel. <a title=\"Fuga eos velit voluptate odit non.\" href=\"http://www.sporer.com/omnis-labore-enim-impedit-iste-voluptatem\">illum occaecati dolor aut</a> sunt quia. iste ut asperiores molestiae expedita. Ex reprehenderit impedit At soluta unde dolores. Natus quibusdam saepe ipsa Non quia quis ab. Corporis impedit officia. Consequatur autem occaecati dicta tempora. Est excepturi earum totam quo Doloribus aut reiciendis <a title=\"Recusandae iste veniam.\" href=\"https://hegmann.net/aut-quia-molestiae-in.html\">adipisci debitis. Rem quia non qui</a> recusandae vero fuga. Temporibus unde dolores numquam incidunt. Facilis aspernatur dignissimos provident sequi Ullam quasi ab culpa rerum. Ut molestiae dolores. Voluptas voluptas dolores cumque sed distinctio quidem.</blockquote>\n<h1>Consequatur deleniti autem similique hic libero. Deserunt deleniti a adipisci culpa quaerat aut. Qui et veniam sit sint</h1>\n<ul><li>Ad iusto voluptatem eveniet</li><li>Voluptatibus</li><li>Quia omnis recusandae facilis non dolor unde eos et</li></ul>\n<hr>\n<!--more-->\n<h3>Quas labore eaque aut quo delectus unde</h3>\n<ul><li>Vero hic laborum</li><li>Nisi non</li><li>Magni distinctio consequuntur numquam libero</li></ul>\n<h5>Velit est eius odio voluptas. Odio illo nihil laudantium possimus nisi et est</h5>\n<blockquote>Veritatis rerum enim incidunt ut <a title=\"Qui.\" href=\"http://price.com/\">quasi. Et non quia quaerat</a> Commodi fuga molestias consequuntur sunt. Modi voluptatem perspiciatis sit est. et rerum qui. Occaecati qui quia sint Voluptatem sint fugit beatae est. Ea ut qui sunt sed et <a title=\"Sunt voluptatibus.\" href=\"https://beer.com/nostrum-laudantium-aspernatur-iste-laborum-est-architecto-rerum.html\">mollitia. Sunt distinctio saepe aut</a> molestiae fuga. Et alias est explicabo.</blockquote>\n<h6>Odit omnis sit dolorum quo commodi qui. Inventore ea nemo illum</h6>\n<p>Adipisci beatae doloribus unde qui vel quia neque eius. Dolor dolorum odit nostrum magnam aspernatur nisi quod. Facere laborum ea est voluptate. Est aut doloremque neque amet sed et. Magni voluptatem expedita in officiis doloremque ea. Dolorum sint sunt nesciunt doloremque dolor ducimus. Qui ut illum est molestiae. Provident mollitia minima hic fugit sit nulla doloremque eius. Est soluta ipsum optio velit. Repudiandae voluptas molestiae suscipit beatae nostrum eos qui. Voluptates deleniti velit blanditiis delectus rerum odio.</p>\n<blockquote>Deserunt architecto et accusantium. optio ab minima minus quae itaque Cum est voluptatem occaecati <a title=\"Laudantium sunt sed placeat unde sit.\" href=\"http://www.murray.org/id-necessitatibus-modi-amet-delectus-eaque\">quis occaecati assumenda.</a> iusto voluptatem libero animi Nobis facere ipsum at et qui inventore. Aut est dolorem a. Quo cupiditate consectetur sunt aliquam commodi et eos. Tenetur ipsa quibusdam tenetur. Aut et quam ipsam ullam eos. Delectus voluptas in beatae et temporibus. Cupiditate ex quaerat pariatur est. Unde laboriosam dolores quod. aut deserunt itaque repellat ut. Ipsum molestias quo dolor necessitatibus. Ducimus velit atque ut eveniet libero Est non velit fugiat voluptatem est laboriosam. Quo nihil sint ea culpa. eum ut facilis molestias Doloribus sunt commodi</blockquote>\n<img class=\"alignleft\" alt=\"Sapiente ut numquam\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/3e717fe6-0697-3f55-a3c0-b4a13bbdeaeb.jpg\">', 'Iusto sunt delectus occaecati ipsam amet', '', 'publish', 'open', 'open', '', 'iusto-sunt-delectus-occaecati-ipsam-amet', '', '', '2021-12-18 02:29:22', '2021-12-17 23:29:22', '', 0, 'http://localhost/cli-wp/2021/12/18/iusto-sunt-delectus-occaecati-ipsam-amet/', 0, 'post', '', 0),
(38, 1, '2021-12-19 14:25:47', '2021-12-19 11:25:47', '', '1817a0fa-e7e2-3587-894c-e92eb479b070', '', 'inherit', 'open', 'closed', '', '1817a0fa-e7e2-3587-894c-e92eb479b070', '', '', '2021-12-19 14:25:47', '2021-12-19 11:25:47', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/1817a0fa-e7e2-3587-894c-e92eb479b070.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2021-12-18 12:40:24', '2021-12-18 09:40:24', '<h4>Et occaecati quos iusto ut sunt eligendi nihil</h4>\n<p>Facilis qui iure voluptatibus aspernatur. Non necessitatibus <a title=\"Impedit.\" href=\"http://www.windler.com/natus-autem-facilis-totam\">Tempora fugiat laboriosam</a> aut. Fugiat omnis aut enim et dolores adipisci ut. Hic ipsam <a title=\"Sunt quis pariatur.\" href=\"http://www.champlin.com/eos-sit-et-quibusdam-voluptate-nobis.html\">delectus dolorem sed.</a> <a title=\"Ipsa.\" href=\"http://www.muller.org/beatae-possimus-dolorem-harum-deleniti\">ea non eaque sequi</a> ut et. Voluptas natus quidem. Est <a title=\"Consequuntur et maxime harum omnis ea.\" href=\"http://larkin.biz/et-tempora-ea-odit-autem-reprehenderit-et\">nemo eius deserunt. Non</a> illum fuga quo Laudantium enim quis maiores. Eos fugiat placeat.</p>\n<h5>Voluptatem quis repellendus a sint doloremque deleniti. Ab sed delectus possimus aspernatur ut ut eaque. Omnis consequatur a mollitia doloremque eum rerum</h5>\n<!--more-->\n<hr>\n<hr>\n<p><a title=\"A unde harum et.\" href=\"http://rohan.com/ut-tenetur-magni-cupiditate-vero-enim-nihil-quos.html\">Saepe repellendus</a> magnam ut labore at. Ad ullam <a title=\"Magni est et cum.\" href=\"https://rice.org/labore-occaecati-ad-consequatur-voluptas-ea-rerum-sapiente.html\">cupiditate excepturi qui dolorem. Nulla laboriosam quo</a> cumque in minus neque. Ut placeat quasi aut mollitia labore non. Minus omnis ducimus ab <a title=\"Aliquam magnam eos.\" href=\"http://kessler.com/veritatis-odio-sequi-quas-et-a-velit-officiis-voluptates\">et. Tempora error qui sunt dolor</a> a repellat similique. fugit magni dignissimos doloremque facilis. Officiis a aut ratione id Nostrum quisquam quia quam officiis omnis <a title=\"Mollitia eos laborum.\" href=\"http://www.mills.com/\"><a title=\"Repellat ad alias et provident.\" href=\"https://okuneva.info/dolore-ad-totam-esse-ratione-rem-iusto.html\">Possimus</a></a> possimus deleniti sapiente nulla minus. Est consequatur deserunt fugiat id omnis. Magni iusto ab facere consequatur. qui illo molestias eos non. Omnis doloremque rerum omnis quia omnis. Inventore consequatur suscipit maxime hic sunt.</p>\n<blockquote>Magni architecto ullam qui temporibus maiores. et at qui qui labore. adipisci voluptatem tenetur. Quos totam voluptatem est inventore. Dolores nobis voluptatem molestiae. ut incidunt nulla quia quia quibusdam. Dignissimos tenetur quod doloribus sunt voluptatem dolorem. Qui reprehenderit magnam cumque Fugit quidem illo Autem molestias aperiam corrupti debitis qui <a title=\"Eum blanditiis voluptatibus sit aut sit.\" href=\"http://www.goodwin.info/dolores-ut-dolorem-quod-velit-praesentium-impedit-sit-fuga.html\">voluptatum. Quos qui</a> qui omnis quisquam. Quaerat autem est sed porro totam. Possimus dolorem corporis Laborum vero sunt dicta voluptatem expedita magni. Earum sed cum corrupti sunt deleniti Eos voluptates quo nihil esse architecto. sit accusamus dicta Vero quo consectetur At hic earum rerum non. Quibusdam et dicta aut sit. ut et Voluptatibus reiciendis excepturi facere soluta. Qui eos dolorem non quis. Voluptatem enim minima soluta illo repellendus est. Voluptas iure nulla labore Delectus suscipit qui repellat et ex voluptates. Aliquid qui voluptas optio. sint cupiditate culpa.</blockquote>\n<h1>Et sit deserunt quasi omnis excepturi amet vitae distinctio</h1>\n<p>Corporis quo quo modi eos vitae. Minus voluptas laudantium repudiandae. Expedita qui quibusdam numquam quia porro. Totam voluptas consequatur ad nisi quo. Nulla labore hic optio. qui praesentium reiciendis unde neque beatae nesciunt. <a title=\"Deleniti rerum.\" href=\"https://raynor.com/necessitatibus-dolorum-voluptatibus-nam-odio-aperiam.html\">nisi commodi rem hic molestias</a> ullam. quae et itaque rerum. explicabo placeat sit necessitatibus ut. sed quasi quasi est ex. a ut voluptate Quia neque consectetur voluptatem non ullam assumenda. Hic aspernatur inventore Eius in doloribus quaerat omnis quia. Eos mollitia sunt. Non labore accusantium Ab aut quasi accusantium accusantium exercitationem. Quos <a title=\"Et perspiciatis et.\" href=\"http://graham.org/numquam-inventore-qui-necessitatibus-qui-similique\">quasi aut id officia minus</a> Nobis rem et voluptate ut Et placeat ut non. Nostrum ut vitae autem in. amet et expedita voluptates optio Soluta aut placeat rerum ea. velit repellat quo et voluptatem aut veritatis. At sit omnis quaerat et. <a title=\"Repellat qui ut ullam similique quia odit in ut.\" href=\"http://king.info/\">quia amet excepturi</a> repudiandae error. Magni nemo maxime enim esse saepe. recusandae non enim quia nisi. Consectetur ea quos exercitationem rerum distinctio.</p>\n<h4>Perferendis maiores corrupti est explicabo ab et. Eum ullam accusamus dolores porro est error animi</h4>\n<hr>\n<hr>\n<img src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/e9bbfaa0-18bf-34e2-b0f3-ae6208a79b24.png\">\n<img alt=\"Ut dicta laudantium esse iusto\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/43d66e6c-475e-3095-9ac3-9f50d04d3e09.jpg\">', 'Alias provident omnis facilis molestiae reiciendis', 'Magni et eos aperiam quam qui ullam placeat voluptatem placeat rem iste iste dolor sequi similique molestiae delectus ut dolore ipsam necessitatibus laudantium itaque veniam repellat minus dignissimos quo et nisi molestiae repudiandae consequatur sed commodi vitae temporibus ab esse perferendis est ea maiores voluptas vero minima illum quo quasi modi sunt sint sed odio quisquam autem quia laborum voluptatem velit qui sequi accusamus hic soluta eum exercitationem quia blanditiis ut est saepe voluptatem ut voluptatem.', 'publish', 'open', 'open', '', 'alias-provident-omnis-facilis-molestiae-reiciendis', '', '', '2021-12-18 12:40:24', '2021-12-18 09:40:24', '', 0, 'http://localhost/cli-wp/2021/12/18/alias-provident-omnis-facilis-molestiae-reiciendis/', 0, 'post', '', 0),
(40, 1, '2021-12-19 14:25:48', '2021-12-19 11:25:48', '', '424f086f-bfd6-339f-a852-b597ecdcb773', '', 'inherit', 'open', 'closed', '', '424f086f-bfd6-339f-a852-b597ecdcb773', '', '', '2021-12-19 14:25:48', '2021-12-19 11:25:48', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/424f086f-bfd6-339f-a852-b597ecdcb773.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2021-12-19 14:25:49', '2021-12-19 11:25:49', '', '88af10cd-1ff4-3b02-af22-a5f9f9a18182', '', 'inherit', 'open', 'closed', '', '88af10cd-1ff4-3b02-af22-a5f9f9a18182', '', '', '2021-12-19 14:25:49', '2021-12-19 11:25:49', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/88af10cd-1ff4-3b02-af22-a5f9f9a18182.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2021-12-18 11:22:11', '2021-12-18 08:22:11', '<img class=\"alignright\" alt=\"Assumenda sit\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/88af10cd-1ff4-3b02-af22-a5f9f9a18182.jpg\">\n<h4>Suscipit molestias rerum quia deserunt. Consequuntur animi et sit dolores. Dolores culpa doloremque similique</h4>\n<!--more-->\n<blockquote>Molestiae doloribus animi et <a title=\"Vel ut a dolorem.\" href=\"https://www.tremblay.org/adipisci-similique-placeat-numquam\">aperiam officiis.</a> temporibus illo earum voluptatem qui illum. iusto repellat similique est. possimus dolores sit dicta. sed maxime beatae <a title=\"Consequuntur occaecati earum quia ab nihil.\" href=\"http://www.waelchi.biz/vel-eos-voluptas-explicabo-nam-fugit-quia-eaque\">qui. Quo architecto</a> labore accusantium repellat est. Modi facilis maiores consequatur accusantium ut. Excepturi natus itaque similique nobis. Velit esse in illum. omnis <a title=\"Ducimus eius.\" href=\"http://www.lang.com/esse-repellat-voluptatem-ab-voluptas\">suscipit in. Voluptatem consectetur rerum ea tempora facilis</a> vel. Reiciendis eaque deserunt assumenda. Aperiam ullam rerum quae harum. Aut dolores libero sint at iusto. Ut laborum aspernatur facere. enim placeat ut ullam.</blockquote>\n<blockquote>Eveniet est ea veniam exercitationem. Est officiis aspernatur repudiandae dolores iure. Eum sint velit ipsa maxime. <a title=\"Labore dolor.\" href=\"http://www.effertz.com/quam-eos-nisi-eius-dolore.html\"><a title=\"Ut consequatur libero sunt velit.\" href=\"http://pouros.net/officiis-dolorum-repudiandae-quo-quam\">quo</a></a> omnis consequuntur sunt. Id amet eligendi suscipit magni sed. Provident a voluptate deleniti corrupti <a title=\"Maiores tempora blanditiis culpa voluptatibus facilis voluptate distinctio sunt accusamus beatae.\" href=\"http://volkman.net/sunt-illo-beatae-aliquam-autem-labore-cumque-nihil\">Omnis velit optio autem ex quas</a> illo Ut rerum quia impedit magnam est Et ut itaque hic <a title=\"Tempore.\" href=\"https://www.gutkowski.com/quisquam-sed-debitis-earum-ipsam-quae-pariatur-quia\">consectetur</a> velit. Beatae corrupti porro ut. alias quia Maxime <a title=\"Accusamus ex.\" href=\"https://okuneva.com/quod-nihil-nihil-quis.html\">omnis adipisci porro doloribus. Aliquam</a> velit odit fugiat. Quo pariatur sunt recusandae et tempore. Eveniet cumque qui culpa ut. Odit nobis sint consectetur. Harum id autem <a title=\"Molestiae.\" href=\"https://goodwin.biz/ratione-laborum-est-debitis-fugit-ut-nulla.html\">animi hic id.</a></blockquote>\n<h1>Fugit tempore aliquam dolorem excepturi repudiandae</h1>\n<p><a title=\"Reiciendis ut quas id voluptas aut consectetur.\" href=\"https://www.schuppe.com/sunt-qui-qui-numquam\">Ab rerum cumque</a> explicabo et. Consequatur <a title=\"Ipsa quibusdam officia.\" href=\"http://denesik.com/accusamus-magni-iure-reprehenderit-magni-molestiae-dolor\">sequi vitae</a> <a title=\"Rerum veniam.\" href=\"http://www.haley.com/velit-dicta-fuga-ducimus-neque-consequatur-qui.html\">quia. Possimus placeat</a> <a title=\"Est recusandae ad numquam corporis consectetur eveniet quia odio.\" href=\"https://www.grady.com/ut-sit-quaerat-consequatur-modi-voluptatum\"><a title=\"Blanditiis repudiandae id voluptatibus ut.\" href=\"http://www.heller.com/aspernatur-et-totam-dicta-optio-fugit\">officia</a></a> qui. Et ea <a title=\"Natus iste ut quia.\" href=\"http://mclaughlin.com/fuga-eligendi-libero-voluptatem-sint-et\"><a title=\"Sit hic iure voluptas aliquid omnis.\" href=\"https://terry.com/molestias-qui-est-delectus-iusto-alias-hic.html\">quo</a></a> quod unde autem. Quis <a title=\"Deleniti quia delectus in ut vel iusto reprehenderit.\" href=\"http://www.schuppe.net/illo-aut-reiciendis-sed-voluptatem-consequatur-voluptate\">natus</a> quae fuga est</p>\n<p>Natus rerum velit aut molestiae suscipit illo natus. Minima dolorum incidunt nemo a id fuga. Perferendis recusandae est nobis sapiente ex vel. Perferendis dolores in non nam debitis. Esse sequi iure molestias distinctio. Est est natus reprehenderit similique. Quo itaque libero enim. Expedita recusandae sed maxime doloribus nam. Voluptatem nam et est saepe harum. Tenetur fuga reprehenderit est eligendi id facere. Et natus fugiat necessitatibus in id sunt quos ea. Id non velit sunt aliquid. Consequuntur corporis consequatur tempore. Id quis ut qui consequatur et. Ut omnis in magni voluptatem repellendus non dolorem. Eos voluptate enim vel. Soluta aut sapiente fuga in neque dolores. Esse earum eligendi illum voluptatum reprehenderit. Eveniet quisquam sapiente dolores rem in nostrum eum iste. Provident unde explicabo architecto quam voluptate deleniti odit et. Ipsa unde et sit et nobis voluptatem enim. Ut ipsam non in. Totam consectetur voluptatibus enim.</p>', 'Esse optio possimus officia alias', 'Voluptates eveniet quia fuga magni assumenda dolore iure et ut facere dolores sequi illum expedita consequatur et quibusdam qui placeat itaque et aut inventore voluptatem excepturi molestiae hic voluptates qui iusto enim ab exercitationem maxime quo sequi.', 'publish', 'open', 'closed', '', 'esse-optio-possimus-officia-alias', '', '', '2021-12-18 11:22:11', '2021-12-18 08:22:11', '', 0, 'http://localhost/cli-wp/2021/12/18/esse-optio-possimus-officia-alias/', 0, 'post', '', 0),
(43, 1, '2021-12-19 14:25:50', '2021-12-19 11:25:50', '', 'ca8c40e3-b6b1-3423-948d-f7e1d9eebe33', '', 'inherit', 'open', 'closed', '', 'ca8c40e3-b6b1-3423-948d-f7e1d9eebe33', '', '', '2021-12-19 14:25:50', '2021-12-19 11:25:50', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/ca8c40e3-b6b1-3423-948d-f7e1d9eebe33.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-12-18 22:32:18', '2021-12-18 19:32:18', '<ul><li>Eos doloremque</li><li>Asperiores voluptas</li><li>Rerum et assumenda ut</li></ul>\n<h6>Est voluptate at quia dicta nam praesentium suscipit. Quidem magnam id beatae natus minima. Ut quae non quo veritatis quaerat</h6>\n<hr>\n<!--more-->\n<img class=\"alignleft\" alt=\"Excepturi voluptas\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/43d66e6c-475e-3095-9ac3-9f50d04d3e09.jpg\">\n<h3>Ut rerum esse rem vero veniam. In saepe quae porro perferendis ipsam deleniti</h3>\n<p>Error dicta autem at commodi cumque sit. ex quis accusamus rem iure Cum ut aut sit tempore et Tenetur et enim qui architecto. Nemo velit esse veniam. Quos sapiente ipsum iure dolorum omnis. consequuntur in iusto odit. aut voluptatem nobis dolorem. Et ea rerum aut consectetur. Minima non doloremque incidunt. Qui voluptatem ipsam deserunt accusantium itaque. perspiciatis <a title=\"Deserunt fugiat non minus.\" href=\"http://www.schoen.info/\">ut ut magnam. Vitae qui quo</a> voluptates aut ex. Saepe provident impedit hic reiciendis totam. sunt et Corrupti adipisci qui quis.</p>\n<p>Voluptatem voluptates quia ab minima. Autem fugiat occaecati minima. Consequatur fuga consequatur <a title=\"Sed ad.\" href=\"https://www.mayer.info/quasi-enim-fugiat-sit-quam-doloribus-aut-eligendi\">asperiores saepe vero</a> praesentium. Recusandae voluptatem laboriosam quas. Quae sed hic quibusdam officia doloribus beatae. ipsam ab voluptatibus harum debitis ratione. Consequatur facere <a title=\"Fugit qui accusamus non.\" href=\"https://www.hagenes.org/nulla-voluptatem-rem-perferendis-non-possimus-facilis-nam\">explicabo magni</a> Assumenda ratione iusto ea porro similique Saepe ratione ut aut dolores. Est veritatis voluptas <a title=\"Sit.\" href=\"http://veum.info/omnis-ut-qui-dolor-ut-aliquid\">Autem voluptatem saepe</a> ut et. Iure incidunt <a title=\"Rerum enim in excepturi ut et ducimus alias quia.\" href=\"http://www.price.com/minima-eveniet-sit-molestiae-totam-sit.html\">dignissimos et</a> consectetur commodi. Molestiae doloribus et dolores Suscipit illum corporis consectetur facere <a title=\"Eum labore voluptate accusantium ut tempora.\" href=\"http://powlowski.org/eos-vel-velit-reiciendis-voluptas\">qui. Et sunt</a> id dicta itaque numquam. Necessitatibus quia dolores et magni quas. Laudantium iusto labore unde a. in id non vel sunt in. <a title=\"Aperiam et in.\" href=\"http://www.ryan.info/qui-qui-officia-dicta-eligendi-recusandae-et-id.html\">dolorem ut fugit quasi</a> possimus. Veniam qui ut vel. Occaecati ut tempore autem soluta illum fuga. impedit nam est assumenda. Nihil ex blanditiis et odio consequatur Sed voluptas voluptatum sunt sint.</p>\n<h5>Dolores quo ea atque laudantium mollitia quo veritatis nobis</h5>\n<hr>\n<h3>Velit vero et velit corporis. Voluptatem temporibus ad exercitationem harum autem voluptas. Enim totam dolor architecto ut veniam sint velit sint</h3>\n<blockquote>Sunt et sed autem explicabo excepturi quia eaque ipsam. Ullam debitis ut maiores non sint. Recusandae autem dicta aut nostrum aspernatur magnam pariatur. Tempora ea ut porro et vel quasi sint. Veniam pariatur sed voluptatem rerum qui suscipit minima. Id esse magnam officia aut adipisci. Quia officiis dolor facere. Occaecati eius et et sit est ipsum temporibus. Consequatur fugit neque accusantium eos inventore sunt placeat in. Doloremque iste possimus animi rem. Laborum occaecati alias dolor veniam similique perferendis dolorem id. Sit repellendus veritatis ducimus tempore. Maiores placeat qui est. Quos in ut natus dolor et eveniet. Aperiam rerum voluptatem at dolorem repudiandae. Sit doloribus sed officia maiores maxime rem. Vitae tenetur non qui voluptas. Quis ratione nihil qui. Omnis itaque reprehenderit beatae itaque accusantium. Ullam asperiores consequatur enim cumque aut. Incidunt atque molestiae et dolor. Ut corrupti rem aliquid dolore quis cupiditate. Natus cumque impedit nemo. Id velit sit et omnis inventore. Hic deleniti magni molestiae unde. Maiores possimus dolor aut molestiae iusto ut. Rem consequatur quidem laudantium enim blanditiis. Quo tempora eligendi eos et ducimus. Aut fugit consectetur recusandae eius aliquid. Voluptatibus dolorum quia nihil recusandae et occaecati et. Voluptas eveniet autem odit nostrum est aut.</blockquote>\n<img class=\"alignright\" alt=\"Maiores sunt at culpa quia explicabo\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/30e763dd-9b05-3bdb-a574-0ebb52883790.png\">\n<h5>Mollitia sint placeat est numquam ut nemo. Voluptas molestiae sit et ut reprehenderit. Debitis adipisci facilis quod nulla labore aliquid earum maxime</h5>\n<ul><li>Et delectus in et</li><li>Minus itaque</li><li>Repellat illo beatae rerum ad</li><li>Eveniet corporis ipsum sunt aut</li><li>Non aut accusantium</li></ul>', 'Fuga voluptatum quas hic', 'Expedita temporibus sunt modi architecto suscipit error occaecati saepe debitis aliquam dolorem asperiores aperiam odit in vitae dolorem numquam occaecati culpa qui minima ullam dolore eligendi et earum et ullam temporibus minima provident beatae dignissimos eveniet est accusantium explicabo deleniti non ut qui consequatur ducimus ut molestiae ea totam saepe animi iste voluptas modi qui dolorem.', 'publish', 'open', 'closed', '', 'fuga-voluptatum-quas-hic', '', '', '2021-12-18 22:32:18', '2021-12-18 19:32:18', '', 0, 'http://localhost/cli-wp/2021/12/18/fuga-voluptatum-quas-hic/', 0, 'post', '', 0),
(45, 1, '2021-12-19 14:25:51', '2021-12-19 11:25:51', '', 'e73eef0c-fb5d-3cfe-84d5-730931734c49', '', 'inherit', 'open', 'closed', '', 'e73eef0c-fb5d-3cfe-84d5-730931734c49', '', '', '2021-12-19 14:25:51', '2021-12-19 11:25:51', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/e73eef0c-fb5d-3cfe-84d5-730931734c49.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2021-12-19 14:25:51', '2021-12-19 11:25:51', '', '0cd87282-957b-3bd4-878d-6fde8bfa0762', '', 'inherit', 'open', 'closed', '', '0cd87282-957b-3bd4-878d-6fde8bfa0762', '', '', '2021-12-19 14:25:51', '2021-12-19 11:25:51', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/0cd87282-957b-3bd4-878d-6fde8bfa0762.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2021-12-18 18:05:26', '2021-12-18 15:05:26', '<ul><li>Et odio aut laborum</li><li>Nemo saepe atque</li><li>Cum quo illo ut quia</li><li>Ipsum est ab beatae</li><li>Accusantium sed sed et</li><li>Veritatis id nemo minima molestias corporis</li><li>Consequatur</li><li>Laborum</li></ul>\n<ol><li>Autem vitae sequi officia</li><li>Nihil quia</li><li>Earum iusto sunt non</li><li>Vero enim quae placeat</li></ol>\n<!--more-->\n<h3>Temporibus non autem ab quis laudantium. Et aspernatur neque minima. Soluta officia ut maiores repudiandae</h3>\n<hr>\n<hr>\n<img alt=\"Neque odio voluptatum id possimus\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/0cd87282-957b-3bd4-878d-6fde8bfa0762.png\">\n<p>Vel vitae rerum ipsam atque corporis. cupiditate qui quam et sit autem ducimus. at ut nisi quo perspiciatis. Iste ea cum Animi magni <a title=\"Architecto odio.\" href=\"http://www.rogahn.biz/\">et voluptas dolor sint illo.</a> quia consequatur itaque. Sit inventore aut voluptas labore et laudantium. Et natus sapiente incidunt a quia expedita. Occaecati magni quae corporis cupiditate Aliquid itaque itaque nisi. ea voluptas officiis natus. doloribus iusto dolor fugiat. Architecto aut sapiente labore commodi animi numquam. et consequatur ullam error. Accusantium qui praesentium tenetur vitae <a title=\"Nesciunt qui ipsum nostrum.\" href=\"http://cremin.biz/ducimus-exercitationem-autem-voluptatem-deserunt.html\">ut. Molestiae corrupti</a> atque sit sapiente ad aperiam. et repellat asperiores sit.</p>', 'Deserunt dicta ut placeat', 'Architecto ut non dolore minima ut ut similique nobis natus quia est doloremque quas minus beatae sint et excepturi quia eum libero asperiores soluta aperiam minus alias earum voluptatem laborum repudiandae sunt nulla quia nobis magnam et voluptatem doloremque molestiae et consequuntur nam occaecati et dolore consequatur asperiores quia qui nemo dolor.\n\nEt cupiditate dolor qui est esse tempore nisi aspernatur nam amet maiores alias ut voluptate rerum suscipit maxime quam autem eveniet porro enim incidunt recusandae enim magni dicta iure aut unde ipsa aut quisquam natus illum debitis blanditiis veritatis debitis in vero harum eum quidem quae sunt distinctio delectus perferendis ut asperiores vero et inventore nihil dicta fugiat omnis atque quis similique vel voluptas dolor quo.', 'publish', 'open', 'closed', '', 'deserunt-dicta-ut-placeat', '', '', '2021-12-18 18:05:26', '2021-12-18 15:05:26', '', 0, 'http://localhost/cli-wp/2021/12/18/deserunt-dicta-ut-placeat/', 0, 'post', '', 0),
(48, 1, '2021-12-19 14:25:53', '2021-12-19 11:25:53', '', '6524d0a5-310c-3e58-91c0-ecc6beee9dde', '', 'inherit', 'open', 'closed', '', '6524d0a5-310c-3e58-91c0-ecc6beee9dde', '', '', '2021-12-19 14:25:53', '2021-12-19 11:25:53', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/6524d0a5-310c-3e58-91c0-ecc6beee9dde.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-12-19 14:25:53', '2021-12-19 11:25:53', '', '7afc39a8-d5d8-3f52-8472-c29d4795d468', '', 'inherit', 'open', 'closed', '', '7afc39a8-d5d8-3f52-8472-c29d4795d468', '', '', '2021-12-19 14:25:53', '2021-12-19 11:25:53', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/7afc39a8-d5d8-3f52-8472-c29d4795d468.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2021-12-19 14:25:54', '2021-12-19 11:25:54', '', 'd5fb99e5-7a7a-3b61-b867-447cf599b3a3', '', 'inherit', 'open', 'closed', '', 'd5fb99e5-7a7a-3b61-b867-447cf599b3a3', '', '', '2021-12-19 14:25:54', '2021-12-19 11:25:54', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/d5fb99e5-7a7a-3b61-b867-447cf599b3a3.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2021-12-18 10:37:52', '2021-12-18 07:37:52', '<img alt=\"Asperiores non eveniet nesciunt provident eum ut ducimus et\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/7afc39a8-d5d8-3f52-8472-c29d4795d468.png\">\n<p>Sint ipsam earum neque et sint at quo. Beatae dolorem aut dolorum consequatur ex dolor dicta. Laboriosam tempore optio eius nihil dolorem veritatis. Id ea deserunt qui sed quidem. Voluptatibus omnis incidunt rerum beatae maiores. Cum ipsam asperiores quia sit ut aut. Cupiditate est similique a est veniam. Deleniti quibusdam ipsum autem consequatur quia ipsum vitae. Tempora enim quas repellendus praesentium provident maxime eos. Nisi soluta voluptas qui veniam. Quisquam maiores velit quia culpa. Nisi voluptates fugiat consectetur ex voluptatem. Ipsam inventore aspernatur ut nam velit non. Non dolorem ut commodi unde rem explicabo eligendi. Quod et sequi soluta. Odit voluptatem sunt reprehenderit. Dolorem numquam dolor quia ut. Commodi qui sint at ipsa in. Eos amet sunt et nulla ab dignissimos earum. Doloribus ut consequatur et voluptas. Impedit debitis numquam quo eum sapiente. Eum fugit porro dolor commodi necessitatibus consequatur. Et ducimus sed deserunt. Fugit officiis facilis laudantium laborum voluptatem. Velit fuga non illum consectetur sequi est. Facilis aliquam ab in tenetur voluptates magnam non enim. Nemo dolor enim quos qui incidunt. Labore impedit ut eveniet consequatur sed omnis. Quaerat voluptatum tempore vero omnis sed. Dolorem ea dicta et sed quia porro. Nemo doloribus perspiciatis qui minus sunt ipsum ut. Autem veniam libero nesciunt qui et. Et nemo ea autem et. Quia ipsam tenetur similique reprehenderit rerum. Consequatur minima in aliquam molestiae. Quis sit enim ex molestiae. Consequatur illum necessitatibus et ut expedita repudiandae. Illo dignissimos ea omnis non totam optio voluptatem itaque. Voluptatem a quia autem incidunt eligendi est. Ut et ullam earum pariatur temporibus. Voluptatem repellat doloremque voluptatem blanditiis qui quis ea. Aut consequatur qui ex qui et iste soluta. Perspiciatis quidem voluptate laborum incidunt nihil doloremque nulla. At et voluptatem ratione sed eum libero ipsum. Laborum reprehenderit facere dicta voluptatibus cupiditate numquam libero. Corporis et unde recusandae. Voluptatem culpa autem error fugit tempore doloremque. Voluptas maxime cupiditate id odio amet. Autem dolore vel dolorem aut rerum non quos tempore. Eaque delectus sed pariatur et esse ut qui. Qui iusto qui vero corporis. Quos et doloribus doloribus eum ex maiores. Vero voluptatem consectetur explicabo quasi consequatur placeat rerum neque.</p>\n<h5>Libero quos quisquam aut eum. Aut fugit commodi aspernatur. Sed ullam id et tenetur perferendis aut</h5>\n<img alt=\"Reprehenderit\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/c0870275-6091-3999-9663-85b6e7966cb4.png\">\n<ul><li>Vel sapiente cum at</li><li>Saepe maxime est assumenda et illum</li><li>Veritatis maiores</li><li>Nulla dolores dolore et rerum</li><li>Ad ducimus ea iste</li><li>Molestias esse dolorem animi aliquam non</li></ul>\n<img src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/d5fb99e5-7a7a-3b61-b867-447cf599b3a3.png\">\n<!--more-->\n<h5>Iusto necessitatibus facilis inventore quae sed</h5>\n<ul><li>Est vel illo cum odio temporibus ea</li><li>Ratione et minima aut id rerum</li><li>Sed ut quo non tempore id</li><li>Laborum</li></ul>\n<h1>Quo vel aut quidem architecto vel aut. Nulla temporibus nihil voluptas officiis autem. Corrupti non ut odit suscipit repellendus maiores aperiam consequatur</h1>\n<blockquote><a title=\"Et voluptatum.\" href=\"http://effertz.com/quos-ducimus-eum-praesentium-temporibus-impedit-saepe-rerum-iure\">Ea</a> omnis sed repellendus voluptas dolorum Cumque autem autem saepe quas. voluptates facere velit. Omnis qui <a title=\"Modi voluptate sint quisquam.\" href=\"http://www.hayes.com/illo-aut-aperiam-aperiam-atque-voluptatibus-aspernatur-necessitatibus-similique\">et consectetur totam iure. Est reiciendis</a> voluptatem officiis doloribus quasi. Labore numquam neque tempore dolorem unde. Pariatur labore ea fuga dolorem nostrum. Sit consectetur at quis repellat. Maxime <a title=\"Iste odit libero quis voluptas.\" href=\"http://www.jenkins.com/\">ea corrupti incidunt</a> enim Vel et quis <a title=\"Omnis officiis quo unde.\" href=\"http://www.gleichner.com/\">explicabo velit commodi. Commodi eum</a> sed ratione reiciendis aut Maiores et at temporibus voluptas a.</blockquote>\n<img class=\"alignright\" alt=\"Animi doloremque in quis\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/478d7589-740b-39f6-bd11-ec5b4a1b298f.png\">\n<hr>', 'Fugiat voluptates rerum praesentium consequatur enim harum', 'Consequatur incidunt omnis iure temporibus alias pariatur alias ut aut in quo laboriosam quia id rerum ab ex qui qui blanditiis repellat commodi incidunt quia harum quasi molestiae et dolor sed voluptatem eum animi nihil eaque rerum repellat eveniet ipsum et id enim et delectus sed dolorum.', 'publish', 'open', 'open', '', 'fugiat-voluptates-rerum-praesentium-consequatur-enim-harum', '', '', '2021-12-18 10:37:52', '2021-12-18 07:37:52', '', 0, 'http://localhost/cli-wp/2021/12/18/fugiat-voluptates-rerum-praesentium-consequatur-enim-harum/', 0, 'post', '', 0),
(52, 1, '2021-12-19 14:25:54', '2021-12-19 11:25:54', '', '08ebdd54-ca54-3790-9604-6c5dc8f5efc6', '', 'inherit', 'open', 'closed', '', '08ebdd54-ca54-3790-9604-6c5dc8f5efc6', '', '', '2021-12-19 14:25:54', '2021-12-19 11:25:54', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/08ebdd54-ca54-3790-9604-6c5dc8f5efc6.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2021-12-19 14:25:54', '2021-12-19 11:25:54', '', '6503e14b-92fa-3f27-b271-4caa39530159', '', 'inherit', 'open', 'closed', '', '6503e14b-92fa-3f27-b271-4caa39530159', '', '', '2021-12-19 14:25:54', '2021-12-19 11:25:54', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/6503e14b-92fa-3f27-b271-4caa39530159.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2021-12-19 14:25:56', '2021-12-19 11:25:56', '', '740390e4-0435-37e2-839f-956c99a810b0', '', 'inherit', 'open', 'closed', '', '740390e4-0435-37e2-839f-956c99a810b0', '', '', '2021-12-19 14:25:56', '2021-12-19 11:25:56', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/740390e4-0435-37e2-839f-956c99a810b0.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2021-12-18 08:52:33', '2021-12-18 05:52:33', '<h3>Veniam magni sed maxime ut quas similique corporis atque. Non qui id amet cumque. Quos in inventore voluptatibus</h3>\n<ul><li>Sit totam earum quasi sed ea</li><li>Non aut esse enim ullam in</li><li>Architecto sed</li></ul>\n<h3>Non similique nisi facere aut et quaerat qui omnis. Nobis possimus in sed iusto nam dolor. Nihil autem enim et quis</h3>\n<!--more-->\n<img src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/6503e14b-92fa-3f27-b271-4caa39530159.png\">\n<img class=\"aligncenter\" alt=\"Aut aliquam quia et praesentium minus ipsa\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/740390e4-0435-37e2-839f-956c99a810b0.jpg\">\n<h4>Ullam omnis quisquam totam non aspernatur eum similique. Dolor minima iste voluptate a aut aut sit. Maiores quidem nostrum rem veritatis sit</h4>\n<hr>\n<p>Et qui ea quia. Consequatur unde ea ut quaerat id repudiandae. Et ratione ipsum voluptas ut officia ipsum. Rerum minus dolor cupiditate dolore sed ab. Totam maxime eum ipsa pariatur laudantium et. Ut impedit et sit. Nesciunt et animi eligendi. Nisi suscipit error qui repudiandae est nobis natus. Et ipsum debitis omnis. Ipsa qui accusamus omnis id. Autem nesciunt dicta rem et consequuntur repellat blanditiis. Velit libero quaerat quos reprehenderit culpa maxime facilis. Quod aut dolor iure rem ullam. Veniam repellat ut dignissimos ex deleniti et consequuntur.</p>\n<p>Nesciunt voluptatibus sequi eum dolore aut aliquid. At necessitatibus <a title=\"Reprehenderit voluptatem iure quia deleniti tempora.\" href=\"http://keeling.info/natus-nisi-id-et-quam-repudiandae-autem\">possimus quam</a> Nihil et sapiente aliquam possimus. ipsam laudantium minima quasi aliquid. Similique dolorum consequatur itaque distinctio. Ut possimus repudiandae et Est eligendi odio qui iusto. Ipsa nihil quia cupiditate odio. Dicta id ut nulla ut debitis assumenda. et nam reprehenderit dolore expedita vitae. At voluptatem repellendus praesentium. eos quibusdam id rem necessitatibus. Adipisci et quae Architecto dolorem dolor porro quibusdam. Consectetur est quas a id. consequatur sit impedit et similique. Repudiandae nemo tenetur commodi nesciunt porro Ut qui laboriosam esse aliquam magni inventore. consequatur earum. Iure ipsam cumque et ea voluptatem. Laboriosam quis quidem quasi Mollitia ut est amet. Possimus sapiente et dicta culpa Est possimus omnis molestias et eum. Dolor ut tempore exercitationem accusamus. Minus sunt in Aspernatur impedit optio et excepturi omnis. Voluptate ipsa non commodi quos natus Quia rerum impedit rem. Qui aut alias quidem modi. Delectus quis eum impedit. ut dolore quibusdam consequuntur. Doloribus consectetur aut cum ab quia. praesentium illum ratione enim.</p>\n<p>Doloribus a et. Totam aliquam id ducimus eveniet molestiae veritatis. repellat sed omnis. Rerum quaerat et Quia quas perspiciatis quae ratione. Pariatur nesciunt impedit et consequatur rerum cumque non. Est sunt iusto est. in voluptates delectus <a title=\"Magnam beatae quaerat voluptas magnam.\" href=\"http://www.jacobi.com/velit-commodi-voluptatibus-expedita.html\">distinctio</a> quia. Fuga accusamus in omnis deserunt ad Iusto incidunt impedit excepturi Veniam iure explicabo necessitatibus minus fugiat. Et eum hic eius aliquam. Labore id perferendis saepe quis Tempora et numquam odit minus Aut tempora aperiam error dolores quia. Rerum odit consequatur ut corporis. ipsum explicabo beatae adipisci deserunt aut officia. Et culpa eum magnam. odio delectus maxime vitae nulla explicabo autem. Maiores ut facere consequatur possimus Amet repudiandae minus assumenda facilis quod enim aut. Doloremque consequatur ducimus hic molestiae enim Id expedita nihil perferendis aut est id. Corrupti nostrum et laudantium eveniet facilis. Quia sunt illo reprehenderit. dolor tempora praesentium ut eius. natus saepe eaque enim animi. Aut velit ut error in non. Tempora velit non. Et omnis autem aut tenetur optio. doloremque occaecati et et. Minima expedita fuga eos qui <a title=\"Alias voluptates alias autem possimus velit quia recusandae facere cum libero.\" href=\"http://www.huels.com/debitis-reprehenderit-pariatur-a-omnis-dolorum-repellat\">laudantium. Nemo qui</a> veritatis distinctio non quaerat. Nihil qui enim possimus</p>\n<hr>\n<hr>\n<h6>Fuga numquam veritatis eaque ex. Aliquid quidem iure sed maxime voluptas in minima expedita. Nihil architecto corporis et dolores sed</h6>\n<blockquote>At molestiae aut aspernatur eaque. officia et voluptas optio eos. Quis minus reprehenderit nihil. Accusamus expedita dolorem qui eveniet enim eius impedit. Sapiente neque placeat omnis. Sit maxime saepe ut. nam necessitatibus rerum est. laboriosam occaecati ab neque. ducimus ratione consequatur <a title=\"Nulla quia nihil.\" href=\"https://rosenbaum.net/perspiciatis-aut-est-est-temporibus-eum.html\">nulla officia quae. Necessitatibus in</a> tempora expedita Quia dolor autem ut repudiandae. Consequatur tenetur non voluptas et vel voluptatum. odio quaerat id qui porro hic. Sint eos voluptas ut ut Voluptatem provident et tenetur. saepe autem Numquam ullam rerum aut et Autem ut aut nemo id consectetur. Omnis quam ipsa tempora repellat. eius porro nisi voluptatem omnis voluptatum. sapiente maiores <a title=\"Voluptas qui.\" href=\"http://www.hegmann.com/ullam-aut-sed-cumque-perferendis-non-dignissimos-eligendi\">enim</a> fuga illum. Consectetur vero explicabo minus in. Ipsa deserunt molestiae debitis vel quia. Voluptate itaque est. ratione hic molestias debitis et. Est voluptates ut quasi alias Explicabo quae sequi voluptate Quis ad reprehenderit illo necessitatibus quis. ipsam possimus laboriosam. Earum aspernatur maiores autem ut voluptatem libero. consectetur officia id libero perspiciatis. Doloribus occaecati dolore deserunt veniam corrupti consequatur. distinctio quo repudiandae aut. Eos hic debitis provident quibusdam Perspiciatis consequatur consequuntur et in aut. Voluptatem amet quasi voluptas enim voluptas. Minus et nam ipsum sit Repellat qui facilis id dicta cumque Rerum consequatur <a title=\"Quibusdam quam autem.\" href=\"http://weissnat.com/sunt-amet-cumque-natus-autem\">ea</a> qui. Impedit vel omnis et blanditiis repudiandae. Aut omnis asperiores quisquam quod numquam ipsam.</blockquote>\n<hr>', 'Quas ex sit sint corrupti perferendis voluptas', '', 'publish', 'open', 'open', '', 'quas-ex-sit-sint-corrupti-perferendis-voluptas', '', '', '2021-12-18 08:52:33', '2021-12-18 05:52:33', '', 0, 'http://localhost/cli-wp/2021/12/18/quas-ex-sit-sint-corrupti-perferendis-voluptas/', 0, 'post', '', 0),
(56, 1, '2021-12-19 14:25:56', '2021-12-19 11:25:56', '', 'da3e51f4-7070-356b-a098-3c800e4ffcba', '', 'inherit', 'open', 'closed', '', 'da3e51f4-7070-356b-a098-3c800e4ffcba', '', '', '2021-12-19 14:25:56', '2021-12-19 11:25:56', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/da3e51f4-7070-356b-a098-3c800e4ffcba.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(57, 1, '2021-12-18 22:34:08', '2021-12-18 19:34:08', '<h1>Ad nihil qui tenetur quis qui ratione. Quisquam vitae eos architecto ut. Voluptatem qui illo similique autem</h1>\n<ol><li>Eos quis ut iusto</li><li>Non totam illo itaque</li><li>Hic doloribus in sed</li><li>Ut omnis fuga non est</li><li>In eum quia et in exercitationem dolorem non</li><li>Modi earum ad est voluptates similique</li><li>Iusto inventore officia porro</li></ol>\n<h5>Magni aspernatur tempore nostrum sed ad qui quis. Cumque pariatur ad rerum alias quam amet</h5>\n<hr>\n<hr>\n<!--more-->\n<ol><li>Atque nam labore perspiciatis omnis</li><li>Ipsam error</li><li>Unde asperiores</li><li>Et dolor et dolores illo</li><li>Est quae facilis quo</li><li>Eos accusamus facilis est et omnis tenetur</li></ol>\n<img class=\"aligncenter\" alt=\"Officia libero rerum debitis et rem\" src=\"http://localhost/cli-wp/wp-content/uploads/2021/12/1817a0fa-e7e2-3587-894c-e92eb479b070.jpg\">', 'Non nulla laboriosam cumque minus repudiandae', '', 'publish', 'open', 'closed', '', 'non-nulla-laboriosam-cumque-minus-repudiandae', '', '', '2021-12-18 22:34:08', '2021-12-18 19:34:08', '', 0, 'http://localhost/cli-wp/2021/12/18/non-nulla-laboriosam-cumque-minus-repudiandae/', 0, 'post', '', 0),
(58, 1, '2021-12-19 14:25:57', '2021-12-19 11:25:57', '', 'be0bfcfc-b428-3f68-91d5-39f2e708a5bd', '', 'inherit', 'open', 'closed', '', 'be0bfcfc-b428-3f68-91d5-39f2e708a5bd', '', '', '2021-12-19 14:25:57', '2021-12-19 11:25:57', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/be0bfcfc-b428-3f68-91d5-39f2e708a5bd.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2021-12-18 13:55:39', '2021-12-18 10:55:39', '<h4>Deserunt non consequuntur et nam voluptas doloribus et harum. Dolor sit consequatur quia voluptates laborum quaerat</h4>\n<hr>\n<h6>Aut est dolor cumque fugiat qui. Et dolorem aspernatur et</h6>\n<!--more-->\n<ul><li>Ipsum labore quasi minima</li><li>Est voluptatem numquam architecto dolor ut in aliquid</li><li>Dolores deleniti iure consequatur nemo</li><li>Vitae ad provident ratione occaecati</li></ul>\n<p>Ad at mollitia dolor dolorum. Reprehenderit impedit eos est animi et voluptatem ut. Dignissimos harum velit cum natus vero recusandae veniam quos. Tempore esse qui adipisci quod expedita nisi. Non maxime temporibus quis itaque qui laborum. Repellat quam et fugit fugit ipsa autem. Velit rem et ullam qui. Rerum distinctio tenetur vero iusto est vel facere sunt. Voluptatem vero beatae et sint voluptatem laborum aut. Optio aliquam nihil nesciunt et expedita dignissimos. Ut et quos nostrum magni eum vel. Sed et quidem vel sunt aliquid quae et. Fugiat architecto quis tempore beatae. Deserunt repellat officiis autem temporibus aut placeat. Explicabo debitis aut et animi esse animi repellat. Adipisci quaerat molestiae dicta quidem iusto alias eius.</p>\n<h6>Assumenda at earum quod officiis numquam molestiae laborum</h6>\n<hr>', 'Praesentium aut laborum quae', 'Odio voluptatibus consectetur autem aut ut qui aut est et hic est corporis cum est aspernatur ut error sit impedit asperiores eum quia et odio in corrupti corporis nam molestias consequatur sint in tempore ipsum nobis ut ipsam accusantium et quas omnis.', 'publish', 'open', 'open', '', 'praesentium-aut-laborum-quae', '', '', '2021-12-18 13:55:39', '2021-12-18 10:55:39', '', 0, 'http://localhost/cli-wp/2021/12/18/praesentium-aut-laborum-quae/', 0, 'post', '', 0),
(60, 1, '2021-12-19 14:25:58', '2021-12-19 11:25:58', '', '065c2943-a133-3c36-a1ec-c9e07d69b94f', '', 'inherit', 'open', 'closed', '', '065c2943-a133-3c36-a1ec-c9e07d69b94f', '', '', '2021-12-19 14:25:58', '2021-12-19 11:25:58', '', 0, 'http://localhost/cli-wp/wp-content/uploads/2021/12/065c2943-a133-3c36-a1ec-c9e07d69b94f.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2021-12-19 15:26:45', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 15:26:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2021-12-19 15:26:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 15:26:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2021-12-19 15:30:48', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 15:30:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=63', 1, 'nav_menu_item', '', 0),
(64, 1, '2021-12-19 15:30:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 15:30:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2021-12-19 15:40:52', '2021-12-19 12:40:52', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2021-12-19 15:40:52', '2021-12-19 12:40:52', '', 0, 'http://localhost/cli-wp/?p=65', 1, 'nav_menu_item', '', 0),
(66, 1, '2021-12-19 15:40:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-19 15:40:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/cli-wp/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2021-12-19 15:40:52', '2021-12-19 12:40:52', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2021-12-19 15:40:52', '2021-12-19 12:40:52', '', 0, 'http://localhost/cli-wp/?p=67', 2, 'nav_menu_item', '', 0),
(68, 1, '2021-12-19 15:40:52', '2021-12-19 12:40:52', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2021-12-19 15:40:52', '2021-12-19 12:40:52', '', 0, 'http://localhost/cli-wp/?p=68', 3, 'nav_menu_item', '', 0),
(69, 1, '2021-12-19 15:40:52', '2021-12-19 12:40:52', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2021-12-19 15:40:52', '2021-12-19 12:40:52', '', 0, 'http://localhost/cli-wp/?p=69', 5, 'nav_menu_item', '', 0),
(70, 1, '2021-12-19 15:40:52', '2021-12-19 12:40:52', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2021-12-19 15:40:52', '2021-12-19 12:40:52', '', 0, 'http://localhost/cli-wp/?p=70', 4, 'nav_menu_item', '', 0),
(71, 1, '2021-12-19 15:40:52', '2021-12-19 12:40:52', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2021-12-19 15:40:52', '2021-12-19 12:40:52', '', 0, 'http://localhost/cli-wp/?p=71', 6, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Blanditiis eum mollitia hic', 'blanditiis-eum-mollitia-hic', 0),
(3, 'Quas consequuntur quam tenetur', 'quas-consequuntur-quam-tenetur', 0),
(4, 'Eius ut corporis eos', 'eius-ut-corporis-eos', 0),
(5, 'Cupiditate aut vel sunt', 'cupiditate-aut-vel-sunt', 0),
(6, 'Dolor laboriosam saepe dolor vel', 'dolor-laboriosam-saepe-dolor-vel', 0),
(7, 'Officiis sequi amet ea', 'officiis-sequi-amet-ea', 0),
(8, 'Primary Menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(7, 3, 0),
(7, 4, 0),
(7, 5, 0),
(12, 1, 0),
(12, 3, 0),
(12, 4, 0),
(14, 1, 0),
(14, 5, 0),
(17, 6, 0),
(19, 1, 0),
(19, 2, 0),
(21, 1, 0),
(21, 7, 0),
(24, 1, 0),
(24, 5, 0),
(29, 4, 0),
(29, 7, 0),
(35, 3, 0),
(35, 4, 0),
(35, 5, 0),
(35, 7, 0),
(37, 1, 0),
(37, 2, 0),
(37, 3, 0),
(37, 6, 0),
(39, 7, 0),
(42, 2, 0),
(42, 3, 0),
(42, 4, 0),
(42, 7, 0),
(44, 3, 0),
(44, 4, 0),
(44, 5, 0),
(44, 6, 0),
(47, 1, 0),
(47, 2, 0),
(47, 3, 0),
(47, 4, 0),
(51, 1, 0),
(51, 2, 0),
(51, 3, 0),
(51, 4, 0),
(55, 2, 0),
(55, 4, 0),
(55, 5, 0),
(57, 4, 0),
(57, 7, 0),
(59, 1, 0),
(59, 5, 0),
(59, 7, 0),
(65, 8, 0),
(67, 8, 0),
(68, 8, 0),
(69, 8, 0),
(70, 8, 0),
(71, 8, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 10),
(2, 2, 'category', 'Facilis quidem molestiae est enim similique illo earum et cupiditate culpa et molestiae consequatur fuga quae et quo eligendi', 0, 7),
(3, 3, 'category', 'In id ullam sapiente nobis quo aut eum unde quibusdam facere debitis numquam voluptas et incidunt iusto qui et quis laudantium et magnam harum quod necessitatibus', 0, 8),
(4, 4, 'category', 'Illo pariatur necessitatibus dolorum quo necessitatibus reprehenderit aut ullam cupiditate deleniti tempora repellendus excepturi error et reiciendis qui vero ullam ut assumenda ducimus expedita voluptatem sunt numquam iure nihil vero eligendi itaque velit illum qui quia nesciunt ex et vel mollitia aut aut sed sint illum explicabo ea sed ullam ut sed recusandae eius assumenda non optio cumque', 0, 10),
(5, 5, 'category', 'Quasi eaque perferendis cumque ea ut eos voluptates quae quisquam sit aspernatur possimus quisquam nulla sequi', 0, 7),
(6, 6, 'category', 'Distinctio perferendis tempore non optio aut omnis vitae voluptatem quia est nulla explicabo minus architecto', 0, 3),
(7, 7, 'category', 'Beatae veniam qui totam sapiente aliquid ipsam', 0, 7),
(8, 8, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"71f40481b6b3c244794f83434cfb2db1106f5b6bd528fe896ad8b4bb624faa7c\";a:4:{s:10:\"expiration\";i:1641122615;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1639913015;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '8');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BQtYg1z3ALzM5IAx7XkPl8Gr9ANGcH.', 'admin', 'bazaliymichail@gmail.com', 'http://localhost/cli-wp', '2021-12-19 11:23:23', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
