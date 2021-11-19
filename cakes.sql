-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 30, 2021 at 10:48 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakes`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `username`, `email`, `firstname`, `lastname`, `phone`, `profile_pic`, `created_date`, `user_id`) VALUES
(2, 'Gemini', 'gem99ini00@gmail.com', 'Gemini', 'Hadid', '9823057375', 'static/profile/bella-hadid_jeKB4h9.jpg', '2021-09-16 04:23:27.858066', 5);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add cake', 8, 'add_cake'),
(30, 'Can change cake', 8, 'change_cake'),
(31, 'Can delete cake', 8, 'delete_cake'),
(32, 'Can view cake', 8, 'view_cake'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add seller', 10, 'add_seller'),
(38, 'Can change seller', 10, 'change_seller'),
(39, 'Can delete seller', 10, 'delete_seller'),
(40, 'Can view seller', 10, 'view_seller'),
(41, 'Can add seller', 11, 'add_seller'),
(42, 'Can change seller', 11, 'change_seller'),
(43, 'Can delete seller', 11, 'delete_seller'),
(44, 'Can view seller', 11, 'view_seller'),
(45, 'Can add wishlist', 12, 'add_wishlist'),
(46, 'Can change wishlist', 12, 'change_wishlist'),
(47, 'Can delete wishlist', 12, 'delete_wishlist'),
(48, 'Can view wishlist', 12, 'view_wishlist'),
(49, 'Can add profile', 13, 'add_profile'),
(50, 'Can change profile', 13, 'change_profile'),
(51, 'Can delete profile', 13, 'delete_profile'),
(52, 'Can view profile', 13, 'view_profile'),
(53, 'Can add message upload', 14, 'add_messageupload'),
(54, 'Can change message upload', 14, 'change_messageupload'),
(55, 'Can delete message upload', 14, 'delete_messageupload'),
(56, 'Can view message upload', 14, 'view_messageupload'),
(57, 'Can add order', 15, 'add_order'),
(58, 'Can change order', 15, 'change_order'),
(59, 'Can delete order', 15, 'delete_order'),
(60, 'Can view order', 15, 'view_order');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$o7uR5olN6Iw8PDA9IOtKo1$l1cz2gTubxxYBMyBYtopFAkhtT7zohDRBnarwEJJXXE=', '2021-09-10 08:16:58.510084', 0, 'reetica123@gmail.com', '', '', '', 0, 1, '2021-08-29 11:46:59.074272'),
(3, 'pbkdf2_sha256$260000$WIWy1hdSePTyjTkku3yNiP$WAZar5xnF+8RF/35oN4S+pnVSHq1Qz+RahNouw4+lMk=', '2021-09-29 16:54:31.832882', 0, 'ritika', '', '', 'reeticadongol@gmail.com', 1, 1, '2021-09-09 11:16:31.299537'),
(5, 'pbkdf2_sha256$260000$FGEusly2MXijX9c01gvYbr$Q68WZh4fSceKd0dTWVDFxTJRb6fk4Mu6CySoBHCH3Io=', '2021-09-30 08:46:17.768391', 0, 'Gemini', '', '', 'gem99ini00@gmail.com', 0, 1, '2021-09-16 04:23:27.718084');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cakes_cake`
--

