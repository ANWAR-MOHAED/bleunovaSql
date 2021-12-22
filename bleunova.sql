-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 déc. 2021 à 13:30
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bleunova`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `description`, `image`) VALUES
(3, NULL, 1, 'Export Import', 'export-import', '2021-12-20 13:55:07', '2021-12-21 11:01:13', 'We Import, Distribute and Deliver Quality Products to the Qatar', 'categories\\December2021\\lCzeIHBExelK2jInjwd1.jpg'),
(4, NULL, 1, 'It solution', 'it-solution', '2021-12-20 14:11:17', '2021-12-21 11:02:50', 'Get end-to-end IT solutions, consulting services and more for your business', 'categories\\December2021\\ZJuFfcgD2aCJz3mDHxGO.jpg'),
(5, NULL, 1, 'Les travaux Divers', 'les-travaux-divers', '2021-12-21 07:56:59', '2021-12-21 08:40:34', 'L\'ingénieur en génie civil planification de la construction...', 'categories\\December2021\\IKIrgxpYIbYFltBc4xSM.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 4, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 8),
(57, 4, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 9),
(69, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(71, 9, 'body', 'text_area', 'Body', 1, 1, 1, 1, 1, 1, '{}', 5),
(72, 9, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{}', 4),
(73, 9, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '{}', 2),
(74, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(75, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-12-20 13:37:35', '2021-12-20 13:37:35'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-12-20 13:37:35', '2021-12-20 13:37:35'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-12-20 13:37:35', '2021-12-20 13:37:35'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-12-20 13:37:41', '2021-12-20 13:54:09'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-12-20 13:37:42', '2021-12-20 13:37:42'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-12-20 13:37:44', '2021-12-20 13:37:44'),
(9, 'services', 'services', 'Service', 'Services', NULL, 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-12-22 10:19:56', '2021-12-22 10:27:11');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-12-20 13:37:37', '2021-12-20 13:37:37');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-12-20 13:37:37', '2021-12-20 13:37:37', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-12-20 13:37:37', '2021-12-20 13:37:37', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-12-20 13:37:37', '2021-12-20 13:37:37', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-12-20 13:37:37', '2021-12-20 13:37:37', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-12-20 13:37:37', '2021-12-20 13:37:37', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-12-20 13:37:37', '2021-12-20 13:37:37', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-12-20 13:37:37', '2021-12-20 13:37:37', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-12-20 13:37:37', '2021-12-20 13:37:37', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-12-20 13:37:37', '2021-12-20 13:37:37', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-12-20 13:37:37', '2021-12-20 13:37:37', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2021-12-20 13:37:41', '2021-12-20 13:37:41', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2021-12-20 13:37:44', '2021-12-20 13:37:44', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2021-12-20 13:37:45', '2021-12-20 13:37:45', 'voyager.pages.index', NULL),
(15, 1, 'Services', '', '_self', NULL, NULL, NULL, 15, '2021-12-22 10:19:56', '2021-12-22 10:19:56', 'voyager.services.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2021_12_22_103943_create_services_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-12-20 13:37:46', '2021-12-20 13:37:46');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(2, 'browse_bread', NULL, '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(3, 'browse_database', NULL, '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(4, 'browse_media', NULL, '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(5, 'browse_compass', NULL, '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(6, 'browse_menus', 'menus', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(7, 'read_menus', 'menus', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(8, 'edit_menus', 'menus', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(9, 'add_menus', 'menus', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(10, 'delete_menus', 'menus', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(11, 'browse_roles', 'roles', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(12, 'read_roles', 'roles', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(13, 'edit_roles', 'roles', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(14, 'add_roles', 'roles', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(15, 'delete_roles', 'roles', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(16, 'browse_users', 'users', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(17, 'read_users', 'users', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(18, 'edit_users', 'users', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(19, 'add_users', 'users', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(20, 'delete_users', 'users', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(21, 'browse_settings', 'settings', '2021-12-20 13:37:38', '2021-12-20 13:37:38'),
(22, 'read_settings', 'settings', '2021-12-20 13:37:39', '2021-12-20 13:37:39'),
(23, 'edit_settings', 'settings', '2021-12-20 13:37:39', '2021-12-20 13:37:39'),
(24, 'add_settings', 'settings', '2021-12-20 13:37:39', '2021-12-20 13:37:39'),
(25, 'delete_settings', 'settings', '2021-12-20 13:37:39', '2021-12-20 13:37:39'),
(26, 'browse_categories', 'categories', '2021-12-20 13:37:41', '2021-12-20 13:37:41'),
(27, 'read_categories', 'categories', '2021-12-20 13:37:41', '2021-12-20 13:37:41'),
(28, 'edit_categories', 'categories', '2021-12-20 13:37:41', '2021-12-20 13:37:41'),
(29, 'add_categories', 'categories', '2021-12-20 13:37:42', '2021-12-20 13:37:42'),
(30, 'delete_categories', 'categories', '2021-12-20 13:37:42', '2021-12-20 13:37:42'),
(31, 'browse_posts', 'posts', '2021-12-20 13:37:44', '2021-12-20 13:37:44'),
(32, 'read_posts', 'posts', '2021-12-20 13:37:44', '2021-12-20 13:37:44'),
(33, 'edit_posts', 'posts', '2021-12-20 13:37:44', '2021-12-20 13:37:44'),
(34, 'add_posts', 'posts', '2021-12-20 13:37:44', '2021-12-20 13:37:44'),
(35, 'delete_posts', 'posts', '2021-12-20 13:37:44', '2021-12-20 13:37:44'),
(36, 'browse_pages', 'pages', '2021-12-20 13:37:45', '2021-12-20 13:37:45'),
(37, 'read_pages', 'pages', '2021-12-20 13:37:45', '2021-12-20 13:37:45'),
(38, 'edit_pages', 'pages', '2021-12-20 13:37:45', '2021-12-20 13:37:45'),
(39, 'add_pages', 'pages', '2021-12-20 13:37:45', '2021-12-20 13:37:45'),
(40, 'delete_pages', 'pages', '2021-12-20 13:37:45', '2021-12-20 13:37:45'),
(46, 'browse_services', 'services', '2021-12-22 10:19:56', '2021-12-22 10:19:56'),
(47, 'read_services', 'services', '2021-12-22 10:19:56', '2021-12-22 10:19:56'),
(48, 'edit_services', 'services', '2021-12-22 10:19:56', '2021-12-22 10:19:56'),
(49, 'add_services', 'services', '2021-12-22 10:19:56', '2021-12-22 10:19:56'),
(50, 'delete_services', 'services', '2021-12-22 10:19:56', '2021-12-22 10:19:56');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(5, 1, 3, 'Food & Grocery', NULL, 'Al Majlis Trading offers a vast selection of food products from fruits and vegetables to cereals and snacks.', '<div class=\"elementor-widget-wrap\">\r\n<div class=\"elementor-element elementor-element-1655371 elementor-widget elementor-widget-heading\" data-id=\"1655371\" data-element_type=\"widget\" data-widget_type=\"heading.default\">\r\n<div class=\"elementor-widget-container\">\r\n<h1 class=\"elementor-heading-title elementor-size-default\">Food &amp; Grocery</h1>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-627ec63 elementor-position-left elementor-view-stacked elementor-shape-circle elementor-vertical-align-top elementor-widget elementor-widget-icon-box animated slideInRight\" data-id=\"627ec63\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInRight&quot;}\" data-widget_type=\"icon-box.default\">\r\n<div class=\"elementor-widget-container\">\r\n<div class=\"elementor-icon-box-wrapper\">\r\n<div class=\"elementor-icon-box-icon\">&nbsp;</div>\r\n<div class=\"elementor-icon-box-content\">\r\n<h3 class=\"elementor-icon-box-title\">Foods</h3>\r\n<p class=\"elementor-icon-box-description\">Al Majlis Trading offers a vast selection of food products from fruits and vegetables to cereals and snacks.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-269b44a elementor-position-left elementor-view-stacked elementor-shape-circle elementor-vertical-align-top elementor-widget elementor-widget-icon-box animated slideInRight\" data-id=\"269b44a\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInRight&quot;}\" data-widget_type=\"icon-box.default\">\r\n<div class=\"elementor-widget-container\">\r\n<div class=\"elementor-icon-box-wrapper\">\r\n<div class=\"elementor-icon-box-icon\">&nbsp;</div>\r\n<div class=\"elementor-icon-box-content\">\r\n<h3 class=\"elementor-icon-box-title\">Grocery</h3>\r\n<p class=\"elementor-icon-box-description\">We\'re pleased to offer a wide variety of grocery products that includes hygiene and beauty care, household cleaners, and other everyday necessities.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-ac074dd elementor-position-left elementor-view-stacked elementor-shape-circle elementor-vertical-align-top elementor-widget elementor-widget-icon-box animated slideInRight\" data-id=\"ac074dd\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInRight&quot;}\" data-widget_type=\"icon-box.default\">\r\n<div class=\"elementor-widget-container\">\r\n<div class=\"elementor-icon-box-wrapper\">\r\n<div class=\"elementor-icon-box-icon\">&nbsp;</div>\r\n<div class=\"elementor-icon-box-content\">\r\n<h3 class=\"elementor-icon-box-title\">Call Us</h3>\r\n<p class=\"elementor-icon-box-description\">Please get in touch and let us help fulfil your next Food and Grocery shipment into Qatar. +974-3313-7138.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'posts\\December2021\\KMtGbsX3XYrtsiSlJHcB.jpg', 'food-and-grocery', NULL, NULL, 'PUBLISHED', 0, '2021-12-21 09:36:18', '2021-12-21 09:37:19'),
(6, 1, 3, 'Precious Metals & Gemstones', NULL, 'Al Majlis Trading is proud to be one of the only importers of bulk 22 to 24 carat gold in Qatar.', '<div class=\"elementor-widget-wrap\">\r\n<div class=\"elementor-element elementor-element-26ed173 elementor-widget elementor-widget-heading\" data-id=\"26ed173\" data-element_type=\"widget\" data-widget_type=\"heading.default\">\r\n<div class=\"elementor-widget-container\">\r\n<h1 class=\"elementor-heading-title elementor-size-default\">Gold &amp; Metals</h1>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-419fd8f elementor-position-left elementor-view-stacked elementor-shape-circle elementor-vertical-align-top elementor-widget elementor-widget-icon-box animated slideInRight\" data-id=\"419fd8f\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInRight&quot;}\" data-widget_type=\"icon-box.default\">\r\n<div class=\"elementor-widget-container\">\r\n<div class=\"elementor-icon-box-wrapper\">\r\n<div class=\"elementor-icon-box-icon\">&nbsp;</div>\r\n<div class=\"elementor-icon-box-content\">\r\n<h3 class=\"elementor-icon-box-title\">The Gold standard</h3>\r\n<p class=\"elementor-icon-box-description\">Al Majlis Trading is proud to be one of the only importers of bulk 22 to 24 carat gold in Qatar.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-4cd1e349 elementor-position-left elementor-view-stacked elementor-shape-circle elementor-vertical-align-top elementor-widget elementor-widget-icon-box animated slideInRight\" data-id=\"4cd1e349\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInRight&quot;}\" data-widget_type=\"icon-box.default\">\r\n<div class=\"elementor-widget-container\">\r\n<div class=\"elementor-icon-box-wrapper\">\r\n<div class=\"elementor-icon-box-icon\">&nbsp;</div>\r\n<div class=\"elementor-icon-box-content\">\r\n<h3 class=\"elementor-icon-box-title\">Quality Precious Metals</h3>\r\n<p class=\"elementor-icon-box-description\">Along with gold, Al Majlis Trading can offer a wide range of Precious Metal Imports.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-361ec5b5 elementor-position-left elementor-view-stacked elementor-shape-circle elementor-vertical-align-top elementor-widget elementor-widget-icon-box animated slideInRight\" data-id=\"361ec5b5\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInRight&quot;}\" data-widget_type=\"icon-box.default\">\r\n<div class=\"elementor-widget-container\">\r\n<div class=\"elementor-icon-box-wrapper\">\r\n<div class=\"elementor-icon-box-icon\">&nbsp;</div>\r\n<div class=\"elementor-icon-box-content\">\r\n<h3 class=\"elementor-icon-box-title\">Call Us</h3>\r\n<p class=\"elementor-icon-box-description\">Please call us for more information about Gold and Precious Metal Imports in Qatar. +974-3313-7138.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'posts\\December2021\\bk8ZSrP1SU8hHD281eLX.png', 'precious-metals-and-gemstones', NULL, NULL, 'PUBLISHED', 0, '2021-12-21 09:41:24', '2021-12-21 09:41:24'),
(7, 1, 3, 'Agricultural Products', NULL, 'Al Majlis Trading has built a strong and reliable network', '<div class=\"elementor-widget-wrap\">\r\n<div class=\"elementor-element elementor-element-911dd74 elementor-widget elementor-widget-heading\" data-id=\"911dd74\" data-element_type=\"widget\" data-widget_type=\"heading.default\">\r\n<div class=\"elementor-widget-container\">\r\n<h2 class=\"elementor-heading-title elementor-size-default\">&nbsp;</h2>\r\n<h3 style=\"font-style: normal; white-space: normal;\">Meeting The Needs of a Growing Market</h3>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-c1064c1 elementor-widget elementor-widget-text-editor\" data-id=\"c1064c1\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<div class=\"elementor-text-editor elementor-clearfix\">\r\n<p>Al Majlis Trading has built a strong and reliable network of agricultural suppliers from around the world to ensure delivery of the highest quality of agricultural crops into the Qatar market. The relationships and logistical framework we have in place with our suppliers means we&rsquo;re able to deliver various agricultural crops efficiently and at a competitive price to meet the growing needs of the Qatar agriculture and animal feed industry.&nbsp;&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-da7af61 elementor-widget elementor-widget-text-editor\" data-id=\"da7af61\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<div class=\"elementor-text-editor elementor-clearfix\">\r\n<h4>Our Products</h4>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-9eebbdd elementor-align-left elementor-icon-list--layout-traditional elementor-list-item-link-full_width elementor-widget elementor-widget-icon-list\" data-id=\"9eebbdd\" data-element_type=\"widget\" data-widget_type=\"icon-list.default\">\r\n<div class=\"elementor-widget-container\">\r\n<ul class=\"elementor-icon-list-items\">\r\n<li class=\"elementor-icon-list-item\"><span class=\"elementor-icon-list-text\">Feed - Yellow Corn</span></li>\r\n<li class=\"elementor-icon-list-item\"><span class=\"elementor-icon-list-text\">Feed - Barley</span></li>\r\n<li class=\"elementor-icon-list-item\"><span class=\"elementor-icon-list-text\">Feed - Wheat</span></li>\r\n<li class=\"elementor-icon-list-item\"><span class=\"elementor-icon-list-text\">Milling Wheat (Min. 11.5% to 13.5% Protein)</span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-213ab35 elementor-widget elementor-widget-text-editor\" data-id=\"213ab35\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n<div class=\"elementor-widget-container\">\r\n<div class=\"elementor-text-editor elementor-clearfix\">\r\n<p>Other products include: Crude Soya Oil; Crude Sunflower Oil; Crude Rapeseed Oil; Soya Meal; Sunflower Meal; Rapeseed Meal; Fish Meal; Alfa Alfa; Durum Wheat; Wheat Flour; Sorghum. Need a product that we don&rsquo;t have listed? <a href=\"https://almajlistrading.com/contact\">Contact Us</a>, we have suppliers for hundreds of additional products.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'posts\\December2021\\etnT0XL3EzVRhttLOknp.jpg', 'agricultural-products', NULL, NULL, 'PUBLISHED', 0, '2021-12-21 09:46:14', '2021-12-21 09:46:14'),
(8, 1, 3, 'Petroleum Products', NULL, 'Al Majlis Trading offers a wide range of Diesel Fuels including Gasoil (D2) and Residual Fuel Oil (D6).', '<p>&nbsp;</p>\r\n<div class=\"elementor-element elementor-element-f9cb892 elementor-position-left elementor-view-stacked elementor-shape-circle elementor-vertical-align-top elementor-widget elementor-widget-icon-box animated slideInRight\" style=\"box-sizing: border-box; border: 0px; font-weight: 600; margin: 0px 0px 20px; outline: 0px; padding: 0px; vertical-align: baseline; position: relative; animation-duration: 1.25s; animation-name: slideInRight; width: 455.969px; color: #4b4f58; font-family: \'Open Sans\', sans-serif;\" data-id=\"f9cb892\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInRight&quot;}\" data-widget_type=\"icon-box.default\">\r\n<div class=\"elementor-widget-container\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 35px 0px 0px; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\">\r\n<div class=\"elementor-icon-box-wrapper\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row; -webkit-box-align: start; align-items: flex-start;\">\r\n<div class=\"elementor-icon-box-content\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; -webkit-box-flex: 1; flex-grow: 1;\">\r\n<h3 class=\"elementor-icon-box-title\" style=\"box-sizing: border-box; border: 0px; font-size: 20px; font-style: inherit; margin: 0px 0px 5px; outline: 0px; padding: 0px; vertical-align: baseline; clear: both; color: #000000; line-height: 1em; text-transform: uppercase;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">DIESEL FUEL</span></h3>\r\n<p class=\"elementor-icon-box-description\" style=\"box-sizing: border-box; border: 0px; font-size: 15px; font-style: inherit; font-weight: 300; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #bfbfbf; line-height: 1.6em;\">Al Majlis Trading offers a wide range of Diesel Fuels including Gasoil (D2) and Residual Fuel Oil (D6).</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-b3a3fa3 elementor-position-left elementor-view-stacked elementor-shape-circle elementor-vertical-align-top elementor-widget elementor-widget-icon-box animated slideInRight\" style=\"box-sizing: border-box; border: 0px; font-weight: 600; margin: 0px 0px 20px; outline: 0px; padding: 0px; vertical-align: baseline; position: relative; animation-duration: 1.25s; animation-name: slideInRight; width: 455.969px; color: #4b4f58; font-family: \'Open Sans\', sans-serif;\" data-id=\"b3a3fa3\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInRight&quot;}\" data-widget_type=\"icon-box.default\">\r\n<div class=\"elementor-widget-container\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 35px 0px 0px; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\">\r\n<div class=\"elementor-icon-box-wrapper\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row; -webkit-box-align: start; align-items: flex-start;\">\r\n<div class=\"elementor-icon-box-icon\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px 15px 0px 0px; outline: 0px; padding: 0px; vertical-align: baseline; display: inline-flex; -webkit-box-flex: 0; flex: 0 0 auto;\">&nbsp;</div>\r\n<div class=\"elementor-icon-box-content\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; -webkit-box-flex: 1; flex-grow: 1;\">\r\n<h3 class=\"elementor-icon-box-title\" style=\"box-sizing: border-box; border: 0px; font-size: 20px; font-style: inherit; margin: 0px 0px 5px; outline: 0px; padding: 0px; vertical-align: baseline; clear: both; color: #000000; line-height: 1em; text-transform: uppercase;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">CRUDE OIL</span></h3>\r\n<p class=\"elementor-icon-box-description\" style=\"box-sizing: border-box; border: 0px; font-size: 15px; font-style: inherit; font-weight: 300; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #bfbfbf; line-height: 1.6em;\">Our Crude Oil offering include oils with a kinematic viscosity range of 180 CSt and 380 CSt.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"elementor-element elementor-element-9de8fda elementor-position-left elementor-view-stacked elementor-shape-circle elementor-vertical-align-top elementor-widget elementor-widget-icon-box animated slideInRight\" style=\"box-sizing: border-box; border: 0px; font-weight: 600; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; position: relative; animation-duration: 1.25s; animation-name: slideInRight; width: 455.969px; color: #4b4f58; font-family: \'Open Sans\', sans-serif;\" data-id=\"9de8fda\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInRight&quot;}\" data-widget_type=\"icon-box.default\">\r\n<div class=\"elementor-widget-container\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 35px 0px 0px; vertical-align: baseline; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\">\r\n<div class=\"elementor-icon-box-wrapper\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row; -webkit-box-align: start; align-items: flex-start;\">\r\n<div class=\"elementor-icon-box-icon\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px 15px 0px 0px; outline: 0px; padding: 0px; vertical-align: baseline; display: inline-flex; -webkit-box-flex: 0; flex: 0 0 auto;\">&nbsp;</div>\r\n<div class=\"elementor-icon-box-content\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; -webkit-box-flex: 1; flex-grow: 1;\">\r\n<h3 class=\"elementor-icon-box-title\" style=\"box-sizing: border-box; border: 0px; font-size: 20px; font-style: inherit; margin: 0px 0px 5px; outline: 0px; padding: 0px; vertical-align: baseline; clear: both; color: #000000; line-height: 1em; text-transform: uppercase;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">CALL US</span></h3>\r\n<p class=\"elementor-icon-box-description\" style=\"box-sizing: border-box; border: 0px; font-size: 15px; font-style: inherit; font-weight: 300; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #bfbfbf; line-height: 1.6em;\">Please call us for more information about Petroleum Products in Qatar. +974-3313-7138.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'posts\\December2021\\DbNG9bpwHflbRpWuasEK.jpg', 'petroleum-products', NULL, NULL, 'PUBLISHED', 0, '2021-12-21 09:50:55', '2021-12-21 09:50:55'),
(9, 1, 5, 'Ouvrages d’art : le choix d’un leader, de la conception à la construction', NULL, 'Ouvrages d’art : le choix d’un leader, de la conception à la construction', '<section class=\"main__section only-text\" style=\"box-sizing: border-box; padding: 40px 0px; flex: 1 1 66.6667%; max-width: 66.6667%; margin: 0px auto; color: #000000; font-family: acumin-pro, sans-serif; font-size: 18px;\">\r\n<h2 class=\"main__section-title\" style=\"box-sizing: border-box; margin-top: 30px; margin-bottom: 40px; font-family: kepler-std-display, serif; font-size: 2rem; line-height: 43px;\">Eiffage G&eacute;nie Civil est un acteur internationalement reconnu dans la conduite des op&eacute;rations d&rsquo;ouvrages d&rsquo;art</h2>\r\n<div class=\"edito-trio__container\" style=\"box-sizing: border-box; display: flex;\">\r\n<div class=\"paragraph paragraph--grey edito-trio__edito-txt\" style=\"box-sizing: border-box; letter-spacing: 0px; font-size: 0.888889rem; line-height: 1.33333rem; color: #777777; margin-left: 0px; flex: 1 1 auto; max-width: 100%;\">\r\n<p style=\"box-sizing: border-box; margin: 30px 0px 25px;\">Du simple pont-cadre au viaduc le plus complexe, l&rsquo;entreprise poss&egrave;de les comp&eacute;tences en ing&eacute;nierie, conception, travaux et maintenance pour r&eacute;pondre aux attentes de ses clients. Gr&acirc;ce &agrave; ses &eacute;quipes d&rsquo;experts, Eiffage G&eacute;nie Civil est &agrave; m&ecirc;me de r&eacute;pondre &agrave; tous types de demandes d&rsquo;ouvrages en b&eacute;ton ou mixte, sur toutes structures : ponts, viaducs, passerelles et autres ouvrages d&rsquo;art routiers, autoroutiers ou ferroviaires.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 25px;\">&Eacute;coute, disponibilit&eacute; et respect des engagements sont les moteurs de l&rsquo;action des collaborateurs de terrain d&rsquo;Eiffage G&eacute;nie Civil. Les chantiers de construction d&rsquo;ouvrages d&rsquo;art ne riment pas seulement avec grands travaux. Partout en France, nos &eacute;quipes locales se placent au service des collectivit&eacute;s pour r&eacute;pondre &agrave; leurs attentes. La proximit&eacute;, la tenue des d&eacute;lais et le respect des budgets sont au c&oelig;ur de la relation de confiance que nous &eacute;tablissons avec nos clients.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px;\">Parall&egrave;lement, Eiffage G&eacute;nie Civil a fait de la r&eacute;paration d&rsquo;ouvrages un axe fort de son d&eacute;veloppement, sous la marque&nbsp;<a style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px; text-decoration-line: none; transition: all 400ms ease-in-out 0s; border-bottom: 1px solid #777777; color: #777777; border-top-color: #777777; border-right-color: #777777; border-left-color: #777777;\" href=\"https://www.eiffage-aevia.com/home.html\">&AElig;via</a>.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"http://127.0.0.1:8000/storage/posts/December2021/construction.jpg\" alt=\"\" width=\"438\" height=\"242\" /></p>\r\n</div>\r\n</div>\r\n</section>\r\n<section class=\"main__section only-text\" style=\"box-sizing: border-box; padding: 40px 0px; flex: 1 1 66.6667%; max-width: 66.6667%; margin: 0px auto; color: #000000; font-family: acumin-pro, sans-serif; font-size: 18px;\">\r\n<h2 class=\"main__section-title\" style=\"box-sizing: border-box; margin-top: 30px; margin-bottom: 40px; font-family: kepler-std-display, serif; font-size: 2rem; line-height: 43px;\">Cap sur les solutions les plus inventives</h2>\r\n<div class=\"edito-trio__container\" style=\"box-sizing: border-box; display: flex;\">\r\n<div class=\"paragraph paragraph--grey edito-trio__edito-txt\" style=\"box-sizing: border-box; letter-spacing: 0px; font-size: 0.888889rem; line-height: 1.33333rem; color: #777777; margin-left: 0px; flex: 1 1 auto; max-width: 100%;\">\r\n<div class=\"paragraph paragraph--grey\" style=\"box-sizing: border-box; letter-spacing: 0px; font-size: 0.888889rem; line-height: 1.33333rem; flex-basis: auto;\">\r\n<p style=\"box-sizing: border-box; margin: 30px 0px 0px;\">Innover dans le domaine des mat&eacute;riaux ou des structures : tel est le d&eacute;fi quotidien des &eacute;quipes d&rsquo;Eiffage G&eacute;nie Civil. Ma&icirc;trisant parfaitement les techniques traditionnelles, elles sont aussi capables de r&eacute;aliser des ouvrages d&rsquo;exception. Gr&acirc;ce &agrave; l&rsquo;utilisation de mat&eacute;riaux innovants, les &eacute;quipes imaginent des solutions inventives dans le respect des contraintes environnementales.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'posts\\December2021\\8QrUNoJ9Evyo68U6egVY.jpg', 'ouvrages-d-art-le-choix-d-un-leader-de-la-conception-a-la-construction', NULL, NULL, 'PUBLISHED', 0, '2021-12-21 10:13:42', '2021-12-21 10:16:16'),
(10, 1, 5, 'Terminal gazier du champ Grand Tortue/Ahmeyim', NULL, 'Terminal gazier du champ Grand Tortue/Ahmeyim', '<p><span style=\"color: #777777; font-family: acumin-pro, sans-serif; font-size: 16px;\">Nos &eacute;quipes pilotent le consortium charg&eacute; par BP de r&eacute;aliser le terminal gazier du champ Grand Tortue Ahmeyim : infrastructure d&rsquo;accostage, prot&eacute;g&eacute;e par une digue brise-lames, install&eacute;e au large. Constitu&eacute;e de 21 caissons b&eacute;ton de 16 500 tonnes chacun fabriqu&eacute;s par Eiffage &agrave; Dakar (S&eacute;n&eacute;gal), la digue brise-lames d&rsquo;une longueur de 1,2 km, sera pos&eacute;e par -33 m &agrave; 10 km des c&ocirc;tes. Parall&egrave;lement, les 2,5 millions de tonnes de mat&eacute;riaux de carri&egrave;re requis pour la fondation de la digue sous-marine supportant les caissons b&eacute;ton sont produits par Eiffage en Mauritanie dans une carri&egrave;re ouverte sp&eacute;cifiquement pour le projet.</span></p>', 'posts\\December2021\\ufDMaCi9SnsYct5lWMDx.jpg', 'terminal-gazier-du-champ-grand-tortue-ahmeyim', NULL, NULL, 'PUBLISHED', 0, '2021-12-21 10:17:52', '2021-12-21 10:59:16'),
(11, 1, 5, 'Génie civil', NULL, 'Construction Bon-Air Inc', '<p dir=\"ltr\" style=\"box-sizing: inherit; font-family: Arial, sans-serif; text-align: justify; margin-bottom: 1.5em; margin-top: 0px; color: #747474; font-size: 14.7693px;\">Construction Bon-Air Inc. construit des postes d&rsquo;eau potable, d&rsquo;&eacute;gouts sanitaires, des routes, des canalisations et fait de la r&eacute;fection de ponceaux.</p>\r\n<p dir=\"ltr\" style=\"box-sizing: inherit; font-family: Arial, sans-serif; text-align: justify; margin-bottom: 1.5em; margin-top: 0px; color: #747474; font-size: 14.7693px;\">L&rsquo;entreprise v&eacute;hicule ses valeurs en r&eacute;alisant toutes ses activit&eacute;s dans un esprit responsable, en veillant au quotidien, &agrave; la s&eacute;curit&eacute;, &agrave; la protection de l&rsquo;environnement, au respect de l&rsquo;&eacute;thique, &agrave; la qualit&eacute; de ses mat&eacute;riaux, de ses produits et de ses chantiers.</p>', 'posts\\December2021\\OfluqhQeAYG1ynp36zuN.jpg', 'genie-civil', NULL, NULL, 'PUBLISHED', 0, '2021-12-21 10:25:20', '2021-12-21 10:25:36'),
(12, 1, 4, 'La recherche des idées', NULL, 'Cette étape vous recommande de chercher à comprendre la raison', '<p><span style=\"color: #1d2129; font-family: \'Droid Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\">Cette &eacute;tape vous recommande de chercher &agrave; comprendre la raison pour laquelle certains sites existants ont connu de v&eacute;ritables succ&egrave;s. Est-ce &agrave; cause de la qualit&eacute; du design de leur site ou de son contenu ou encore de son secteur d&rsquo;activit&eacute;&thinsp;? Est-ce parce que vous pouvez tout y voir d&rsquo;un coup d&rsquo;&oelig;il que les informations, les liens, la navigation ou les ressources sont assez rapides&thinsp;?</span></p>\r\n<p><span style=\"color: #1d2129; font-family: \'Droid Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://127.0.0.1:8000/storage/posts/December2021/depositphotos_78122438-stock-photo-web-design-media-content-light.jpg\" alt=\"\" width=\"398\" height=\"270\" /></span></p>\r\n<p><span style=\"color: #1d2129; font-family: \'Droid Sans\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px;\"> Vous pouvez prendre ces sites pour des mod&egrave;les sans pour autant les copier. Soyez donc cr&eacute;atif et simple sachant que l&rsquo;acc&egrave;s aux informations est le facteur fondamental. Pour cela, trouvez de bons th&egrave;mes qui renvoient aux divers domaines que fait vivre l&rsquo;internet tels que E-commerce, Blogging, Musique, R&eacute;seaux sociaux&hellip; Faites votre choix selon que vous aimez les &laquo;&thinsp;nouvelles&thinsp;&raquo;, les bonnes exp&eacute;riences amoureuses, ou selon que vous avez des qualit&eacute;s r&eacute;dactionnelles pour &eacute;crire des articles sur les sujets d&rsquo;actualit&eacute; qui vous passionnent.</span></p>', 'posts\\December2021\\KIm27ZEIwDEWLeJ2xEtH.jpg', 'la-recherche-des-idees', NULL, NULL, 'PUBLISHED', 0, '2021-12-21 10:36:51', '2021-12-21 10:38:49'),
(13, 1, 4, 'LES PRÉ-REQUIS AVANT DE PENSER À VOTRE GESTION DE PROJET', NULL, 'Définissez votre cible, votre budget, les besoins de vos futurs utilisateurs, les impacts de votre projet mobile sur votre organisation et vos équipes.', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato; font-size: 16px;\">Nous vous rappelons qu&rsquo;avant de r&eacute;aliser vos projets d&rsquo;applications mobiles, il est essentiel de passer par deux &eacute;tapes essentielles.</p>\r\n<h3 style=\"box-sizing: border-box; margin-top: 40px; margin-bottom: 15px; font-weight: 400; line-height: 40px; font-size: 26px; font-family: Oswald; text-transform: uppercase; color: #212529;\">1. D&Eacute;FINIR VOTRE BESOIN D&rsquo;APPLICATION MOBILE</h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato; font-size: 16px;\">D&eacute;finissez votre cible, votre budget, les besoins de vos futurs utilisateurs, les impacts de votre projet mobile sur votre organisation et vos &eacute;quipes.</p>\r\n<h3 style=\"box-sizing: border-box; margin-top: 40px; margin-bottom: 15px; font-weight: 400; line-height: 40px; font-size: 26px; font-family: Oswald; text-transform: uppercase; color: #212529;\">2. R&Eacute;DIGER VOTRE CAHIER DES CHARGES FONCTIONNEL</h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Lato; font-size: 16px;\">Dans votre cahier des charges fonctionnel, vous devez &eacute;crire des &eacute;l&eacute;ments qui permettront de&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">cadrer et d&eacute;finir le p&eacute;rim&egrave;tre de votre projet</span>&nbsp;d&rsquo;application mobile.<br style=\"box-sizing: border-box;\" />Ce document sera destin&eacute; aux prestataires que vous avez s&eacute;lectionn&eacute;s afin qu&rsquo;ils vous fournissent des devis d&eacute;taill&eacute;s. De ce fait, il doit &ecirc;tre le plus complet possible.</p>\r\n<ul style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 1rem; color: #212529; font-family: Lato; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box;\">Donner vos&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">d&eacute;lais</span>&nbsp;et un&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">planning</span>&nbsp;pr&eacute;visionnel.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">Lister vos&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">contraintes techniques</span></li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">Choisir le type d&rsquo;application souhait&eacute; : natif, hybride ou web ?</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">En cas d&rsquo;application native, sur quelle plateforme mobile : Android, iOS ou Windows ?</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">D&eacute;crire &eacute;tape par &eacute;tape les fonctionnalit&eacute;s et les diff&eacute;rentes vues de votre application mobile</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">Quelles sont les&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">&eacute;volutions</span>&nbsp;de votre application mobile &agrave; pr&eacute;voir ?</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">D&eacute;finir votre&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">cible</span>&nbsp;: particulier ou BtoB ? zone g&eacute;ographique ? etc.</li>\r\n</ul>\r\n<div class=\"block-valeur\" style=\"box-sizing: border-box; color: #212529; font-family: Lato; font-size: 16px;\">Pour une m&eacute;thode compl&egrave;te et actionnable, consultez &eacute;galement les&nbsp;<a style=\"box-sizing: border-box; color: #b40910; text-decoration-line: none; background-color: transparent;\" href=\"https://www.axiocode.com/3-etapes-cahier-des-charges-pour-application-mobile-reussie/\" target=\"_blank\" rel=\"noopener\">3 &Eacute;tapes Cruciales dans la R&eacute;daction de votre Cahier des Charges pour une Application Mobile R&eacute;ussie</a></div>\r\n<div style=\"box-sizing: border-box; color: #212529; font-family: Lato; font-size: 16px;\">\r\n<h3 style=\"box-sizing: border-box; margin-top: 40px; margin-bottom: 15px; font-weight: 400; line-height: 40px; font-size: 26px; font-family: Oswald; text-transform: uppercase;\">3. D&Eacute;SIGNER VOTRE CHEF DE PROJET</h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">Il est important de rappeler le r&ocirc;le d&rsquo;un chef de projet et comment le d&eacute;signer. Tout d&rsquo;abord, expliquons&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">pourquoi d&eacute;signer un chef de projet est essentiel</span>.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">Il est l&rsquo;<span style=\"box-sizing: border-box; font-weight: bolder;\">interm&eacute;diaire entre vous et les diff&eacute;rents professionnels impliqu&eacute;s dans la r&eacute;alisation</span>&nbsp;de l&rsquo;application mobile. En d&rsquo;autres termes, il coordonne les diff&eacute;rents acteurs et les ressources mobilis&eacute;es autour de votre projet.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">Ses<span style=\"box-sizing: border-box; font-weight: bolder;\">&nbsp;missions sont indispensables&nbsp;</span>pour le bon fonctionnement de votre application.</p>\r\n<ul style=\"box-sizing: border-box; margin-top: 15px; margin-bottom: 1rem;\">\r\n<li style=\"box-sizing: border-box;\">D&eacute;finir dans son ensemble la&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">faisabilit&eacute;</span>&nbsp;de votre projet</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">Identifier les risques &eacute;ventuels afin d&rsquo;<span style=\"box-sizing: border-box; font-weight: bolder;\">anticiper les d&eacute;rives</span>&nbsp;potentielles</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">Faire en sorte de<span style=\"box-sizing: border-box; font-weight: bolder;\">&nbsp;respecter les d&eacute;lais</span>&nbsp;avec une planification efficace de votre projet mobile</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\"><span style=\"box-sizing: border-box; font-weight: bolder;\">Optimiser l&rsquo;utilisation</span>&nbsp;de son ou ses &eacute;quipes et les technologies employ&eacute;es</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">Maintenir son ou ses &eacute;quipes motiv&eacute;es et impliqu&eacute;es</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">Mettre en place une&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">veille r&eacute;guli&egrave;re</span>&nbsp;afin d&rsquo;&ecirc;tre &agrave; la pointe technologiquement pour une pleine optimisation de votre application.</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">S&rsquo;inqui&eacute;ter de&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">l&rsquo;ergonomie</span>&nbsp;de votre application afin qu&rsquo;elle soit fluide et performante</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">Superviser les &eacute;tapes de&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">tests</span>&nbsp;de votre application</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">Respecter le budget d&eacute;fini en amont</li>\r\n<li style=\"box-sizing: border-box; margin-top: 20px;\">Fournir une formation et si n&eacute;cessaire de la documentation pour l&rsquo;utilisation et la maintenance de votre application</li>\r\n</ul>\r\n</div>', 'posts\\December2021\\AxLJcDatKY0A8Oy5jlUV.webp', 'les-pre-requis-avant-de-penser-a-votre-gestion-de-projet', NULL, NULL, 'PUBLISHED', 0, '2021-12-21 10:50:48', '2021-12-21 10:51:04');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-12-20 13:37:37', '2021-12-20 13:37:37'),
(2, 'user', 'Normal User', '2021-12-20 13:37:37', '2021-12-20 13:37:37');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'bluenova.introduction', 'introduction', 'Al Majlis Trading is a company founded on local traditions that have evolved over many years to help us become a leading importer in Qatar. Al Majlis Trading imports the highest quality products from around the world to fulfil the extensive needs of an economy experiencing unprecedented growth.', NULL, 'text_area', 6, 'Bluenova'),
(12, 'bluenova.WhatWeDo', 'What We Do', 'Al Majlis Trading is a one-stop-shop concept in the heart of Doha City. We import premium goods from all over the world and supply Qatar with quality products suited to all businesses.\r\n\r\nWe ensure wide selection of products, of the highest quality and at unbeatable pricing. Our policy is to put our customers first and deliver them with the best experiences start to finish.', NULL, 'text_area', 7, 'Bluenova'),
(13, 'bluenova.OurVision', 'Our Vision', 'Be the preferred distribution group, with wide array of products and services – both locally and around the globe. We strive to be known as a company dedicated to client satisfaction on top of profit generation.\r\n\r\nBy 2020, Al Majlis Trading aims to be a dominant figure in the trading industry, on the base of repeatedly satisfying clients locally and abroad.', NULL, 'text_area', 8, 'Bluenova'),
(14, 'bluenova.OurMission', 'Our Mission', 'Our team will strive to adhere to business integrity, service excellence and professionalism in serving our clients and fulfilling our promises. \r\n\r\nOur team will continue offering technical expertise, bringing only the best products and services to Qatar at affordable prices.\r\n\r\nAs we continue to expand our offerings, we always keep our customers needs first.', NULL, 'text_area', 9, 'Bluenova'),
(15, 'bluenova.title1', 'title_What We Do', 'What We Do', NULL, 'text_area', 10, 'Bluenova'),
(16, 'bluenova.title2', 'title_Our Mission', 'Our Mission', NULL, 'text_area', 11, 'Bluenova'),
(17, 'bluenova.title3', 'title_Our Vision', 'Our Vision', NULL, 'text_area', 12, 'Bluenova'),
(18, 'bluenova.About', 'About Us', 'Bluenova Trading\r\nWe Import, Distribute and Deliver Quality Products to the Qatar Market While Ensuring Complete Satisfaction With Our Loyal Customers.', NULL, 'text_area', 13, 'Bluenova'),
(19, 'bluenova.titleAboutUS', 'titleAboutUS', 'Bluenova Trading', NULL, 'text_area', 14, 'Bluenova'),
(20, 'export-import.service1', 'service1', 'Cold in late or deal. Terminated resolution no am frequently...', NULL, 'text_area', 15, 'Export Import.'),
(21, 'it-solution.service1', 'service1', 'Cold in late or deal. Terminated resolution no am frequently...', NULL, 'text_area', 16, 'It solution'),
(22, 'les-travaux-divers.service1', 'service1', 'Cold in late or deal. Terminated resolution no am frequently...', NULL, 'text_area', 17, 'Les travaux Divers'),
(23, 'export-import.titleService1', 'titleService1', 'Renovation', NULL, 'text_area', 18, 'Export Import.'),
(24, 'export-import.service2', 'service2', 'Cold in late or deal. Terminated resolution no am frequently...ff', NULL, 'text_area', 19, 'Export Import.'),
(25, 'export-import.titleService2', 'titleService2', 'Building', NULL, 'text_area', 20, 'Export Import.'),
(26, 'export-import.service3', 'service3', 'Cold in late or deal. Terminated resolution no am frequently...', NULL, 'text_area', 21, 'Export Import.'),
(27, 'export-import.titleservice3', 'titleservice3', 'Support', NULL, 'text_area', 22, 'Export Import.'),
(28, 'it-solution.titleService1', 'titleService1', 'Renovation', NULL, 'text_area', 23, 'It solution'),
(29, 'it-solution.service2', 'service2', 'Cold in late or deal. Terminated resolution no am frequently...ff', NULL, 'text_area', 24, 'It solution'),
(30, 'it-solution.titleService2', 'titleService2', 'Building', NULL, 'text_area', 25, 'It solution'),
(31, 'it-solution.service3', 'service3', 'Cold in late or deal. Terminated resolution no am frequently...', NULL, 'text_area', 26, 'It solution'),
(32, 'it-solution.titleservice3', 'titleservice3', 'Support', NULL, 'text_area', 27, 'It solution'),
(33, 'les-travaux-divers.titleService1', 'titleService1', 'Renovation', NULL, 'text_area', 28, 'Les travaux Divers'),
(34, 'les-travaux-divers.service2', 'service2', 'Cold in late or deal. Terminated resolution no am frequently...ff', NULL, 'text_area', 29, 'Les travaux Divers'),
(35, 'les-travaux-divers.titleService2', 'titleService2', 'Building', NULL, 'text_area', 30, 'Les travaux Divers'),
(36, 'les-travaux-divers.service3', 'service3', 'Cold in late or deal. Terminated resolution no am frequently...', NULL, 'text_area', 31, 'Les travaux Divers'),
(37, 'les-travaux-divers.titleservice3', 'titleservice3', 'Support', NULL, 'text_area', 32, 'Les travaux Divers');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-12-20 13:37:46', '2021-12-20 13:37:46'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-12-20 13:37:47', '2021-12-20 13:37:47'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-12-20 13:37:47', '2021-12-20 13:37:47'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-12-20 13:37:47', '2021-12-20 13:37:47'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-12-20 13:37:47', '2021-12-20 13:37:47'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-12-20 13:37:47', '2021-12-20 13:37:47'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-12-20 13:37:47', '2021-12-20 13:37:47'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-12-20 13:37:47', '2021-12-20 13:37:47'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-12-20 13:37:47', '2021-12-20 13:37:47'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-12-20 13:37:47', '2021-12-20 13:37:47'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-12-20 13:37:47', '2021-12-20 13:37:47'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-12-20 13:37:47', '2021-12-20 13:37:47'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-12-20 13:37:47', '2021-12-20 13:37:47');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$0ydgHRKYrQ4kpAjBeljRjuVqDVB9yqXGIWp/eKDMtpRNIu9yy9mz2', 'qFCn6QnUcN5K4ISbXdOxn08838ErAviDHQ2Moav3vsuWy5p0X8BxiK9J1fqe', NULL, '2021-12-20 13:37:42', '2021-12-20 13:37:42');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
