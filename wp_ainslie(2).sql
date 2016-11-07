-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2016 at 02:11 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_ainslie`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-11-02 10:07:17', '2016-11-02 10:07:17', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', '', 'successmessage', 1, 1, '2016-08-24 11:09:20', NULL),
(2, '', '', 'email', 1, 1, '2016-08-24 11:17:39', NULL),
(3, '', '', 'save', 1, 1, '2016-08-24 11:09:20', NULL),
(4, '', '', 'email', 1, 1, '2016-08-24 11:09:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'label', 'Success Message'),
(2, 1, 'message', 'Thank you {field:name} for filling out my form!'),
(3, 1, 'objectType', 'Action'),
(4, 1, 'objectDomain', 'actions'),
(5, 1, 'editActive', ''),
(6, 1, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(7, 1, 'payment_gateways', ''),
(8, 1, 'payment_total', ''),
(9, 1, 'tag', ''),
(10, 1, 'to', ''),
(11, 1, 'email_subject', ''),
(12, 1, 'email_message', ''),
(13, 1, 'from_name', ''),
(14, 1, 'from_address', ''),
(15, 1, 'reply_to', ''),
(16, 1, 'email_format', 'html'),
(17, 1, 'cc', ''),
(18, 1, 'bcc', ''),
(19, 1, 'attach_csv', ''),
(20, 1, 'redirect_url', ''),
(21, 1, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(22, 1, 'email_message_plain', ''),
(23, 2, 'objectType', 'Action'),
(24, 2, 'objectDomain', 'actions'),
(25, 2, 'editActive', ''),
(26, 2, 'label', 'Email Notification'),
(27, 2, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(28, 2, 'payment_gateways', ''),
(29, 2, 'payment_total', ''),
(30, 2, 'tag', ''),
(31, 2, 'to', '{system:admin_email}'),
(32, 2, 'email_subject', 'New message from {field:name}'),
(33, 2, 'email_message', '<p>{field:message}</p><p>- {field:name} ( {field:email} )</p>'),
(34, 2, 'from_name', ''),
(35, 2, 'from_address', ''),
(36, 2, 'reply_to', '{field:email}'),
(37, 2, 'email_format', 'html'),
(38, 2, 'cc', ''),
(39, 2, 'bcc', ''),
(40, 2, 'attach_csv', '0'),
(41, 2, 'email_message_plain', ''),
(42, 3, 'label', 'Save to Database'),
(43, 3, 'objectType', 'Action'),
(44, 3, 'objectDomain', 'actions'),
(45, 3, 'editActive', ''),
(46, 3, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(47, 3, 'payment_gateways', ''),
(48, 3, 'payment_total', ''),
(49, 3, 'tag', ''),
(50, 3, 'to', ''),
(51, 3, 'email_subject', ''),
(52, 3, 'email_message', ''),
(53, 3, 'from_name', ''),
(54, 3, 'from_address', ''),
(55, 3, 'reply_to', ''),
(56, 3, 'email_format', 'html'),
(57, 3, 'cc', ''),
(58, 3, 'bcc', ''),
(59, 3, 'attach_csv', ''),
(60, 3, 'redirect_url', ''),
(61, 3, 'email_message_plain', ''),
(62, 4, 'label', 'Email Confirmation'),
(63, 4, 'to', '{field:email}'),
(64, 4, 'subject', 'This is an email action.'),
(65, 4, 'message', 'Hello, Ninja Forms!'),
(66, 4, 'objectType', 'Action'),
(67, 4, 'objectDomain', 'actions'),
(68, 4, 'editActive', ''),
(69, 4, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(70, 4, 'payment_gateways', ''),
(71, 4, 'payment_total', ''),
(72, 4, 'tag', ''),
(73, 4, 'email_subject', 'Submission Confirmation '),
(74, 4, 'email_message', '<p>{field:all_fields}<br></p>'),
(75, 4, 'from_name', ''),
(76, 4, 'from_address', ''),
(77, 4, 'reply_to', ''),
(78, 4, 'email_format', 'html'),
(79, 4, 'cc', ''),
(80, 4, 'bcc', ''),
(81, 4, 'attach_csv', ''),
(82, 4, 'email_message_plain', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Name', 'name', 'textbox', 1, '2016-08-24 11:09:20', NULL),
(2, 'Email', 'email', 'email', 1, '2016-08-24 11:09:20', NULL),
(3, 'Message', 'message', 'textarea', 1, '2016-08-24 11:09:20', NULL),
(4, 'Submit', 'submit', 'submit', 1, '2016-08-24 11:09:20', NULL),
(5, 'Phone', 'phone', 'phone', 1, '2016-11-04 10:14:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'label_pos', 'hidden'),
(2, 1, 'required', '1'),
(3, 1, 'order', '1'),
(4, 1, 'placeholder', 'Name'),
(5, 1, 'default', ''),
(6, 1, 'wrapper_class', ''),
(7, 1, 'element_class', ''),
(8, 1, 'objectType', 'Field'),
(9, 1, 'objectDomain', 'fields'),
(10, 1, 'editActive', ''),
(11, 1, 'container_class', ''),
(12, 1, 'input_limit', ''),
(13, 1, 'input_limit_type', 'characters'),
(14, 1, 'input_limit_msg', 'Character(s) left'),
(15, 1, 'manual_key', ''),
(16, 1, 'disable_input', ''),
(17, 1, 'admin_label', ''),
(18, 1, 'help_text', ''),
(19, 1, 'desc_text', ''),
(20, 1, 'disable_browser_autocomplete', ''),
(21, 1, 'mask', ''),
(22, 1, 'custom_mask', ''),
(23, 1, 'wrap_styles_background-color', ''),
(24, 1, 'wrap_styles_border', ''),
(25, 1, 'wrap_styles_border-style', ''),
(26, 1, 'wrap_styles_border-color', ''),
(27, 1, 'wrap_styles_color', ''),
(28, 1, 'wrap_styles_height', ''),
(29, 1, 'wrap_styles_width', ''),
(30, 1, 'wrap_styles_font-size', ''),
(31, 1, 'wrap_styles_margin', ''),
(32, 1, 'wrap_styles_padding', ''),
(33, 1, 'wrap_styles_display', ''),
(34, 1, 'wrap_styles_float', ''),
(35, 1, 'wrap_styles_show_advanced_css', '0'),
(36, 1, 'wrap_styles_advanced', ''),
(37, 1, 'label_styles_background-color', ''),
(38, 1, 'label_styles_border', ''),
(39, 1, 'label_styles_border-style', ''),
(40, 1, 'label_styles_border-color', ''),
(41, 1, 'label_styles_color', ''),
(42, 1, 'label_styles_height', ''),
(43, 1, 'label_styles_width', ''),
(44, 1, 'label_styles_font-size', ''),
(45, 1, 'label_styles_margin', ''),
(46, 1, 'label_styles_padding', ''),
(47, 1, 'label_styles_display', ''),
(48, 1, 'label_styles_float', ''),
(49, 1, 'label_styles_show_advanced_css', '0'),
(50, 1, 'label_styles_advanced', ''),
(51, 1, 'element_styles_background-color', ''),
(52, 1, 'element_styles_border', ''),
(53, 1, 'element_styles_border-style', ''),
(54, 1, 'element_styles_border-color', ''),
(55, 1, 'element_styles_color', ''),
(56, 1, 'element_styles_height', ''),
(57, 1, 'element_styles_width', ''),
(58, 1, 'element_styles_font-size', ''),
(59, 1, 'element_styles_margin', ''),
(60, 1, 'element_styles_padding', ''),
(61, 1, 'element_styles_display', ''),
(62, 1, 'element_styles_float', ''),
(63, 1, 'element_styles_show_advanced_css', '0'),
(64, 1, 'element_styles_advanced', ''),
(65, 1, 'cellcid', 'c3277'),
(66, 2, 'label_pos', 'hidden'),
(67, 2, 'required', '1'),
(68, 2, 'order', '2'),
(69, 2, 'placeholder', 'Email'),
(70, 2, 'default', ''),
(71, 2, 'wrapper_class', ''),
(72, 2, 'element_class', ''),
(73, 2, 'objectType', 'Field'),
(74, 2, 'objectDomain', 'fields'),
(75, 2, 'editActive', ''),
(76, 2, 'container_class', ''),
(77, 2, 'admin_label', ''),
(78, 2, 'help_text', '<p><br></p>'),
(79, 2, 'desc_text', ''),
(80, 2, 'wrap_styles_background-color', ''),
(81, 2, 'wrap_styles_border', ''),
(82, 2, 'wrap_styles_border-style', ''),
(83, 2, 'wrap_styles_border-color', ''),
(84, 2, 'wrap_styles_color', ''),
(85, 2, 'wrap_styles_height', ''),
(86, 2, 'wrap_styles_width', ''),
(87, 2, 'wrap_styles_font-size', ''),
(88, 2, 'wrap_styles_margin', ''),
(89, 2, 'wrap_styles_padding', ''),
(90, 2, 'wrap_styles_display', ''),
(91, 2, 'wrap_styles_float', ''),
(92, 2, 'wrap_styles_show_advanced_css', '0'),
(93, 2, 'wrap_styles_advanced', ''),
(94, 2, 'label_styles_background-color', ''),
(95, 2, 'label_styles_border', ''),
(96, 2, 'label_styles_border-style', ''),
(97, 2, 'label_styles_border-color', ''),
(98, 2, 'label_styles_color', ''),
(99, 2, 'label_styles_height', ''),
(100, 2, 'label_styles_width', ''),
(101, 2, 'label_styles_font-size', ''),
(102, 2, 'label_styles_margin', ''),
(103, 2, 'label_styles_padding', ''),
(104, 2, 'label_styles_display', ''),
(105, 2, 'label_styles_float', ''),
(106, 2, 'label_styles_show_advanced_css', '0'),
(107, 2, 'label_styles_advanced', ''),
(108, 2, 'element_styles_background-color', ''),
(109, 2, 'element_styles_border', ''),
(110, 2, 'element_styles_border-style', ''),
(111, 2, 'element_styles_border-color', ''),
(112, 2, 'element_styles_color', ''),
(113, 2, 'element_styles_height', ''),
(114, 2, 'element_styles_width', ''),
(115, 2, 'element_styles_font-size', ''),
(116, 2, 'element_styles_margin', ''),
(117, 2, 'element_styles_padding', ''),
(118, 2, 'element_styles_display', ''),
(119, 2, 'element_styles_float', ''),
(120, 2, 'element_styles_show_advanced_css', '0'),
(121, 2, 'element_styles_advanced', ''),
(122, 2, 'cellcid', 'c3281'),
(123, 3, 'label_pos', 'hidden'),
(124, 3, 'required', '1'),
(125, 3, 'order', '4'),
(126, 3, 'placeholder', 'Message'),
(127, 3, 'default', ''),
(128, 3, 'wrapper_class', ''),
(129, 3, 'element_class', ''),
(130, 3, 'objectType', 'Field'),
(131, 3, 'objectDomain', 'fields'),
(132, 3, 'editActive', ''),
(133, 3, 'container_class', ''),
(134, 3, 'input_limit', ''),
(135, 3, 'input_limit_type', 'characters'),
(136, 3, 'input_limit_msg', 'Character(s) left'),
(137, 3, 'manual_key', ''),
(138, 3, 'disable_input', ''),
(139, 3, 'admin_label', ''),
(140, 3, 'help_text', ''),
(141, 3, 'desc_text', ''),
(142, 3, 'disable_browser_autocomplete', ''),
(143, 3, 'textarea_rte', ''),
(144, 3, 'disable_rte_mobile', ''),
(145, 3, 'textarea_media', ''),
(146, 3, 'wrap_styles_background-color', ''),
(147, 3, 'wrap_styles_border', ''),
(148, 3, 'wrap_styles_border-style', ''),
(149, 3, 'wrap_styles_border-color', ''),
(150, 3, 'wrap_styles_color', ''),
(151, 3, 'wrap_styles_height', ''),
(152, 3, 'wrap_styles_width', ''),
(153, 3, 'wrap_styles_font-size', ''),
(154, 3, 'wrap_styles_margin', ''),
(155, 3, 'wrap_styles_padding', ''),
(156, 3, 'wrap_styles_display', ''),
(157, 3, 'wrap_styles_float', ''),
(158, 3, 'wrap_styles_show_advanced_css', '0'),
(159, 3, 'wrap_styles_advanced', ''),
(160, 3, 'label_styles_background-color', ''),
(161, 3, 'label_styles_border', ''),
(162, 3, 'label_styles_border-style', ''),
(163, 3, 'label_styles_border-color', ''),
(164, 3, 'label_styles_color', ''),
(165, 3, 'label_styles_height', ''),
(166, 3, 'label_styles_width', ''),
(167, 3, 'label_styles_font-size', ''),
(168, 3, 'label_styles_margin', ''),
(169, 3, 'label_styles_padding', ''),
(170, 3, 'label_styles_display', ''),
(171, 3, 'label_styles_float', ''),
(172, 3, 'label_styles_show_advanced_css', '0'),
(173, 3, 'label_styles_advanced', ''),
(174, 3, 'element_styles_background-color', ''),
(175, 3, 'element_styles_border', ''),
(176, 3, 'element_styles_border-style', ''),
(177, 3, 'element_styles_border-color', ''),
(178, 3, 'element_styles_color', ''),
(179, 3, 'element_styles_height', ''),
(180, 3, 'element_styles_width', ''),
(181, 3, 'element_styles_font-size', ''),
(182, 3, 'element_styles_margin', ''),
(183, 3, 'element_styles_padding', ''),
(184, 3, 'element_styles_display', ''),
(185, 3, 'element_styles_float', ''),
(186, 3, 'element_styles_show_advanced_css', '0'),
(187, 3, 'element_styles_advanced', ''),
(188, 3, 'cellcid', 'c3284'),
(189, 4, 'processing_label', 'Processing'),
(190, 4, 'order', '5'),
(191, 4, 'objectType', 'Field'),
(192, 4, 'objectDomain', 'fields'),
(193, 4, 'editActive', ''),
(194, 4, 'container_class', ''),
(195, 4, 'element_class', ''),
(196, 4, 'wrap_styles_background-color', ''),
(197, 4, 'wrap_styles_border', ''),
(198, 4, 'wrap_styles_border-style', ''),
(199, 4, 'wrap_styles_border-color', ''),
(200, 4, 'wrap_styles_color', ''),
(201, 4, 'wrap_styles_height', ''),
(202, 4, 'wrap_styles_width', ''),
(203, 4, 'wrap_styles_font-size', ''),
(204, 4, 'wrap_styles_margin', ''),
(205, 4, 'wrap_styles_padding', ''),
(206, 4, 'wrap_styles_display', ''),
(207, 4, 'wrap_styles_float', ''),
(208, 4, 'wrap_styles_show_advanced_css', '0'),
(209, 4, 'wrap_styles_advanced', ''),
(210, 4, 'label_styles_background-color', ''),
(211, 4, 'label_styles_border', ''),
(212, 4, 'label_styles_border-style', ''),
(213, 4, 'label_styles_border-color', ''),
(214, 4, 'label_styles_color', ''),
(215, 4, 'label_styles_height', ''),
(216, 4, 'label_styles_width', ''),
(217, 4, 'label_styles_font-size', ''),
(218, 4, 'label_styles_margin', ''),
(219, 4, 'label_styles_padding', ''),
(220, 4, 'label_styles_display', ''),
(221, 4, 'label_styles_float', ''),
(222, 4, 'label_styles_show_advanced_css', '0'),
(223, 4, 'label_styles_advanced', ''),
(224, 4, 'element_styles_background-color', ''),
(225, 4, 'element_styles_border', ''),
(226, 4, 'element_styles_border-style', ''),
(227, 4, 'element_styles_border-color', ''),
(228, 4, 'element_styles_color', ''),
(229, 4, 'element_styles_height', ''),
(230, 4, 'element_styles_width', ''),
(231, 4, 'element_styles_font-size', ''),
(232, 4, 'element_styles_margin', ''),
(233, 4, 'element_styles_padding', ''),
(234, 4, 'element_styles_display', ''),
(235, 4, 'element_styles_float', ''),
(236, 4, 'element_styles_show_advanced_css', '0'),
(237, 4, 'element_styles_advanced', ''),
(238, 4, 'submit_element_hover_styles_background-color', ''),
(239, 4, 'submit_element_hover_styles_border', ''),
(240, 4, 'submit_element_hover_styles_border-style', ''),
(241, 4, 'submit_element_hover_styles_border-color', ''),
(242, 4, 'submit_element_hover_styles_color', ''),
(243, 4, 'submit_element_hover_styles_height', ''),
(244, 4, 'submit_element_hover_styles_width', ''),
(245, 4, 'submit_element_hover_styles_font-size', ''),
(246, 4, 'submit_element_hover_styles_margin', ''),
(247, 4, 'submit_element_hover_styles_padding', ''),
(248, 4, 'submit_element_hover_styles_display', ''),
(249, 4, 'submit_element_hover_styles_float', ''),
(250, 4, 'submit_element_hover_styles_show_advanced_css', '0'),
(251, 4, 'submit_element_hover_styles_advanced', ''),
(252, 4, 'cellcid', 'c3287'),
(253, 5, 'objectType', 'Field'),
(254, 5, 'objectDomain', 'fields'),
(255, 5, 'editActive', ''),
(256, 5, 'order', '3'),
(257, 5, 'label_pos', 'hidden'),
(258, 5, 'required', ''),
(259, 5, 'placeholder', 'Phone'),
(260, 5, 'default', ''),
(261, 5, 'container_class', ''),
(262, 5, 'element_class', ''),
(263, 5, 'input_limit', ''),
(264, 5, 'input_limit_type', 'characters'),
(265, 5, 'input_limit_msg', 'Character(s) left'),
(266, 5, 'manual_key', ''),
(267, 5, 'disable_input', ''),
(268, 5, 'admin_label', ''),
(269, 5, 'help_text', ''),
(270, 5, 'desc_text', ''),
(271, 5, 'disable_browser_autocomplete', ''),
(272, 5, 'mask', ''),
(273, 5, 'custom_mask', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`) VALUES
(1, 'Contact Me', '', '2016-08-24 11:09:20', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'default_label_pos', 'above'),
(2, 1, '_seq_num', '3'),
(3, 1, 'conditions', 'a:0:{}'),
(4, 1, 'objectType', 'Form Setting'),
(5, 1, 'editActive', '1'),
(6, 1, 'show_title', '0'),
(7, 1, 'clear_complete', '1'),
(8, 1, 'hide_complete', '1'),
(9, 1, 'wrapper_class', 'con-form'),
(10, 1, 'element_class', ''),
(11, 1, 'add_submit', '1'),
(12, 1, 'logged_in', ''),
(13, 1, 'not_logged_in_msg', ''),
(14, 1, 'sub_limit_number', ''),
(15, 1, 'sub_limit_msg', ''),
(16, 1, 'calculations', 'a:0:{}'),
(17, 1, 'formContentData', 'a:5:{i:0;s:4:"name";i:1;s:5:"email";i:2;s:5:"phone";i:3;s:7:"message";i:4;s:6:"submit";}'),
(18, 1, 'container_styles_background-color', ''),
(19, 1, 'container_styles_border', ''),
(20, 1, 'container_styles_border-style', ''),
(21, 1, 'container_styles_border-color', ''),
(22, 1, 'container_styles_color', ''),
(23, 1, 'container_styles_height', ''),
(24, 1, 'container_styles_width', ''),
(25, 1, 'container_styles_font-size', ''),
(26, 1, 'container_styles_margin', ''),
(27, 1, 'container_styles_padding', ''),
(28, 1, 'container_styles_display', ''),
(29, 1, 'container_styles_float', ''),
(30, 1, 'container_styles_show_advanced_css', '0'),
(31, 1, 'container_styles_advanced', ''),
(32, 1, 'title_styles_background-color', ''),
(33, 1, 'title_styles_border', ''),
(34, 1, 'title_styles_border-style', ''),
(35, 1, 'title_styles_border-color', ''),
(36, 1, 'title_styles_color', ''),
(37, 1, 'title_styles_height', ''),
(38, 1, 'title_styles_width', ''),
(39, 1, 'title_styles_font-size', ''),
(40, 1, 'title_styles_margin', ''),
(41, 1, 'title_styles_padding', ''),
(42, 1, 'title_styles_display', ''),
(43, 1, 'title_styles_float', ''),
(44, 1, 'title_styles_show_advanced_css', '0'),
(45, 1, 'title_styles_advanced', ''),
(46, 1, 'row_styles_background-color', ''),
(47, 1, 'row_styles_border', ''),
(48, 1, 'row_styles_border-style', ''),
(49, 1, 'row_styles_border-color', ''),
(50, 1, 'row_styles_color', ''),
(51, 1, 'row_styles_height', ''),
(52, 1, 'row_styles_width', ''),
(53, 1, 'row_styles_font-size', ''),
(54, 1, 'row_styles_margin', ''),
(55, 1, 'row_styles_padding', ''),
(56, 1, 'row_styles_display', ''),
(57, 1, 'row_styles_show_advanced_css', '0'),
(58, 1, 'row_styles_advanced', ''),
(59, 1, 'row-odd_styles_background-color', ''),
(60, 1, 'row-odd_styles_border', ''),
(61, 1, 'row-odd_styles_border-style', ''),
(62, 1, 'row-odd_styles_border-color', ''),
(63, 1, 'row-odd_styles_color', ''),
(64, 1, 'row-odd_styles_height', ''),
(65, 1, 'row-odd_styles_width', ''),
(66, 1, 'row-odd_styles_font-size', ''),
(67, 1, 'row-odd_styles_margin', ''),
(68, 1, 'row-odd_styles_padding', ''),
(69, 1, 'row-odd_styles_display', ''),
(70, 1, 'row-odd_styles_show_advanced_css', '0'),
(71, 1, 'row-odd_styles_advanced', ''),
(72, 1, 'success-msg_styles_background-color', ''),
(73, 1, 'success-msg_styles_border', ''),
(74, 1, 'success-msg_styles_border-style', ''),
(75, 1, 'success-msg_styles_border-color', ''),
(76, 1, 'success-msg_styles_color', ''),
(77, 1, 'success-msg_styles_height', ''),
(78, 1, 'success-msg_styles_width', ''),
(79, 1, 'success-msg_styles_font-size', ''),
(80, 1, 'success-msg_styles_margin', ''),
(81, 1, 'success-msg_styles_padding', ''),
(82, 1, 'success-msg_styles_display', ''),
(83, 1, 'success-msg_styles_show_advanced_css', '0'),
(84, 1, 'success-msg_styles_advanced', ''),
(85, 1, 'error_msg_styles_background-color', ''),
(86, 1, 'error_msg_styles_border', ''),
(87, 1, 'error_msg_styles_border-style', ''),
(88, 1, 'error_msg_styles_border-color', ''),
(89, 1, 'error_msg_styles_color', ''),
(90, 1, 'error_msg_styles_height', ''),
(91, 1, 'error_msg_styles_width', ''),
(92, 1, 'error_msg_styles_font-size', ''),
(93, 1, 'error_msg_styles_margin', ''),
(94, 1, 'error_msg_styles_padding', ''),
(95, 1, 'error_msg_styles_display', ''),
(96, 1, 'error_msg_styles_show_advanced_css', '0'),
(97, 1, 'error_msg_styles_advanced', ''),
(98, 1, 'currency', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ainslie', 'yes'),
(2, 'home', 'http://localhost/ainslie', 'yes'),
(3, 'blogname', 'Ainslie', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'pankaj@builtbyblank.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:187:{s:11:"services/?$";s:28:"index.php?post_type=services";s:41:"services/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=services&feed=$matches[1]";s:36:"services/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=services&feed=$matches[1]";s:28:"services/page/([0-9]{1,})/?$";s:46:"index.php?post_type=services&paged=$matches[1]";s:9:"slider/?$";s:26:"index.php?post_type=slider";s:39:"slider/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=slider&feed=$matches[1]";s:34:"slider/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=slider&feed=$matches[1]";s:26:"slider/page/([0-9]{1,})/?$";s:44:"index.php?post_type=slider&paged=$matches[1]";s:14:"testimonial/?$";s:31:"index.php?post_type=testimonial";s:44:"testimonial/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=testimonial&feed=$matches[1]";s:39:"testimonial/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=testimonial&feed=$matches[1]";s:31:"testimonial/page/([0-9]{1,})/?$";s:49:"index.php?post_type=testimonial&paged=$matches[1]";s:8:"press/?$";s:25:"index.php?post_type=press";s:38:"press/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=press&feed=$matches[1]";s:33:"press/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=press&feed=$matches[1]";s:25:"press/page/([0-9]{1,})/?$";s:43:"index.php?post_type=press&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:16:"services-post/?$";s:28:"index.php?post_type=services";s:46:"services-post/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=services&feed=$matches[1]";s:41:"services-post/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=services&feed=$matches[1]";s:33:"services-post/page/([0-9]{1,})/?$";s:46:"index.php?post_type=services&paged=$matches[1]";s:13:"press-post/?$";s:25:"index.php?post_type=press";s:43:"press-post/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=press&feed=$matches[1]";s:38:"press-post/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=press&feed=$matches[1]";s:30:"press-post/page/([0-9]{1,})/?$";s:43:"index.php?post_type=press&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:41:"services-post/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"services-post/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"services-post/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"services-post/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"services-post/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"services-post/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"services-post/([^/]+)/embed/?$";s:41:"index.php?services=$matches[1]&embed=true";s:34:"services-post/([^/]+)/trackback/?$";s:35:"index.php?services=$matches[1]&tb=1";s:54:"services-post/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?services=$matches[1]&feed=$matches[2]";s:49:"services-post/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?services=$matches[1]&feed=$matches[2]";s:42:"services-post/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?services=$matches[1]&paged=$matches[2]";s:49:"services-post/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?services=$matches[1]&cpage=$matches[2]";s:38:"services-post/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?services=$matches[1]&page=$matches[2]";s:30:"services-post/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"services-post/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"services-post/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"services-post/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"services-post/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"services-post/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"slider/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"slider/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"slider/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"slider/([^/]+)/embed/?$";s:39:"index.php?slider=$matches[1]&embed=true";s:27:"slider/([^/]+)/trackback/?$";s:33:"index.php?slider=$matches[1]&tb=1";s:47:"slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?slider=$matches[1]&feed=$matches[2]";s:42:"slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?slider=$matches[1]&feed=$matches[2]";s:35:"slider/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&paged=$matches[2]";s:42:"slider/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&cpage=$matches[2]";s:31:"slider/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?slider=$matches[1]&page=$matches[2]";s:23:"slider/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"slider/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"slider/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"testimonial/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"testimonial/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"testimonial/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"testimonial/([^/]+)/embed/?$";s:44:"index.php?testimonial=$matches[1]&embed=true";s:32:"testimonial/([^/]+)/trackback/?$";s:38:"index.php?testimonial=$matches[1]&tb=1";s:52:"testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?testimonial=$matches[1]&feed=$matches[2]";s:47:"testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?testimonial=$matches[1]&feed=$matches[2]";s:40:"testimonial/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&paged=$matches[2]";s:47:"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&cpage=$matches[2]";s:36:"testimonial/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?testimonial=$matches[1]&page=$matches[2]";s:28:"testimonial/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"testimonial/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"testimonial/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"press-post/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"press-post/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"press-post/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"press-post/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"press-post/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"press-post/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"press-post/([^/]+)/embed/?$";s:38:"index.php?press=$matches[1]&embed=true";s:31:"press-post/([^/]+)/trackback/?$";s:32:"index.php?press=$matches[1]&tb=1";s:51:"press-post/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?press=$matches[1]&feed=$matches[2]";s:46:"press-post/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?press=$matches[1]&feed=$matches[2]";s:39:"press-post/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?press=$matches[1]&paged=$matches[2]";s:46:"press-post/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?press=$matches[1]&cpage=$matches[2]";s:35:"press-post/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?press=$matches[1]&page=$matches[2]";s:27:"press-post/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"press-post/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"press-post/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"press-post/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"press-post/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"press-post/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:29:"acf-repeater/acf-repeater.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:19:"akismet/akismet.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:33:"duplicate-post/duplicate-post.php";i:5;s:33:"instagram-feed/instagram-feed.php";i:6;s:39:"manual-image-crop/manual-image-crop.php";i:7;s:53:"simple-custom-post-order/simple-custom-post-order.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'drng', 'yes'),
(41, 'stylesheet', 'drng', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:16:"[instagram-feed]";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:33:"instagram-feed/instagram-feed.php";s:22:"sb_instagram_uninstall";s:27:"ninja-forms/ninja-forms.php";s:21:"ninja_forms_uninstall";s:53:"simple-custom-post-order/simple-custom-post-order.php";s:18:"scporder_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:7:"sign-up";a:0:{}s:9:"instagram";a:1:{i:0;s:6:"text-2";}s:12:"contact-form";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:5:{i:1478543808;a:1:{s:29:"wp_session_garbage_collection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1478556438;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1478588600;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1478599657;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.6.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.6.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1478513327;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(112, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1478513338;s:7:"checked";a:4:{s:4:"drng";s:3:"1.2";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(113, '_site_transient_timeout_browser_d7ebeddeee1c10c06a3c4cf170141814', '1478686058', 'no'),
(114, '_site_transient_browser_d7ebeddeee1c10c06a3c4cf170141814', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"49.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(116, 'can_compress_scripts', '1', 'no'),
(125, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1478081266;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(126, 'current_theme', 'Daring Theme', 'yes'),
(127, 'theme_mods_drng', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:11:"footer-menu";i:3;}s:11:"custom_logo";i:48;}', 'yes'),
(128, 'theme_switched', '', 'yes'),
(133, '_transient_timeout_plugin_slugs', '1478587166', 'no'),
(134, '_transient_plugin_slugs', 'a:10:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:29:"acf-repeater/acf-repeater.php";i:2;s:19:"akismet/akismet.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:33:"duplicate-post/duplicate-post.php";i:5;s:9:"hello.php";i:6;s:33:"instagram-feed/instagram-feed.php";i:7;s:39:"manual-image-crop/manual-image-crop.php";i:8;s:53:"simple-custom-post-order/simple-custom-post-order.php";i:9;s:29:"wp-dbmanager/wp-dbmanager.php";}', 'no'),
(137, 'recently_activated', 'a:2:{s:27:"ninja-forms/ninja-forms.php";i:1478256068;s:24:"add-instagram/plugin.php";i:1478158352;}', 'yes'),
(142, 'acf_version', '4.4.11', 'yes'),
(145, 'duplicate_post_copytitle', '1', 'yes'),
(146, 'duplicate_post_copydate', '', 'yes'),
(147, 'duplicate_post_copystatus', '', 'yes'),
(148, 'duplicate_post_copyslug', '1', 'yes'),
(149, 'duplicate_post_copyexcerpt', '1', 'yes'),
(150, 'duplicate_post_copycontent', '1', 'yes'),
(151, 'duplicate_post_copypassword', '', 'yes'),
(152, 'duplicate_post_copyattachments', '', 'yes'),
(153, 'duplicate_post_copychildren', '', 'yes'),
(154, 'duplicate_post_copycomments', '', 'yes'),
(155, 'duplicate_post_taxonomies_blacklist', '', 'yes'),
(156, 'duplicate_post_blacklist', '', 'yes'),
(157, 'duplicate_post_types_enabled', 'a:3:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:8:"services";}', 'yes'),
(158, 'duplicate_post_show_row', '1', 'yes'),
(159, 'duplicate_post_show_adminbar', '1', 'yes'),
(160, 'duplicate_post_show_submitbox', '1', 'yes'),
(168, 'smuzisf_plugin_version', '1.0', 'yes'),
(176, 'mic_make2x', 'true', 'yes'),
(184, 'ninja_forms_version', '3.0.14', 'yes'),
(185, 'ninja_forms_settings', 'a:7:{s:11:"date_format";s:5:"m/d/Y";s:8:"currency";s:3:"USD";s:18:"recaptcha_site_key";s:0:"";s:20:"recaptcha_secret_key";s:0:"";s:14:"recaptcha_lang";s:0:"";s:19:"delete_on_uninstall";i:0;s:21:"disable_admin_notices";i:0;}', 'yes'),
(186, 'widget_ninja_forms_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(188, 'nf_admin_notice', 'a:2:{s:16:"one_week_support";a:2:{s:5:"start";s:9:"11/9/2016";s:3:"int";i:7;}s:14:"allow_tracking";a:2:{s:5:"start";s:9:"11/2/2016";s:3:"int";i:0;}}', 'yes'),
(220, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(396, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(431, '_transient_timeout_instagram_feed_rating_notice_waiting', '1479367990', 'no'),
(432, '_transient_instagram_feed_rating_notice_waiting', 'waiting', 'no'),
(433, 'sbi_rating_notice', 'pending', 'yes'),
(434, 'sb_instagram_settings', 'a:30:{s:15:"sb_instagram_at";s:51:"4024166089.3a81a9f.c89a8ff4592242249e2ee3c2013248c6";s:20:"sb_instagram_user_id";s:10:"4024166089";s:30:"sb_instagram_preserve_settings";s:0:"";s:23:"sb_instagram_ajax_theme";s:0:"";s:18:"sb_instagram_width";i:100;s:23:"sb_instagram_width_unit";s:1:"%";s:28:"sb_instagram_feed_width_resp";s:0:"";s:19:"sb_instagram_height";s:0:"";s:16:"sb_instagram_num";i:6;s:24:"sb_instagram_height_unit";s:2:"px";s:17:"sb_instagram_cols";s:1:"6";s:27:"sb_instagram_disable_mobile";s:0:"";s:26:"sb_instagram_image_padding";i:5;s:31:"sb_instagram_image_padding_unit";s:2:"px";s:17:"sb_instagram_sort";s:4:"none";s:23:"sb_instagram_background";s:0:"";s:21:"sb_instagram_show_btn";s:0:"";s:27:"sb_instagram_btn_background";s:0:"";s:27:"sb_instagram_btn_text_color";s:0:"";s:21:"sb_instagram_btn_text";s:12:"Load More...";s:22:"sb_instagram_image_res";s:4:"auto";s:24:"sb_instagram_show_header";s:0:"";s:25:"sb_instagram_header_color";s:0:"";s:28:"sb_instagram_show_follow_btn";s:0:"";s:33:"sb_instagram_folow_btn_background";s:0:"";s:34:"sb_instagram_follow_btn_text_color";s:0:"";s:28:"sb_instagram_follow_btn_text";s:19:"Follow on Instagram";s:23:"sb_instagram_custom_css";s:0:"";s:22:"sb_instagram_custom_js";s:0:"";s:28:"sb_instagram_disable_awesome";s:0:"";}', 'yes'),
(529, 'sample_theme_options', 'a:13:{s:12:"image_1_logo";s:0:"";s:12:"image_2_logo";s:0:"";s:17:"signup_to_img_url";s:68:"http://localhost/ainslie/wp-content/uploads/2016/11/sign-up-bg-2.jpg";s:8:"fb_title";s:0:"";s:8:"tw_title";s:0:"";s:11:"insta_title";s:0:"";s:9:"linked_in";s:0:"";s:9:"pinterest";s:0:"";s:6:"_title";s:0:"";s:18:"about_sometextarea";s:0:"";s:15:"image_featured_";s:0:"";s:13:"bg_to_img_url";s:75:"http://localhost/ainslie/wp-content/uploads/2016/11/white-marble-2048-2.jpg";s:15:"text_to_img_url";s:69:"http://localhost/ainslie/wp-content/uploads/2016/11/header-bg-1-1.png";}', 'yes'),
(901, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1478283004', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(902, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 04 Nov 2016 06:06:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"6743@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"363@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 15 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12073@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Search Engine (SEO) &#38; Performance Optimization (WPO) via caching. Integrated caching: CDN, Minify, Page, Object, Fragment, Database support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2572@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2646@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5790@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"One of the most downloaded plugins for WordPress (over 30 million downloads since 2007). Use All in One SEO Pack to automatically optimize your site f";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:149:"Secure your website with the most comprehensive WordPress security plugin. Firewall, malware scan, blocking, live traffic, login security &#38; more.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:58:"Extends and enhances TinyMCE, the WordPress Visual Editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"51888@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"9542@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"25254@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"47509@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:139:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical login experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"38058@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26907@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"50539@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"28395@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"31973@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26607@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"49521@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Easy to use WordPress Slider plugin. Create responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 04 Nov 2016 06:10:04 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:13:"last-modified";s:29:"Mon, 05 Sep 2011 08:13:36 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";s:16:"content-encoding";s:4:"gzip";}}s:5:"build";s:14:"20130910223210";}', 'no'),
(903, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1478283005', 'no'),
(904, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1478239805', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1183, 'nf_form_1', 'a:7:{s:2:"id";i:1;s:20:"show_publish_options";b:0;s:6:"fields";a:5:{i:0;a:2:{s:8:"settings";a:69:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:1;s:5:"label";s:4:"Name";s:3:"key";s:4:"name";s:4:"type";s:7:"textbox";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:9:"label_pos";s:6:"hidden";s:8:"required";i:1;s:11:"placeholder";s:4:"Name";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:15:"container_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:4:"mask";s:0:"";s:11:"custom_mask";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";i:0;s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";i:0;s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";i:0;s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3277";}s:2:"id";i:1;}i:1;a:2:{s:8:"settings";a:61:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:2;s:5:"label";s:5:"Email";s:3:"key";s:5:"email";s:4:"type";s:5:"email";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:9:"label_pos";s:6:"hidden";s:8:"required";i:1;s:11:"placeholder";s:5:"Email";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:15:"container_class";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:11:"<p><br></p>";s:9:"desc_text";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";i:0;s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";i:0;s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";i:0;s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3281";}s:2:"id";i:2;}i:2;a:2:{s:8:"settings";a:24:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:3;s:4:"type";s:5:"phone";s:5:"label";s:5:"Phone";s:3:"key";s:5:"phone";s:9:"label_pos";s:6:"hidden";s:8:"required";b:0;s:11:"placeholder";s:5:"Phone";s:7:"default";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";b:0;s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:4:"mask";s:0:"";s:11:"custom_mask";s:0:"";}s:2:"id";i:5;}i:3;a:2:{s:8:"settings";a:70:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:4;s:5:"label";s:7:"Message";s:3:"key";s:7:"message";s:4:"type";s:8:"textarea";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:9:"label_pos";s:6:"hidden";s:8:"required";i:1;s:11:"placeholder";s:7:"Message";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:15:"container_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:12:"textarea_rte";s:0:"";s:18:"disable_rte_mobile";s:0:"";s:14:"textarea_media";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";i:0;s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";i:0;s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";i:0;s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3284";}s:2:"id";i:3;}i:4;a:2:{s:8:"settings";a:68:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:5;s:5:"label";s:6:"Submit";s:3:"key";s:6:"submit";s:4:"type";s:6:"submit";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:16:"processing_label";s:10:"Processing";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";i:0;s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";i:0;s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";i:0;s:23:"element_styles_advanced";s:0:"";s:44:"submit_element_hover_styles_background-color";s:0:"";s:34:"submit_element_hover_styles_border";s:0:"";s:40:"submit_element_hover_styles_border-style";s:0:"";s:40:"submit_element_hover_styles_border-color";s:0:"";s:33:"submit_element_hover_styles_color";s:0:"";s:34:"submit_element_hover_styles_height";s:0:"";s:33:"submit_element_hover_styles_width";s:0:"";s:37:"submit_element_hover_styles_font-size";s:0:"";s:34:"submit_element_hover_styles_margin";s:0:"";s:35:"submit_element_hover_styles_padding";s:0:"";s:35:"submit_element_hover_styles_display";s:0:"";s:33:"submit_element_hover_styles_float";s:0:"";s:45:"submit_element_hover_styles_show_advanced_css";i:0;s:36:"submit_element_hover_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3287";}s:2:"id";i:4;}}s:7:"actions";a:4:{i:0;a:2:{s:8:"settings";a:25:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:4:"save";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:5:"label";s:16:"Save to Database";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:0:"";s:13:"email_subject";s:0:"";s:13:"email_message";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:12:"redirect_url";s:0:"";s:19:"email_message_plain";s:0:"";}s:2:"id";i:3;}i:1;a:2:{s:8:"settings";a:26:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:5:"label";s:18:"Email Confirmation";s:2:"to";s:13:"{field:email}";s:7:"subject";s:24:"This is an email action.";s:7:"message";s:19:"Hello, Ninja Forms!";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:13:"email_subject";s:24:"Submission Confirmation ";s:13:"email_message";s:29:"<p>{field:all_fields}<br></p>";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:19:"email_message_plain";s:0:"";}s:2:"id";i:4;}i:2;a:2:{s:8:"settings";a:24:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2016-08-24 16:47:39";s:5:"label";s:18:"Email Notification";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:20:"{system:admin_email}";s:13:"email_subject";s:29:"New message from {field:name}";s:13:"email_message";s:63:"<p>{field:message}</p><p>- {field:name} ( {field:email} )</p>";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:13:"{field:email}";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:1:"0";s:19:"email_message_plain";s:0:"";}s:2:"id";i:2;}i:3;a:2:{s:8:"settings";a:24:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2016-08-24 16:47:39";s:5:"label";s:18:"Email Notification";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:20:"{system:admin_email}";s:13:"email_subject";s:29:"New message from {field:name}";s:13:"email_message";s:63:"<p>{field:message}</p><p>- {field:name} ( {field:email} )</p>";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:13:"{field:email}";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:1:"0";s:19:"email_message_plain";s:0:"";}s:2:"id";i:2;}}s:8:"settings";a:101:{s:10:"objectType";s:12:"Form Setting";s:10:"editActive";b:1;s:5:"title";s:10:"Contact Me";s:3:"key";s:0:"";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:17:"default_label_pos";s:5:"above";s:8:"_seq_num";s:1:"3";s:10:"conditions";a:0:{}s:10:"show_title";i:0;s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:13:"wrapper_class";s:8:"con-form";s:13:"element_class";s:0:"";s:10:"add_submit";s:1:"1";s:9:"logged_in";s:0:"";s:17:"not_logged_in_msg";s:0:"";s:16:"sub_limit_number";s:0:"";s:13:"sub_limit_msg";s:0:"";s:12:"calculations";a:0:{}s:15:"formContentData";a:5:{i:0;s:4:"name";i:1;s:5:"email";i:2;s:5:"phone";i:3;s:7:"message";i:4;s:6:"submit";}s:33:"container_styles_background-color";s:0:"";s:23:"container_styles_border";s:0:"";s:29:"container_styles_border-style";s:0:"";s:29:"container_styles_border-color";s:0:"";s:22:"container_styles_color";s:0:"";s:23:"container_styles_height";s:0:"";s:22:"container_styles_width";s:0:"";s:26:"container_styles_font-size";s:0:"";s:23:"container_styles_margin";s:0:"";s:24:"container_styles_padding";s:0:"";s:24:"container_styles_display";s:0:"";s:22:"container_styles_float";s:0:"";s:34:"container_styles_show_advanced_css";s:1:"0";s:25:"container_styles_advanced";s:0:"";s:29:"title_styles_background-color";s:0:"";s:19:"title_styles_border";s:0:"";s:25:"title_styles_border-style";s:0:"";s:25:"title_styles_border-color";s:0:"";s:18:"title_styles_color";s:0:"";s:19:"title_styles_height";s:0:"";s:18:"title_styles_width";s:0:"";s:22:"title_styles_font-size";s:0:"";s:19:"title_styles_margin";s:0:"";s:20:"title_styles_padding";s:0:"";s:20:"title_styles_display";s:0:"";s:18:"title_styles_float";s:0:"";s:30:"title_styles_show_advanced_css";s:1:"0";s:21:"title_styles_advanced";s:0:"";s:27:"row_styles_background-color";s:0:"";s:17:"row_styles_border";s:0:"";s:23:"row_styles_border-style";s:0:"";s:23:"row_styles_border-color";s:0:"";s:16:"row_styles_color";s:0:"";s:17:"row_styles_height";s:0:"";s:16:"row_styles_width";s:0:"";s:20:"row_styles_font-size";s:0:"";s:17:"row_styles_margin";s:0:"";s:18:"row_styles_padding";s:0:"";s:18:"row_styles_display";s:0:"";s:28:"row_styles_show_advanced_css";s:1:"0";s:19:"row_styles_advanced";s:0:"";s:31:"row-odd_styles_background-color";s:0:"";s:21:"row-odd_styles_border";s:0:"";s:27:"row-odd_styles_border-style";s:0:"";s:27:"row-odd_styles_border-color";s:0:"";s:20:"row-odd_styles_color";s:0:"";s:21:"row-odd_styles_height";s:0:"";s:20:"row-odd_styles_width";s:0:"";s:24:"row-odd_styles_font-size";s:0:"";s:21:"row-odd_styles_margin";s:0:"";s:22:"row-odd_styles_padding";s:0:"";s:22:"row-odd_styles_display";s:0:"";s:32:"row-odd_styles_show_advanced_css";s:1:"0";s:23:"row-odd_styles_advanced";s:0:"";s:35:"success-msg_styles_background-color";s:0:"";s:25:"success-msg_styles_border";s:0:"";s:31:"success-msg_styles_border-style";s:0:"";s:31:"success-msg_styles_border-color";s:0:"";s:24:"success-msg_styles_color";s:0:"";s:25:"success-msg_styles_height";s:0:"";s:24:"success-msg_styles_width";s:0:"";s:28:"success-msg_styles_font-size";s:0:"";s:25:"success-msg_styles_margin";s:0:"";s:26:"success-msg_styles_padding";s:0:"";s:26:"success-msg_styles_display";s:0:"";s:36:"success-msg_styles_show_advanced_css";s:1:"0";s:27:"success-msg_styles_advanced";s:0:"";s:33:"error_msg_styles_background-color";s:0:"";s:23:"error_msg_styles_border";s:0:"";s:29:"error_msg_styles_border-style";s:0:"";s:29:"error_msg_styles_border-color";s:0:"";s:22:"error_msg_styles_color";s:0:"";s:23:"error_msg_styles_height";s:0:"";s:22:"error_msg_styles_width";s:0:"";s:26:"error_msg_styles_font-size";s:0:"";s:23:"error_msg_styles_margin";s:0:"";s:24:"error_msg_styles_padding";s:0:"";s:24:"error_msg_styles_display";s:0:"";s:34:"error_msg_styles_show_advanced_css";s:1:"0";s:25:"error_msg_styles_advanced";s:0:"";s:8:"currency";s:0:"";}s:14:"deleted_fields";a:0:{}s:15:"deleted_actions";a:0:{}}', 'yes'),
(1263, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.5.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1478256165;s:7:"version";s:5:"4.5.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(1382, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1478507160', 'no'),
(1383, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6088";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3759";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3727";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3228";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2870";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2538";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2271";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2153";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2098";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2097";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2035";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"2000";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1960";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1927";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1760";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1643";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1611";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1467";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1367";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1299";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1291";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1148";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1133";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1076";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1022";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1011";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"960";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"959";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"956";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"926";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"926";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"925";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"857";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"848";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"837";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"818";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"797";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"789";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"780";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"773";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"760";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"758";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"751";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"732";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"730";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"729";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"721";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"718";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"712";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"706";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"705";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"653";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"648";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"638";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"631";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"623";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"614";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"612";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"612";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"611";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"599";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"582";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"582";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"582";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"579";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"566";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"550";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"547";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"545";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"538";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"538";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"533";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"533";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"519";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"517";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"507";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"504";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"499";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"481";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"470";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"468";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"466";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"464";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"457";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"445";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"444";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"438";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"436";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"433";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"432";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"428";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"424";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"423";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"422";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"421";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"421";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"419";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"416";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"415";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"411";}}', 'no'),
(1388, 'duplicate_post_title_prefix', '', 'yes'),
(1389, 'duplicate_post_title_suffix', '', 'yes'),
(1390, 'duplicate_post_increase_menu_order_by', '', 'yes'),
(1391, 'duplicate_post_roles', 'a:2:{i:0;s:13:"administrator";i:1;s:6:"editor";}', 'yes'),
(1546, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1478513335;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:9:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.2.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.5.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.5.1.zip";}s:33:"duplicate-post/duplicate-post.php";O:8:"stdClass":7:{s:2:"id";s:4:"1295";s:4:"slug";s:14:"duplicate-post";s:6:"plugin";s:33:"duplicate-post/duplicate-post.php";s:11:"new_version";s:5:"3.0.3";s:3:"url";s:45:"https://wordpress.org/plugins/duplicate-post/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/duplicate-post.3.0.3.zip";s:14:"upgrade_notice";s:38:"Notices + small fixes and improvements";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:33:"instagram-feed/instagram-feed.php";O:8:"stdClass":6:{s:2:"id";s:5:"52289";s:4:"slug";s:14:"instagram-feed";s:6:"plugin";s:33:"instagram-feed/instagram-feed.php";s:11:"new_version";s:5:"1.4.8";s:3:"url";s:45:"https://wordpress.org/plugins/instagram-feed/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/instagram-feed.1.4.8.zip";}s:39:"manual-image-crop/manual-image-crop.php";O:8:"stdClass":6:{s:2:"id";s:5:"44373";s:4:"slug";s:17:"manual-image-crop";s:6:"plugin";s:39:"manual-image-crop/manual-image-crop.php";s:11:"new_version";s:4:"1.12";s:3:"url";s:48:"https://wordpress.org/plugins/manual-image-crop/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip";}s:53:"simple-custom-post-order/simple-custom-post-order.php";O:8:"stdClass":6:{s:2:"id";s:5:"42644";s:4:"slug";s:24:"simple-custom-post-order";s:6:"plugin";s:53:"simple-custom-post-order/simple-custom-post-order.php";s:11:"new_version";s:3:"2.3";s:3:"url";s:55:"https://wordpress.org/plugins/simple-custom-post-order/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/simple-custom-post-order.zip";}s:29:"wp-dbmanager/wp-dbmanager.php";O:8:"stdClass":6:{s:2:"id";s:3:"340";s:4:"slug";s:12:"wp-dbmanager";s:6:"plugin";s:29:"wp-dbmanager/wp-dbmanager.php";s:11:"new_version";s:4:"2.78";s:3:"url";s:43:"https://wordpress.org/plugins/wp-dbmanager/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wp-dbmanager.2.78.1.zip";}}}', 'no'),
(1549, 'scporder_install', '1', 'yes'),
(1562, 'scporder_options', 'a:2:{s:7:"objects";a:1:{i:0;s:8:"services";}s:4:"tags";s:0:"";}', 'yes'),
(1790, '_transient_is_multi_author', '0', 'yes'),
(1881, '_site_transient_timeout_theme_roots', '1478515130', 'no'),
(1882, '_site_transient_theme_roots', 'a:4:{s:4:"drng";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(1982, 'duplicate_post_version', '3.0.3', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_wp_page_template', 'about-page-template.php'),
(4, 4, 'my_meta_box_check', 'off'),
(5, 4, '_edit_lock', '1478524020:1'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1478156525:1'),
(8, 6, '_wp_page_template', 'blog-page-template.php'),
(9, 6, 'my_meta_box_check', 'off'),
(10, 8, '_edit_last', '1'),
(11, 8, '_wp_page_template', 'default'),
(12, 8, 'my_meta_box_check', 'off'),
(13, 8, '_edit_lock', '1478156547:1'),
(14, 10, '_edit_last', '1'),
(15, 10, '_edit_lock', '1478255866:1'),
(16, 10, '_wp_page_template', 'contact-page-template.php'),
(17, 10, 'my_meta_box_check', 'off'),
(18, 12, '_edit_last', '1'),
(19, 12, '_edit_lock', '1478156594:1'),
(20, 12, '_wp_page_template', 'press-page-template.php'),
(21, 12, 'my_meta_box_check', 'off'),
(22, 14, '_edit_last', '1'),
(23, 14, '_edit_lock', '1478156783:1'),
(24, 14, '_wp_page_template', 'default'),
(25, 14, 'my_meta_box_check', 'off'),
(26, 16, '_edit_last', '1'),
(27, 16, '_edit_lock', '1478156671:1'),
(28, 16, '_wp_page_template', 'default'),
(29, 16, 'my_meta_box_check', 'off'),
(30, 18, '_edit_last', '1'),
(31, 18, '_edit_lock', '1478156939:1'),
(32, 18, '_wp_page_template', 'testimonial-page-template.php'),
(33, 18, 'my_meta_box_check', 'off'),
(34, 2, '_wp_trash_meta_status', 'publish'),
(35, 2, '_wp_trash_meta_time', '1478157091'),
(36, 2, '_wp_desired_post_slug', 'sample-page'),
(37, 2, 'my_meta_box_check', 'off'),
(38, 12, '_wp_trash_meta_status', 'publish'),
(39, 12, '_wp_trash_meta_time', '1478157106'),
(40, 12, '_wp_desired_post_slug', 'press'),
(41, 21, '_edit_last', '1'),
(42, 21, '_wp_page_template', 'template-expertise.php'),
(43, 21, 'my_meta_box_check', 'off'),
(44, 21, '_edit_lock', '1478244186:1'),
(45, 23, '_edit_last', '1'),
(46, 23, '_wp_page_template', 'default'),
(47, 23, 'my_meta_box_check', 'off'),
(48, 23, '_edit_lock', '1478157779:1'),
(49, 25, '_edit_last', '1'),
(50, 25, '_wp_page_template', 'template-who-wework-with.php'),
(51, 25, 'my_meta_box_check', 'off'),
(52, 25, '_edit_lock', '1478252207:1'),
(53, 27, '_edit_last', '1'),
(54, 27, '_edit_lock', '1478494848:1'),
(55, 27, '_wp_page_template', 'services-page-template.php'),
(56, 27, 'my_meta_box_check', 'off'),
(57, 29, '_menu_item_type', 'post_type'),
(58, 29, '_menu_item_menu_item_parent', '0'),
(59, 29, '_menu_item_object_id', '27'),
(60, 29, '_menu_item_object', 'page'),
(61, 29, '_menu_item_target', ''),
(62, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 29, '_menu_item_xfn', ''),
(64, 29, '_menu_item_url', ''),
(66, 30, '_menu_item_type', 'post_type'),
(67, 30, '_menu_item_menu_item_parent', '0'),
(68, 30, '_menu_item_object_id', '25'),
(69, 30, '_menu_item_object', 'page'),
(70, 30, '_menu_item_target', ''),
(71, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 30, '_menu_item_xfn', ''),
(73, 30, '_menu_item_url', ''),
(84, 32, '_menu_item_type', 'post_type'),
(85, 32, '_menu_item_menu_item_parent', '0'),
(86, 32, '_menu_item_object_id', '21'),
(87, 32, '_menu_item_object', 'page'),
(88, 32, '_menu_item_target', ''),
(89, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 32, '_menu_item_xfn', ''),
(91, 32, '_menu_item_url', ''),
(93, 33, '_menu_item_type', 'post_type'),
(94, 33, '_menu_item_menu_item_parent', '0'),
(95, 33, '_menu_item_object_id', '18'),
(96, 33, '_menu_item_object', 'page'),
(97, 33, '_menu_item_target', ''),
(98, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(99, 33, '_menu_item_xfn', ''),
(100, 33, '_menu_item_url', ''),
(102, 34, '_menu_item_type', 'post_type'),
(103, 34, '_menu_item_menu_item_parent', '0'),
(104, 34, '_menu_item_object_id', '10'),
(105, 34, '_menu_item_object', 'page'),
(106, 34, '_menu_item_target', ''),
(107, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(108, 34, '_menu_item_xfn', ''),
(109, 34, '_menu_item_url', ''),
(111, 35, '_menu_item_type', 'post_type'),
(112, 35, '_menu_item_menu_item_parent', '0'),
(113, 35, '_menu_item_object_id', '6'),
(114, 35, '_menu_item_object', 'page'),
(115, 35, '_menu_item_target', ''),
(116, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(117, 35, '_menu_item_xfn', ''),
(118, 35, '_menu_item_url', ''),
(120, 36, '_menu_item_type', 'post_type'),
(121, 36, '_menu_item_menu_item_parent', '0'),
(122, 36, '_menu_item_object_id', '4'),
(123, 36, '_menu_item_object', 'page'),
(124, 36, '_menu_item_target', ''),
(125, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(126, 36, '_menu_item_xfn', ''),
(127, 36, '_menu_item_url', ''),
(129, 37, '_menu_item_type', 'post_type'),
(130, 37, '_menu_item_menu_item_parent', '0'),
(131, 37, '_menu_item_object_id', '27'),
(132, 37, '_menu_item_object', 'page'),
(133, 37, '_menu_item_target', ''),
(134, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(135, 37, '_menu_item_xfn', ''),
(136, 37, '_menu_item_url', ''),
(138, 38, '_menu_item_type', 'post_type'),
(139, 38, '_menu_item_menu_item_parent', '0'),
(140, 38, '_menu_item_object_id', '25'),
(141, 38, '_menu_item_object', 'page'),
(142, 38, '_menu_item_target', ''),
(143, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(144, 38, '_menu_item_xfn', ''),
(145, 38, '_menu_item_url', ''),
(147, 39, '_menu_item_type', 'post_type'),
(148, 39, '_menu_item_menu_item_parent', '0'),
(149, 39, '_menu_item_object_id', '21'),
(150, 39, '_menu_item_object', 'page'),
(151, 39, '_menu_item_target', ''),
(152, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(153, 39, '_menu_item_xfn', ''),
(154, 39, '_menu_item_url', ''),
(156, 40, '_menu_item_type', 'post_type'),
(157, 40, '_menu_item_menu_item_parent', '0'),
(158, 40, '_menu_item_object_id', '18'),
(159, 40, '_menu_item_object', 'page'),
(160, 40, '_menu_item_target', ''),
(161, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(162, 40, '_menu_item_xfn', ''),
(163, 40, '_menu_item_url', ''),
(165, 41, '_menu_item_type', 'post_type'),
(166, 41, '_menu_item_menu_item_parent', '0'),
(167, 41, '_menu_item_object_id', '14'),
(168, 41, '_menu_item_object', 'page'),
(169, 41, '_menu_item_target', ''),
(170, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(171, 41, '_menu_item_xfn', ''),
(172, 41, '_menu_item_url', ''),
(174, 42, '_menu_item_type', 'post_type'),
(175, 42, '_menu_item_menu_item_parent', '0'),
(176, 42, '_menu_item_object_id', '10'),
(177, 42, '_menu_item_object', 'page'),
(178, 42, '_menu_item_target', ''),
(179, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(180, 42, '_menu_item_xfn', ''),
(181, 42, '_menu_item_url', ''),
(183, 43, '_menu_item_type', 'post_type'),
(184, 43, '_menu_item_menu_item_parent', '0'),
(185, 43, '_menu_item_object_id', '6'),
(186, 43, '_menu_item_object', 'page'),
(187, 43, '_menu_item_target', ''),
(188, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(189, 43, '_menu_item_xfn', ''),
(190, 43, '_menu_item_url', ''),
(192, 44, '_menu_item_type', 'post_type'),
(193, 44, '_menu_item_menu_item_parent', '0'),
(194, 44, '_menu_item_object_id', '4'),
(195, 44, '_menu_item_object', 'page'),
(196, 44, '_menu_item_target', ''),
(197, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(198, 44, '_menu_item_xfn', ''),
(199, 44, '_menu_item_url', ''),
(201, 46, '_wp_attached_file', '2016/11/logo.png'),
(202, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:280;s:6:"height";i:67;s:4:"file";s:16:"2016/11/logo.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:16:"logo-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"custom-image-1";a:4:{s:4:"file";s:16:"logo-600x480.png";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:17:"logo-1000x900.png";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:9:"image/png";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:16:"logo-550x550.png";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:16:"logo-480x680.png";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:9:"image/png";}s:23:"services_featured-image";a:4:{s:4:"file";s:17:"logo-1000x714.png";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:9:"image/png";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:16:"logo-620x340.png";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";}s:17:"blog-single-image";a:4:{s:4:"file";s:17:"logo-1240x550.png";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:16:"logo-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(203, 47, '_wp_attached_file', '2016/11/logo-1.png'),
(204, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:283;s:6:"height";i:68;s:4:"file";s:18:"2016/11/logo-1.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"logo-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:18:"logo-1-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"custom-image-1";a:4:{s:4:"file";s:18:"logo-1-600x480.png";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:19:"logo-1-1000x900.png";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:9:"image/png";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:18:"logo-1-550x550.png";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:18:"logo-1-480x680.png";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:9:"image/png";}s:23:"services_featured-image";a:4:{s:4:"file";s:19:"logo-1-1000x714.png";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:9:"image/png";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:18:"logo-1-620x340.png";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";}s:17:"blog-single-image";a:4:{s:4:"file";s:19:"logo-1-1240x550.png";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:18:"logo-1-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(205, 48, '_wp_attached_file', '2016/11/logo-2.png'),
(206, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:280;s:6:"height";i:67;s:4:"file";s:18:"2016/11/logo-2.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"logo-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:18:"logo-2-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"custom-image-1";a:4:{s:4:"file";s:18:"logo-2-600x480.png";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:19:"logo-2-1000x900.png";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:9:"image/png";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:18:"logo-2-550x550.png";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:18:"logo-2-480x680.png";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:9:"image/png";}s:23:"services_featured-image";a:4:{s:4:"file";s:19:"logo-2-1000x714.png";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:9:"image/png";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:18:"logo-2-620x340.png";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";}s:17:"blog-single-image";a:4:{s:4:"file";s:19:"logo-2-1240x550.png";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:18:"logo-2-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(207, 49, '_wp_attached_file', '2016/11/sign-up-bg.jpg'),
(208, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:469;s:4:"file";s:22:"2016/11/sign-up-bg.jpg";s:5:"sizes";a:13:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"sign-up-bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"sign-up-bg-300x101.jpg";s:5:"width";i:300;s:6:"height";i:101;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"sign-up-bg-768x257.jpg";s:5:"width";i:768;s:6:"height";i:257;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"sign-up-bg-1024x343.jpg";s:5:"width";i:1024;s:6:"height";i:343;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:22:"sign-up-bg-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"custom-image-1";a:4:{s:4:"file";s:22:"sign-up-bg-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:23:"sign-up-bg-1000x900.jpg";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:22:"sign-up-bg-550x550.jpg";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:22:"sign-up-bg-480x680.jpg";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:23:"services_featured-image";a:4:{s:4:"file";s:23:"sign-up-bg-1000x714.jpg";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:22:"sign-up-bg-620x340.jpg";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog-single-image";a:4:{s:4:"file";s:23:"sign-up-bg-1240x550.jpg";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:22:"sign-up-bg-450x450.jpg";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(209, 50, '_wp_attached_file', '2016/11/sign-up-bg-1.jpg'),
(210, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:469;s:4:"file";s:24:"2016/11/sign-up-bg-1.jpg";s:5:"sizes";a:13:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"sign-up-bg-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"sign-up-bg-1-300x101.jpg";s:5:"width";i:300;s:6:"height";i:101;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"sign-up-bg-1-768x257.jpg";s:5:"width";i:768;s:6:"height";i:257;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"sign-up-bg-1-1024x343.jpg";s:5:"width";i:1024;s:6:"height";i:343;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:24:"sign-up-bg-1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"custom-image-1";a:4:{s:4:"file";s:24:"sign-up-bg-1-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:25:"sign-up-bg-1-1000x900.jpg";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:24:"sign-up-bg-1-550x550.jpg";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:24:"sign-up-bg-1-480x680.jpg";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:23:"services_featured-image";a:4:{s:4:"file";s:25:"sign-up-bg-1-1000x714.jpg";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:24:"sign-up-bg-1-620x340.jpg";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog-single-image";a:4:{s:4:"file";s:25:"sign-up-bg-1-1240x550.jpg";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:24:"sign-up-bg-1-450x450.jpg";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(211, 51, '_wp_attached_file', '2016/11/sign-up-bg-2.jpg'),
(212, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:469;s:4:"file";s:24:"2016/11/sign-up-bg-2.jpg";s:5:"sizes";a:13:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"sign-up-bg-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"sign-up-bg-2-300x101.jpg";s:5:"width";i:300;s:6:"height";i:101;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"sign-up-bg-2-768x257.jpg";s:5:"width";i:768;s:6:"height";i:257;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"sign-up-bg-2-1024x343.jpg";s:5:"width";i:1024;s:6:"height";i:343;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:24:"sign-up-bg-2-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"custom-image-1";a:4:{s:4:"file";s:24:"sign-up-bg-2-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:25:"sign-up-bg-2-1000x900.jpg";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:24:"sign-up-bg-2-550x550.jpg";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:24:"sign-up-bg-2-480x680.jpg";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:23:"services_featured-image";a:4:{s:4:"file";s:25:"sign-up-bg-2-1000x714.jpg";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:24:"sign-up-bg-2-620x340.jpg";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog-single-image";a:4:{s:4:"file";s:25:"sign-up-bg-2-1240x550.jpg";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:24:"sign-up-bg-2-450x450.jpg";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(213, 53, '_wp_attached_file', '2016/11/about.jpg'),
(214, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:380;s:6:"height";i:490;s:4:"file";s:17:"2016/11/about.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"about-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"about-233x300.jpg";s:5:"width";i:233;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:17:"about-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"custom-image-1";a:4:{s:4:"file";s:17:"about-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:18:"about-1000x900.jpg";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:17:"about-550x550.jpg";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:17:"about-480x680.jpg";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:23:"services_featured-image";a:4:{s:4:"file";s:18:"about-1000x714.jpg";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:17:"about-620x340.jpg";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog-single-image";a:4:{s:4:"file";s:18:"about-1240x550.jpg";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:17:"about-450x450.jpg";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(215, 4, '_thumbnail_id', '53'),
(216, 54, '_wp_attached_file', '2016/11/header-bg-1.png'),
(217, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:502;s:6:"height";i:529;s:4:"file";s:23:"2016/11/header-bg-1.png";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"header-bg-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"header-bg-1-285x300.png";s:5:"width";i:285;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:23:"header-bg-1-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"custom-image-1";a:4:{s:4:"file";s:23:"header-bg-1-600x480.png";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:24:"header-bg-1-1000x900.png";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:9:"image/png";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:23:"header-bg-1-550x550.png";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:23:"header-bg-1-480x680.png";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:9:"image/png";}s:23:"services_featured-image";a:4:{s:4:"file";s:24:"header-bg-1-1000x714.png";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:9:"image/png";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:23:"header-bg-1-620x340.png";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";}s:17:"blog-single-image";a:4:{s:4:"file";s:24:"header-bg-1-1240x550.png";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:23:"header-bg-1-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(218, 55, '_wp_attached_file', '2016/11/texture-bg.jpg'),
(219, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:508;s:4:"file";s:22:"2016/11/texture-bg.jpg";s:5:"sizes";a:14:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"texture-bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"texture-bg-300x79.jpg";s:5:"width";i:300;s:6:"height";i:79;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"texture-bg-768x203.jpg";s:5:"width";i:768;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"texture-bg-1024x271.jpg";s:5:"width";i:1024;s:6:"height";i:271;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:22:"texture-bg-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"custom-image-1";a:4:{s:4:"file";s:22:"texture-bg-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:23:"texture-bg-1000x900.jpg";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:22:"texture-bg-550x550.jpg";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:22:"texture-bg-480x680.jpg";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:23:"services_featured-image";a:4:{s:4:"file";s:23:"texture-bg-1000x714.jpg";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:22:"texture-bg-620x340.jpg";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog-single-image";a:4:{s:4:"file";s:23:"texture-bg-1240x550.jpg";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:22:"texture-bg-450x450.jpg";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"texture-bg-1920x508.jpg";s:5:"width";i:1920;s:6:"height";i:508;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(220, 56, '_wp_attached_file', '2016/11/white-marble-2048-2.jpg'),
(221, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1347;s:4:"file";s:31:"2016/11/white-marble-2048-2.jpg";s:5:"sizes";a:14:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"white-marble-2048-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"white-marble-2048-2-300x197.jpg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"white-marble-2048-2-768x505.jpg";s:5:"width";i:768;s:6:"height";i:505;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"white-marble-2048-2-1024x674.jpg";s:5:"width";i:1024;s:6:"height";i:674;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:31:"white-marble-2048-2-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"custom-image-1";a:4:{s:4:"file";s:31:"white-marble-2048-2-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:32:"white-marble-2048-2-1000x900.jpg";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:31:"white-marble-2048-2-550x550.jpg";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:31:"white-marble-2048-2-480x680.jpg";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:23:"services_featured-image";a:4:{s:4:"file";s:32:"white-marble-2048-2-1000x714.jpg";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:31:"white-marble-2048-2-620x340.jpg";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog-single-image";a:4:{s:4:"file";s:32:"white-marble-2048-2-1240x550.jpg";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:31:"white-marble-2048-2-450x450.jpg";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:33:"white-marble-2048-2-1920x1263.jpg";s:5:"width";i:1920;s:6:"height";i:1263;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(222, 60, '_wp_attached_file', '2016/11/pattern.png'),
(223, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:1532;s:4:"file";s:19:"2016/11/pattern.png";s:5:"sizes";a:13:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"pattern-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"pattern-274x300.png";s:5:"width";i:274;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:19:"pattern-768x840.png";s:5:"width";i:768;s:6:"height";i:840;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"pattern-936x1024.png";s:5:"width";i:936;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:19:"pattern-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"custom-image-1";a:4:{s:4:"file";s:19:"pattern-600x480.png";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:20:"pattern-1000x900.png";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:9:"image/png";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:19:"pattern-550x550.png";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:19:"pattern-480x680.png";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:9:"image/png";}s:23:"services_featured-image";a:4:{s:4:"file";s:20:"pattern-1000x714.png";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:9:"image/png";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:19:"pattern-620x340.png";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";}s:17:"blog-single-image";a:4:{s:4:"file";s:20:"pattern-1240x550.png";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:19:"pattern-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(224, 61, '_wp_attached_file', '2016/11/pattern.jpg'),
(225, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:411;s:6:"height";i:342;s:4:"file";s:19:"2016/11/pattern.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"pattern-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"pattern-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:19:"pattern-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"custom-image-1";a:4:{s:4:"file";s:19:"pattern-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:20:"pattern-1000x900.jpg";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:19:"pattern-550x550.jpg";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:19:"pattern-480x680.jpg";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:23:"services_featured-image";a:4:{s:4:"file";s:20:"pattern-1000x714.jpg";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:19:"pattern-620x340.jpg";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog-single-image";a:4:{s:4:"file";s:20:"pattern-1240x550.jpg";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:19:"pattern-450x450.jpg";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(226, 62, '_wp_attached_file', '2016/11/header-bg-1-1.png'),
(227, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:502;s:6:"height";i:529;s:4:"file";s:25:"2016/11/header-bg-1-1.png";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"header-bg-1-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"header-bg-1-1-285x300.png";s:5:"width";i:285;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:25:"header-bg-1-1-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"custom-image-1";a:4:{s:4:"file";s:25:"header-bg-1-1-600x480.png";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:9:"image/png";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:26:"header-bg-1-1-1000x900.png";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:9:"image/png";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:25:"header-bg-1-1-550x550.png";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:25:"header-bg-1-1-480x680.png";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:9:"image/png";}s:23:"services_featured-image";a:4:{s:4:"file";s:26:"header-bg-1-1-1000x714.png";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:9:"image/png";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:25:"header-bg-1-1-620x340.png";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";}s:17:"blog-single-image";a:4:{s:4:"file";s:26:"header-bg-1-1-1240x550.png";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:9:"image/png";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:25:"header-bg-1-1-450x450.png";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(228, 59, '_edit_last', '1'),
(229, 59, 'field_581b23f040ba2', 'a:14:{s:3:"key";s:19:"field_581b23f040ba2";s:5:"label";s:11:"Sub heading";s:4:"name";s:11:"sub_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(231, 59, 'position', 'normal'),
(232, 59, 'layout', 'no_box'),
(233, 59, 'hide_on_screen', ''),
(234, 59, 'my_meta_box_check', 'off'),
(235, 59, '_edit_lock', '1478505285:1'),
(236, 63, 'sub_heading', 'ABOUT AINSLIE'),
(237, 63, '_sub_heading', 'field_581b23f040ba2'),
(238, 4, 'sub_heading', 'ABOUT AINSLIE'),
(239, 4, '_sub_heading', 'field_581b23f040ba2'),
(240, 64, 'sub_heading', ''),
(241, 64, '_sub_heading', 'field_581b23f040ba2'),
(242, 65, 'sub_heading', 'ABOUT AINSLIE'),
(243, 65, '_sub_heading', 'field_581b23f040ba2'),
(244, 67, '_wp_attached_file', '2016/11/service-img.jpg'),
(245, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:690;s:6:"height";i:490;s:4:"file";s:23:"2016/11/service-img.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"service-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"service-img-300x213.jpg";s:5:"width";i:300;s:6:"height";i:213;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:23:"service-img-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"custom-image-1";a:4:{s:4:"file";s:23:"service-img-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:24:"service-img-1000x900.jpg";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:23:"service-img-550x550.jpg";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:23:"service-img-480x680.jpg";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:23:"services_featured-image";a:4:{s:4:"file";s:24:"service-img-1000x714.jpg";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:23:"service-img-620x340.jpg";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog-single-image";a:4:{s:4:"file";s:24:"service-img-1240x550.jpg";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:23:"service-img-450x450.jpg";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(246, 27, '_thumbnail_id', '67'),
(247, 69, '_edit_last', '1'),
(248, 69, '_edit_lock', '1478496185:1'),
(249, 70, '_edit_last', '1'),
(250, 70, 'field_581b347dbbbe1', 'a:14:{s:3:"key";s:19:"field_581b347dbbbe1";s:5:"label";s:11:"Sub heading";s:4:"name";s:11:"sub_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(251, 70, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"27";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(252, 70, 'position', 'normal'),
(253, 70, 'layout', 'no_box'),
(254, 70, 'hide_on_screen', ''),
(255, 70, 'my_meta_box_check', 'off'),
(256, 70, '_edit_lock', '1478178052:1'),
(257, 72, 'sub_heading', 'at your service'),
(258, 72, '_sub_heading', 'field_581b347dbbbe1'),
(259, 27, 'sub_heading', 'at your service'),
(260, 27, '_sub_heading', 'field_581b347dbbbe1'),
(261, 75, '_edit_last', '1'),
(262, 75, 'field_581c2727193df', 'a:14:{s:3:"key";s:19:"field_581c2727193df";s:5:"label";s:11:"Sub heading";s:4:"name";s:11:"sub_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(263, 75, 'field_581c2731193e0', 'a:13:{s:3:"key";s:19:"field_581c2731193e0";s:5:"label";s:15:"Expertise boxes";s:4:"name";s:15:"expertise_boxes";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:2:{i:0;a:15:{s:3:"key";s:19:"field_581c27c5193e1";s:5:"label";s:14:"Expertise name";s:4:"name";s:14:"expertise_name";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:14:{s:3:"key";s:19:"field_581c27d6193e2";s:5:"label";s:21:"Expertise Description";s:4:"name";s:21:"expertise_description";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}}s:7:"row_min";s:0:"";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(264, 75, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"21";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(265, 75, 'position', 'normal'),
(266, 75, 'layout', 'no_box'),
(267, 75, 'hide_on_screen', ''),
(268, 75, 'my_meta_box_check', 'off'),
(269, 75, '_edit_lock', '1478240242:1'),
(270, 76, 'sub_heading', 'WHAT SHE KNOWS'),
(271, 76, '_sub_heading', 'field_581c2727193df'),
(272, 76, 'expertise_boxes_0_expertise_name', 'branding'),
(273, 76, '_expertise_boxes_0_expertise_name', 'field_581c27c5193e1'),
(274, 76, 'expertise_boxes_0_expertise_description', 'When you brand yourself properly, the competition becomes irrelevant. Branding spans positioning within the market, a clear vision, identifying your demographic, a succinct set of values and activating your brand to connect with a relevant, like-minded audience.'),
(275, 76, '_expertise_boxes_0_expertise_description', 'field_581c27d6193e2'),
(276, 76, 'expertise_boxes_1_expertise_name', 'MARKETING'),
(277, 76, '_expertise_boxes_1_expertise_name', 'field_581c27c5193e1'),
(278, 76, 'expertise_boxes_1_expertise_description', 'Good marketing makes consumers feel intelligent. From a strategic marketing plan and specified market research to planning and executing tailored campaigns and promotions to generate publicity and raise brand awareness. Creating your own content is invaluable.'),
(279, 76, '_expertise_boxes_1_expertise_description', 'field_581c27d6193e2'),
(280, 76, 'expertise_boxes_2_expertise_name', 'DIGITAL'),
(281, 76, '_expertise_boxes_2_expertise_name', 'field_581c27c5193e1'),
(282, 76, 'expertise_boxes_2_expertise_description', 'a strong web presence are ingredients to make a brand fly and translate its unique voice. Communicating regularly though relevant, engaging content is key and will convert brand enthusiasts into brand loyalists. '),
(283, 76, '_expertise_boxes_2_expertise_description', 'field_581c27d6193e2'),
(284, 76, 'expertise_boxes_3_expertise_name', 'SOCIAL MEDIA'),
(285, 76, '_expertise_boxes_3_expertise_name', 'field_581c27c5193e1'),
(286, 76, 'expertise_boxes_3_expertise_description', 'Social Media is an incredibly powerful marketing tool that gives a brand personality, sharing cleverly curated content with a captive audience. A tailored strategy and detailed analytics will map the path to ensure you maximise results on global platforms.'),
(287, 76, '_expertise_boxes_3_expertise_description', 'field_581c27d6193e2'),
(288, 76, 'expertise_boxes', '4'),
(289, 76, '_expertise_boxes', 'field_581c2731193e0'),
(290, 21, 'sub_heading', 'WHAT SHE KNOWS'),
(291, 21, '_sub_heading', 'field_581c2727193df'),
(292, 21, 'expertise_boxes_0_expertise_name', 'branding'),
(293, 21, '_expertise_boxes_0_expertise_name', 'field_581c27c5193e1'),
(294, 21, 'expertise_boxes_0_expertise_description', 'When you brand yourself properly, the competition becomes irrelevant. Branding spans positioning within the market, a clear vision, identifying your demographic, a succinct set of values and activating your brand to connect with a relevant, like-minded audience.'),
(295, 21, '_expertise_boxes_0_expertise_description', 'field_581c27d6193e2'),
(296, 21, 'expertise_boxes_1_expertise_name', 'MARKETING'),
(297, 21, '_expertise_boxes_1_expertise_name', 'field_581c27c5193e1'),
(298, 21, 'expertise_boxes_1_expertise_description', 'Good marketing makes consumers feel intelligent. From a strategic marketing plan and specified market research to planning and executing tailored campaigns and promotions to generate publicity and raise brand awareness. Creating your own content is invaluable.'),
(299, 21, '_expertise_boxes_1_expertise_description', 'field_581c27d6193e2'),
(300, 21, 'expertise_boxes_2_expertise_name', 'DIGITAL'),
(301, 21, '_expertise_boxes_2_expertise_name', 'field_581c27c5193e1'),
(302, 21, 'expertise_boxes_2_expertise_description', 'a strong web presence are ingredients to make a brand fly and translate its unique voice. Communicating regularly though relevant, engaging content is key and will convert brand enthusiasts into brand loyalists. '),
(303, 21, '_expertise_boxes_2_expertise_description', 'field_581c27d6193e2'),
(304, 21, 'expertise_boxes_3_expertise_name', 'SOCIAL MEDIA'),
(305, 21, '_expertise_boxes_3_expertise_name', 'field_581c27c5193e1'),
(306, 21, 'expertise_boxes_3_expertise_description', 'Social Media is an incredibly powerful marketing tool that gives a brand personality, sharing cleverly curated content with a captive audience. A tailored strategy and detailed analytics will map the path to ensure you maximise results on global platforms.'),
(307, 21, '_expertise_boxes_3_expertise_description', 'field_581c27d6193e2'),
(308, 21, 'expertise_boxes', '4'),
(309, 21, '_expertise_boxes', 'field_581c2731193e0'),
(310, 77, '_edit_last', '1'),
(311, 77, 'field_581c375c67191', 'a:13:{s:3:"key";s:19:"field_581c375c67191";s:5:"label";s:11:"Sub heading";s:4:"name";s:11:"sub_heading";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(312, 77, 'field_581c376e67192', 'a:13:{s:3:"key";s:19:"field_581c376e67192";s:5:"label";s:5:"Logos";s:4:"name";s:5:"logos";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:1:{i:0;a:12:{s:3:"key";s:19:"field_581c377f67193";s:5:"label";s:4:"logo";s:4:"name";s:4:"logo";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}}s:7:"row_min";s:0:"";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(314, 77, 'position', 'normal'),
(315, 77, 'layout', 'no_box'),
(316, 77, 'hide_on_screen', ''),
(317, 77, 'my_meta_box_check', 'off'),
(318, 77, '_edit_lock', '1478252466:1'),
(319, 77, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"25";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(320, 78, '_wp_attached_file', '2016/11/logo1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(321, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:183;s:6:"height";i:159;s:4:"file";s:17:"2016/11/logo1.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"logo1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:17:"logo1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"custom-image-1";a:4:{s:4:"file";s:17:"logo1-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:18:"logo1-1000x900.jpg";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:17:"logo1-550x550.jpg";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:17:"logo1-480x680.jpg";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:23:"services_featured-image";a:4:{s:4:"file";s:18:"logo1-1000x714.jpg";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:17:"logo1-620x340.jpg";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog-single-image";a:4:{s:4:"file";s:18:"logo1-1240x550.jpg";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:17:"logo1-450x450.jpg";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(322, 79, '_wp_attached_file', '2016/11/logo2.jpg'),
(323, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:195;s:6:"height";i:115;s:4:"file";s:17:"2016/11/logo2.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"logo2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:17:"logo2-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"custom-image-1";a:4:{s:4:"file";s:17:"logo2-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:18:"logo2-1000x900.jpg";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:17:"logo2-550x550.jpg";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:17:"logo2-480x680.jpg";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:23:"services_featured-image";a:4:{s:4:"file";s:18:"logo2-1000x714.jpg";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:17:"logo2-620x340.jpg";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog-single-image";a:4:{s:4:"file";s:18:"logo2-1240x550.jpg";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:17:"logo2-450x450.jpg";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(324, 80, '_wp_attached_file', '2016/11/logo3.jpg'),
(325, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:195;s:6:"height";i:177;s:4:"file";s:17:"2016/11/logo3.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"logo3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:17:"logo3-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"custom-image-1";a:4:{s:4:"file";s:17:"logo3-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:18:"logo3-1000x900.jpg";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:17:"logo3-550x550.jpg";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:17:"logo3-480x680.jpg";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:23:"services_featured-image";a:4:{s:4:"file";s:18:"logo3-1000x714.jpg";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:17:"logo3-620x340.jpg";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog-single-image";a:4:{s:4:"file";s:18:"logo3-1240x550.jpg";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:17:"logo3-450x450.jpg";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(326, 81, '_wp_attached_file', '2016/11/logo4.jpg'),
(327, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:219;s:6:"height";i:34;s:4:"file";s:17:"2016/11/logo4.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"logo4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:25:"portfolio-thumbnail-image";a:4:{s:4:"file";s:17:"logo4-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"custom-image-1";a:4:{s:4:"file";s:17:"logo4-600x480.jpg";s:5:"width";i:600;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-2";a:4:{s:4:"file";s:18:"logo4-1000x900.jpg";s:5:"width";i:1000;s:6:"height";i:900;s:9:"mime-type";s:10:"image/jpeg";}s:18:"rnd_custom-image-3";a:4:{s:4:"file";s:17:"logo4-550x550.jpg";s:5:"width";i:550;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:20:"rnd_featured-image-1";a:4:{s:4:"file";s:17:"logo4-480x680.jpg";s:5:"width";i:480;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:23:"services_featured-image";a:4:{s:4:"file";s:18:"logo4-1000x714.jpg";s:5:"width";i:1000;s:6:"height";i:714;s:9:"mime-type";s:10:"image/jpeg";}s:20:"blog-thumbnail-image";a:4:{s:4:"file";s:17:"logo4-620x340.jpg";s:5:"width";i:620;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog-single-image";a:4:{s:4:"file";s:18:"logo4-1240x550.jpg";s:5:"width";i:1240;s:6:"height";i:550;s:9:"mime-type";s:10:"image/jpeg";}s:21:"press-thumbnail-image";a:4:{s:4:"file";s:17:"logo4-450x450.jpg";s:5:"width";i:450;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(328, 82, 'sub_heading', '"We work with The Movers, The Shakers and The Wave Makers."'),
(329, 82, '_sub_heading', 'field_581c375c67191'),
(330, 82, 'logos_0_logo', '78'),
(331, 82, '_logos_0_logo', 'field_581c377f67193'),
(332, 82, 'logos_1_logo', '79'),
(333, 82, '_logos_1_logo', 'field_581c377f67193'),
(334, 82, 'logos_2_logo', '80'),
(335, 82, '_logos_2_logo', 'field_581c377f67193'),
(336, 82, 'logos_3_logo', '81'),
(337, 82, '_logos_3_logo', 'field_581c377f67193'),
(338, 82, 'logos', '4'),
(339, 82, '_logos', 'field_581c376e67192'),
(340, 25, 'sub_heading', '"We work with The Movers, The Shakers and The Wave Makers."'),
(341, 25, '_sub_heading', 'field_581c375c67191'),
(342, 25, 'logos_0_logo', '78'),
(343, 25, '_logos_0_logo', 'field_581c377f67193'),
(344, 25, 'logos_1_logo', '79'),
(345, 25, '_logos_1_logo', 'field_581c377f67193'),
(346, 25, 'logos_2_logo', '80'),
(347, 25, '_logos_2_logo', 'field_581c377f67193'),
(348, 25, 'logos_3_logo', '81'),
(349, 25, '_logos_3_logo', 'field_581c377f67193'),
(350, 25, 'logos', '4'),
(351, 25, '_logos', 'field_581c376e67192'),
(352, 84, '_edit_last', '1'),
(353, 84, 'field_581c584e9a883', 'a:14:{s:3:"key";s:19:"field_581c584e9a883";s:5:"label";s:11:"Sub heading";s:4:"name";s:11:"sub_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(354, 84, 'field_581c58699a884', 'a:13:{s:3:"key";s:19:"field_581c58699a884";s:5:"label";s:5:"Quote";s:4:"name";s:5:"quote";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(357, 84, 'position', 'normal'),
(358, 84, 'layout', 'no_box'),
(359, 84, 'hide_on_screen', ''),
(360, 84, 'my_meta_box_check', 'off'),
(361, 84, '_edit_lock', '1478254217:1'),
(362, 84, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"10";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(363, 85, 'sub_heading', 'I ain’t no hollaback girl (ok actully, I am)'),
(364, 85, '_sub_heading', 'field_581c584e9a883'),
(365, 85, 'quote', '"BE SO GOOD THEY CAN''T IGNORE YOU, GO ON ."'),
(366, 85, '_quote', 'field_581c58699a884'),
(367, 10, 'sub_heading', 'I ain’t no hollaback girl (ok actully, I am)'),
(368, 10, '_sub_heading', 'field_581c584e9a883'),
(369, 10, 'quote', '"BE SO GOOD THEY CAN''T IGNORE YOU, GO ON ."'),
(370, 10, '_quote', 'field_581c58699a884'),
(371, 86, '_form', '<div class="col-sm-5 no-pad">\n[text* name placeholder "Name"]\n[email* email placeholder "Email"]\n[tel phone placeholder "Phone"]\n</div>\n<div class="col-sm-5 no-pad">\n[textarea message placeholder "Message"]\n</div>\n<div class="col-sm-2 no-pad">\n[submit "Submit"]\n</div>'),
(372, 86, '_mail', 'a:8:{s:7:"subject";s:24:"Ainslie "[your-subject]"";s:6:"sender";s:37:"[your-name] <pankaj@builtbyblank.com>";s:4:"body";s:169:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Ainslie (http://localhost/ainslie)";s:9:"recipient";s:23:"pankaj@builtbyblank.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(373, 86, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:24:"Ainslie "[your-subject]"";s:6:"sender";s:33:"Ainslie <pankaj@builtbyblank.com>";s:4:"body";s:111:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Ainslie (http://localhost/ainslie)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:33:"Reply-To: pankaj@builtbyblank.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(374, 86, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(375, 86, '_additional_settings', ''),
(376, 86, '_locale', 'en_US'),
(385, 86, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:34:"The %name% field value is invalid.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:90:"http://contactform7.com/configuration-errors/#mail.additional_headers:error_invalid_syntax";}}}}'),
(386, 69, 'my_meta_box_check', 'off'),
(387, 90, 'my_meta_box_check', 'off'),
(388, 90, '_dp_original', '69'),
(389, 91, 'my_meta_box_check', 'off'),
(391, 91, '_dp_original', '90'),
(392, 92, 'my_meta_box_check', 'off'),
(394, 92, '_dp_original', '91'),
(395, 92, '_edit_lock', '1478496314:1'),
(396, 91, '_edit_lock', '1478524018:1'),
(397, 90, '_edit_lock', '1478524017:1'),
(398, 92, '_edit_last', '1'),
(399, 91, '_edit_last', '1'),
(400, 59, 'field_582024b90c318', 'a:13:{s:3:"key";s:19:"field_582024b90c318";s:5:"label";s:5:"Quote";s:4:"name";s:5:"quote";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(401, 59, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"4";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(402, 95, 'sub_heading', 'ABOUT AINSLIE'),
(403, 95, '_sub_heading', 'field_581b23f040ba2'),
(404, 95, 'quote', '"BE SO GOOD THEY CAN''T IGNORE YOU, GO ON ."'),
(405, 95, '_quote', 'field_582024b90c318'),
(406, 4, 'quote', '"BE SO GOOD THEY CAN''T IGNORE YOU, GO ON ."'),
(407, 4, '_quote', 'field_582024b90c318'),
(408, 96, '_menu_item_type', 'custom'),
(409, 96, '_menu_item_menu_item_parent', '0'),
(410, 96, '_menu_item_object_id', '96'),
(411, 96, '_menu_item_object', 'custom'),
(412, 96, '_menu_item_target', ''),
(413, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(414, 96, '_menu_item_xfn', ''),
(415, 96, '_menu_item_url', '#little-fun');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-11-02 10:07:17', '2016-11-02 10:07:17', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-11-02 10:07:17', '2016-11-02 10:07:17', '', 0, 'http://localhost/ainslie/?p=1', 0, 'post', '', 1),
(2, 1, '2016-11-02 10:07:17', '2016-11-02 10:07:17', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/ainslie/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2016-11-03 07:11:31', '2016-11-03 07:11:31', '', 0, 'http://localhost/ainslie/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-11-02 10:07:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-11-02 10:07:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/ainslie/?p=3', 0, 'post', '', 0),
(4, 1, '2016-11-03 07:03:26', '2016-11-03 07:03:26', 'This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'about', '<h3> This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history.</h3>\r\n<p>This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips,</p>', 'publish', 'closed', 'closed', '', 'about', '', '', '2016-11-07 06:54:39', '2016-11-07 06:54:39', '', 0, 'http://localhost/ainslie/?page_id=4', 0, 'page', '', 0),
(5, 1, '2016-11-03 07:03:26', '2016-11-03 07:03:26', '', 'about', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-11-03 07:03:26', '2016-11-03 07:03:26', '', 4, 'http://localhost/ainslie/2016/11/03/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2016-11-03 07:04:25', '2016-11-03 07:04:25', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-11-03 07:04:25', '2016-11-03 07:04:25', '', 0, 'http://localhost/ainslie/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-11-03 07:04:25', '2016-11-03 07:04:25', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-11-03 07:04:25', '2016-11-03 07:04:25', '', 6, 'http://localhost/ainslie/2016/11/03/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-11-03 07:04:38', '2016-11-03 07:04:38', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-11-03 07:04:38', '2016-11-03 07:04:38', '', 0, 'http://localhost/ainslie/?page_id=8', 0, 'page', '', 0),
(9, 1, '2016-11-03 07:04:38', '2016-11-03 07:04:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-11-03 07:04:38', '2016-11-03 07:04:38', '', 8, 'http://localhost/ainslie/2016/11/03/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-11-03 07:05:09', '2016-11-03 07:05:09', 'Maybe you’re steering the ship of a dynamic, trailblazing brand ready to launch with a bang or you could be at the helm of an already established business in need of a fresh injection of wow. We would love to collaborate with you to aid in boosting your brand into the realms of success and connecting it with relevant audiences. We are focused on working with passionate individuals who dream and do. Give us a holla if you fancy.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-11-04 09:51:12', '2016-11-04 09:51:12', '', 0, 'http://localhost/ainslie/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-11-03 07:05:09', '2016-11-03 07:05:09', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-11-03 07:05:09', '2016-11-03 07:05:09', '', 10, 'http://localhost/ainslie/2016/11/03/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-11-03 07:05:30', '2016-11-03 07:05:30', '', 'Press', '', 'trash', 'closed', 'closed', '', 'press__trashed', '', '', '2016-11-03 07:11:46', '2016-11-03 07:11:46', '', 0, 'http://localhost/ainslie/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-11-03 07:05:30', '2016-11-03 07:05:30', '', 'Press', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-11-03 07:05:30', '2016-11-03 07:05:30', '', 12, 'http://localhost/ainslie/2016/11/03/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-11-03 07:06:18', '2016-11-03 07:06:18', '<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nsciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos,\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nC. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, quaOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2016-11-03 07:06:18', '2016-11-03 07:06:18', '', 0, 'http://localhost/ainslie/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-11-03 07:06:18', '2016-11-03 07:06:18', '<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nsciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos,\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nC. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, quaOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-11-03 07:06:18', '2016-11-03 07:06:18', '', 14, 'http://localhost/ainslie/2016/11/03/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-11-03 07:06:52', '2016-11-03 07:06:52', '<div class="terms-privacy-section">\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nsciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos,\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nC. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, quaOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n</div>', 'Term &amp; Conditions', '', 'publish', 'closed', 'closed', '', 'term-conditions', '', '', '2016-11-03 07:06:52', '2016-11-03 07:06:52', '', 0, 'http://localhost/ainslie/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-11-03 07:06:52', '2016-11-03 07:06:52', '<div class="terms-privacy-section">\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nsciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos,\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nC. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, quaOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-sm-4">\r\n<h2>THIS IS A SUB-HEADING</h2>\r\n</div>\r\n<div class="col-sm-8">\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua\r\n\r\n</div>\r\n</div>\r\n</div>', 'Term &amp; Conditions', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-11-03 07:06:52', '2016-11-03 07:06:52', '', 16, 'http://localhost/ainslie/2016/11/03/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-11-03 07:07:30', '2016-11-03 07:07:30', '', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2016-11-03 07:07:30', '2016-11-03 07:07:30', '', 0, 'http://localhost/ainslie/?page_id=18', 0, 'page', '', 0),
(19, 1, '2016-11-03 07:07:30', '2016-11-03 07:07:30', '', 'Testimonials', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2016-11-03 07:07:30', '2016-11-03 07:07:30', '', 18, 'http://localhost/ainslie/2016/11/03/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-11-03 07:11:31', '2016-11-03 07:11:31', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/ainslie/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-11-03 07:11:31', '2016-11-03 07:11:31', '', 2, 'http://localhost/ainslie/2016/11/03/2-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-11-03 07:24:30', '2016-11-03 07:24:30', '', 'Expertise', '', 'publish', 'closed', 'closed', '', 'expertise', '', '', '2016-11-04 06:26:24', '2016-11-04 06:26:24', '', 0, 'http://localhost/ainslie/?page_id=21', 0, 'page', '', 0),
(22, 1, '2016-11-03 07:24:30', '2016-11-03 07:24:30', '', 'Expertise', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-11-03 07:24:30', '2016-11-03 07:24:30', '', 21, 'http://localhost/ainslie/2016/11/03/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-11-03 07:24:45', '2016-11-03 07:24:45', '', 'A little fun', '', 'publish', 'closed', 'closed', '', 'a-little-fun', '', '', '2016-11-03 07:24:45', '2016-11-03 07:24:45', '', 0, 'http://localhost/ainslie/?page_id=23', 0, 'page', '', 0),
(24, 1, '2016-11-03 07:24:45', '2016-11-03 07:24:45', '', 'A little fun', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-11-03 07:24:45', '2016-11-03 07:24:45', '', 23, 'http://localhost/ainslie/2016/11/03/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-11-03 07:25:43', '2016-11-03 07:25:43', '', 'who we work with', '', 'publish', 'closed', 'closed', '', 'who-we-work-with', '', '', '2016-11-04 07:29:41', '2016-11-04 07:29:41', '', 0, 'http://localhost/ainslie/?page_id=25', 0, 'page', '', 0),
(26, 1, '2016-11-03 07:25:43', '2016-11-03 07:25:43', '', 'who we work with', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-11-03 07:25:43', '2016-11-03 07:25:43', '', 25, 'http://localhost/ainslie/2016/11/03/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2016-11-03 07:27:30', '2016-11-03 07:27:30', '<h3>Here is where you can put an opening statement about your brand. A great area to explore your brand values and lead into your services which are explored below.</h3>\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'Services', '', 'publish', 'closed', 'closed', '', 'services-page', '', '', '2016-11-03 13:00:50', '2016-11-03 13:00:50', '', 0, 'http://localhost/ainslie/?page_id=27', 0, 'page', '', 0),
(28, 1, '2016-11-03 07:27:30', '2016-11-03 07:27:30', '', 'Services', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-11-03 07:27:30', '2016-11-03 07:27:30', '', 27, 'http://localhost/ainslie/2016/11/03/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-11-03 07:28:25', '2016-11-03 07:28:25', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2016-11-07 07:58:34', '2016-11-07 07:58:34', '', 0, 'http://localhost/ainslie/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2016-11-03 07:28:26', '2016-11-03 07:28:26', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2016-11-07 07:58:34', '2016-11-07 07:58:34', '', 0, 'http://localhost/ainslie/?p=30', 5, 'nav_menu_item', '', 0),
(32, 1, '2016-11-03 07:28:26', '2016-11-03 07:28:26', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2016-11-07 07:58:34', '2016-11-07 07:58:34', '', 0, 'http://localhost/ainslie/?p=32', 4, 'nav_menu_item', '', 0),
(33, 1, '2016-11-03 07:28:26', '2016-11-03 07:28:26', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2016-11-07 07:58:34', '2016-11-07 07:58:34', '', 0, 'http://localhost/ainslie/?p=33', 7, 'nav_menu_item', '', 0),
(34, 1, '2016-11-03 07:28:27', '2016-11-03 07:28:27', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2016-11-07 07:58:34', '2016-11-07 07:58:34', '', 0, 'http://localhost/ainslie/?p=34', 8, 'nav_menu_item', '', 0),
(35, 1, '2016-11-03 07:28:26', '2016-11-03 07:28:26', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2016-11-07 07:58:34', '2016-11-07 07:58:34', '', 0, 'http://localhost/ainslie/?p=35', 6, 'nav_menu_item', '', 0),
(36, 1, '2016-11-03 07:28:25', '2016-11-03 07:28:25', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2016-11-07 07:58:33', '2016-11-07 07:58:33', '', 0, 'http://localhost/ainslie/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2016-11-03 07:30:24', '2016-11-03 07:30:24', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2016-11-03 09:16:59', '2016-11-03 09:16:59', '', 0, 'http://localhost/ainslie/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2016-11-03 07:30:24', '2016-11-03 07:30:24', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2016-11-03 09:16:59', '2016-11-03 09:16:59', '', 0, 'http://localhost/ainslie/?p=38', 4, 'nav_menu_item', '', 0),
(39, 1, '2016-11-03 07:30:24', '2016-11-03 07:30:24', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2016-11-03 09:16:59', '2016-11-03 09:16:59', '', 0, 'http://localhost/ainslie/?p=39', 3, 'nav_menu_item', '', 0),
(40, 1, '2016-11-03 07:30:24', '2016-11-03 07:30:24', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2016-11-03 09:16:59', '2016-11-03 09:16:59', '', 0, 'http://localhost/ainslie/?p=40', 6, 'nav_menu_item', '', 0),
(41, 1, '2016-11-03 07:30:24', '2016-11-03 07:30:24', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2016-11-03 09:16:59', '2016-11-03 09:16:59', '', 0, 'http://localhost/ainslie/?p=41', 8, 'nav_menu_item', '', 0),
(42, 1, '2016-11-03 07:30:24', '2016-11-03 07:30:24', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2016-11-03 09:16:59', '2016-11-03 09:16:59', '', 0, 'http://localhost/ainslie/?p=42', 7, 'nav_menu_item', '', 0),
(43, 1, '2016-11-03 07:30:24', '2016-11-03 07:30:24', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2016-11-03 09:16:59', '2016-11-03 09:16:59', '', 0, 'http://localhost/ainslie/?p=43', 5, 'nav_menu_item', '', 0),
(44, 1, '2016-11-03 07:30:24', '2016-11-03 07:30:24', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2016-11-03 09:16:59', '2016-11-03 09:16:59', '', 0, 'http://localhost/ainslie/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2016-11-03 07:31:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-03 07:31:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/ainslie/?post_type=wssf_social_feed&p=45', 0, 'wssf_social_feed', '', 0),
(46, 1, '2016-11-03 07:56:24', '2016-11-03 07:56:24', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2016-11-03 07:56:24', '2016-11-03 07:56:24', '', 0, 'http://localhost/ainslie/wp-content/uploads/2016/11/logo.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2016-11-03 08:00:02', '2016-11-03 08:00:02', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2016-11-03 08:00:02', '2016-11-03 08:00:02', '', 0, 'http://localhost/ainslie/wp-content/uploads/2016/11/logo-1.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2016-11-03 08:01:59', '2016-11-03 08:01:59', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-3', '', '', '2016-11-03 08:01:59', '2016-11-03 08:01:59', '', 0, 'http://localhost/ainslie/wp-content/uploads/2016/11/logo-2.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2016-11-03 09:26:15', '2016-11-03 09:26:15', '', 'sign-up-bg', '', 'inherit', 'open', 'closed', '', 'sign-up-bg', '', '', '2016-11-03 09:26:15', '2016-11-03 09:26:15', '', 0, 'http://localhost/ainslie/wp-content/uploads/2016/11/sign-up-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2016-11-03 09:26:36', '2016-11-03 09:26:36', '', 'sign-up-bg', '', 'inherit', 'open', 'closed', '', 'sign-up-bg-2', '', '', '2016-11-03 09:26:36', '2016-11-03 09:26:36', '', 0, 'http://localhost/ainslie/wp-content/uploads/2016/11/sign-up-bg-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2016-11-03 09:28:09', '2016-11-03 09:28:09', '', 'sign-up-bg', '', 'inherit', 'open', 'closed', '', 'sign-up-bg-3', '', '', '2016-11-03 09:28:09', '2016-11-03 09:28:09', '', 0, 'http://localhost/ainslie/wp-content/uploads/2016/11/sign-up-bg-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2016-11-03 11:26:19', '2016-11-03 11:26:19', 'This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'about', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-11-03 11:26:19', '2016-11-03 11:26:19', '', 4, 'http://localhost/ainslie/2016/11/03/4-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2016-11-03 11:28:06', '2016-11-03 11:28:06', '', 'about', '', 'inherit', 'open', 'closed', '', 'about-2', '', '', '2016-11-03 11:28:06', '2016-11-03 11:28:06', '', 4, 'http://localhost/ainslie/wp-content/uploads/2016/11/about.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2016-11-03 11:32:00', '2016-11-03 11:32:00', '', 'header-bg-1', '', 'inherit', 'open', 'closed', '', 'header-bg-1', '', '', '2016-11-03 11:32:00', '2016-11-03 11:32:00', '', 0, 'http://localhost/ainslie/wp-content/uploads/2016/11/header-bg-1.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2016-11-03 11:32:33', '2016-11-03 11:32:33', '', 'texture-bg', '', 'inherit', 'open', 'closed', '', 'texture-bg', '', '', '2016-11-03 11:32:33', '2016-11-03 11:32:33', '', 0, 'http://localhost/ainslie/wp-content/uploads/2016/11/texture-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2016-11-03 11:35:11', '2016-11-03 11:35:11', '', 'white-marble-2048-2', '', 'inherit', 'open', 'closed', '', 'white-marble-2048-2', '', '', '2016-11-03 11:35:11', '2016-11-03 11:35:11', '', 0, 'http://localhost/ainslie/wp-content/uploads/2016/11/white-marble-2048-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2016-11-03 11:36:52', '2016-11-03 11:36:52', 'This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'about', '<h3> This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history.</h3>', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-11-03 11:36:52', '2016-11-03 11:36:52', '', 4, 'http://localhost/ainslie/2016/11/03/4-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2016-11-03 11:41:43', '2016-11-03 11:41:43', 'This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'about', '<h3> This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history.</h3>\r\n<p>This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips,</p>', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-11-03 11:41:43', '2016-11-03 11:41:43', '', 4, 'http://localhost/ainslie/2016/11/03/4-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2016-11-03 12:07:27', '2016-11-03 12:07:27', '', 'about fields', '', 'publish', 'closed', 'closed', '', 'acf_about-fields', '', '', '2016-11-07 06:52:57', '2016-11-07 06:52:57', '', 0, 'http://localhost/ainslie/?post_type=acf&#038;p=59', 0, 'acf', '', 0),
(60, 1, '2016-11-03 11:51:25', '2016-11-03 11:51:25', '', 'pattern', '', 'inherit', 'open', 'closed', '', 'pattern', '', '', '2016-11-03 11:51:25', '2016-11-03 11:51:25', '', 0, 'http://localhost/ainslie/wp-content/uploads/2016/11/pattern.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2016-11-03 11:59:29', '2016-11-03 11:59:29', '', 'pattern', '', 'inherit', 'open', 'closed', '', 'pattern-2', '', '', '2016-11-03 11:59:29', '2016-11-03 11:59:29', '', 0, 'http://localhost/ainslie/wp-content/uploads/2016/11/pattern.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2016-11-03 12:00:20', '2016-11-03 12:00:20', '', 'header-bg-1', '', 'inherit', 'open', 'closed', '', 'header-bg-1-2', '', '', '2016-11-03 12:00:20', '2016-11-03 12:00:20', '', 0, 'http://localhost/ainslie/wp-content/uploads/2016/11/header-bg-1-1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(63, 1, '2016-11-03 12:11:08', '2016-11-03 12:11:08', 'This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'about', '<h3> This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history.</h3>\r\n<p>This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips,</p>', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-11-03 12:11:08', '2016-11-03 12:11:08', '', 4, 'http://localhost/ainslie/2016/11/03/4-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2016-11-03 12:24:46', '2016-11-03 12:24:46', 'This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'about', '<h3> This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history.</h3>\r\n<p>This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips,</p>', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-11-03 12:24:46', '2016-11-03 12:24:46', '', 4, 'http://localhost/ainslie/2016/11/03/4-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2016-11-03 12:25:02', '2016-11-03 12:25:02', 'This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'about', '<h3> This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history.</h3>\r\n<p>This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips,</p>', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-11-03 12:25:02', '2016-11-03 12:25:02', '', 4, 'http://localhost/ainslie/2016/11/03/4-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2016-11-03 12:41:45', '2016-11-03 12:41:45', '<h3>Here is where you can put an opening statement about your brand. A great area to explore your brand values and lead into your services which are explored below.</h3>\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'Services', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2016-11-03 12:41:45', '2016-11-03 12:41:45', '', 27, 'http://localhost/ainslie/2016/11/03/27-autosave-v1/', 0, 'revision', '', 0),
(67, 1, '2016-11-03 12:41:54', '2016-11-03 12:41:54', '', 'service-img', '', 'inherit', 'open', 'closed', '', 'service-img', '', '', '2016-11-03 12:41:54', '2016-11-03 12:41:54', '', 27, 'http://localhost/ainslie/wp-content/uploads/2016/11/service-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2016-11-03 12:42:07', '2016-11-03 12:42:07', '<h3>Here is where you can put an opening statement about your brand. A great area to explore your brand values and lead into your services which are explored below.</h3>\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'Services', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-11-03 12:42:07', '2016-11-03 12:42:07', '', 27, 'http://localhost/ainslie/2016/11/03/27-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2016-11-07 05:24:43', '2016-11-07 05:24:43', '<h2>SERVICE ONE PART A $2000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n<h2>SERVICE ONE PART B $5000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'Service one', '<h3>This is a great space to let your audience know what your brand services. What do you specialise in? What’s special about your brand and what you do? </h3>\r\n\r\nThis is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business. This adds a personal touch to your brand and gives visitors an insight into the inner workings of your brand on a deeper level. This is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business.', 'publish', 'closed', 'closed', '', 'service-one', '', '', '2016-11-07 05:25:23', '2016-11-07 05:25:23', '', 0, 'http://localhost/ainslie/?post_type=services&#038;p=69', 1, 'services', '', 0),
(70, 1, '2016-11-03 12:59:06', '2016-11-03 12:59:06', '', 'Services fields', '', 'publish', 'closed', 'closed', '', 'acf_services-fields', '', '', '2016-11-03 12:59:06', '2016-11-03 12:59:06', '', 0, 'http://localhost/ainslie/?post_type=acf&#038;p=70', 0, 'acf', '', 0),
(71, 1, '2016-11-03 13:00:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-03 13:00:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/ainslie/?post_type=services&p=71', 0, 'services', '', 0),
(72, 1, '2016-11-03 13:00:50', '2016-11-03 13:00:50', '<h3>Here is where you can put an opening statement about your brand. A great area to explore your brand values and lead into your services which are explored below.</h3>\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'Services', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-11-03 13:00:50', '2016-11-03 13:00:50', '', 27, 'http://localhost/ainslie/2016/11/03/27-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2016-11-04 06:10:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-04 06:10:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/ainslie/?post_type=acf&p=73', 0, 'acf', '', 0),
(74, 1, '2016-11-04 06:13:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-04 06:13:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/ainslie/?post_type=acf&p=74', 0, 'acf', '', 0),
(75, 1, '2016-11-04 06:17:18', '2016-11-04 06:17:18', '', 'Expertise fields', '', 'publish', 'closed', 'closed', '', 'acf_expertise-fields', '', '', '2016-11-04 06:17:18', '2016-11-04 06:17:18', '', 0, 'http://localhost/ainslie/?post_type=acf&#038;p=75', 0, 'acf', '', 0),
(76, 1, '2016-11-04 06:20:57', '2016-11-04 06:20:57', '', 'Expertise', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-11-04 06:20:57', '2016-11-04 06:20:57', '', 21, 'http://localhost/ainslie/2016/11/04/21-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2016-11-04 07:24:03', '2016-11-04 07:24:03', '', 'Who we work with fields', '', 'publish', 'closed', 'closed', '', 'acf_who-we-work-with-fields', '', '', '2016-11-04 07:26:06', '2016-11-04 07:26:06', '', 0, 'http://localhost/ainslie/?post_type=acf&#038;p=77', 0, 'acf', '', 0),
(78, 1, '2016-11-04 07:28:58', '2016-11-04 07:28:58', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1', '', '', '2016-11-04 07:28:58', '2016-11-04 07:28:58', '', 25, 'http://localhost/ainslie/wp-content/uploads/2016/11/logo1.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2016-11-04 07:29:09', '2016-11-04 07:29:09', '', 'logo2', '', 'inherit', 'open', 'closed', '', 'logo2', '', '', '2016-11-04 07:29:09', '2016-11-04 07:29:09', '', 25, 'http://localhost/ainslie/wp-content/uploads/2016/11/logo2.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2016-11-04 07:29:20', '2016-11-04 07:29:20', '', 'logo3', '', 'inherit', 'open', 'closed', '', 'logo3', '', '', '2016-11-04 07:29:20', '2016-11-04 07:29:20', '', 25, 'http://localhost/ainslie/wp-content/uploads/2016/11/logo3.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2016-11-04 07:29:30', '2016-11-04 07:29:30', '', 'logo4', '', 'inherit', 'open', 'closed', '', 'logo4', '', '', '2016-11-04 07:29:30', '2016-11-04 07:29:30', '', 25, 'http://localhost/ainslie/wp-content/uploads/2016/11/logo4.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2016-11-04 07:29:33', '2016-11-04 07:29:33', '', 'who we work with', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2016-11-04 07:29:33', '2016-11-04 07:29:33', '', 25, 'http://localhost/ainslie/2016/11/04/25-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2016-11-04 09:41:07', '2016-11-04 09:41:07', 'Maybe you’re steering the ship of a dynamic, trailblazing brand ready to launch with a bang or you could be at the helm of an already established business in need of a fresh injection of wow. We would love to collaborate with you to aid in boosting your brand into the realms of success and connecting it with relevant audiences. We are focused on working with passionate individuals who dream and do. Give us a holla if you fancy.', 'Contact', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-11-04 09:41:07', '2016-11-04 09:41:07', '', 10, 'http://localhost/ainslie/2016/11/04/10-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2016-11-04 09:48:00', '2016-11-04 09:48:00', '', 'Contact fields', '', 'publish', 'closed', 'closed', '', 'acf_contact-fields', '', '', '2016-11-04 09:50:44', '2016-11-04 09:50:44', '', 0, 'http://localhost/ainslie/?post_type=acf&#038;p=84', 0, 'acf', '', 0),
(85, 1, '2016-11-04 09:51:12', '2016-11-04 09:51:12', 'Maybe you’re steering the ship of a dynamic, trailblazing brand ready to launch with a bang or you could be at the helm of an already established business in need of a fresh injection of wow. We would love to collaborate with you to aid in boosting your brand into the realms of success and connecting it with relevant audiences. We are focused on working with passionate individuals who dream and do. Give us a holla if you fancy.', 'Contact', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-11-04 09:51:12', '2016-11-04 09:51:12', '', 10, 'http://localhost/ainslie/2016/11/04/10-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2016-11-04 10:42:45', '2016-11-04 10:42:45', '<div class="col-sm-5 no-pad">\r\n[text* name placeholder "Name"]\r\n[email* email placeholder "Email"]\r\n[tel phone placeholder "Phone"]\r\n</div>\r\n<div class="col-sm-5 no-pad">\r\n[textarea message placeholder "Message"]\r\n</div>\r\n<div class="col-sm-2 no-pad">\r\n[submit "Submit"]\r\n</div>\nAinslie "[your-subject]"\n[your-name] <pankaj@builtbyblank.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Ainslie (http://localhost/ainslie)\npankaj@builtbyblank.com\nReply-To: [your-email]\n\n\n\n\nAinslie "[your-subject]"\nAinslie <pankaj@builtbyblank.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Ainslie (http://localhost/ainslie)\n[your-email]\nReply-To: pankaj@builtbyblank.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-11-04 11:01:33', '2016-11-04 11:01:33', '', 0, 'http://localhost/ainslie/?post_type=wpcf7_contact_form&#038;p=86', 0, 'wpcf7_contact_form', '', 0),
(87, 1, '2016-11-07 05:24:43', '2016-11-07 05:24:43', '<h2>SERVICE ONE PART A $2000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n<h2>SERVICE ONE PART B $5000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'Service one', '<h3>This is a great space to let your audience know what your brand services. What do you specialise in? What’s special about your brand and what you do? </h3>', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-11-07 05:24:43', '2016-11-07 05:24:43', '', 69, 'http://localhost/ainslie/2016/11/07/69-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2016-11-07 05:25:23', '2016-11-07 05:25:23', '<h2>SERVICE ONE PART A $2000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n<h2>SERVICE ONE PART B $5000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'Service one', '<h3>This is a great space to let your audience know what your brand services. What do you specialise in? What’s special about your brand and what you do? </h3>\r\n\r\nThis is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business. This adds a personal touch to your brand and gives visitors an insight into the inner workings of your brand on a deeper level. This is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business.', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-11-07 05:25:23', '2016-11-07 05:25:23', '', 69, 'http://localhost/ainslie/2016/11/07/69-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2016-11-07 05:25:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-07 05:25:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/ainslie/?post_type=services&p=89', 0, 'services', '', 0),
(90, 1, '2016-11-07 05:27:15', '0000-00-00 00:00:00', '<h2>SERVICE ONE PART A $2000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n<h2>SERVICE ONE PART B $5000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'Service one', '<h3>This is a great space to let your audience know what your brand services. What do you specialise in? What’s special about your brand and what you do? </h3>\r\n\r\nThis is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business. This adds a personal touch to your brand and gives visitors an insight into the inner workings of your brand on a deeper level. This is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business.', 'draft', 'closed', 'closed', '', '', '', '', '2016-11-07 05:27:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/ainslie/?post_type=services&p=90', 4, 'services', '', 0),
(91, 1, '2016-11-07 05:27:44', '2016-11-07 05:27:44', '<h2>SERVICE ONE PART A $2000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n<h2>SERVICE ONE PART B $5000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'Service three', '<h3>This is a great space to let your audience know what your brand services. What do you specialise in? What’s special about your brand and what you do? </h3>\r\n\r\nThis is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business. This adds a personal touch to your brand and gives visitors an insight into the inner workings of your brand on a deeper level. This is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business.', 'publish', 'closed', 'closed', '', 'service-three', '', '', '2016-11-07 05:27:44', '2016-11-07 05:27:44', '', 0, 'http://localhost/ainslie/?post_type=services&#038;p=91', 3, 'services', '', 0),
(92, 1, '2016-11-07 05:27:36', '2016-11-07 05:27:36', '<h2>SERVICE ONE PART A $2000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n<h2>SERVICE ONE PART B $5000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'Service two', '<h3>This is a great space to let your audience know what your brand services. What do you specialise in? What’s special about your brand and what you do? </h3>\r\n\r\nThis is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business. This adds a personal touch to your brand and gives visitors an insight into the inner workings of your brand on a deeper level. This is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business.', 'publish', 'closed', 'closed', '', 'service-two', '', '', '2016-11-07 05:27:36', '2016-11-07 05:27:36', '', 0, 'http://localhost/ainslie/?post_type=services&#038;p=92', 2, 'services', '', 0),
(93, 1, '2016-11-07 05:27:36', '2016-11-07 05:27:36', '<h2>SERVICE ONE PART A $2000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n<h2>SERVICE ONE PART B $5000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'Service two', '<h3>This is a great space to let your audience know what your brand services. What do you specialise in? What’s special about your brand and what you do? </h3>\r\n\r\nThis is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business. This adds a personal touch to your brand and gives visitors an insight into the inner workings of your brand on a deeper level. This is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business.', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2016-11-07 05:27:36', '2016-11-07 05:27:36', '', 92, 'http://localhost/ainslie/2016/11/07/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2016-11-07 05:27:44', '2016-11-07 05:27:44', '<h2>SERVICE ONE PART A $2000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n<h2>SERVICE ONE PART B $5000</h2>\r\nmorum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'Service three', '<h3>This is a great space to let your audience know what your brand services. What do you specialise in? What’s special about your brand and what you do? </h3>\r\n\r\nThis is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business. This adds a personal touch to your brand and gives visitors an insight into the inner workings of your brand on a deeper level. This is a great space to let your audience know what your brand services. What do you specialise in? What''s special about your brand and what you do? What do you hope to achieve through your business.', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2016-11-07 05:27:44', '2016-11-07 05:27:44', '', 91, 'http://localhost/ainslie/2016/11/07/91-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2016-11-07 06:54:39', '2016-11-07 06:54:39', 'This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella\r\n\r\nOximandic ilica; inempos bonsuli conultinpro incuteatis in simus loca; nulina, ne que conihilicus, quemusq uonessus facem, nost? O tem pratis invoctam dit. Ulla maio averurni ta non vilium pos, C. Valicurs commo morum eo manu mantis cupicap estisuam. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips, morem, qua noverum conul consi sum opublicae mortique in patur utella', 'about', '<h3> This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history.</h3>\r\n<p>This is where you would write your brand story and a little bit about yourself. People love to know how your business started and why, what inspires you and what lights your fire. You can also include aspects of the business such as location, mission statement and brand history. Si perus; nonsule ropopop onverfe sciactodium pere consum quis. M. Cuperfe resigit, demprim urips,</p>', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-11-07 06:54:39', '2016-11-07 06:54:39', '', 4, 'http://localhost/ainslie/2016/11/07/4-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2016-11-07 07:58:34', '2016-11-07 07:58:34', '', 'A little fun', '', 'publish', 'closed', 'closed', '', 'a-little-fun', '', '', '2016-11-07 07:58:34', '2016-11-07 07:58:34', '', 0, 'http://localhost/ainslie/?p=96', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'Header menu', 'header-menu', 0, 0),
(3, 'Footer menu', 'footer-menu', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(29, 2, 0),
(30, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(37, 3, 0),
(38, 3, 0),
(39, 3, 0),
(40, 3, 0),
(41, 3, 0),
(42, 3, 0),
(43, 3, 0),
(44, 3, 0),
(96, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ainslie'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"31976be976818a8ca9c95e8d74d2a93dca81da61ceafb39aa82d3c3823d92ba8";a:4:{s:10:"expiration";i:1478667696;s:2:"ip";s:3:"::1";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0";s:5:"login";i:1478494896;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:8:{i:0;s:22:"add-post-type-services";i:1;s:20:"add-post-type-slider";i:2;s:25:"add-post-type-testimonial";i:3;s:19:"add-post-type-press";i:4;s:20:"add-post-type-nf_sub";i:5;s:30:"add-post-type-wssf_social_feed";i:6;s:12:"add-post_tag";i:7;s:15:"add-post_format";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&imgsize=full&editor=html'),
(20, 1, 'wp_user-settings-time', '1478496279'),
(21, 1, 'closedpostboxes_page', 'a:1:{i:0;s:11:"postexcerpt";}'),
(22, 1, 'metaboxhidden_page', 'a:10:{i:0;s:6:"acf_59";i:1;s:6:"acf_75";i:2;s:6:"acf_70";i:3;s:6:"acf_77";i:4;s:12:"revisionsdiv";i:5;s:10:"postcustom";i:6;s:16:"commentstatusdiv";i:7;s:11:"commentsdiv";i:8;s:7:"slugdiv";i:9;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ainslie', '$P$BQxaRkOvj.N3GRXSYvdpT4aJA0wxSp1', 'ainslie', 'pankaj@builtbyblank.com', '', '2016-11-02 10:07:17', '', 0, 'ainslie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;
--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1983;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
