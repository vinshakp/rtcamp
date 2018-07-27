# WordPress MySQL database migration
#
# Generated: Friday 27. July 2018 07:09 UTC
# Hostname: localhost
# Database: `rtpanel`
# URL: //nammuderuchikal.com/rtcamp
# Path: /
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, attachment, customize_changeset, nav_menu_item, option-tree, page, post, slider
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-25 14:10:11', '2018-07-25 14:10:11', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://nammuderuchikal.com/rtcamp', 'yes'),
(2, 'home', 'http://nammuderuchikal.com/rtcamp', 'yes'),
(3, 'blogname', 'Rt Panel', 'yes'),
(4, 'blogdescription', 'Rt panel exhibition', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vinshakp7@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:9:"slider/?$";s:26:"index.php?post_type=slider";s:39:"slider/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=slider&feed=$matches[1]";s:34:"slider/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=slider&feed=$matches[1]";s:26:"slider/page/([0-9]{1,})/?$";s:44:"index.php?post_type=slider&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"slider/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"slider/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"slider/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"slider/([^/]+)/embed/?$";s:39:"index.php?slider=$matches[1]&embed=true";s:27:"slider/([^/]+)/trackback/?$";s:33:"index.php?slider=$matches[1]&tb=1";s:47:"slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?slider=$matches[1]&feed=$matches[2]";s:42:"slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?slider=$matches[1]&feed=$matches[2]";s:35:"slider/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&paged=$matches[2]";s:42:"slider/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&cpage=$matches[2]";s:31:"slider/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?slider=$matches[1]&page=$matches[2]";s:23:"slider/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"slider/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"slider/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=74&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:28:"category-posts/cat-posts.php";i:1;s:25:"option-tree/ot-loader.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'rtcamp', 'yes'),
(41, 'stylesheet', 'rtcamp', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:15:"Recent Projects";s:4:"text";s:624:"<a href="http://google.com"><img class="alignnone size-full wp-image-123" src="http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/recent-pro-1.jpg" alt="" width="104" height="42" /> </a>\r\n\r\n<a href="http://google.com"><img class="alignnone size-full wp-image-125" src="http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/recent-pro-3.jpg" alt="" width="71" height="29" /> </a>\r\n\r\n<a href="http://google.com" target="_blank" rel="noopener"><img class="alignnone size-full wp-image-124" src="http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/recent-pro-2.jpg" alt="" width="71" height="43" /></a>";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:28:"category-posts/cat-posts.php";s:22:"categoryPostsuninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '74', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '49', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"footerwidget-1";a:4:{i:0;s:16:"category-posts-2";i:1;s:6:"text-2";i:2;s:12:"wpb_widget-2";i:3;s:10:"nav_menu-2";}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:"title";s:18:"Security & Privacy";s:8:"nav_menu";i:6;}s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1532675414;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1532700614;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1532700632;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1532700633;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1532703473;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1532536271;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:1:{s:3:"top";i:2;}}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(133, 'recently_activated', 'a:0:{}', 'yes'),
(134, 'current_theme', 'rtcamp', 'yes'),
(135, 'theme_mods_rtpanel', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1532528035;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(136, 'theme_switched', '', 'yes'),
(140, 'theme_mods_rtcamp', 'a:7:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:6:"menu-1";i:4;s:6:"menu-2";i:6;s:6:"menu-3";i:7;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:49;s:16:"header_textcolor";s:5:"blank";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1532535874;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}s:19:"ot_set_google_fonts";a:0:{}}', 'yes'),
(145, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(150, 'theme_mods_rtcamp-child', 'a:6:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:2;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:6;s:16:"header_textcolor";s:5:"blank";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1532536264;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(182, 'category_children', 'a:0:{}', 'yes'),
(190, 'widget_category-posts', 'a:2:{i:2;a:23:{s:5:"title";s:11:"Latest News";s:14:"title_link_url";s:0:"";s:3:"cat";s:1:"5";s:6:"status";s:7:"publish";s:3:"num";s:1:"3";s:6:"offset";s:1:"1";s:7:"sort_by";s:4:"date";s:8:"template";s:7:"%title%";s:14:"excerpt_length";s:2:"55";s:17:"excerpt_more_text";s:3:"...";s:18:"preset_date_format";s:15:"sitedateandtime";s:11:"date_format";s:0:"";s:7:"thumb_w";s:3:"150";s:7:"thumb_h";s:3:"150";s:16:"use_css_cropping";s:2:"on";s:11:"thumb_hover";s:4:"none";s:16:"show_post_format";s:4:"none";s:18:"default_thunmbnail";s:1:"0";s:11:"disable_css";s:2:"on";s:19:"disable_font_styles";s:2:"on";s:16:"footer_link_text";s:0:"";s:11:"footer_link";s:0:"";s:15:"excerpt_filters";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(191, 'option_tree_settings', 'a:3:{s:8:"sections";a:1:{i:0;a:2:{s:5:"title";s:7:"General";s:2:"id";s:7:"general";}}s:8:"settings";a:3:{i:0;a:13:{s:5:"label";s:23:"Sample Text Field Label";s:2:"id";s:11:"sample_text";s:4:"type";s:4:"text";s:4:"desc";s:38:"Description for the sample text field.";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:1;a:13:{s:5:"label";s:19:"Copyright statement";s:2:"id";s:19:"copyright_statement";s:4:"type";s:4:"text";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}i:2;a:13:{s:5:"label";s:11:"Footer Logo";s:2:"id";s:11:"footer_logo";s:4:"type";s:6:"upload";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"rows";s:0:"";s:9:"post_type";s:0:"";s:8:"taxonomy";s:0:"";s:12:"min_max_step";s:0:"";s:5:"class";s:0:"";s:9:"condition";s:0:"";s:8:"operator";s:3:"and";s:7:"section";s:7:"general";}}s:15:"contextual_help";a:1:{s:7:"sidebar";s:0:"";}}', 'yes'),
(192, 'option_tree', 'a:3:{s:11:"sample_text";s:0:"";s:19:"copyright_statement";s:56:"© 2018 rtPanel. All Rights Reserved. Designed by rtCamp";s:11:"footer_logo";s:76:"http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/footer-logo.png";}', 'yes'),
(193, 'ot_media_post_ID', '130', 'yes'),
(196, 'widget_wpb_widget', 'a:2:{i:2;a:5:{s:5:"title";s:13:"Stay in Touch";s:2:"fb";s:2:"##";s:7:"twitter";s:3:"$$$";s:8:"linkedin";s:3:"$$$";s:3:"rss";s:3:"###";}s:12:"_multiwidget";i:1;}', 'yes'),
(211, 'first_field_option', '1', 'yes'),
(220, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1532675359;}', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=574 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_wp_attached_file', '2018/07/sitelogo.png'),
(4, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:237;s:6:"height";i:67;s:4:"file";s:20:"2018/07/sitelogo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"sitelogo-150x67.png";s:5:"width";i:150;s:6:"height";i:67;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(5, 7, '_wp_trash_meta_status', 'publish'),
(6, 7, '_wp_trash_meta_time', '1532531785'),
(7, 8, '_menu_item_type', 'custom'),
(8, 8, '_menu_item_menu_item_parent', '0'),
(9, 8, '_menu_item_object_id', '8'),
(10, 8, '_menu_item_object', 'custom'),
(11, 8, '_menu_item_target', ''),
(12, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13, 8, '_menu_item_xfn', ''),
(14, 8, '_menu_item_url', 'http://nammuderuchikal.com/rtcamp/'),
(15, 8, '_menu_item_orphaned', '1532531830'),
(16, 9, '_menu_item_type', 'post_type'),
(17, 9, '_menu_item_menu_item_parent', '0'),
(18, 9, '_menu_item_object_id', '2'),
(19, 9, '_menu_item_object', 'page'),
(20, 9, '_menu_item_target', ''),
(21, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(22, 9, '_menu_item_xfn', ''),
(23, 9, '_menu_item_url', ''),
(24, 9, '_menu_item_orphaned', '1532531832'),
(25, 10, '_edit_last', '1'),
(26, 10, '_edit_lock', '1532531730:1'),
(27, 12, '_edit_last', '1'),
(28, 12, '_edit_lock', '1532531794:1'),
(29, 14, '_edit_last', '1'),
(30, 14, '_edit_lock', '1532531806:1'),
(31, 16, '_edit_last', '1'),
(32, 16, '_edit_lock', '1532531889:1'),
(33, 18, '_edit_last', '1'),
(34, 18, '_edit_lock', '1532531909:1'),
(35, 20, '_edit_last', '1'),
(36, 20, '_edit_lock', '1532531931:1'),
(37, 22, '_edit_last', '1'),
(38, 22, '_edit_lock', '1532531946:1'),
(39, 24, '_edit_last', '1'),
(40, 24, '_edit_lock', '1532531964:1'),
(41, 26, '_menu_item_type', 'custom'),
(42, 26, '_menu_item_menu_item_parent', '0'),
(43, 26, '_menu_item_object_id', '26'),
(44, 26, '_menu_item_object', 'custom'),
(45, 26, '_menu_item_target', ''),
(46, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 26, '_menu_item_xfn', ''),
(48, 26, '_menu_item_url', 'http://nammuderuchikal.com/rtcamp/'),
(49, 26, '_menu_item_orphaned', '1532532113'),
(50, 27, '_menu_item_type', 'post_type'),
(51, 27, '_menu_item_menu_item_parent', '0'),
(52, 27, '_menu_item_object_id', '12'),
(53, 27, '_menu_item_object', 'page'),
(54, 27, '_menu_item_target', ''),
(55, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 27, '_menu_item_xfn', ''),
(57, 27, '_menu_item_url', ''),
(58, 27, '_menu_item_orphaned', '1532532114'),
(86, 31, '_menu_item_type', 'post_type'),
(87, 31, '_menu_item_menu_item_parent', '0'),
(88, 31, '_menu_item_object_id', '10'),
(89, 31, '_menu_item_object', 'page'),
(90, 31, '_menu_item_target', ''),
(91, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(92, 31, '_menu_item_xfn', ''),
(93, 31, '_menu_item_url', ''),
(94, 31, '_menu_item_orphaned', '1532532119'),
(95, 32, '_menu_item_type', 'post_type'),
(96, 32, '_menu_item_menu_item_parent', '0'),
(97, 32, '_menu_item_object_id', '2'),
(98, 32, '_menu_item_object', 'page'),
(99, 32, '_menu_item_target', ''),
(100, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 32, '_menu_item_xfn', ''),
(102, 32, '_menu_item_url', ''),
(103, 32, '_menu_item_orphaned', '1532532120'),
(113, 34, '_menu_item_type', 'post_type'),
(114, 34, '_menu_item_menu_item_parent', '0'),
(115, 34, '_menu_item_object_id', '18'),
(116, 34, '_menu_item_object', 'page'),
(117, 34, '_menu_item_target', ''),
(118, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(119, 34, '_menu_item_xfn', ''),
(120, 34, '_menu_item_url', ''),
(121, 34, '_menu_item_orphaned', '1532532124'),
(131, 36, '_menu_item_type', 'post_type'),
(132, 36, '_menu_item_menu_item_parent', '0'),
(133, 36, '_menu_item_object_id', '24'),
(134, 36, '_menu_item_object', 'page'),
(135, 36, '_menu_item_target', ''),
(136, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(137, 36, '_menu_item_xfn', ''),
(138, 36, '_menu_item_url', ''),
(139, 36, '_menu_item_orphaned', '1532532126'),
(140, 37, '_menu_item_type', 'post_type'),
(141, 37, '_menu_item_menu_item_parent', '0'),
(142, 37, '_menu_item_object_id', '22'),
(143, 37, '_menu_item_object', 'page'),
(144, 37, '_menu_item_target', ''),
(145, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(146, 37, '_menu_item_xfn', ''),
(147, 37, '_menu_item_url', ''),
(148, 37, '_menu_item_orphaned', '1532532127'),
(149, 38, '_menu_item_type', 'post_type'),
(150, 38, '_menu_item_menu_item_parent', '0'),
(151, 38, '_menu_item_object_id', '20'),
(152, 38, '_menu_item_object', 'page'),
(153, 38, '_menu_item_target', ''),
(154, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(155, 38, '_menu_item_xfn', ''),
(156, 38, '_menu_item_url', ''),
(157, 38, '_menu_item_orphaned', '1532532128'),
(167, 40, '_menu_item_type', 'post_type'),
(168, 40, '_menu_item_menu_item_parent', '0'),
(169, 40, '_menu_item_object_id', '16'),
(170, 40, '_menu_item_object', 'page'),
(171, 40, '_menu_item_target', ''),
(172, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(173, 40, '_menu_item_xfn', ''),
(174, 40, '_menu_item_url', ''),
(175, 40, '_menu_item_orphaned', '1532532131'),
(176, 41, '_menu_item_type', 'post_type'),
(177, 41, '_menu_item_menu_item_parent', '0'),
(178, 41, '_menu_item_object_id', '14'),
(179, 41, '_menu_item_object', 'page'),
(180, 41, '_menu_item_target', ''),
(181, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(182, 41, '_menu_item_xfn', ''),
(183, 41, '_menu_item_url', ''),
(184, 41, '_menu_item_orphaned', '1532532132'),
(203, 44, '_wp_trash_meta_status', 'publish'),
(204, 44, '_wp_trash_meta_time', '1532535975'),
(214, 46, '_edit_last', '1'),
(215, 46, '_edit_lock', '1532538011:1'),
(225, 49, '_wp_attached_file', '2018/07/logo.png'),
(226, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:277;s:6:"height";i:85;s:4:"file";s:16:"2018/07/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x85.png";s:5:"width";i:150;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(227, 50, '_wp_trash_meta_status', 'publish'),
(228, 50, '_wp_trash_meta_time', '1532537827'),
(229, 14, '_wp_trash_meta_status', 'publish'),
(230, 14, '_wp_trash_meta_time', '1532537902'),
(231, 14, '_wp_desired_post_slug', 'exhibition-program'),
(232, 22, '_wp_trash_meta_status', 'publish'),
(233, 22, '_wp_trash_meta_time', '1532537902'),
(234, 22, '_wp_desired_post_slug', 'guidelines'),
(235, 16, '_wp_trash_meta_status', 'publish'),
(236, 16, '_wp_trash_meta_time', '1532537903'),
(237, 16, '_wp_desired_post_slug', 'media'),
(238, 10, '_wp_trash_meta_status', 'publish'),
(239, 10, '_wp_trash_meta_time', '1532537904'),
(240, 10, '_wp_desired_post_slug', 'participants'),
(241, 20, '_wp_trash_meta_status', 'publish'),
(242, 20, '_wp_trash_meta_time', '1532537904'),
(243, 20, '_wp_desired_post_slug', 'sponsorships'),
(244, 18, '_wp_trash_meta_status', 'publish'),
(245, 18, '_wp_trash_meta_time', '1532537905'),
(246, 18, '_wp_desired_post_slug', 'travel-guide'),
(247, 24, '_wp_trash_meta_status', 'publish'),
(248, 24, '_wp_trash_meta_time', '1532537905'),
(249, 24, '_wp_desired_post_slug', 'visitors-corner'),
(250, 51, '_edit_last', '1'),
(251, 51, '_edit_lock', '1532537785:1'),
(252, 53, '_edit_last', '1'),
(253, 53, '_edit_lock', '1532619182:1'),
(254, 55, '_edit_last', '1'),
(255, 55, '_edit_lock', '1532537810:1'),
(256, 57, '_edit_last', '1'),
(257, 57, '_edit_lock', '1532537823:1'),
(258, 59, '_edit_last', '1'),
(259, 59, '_edit_lock', '1532537837:1'),
(260, 61, '_edit_last', '1'),
(261, 61, '_edit_lock', '1532537853:1'),
(262, 64, '_menu_item_type', 'custom'),
(263, 64, '_menu_item_menu_item_parent', '0'),
(264, 64, '_menu_item_object_id', '64'),
(265, 64, '_menu_item_object', 'custom'),
(266, 64, '_menu_item_target', ''),
(267, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(268, 64, '_menu_item_xfn', ''),
(269, 64, '_menu_item_url', 'http://nammuderuchikal.com/rtcamp/'),
(271, 65, '_menu_item_type', 'post_type'),
(272, 65, '_menu_item_menu_item_parent', '0'),
(273, 65, '_menu_item_object_id', '12'),
(274, 65, '_menu_item_object', 'page'),
(275, 65, '_menu_item_target', ''),
(276, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(277, 65, '_menu_item_xfn', ''),
(278, 65, '_menu_item_url', ''),
(280, 66, '_menu_item_type', 'post_type'),
(281, 66, '_menu_item_menu_item_parent', '0'),
(282, 66, '_menu_item_object_id', '61'),
(283, 66, '_menu_item_object', 'page'),
(284, 66, '_menu_item_target', ''),
(285, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(286, 66, '_menu_item_xfn', ''),
(287, 66, '_menu_item_url', ''),
(289, 67, '_menu_item_type', 'post_type'),
(290, 67, '_menu_item_menu_item_parent', '0'),
(291, 67, '_menu_item_object_id', '46'),
(292, 67, '_menu_item_object', 'page'),
(293, 67, '_menu_item_target', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(294, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(295, 67, '_menu_item_xfn', ''),
(296, 67, '_menu_item_url', ''),
(298, 68, '_menu_item_type', 'post_type'),
(299, 68, '_menu_item_menu_item_parent', '0'),
(300, 68, '_menu_item_object_id', '59'),
(301, 68, '_menu_item_object', 'page'),
(302, 68, '_menu_item_target', ''),
(303, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(304, 68, '_menu_item_xfn', ''),
(305, 68, '_menu_item_url', ''),
(307, 69, '_menu_item_type', 'post_type'),
(308, 69, '_menu_item_menu_item_parent', '0'),
(309, 69, '_menu_item_object_id', '53'),
(310, 69, '_menu_item_object', 'page'),
(311, 69, '_menu_item_target', ''),
(312, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(313, 69, '_menu_item_xfn', ''),
(314, 69, '_menu_item_url', ''),
(316, 70, '_menu_item_type', 'post_type'),
(317, 70, '_menu_item_menu_item_parent', '0'),
(318, 70, '_menu_item_object_id', '57'),
(319, 70, '_menu_item_object', 'page'),
(320, 70, '_menu_item_target', ''),
(321, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(322, 70, '_menu_item_xfn', ''),
(323, 70, '_menu_item_url', ''),
(325, 71, '_menu_item_type', 'post_type'),
(326, 71, '_menu_item_menu_item_parent', '0'),
(327, 71, '_menu_item_object_id', '51'),
(328, 71, '_menu_item_object', 'page'),
(329, 71, '_menu_item_target', ''),
(330, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(331, 71, '_menu_item_xfn', ''),
(332, 71, '_menu_item_url', ''),
(334, 72, '_menu_item_type', 'post_type'),
(335, 72, '_menu_item_menu_item_parent', '0'),
(336, 72, '_menu_item_object_id', '55'),
(337, 72, '_menu_item_object', 'page'),
(338, 72, '_menu_item_target', ''),
(339, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(340, 72, '_menu_item_xfn', ''),
(341, 72, '_menu_item_url', ''),
(343, 73, '_wp_trash_meta_status', 'publish'),
(344, 73, '_wp_trash_meta_time', '1532538879'),
(345, 74, '_edit_last', '1'),
(346, 74, '_edit_lock', '1532540438:1'),
(347, 74, '_wp_page_template', 'Template-Home.php'),
(348, 79, '_edit_last', '1'),
(349, 79, '_edit_lock', '1532619287:1'),
(350, 80, '_wp_attached_file', '2018/07/Slider_img.jpg'),
(351, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:300;s:4:"file";s:22:"2018/07/Slider_img.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Slider_img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Slider_img-300x94.jpg";s:5:"width";i:300;s:6:"height";i:94;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Slider_img-768x240.jpg";s:5:"width";i:768;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(352, 79, '_thumbnail_id', '80'),
(353, 81, '_edit_last', '1'),
(354, 81, '_edit_lock', '1532572462:1'),
(355, 81, '_thumbnail_id', '80'),
(356, 83, '_edit_last', '1'),
(357, 83, '_edit_lock', '1532572424:1'),
(358, 83, '_thumbnail_id', '49'),
(359, 84, '_edit_last', '1'),
(360, 84, '_edit_lock', '1532574653:1'),
(361, 84, '_thumbnail_id', '80'),
(362, 85, '_edit_last', '1'),
(363, 85, '_edit_lock', '1532618210:1'),
(364, 85, '_thumbnail_id', '80'),
(365, 86, '_edit_last', '1'),
(366, 86, '_edit_lock', '1532614917:1'),
(367, 86, '_wp_page_template', 'default'),
(368, 89, '_edit_last', '1'),
(369, 89, '_edit_lock', '1532617889:1'),
(370, 89, '_wp_page_template', 'default'),
(371, 91, '_edit_last', '1'),
(372, 91, '_edit_lock', '1532617964:1'),
(373, 91, '_wp_page_template', 'default'),
(374, 93, '_edit_last', '1'),
(375, 93, '_edit_lock', '1532619286:1'),
(376, 93, '_wp_page_template', 'default'),
(377, 95, '_wp_attached_file', '2018/07/img1.jpg'),
(378, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:205;s:6:"height";i:101;s:4:"file";s:16:"2018/07/img1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img1-150x101.jpg";s:5:"width";i:150;s:6:"height";i:101;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(379, 93, '_thumbnail_id', '95'),
(380, 96, '_edit_last', '1'),
(381, 96, '_edit_lock', '1532619147:1'),
(382, 97, '_edit_last', '1'),
(383, 97, '_edit_lock', '1532623738:1'),
(384, 98, '_wp_attached_file', '2018/07/img2.jpg'),
(385, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:205;s:6:"height";i:101;s:4:"file";s:16:"2018/07/img2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img2-150x101.jpg";s:5:"width";i:150;s:6:"height";i:101;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(386, 99, '_wp_attached_file', '2018/07/img3.jpg'),
(387, 100, '_wp_attached_file', '2018/07/img3-1.jpg'),
(388, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:205;s:6:"height";i:101;s:4:"file";s:18:"2018/07/img3-1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"img3-1-150x101.jpg";s:5:"width";i:150;s:6:"height";i:101;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(389, 97, '_thumbnail_id', '98'),
(390, 97, '_wp_page_template', 'default'),
(391, 96, '_thumbnail_id', '100'),
(392, 96, '_wp_page_template', 'default'),
(393, 105, '_edit_last', '1'),
(394, 105, '_edit_lock', '1532623973:1'),
(395, 105, '_wp_page_template', 'default'),
(396, 107, '_edit_last', '1'),
(397, 107, '_edit_lock', '1532623860:1'),
(398, 107, '_thumbnail_id', '98'),
(399, 107, '_wp_page_template', 'default') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(400, 109, '_edit_last', '1'),
(401, 109, '_edit_lock', '1532623916:1'),
(402, 109, '_thumbnail_id', '100'),
(403, 109, '_wp_page_template', 'default'),
(404, 111, '_edit_last', '1'),
(405, 111, '_edit_lock', '1532623972:1'),
(406, 111, '_wp_page_template', 'default'),
(407, 113, '_edit_last', '1'),
(408, 113, '_edit_lock', '1532624491:1'),
(409, 113, '_thumbnail_id', '98'),
(410, 113, '_wp_page_template', 'default'),
(411, 115, '_edit_last', '1'),
(412, 115, '_edit_lock', '1532623976:1'),
(413, 115, '_thumbnail_id', '100'),
(414, 115, '_wp_page_template', 'default'),
(415, 111, '_thumbnail_id', '100'),
(416, 105, '_thumbnail_id', '100'),
(417, 117, '_edit_last', '1'),
(418, 117, '_edit_lock', '1532629191:1'),
(421, 119, '_edit_last', '1'),
(422, 119, '_edit_lock', '1532627835:1'),
(427, 121, '_edit_last', '1'),
(428, 121, '_edit_lock', '1532629191:1'),
(431, 123, '_wp_attached_file', '2018/07/recent-pro-1.jpg'),
(432, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:104;s:6:"height";i:42;s:4:"file";s:24:"2018/07/recent-pro-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(433, 124, '_wp_attached_file', '2018/07/recent-pro-2.jpg'),
(434, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:71;s:6:"height";i:43;s:4:"file";s:24:"2018/07/recent-pro-2.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(435, 125, '_wp_attached_file', '2018/07/recent-pro-3.jpg'),
(436, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:71;s:6:"height";i:29;s:4:"file";s:24:"2018/07/recent-pro-3.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(437, 126, '_edit_last', '1'),
(438, 126, '_edit_lock', '1532630636:1'),
(439, 126, '_wp_page_template', 'default'),
(440, 128, '_edit_last', '1'),
(441, 128, '_wp_page_template', 'default'),
(442, 128, '_edit_lock', '1532630862:1'),
(443, 131, '_menu_item_type', 'post_type'),
(444, 131, '_menu_item_menu_item_parent', '0'),
(445, 131, '_menu_item_object_id', '128'),
(446, 131, '_menu_item_object', 'page'),
(447, 131, '_menu_item_target', ''),
(448, 131, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(449, 131, '_menu_item_xfn', ''),
(450, 131, '_menu_item_url', ''),
(452, 132, '_menu_item_type', 'post_type'),
(453, 132, '_menu_item_menu_item_parent', '0'),
(454, 132, '_menu_item_object_id', '126'),
(455, 132, '_menu_item_object', 'page'),
(456, 132, '_menu_item_target', ''),
(457, 132, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(458, 132, '_menu_item_xfn', ''),
(459, 132, '_menu_item_url', ''),
(461, 133, '_edit_last', '1'),
(462, 133, '_wp_page_template', 'default'),
(463, 133, '_edit_lock', '1532631059:1'),
(464, 136, '_menu_item_type', 'post_type'),
(465, 136, '_menu_item_menu_item_parent', '0'),
(466, 136, '_menu_item_object_id', '133'),
(467, 136, '_menu_item_object', 'page'),
(468, 136, '_menu_item_target', ''),
(469, 136, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(470, 136, '_menu_item_xfn', ''),
(471, 136, '_menu_item_url', ''),
(473, 137, '_menu_item_type', 'post_type'),
(474, 137, '_menu_item_menu_item_parent', '0'),
(475, 137, '_menu_item_object_id', '74'),
(476, 137, '_menu_item_object', 'page'),
(477, 137, '_menu_item_target', ''),
(478, 137, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(479, 137, '_menu_item_xfn', ''),
(480, 137, '_menu_item_url', ''),
(482, 138, '_menu_item_type', 'post_type'),
(483, 138, '_menu_item_menu_item_parent', '0'),
(484, 138, '_menu_item_object_id', '12'),
(485, 138, '_menu_item_object', 'page'),
(486, 138, '_menu_item_target', ''),
(487, 138, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(488, 138, '_menu_item_xfn', ''),
(489, 138, '_menu_item_url', ''),
(490, 138, '_menu_item_orphaned', '1532631288'),
(491, 139, '_menu_item_type', 'post_type'),
(492, 139, '_menu_item_menu_item_parent', '0'),
(493, 139, '_menu_item_object_id', '61'),
(494, 139, '_menu_item_object', 'page'),
(495, 139, '_menu_item_target', ''),
(496, 139, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(497, 139, '_menu_item_xfn', ''),
(498, 139, '_menu_item_url', ''),
(500, 140, '_menu_item_type', 'post_type'),
(501, 140, '_menu_item_menu_item_parent', '0'),
(502, 140, '_menu_item_object_id', '46'),
(503, 140, '_menu_item_object', 'page'),
(504, 140, '_menu_item_target', ''),
(505, 140, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(506, 140, '_menu_item_xfn', ''),
(507, 140, '_menu_item_url', ''),
(509, 141, '_menu_item_type', 'post_type'),
(510, 141, '_menu_item_menu_item_parent', '0'),
(511, 141, '_menu_item_object_id', '59'),
(512, 141, '_menu_item_object', 'page'),
(513, 141, '_menu_item_target', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(514, 141, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(515, 141, '_menu_item_xfn', ''),
(516, 141, '_menu_item_url', ''),
(518, 142, '_menu_item_type', 'post_type'),
(519, 142, '_menu_item_menu_item_parent', '0'),
(520, 142, '_menu_item_object_id', '53'),
(521, 142, '_menu_item_object', 'page'),
(522, 142, '_menu_item_target', ''),
(523, 142, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(524, 142, '_menu_item_xfn', ''),
(525, 142, '_menu_item_url', ''),
(527, 143, '_menu_item_type', 'post_type'),
(528, 143, '_menu_item_menu_item_parent', '0'),
(529, 143, '_menu_item_object_id', '74'),
(530, 143, '_menu_item_object', 'page'),
(531, 143, '_menu_item_target', ''),
(532, 143, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(533, 143, '_menu_item_xfn', ''),
(534, 143, '_menu_item_url', ''),
(535, 143, '_menu_item_orphaned', '1532631294'),
(536, 144, '_menu_item_type', 'post_type'),
(537, 144, '_menu_item_menu_item_parent', '0'),
(538, 144, '_menu_item_object_id', '57'),
(539, 144, '_menu_item_object', 'page'),
(540, 144, '_menu_item_target', ''),
(541, 144, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(542, 144, '_menu_item_xfn', ''),
(543, 144, '_menu_item_url', ''),
(545, 145, '_menu_item_type', 'post_type'),
(546, 145, '_menu_item_menu_item_parent', '0'),
(547, 145, '_menu_item_object_id', '51'),
(548, 145, '_menu_item_object', 'page'),
(549, 145, '_menu_item_target', ''),
(550, 145, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(551, 145, '_menu_item_xfn', ''),
(552, 145, '_menu_item_url', ''),
(554, 146, '_menu_item_type', 'post_type'),
(555, 146, '_menu_item_menu_item_parent', '0'),
(556, 146, '_menu_item_object_id', '55'),
(557, 146, '_menu_item_object', 'page'),
(558, 146, '_menu_item_target', ''),
(559, 146, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(560, 146, '_menu_item_xfn', ''),
(561, 146, '_menu_item_url', ''),
(563, 147, '_wp_attached_file', '2018/07/footer-logo.png'),
(564, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:194;s:6:"height";i:60;s:4:"file";s:23:"2018/07/footer-logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"footer-logo-150x60.png";s:5:"width";i:150;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(565, 148, '_edit_lock', '1532664830:1'),
(566, 148, '_wp_trash_meta_status', 'publish'),
(567, 148, '_wp_trash_meta_time', '1532664834'),
(568, 85, '_wp_trash_meta_status', 'publish'),
(569, 85, '_wp_trash_meta_time', '1532668521'),
(570, 85, '_wp_desired_post_slug', 'slide-headline5'),
(571, 83, '_wp_trash_meta_status', 'publish'),
(572, 83, '_wp_trash_meta_time', '1532668545'),
(573, 83, '_wp_desired_post_slug', 'slide-headline2-2') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-25 14:10:11', '2018-07-25 14:10:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-07-25 14:10:11', '2018-07-25 14:10:11', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-25 14:10:11', '2018-07-25 14:10:11', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://nammuderuchikal.com/rtcamp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-07-25 14:10:11', '2018-07-25 14:10:11', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-25 14:10:11', '2018-07-25 14:10:11', '<h2>Who we are</h2><p>Our website address is: http://nammuderuchikal.com/rtcamp.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-07-25 14:10:11', '2018-07-25 14:10:11', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-07-25 14:10:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-25 14:10:34', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=4', 0, 'post', '', 0),
(5, 1, '2018-07-25 14:57:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-25 14:57:54', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-07-25 15:15:41', '2018-07-25 15:15:41', '', 'sitelogo', '', 'inherit', 'open', 'closed', '', 'sitelogo', '', '', '2018-07-25 15:15:41', '2018-07-25 15:15:41', '', 0, 'http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/sitelogo.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2018-07-25 15:16:24', '2018-07-25 15:16:24', '{"blogdescription":{"value":"Rt panel exhibition","type":"option","user_id":1,"date_modified_gmt":"2018-07-25 15:16:24"},"site_icon":{"value":6,"type":"option","user_id":1,"date_modified_gmt":"2018-07-25 15:16:24"},"rtcamp::custom_logo":{"value":6,"type":"theme_mod","user_id":1,"date_modified_gmt":"2018-07-25 15:16:24"},"rtcamp::header_textcolor":{"value":"blank","type":"theme_mod","user_id":1,"date_modified_gmt":"2018-07-25 15:16:24"}}', '', '', 'trash', 'closed', 'closed', '', 'bde4cfbe-7d16-43f4-841b-0bfc94a87c7c', '', '', '2018-07-25 15:16:24', '2018-07-25 15:16:24', '', 0, 'http://nammuderuchikal.com/rtcamp/2018/07/25/bde4cfbe-7d16-43f4-841b-0bfc94a87c7c/', 0, 'customize_changeset', '', 0),
(8, 1, '2018-07-25 15:17:09', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-25 15:17:09', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2018-07-25 15:17:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-25 15:17:10', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2018-07-25 15:17:36', '2018-07-25 15:17:36', '', 'PARTICIPANTS', '', 'trash', 'closed', 'closed', '', 'participants__trashed', '', '', '2018-07-25 16:58:24', '2018-07-25 16:58:24', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-07-25 15:17:36', '2018-07-25 15:17:36', '', 'PARTICIPANTS', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-07-25 15:17:36', '2018-07-25 15:17:36', '', 10, 'http://nammuderuchikal.com/rtcamp/2018/07/25/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-07-25 15:18:07', '2018-07-25 15:18:07', '', 'ABOUT', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-07-25 15:18:07', '2018-07-25 15:18:07', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-07-25 15:18:07', '2018-07-25 15:18:07', '', 'ABOUT', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-07-25 15:18:07', '2018-07-25 15:18:07', '', 12, 'http://nammuderuchikal.com/rtcamp/2018/07/25/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-07-25 15:19:01', '2018-07-25 15:19:01', '', 'EXHIBITION PROGRAM', '', 'trash', 'closed', 'closed', '', 'exhibition-program__trashed', '', '', '2018-07-25 16:58:22', '2018-07-25 16:58:22', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-07-25 15:19:01', '2018-07-25 15:19:01', '', 'EXHIBITION PROGRAM', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-25 15:19:01', '2018-07-25 15:19:01', '', 14, 'http://nammuderuchikal.com/rtcamp/2018/07/25/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-07-25 15:20:26', '2018-07-25 15:20:26', '', 'MEDIA', '', 'trash', 'closed', 'closed', '', 'media__trashed', '', '', '2018-07-25 16:58:23', '2018-07-25 16:58:23', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-07-25 15:20:26', '2018-07-25 15:20:26', '', 'MEDIA', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-25 15:20:26', '2018-07-25 15:20:26', '', 16, 'http://nammuderuchikal.com/rtcamp/2018/07/25/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-07-25 15:20:43', '2018-07-25 15:20:43', '', 'TRAVEL GUIDE', '', 'trash', 'closed', 'closed', '', 'travel-guide__trashed', '', '', '2018-07-25 16:58:25', '2018-07-25 16:58:25', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-07-25 15:20:43', '2018-07-25 15:20:43', '', 'TRAVEL GUIDE', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-07-25 15:20:43', '2018-07-25 15:20:43', '', 18, 'http://nammuderuchikal.com/rtcamp/2018/07/25/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-07-25 15:20:57', '2018-07-25 15:20:57', '', 'SPONSORSHIPS', '', 'trash', 'closed', 'closed', '', 'sponsorships__trashed', '', '', '2018-07-25 16:58:24', '2018-07-25 16:58:24', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-07-25 15:20:57', '2018-07-25 15:20:57', '', 'SPONSORSHIPS', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-07-25 15:20:57', '2018-07-25 15:20:57', '', 20, 'http://nammuderuchikal.com/rtcamp/2018/07/25/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-07-25 15:21:19', '2018-07-25 15:21:19', '', 'GUIDELINES', '', 'trash', 'closed', 'closed', '', 'guidelines__trashed', '', '', '2018-07-25 16:58:22', '2018-07-25 16:58:22', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-07-25 15:21:19', '2018-07-25 15:21:19', '', 'GUIDELINES', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-07-25 15:21:19', '2018-07-25 15:21:19', '', 22, 'http://nammuderuchikal.com/rtcamp/2018/07/25/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-07-25 15:21:34', '2018-07-25 15:21:34', '', 'VISITORS CORNER', '', 'trash', 'closed', 'closed', '', 'visitors-corner__trashed', '', '', '2018-07-25 16:58:25', '2018-07-25 16:58:25', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=24', 0, 'page', '', 0),
(25, 1, '2018-07-25 15:21:34', '2018-07-25 15:21:34', '', 'VISITORS CORNER', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-25 15:21:34', '2018-07-25 15:21:34', '', 24, 'http://nammuderuchikal.com/rtcamp/2018/07/25/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-07-25 15:21:52', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-25 15:21:52', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2018-07-25 15:21:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-25 15:21:53', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=27', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-07-25 15:21:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-25 15:21:58', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2018-07-25 15:21:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-25 15:21:59', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=32', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-07-25 15:22:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-25 15:22:02', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=34', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-07-25 15:22:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-25 15:22:04', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2018-07-25 15:22:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-25 15:22:06', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-07-25 15:22:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-25 15:22:07', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=38', 1, 'nav_menu_item', '', 0),
(40, 1, '2018-07-25 15:22:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-25 15:22:10', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2018-07-25 15:22:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-25 15:22:11', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=41', 1, 'nav_menu_item', '', 0),
(44, 1, '2018-07-25 16:26:14', '2018-07-25 16:26:14', '{"rtcamp-child::custom_logo":{"value":6,"type":"theme_mod","user_id":1,"date_modified_gmt":"2018-07-25 16:26:14"},"rtcamp-child::header_textcolor":{"value":"blank","type":"theme_mod","user_id":1,"date_modified_gmt":"2018-07-25 16:26:14"}}', '', '', 'trash', 'closed', 'closed', '', '1452edca-c10b-44c1-81e1-d74d509310f7', '', '', '2018-07-25 16:26:14', '2018-07-25 16:26:14', '', 0, 'http://nammuderuchikal.com/rtcamp/2018/07/25/1452edca-c10b-44c1-81e1-d74d509310f7/', 0, 'customize_changeset', '', 0),
(46, 1, '2018-07-25 16:48:26', '2018-07-25 16:48:26', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-07-25 17:00:10', '2018-07-25 17:00:10', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=46', 0, 'page', '', 0),
(47, 1, '2018-07-25 16:48:26', '2018-07-25 16:48:26', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-07-25 16:48:26', '2018-07-25 16:48:26', '', 46, 'http://nammuderuchikal.com/rtcamp/2018/07/25/46-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-07-25 16:56:48', '2018-07-25 16:56:48', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-07-25 16:56:48', '2018-07-25 16:56:48', '', 0, 'http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/logo.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2018-07-25 16:57:07', '2018-07-25 16:57:07', '{"site_icon":{"value":49,"type":"option","user_id":1,"date_modified_gmt":"2018-07-25 16:57:07"},"rtcamp::custom_logo":{"value":49,"type":"theme_mod","user_id":1,"date_modified_gmt":"2018-07-25 16:57:07"}}', '', '', 'trash', 'closed', 'closed', '', '000c5789-db95-4d8a-afca-35336fcf9baf', '', '', '2018-07-25 16:57:07', '2018-07-25 16:57:07', '', 0, 'http://nammuderuchikal.com/rtcamp/2018/07/25/000c5789-db95-4d8a-afca-35336fcf9baf/', 0, 'customize_changeset', '', 0),
(51, 1, '2018-07-25 16:58:44', '2018-07-25 16:58:44', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-07-25 16:58:44', '2018-07-25 16:58:44', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=51', 0, 'page', '', 0),
(52, 1, '2018-07-25 16:58:44', '2018-07-25 16:58:44', '', 'News', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-07-25 16:58:44', '2018-07-25 16:58:44', '', 51, 'http://nammuderuchikal.com/rtcamp/2018/07/25/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-07-25 16:58:55', '2018-07-25 16:58:55', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2018-07-25 16:58:55', '2018-07-25 16:58:55', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=53', 0, 'page', '', 0),
(54, 1, '2018-07-25 16:58:55', '2018-07-25 16:58:55', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-07-25 16:58:55', '2018-07-25 16:58:55', '', 53, 'http://nammuderuchikal.com/rtcamp/2018/07/25/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-07-25 16:59:08', '2018-07-25 16:59:08', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2018-07-25 16:59:08', '2018-07-25 16:59:08', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=55', 0, 'page', '', 0),
(56, 1, '2018-07-25 16:59:08', '2018-07-25 16:59:08', '', 'Pages', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-07-25 16:59:08', '2018-07-25 16:59:08', '', 55, 'http://nammuderuchikal.com/rtcamp/2018/07/25/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-07-25 16:59:23', '2018-07-25 16:59:23', '', 'Layout', '', 'publish', 'closed', 'closed', '', 'layout', '', '', '2018-07-25 16:59:23', '2018-07-25 16:59:23', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=57', 0, 'page', '', 0),
(58, 1, '2018-07-25 16:59:23', '2018-07-25 16:59:23', '', 'Layout', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-07-25 16:59:23', '2018-07-25 16:59:23', '', 57, 'http://nammuderuchikal.com/rtcamp/2018/07/25/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-07-25 16:59:34', '2018-07-25 16:59:34', '', 'Feature', '', 'publish', 'closed', 'closed', '', 'feature', '', '', '2018-07-25 16:59:34', '2018-07-25 16:59:34', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=59', 0, 'page', '', 0),
(60, 1, '2018-07-25 16:59:34', '2018-07-25 16:59:34', '', 'Feature', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-07-25 16:59:34', '2018-07-25 16:59:34', '', 59, 'http://nammuderuchikal.com/rtcamp/2018/07/25/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-07-25 16:59:53', '2018-07-25 16:59:53', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-07-25 16:59:53', '2018-07-25 16:59:53', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=61', 0, 'page', '', 0),
(62, 1, '2018-07-25 16:59:53', '2018-07-25 16:59:53', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-07-25 16:59:53', '2018-07-25 16:59:53', '', 61, 'http://nammuderuchikal.com/rtcamp/2018/07/25/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-07-25 17:00:10', '2018-07-25 17:00:10', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-07-25 17:00:10', '2018-07-25 17:00:10', '', 46, 'http://nammuderuchikal.com/rtcamp/2018/07/25/46-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-07-25 17:02:33', '2018-07-25 17:02:33', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-25 17:02:33', '2018-07-25 17:02:33', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2018-07-25 17:02:37', '2018-07-25 17:02:37', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-07-25 17:02:37', '2018-07-25 17:02:37', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=65', 7, 'nav_menu_item', '', 0),
(66, 1, '2018-07-25 17:02:37', '2018-07-25 17:02:37', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2018-07-25 17:02:37', '2018-07-25 17:02:37', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=66', 8, 'nav_menu_item', '', 0),
(67, 1, '2018-07-25 17:02:38', '2018-07-25 17:02:38', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2018-07-25 17:02:38', '2018-07-25 17:02:38', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=67', 9, 'nav_menu_item', '', 0),
(68, 1, '2018-07-25 17:02:36', '2018-07-25 17:02:36', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2018-07-25 17:02:36', '2018-07-25 17:02:36', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=68', 6, 'nav_menu_item', '', 0),
(69, 1, '2018-07-25 17:02:34', '2018-07-25 17:02:34', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2018-07-25 17:02:34', '2018-07-25 17:02:34', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=69', 3, 'nav_menu_item', '', 0),
(70, 1, '2018-07-25 17:02:35', '2018-07-25 17:02:35', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2018-07-25 17:02:35', '2018-07-25 17:02:35', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=70', 5, 'nav_menu_item', '', 0),
(71, 1, '2018-07-25 17:02:33', '2018-07-25 17:02:33', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2018-07-25 17:02:33', '2018-07-25 17:02:33', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=71', 2, 'nav_menu_item', '', 0),
(72, 1, '2018-07-25 17:02:35', '2018-07-25 17:02:35', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2018-07-25 17:02:35', '2018-07-25 17:02:35', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=72', 4, 'nav_menu_item', '', 0),
(73, 1, '2018-07-25 17:14:38', '2018-07-25 17:14:38', '{"rtcamp::custom_logo":{"value":"","type":"theme_mod","user_id":1,"date_modified_gmt":"2018-07-25 17:14:38"}}', '', '', 'trash', 'closed', 'closed', '', '29a8f518-15f9-4f23-ab1b-51bfdcd6d093', '', '', '2018-07-25 17:14:38', '2018-07-25 17:14:38', '', 0, 'http://nammuderuchikal.com/rtcamp/2018/07/25/29a8f518-15f9-4f23-ab1b-51bfdcd6d093/', 0, 'customize_changeset', '', 0),
(74, 1, '2018-07-25 17:40:46', '2018-07-25 17:40:46', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-25 17:40:46', '2018-07-25 17:40:46', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=74', 0, 'page', '', 0),
(75, 1, '2018-07-25 17:40:46', '2018-07-25 17:40:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-07-25 17:40:46', '2018-07-25 17:40:46', '', 74, 'http://nammuderuchikal.com/rtcamp/2018/07/25/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-07-25 17:43:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-25 17:43:05', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?post_type=slider&p=76', 0, 'slider', '', 0),
(77, 1, '2018-07-25 17:46:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-25 17:46:31', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?post_type=slider&p=77', 0, 'slider', '', 0),
(78, 1, '2018-07-25 17:46:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-25 17:46:38', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?post_type=slider&p=78', 0, 'slider', '', 0),
(79, 1, '2018-07-25 17:49:44', '2018-07-25 17:49:44', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et sollicitudin risus. Sed gravida placerat eleifend. Suspendisse tincidunt fringilla dictum. Nam ipsum justo, adipiscing euullamcorper ut, hendrerit sit amet velit. Nulla facilisi.', 'Slide headline', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et sollicitudin risus. Sed gravida placerat eleifend. Suspendisse tincidunt fringilla dictum. Nam ipsum justo, adipiscing euullamcorper ut, hendrerit sit amet velit. Nulla facilisi.', 'publish', 'open', 'closed', '', 'slide-headline', '', '', '2018-07-25 17:57:29', '2018-07-25 17:57:29', '', 0, 'http://nammuderuchikal.com/rtcamp/?post_type=slider&#038;p=79', 0, 'slider', '', 0),
(80, 1, '2018-07-25 17:49:32', '2018-07-25 17:49:32', '', 'Slider_img', '', 'inherit', 'open', 'closed', '', 'slider_img', '', '', '2018-07-25 17:49:32', '2018-07-25 17:49:32', '', 79, 'http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/Slider_img.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-07-25 18:13:01', '2018-07-25 18:13:01', 'Slide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headline', 'Slide headline2', '', 'publish', 'open', 'closed', '', 'slide-headline2', '', '', '2018-07-25 18:13:01', '2018-07-25 18:13:01', '', 0, 'http://nammuderuchikal.com/rtcamp/?post_type=slider&#038;p=81', 0, 'slider', '', 0),
(82, 1, '2018-07-26 02:35:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-26 02:35:15', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=82', 0, 'page', '', 0),
(83, 1, '2018-07-26 02:35:54', '2018-07-26 02:35:54', 'Slide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headline', 'Slide headline2', '', 'trash', 'open', 'closed', '', 'slide-headline2-2__trashed', '', '', '2018-07-27 05:15:45', '2018-07-27 05:15:45', '', 0, 'http://nammuderuchikal.com/rtcamp/?post_type=slider&#038;p=83', 0, 'slider', '', 0),
(84, 1, '2018-07-26 02:36:26', '2018-07-26 02:36:26', 'Slide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headline', 'Slide headline3', '', 'publish', 'open', 'closed', '', 'slide-headline3', '', '', '2018-07-26 02:36:26', '2018-07-26 02:36:26', '', 0, 'http://nammuderuchikal.com/rtcamp/?post_type=slider&#038;p=84', 0, 'slider', '', 0),
(85, 1, '2018-07-26 02:36:58', '2018-07-26 02:36:58', 'Slide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headlineSlide headline', 'Slide headline5', '', 'trash', 'open', 'closed', '', 'slide-headline5__trashed', '', '', '2018-07-27 05:15:21', '2018-07-27 05:15:21', '', 0, 'http://nammuderuchikal.com/rtcamp/?post_type=slider&#038;p=85', 0, 'slider', '', 0),
(86, 1, '2018-07-26 14:24:08', '2018-07-26 14:24:08', '', 'Finding', '', 'publish', 'closed', 'closed', '', 'finding', '', '', '2018-07-26 14:24:08', '2018-07-26 14:24:08', '', 74, 'http://nammuderuchikal.com/rtcamp/?page_id=86', 0, 'page', '', 0),
(87, 1, '2018-07-26 14:24:08', '2018-07-26 14:24:08', '', 'Finding', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-07-26 14:24:08', '2018-07-26 14:24:08', '', 86, 'http://nammuderuchikal.com/rtcamp/2018/07/26/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-07-26 15:05:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-26 15:05:09', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=88', 0, 'page', '', 0),
(89, 1, '2018-07-26 15:13:50', '2018-07-26 15:13:50', '', 'Promotional Activities', '', 'publish', 'closed', 'closed', '', 'promotional-activities', '', '', '2018-07-26 15:13:50', '2018-07-26 15:13:50', '', 74, 'http://nammuderuchikal.com/rtcamp/?page_id=89', 0, 'page', '', 0),
(90, 1, '2018-07-26 15:13:50', '2018-07-26 15:13:50', '', 'Promotional Activities', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-07-26 15:13:50', '2018-07-26 15:13:50', '', 89, 'http://nammuderuchikal.com/rtcamp/2018/07/26/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-07-26 15:14:17', '2018-07-26 15:14:17', '', 'Environment', '', 'publish', 'closed', 'closed', '', 'environment', '', '', '2018-07-26 15:14:17', '2018-07-26 15:14:17', '', 74, 'http://nammuderuchikal.com/rtcamp/?page_id=91', 0, 'page', '', 0),
(92, 1, '2018-07-26 15:14:17', '2018-07-26 15:14:17', '', 'Environment', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-07-26 15:14:17', '2018-07-26 15:14:17', '', 91, 'http://nammuderuchikal.com/rtcamp/2018/07/26/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-07-26 15:15:40', '2018-07-26 15:15:40', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-has-been-the-industrys-standard-dummy-text-ever-since', '', '', '2018-07-26 15:16:08', '2018-07-26 15:16:08', '', 91, 'http://nammuderuchikal.com/rtcamp/?page_id=93', 0, 'page', '', 0),
(94, 1, '2018-07-26 15:15:40', '2018-07-26 15:15:40', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', 'Lorem Ipsum has been the industry\'s standard dummy text ever since', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-07-26 15:15:40', '2018-07-26 15:15:40', '', 93, 'http://nammuderuchikal.com/rtcamp/2018/07/26/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-07-26 15:16:01', '2018-07-26 15:16:01', '', 'img1', '', 'inherit', 'open', 'closed', '', 'img1', '', '', '2018-07-26 15:16:01', '2018-07-26 15:16:01', '', 93, 'http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-07-26 15:18:20', '2018-07-26 15:18:20', 'scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only', 'scrambled it to make a type specimen book. It has survived not only', 'scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. ', 'publish', 'closed', 'closed', '', 'scrambled-it-to-make-a-type-specimen-book-it-has-survived-not-only', '', '', '2018-07-26 15:19:32', '2018-07-26 15:19:32', '', 86, 'http://nammuderuchikal.com/rtcamp/?page_id=96', 0, 'page', '', 0),
(97, 1, '2018-07-26 15:18:08', '2018-07-26 15:18:08', 'Contrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random text', 'publish', 'closed', 'closed', '', 'contrary-to-popular-belief-lorem-ipsum-is-not-simply-random-text', '', '', '2018-07-26 16:03:11', '2018-07-26 16:03:11', '', 91, 'http://nammuderuchikal.com/rtcamp/?page_id=97', 0, 'page', '', 0),
(98, 1, '2018-07-26 15:17:49', '2018-07-26 15:17:49', '', 'img2', '', 'inherit', 'open', 'closed', '', 'img2', '', '', '2018-07-26 15:17:49', '2018-07-26 15:17:49', '', 97, 'http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2018-07-26 15:17:51', '2018-07-26 15:17:51', '', 'img3', '', 'inherit', 'open', 'closed', '', 'img3', '', '', '2018-07-26 15:17:51', '2018-07-26 15:17:51', '', 97, 'http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2018-07-26 15:17:53', '2018-07-26 15:17:53', '', 'img3', '', 'inherit', 'open', 'closed', '', 'img3-2', '', '', '2018-07-26 15:17:53', '2018-07-26 15:17:53', '', 97, 'http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/img3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-07-26 15:18:08', '2018-07-26 15:18:08', 'Contrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-07-26 15:18:08', '2018-07-26 15:18:08', '', 97, 'http://nammuderuchikal.com/rtcamp/2018/07/26/97-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-07-26 15:18:20', '2018-07-26 15:18:20', 'scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only', 'scrambled it to make a type specimen book. It has survived not only', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2018-07-26 15:18:20', '2018-07-26 15:18:20', '', 96, 'http://nammuderuchikal.com/rtcamp/2018/07/26/96-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-07-26 15:19:32', '2018-07-26 15:19:32', 'scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only', 'scrambled it to make a type specimen book. It has survived not only', 'scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. It has survived not only scrambled it to make a type specimen book. ', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2018-07-26 15:19:32', '2018-07-26 15:19:32', '', 96, 'http://nammuderuchikal.com/rtcamp/2018/07/26/96-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-07-26 16:03:11', '2018-07-26 16:03:11', 'Contrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random text', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-07-26 16:03:11', '2018-07-26 16:03:11', '', 97, 'http://nammuderuchikal.com/rtcamp/2018/07/26/97-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-07-26 16:46:19', '2018-07-26 16:46:19', 'Contrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random text', 'popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random text', 'publish', 'closed', 'closed', '', 'popular-belief-lorem-ipsum-is-not-simply-random-text', '', '', '2018-07-26 16:55:12', '2018-07-26 16:55:12', '', 91, 'http://nammuderuchikal.com/rtcamp/?page_id=105', 0, 'page', '', 0),
(106, 1, '2018-07-26 16:46:19', '2018-07-26 16:46:19', 'Contrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random text', 'popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random textContrary to popular belief, Lorem Ipsum is not simply random text', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-07-26 16:46:19', '2018-07-26 16:46:19', '', 105, 'http://nammuderuchikal.com/rtcamp/2018/07/26/105-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-07-26 16:51:55', '2018-07-26 16:51:55', 'Lorem Ipsum is not simply random text Lorem Ipsum is not simply random text Lorem Ipsum is not simply random text Lorem Ipsum is not simply random text', 'Lorem Ipsum is not simply random text', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-is-not-simply-random-text', '', '', '2018-07-26 16:51:55', '2018-07-26 16:51:55', '', 86, 'http://nammuderuchikal.com/rtcamp/?page_id=107', 0, 'page', '', 0),
(108, 1, '2018-07-26 16:51:55', '2018-07-26 16:51:55', 'Lorem Ipsum is not simply random text Lorem Ipsum is not simply random text Lorem Ipsum is not simply random text Lorem Ipsum is not simply random text', 'Lorem Ipsum is not simply random text', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2018-07-26 16:51:55', '2018-07-26 16:51:55', '', 107, 'http://nammuderuchikal.com/rtcamp/2018/07/26/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-07-26 16:52:15', '2018-07-26 16:52:15', 'popular belief, Lorem Ipsum popular belief, Lorem Ipsum popular belief, Lorem Ipsum popular belief, Lorem Ipsum popular belief, Lorem Ipsum', 'popular belief, Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'popular-belief-lorem-ipsum', '', '', '2018-07-26 16:52:15', '2018-07-26 16:52:15', '', 86, 'http://nammuderuchikal.com/rtcamp/?page_id=109', 0, 'page', '', 0),
(110, 1, '2018-07-26 16:52:15', '2018-07-26 16:52:15', 'popular belief, Lorem Ipsum popular belief, Lorem Ipsum popular belief, Lorem Ipsum popular belief, Lorem Ipsum popular belief, Lorem Ipsum', 'popular belief, Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-07-26 16:52:15', '2018-07-26 16:52:15', '', 109, 'http://nammuderuchikal.com/rtcamp/2018/07/26/109-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(111, 1, '2018-07-26 16:53:46', '2018-07-26 16:53:46', 'Belief, Lorem IpsumBelief, Lorem IpsumBelief, Lorem IpsumBelief, Lorem IpsumBelief, Lorem Ipsum', 'Belief, Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'belief-lorem-ipsum', '', '', '2018-07-26 16:55:03', '2018-07-26 16:55:03', '', 89, 'http://nammuderuchikal.com/rtcamp/?page_id=111', 0, 'page', '', 0),
(112, 1, '2018-07-26 16:53:46', '2018-07-26 16:53:46', 'Belief, Lorem IpsumBelief, Lorem IpsumBelief, Lorem IpsumBelief, Lorem IpsumBelief, Lorem Ipsum', 'Belief, Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-07-26 16:53:46', '2018-07-26 16:53:46', '', 111, 'http://nammuderuchikal.com/rtcamp/2018/07/26/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-07-26 16:54:13', '2018-07-26 16:54:13', 'Belief, Lorem IpsumBelief, Lorem IpsumBelief, Lorem IpsumBelief, Lorem IpsumBelief, Lorem Ipsum', 'Belief, Lorem Ipsum', '', 'publish', 'closed', 'closed', '', 'belief-lorem-ipsum-2', '', '', '2018-07-26 16:54:13', '2018-07-26 16:54:13', '', 89, 'http://nammuderuchikal.com/rtcamp/?page_id=113', 0, 'page', '', 0),
(114, 1, '2018-07-26 16:54:13', '2018-07-26 16:54:13', 'Belief, Lorem IpsumBelief, Lorem IpsumBelief, Lorem IpsumBelief, Lorem IpsumBelief, Lorem Ipsum', 'Belief, Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-07-26 16:54:13', '2018-07-26 16:54:13', '', 113, 'http://nammuderuchikal.com/rtcamp/2018/07/26/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-07-26 16:54:34', '2018-07-26 16:54:34', 'Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Ipsum', 'Lorem IpsumLorem IpsumLorem Ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsumlorem-ipsumlorem-ipsum', '', '', '2018-07-26 16:54:34', '2018-07-26 16:54:34', '', 89, 'http://nammuderuchikal.com/rtcamp/?page_id=115', 0, 'page', '', 0),
(116, 1, '2018-07-26 16:54:34', '2018-07-26 16:54:34', 'Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Ipsum', 'Lorem IpsumLorem IpsumLorem Ipsum', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2018-07-26 16:54:34', '2018-07-26 16:54:34', '', 115, 'http://nammuderuchikal.com/rtcamp/2018/07/26/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-07-26 17:59:11', '2018-07-26 17:59:11', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing', 'Lorem Ipsum is simply dummy text of the printing', '', 'publish', 'open', 'open', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing', '', '', '2018-07-26 17:59:34', '2018-07-26 17:59:34', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=117', 0, 'post', '', 0),
(118, 1, '2018-07-26 17:59:11', '2018-07-26 17:59:11', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing', 'Lorem Ipsum is simply dummy text of the printing', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-07-26 17:59:11', '2018-07-26 17:59:11', '', 117, 'http://nammuderuchikal.com/rtcamp/2018/07/26/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-07-26 17:59:30', '2018-07-26 17:59:30', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing', 'Lorem Ipsum is simply dummy text of the printing2', '', 'publish', 'open', 'open', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing2', '', '', '2018-07-26 17:59:31', '2018-07-26 17:59:31', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=119', 0, 'post', '', 0),
(120, 1, '2018-07-26 17:59:31', '2018-07-26 17:59:31', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing<strong>Lorem Ipsum</strong> is simply dummy text of the printing', 'Lorem Ipsum is simply dummy text of the printing2', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-07-26 17:59:31', '2018-07-26 17:59:31', '', 119, 'http://nammuderuchikal.com/rtcamp/2018/07/26/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-07-26 17:59:57', '2018-07-26 17:59:57', 'Lorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printing', 'Lorem Ipsum is simply dummy text of the printing 3', '', 'publish', 'open', 'open', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-3', '', '', '2018-07-26 17:59:57', '2018-07-26 17:59:57', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=121', 0, 'post', '', 0),
(122, 1, '2018-07-26 17:59:57', '2018-07-26 17:59:57', 'Lorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printing', 'Lorem Ipsum is simply dummy text of the printing 3', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-07-26 17:59:57', '2018-07-26 17:59:57', '', 121, 'http://nammuderuchikal.com/rtcamp/2018/07/26/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-07-26 18:41:28', '2018-07-26 18:41:28', '', 'recent-pro-1', '', 'inherit', 'open', 'closed', '', 'recent-pro-1', '', '', '2018-07-26 18:41:28', '2018-07-26 18:41:28', '', 0, 'http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/recent-pro-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2018-07-26 18:41:29', '2018-07-26 18:41:29', '', 'recent-pro-2', '', 'inherit', 'open', 'closed', '', 'recent-pro-2', '', '', '2018-07-26 18:41:29', '2018-07-26 18:41:29', '', 0, 'http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/recent-pro-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2018-07-26 18:41:30', '2018-07-26 18:41:30', '', 'recent-pro-3', '', 'inherit', 'open', 'closed', '', 'recent-pro-3', '', '', '2018-07-26 18:41:30', '2018-07-26 18:41:30', '', 0, 'http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/recent-pro-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2018-07-26 18:46:09', '2018-07-26 18:46:09', '', 'Terms of Services', '', 'publish', 'closed', 'closed', '', 'terms-of-services', '', '', '2018-07-26 18:46:09', '2018-07-26 18:46:09', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=126', 0, 'page', '', 0),
(127, 1, '2018-07-26 18:46:09', '2018-07-26 18:46:09', '', 'Terms of Services', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2018-07-26 18:46:09', '2018-07-26 18:46:09', '', 126, 'http://nammuderuchikal.com/rtcamp/2018/07/26/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-07-26 18:46:31', '2018-07-26 18:46:31', '', 'Security', '', 'publish', 'closed', 'closed', '', 'security', '', '', '2018-07-26 18:46:31', '2018-07-26 18:46:31', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=128', 0, 'page', '', 0),
(129, 1, '2018-07-26 18:46:31', '2018-07-26 18:46:31', '', 'Security', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-07-26 18:46:31', '2018-07-26 18:46:31', '', 128, 'http://nammuderuchikal.com/rtcamp/2018/07/26/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2018-07-26 18:50:35', '2018-07-26 18:50:35', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2018-07-26 18:50:35', '2018-07-26 18:50:35', '', 0, 'http://nammuderuchikal.com/rtcamp/?option-tree=media', 0, 'option-tree', '', 0),
(131, 1, '2018-07-26 18:52:08', '2018-07-26 18:52:08', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2018-07-26 18:53:22', '2018-07-26 18:53:22', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=131', 1, 'nav_menu_item', '', 0),
(132, 1, '2018-07-26 18:52:09', '2018-07-26 18:52:09', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2018-07-26 18:53:23', '2018-07-26 18:53:23', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=132', 3, 'nav_menu_item', '', 0),
(133, 1, '2018-07-26 18:52:25', '2018-07-26 18:52:25', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy-2', '', '', '2018-07-26 18:52:57', '2018-07-26 18:52:57', '', 0, 'http://nammuderuchikal.com/rtcamp/?page_id=133', 0, 'page', '', 0),
(134, 1, '2018-07-26 18:52:25', '2018-07-26 18:52:25', '', 'Terms of Service', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2018-07-26 18:52:25', '2018-07-26 18:52:25', '', 133, 'http://nammuderuchikal.com/rtcamp/2018/07/26/133-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-07-26 18:52:57', '2018-07-26 18:52:57', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2018-07-26 18:52:57', '2018-07-26 18:52:57', '', 133, 'http://nammuderuchikal.com/rtcamp/2018/07/26/133-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2018-07-26 18:53:22', '2018-07-26 18:53:22', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2018-07-26 18:53:22', '2018-07-26 18:53:22', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=136', 2, 'nav_menu_item', '', 0),
(137, 1, '2018-07-26 18:56:06', '2018-07-26 18:56:06', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2018-07-26 18:56:06', '2018-07-26 18:56:06', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=137', 1, 'nav_menu_item', '', 0),
(138, 1, '2018-07-26 18:54:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-26 18:54:47', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=138', 1, 'nav_menu_item', '', 0),
(139, 1, '2018-07-26 18:56:10', '2018-07-26 18:56:10', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2018-07-26 18:56:10', '2018-07-26 18:56:10', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=139', 7, 'nav_menu_item', '', 0),
(140, 1, '2018-07-26 18:56:10', '2018-07-26 18:56:10', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2018-07-26 18:56:10', '2018-07-26 18:56:10', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=140', 8, 'nav_menu_item', '', 0),
(141, 1, '2018-07-26 18:56:09', '2018-07-26 18:56:09', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2018-07-26 18:56:09', '2018-07-26 18:56:09', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=141', 6, 'nav_menu_item', '', 0),
(142, 1, '2018-07-26 18:56:07', '2018-07-26 18:56:07', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2018-07-26 18:56:07', '2018-07-26 18:56:07', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=142', 3, 'nav_menu_item', '', 0),
(143, 1, '2018-07-26 18:54:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-26 18:54:52', '0000-00-00 00:00:00', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=143', 1, 'nav_menu_item', '', 0),
(144, 1, '2018-07-26 18:56:09', '2018-07-26 18:56:09', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2018-07-26 18:56:09', '2018-07-26 18:56:09', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=144', 5, 'nav_menu_item', '', 0),
(145, 1, '2018-07-26 18:56:07', '2018-07-26 18:56:07', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2018-07-26 18:56:07', '2018-07-26 18:56:07', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=145', 2, 'nav_menu_item', '', 0),
(146, 1, '2018-07-26 18:56:08', '2018-07-26 18:56:08', ' ', '', '', 'publish', 'closed', 'closed', '', '146', '', '', '2018-07-26 18:56:08', '2018-07-26 18:56:08', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=146', 4, 'nav_menu_item', '', 0),
(147, 1, '2018-07-26 19:00:23', '2018-07-26 19:00:23', '', 'footer-logo', '', 'inherit', 'open', 'closed', '', 'footer-logo', '', '', '2018-07-26 19:00:23', '2018-07-26 19:00:23', '', 130, 'http://nammuderuchikal.com/rtcamp/wp-content/uploads/2018/07/footer-logo.png', 0, 'attachment', 'image/png', 0),
(148, 1, '2018-07-27 04:13:53', '2018-07-27 04:13:53', '{"rtcamp::custom_logo":{"value":49,"type":"theme_mod","user_id":1,"date_modified_gmt":"2018-07-27 04:13:50"}}', '', '', 'trash', 'closed', 'closed', '', '45f83690-dc9f-49ce-9e32-cf57c69642aa', '', '', '2018-07-27 04:13:53', '2018-07-27 04:13:53', '', 0, 'http://nammuderuchikal.com/rtcamp/?p=148', 0, 'customize_changeset', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(64, 4, 0),
(65, 4, 0),
(66, 4, 0),
(67, 4, 0),
(68, 4, 0),
(69, 4, 0),
(70, 4, 0),
(71, 4, 0),
(72, 4, 0),
(117, 5, 0),
(119, 5, 0),
(121, 5, 0),
(131, 6, 0),
(132, 6, 0),
(136, 6, 0),
(137, 7, 0),
(139, 7, 0),
(140, 7, 0),
(141, 7, 0),
(142, 7, 0),
(144, 7, 0),
(145, 7, 0),
(146, 7, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 9),
(5, 5, 'category', '', 0, 3),
(6, 6, 'nav_menu', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 8) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(4, 'Header menu', 'header-menu', 0),
(5, 'News', 'news', 0),
(6, 'security menu', 'security-menu', 0),
(7, 'footer menu', 'footer-menu', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'rtpanel'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:"df77c30264be02bc796baabda49d2c0d581a15708eafc475cc62d75b1262a07f";a:4:{s:10:"expiration";i:1532700632;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36";s:5:"login";i:1532527832;}s:64:"d0784f08f5a7b82080f4502e0a0810f940a8cc34362d7e3218bfdb72ad52f3df";a:4:{s:10:"expiration";i:1532745314;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36";s:5:"login";i:1532572514;}s:64:"1beabf9db1ba2486cbf1bf0d4a799acbc6035ea48f1959edf0f366f0f2667fe6";a:4:{s:10:"expiration";i:1532787590;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36";s:5:"login";i:1532614790;}s:64:"5f78ed3e8f5cff16c99f4ed3b335ede8465eeaf5e50e67611192893a4d7ff5db";a:4:{s:10:"expiration";i:1532790055;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36";s:5:"login";i:1532617255;}s:64:"ebebd17bf8b710b9b6c235552ee8579b1f1ade108baf08cf6a7000118ea695b8";a:4:{s:10:"expiration";i:1532833858;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36";s:5:"login";i:1532661058;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1532531817'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(22, 1, 'nav_menu_recently_edited', '7'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:0:{}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'rtpanel', '$P$BYad3afaxBVS9VjbtgviqgmLLhXP540', 'rtpanel', 'vinshakp7@gmail.com', '', '2018-07-25 14:10:09', '', 0, 'rtpanel') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