CREATE TABLE `cakes_cake` (
  `id` bigint(20) NOT NULL,
  `cake_name` varchar(200) NOT NULL,
  `cake_price` double NOT NULL,
  `cake_image` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cakes_cake`
--

INSERT INTO `cakes_cake` (`id`, `cake_name`, `cake_price`, `cake_image`, `created_date`, `category_id`) VALUES
(5, 'Juicy Cake', 54, 'static/uploads/cake-2_sX3ejrj.jpg', '2021-09-05 12:06:15.840005', 11),
(6, 'strawberry', 53, 'static/uploads/cake-1_vTsffzJ.jpg', '2021-09-05 12:06:27.492060', 13),
(10, 'White Forest Cake', 55, 'static/uploads/w-4.jpg', '2021-09-06 03:41:46.939233', 12),
(11, 'Strawberry Cake', 66, 'static/uploads/w-5.jpg', '2021-09-06 03:42:08.382615', 12),
(14, 'Rose Wedding Cake', 67, 'static/uploads/w-2.jpg', '2021-09-06 03:44:53.382793', 12),
(15, 'Strawberry Cake', 56, 'static/uploads/w-6.jpg', '2021-09-06 03:46:40.904293', 12),
(16, 'Strawberry Cup Cake', 55, 'static/uploads/cake-3.jpg', '2021-09-16 12:13:01.444318', 13),
(18, 'White Forest Cake', 88, 'static/uploads/cake-7.jpg', '2021-09-16 12:15:52.945682', 11),
(19, 'Blueberry Cake', 49, 'static/uploads/cake-6.jpg', '2021-09-16 12:18:02.333379', 11),
(20, 'Strawberry Cake', 49, 'static/uploads/cake-11.jpg', '2021-09-29 16:21:49.020739', 13);

-- --------------------------------------------------------

--
-- Table structure for table `cakes_cart`
--

CREATE TABLE `cakes_cart` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `cake_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cakes_cart`
--

INSERT INTO `cakes_cart` (`id`, `created_date`, `cake_id`, `user_id`) VALUES
(10, '2021-09-09 08:17:44.950620', 11, 1),
(11, '2021-09-09 08:28:14.163498', 14, 1),
(30, '2021-09-29 16:15:13.898961', 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `cakes_category`
--

CREATE TABLE `cakes_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(250) DEFAULT NULL,
  `category_description` longtext NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `category_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cakes_category`
--

INSERT INTO `cakes_category` (`id`, `category_name`, `category_description`, `created_date`, `category_image`) VALUES
(11, 'Birthday cakes', 'Whatever birthday cake you’re looking to bake, you’re sure to find it here. There’s something for everyone from the kids to the adults; for the from-scratch baker to the time poor party makers; for the chocolate fiends to the ice-cream lovers.', '2021-09-02 07:05:15.312754', 'static/uploads/b-1.jpg'),
(12, 'Wedding cakes', 'We love wedding cakes! We have everything from the latest trends , to the flavors everyone who is loving, expert tips and thousands of beautiful wedding cakes to inspire you. We cannot find more beautiful cakes.', '2021-09-03 09:54:14.794310', 'static/uploads/w-1.h'),
(13, 'Cup cakes', 'A cupcake is a small cake designed to serve one person, which may be baked in a small thin paper or aluminum cup. As with larger cakes, frosting and other cake decorations such as fruit and candy may be applied', '2021-09-03 10:21:24.883736', 'static/uploads/c-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cakes_messageupload`
--

CREATE TABLE `cakes_messageupload` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cakes_messageupload`
--

INSERT INTO `cakes_messageupload` (`id`, `name`, `email`, `phone`, `message`) VALUES
(7, 'bella', 'bella@gmail.com', '2334440000', 'asdbesfj'),
(10, 'Gemini', 'gem99ini00@gmail.com', '2334440000', 'this is message'),
(11, 'Gemini', 'gem99ini00@gmail.com', '9823057375', 'this is message');

-- --------------------------------------------------------

--
-- Table structure for table `cakes_order`
--

CREATE TABLE `cakes_order` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `cake_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_method` varchar(200) DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cakes_order`
--

INSERT INTO `cakes_order` (`id`, `quantity`, `total_price`, `status`, `contact_no`, `address`, `created_date`, `cake_id`, `user_id`, `payment_method`, `payment_status`) VALUES
(3, 2, 132, 'Delivered', '9843624525', 'teky', '2021-09-16 12:36:25.685920', 11, 5, NULL, 0),
(4, 5, 440, 'Delivered', '9843624525', 'pradop', '2021-09-23 03:37:20.859170', 18, 5, NULL, 1),
(5, 22, 1210, 'Pending', '9843624525', 'Banseshow', '2021-09-23 15:39:43.482585', 16, 5, NULL, 1),
(8, 2, 134, 'Delivered', '9843624525', 'teku', '2021-09-29 16:16:01.266396', 14, 5, NULL, 1),
(9, 2, 134, 'Pending', '9843624525', 'teku', '2021-09-29 16:33:08.815830', 14, 5, NULL, 1),
(10, 3, 159, 'Pending', '9843624525', 'teku', '2021-09-29 16:43:00.970803', 6, 5, NULL, 1),
(11, 5, 335, 'Delivered', '9843624525', 'teku', '2021-09-29 16:50:55.840651', 14, 5, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cakes_seller`
--

CREATE TABLE `cakes_seller` (
  `id` bigint(20) NOT NULL,
  `seller_name` varchar(200) NOT NULL,
  `seller_price` double NOT NULL,
  `seller_image` varchar(100) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cakes_seller`
--

INSERT INTO `cakes_seller` (`id`, `seller_name`, `seller_price`, `seller_image`, `created_date`) VALUES
(2, 'Sweet Cupake', 45, 'static/uploads/cake-7_3sMjWXa.jpg', '2021-09-08 04:30:38.320894'),
(3, 'Spice Cupcake', 45, 'static/uploads/cake-5_wzBqb6V.jpg', '2021-09-08 04:30:50.755473'),
(4, 'Brownie Cupcake', 65, 'static/uploads/cake-6_JLRBqet.jpg', '2021-09-08 04:31:02.030603'),
(5, 'Cupcake Glory', 66, 'static/uploads/cake-4_BTTV9Ay.jpg', '2021-09-08 04:31:18.627993'),
(6, 'Cupcake Queen', 67, 'static/uploads/cake-3_3vmBgJr.jpg', '2021-09-08 04:31:40.999440'),
(7, 'Raspberry Cakes', 54, 'static/uploads/cake-2_J5MOhRt.jpg', '2021-09-08 04:31:59.577604'),
(8, 'Sweet Cupake', 44, 'static/uploads/cake-1_fAPSdhX.jpg', '2021-09-08 04:32:14.375882');

-- --------------------------------------------------------

--
-- Table structure for table `cakes_wishlist`
--

CREATE TABLE `cakes_wishlist` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `cake_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cakes_wishlist`
--

INSERT INTO `cakes_wishlist` (`id`, `created_date`, `cake_id`, `user_id`) VALUES
(7, '2021-09-16 04:24:27.200078', 6, 5),
(10, '2021-09-29 16:15:00.889308', 11, 5),
(13, '2021-09-29 16:49:50.473913', 14, 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(13, 'accounts', 'profile'),
(11, 'accounts', 'seller'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'cakes', 'cake'),
(9, 'cakes', 'cart'),
(7, 'cakes', 'category'),
(14, 'cakes', 'messageupload'),
(15, 'cakes', 'order'),
(10, 'cakes', 'seller'),
(12, 'cakes', 'wishlist'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-08-25 12:12:50.639496'),
(2, 'auth', '0001_initial', '2021-08-25 12:12:50.986994'),
(3, 'admin', '0001_initial', '2021-08-25 12:12:51.071612'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-08-25 12:12:51.071612'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-25 12:12:51.071612'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-08-25 12:12:51.118507'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-08-25 12:12:51.156229'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-08-25 12:12:51.171850'),
(9, 'auth', '0004_alter_user_username_opts', '2021-08-25 12:12:51.171850'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-08-25 12:12:51.203093'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-08-25 12:12:51.203093'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-08-25 12:12:51.218714'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-08-25 12:12:51.218714'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-08-25 12:12:51.240842'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-08-25 12:12:51.240842'),
(16, 'auth', '0011_update_proxy_permissions', '2021-08-25 12:12:51.256467'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-08-25 12:12:51.272087'),
(18, 'sessions', '0001_initial', '2021-08-25 12:12:51.287709'),
(19, 'cakes', '0001_initial', '2021-08-30 07:36:13.105142'),
(20, 'cakes', '0002_auto_20210830_1337', '2021-08-30 07:52:19.004390'),
(21, 'cakes', '0003_category_category_image', '2021-08-30 08:04:13.825849'),
(22, 'cakes', '0004_remove_category_category_image', '2021-08-31 09:30:16.664821'),
(23, 'cakes', '0005_category_category_image', '2021-08-31 09:34:52.061023'),
(24, 'cakes', '0006_remove_category_category_image', '2021-08-31 09:36:28.151154'),
(25, 'cakes', '0007_category_category_image', '2021-09-02 06:58:39.895259'),
(26, 'cakes', '0008_cart', '2021-09-06 06:41:15.483092'),
(27, 'cakes', '0009_seller', '2021-09-07 11:42:04.799825'),
(28, 'cakes', '0010_auto_20210907_1743', '2021-09-07 11:59:04.996699'),
(29, 'cakes', '0011_delete_seller', '2021-09-08 03:33:15.057615'),
(30, 'accounts', '0001_initial', '2021-09-08 03:35:47.789013'),
(31, 'accounts', '0002_delete_seller', '2021-09-08 03:48:46.566315'),
(32, 'cakes', '0012_seller', '2021-09-08 03:49:19.785145'),
(33, 'accounts', '0003_seller', '2021-09-08 04:01:58.393124'),
(34, 'cakes', '0013_delete_seller', '2021-09-08 04:01:58.401172'),
(35, 'accounts', '0004_delete_seller', '2021-09-08 04:26:38.734706'),
(36, 'cakes', '0014_seller', '2021-09-08 04:26:38.750328'),
(37, 'cakes', '0015_cart_seller', '2021-09-09 07:59:45.271584'),
(38, 'cakes', '0016_alter_cart_user', '2021-09-09 08:02:33.053809'),
(39, 'cakes', '0017_alter_cart_cake', '2021-09-09 08:02:33.131916'),
(40, 'cakes', '0018_remove_cart_seller', '2021-09-09 08:31:00.818537'),
(41, 'cakes', '0019_wishlist', '2021-09-10 08:30:31.306247'),
(42, 'cakes', '0020_delete_wishlist', '2021-09-10 08:33:05.584933'),
(43, 'accounts', '0005_profile', '2021-09-10 08:54:17.328038'),
(44, 'cakes', '0021_messageupload', '2021-09-11 10:14:01.479768'),
(45, 'cakes', '0022_wishlist', '2021-09-12 08:08:15.223506'),
(46, 'cakes', '0023_order', '2021-09-12 12:31:34.840059'),
(47, 'accounts', '0006_profile_forget_password_token', '2021-09-16 05:31:29.347552'),
(48, 'cakes', '0024_alter_order_contact_no', '2021-09-16 05:31:29.347552'),
(49, 'accounts', '0007_remove_profile_forget_password_token', '2021-09-16 12:05:03.857797'),
(50, 'cakes', '0025_auto_20210923_0915', '2021-09-23 03:31:22.515713');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('12zfr0w5dgdputyaz47wofq2h0pyyvej', '.eJxVjMsOgjAUBf-la9O0tIWLS_d-A7mvCmpoQmFl_HclYaHbMzPnZQbc1nHYqi7DJOZsvDn9boT80HkHcsf5ViyXeV0msrtiD1rttYg-L4f7dzBiHb81cYYE2HReKbo-NV2bPEHMLAGc06AQkB04BYAc20gdZZEojN6nPpr3B95RN9o:1mKzda:qdxLvSOR73S41bROswWX_efTsKYCQe0_4ZlFzie-sUk', '2021-09-14 09:00:58.072694'),
('41ae134c8unnmpm7115au0jr7s1cjkjm', '.eJxVjEsOAiEQBe_C2hCQ5tMu3XsG0kArowaSYWZlvLtOMgvdvqp6LxFpXWpcB89xKuIkQBx-t0T5wW0D5U7t1mXubZmnJDdF7nTISy_8PO_u30GlUb-1Z_ZgDQaF5hgYCPCKPgChIwvaBMtWK3DKIGdGn0kxGqdDtuBMSOL9AbDANoA:1mPMzU:8AHbWgWuepJMSLtKzwPysVcL5a_D1A2D7JtxSqsEJ4Y', '2021-09-26 10:45:40.529146'),
('6oa5cr7jcmzrq7sbpyxczjzusxod278l', '.eJxVjMsOgjAUBf-la9O0tIWLS_d-A7mvCmpoQmFl_HclYaHbMzPnZQbc1nHYqi7DJOZsvDn9boT80HkHcsf5ViyXeV0msrtiD1rttYg-L4f7dzBiHb81cYYE2HReKbo-NV2bPEHMLAGc06AQkB04BYAc20gdZZEojN6nPpr3B95RN9o:1mNpwh:SIAE939VzUxK6tgVaMMSWEETs5lXQmXtw-B88JMRydI', '2021-09-22 05:16:27.663117'),
('765hp7n8ksupdpdezwfawpots0yyuvjz', '.eJxVjEsOAiEQBe_C2hCQ5tMu3XsG0kArowaSYWZlvLtOMgvdvqp6LxFpXWpcB89xKuIkQBx-t0T5wW0D5U7t1mXubZmnJDdF7nTISy_8PO_u30GlUb-1Z_ZgDQaF5hgYCPCKPgChIwvaBMtWK3DKIGdGn0kxGqdDtuBMSOL9AbDANoA:1mPIPc:4yv8Y38MJvmAhtBAEdnX703Ml6L-45oNTVtCDWQcNq8', '2021-09-26 05:52:20.827914'),
('ctmdxyen2r6wvlkc6bq1puma9pbmht4e', '.eJxVjMsOwiAQRf-FtSHAUB4u3fsNZIaHVA1NSrsy_ruSdKHbc869LxZw32rYe17DnNiZTez0ywjjI7ch0h3bbeFxads6Ex8JP2zn1yXl5-Vo_w4q9jrWUmNR2kkpKVrrBPhok1cFvkyhFkjCodSWhDYGJAgHgBSnSL6Y4tj7A78NNwE:1mQpbs:I6bKTMDaURXS04Lm8brKoN8QkELby6fORh43TI6vJp0', '2021-09-30 11:31:20.730452'),
('g0xlo9au6wo51ys77nyz3fl3qce9n75g', '.eJxVjEsOAiEQBe_C2hCQ5tMu3XsG0kArowaSYWZlvLtOMgvdvqp6LxFpXWpcB89xKuIkQBx-t0T5wW0D5U7t1mXubZmnJDdF7nTISy_8PO_u30GlUb-1Z_ZgDQaF5hgYCPCKPgChIwvaBMtWK3DKIGdGn0kxGqdDtuBMSOL9AbDANoA:1mOcry:78FkgsOTEm1z6oDGe5nwvm8pl349NP7IyBPxXSOVbHY', '2021-09-24 09:30:50.958797'),
('nv5qb605a35hec02w89tqgl0268jbvro', '.eJxVjEsOAiEQBe_C2hCQ5tMu3XsG0kArowaSYWZlvLtOMgvdvqp6LxFpXWpcB89xKuIkQBx-t0T5wW0D5U7t1mXubZmnJDdF7nTISy_8PO_u30GlUb-1Z_ZgDQaF5hgYCPCKPgChIwvaBMtWK3DKIGdGn0kxGqdDtuBMSOL9AbDANoA:1mPMsX:RmhjHe_osfTo14FaG0Cq_7HT_btLHHymYR1U_lLNfAk', '2021-09-26 10:38:29.718470'),
('twk13s5dn3zen07f8b19qcjqb1xg1lmp', '.eJxVjEEOwiAQRe_C2hCgUMCle89AZpipVA0kpV0Z765NutDtf-_9l0iwrSVtnZc0kzgLJ06_G0J-cN0B3aHemsytrsuMclfkQbu8NuLn5XD_Dgr08q3H6GlgsIow4ATahMyDzd6hAQQeswLDKsZJGySygZVTAMFH6wNn1OL9AQh6OLk:1mVrhp:dwJg16VeWbtjSocRTjDJFxn006g3XBKGW609osBE5xk', '2021-10-14 08:46:17.776359'),
('weptr12633py7xim599p0xkr40mjle5f', '.eJxVjEsOAiEQBe_C2hCQ5tMu3XsG0kArowaSYWZlvLtOMgvdvqp6LxFpXWpcB89xKuIkQBx-t0T5wW0D5U7t1mXubZmnJDdF7nTISy_8PO_u30GlUb-1Z_ZgDQaF5hgYCPCKPgChIwvaBMtWK3DKIGdGn0kxGqdDtuBMSOL9AbDANoA:1mPK3q:oF3c8bTQgO3lMQn4XX89BVMY4gM-j11pyTsqh9Nz92U', '2021-09-26 07:37:58.820774'),
('wi3fw5wxvelyuyowe6b56iztw6xdvj5g', '.eJxVjMsOgjAUBf-la9O0tIWLS_d-A7mvCmpoQmFl_HclYaHbMzPnZQbc1nHYqi7DJOZsvDn9boT80HkHcsf5ViyXeV0msrtiD1rttYg-L4f7dzBiHb81cYYE2HReKbo-NV2bPEHMLAGc06AQkB04BYAc20gdZZEojN6nPpr3B95RN9o:1mKK3t:GmyTNkd6KwZ5nwE4BWEV-6N2Mtd4j8Fa0mgybXo9Wk0', '2021-09-12 12:37:21.035647'),
('xohmm55fyjiv1ky9744ppw40mm6tvx9w', '.eJxVjMsOgjAUBf-la9O0tIWLS_d-A7mvCmpoQmFl_HclYaHbMzPnZQbc1nHYqi7DJOZsvDn9boT80HkHcsf5ViyXeV0msrtiD1rttYg-L4f7dzBiHb81cYYE2HReKbo-NV2bPEHMLAGc06AQkB04BYAc20gdZZEojN6nPpr3B95RN9o:1mNpq3:wFu52yzcnjNk1xGUow3RlsYM-9Q9NgxFVtgbsouXBls', '2021-09-22 05:09:35.422931');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cakes_cake`
--
ALTER TABLE `cakes_cake`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cakes_cake_category_id_aa0bdc38_fk_cakes_category_id` (`category_id`);

--
-- Indexes for table `cakes_cart`
--
ALTER TABLE `cakes_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cakes_cart_user_id_4e535de1_fk_auth_user_id` (`user_id`),
  ADD KEY `cakes_cart_cake_id_3f3a78c5_fk_cakes_cake_id` (`cake_id`);

--
-- Indexes for table `cakes_category`
--
ALTER TABLE `cakes_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cakes_messageupload`
--
ALTER TABLE `cakes_messageupload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cakes_order`
--
ALTER TABLE `cakes_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cakes_order_cake_id_72326207_fk_cakes_cake_id` (`cake_id`),
  ADD KEY `cakes_order_user_id_8480d9d8_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `cakes_seller`
--
ALTER TABLE `cakes_seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cakes_wishlist`
--
ALTER TABLE `cakes_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cakes_wishlist_cake_id_871bfc32_fk_cakes_cake_id` (`cake_id`),
  ADD KEY `cakes_wishlist_user_id_ab166809_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cakes_cake`
--
ALTER TABLE `cakes_cake`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cakes_cart`
--
ALTER TABLE `cakes_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cakes_category`
--
ALTER TABLE `cakes_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cakes_messageupload`
--
ALTER TABLE `cakes_messageupload`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cakes_order`
--
ALTER TABLE `cakes_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cakes_seller`
--
ALTER TABLE `cakes_seller`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cakes_wishlist`
--
ALTER TABLE `cakes_wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cakes_cake`
--
ALTER TABLE `cakes_cake`
  ADD CONSTRAINT `cakes_cake_category_id_aa0bdc38_fk_cakes_category_id` FOREIGN KEY (`category_id`) REFERENCES `cakes_category` (`id`);

--
-- Constraints for table `cakes_cart`
--
ALTER TABLE `cakes_cart`
  ADD CONSTRAINT `cakes_cart_cake_id_3f3a78c5_fk_cakes_cake_id` FOREIGN KEY (`cake_id`) REFERENCES `cakes_cake` (`id`),
  ADD CONSTRAINT `cakes_cart_user_id_4e535de1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cakes_order`
--
ALTER TABLE `cakes_order`
  ADD CONSTRAINT `cakes_order_cake_id_72326207_fk_cakes_cake_id` FOREIGN KEY (`cake_id`) REFERENCES `cakes_cake` (`id`),
  ADD CONSTRAINT `cakes_order_user_id_8480d9d8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cakes_wishlist`
--
ALTER TABLE `cakes_wishlist`
  ADD CONSTRAINT `cakes_wishlist_cake_id_871bfc32_fk_cakes_cake_id` FOREIGN KEY (`cake_id`) REFERENCES `cakes_cake` (`id`),
  ADD CONSTRAINT `cakes_wishlist_user_id_ab166809_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
