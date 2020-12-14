-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 14, 2020 at 10:33 AM
-- Server version: 10.2.34-MariaDB-1:10.2.34+maria~bionic-log
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `backend_layout`
--

CREATE TABLE `backend_layout` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `be_groups`
--

CREATE TABLE `be_groups` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `explicit_allowdeny` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_mountpoints` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagetypes_select` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tables_modify` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `groupMods` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_mountpoints` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_permissions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subgroup` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `category_perms` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `be_sessions`
--

CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ses_data` longblob DEFAULT NULL,
  `ses_backuserid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `be_sessions`
--

INSERT INTO `be_sessions` (`ses_id`, `ses_iplock`, `ses_userid`, `ses_tstamp`, `ses_data`, `ses_backuserid`) VALUES
('38ed5a90f909488fbf3f0a49891ca086', '172.18.0.6', 1, 1607941680, 0x613a333a7b733a32363a22666f726d50726f74656374696f6e53657373696f6e546f6b656e223b733a36343a2237346164303031393530366639616338666238663261326363313766613963373861323830653664303336343831613935393365666163633563386633633262223b733a32373a22636f72652e74656d706c6174652e666c6173684d65737361676573223b4e3b733a34393a225459504f335c434d535c4261636b656e645c436f6e74726f6c6c65725c506167654c61796f7574436f6e74726f6c6c6572223b613a313a7b733a31323a227365617263685f6669656c64223b4e3b7d7d, 0);

-- --------------------------------------------------------

--
-- Table structure for table `be_users`
--

CREATE TABLE `be_users` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `disable` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob DEFAULT NULL,
  `file_mountpoints` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_permissions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `createdByAction` int(11) NOT NULL DEFAULT 0,
  `usergroup_cached_list` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `category_perms` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `be_users`
--

INSERT INTO `be_users` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `disable`, `starttime`, `endtime`, `description`, `username`, `avatar`, `password`, `admin`, `usergroup`, `lang`, `email`, `db_mountpoints`, `options`, `realName`, `userMods`, `allowed_languages`, `uc`, `file_mountpoints`, `file_permissions`, `workspace_perms`, `lockToDomain`, `disableIPlock`, `TSconfig`, `lastlogin`, `createdByAction`, `usergroup_cached_list`, `workspace_id`, `category_perms`) VALUES
(1, 0, 1607532838, 1607532838, 0, 0, 0, 0, 0, NULL, 'admin', 0, '$argon2i$v=19$m=65536,t=16,p=1$WEdaa21qQTNEODA2M2x3cA$zIOPQfca2B1SyQbCQlwCe3fHFyQTzV71/KkeWeUiUAE', 1, '', '', '', NULL, 0, '', NULL, '', 0x613a31373a7b733a31343a22696e746572666163655365747570223b733a373a226261636b656e64223b733a31303a226d6f64756c6544617461223b613a373a7b733a31303a227765625f6c61796f7574223b613a323a7b733a383a2266756e6374696f6e223b733a313a2231223b733a383a226c616e6775616765223b733a313a2230223b7d733a31303a22466f726d456e67696e65223b613a323a7b693a303b613a323a7b733a33323a223361663530356239323033343863316137396266363265613238636265633930223b613a343a7b693a303b733a333a22343034223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a353a227061676573223b613a313a7b693a353b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a32383a2226656469742535427061676573253544253542352535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a353a227061676573223b733a333a22756964223b693a353b733a333a22706964223b693a313b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a223835323831643064616233653965373231643837626163333137323861643866223b613a343a7b693a303b733a32303a225b3430345d2050616765204e6f7420466f756e64223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a31303a2274745f636f6e74656e74223b613a313a7b693a333b733a343a2265646974223b7d7d733a373a2264656656616c73223b613a313a7b733a31303a2274745f636f6e74656e74223b613a333a7b733a363a22636f6c506f73223b733a313a2230223b733a31363a227379735f6c616e67756167655f756964223b733a313a2230223b733a353a224354797065223b733a363a22686561646572223b7d7d733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a3136313a22266564697425354274745f636f6e74656e74253544253542332535443d656469742664656656616c7325354274745f636f6e74656e74253544253542636f6c506f732535443d302664656656616c7325354274745f636f6e74656e742535442535427379735f6c616e67756167655f7569642535443d302664656656616c7325354274745f636f6e74656e7425354425354243547970652535443d686561646572223b693a333b613a353a7b733a353a227461626c65223b733a31303a2274745f636f6e74656e74223b733a333a22756964223b693a333b733a333a22706964223b693a353b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d7d693a313b733a33323a226430356465356462376139353731366131303661376236356135396266633332223b7d733a35373a225459504f335c434d535c4261636b656e645c5574696c6974795c4261636b656e645574696c6974793a3a6765745570646174655369676e616c223b613a303a7b7d733a363a227765625f7473223b613a323a7b733a383a2266756e6374696f6e223b733a38353a225459504f335c434d535c547374656d706c6174655c436f6e74726f6c6c65725c5479706f53637269707454656d706c617465496e666f726d6174696f6e4d6f64756c6546756e6374696f6e436f6e74726f6c6c6572223b733a31393a22636f6e7374616e745f656469746f725f636174223b733a373a22636f6e74656e74223b7d733a31363a226f70656e646f63733a3a726563656e74223b613a343a7b733a33323a226430356465356462376139353731366131303661376236356135396266633332223b613a343a7b693a303b733a32353a224d61696e205479706f5363726970742052656e646572696e67223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a31323a227379735f74656d706c617465223b613a313a7b693a313b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b733a393a22636f6e7374616e7473223b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a35373a2226656469742535427379735f74656d706c617465253544253542312535443d6564697426636f6c756d6e734f6e6c793d636f6e7374616e7473223b693a333b613a353a7b733a353a227461626c65223b733a31323a227379735f74656d706c617465223b733a333a22756964223b693a313b733a333a22706964223b693a313b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a223836323035633539333532373062386565343133353932656331623632323932223b613a343a7b693a303b733a32353a224d61696e205479706f5363726970742052656e646572696e67223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a31323a227379735f74656d706c617465223b613a313a7b693a313b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33353a2226656469742535427379735f74656d706c617465253544253542312535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a31323a227379735f74656d706c617465223b733a333a22756964223b693a313b733a333a22706964223b693a313b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a226465616334373831333764643438613937653239396264303436343132653231223b613a343a7b693a303b733a31363a225469746c65207769746820656d6f6a69223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a31303a2274745f636f6e74656e74223b613a313a7b693a323b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a33333a22266564697425354274745f636f6e74656e74253544253542322535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a31303a2274745f636f6e74656e74223b733a333a22756964223b693a323b733a333a22706964223b693a313b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d733a33323a223639366164646665636332393662333236666636653966303463376666336531223b613a343a7b693a303b733a343a22486f6d65223b693a313b613a363a7b733a343a2265646974223b613a313a7b733a353a227061676573223b613a313a7b693a313b733a343a2265646974223b7d7d733a373a2264656656616c73223b4e3b733a31323a226f7665727269646556616c73223b4e3b733a31313a22636f6c756d6e734f6e6c79223b4e3b733a363a226e6f56696577223b4e3b733a393a22776f726b7370616365223b4e3b7d693a323b733a32383a2226656469742535427061676573253544253542312535443d65646974223b693a333b613a353a7b733a353a227461626c65223b733a353a227061676573223b733a333a22756964223b693a313b733a333a22706964223b693a303b733a333a22636d64223b733a343a2265646974223b733a31323a2264656c657465416363657373223b623a313b7d7d7d733a31363a22657874656e73696f6e6275696c646572223b613a313a7b733a393a22666972737454696d65223b693a303b7d733a383a227765625f6c697374223b613a303a7b7d7d733a31393a227468756d626e61696c73427944656661756c74223b693a313b733a31343a22656d61696c4d6541744c6f67696e223b693a303b733a31313a2273746172744d6f64756c65223b733a31353a2268656c705f41626f757441626f7574223b733a383a227469746c654c656e223b693a35303b733a383a22656469745f525445223b733a313a2231223b733a32303a22656469745f646f634d6f64756c6555706c6f6164223b733a313a2231223b733a31353a22726573697a65546578746172656173223b693a313b733a32353a22726573697a655465787461726561735f4d6178486569676874223b693a3530303b733a32343a22726573697a655465787461726561735f466c657869626c65223b693a303b733a343a226c616e67223b733a303a22223b733a31393a2266697273744c6f67696e54696d655374616d70223b693a313630373533323837353b733a31353a226d6f64756c6553657373696f6e4944223b613a373a7b733a31303a227765625f6c61796f7574223b733a33323a223431373162666163326165353662303937373432626166653364313034353432223b733a31303a22466f726d456e67696e65223b733a33323a226666353962633530346261316335633138666537383839373166653331323139223b733a35373a225459504f335c434d535c4261636b656e645c5574696c6974795c4261636b656e645574696c6974793a3a6765745570646174655369676e616c223b733a33323a226666353962633530346261316335633138666537383839373166653331323139223b733a363a227765625f7473223b733a33323a223431373162666163326165353662303937373432626166653364313034353432223b733a31363a226f70656e646f63733a3a726563656e74223b733a33323a226666353962633530346261316335633138666537383839373166653331323139223b733a31363a22657874656e73696f6e6275696c646572223b733a33323a223431373162666163326165353662303937373432626166653364313034353432223b733a383a227765625f6c697374223b733a33323a223161613063356162393366653538326435333639643538333538376337346366223b7d733a31373a224261636b656e64436f6d706f6e656e7473223b613a313a7b733a363a22537461746573223b613a313a7b733a383a225061676574726565223b613a313a7b733a393a22737461746548617368223b613a313a7b733a333a22305f31223b733a313a2231223b7d7d7d7d733a31303a22696e6c696e6556696577223b733a37373a22613a313a7b733a343a2273697465223b613a313a7b693a313b613a313a7b733a31383a22736974655f6572726f7268616e646c696e67223b613a313a7b693a303b733a313a2230223b7d7d7d7d223b733a31313a2262726f7773655472656573223b613a313a7b733a31313a2262726f7773655061676573223b733a33323a22613a313a7b693a303b613a323a7b693a303b693a313b693a313b693a313b7d7d223b7d7d, NULL, NULL, 1, '', 0, NULL, 1607940075, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache_treelist`
--

CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0,
  `treelist` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_adminpanel_requestcache`
--

CREATE TABLE `cf_adminpanel_requestcache` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_adminpanel_requestcache_tags`
--

CREATE TABLE `cf_adminpanel_requestcache_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_cache_hash`
--

CREATE TABLE `cf_cache_hash` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cf_cache_hash`
--

INSERT INTO `cf_cache_hash` (`id`, `identifier`, `expires`, `content`) VALUES
(1, 'a341977e40078ac89538934c8436cc57', 2145909600, 0x613a323a7b693a303b613a333a7b733a383a225453636f6e666967223b613a333a7b733a383a226f7074696f6e732e223b613a383a7b733a31353a22656e61626c65426f6f6b6d61726b73223b733a313a2231223b733a31303a2266696c655f6c6973742e223b613a343a7b733a32383a22656e61626c65446973706c6179426967436f6e74726f6c50616e656c223b733a31303a2273656c65637461626c65223b733a32333a22656e61626c65446973706c61795468756d626e61696c73223b733a31303a2273656c65637461626c65223b733a31353a22656e61626c65436c6970426f617264223b733a31303a2273656c65637461626c65223b733a31303a227468756d626e61696c2e223b613a323a7b733a353a227769647468223b733a323a223634223b733a363a22686569676874223b733a323a223634223b7d7d733a393a2270616765547265652e223b613a313a7b733a33313a22646f6b7479706573546f53686f77496e4e6577506167654472616741726561223b733a32313a22312c362c342c372c332c3235342c3235352c313939223b7d733a31323a22636f6e746578744d656e752e223b613a313a7b733a363a227461626c652e223b613a333a7b733a363a2270616765732e223b613a323a7b733a31323a2264697361626c654974656d73223b733a303a22223b733a353a22747265652e223b613a313a7b733a31323a2264697361626c654974656d73223b733a303a22223b7d7d733a393a227379735f66696c652e223b613a323a7b733a31323a2264697361626c654974656d73223b733a303a22223b733a353a22747265652e223b613a313a7b733a31323a2264697361626c654974656d73223b733a303a22223b7d7d733a31353a227379735f66696c656d6f756e74732e223b613a323a7b733a31323a2264697361626c654974656d73223b733a303a22223b733a353a22747265652e223b613a313a7b733a31323a2264697361626c654974656d73223b733a303a22223b7d7d7d7d733a31313a2273617665446f6356696577223b733a313a2231223b733a31303a2273617665446f634e6577223b733a313a2231223b733a31313a2273617665446f634e65772e223b613a333a7b733a353a227061676573223b733a313a2230223b733a383a227379735f66696c65223b733a313a2230223b733a31373a227379735f66696c655f6d65746164617461223b733a313a2230223b7d733a31343a2264697361626c6544656c6574652e223b613a313a7b733a383a227379735f66696c65223b733a313a2231223b7d7d733a393a2261646d50616e656c2e223b613a313a7b733a373a22656e61626c652e223b613a313a7b733a333a22616c6c223b733a313a2231223b7d7d733a31323a2254434164656661756c74732e223b613a313a7b733a393a227379735f6e6f74652e223b613a323a7b733a363a22617574686f72223b733a303a22223b733a353a22656d61696c223b733a303a22223b7d7d7d733a383a2273656374696f6e73223b613a303a7b7d733a353a226d61746368223b613a303a7b7d7d693a313b733a33323a226133323865393736646162313531363664666333636462646161643962336461223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `cf_cache_hash_tags`
--

CREATE TABLE `cf_cache_hash_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cf_cache_hash_tags`
--

INSERT INTO `cf_cache_hash_tags` (`id`, `identifier`, `tag`) VALUES
(1, 'a341977e40078ac89538934c8436cc57', 'ident_userTS_TSconfig');

-- --------------------------------------------------------

--
-- Table structure for table `cf_cache_imagesizes`
--

CREATE TABLE `cf_cache_imagesizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_cache_pages`
--

CREATE TABLE `cf_cache_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_cache_pagesection`
--

CREATE TABLE `cf_cache_pagesection` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_cache_pagesection_tags`
--

CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_cache_pages_tags`
--

CREATE TABLE `cf_cache_pages_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_cache_rootline`
--

CREATE TABLE `cf_cache_rootline` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cf_cache_rootline`
--

INSERT INTO `cf_cache_rootline` (`id`, `identifier`, `expires`, `content`) VALUES
(1, '1__0_0', 1610533894, 0x613a313a7b693a303b613a33303a7b733a333a22706964223b693a303b733a333a22756964223b693a313b733a393a2274337665725f6f6964223b693a303b733a31303a2274337665725f77736964223b693a303b733a31313a2274337665725f7374617465223b693a303b733a353a227469746c65223b733a343a22486f6d65223b733a353a22616c696173223b733a303a22223b733a393a226e61765f7469746c65223b733a303a22223b733a353a226d65646961223b733a303a22223b733a363a226c61796f7574223b693a303b733a363a2268696464656e223b693a303b733a393a22737461727474696d65223b693a303b733a373a22656e6474696d65223b693a303b733a383a2266655f67726f7570223b733a303a22223b733a31363a22657874656e64546f5375627061676573223b693a303b733a373a22646f6b74797065223b693a313b733a383a225453636f6e666967223b4e3b733a31373a227473636f6e6669675f696e636c75646573223b4e3b733a31313a2269735f73697465726f6f74223b693a313b733a393a226d6f756e745f706964223b693a303b733a31323a226d6f756e745f7069645f6f6c223b693a303b733a31333a2266655f6c6f67696e5f6d6f6465223b693a303b733a32353a226261636b656e645f6c61796f75745f6e6578745f6c6576656c223b733a303a22223b733a32393a2274785f6665645f706167655f636f6e74726f6c6c65725f616374696f6e223b733a32383a22434f2e44656d6f536974657061636b6167652d3e7374616e64617274223b733a33333a2274785f6665645f706167655f636f6e74726f6c6c65725f616374696f6e5f737562223b733a32383a22434f2e44656d6f536974657061636b6167652d3e7374616e64617274223b733a32303a2274785f6665645f706167655f666c6578666f726d223b4e3b733a32343a2274785f6665645f706167655f666c6578666f726d5f737562223b4e3b733a383a226e61765f68696465223b693a303b733a383a2273686f7274637574223b693a303b733a31333a2273686f72746375745f6d6f6465223b693a303b7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `cf_cache_rootline_tags`
--

CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

INSERT INTO `cf_cache_rootline_tags` (`id`, `identifier`, `tag`) VALUES
(1, '1__0_0', 'pageId_1');

-- --------------------------------------------------------

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_vhs_main`
--

CREATE TABLE `cf_vhs_main` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_vhs_main_tags`
--

CREATE TABLE `cf_vhs_main_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_vhs_markdown`
--

CREATE TABLE `cf_vhs_markdown` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cf_vhs_markdown_tags`
--

CREATE TABLE `cf_vhs_markdown_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_types`
--

CREATE TABLE `content_types` (
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `t3_origuid` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(6) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT 0,
  `t3ver_id` int(11) NOT NULL DEFAULT 0,
  `t3ver_wsid` int(11) NOT NULL DEFAULT 0,
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_count` int(11) NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(11) NOT NULL DEFAULT 0,
  `t3ver_move_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_type` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension_identity` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FluidTYPO3.Builder',
  `content_configuration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `grid` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_source` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_file` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validation` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_dump` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fe_groups`
--

CREATE TABLE `fe_groups` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subgroup` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fe_sessions`
--

CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ses_data` mediumblob DEFAULT NULL,
  `ses_permanent` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ses_anonymous` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fe_users`
--

CREATE TABLE `fe_users` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `disable` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` blob DEFAULT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_online` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `felogin_forgotHash` varchar(80) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `editlock` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `perms_userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `perms_groupid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `perms_user` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `perms_group` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doktype` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_siteroot` smallint(6) NOT NULL DEFAULT 0,
  `php_tree_stop` smallint(6) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastUpdated` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cache_timeout` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_search` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `abstract` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT 0,
  `content_from_pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mount_pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT 0,
  `fe_login_mode` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `legacy_overlay_uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `no_index` smallint(6) NOT NULL DEFAULT 0,
  `no_follow` smallint(6) NOT NULL DEFAULT 0,
  `og_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `og_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_image` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `canonical_link` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT 0,
  `tx_fed_page_flexform` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_fed_page_flexform_sub` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_fed_page_controller_action` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_fed_page_controller_action_sub` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `hidden`, `starttime`, `endtime`, `fe_group`, `sorting`, `rowDescription`, `editlock`, `sys_language_uid`, `l10n_parent`, `l10n_source`, `l10n_state`, `t3_origuid`, `l10n_diffsource`, `t3ver_oid`, `t3ver_id`, `t3ver_label`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `perms_userid`, `perms_groupid`, `perms_user`, `perms_group`, `perms_everybody`, `title`, `slug`, `doktype`, `TSconfig`, `is_siteroot`, `php_tree_stop`, `url`, `shortcut`, `shortcut_mode`, `subtitle`, `layout`, `target`, `media`, `lastUpdated`, `keywords`, `cache_timeout`, `cache_tags`, `newUntil`, `description`, `no_search`, `SYS_LASTCHANGED`, `abstract`, `module`, `extendToSubpages`, `author`, `author_email`, `nav_title`, `nav_hide`, `content_from_pid`, `mount_pid`, `mount_pid_ol`, `alias`, `l18n_cfg`, `fe_login_mode`, `backend_layout`, `backend_layout_next_level`, `tsconfig_includes`, `legacy_overlay_uid`, `tx_impexp_origuid`, `seo_title`, `no_index`, `no_follow`, `og_title`, `og_description`, `og_image`, `twitter_title`, `twitter_description`, `twitter_image`, `canonical_link`, `categories`, `tx_fed_page_flexform`, `tx_fed_page_flexform_sub`, `tx_fed_page_controller_action`, `tx_fed_page_controller_action_sub`) VALUES
(1, 0, 1607543853, 1607532858, 1, 0, 0, 0, 0, '', 0, NULL, 0, 0, 0, 0, NULL, 0, 0x613a34393a7b733a373a22646f6b74797065223b4e3b733a353a227469746c65223b4e3b733a343a22736c7567223b4e3b733a393a226e61765f7469746c65223b4e3b733a383a227375627469746c65223b4e3b733a393a2273656f5f7469746c65223b4e3b733a383a226e6f5f696e646578223b4e3b733a393a226e6f5f666f6c6c6f77223b4e3b733a31343a2263616e6f6e6963616c5f6c696e6b223b4e3b733a383a226f675f7469746c65223b4e3b733a31343a226f675f6465736372697074696f6e223b4e3b733a383a226f675f696d616765223b4e3b733a31333a22747769747465725f7469746c65223b4e3b733a31393a22747769747465725f6465736372697074696f6e223b4e3b733a31333a22747769747465725f696d616765223b4e3b733a383a226162737472616374223b4e3b733a383a226b6579776f726473223b4e3b733a31313a226465736372697074696f6e223b4e3b733a363a22617574686f72223b4e3b733a31323a22617574686f725f656d61696c223b4e3b733a31313a226c61737455706461746564223b4e3b733a363a226c61796f7574223b4e3b733a383a226e6577556e74696c223b4e3b733a31343a226261636b656e645f6c61796f7574223b4e3b733a32353a226261636b656e645f6c61796f75745f6e6578745f6c6576656c223b4e3b733a31363a22636f6e74656e745f66726f6d5f706964223b4e3b733a363a22746172676574223b4e3b733a31333a2263616368655f74696d656f7574223b4e3b733a31303a2263616368655f74616773223b4e3b733a31313a2269735f73697465726f6f74223b4e3b733a393a226e6f5f736561726368223b4e3b733a31333a227068705f747265655f73746f70223b4e3b733a363a226d6f64756c65223b4e3b733a353a226d65646961223b4e3b733a31373a227473636f6e6669675f696e636c75646573223b4e3b733a383a225453636f6e666967223b4e3b733a383a226c31386e5f636667223b4e3b733a363a2268696464656e223b4e3b733a383a226e61765f68696465223b4e3b733a393a22737461727474696d65223b4e3b733a373a22656e6474696d65223b4e3b733a31363a22657874656e64546f5375627061676573223b4e3b733a383a2266655f67726f7570223b4e3b733a31333a2266655f6c6f67696e5f6d6f6465223b4e3b733a383a22656469746c6f636b223b4e3b733a31303a2263617465676f72696573223b4e3b733a31343a22726f774465736372697074696f6e223b4e3b733a32393a2274785f6665645f706167655f636f6e74726f6c6c65725f616374696f6e223b4e3b733a33333a2274785f6665645f706167655f636f6e74726f6c6c65725f616374696f6e5f737562223b4e3b7d, 0, 0, '', 0, 0, 0, 0, 0, 0, 1, 1, 31, 31, 1, 'Home', '/', 1, NULL, 1, 0, '', 0, 0, '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1607544342, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', NULL, 0, 0, '', 0, 0, '', NULL, 0, '', NULL, 0, '', 0, NULL, NULL, 'CO.DemoSitepackage->standart', 'CO.DemoSitepackage->standart'),
(2, 1, 1607708417, 1607708395, 1, 0, 0, 0, 0, '0', 64, NULL, 0, 0, 0, 0, NULL, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 0, 0, '', 0, 0, 0, 0, 0, 0, 1, 0, 31, 27, 0, 'About', '/about', 1, NULL, 0, 0, '', 0, 0, '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1607708417, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', NULL, 0, 0, '', 0, 0, '', NULL, 0, '', NULL, 0, '', 0, NULL, NULL, '', ''),
(3, 1, 1607708422, 1607708403, 1, 0, 0, 0, 0, '0', 128, NULL, 0, 0, 0, 0, NULL, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 0, 0, '', 0, 0, 0, 0, 0, 0, 1, 0, 31, 27, 0, 'Services', '/services', 1, NULL, 0, 0, '', 0, 0, '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1607708422, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', NULL, 0, 0, '', 0, 0, '', NULL, 0, '', NULL, 0, '', 0, NULL, NULL, '', ''),
(4, 1, 1607708425, 1607708413, 1, 0, 0, 0, 0, '0', 384, NULL, 0, 0, 0, 0, NULL, 0, 0x613a313a7b733a363a2268696464656e223b4e3b7d, 0, 0, '', 0, 0, 0, 0, 0, 0, 1, 0, 31, 27, 0, 'Contact', '/contact', 1, NULL, 0, 0, '', 0, 0, '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 0, 1607708425, NULL, '', 0, '', '', '', 0, 0, 0, 0, '', 0, 0, '', '', NULL, 0, 0, '', 0, 0, '', NULL, 0, '', NULL, 0, '', 0, NULL, NULL, '', ''),
(5, 1, 1607940126, 1607940098, 1, 0, 0, 0, 0, '', 640, NULL, 0, 0, 0, 0, NULL, 0, 0x613a34393a7b733a373a22646f6b74797065223b4e3b733a353a227469746c65223b4e3b733a343a22736c7567223b4e3b733a393a226e61765f7469746c65223b4e3b733a383a227375627469746c65223b4e3b733a393a2273656f5f7469746c65223b4e3b733a383a226e6f5f696e646578223b4e3b733a393a226e6f5f666f6c6c6f77223b4e3b733a31343a2263616e6f6e6963616c5f6c696e6b223b4e3b733a383a226f675f7469746c65223b4e3b733a31343a226f675f6465736372697074696f6e223b4e3b733a383a226f675f696d616765223b4e3b733a31333a22747769747465725f7469746c65223b4e3b733a31393a22747769747465725f6465736372697074696f6e223b4e3b733a31333a22747769747465725f696d616765223b4e3b733a383a226162737472616374223b4e3b733a383a226b6579776f726473223b4e3b733a31313a226465736372697074696f6e223b4e3b733a363a22617574686f72223b4e3b733a31323a22617574686f725f656d61696c223b4e3b733a31313a226c61737455706461746564223b4e3b733a363a226c61796f7574223b4e3b733a383a226e6577556e74696c223b4e3b733a31343a226261636b656e645f6c61796f7574223b4e3b733a32353a226261636b656e645f6c61796f75745f6e6578745f6c6576656c223b4e3b733a31363a22636f6e74656e745f66726f6d5f706964223b4e3b733a363a22746172676574223b4e3b733a31333a2263616368655f74696d656f7574223b4e3b733a31303a2263616368655f74616773223b4e3b733a31313a2269735f73697465726f6f74223b4e3b733a393a226e6f5f736561726368223b4e3b733a31333a227068705f747265655f73746f70223b4e3b733a363a226d6f64756c65223b4e3b733a353a226d65646961223b4e3b733a31373a227473636f6e6669675f696e636c75646573223b4e3b733a383a225453636f6e666967223b4e3b733a383a226c31386e5f636667223b4e3b733a363a2268696464656e223b4e3b733a383a226e61765f68696465223b4e3b733a393a22737461727474696d65223b4e3b733a373a22656e6474696d65223b4e3b733a31363a22657874656e64546f5375627061676573223b4e3b733a383a2266655f67726f7570223b4e3b733a31333a2266655f6c6f67696e5f6d6f6465223b4e3b733a383a22656469746c6f636b223b4e3b733a31303a2263617465676f72696573223b4e3b733a31343a22726f774465736372697074696f6e223b4e3b733a32393a2274785f6665645f706167655f636f6e74726f6c6c65725f616374696f6e223b4e3b733a33333a2274785f6665645f706167655f636f6e74726f6c6c65725f616374696f6e5f737562223b4e3b7d, 0, 0, '', 0, 0, 0, 0, 0, 0, 1, 0, 31, 27, 0, '404', '/404', 1, NULL, 0, 0, '', 0, 0, '', 0, '', 0, 0, NULL, 0, '', 0, NULL, 1, 1607940149, NULL, '', 0, '', '', '', 1, 0, 0, 0, '', 0, 0, '', '', NULL, 0, 0, '', 0, 0, '', NULL, 0, '', NULL, 0, '', 0, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_be_shortcuts`
--

CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_category`
--

CREATE TABLE `sys_category` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `items` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_category_record_mm`
--

CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_collection`
--

CREATE TABLE `sys_collection` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `items` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_collection_entries`
--

CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_domain`
--

CREATE TABLE `sys_domain` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `domainName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_file`
--

CREATE TABLE `sys_file` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(6) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT 0,
  `identifier` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_filemounts`
--

CREATE TABLE `sys_filemounts` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `read_only` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_file_collection`
--

CREATE TABLE `sys_file_collection` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `folder` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `recursive` smallint(6) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_file_metadata`
--

CREATE TABLE `sys_file_metadata` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `file` int(11) NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_file_processedfile`
--

CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_file_reference`
--

CREATE TABLE `sys_file_reference` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `table_local` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_file_storage`
--

CREATE TABLE `sys_file_storage` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `driver` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `configuration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT 0,
  `is_browsable` smallint(6) NOT NULL DEFAULT 0,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `is_writable` smallint(6) NOT NULL DEFAULT 0,
  `is_online` smallint(6) NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT 1,
  `processingfolder` tinytext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_file_storage`
--

INSERT INTO `sys_file_storage` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `description`, `name`, `driver`, `configuration`, `is_default`, `is_browsable`, `is_public`, `is_writable`, `is_online`, `auto_extract_metadata`, `processingfolder`) VALUES
(1, 0, 1607532904, 1607532904, 0, 0, 'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.', 'fileadmin/ (auto-created)', 'Local', '<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>', 1, 1, 1, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_history`
--

CREATE TABLE `sys_history` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `actiontype` smallint(6) NOT NULL DEFAULT 0,
  `usertype` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'BE',
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `originaluserid` int(10) UNSIGNED DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT 0,
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `history_data` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `workspace` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_history`
--

INSERT INTO `sys_history` (`uid`, `pid`, `tstamp`, `actiontype`, `usertype`, `userid`, `originaluserid`, `recuid`, `tablename`, `history_data`, `workspace`) VALUES
(1, 0, 1607532929, 1, 'BE', 1, 0, 1, 'tt_content', '{\"uid\":1,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1607532929,\"crdate\":1607532929,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"header\",\"header\":\"First content element\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"spaceBefore\":0,\"spaceAfter\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0}', 0),
(2, 0, 1607532959, 2, 'BE', 1, 0, 1, 'sys_template', '{\"oldRecord\":{\"config\":\"page = PAGE\\npage.10 = TEXT\\npage.10.value (\\n   <div style=\\\"width: 800px; margin: 15% auto;\\\">\\n      <div style=\\\"width: 300px;\\\">\\n        <svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" viewBox=\\\"0 0 150 42\\\"><path d=\\\"M60.2 14.4v27h-3.8v-27h-6.7v-3.3h17.1v3.3h-6.6zm20.2 12.9v14h-3.9v-14l-7.7-16.2h4.1l5.7 12.2 5.7-12.2h3.9l-7.8 16.2zm19.5 2.6h-3.6v11.4h-3.8V11.1s3.7-.3 7.3-.3c6.6 0 8.5 4.1 8.5 9.4 0 6.5-2.3 9.7-8.4 9.7m.4-16c-2.4 0-4.1.3-4.1.3v12.6h4.1c2.4 0 4.1-1.6 4.1-6.3 0-4.4-1-6.6-4.1-6.6m21.5 27.7c-7.1 0-9-5.2-9-15.8 0-10.2 1.9-15.1 9-15.1s9 4.9 9 15.1c.1 10.6-1.8 15.8-9 15.8m0-27.7c-3.9 0-5.2 2.6-5.2 12.1 0 9.3 1.3 12.4 5.2 12.4 3.9 0 5.2-3.1 5.2-12.4 0-9.4-1.3-12.1-5.2-12.1m19.9 27.7c-2.1 0-5.3-.6-5.7-.7v-3.1c1 .2 3.7.7 5.6.7 2.2 0 3.6-1.9 3.6-5.2 0-3.9-.6-6-3.7-6H138V24h3.1c3.5 0 3.7-3.6 3.7-5.3 0-3.4-1.1-4.8-3.2-4.8-1.9 0-4.1.5-5.3.7v-3.2c.5-.1 3-.7 5.2-.7 4.4 0 7 1.9 7 8.3 0 2.9-1 5.5-3.3 6.3 2.6.2 3.8 3.1 3.8 7.3 0 6.6-2.5 9-7.3 9\\\"\\/><path fill=\\\"#FF8700\\\" d=\\\"M31.7 28.8c-.6.2-1.1.2-1.7.2-5.2 0-12.9-18.2-12.9-24.3 0-2.2.5-3 1.3-3.6C12 1.9 4.3 4.2 1.9 7.2 1.3 8 1 9.1 1 10.6c0 9.5 10.1 31 17.3 31 3.3 0 8.8-5.4 13.4-12.8M28.4.5c6.6 0 13.2 1.1 13.2 4.8 0 7.6-4.8 16.7-7.2 16.7-4.4 0-9.9-12.1-9.9-18.2C24.5 1 25.6.5 28.4.5\\\"\\/><\\/svg>\\n      <\\/div>\\n      <h4 style=\\\"font-family: sans-serif;\\\">Welcome to a default website made with <a href=\\\"https:\\/\\/typo3.org\\\">TYPO3<\\/a><\\/h4>\\n   <\\/div>\\n)\\npage.100 =< styles.content.get\",\"description\":\"This is an Empty Site Package TypoScript template.\\n\\nFor each website you need a TypoScript template on the main page of your website (on the top level). For better maintenance all TypoScript should be extracted into external files via @import \'EXT:site_myproject\\/Configuration\\/TypoScript\\/setup.typoscript\'\"},\"newRecord\":{\"config\":\"page = PAGE\\r\\npage.10 =< styles.content.get\",\"description\":\"This is an Empty Site Package TypoScript template.\\r\\n\\r\\nFor each website you need a TypoScript template on the main page of your website (on the top level). For better maintenance all TypoScript should be extracted into external files via @import \'EXT:site_myproject\\/Configuration\\/TypoScript\\/setup.typoscript\'\"}}', 0),
(3, 0, 1607534419, 2, 'BE', 1, 0, 1, 'sys_template', '{\"oldRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/\"},\"newRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:demo_sitepackage\\/Configuration\\/TypoScript\"}}', 0),
(4, 0, 1607534430, 2, 'BE', 1, 0, 1, 'sys_template', '{\"oldRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:demo_sitepackage\\/Configuration\\/TypoScript\"},\"newRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:demo_sitepackage\\/Configuration\\/TypoScript\"}}', 0),
(5, 0, 1607543364, 2, 'BE', 1, 0, 1, 'pages', '{\"oldRecord\":{\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"fe_group\":\"0\",\"tx_fed_page_controller_action\":\"\",\"tx_fed_page_controller_action_sub\":\"\",\"l10n_diffsource\":null},\"newRecord\":{\"backend_layout\":\"flux__\",\"backend_layout_next_level\":\"flux__\",\"fe_group\":\"\",\"tx_fed_page_controller_action\":\"CO.DemoSitepackage->standart\",\"tx_fed_page_controller_action_sub\":\"CO.DemoSitepackage->standart\",\"l10n_diffsource\":\"a:49:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:9:\\\"seo_title\\\";N;s:8:\\\"no_index\\\";N;s:9:\\\"no_follow\\\";N;s:14:\\\"canonical_link\\\";N;s:8:\\\"og_title\\\";N;s:14:\\\"og_description\\\";N;s:8:\\\"og_image\\\";N;s:13:\\\"twitter_title\\\";N;s:19:\\\"twitter_description\\\";N;s:13:\\\"twitter_image\\\";N;s:8:\\\"abstract\\\";N;s:8:\\\"keywords\\\";N;s:11:\\\"description\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:16:\\\"content_from_pid\\\";N;s:6:\\\"target\\\";N;s:13:\\\"cache_timeout\\\";N;s:10:\\\"cache_tags\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:6:\\\"module\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;s:29:\\\"tx_fed_page_controller_action\\\";N;s:33:\\\"tx_fed_page_controller_action_sub\\\";N;}\"}}', 0),
(6, 0, 1607543853, 2, 'BE', 1, 0, 1, 'pages', '{\"oldRecord\":{\"backend_layout\":\"flux__\",\"backend_layout_next_level\":\"flux__\"},\"newRecord\":{\"backend_layout\":\"\",\"backend_layout_next_level\":\"\"}}', 0),
(7, 0, 1607543899, 2, 'BE', 1, 0, 1, 'sys_template', '{\"oldRecord\":{\"config\":\"page = PAGE\\r\\npage.10 =< styles.content.get\"},\"newRecord\":{\"config\":\"\"}}', 0),
(8, 0, 1607544216, 1, 'BE', 1, 0, 2, 'tt_content', '{\"uid\":2,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1607544216,\"crdate\":1607544216,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":512,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"demositepackage_customheader\",\"header\":\"Title with emoji\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"spaceBefore\":0,\"spaceAfter\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"options\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"heading\\\">\\n                    <value index=\\\"vDEF\\\"><\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_flux_migrated_version\":null}', 0),
(9, 0, 1607544315, 2, 'BE', 1, 0, 2, 'tt_content', '{\"oldRecord\":{\"header\":\"Title with emoji\",\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"options\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"heading\\\">\\n                    <value index=\\\"vDEF\\\"><\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"header\":\"\",\"pi_flexform\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"options\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"heading\\\">\\n                    <value index=\\\"vDEF\\\"><\\/value>\\n                <\\/field>\\n                <field index=\\\"customHeading\\\">\\n                    <value index=\\\"vDEF\\\">Title with emoji<\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"l18n_diffsource\":\"a:23:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:15:\\\"header_position\\\";N;s:4:\\\"date\\\";N;s:11:\\\"header_link\\\";N;s:9:\\\"subheader\\\";N;s:11:\\\"pi_flexform\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}', 0),
(10, 0, 1607708395, 1, 'BE', 1, 0, 2, 'pages', '{\"uid\":2,\"pid\":1,\"tstamp\":1607708395,\"crdate\":1607708395,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":256,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"About\",\"slug\":\"\\/about\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"alias\":\"\",\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"canonical_link\":\"\",\"categories\":0,\"tx_fed_page_flexform\":null,\"tx_fed_page_flexform_sub\":null,\"tx_fed_page_controller_action\":\"\",\"tx_fed_page_controller_action_sub\":\"\"}', 0),
(11, 0, 1607708403, 1, 'BE', 1, 0, 3, 'pages', '{\"uid\":3,\"pid\":1,\"tstamp\":1607708403,\"crdate\":1607708403,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":128,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Services\",\"slug\":\"\\/services\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"alias\":\"\",\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"canonical_link\":\"\",\"categories\":0,\"tx_fed_page_flexform\":null,\"tx_fed_page_flexform_sub\":null,\"tx_fed_page_controller_action\":\"\",\"tx_fed_page_controller_action_sub\":\"\"}', 0),
(12, 0, 1607708407, 3, 'BE', 1, 0, 2, 'pages', '{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"About\",\"pid\":1,\"event_pid\":2,\"t3ver_state\":0,\"_ORIG_pid\":null},\"newData\":{\"tstamp\":1607708407,\"pid\":1,\"sorting\":64}}', 0),
(13, 0, 1607708413, 1, 'BE', 1, 0, 4, 'pages', '{\"uid\":4,\"pid\":1,\"tstamp\":1607708413,\"crdate\":1607708413,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":384,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Contact\",\"slug\":\"\\/contact\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"alias\":\"\",\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"canonical_link\":\"\",\"categories\":0,\"tx_fed_page_flexform\":null,\"tx_fed_page_flexform_sub\":null,\"tx_fed_page_controller_action\":\"\",\"tx_fed_page_controller_action_sub\":\"\"}', 0),
(14, 0, 1607708417, 2, 'BE', 1, 0, 2, 'pages', '{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}', 0),
(15, 0, 1607708422, 2, 'BE', 1, 0, 3, 'pages', '{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}', 0),
(16, 0, 1607708425, 2, 'BE', 1, 0, 4, 'pages', '{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}', 0),
(17, 0, 1607940098, 1, 'BE', 1, 0, 5, 'pages', '{\"uid\":5,\"pid\":1,\"tstamp\":1607940098,\"crdate\":1607940098,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":32,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"404\",\"slug\":\"\\/404\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"alias\":\"\",\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"canonical_link\":\"\",\"categories\":0,\"tx_fed_page_flexform\":null,\"tx_fed_page_flexform_sub\":null,\"tx_fed_page_controller_action\":\"\",\"tx_fed_page_controller_action_sub\":\"\"}', 0),
(18, 0, 1607940102, 2, 'BE', 1, 0, 5, 'pages', '{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}', 0),
(19, 0, 1607940120, 2, 'BE', 1, 0, 5, 'pages', '{\"oldRecord\":{\"no_search\":0,\"nav_hide\":0,\"fe_group\":\"0\",\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"},\"newRecord\":{\"no_search\":\"1\",\"nav_hide\":\"1\",\"fe_group\":\"\",\"l10n_diffsource\":\"a:49:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:9:\\\"seo_title\\\";N;s:8:\\\"no_index\\\";N;s:9:\\\"no_follow\\\";N;s:14:\\\"canonical_link\\\";N;s:8:\\\"og_title\\\";N;s:14:\\\"og_description\\\";N;s:8:\\\"og_image\\\";N;s:13:\\\"twitter_title\\\";N;s:19:\\\"twitter_description\\\";N;s:13:\\\"twitter_image\\\";N;s:8:\\\"abstract\\\";N;s:8:\\\"keywords\\\";N;s:11:\\\"description\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:16:\\\"content_from_pid\\\";N;s:6:\\\"target\\\";N;s:13:\\\"cache_timeout\\\";N;s:10:\\\"cache_tags\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:6:\\\"module\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;s:29:\\\"tx_fed_page_controller_action\\\";N;s:33:\\\"tx_fed_page_controller_action_sub\\\";N;}\"}}', 0),
(20, 0, 1607940126, 3, 'BE', 1, 0, 5, 'pages', '{\"oldPageId\":1,\"newPageId\":1,\"oldData\":{\"header\":\"404\",\"pid\":1,\"event_pid\":5,\"t3ver_state\":0,\"_ORIG_pid\":null},\"newData\":{\"tstamp\":1607940126,\"pid\":1,\"sorting\":640}}', 0),
(21, 0, 1607940149, 1, 'BE', 1, 0, 3, 'tt_content', '{\"uid\":3,\"rowDescription\":\"\",\"pid\":5,\"tstamp\":1607940149,\"crdate\":1607940149,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"header\",\"header\":\"[404] Page Not Found\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"spaceBefore\":0,\"spaceAfter\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_flux_migrated_version\":null}', 0),
(22, 0, 1607940872, 2, 'BE', 1, 0, 1, 'sys_template', '{\"oldRecord\":{\"constants\":\"\"},\"newRecord\":{\"constants\":\"page.rootMenuPage = 1\"}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_language`
--

CREATE TABLE `sys_language` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_lockedrecords`
--

CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `record_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_log`
--

CREATE TABLE `sys_log` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `action` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `recuid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT 0,
  `error` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `details_nr` smallint(6) NOT NULL DEFAULT 0,
  `IP` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_pid` int(11) NOT NULL DEFAULT -1,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `NEWid` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT 0,
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_log`
--

INSERT INTO `sys_log` (`uid`, `pid`, `tstamp`, `userid`, `action`, `recuid`, `tablename`, `recpid`, `error`, `details`, `type`, `details_nr`, `IP`, `log_data`, `event_pid`, `workspace`, `NEWid`, `request_id`, `time_micro`, `component`, `level`, `message`, `data`) VALUES
(1, 0, 1607532875, 1, 1, 0, '', 0, 0, 'User %s logged in from ###IP###', 255, 1, '172.18.0.6', 'a:1:{i:0;s:5:\"admin\";}', -1, -99, '', '', 0, '', 0, NULL, NULL),
(2, 0, 1607532929, 1, 1, 1, 'tt_content', 0, 0, 'Record \'%s\' (%s) was inserted on page \'%s\' (%s)', 1, 10, '172.18.0.6', 'a:4:{i:0;s:21:\"First content element\";i:1;s:12:\"tt_content:1\";i:2;s:4:\"Home\";i:3;i:1;}', 1, 0, 'NEW5fd10177a28ae142915463', '', 0, '', 0, NULL, NULL),
(3, 0, 1607532959, 1, 2, 1, 'sys_template', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:25:\"Main TypoScript Rendering\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:1:\"2\";}', 1, 0, '', '', 0, '', 0, NULL, NULL),
(4, 0, 1607534356, 1, 0, 0, '', 0, 2, 'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1518472189: The requested page does not exist | TYPO3\\CMS\\Core\\Error\\Http\\PageNotFoundException thrown in file /var/www/html/public/typo3/sysext/frontend/Classes/Controller/ErrorController.php in line 80. Requested URL: https://t3demo.ddev.site/typo3/sysext/core/Resources/Public/JavaScript/Contrib/moment-with-locales.min.js.map', 5, 0, '172.18.0.6', '', -1, 0, '', '', 0, '', 0, NULL, NULL),
(5, 0, 1607534419, 1, 2, 1, 'sys_template', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:25:\"Main TypoScript Rendering\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:1:\"3\";}', 1, 0, '', '', 0, '', 0, NULL, NULL),
(6, 0, 1607534430, 1, 2, 1, 'sys_template', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:25:\"Main TypoScript Rendering\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:1:\"4\";}', 1, 0, '', '', 0, '', 0, NULL, NULL),
(7, 0, 1607534447, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(8, 0, 1607543364, 1, 2, 1, 'pages', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:1:\"5\";}', 1, 0, '', '', 0, '', 0, NULL, NULL),
(9, 0, 1607543364, 1, 0, 0, '', 0, 2, 'Core: Exception handler (WEB): Uncaught TYPO3 Exception: An exception occurred while executing \'DELETE tags2, cache1 FROM cf_vhs_main_tags AS tags1 JOIN cf_vhs_main_tags AS tags2 ON tags1.identifier = tags2.identifier JOIN cf_vhs_main AS cache1 ON tags1.identifier = cache1.identifier WHERE tags1.tag IN (\'pageId_1\',\'pages\',\'pages_1\')\':\n\nTable \'db.cf_vhs_main_tags\' doesn\'t exist | Doctrine\\DBAL\\Exception\\TableNotFoundException thrown in file /var/www/html/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/AbstractMySQLDriver.php in line 46. Requested URL: https://t3demo.ddev.site/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Bpages%%5D%%5B1%%5D=edit&returnUrl=%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fweb%%252Flayout%%252F%%26token%%3D82b2291413901f5d16144dfea3fd2825ab7f9282%%26id%%3D1', 5, 0, '172.18.0.6', '', -1, 0, '', '', 0, '', 0, NULL, NULL),
(10, 0, 1607543384, 1, 3, 0, '', 0, 3, 'Login-attempt from ###IP###, username \'%s\', password not accepted!', 255, 1, '172.18.0.6', 'a:1:{i:0;s:5:\"admin\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(11, 0, 1607543408, 0, 0, 0, '', 0, 2, 'Core: Exception handler (WEB): Uncaught TYPO3 Exception: An exception occurred while executing \'TRUNCATE `cf_vhs_main`\':\n\nTable \'db.cf_vhs_main\' doesn\'t exist | Doctrine\\DBAL\\Exception\\TableNotFoundException thrown in file /var/www/html/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/AbstractMySQLDriver.php in line 46. Requested URL: https://t3demo.ddev.site/typo3/install.php?install[controller]=maintenance&install[context]=backend&install[action]=cacheClearAll&_=1607543398915', 5, 0, '172.18.0.6', '', -1, 0, '', '', 0, '', 0, NULL, NULL),
(12, 0, 1607543546, 0, 0, 0, '', 0, 2, 'Core: Exception handler (WEB): Uncaught TYPO3 Exception: An exception occurred while executing \'TRUNCATE `cf_vhs_main`\':\n\nTable \'db.cf_vhs_main\' doesn\'t exist | Doctrine\\DBAL\\Exception\\TableNotFoundException thrown in file /var/www/html/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/AbstractMySQLDriver.php in line 46. Requested URL: https://t3demo.ddev.site/typo3/install.php?install[controller]=maintenance&install[context]=backend&install[action]=cacheClearAll&_=1607543539757', 5, 0, '172.18.0.6', '', -1, 0, '', '', 0, '', 0, NULL, NULL),
(13, 0, 1607543657, 1, 0, 0, '', 0, 2, 'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1518472189: The requested page does not exist | TYPO3\\CMS\\Core\\Error\\Http\\PageNotFoundException thrown in file /var/www/html/public/typo3/sysext/frontend/Classes/Controller/ErrorController.php in line 80. Requested URL: https://t3demo.ddev.site/typo3/sysext/core/Resources/Public/JavaScript/Contrib/moment-with-locales.min.js.map', 5, 0, '172.18.0.6', '', -1, 0, '', '', 0, '', 0, NULL, NULL),
(14, 0, 1607543724, 1, 0, 0, '', 0, 2, 'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1518472189: The requested page does not exist | TYPO3\\CMS\\Core\\Error\\Http\\PageNotFoundException thrown in file /var/www/html/public/typo3/sysext/frontend/Classes/Controller/ErrorController.php in line 80. Requested URL: https://t3demo.ddev.site/typo3/sysext/core/Resources/Public/JavaScript/Contrib/moment-with-locales.min.js.map', 5, 0, '172.18.0.6', '', -1, 0, '', '', 0, '', 0, NULL, NULL),
(15, 0, 1607543853, 1, 2, 1, 'pages', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:1:\"6\";}', 1, 0, '', '', 0, '', 0, NULL, NULL),
(16, 0, 1607543899, 1, 2, 1, 'sys_template', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:25:\"Main TypoScript Rendering\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:1:\"7\";}', 1, 0, '', '', 0, '', 0, NULL, NULL),
(17, 0, 1607544096, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(18, 0, 1607544216, 1, 1, 2, 'tt_content', 0, 0, 'Record \'%s\' (%s) was inserted on page \'%s\' (%s)', 1, 10, '172.18.0.6', 'a:4:{i:0;s:16:\"Title with emoji\";i:1;s:12:\"tt_content:2\";i:2;s:4:\"Home\";i:3;i:1;}', 1, 0, 'NEW5fd12d7ec8fc8554059821', '', 0, '', 0, NULL, NULL),
(19, 0, 1607544315, 1, 2, 2, 'tt_content', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:2\";s:7:\"history\";s:1:\"9\";}', 1, 0, '', '', 0, '', 0, NULL, NULL),
(20, 0, 1607544342, 1, 2, 2, 'tt_content', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:2\";s:7:\"history\";i:0;}', 1, 0, '', '', 0, '', 0, NULL, NULL),
(21, 0, 1607545379, 1, 2, 0, '', 0, 0, 'User %s logged out from TYPO3 Backend', 255, 1, '172.18.0.6', 'a:1:{i:0;s:5:\"admin\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(22, 0, 1607545388, 1, 1, 0, '', 0, 0, 'User %s logged in from ###IP###', 255, 1, '172.18.0.6', 'a:1:{i:0;s:5:\"admin\";}', -1, -99, '', '', 0, '', 0, NULL, NULL),
(23, 0, 1607546490, 1, 2, 0, '', 0, 0, 'User %s logged out from TYPO3 Backend', 255, 1, '172.18.0.6', 'a:1:{i:0;s:5:\"admin\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(24, 0, 1607546496, 1, 1, 0, '', 0, 0, 'User %s logged in from ###IP###', 255, 1, '172.18.0.6', 'a:1:{i:0;s:5:\"admin\";}', -1, -99, '', '', 0, '', 0, NULL, NULL),
(25, 0, 1607606748, 0, 3, 0, '', 0, 3, 'Login-attempt from ###IP###, username \'%s\', password not accepted!', 255, 1, '172.18.0.6', 'a:1:{i:0;s:5:\"admin\";}', -1, -99, '', '', 0, '', 0, NULL, NULL),
(26, 0, 1607606766, 1, 1, 0, '', 0, 0, 'User %s logged in from ###IP###', 255, 1, '172.18.0.6', 'a:1:{i:0;s:5:\"admin\";}', -1, -99, '', '', 0, '', 0, NULL, NULL),
(27, 0, 1607629571, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(28, 0, 1607629573, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:5:\"pages\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(29, 0, 1607630900, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:5:\"pages\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(30, 0, 1607630901, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(31, 0, 1607632194, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:5:\"pages\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(32, 0, 1607632195, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(33, 0, 1607632375, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:5:\"pages\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(34, 0, 1607632377, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(35, 0, 1607632418, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:5:\"pages\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(36, 0, 1607632420, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(37, 0, 1607632455, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(38, 0, 1607632457, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:5:\"pages\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(39, 0, 1607632639, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(40, 0, 1607632640, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:5:\"pages\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(41, 0, 1607632747, 1, 0, 0, '', 0, 2, 'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Section \"Header\" does not exist. | TYPO3Fluid\\Fluid\\View\\Exception\\InvalidSectionException thrown in file /var/www/html/vendor/typo3fluid/fluid/src/View/AbstractTemplateView.php in line 269. Requested URL: https://t3demo.ddev.site/', 5, 0, '172.18.0.6', '', -1, 0, '', '', 0, '', 0, NULL, NULL),
(42, 0, 1607632750, 1, 0, 0, '', 0, 2, 'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Section \"Header\" does not exist. | TYPO3Fluid\\Fluid\\View\\Exception\\InvalidSectionException thrown in file /var/www/html/vendor/typo3fluid/fluid/src/View/AbstractTemplateView.php in line 255. Requested URL: https://t3demo.ddev.site/', 5, 0, '172.18.0.6', '', -1, 0, '', '', 0, '', 0, NULL, NULL),
(43, 0, 1607708372, 1, 1, 0, '', 0, 0, 'User %s logged in from ###IP###', 255, 1, '172.18.0.6', 'a:1:{i:0;s:5:\"admin\";}', -1, -99, '', '', 0, '', 0, NULL, NULL),
(44, 0, 1607708384, 1, 0, 0, '', 0, 2, 'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1518472189: The requested page does not exist | TYPO3\\CMS\\Core\\Error\\Http\\PageNotFoundException thrown in file /var/www/html/public/typo3/sysext/frontend/Classes/Controller/ErrorController.php in line 80. Requested URL: https://t3demo.ddev.site/typo3/undefined', 5, 0, '172.18.0.6', '', -1, 0, '', '', 0, '', 0, NULL, NULL),
(45, 0, 1607708395, 1, 1, 2, 'pages', 0, 0, 'Record \'%s\' (%s) was inserted on page \'%s\' (%s)', 1, 10, '172.18.0.6', 'a:4:{i:0;s:5:\"About\";i:1;s:7:\"pages:2\";i:2;s:4:\"Home\";i:3;i:1;}', 1, 0, 'NEW_1', '', 0, '', 0, NULL, NULL),
(46, 0, 1607708403, 1, 1, 3, 'pages', 0, 0, 'Record \'%s\' (%s) was inserted on page \'%s\' (%s)', 1, 10, '172.18.0.6', 'a:4:{i:0;s:8:\"Services\";i:1;s:7:\"pages:3\";i:2;s:4:\"Home\";i:3;i:1;}', 1, 0, 'NEW_1', '', 0, '', 0, NULL, NULL),
(47, 0, 1607708407, 1, 4, 2, 'pages', 0, 0, 'Moved record \'%s\' (%s) on page \'%s\' (%s)', 1, 4, '172.18.0.6', 'a:4:{i:0;s:5:\"About\";i:1;s:7:\"pages:2\";i:2;s:4:\"Home\";i:3;i:1;}', 1, 0, '', '', 0, '', 0, NULL, NULL),
(48, 0, 1607708413, 1, 1, 4, 'pages', 0, 0, 'Record \'%s\' (%s) was inserted on page \'%s\' (%s)', 1, 10, '172.18.0.6', 'a:4:{i:0;s:7:\"Contact\";i:1;s:7:\"pages:4\";i:2;s:4:\"Home\";i:3;i:1;}', 1, 0, 'NEW_1', '', 0, '', 0, NULL, NULL),
(49, 0, 1607708417, 1, 2, 2, 'pages', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:5:\"About\";i:1;s:7:\"pages:2\";s:7:\"history\";s:2:\"14\";}', 2, 0, '', '', 0, '', 0, NULL, NULL),
(50, 0, 1607708422, 1, 2, 3, 'pages', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:8:\"Services\";i:1;s:7:\"pages:3\";s:7:\"history\";s:2:\"15\";}', 3, 0, '', '', 0, '', 0, NULL, NULL),
(51, 0, 1607708425, 1, 2, 4, 'pages', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:7:\"Contact\";i:1;s:7:\"pages:4\";s:7:\"history\";s:2:\"16\";}', 4, 0, '', '', 0, '', 0, NULL, NULL),
(52, 0, 1607940075, 1, 1, 0, '', 0, 0, 'User %s logged in from ###IP###', 255, 1, '172.18.0.6', 'a:1:{i:0;s:5:\"admin\";}', -1, -99, '', '', 0, '', 0, NULL, NULL),
(53, 0, 1607940098, 1, 1, 5, 'pages', 0, 0, 'Record \'%s\' (%s) was inserted on page \'%s\' (%s)', 1, 10, '172.18.0.6', 'a:4:{i:0;s:3:\"404\";i:1;s:7:\"pages:5\";i:2;s:4:\"Home\";i:3;i:1;}', 1, 0, 'NEW_1', '', 0, '', 0, NULL, NULL),
(54, 0, 1607940102, 1, 2, 5, 'pages', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:3:\"404\";i:1;s:7:\"pages:5\";s:7:\"history\";s:2:\"18\";}', 5, 0, '', '', 0, '', 0, NULL, NULL),
(55, 0, 1607940120, 1, 2, 5, 'pages', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:3:\"404\";i:1;s:7:\"pages:5\";s:7:\"history\";s:2:\"19\";}', 5, 0, '', '', 0, '', 0, NULL, NULL),
(56, 0, 1607940126, 1, 4, 5, 'pages', 0, 0, 'Moved record \'%s\' (%s) on page \'%s\' (%s)', 1, 4, '172.18.0.6', 'a:4:{i:0;s:3:\"404\";i:1;s:7:\"pages:5\";i:2;s:4:\"Home\";i:3;i:1;}', 1, 0, '', '', 0, '', 0, NULL, NULL),
(57, 0, 1607940149, 1, 1, 3, 'tt_content', 0, 0, 'Record \'%s\' (%s) was inserted on page \'%s\' (%s)', 1, 10, '172.18.0.6', 'a:4:{i:0;s:20:\"[404] Page Not Found\";i:1;s:12:\"tt_content:3\";i:2;s:3:\"404\";i:3;i:5;}', 5, 0, 'NEW5fd7382983002705143258', '', 0, '', 0, NULL, NULL),
(58, 0, 1607940872, 1, 2, 1, 'sys_template', 0, 0, 'Record \'%s\' (%s) was updated. (Online).', 1, 10, '172.18.0.6', 'a:3:{i:0;s:25:\"Main TypoScript Rendering\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"22\";}', 1, 0, '', '', 0, '', 0, NULL, NULL),
(59, 0, 1607941113, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:5:\"pages\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(60, 0, 1607941448, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(61, 0, 1607941449, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:5:\"pages\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(62, 0, 1607941680, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}', -1, 0, '', '', 0, '', 0, NULL, NULL),
(63, 0, 1607941682, 1, 1, 0, '', 0, 0, 'User %s has cleared the cache (cacheCmd=%s)', 3, 0, '172.18.0.6', 'a:2:{i:0;s:5:\"admin\";i:1;s:5:\"pages\";}', -1, 0, '', '', 0, '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_news`
--

CREATE TABLE `sys_news` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_note`
--

CREATE TABLE `sys_note` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `category` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_redirect`
--

CREATE TABLE `sys_redirect` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updatedon` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `createdon` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `createdby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `disabled` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `source_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `source_path` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_regexp` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `force_https` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `respect_query_parameters` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `keep_query_parameters` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `target` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target_statuscode` int(11) NOT NULL DEFAULT 307,
  `hitcount` int(11) NOT NULL DEFAULT 0,
  `lasthiton` int(11) NOT NULL DEFAULT 0,
  `disable_hitcount` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_refindex`
--

CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT 0,
  `field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `ref_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT 0,
  `ref_string` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_registry`
--

CREATE TABLE `sys_registry` (
  `uid` int(10) UNSIGNED NOT NULL,
  `entry_namespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_registry`
--

INSERT INTO `sys_registry` (`uid`, `entry_namespace`, `entry_key`, `entry_value`) VALUES
(1, 'installUpdate', 'TYPO3\\CMS\\Form\\Hooks\\FormFileExtensionUpdate', 0x693a313b),
(2, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry', 0x693a313b),
(3, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\StartModuleUpdate', 0x693a313b),
(4, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard', 0x693a313b),
(5, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField', 0x693a313b),
(6, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate', 0x693a313b),
(7, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate', 0x693a313b),
(8, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate', 0x693a313b),
(9, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate', 0x693a313b),
(10, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate', 0x693a313b),
(11, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\FileReferenceUpdate', 0x693a313b),
(12, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\MigrateFeSessionDataUpdate', 0x693a313b),
(13, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\Compatibility7ExtractionUpdate', 0x693a313b),
(14, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\FormLegacyExtractionUpdate', 0x693a313b),
(15, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\RteHtmlAreaExtractionUpdate', 0x693a313b),
(16, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\LanguageSortingUpdate', 0x693a313b),
(17, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\Typo3DbExtractionUpdate', 0x693a313b),
(18, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\FuncExtractionUpdate', 0x693a313b),
(19, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\MigrateUrlTypesInPagesUpdate', 0x693a313b),
(20, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\RedirectExtractionUpdate', 0x693a313b),
(21, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate', 0x693a313b),
(22, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayUpdate', 0x693a313b),
(23, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayBeGroupsAccessRights', 0x693a313b),
(24, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\BackendLayoutIconUpdateWizard', 0x693a313b),
(25, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\RedirectsExtensionUpdate', 0x693a313b),
(26, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\AdminPanelInstall', 0x693a313b),
(27, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\PopulatePageSlugs', 0x693a313b),
(28, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\Argon2iPasswordHashes', 0x693a313b),
(29, 'installUpdate', 'TYPO3\\CMS\\Install\\Updates\\BackendUserConfigurationUpdate', 0x693a313b),
(30, 'installUpdateRows', 'rowUpdatersDone', 0x613a333a7b693a303b733a35323a225459504f335c434d535c496e7374616c6c5c557064617465735c526f77557064617465725c4c31306e4d6f646555706461746572223b693a313b733a35333a225459504f335c434d535c496e7374616c6c5c557064617465735c526f77557064617465725c496d61676543726f7055706461746572223b693a323b733a35373a225459504f335c434d535c496e7374616c6c5c557064617465735c526f77557064617465725c5274654c696e6b53796e74617855706461746572223b7d),
(32, 'extensionDataImport', 'typo3conf/ext/demo_sitepackage/ext_tables_static+adt.sql', 0x733a303a22223b),
(34, 'core', 'formProtectionSessionToken:1', 0x733a36343a2237346164303031393530366639616338666238663261326363313766613963373861323830653664303336343831613935393365666163633563386633633262223b);

-- --------------------------------------------------------

--
-- Table structure for table `sys_template`
--

CREATE TABLE `sys_template` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `root` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `clear` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `include_static_file` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `constants` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nextLevel` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `basedOn` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `static_file_mode` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_template`
--

INSERT INTO `sys_template` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `hidden`, `starttime`, `endtime`, `sorting`, `description`, `t3_origuid`, `t3ver_oid`, `t3ver_id`, `t3ver_label`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `title`, `sitetitle`, `root`, `clear`, `include_static_file`, `constants`, `config`, `nextLevel`, `basedOn`, `includeStaticAfterBasedOn`, `static_file_mode`, `tx_impexp_origuid`) VALUES
(1, 1, 1607940872, 1607532858, 1, 0, 0, 0, 0, 0, 'This is an Empty Site Package TypoScript template.\r\n\r\nFor each website you need a TypoScript template on the main page of your website (on the top level). For better maintenance all TypoScript should be extracted into external files via @import \'EXT:site_myproject/Configuration/TypoScript/setup.typoscript\'', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 'Main TypoScript Rendering', 'New TYPO3 demo site', 1, 1, 'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:demo_sitepackage/Configuration/TypoScript', 'page.rootMenuPage = 1', '', '', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tt_content`
--

CREATE TABLE `tt_content` (
  `uid` int(10) UNSIGNED NOT NULL,
  `rowDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `bullets_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `uploads_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `assets` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `imagewidth` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `imageorient` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `imagecols` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `imageborder` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `media` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `layout` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `frame_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `spaceBefore` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `spaceAfter` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pages` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `colPos` bigint(20) NOT NULL DEFAULT 0,
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `file_collections` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `filelink_size` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(17) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `recursive` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `imageheight` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `selected_categories` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `categories` int(11) NOT NULL DEFAULT 0,
  `tx_flux_migrated_version` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tt_content`
--

INSERT INTO `tt_content` (`uid`, `rowDescription`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `hidden`, `starttime`, `endtime`, `fe_group`, `sorting`, `editlock`, `sys_language_uid`, `l18n_parent`, `l10n_source`, `l10n_state`, `t3_origuid`, `l18n_diffsource`, `t3ver_oid`, `t3ver_id`, `t3ver_label`, `t3ver_wsid`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `CType`, `header`, `header_position`, `bodytext`, `bullets_type`, `uploads_description`, `uploads_type`, `assets`, `image`, `imagewidth`, `imageorient`, `imagecols`, `imageborder`, `media`, `layout`, `frame_class`, `cols`, `spaceBefore`, `spaceAfter`, `space_before_class`, `space_after_class`, `records`, `pages`, `colPos`, `subheader`, `header_link`, `image_zoom`, `header_layout`, `list_type`, `sectionIndex`, `linkToTop`, `file_collections`, `filelink_size`, `filelink_sorting`, `filelink_sorting_direction`, `target`, `date`, `recursive`, `imageheight`, `pi_flexform`, `accessibility_title`, `accessibility_bypass`, `accessibility_bypass_text`, `selected_categories`, `category_field`, `table_class`, `table_caption`, `table_delimiter`, `table_enclosure`, `table_header_position`, `table_tfoot`, `tx_impexp_origuid`, `categories`, `tx_flux_migrated_version`) VALUES
(1, '', 1, 1607532929, 1607532929, 1, 0, 0, 0, 0, '', 256, 0, 0, 0, 0, NULL, 0, '', 0, 0, '', 0, 0, 0, 0, 0, 0, 'header', 'First content element', '', NULL, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 'default', 0, 0, 0, '', '', NULL, NULL, 0, '', '', 0, '0', '', 1, 0, NULL, 0, '', '', '', 0, 0, 0, NULL, '', 0, '', NULL, '', '', NULL, 124, 0, 0, 0, 0, 0, NULL),
(2, '', 1, 1607544342, 1607544216, 1, 0, 0, 0, 0, '', 512, 0, 0, 0, 0, NULL, 0, 0x613a32333a7b733a353a224354797065223b4e3b733a363a22636f6c506f73223b4e3b733a363a22686561646572223b4e3b733a31333a226865616465725f6c61796f7574223b4e3b733a31353a226865616465725f706f736974696f6e223b4e3b733a343a2264617465223b4e3b733a31313a226865616465725f6c696e6b223b4e3b733a393a22737562686561646572223b4e3b733a31313a2270695f666c6578666f726d223b4e3b733a363a226c61796f7574223b4e3b733a31313a226672616d655f636c617373223b4e3b733a31383a2273706163655f6265666f72655f636c617373223b4e3b733a31373a2273706163655f61667465725f636c617373223b4e3b733a31323a2273656374696f6e496e646578223b4e3b733a393a226c696e6b546f546f70223b4e3b733a31363a227379735f6c616e67756167655f756964223b4e3b733a363a2268696464656e223b4e3b733a393a22737461727474696d65223b4e3b733a373a22656e6474696d65223b4e3b733a383a2266655f67726f7570223b4e3b733a383a22656469746c6f636b223b4e3b733a31303a2263617465676f72696573223b4e3b733a31343a22726f774465736372697074696f6e223b4e3b7d, 0, 0, '', 0, 0, 0, 0, 0, 0, 'demositepackage_customheader', '', '', NULL, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 'default', 0, 0, 0, '', '', NULL, NULL, 0, '', '', 0, '0', '', 1, 0, NULL, 0, '', '', '', 0, 0, 0, '<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"options\">\n            <language index=\"lDEF\">\n                <field index=\"heading\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"customHeading\">\n                    <value index=\"vDEF\">Title with emoji</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>', '', 0, '', NULL, '', '', NULL, 124, 0, 0, 0, 0, 0, NULL),
(3, '', 5, 1607940149, 1607940149, 1, 0, 0, 0, 0, '', 256, 0, 0, 0, 0, NULL, 0, '', 0, 0, '', 0, 0, 0, 0, 0, 0, 'header', '[404] Page Not Found', '', NULL, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 'default', 0, 0, 0, '', '', NULL, NULL, 0, '', '', 0, '0', '', 1, 0, NULL, 0, '', '', '', 0, 0, 0, NULL, '', 0, '', NULL, '', '', NULL, 124, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `extension_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `repository` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `downloadcounter` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `last_updated` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `serialized_dependencies` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorcompany` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `current_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `wsdl_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `extension_count` int(11) NOT NULL DEFAULT 0,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

INSERT INTO `tx_extensionmanager_domain_model_repository` (`uid`, `title`, `description`, `wsdl_url`, `mirror_list_url`, `last_update`, `extension_count`, `pid`) VALUES
(1, 'TYPO3.org Main Repository', 'Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.', 'https://typo3.org/wsdl/tx_ter_wsdl.php', 'https://repositories.typo3.org/mirrors.xml.gz', 1346191200, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tx_impexp_presets`
--

CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL,
  `user_uid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT 0,
  `item_uid` int(11) NOT NULL DEFAULT 0,
  `preset_data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tx_scheduler_task`
--

CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) UNSIGNED NOT NULL,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `disable` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nextexecution` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastexecution_time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastexecution_failure` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastexecution_context` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `serialized_task_object` mediumblob DEFAULT NULL,
  `serialized_executions` mediumblob DEFAULT NULL,
  `task_group` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tx_scheduler_task_group`
--

CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `crdate` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cruser_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `groupName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_layout`
--
ALTER TABLE `backend_layout`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`deleted`,`hidden`),
  ADD KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`);

--
-- Indexes for table `be_groups`
--
ALTER TABLE `be_groups`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`deleted`,`hidden`);

--
-- Indexes for table `be_sessions`
--
ALTER TABLE `be_sessions`
  ADD PRIMARY KEY (`ses_id`),
  ADD KEY `ses_tstamp` (`ses_tstamp`);

--
-- Indexes for table `be_users`
--
ALTER TABLE `be_users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `username` (`username`),
  ADD KEY `parent` (`pid`,`deleted`,`disable`);

--
-- Indexes for table `cache_treelist`
--
ALTER TABLE `cache_treelist`
  ADD PRIMARY KEY (`md5hash`);

--
-- Indexes for table `cf_adminpanel_requestcache`
--
ALTER TABLE `cf_adminpanel_requestcache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(180),`expires`);

--
-- Indexes for table `cf_adminpanel_requestcache_tags`
--
ALTER TABLE `cf_adminpanel_requestcache_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(191)),
  ADD KEY `cache_tag` (`tag`(191));

--
-- Indexes for table `cf_cache_hash`
--
ALTER TABLE `cf_cache_hash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(180),`expires`);

--
-- Indexes for table `cf_cache_hash_tags`
--
ALTER TABLE `cf_cache_hash_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(191)),
  ADD KEY `cache_tag` (`tag`(191));

--
-- Indexes for table `cf_cache_imagesizes`
--
ALTER TABLE `cf_cache_imagesizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(180),`expires`);

--
-- Indexes for table `cf_cache_imagesizes_tags`
--
ALTER TABLE `cf_cache_imagesizes_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(191)),
  ADD KEY `cache_tag` (`tag`(191));

--
-- Indexes for table `cf_cache_pages`
--
ALTER TABLE `cf_cache_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(180),`expires`);

--
-- Indexes for table `cf_cache_pagesection`
--
ALTER TABLE `cf_cache_pagesection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(180),`expires`);

--
-- Indexes for table `cf_cache_pagesection_tags`
--
ALTER TABLE `cf_cache_pagesection_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(191)),
  ADD KEY `cache_tag` (`tag`(191));

--
-- Indexes for table `cf_cache_pages_tags`
--
ALTER TABLE `cf_cache_pages_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(191)),
  ADD KEY `cache_tag` (`tag`(191));

--
-- Indexes for table `cf_cache_rootline`
--
ALTER TABLE `cf_cache_rootline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(180),`expires`);

--
-- Indexes for table `cf_cache_rootline_tags`
--
ALTER TABLE `cf_cache_rootline_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(191)),
  ADD KEY `cache_tag` (`tag`(191));

--
-- Indexes for table `cf_extbase_datamapfactory_datamap`
--
ALTER TABLE `cf_extbase_datamapfactory_datamap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(180),`expires`);

--
-- Indexes for table `cf_extbase_datamapfactory_datamap_tags`
--
ALTER TABLE `cf_extbase_datamapfactory_datamap_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(191)),
  ADD KEY `cache_tag` (`tag`(191));

--
-- Indexes for table `cf_vhs_main`
--
ALTER TABLE `cf_vhs_main`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(180),`expires`);

--
-- Indexes for table `cf_vhs_main_tags`
--
ALTER TABLE `cf_vhs_main_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(191)),
  ADD KEY `cache_tag` (`tag`(191));

--
-- Indexes for table `cf_vhs_markdown`
--
ALTER TABLE `cf_vhs_markdown`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(180),`expires`);

--
-- Indexes for table `cf_vhs_markdown_tags`
--
ALTER TABLE `cf_vhs_markdown_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cache_id` (`identifier`(191)),
  ADD KEY `cache_tag` (`tag`(191));

--
-- Indexes for table `content_types`
--
ALTER TABLE `content_types`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`),
  ADD KEY `content_type` (`content_type`),
  ADD KEY `extension_identity` (`extension_identity`);

--
-- Indexes for table `fe_groups`
--
ALTER TABLE `fe_groups`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`deleted`,`hidden`);

--
-- Indexes for table `fe_sessions`
--
ALTER TABLE `fe_sessions`
  ADD PRIMARY KEY (`ses_id`),
  ADD KEY `ses_tstamp` (`ses_tstamp`);

--
-- Indexes for table `fe_users`
--
ALTER TABLE `fe_users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`username`(100)),
  ADD KEY `username` (`username`(100)),
  ADD KEY `is_online` (`is_online`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `alias` (`alias`),
  ADD KEY `determineSiteRoot` (`is_siteroot`),
  ADD KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  ADD KEY `slug` (`slug`(127)),
  ADD KEY `parent` (`pid`,`deleted`,`hidden`),
  ADD KEY `translation_source` (`l10n_source`),
  ADD KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`);

--
-- Indexes for table `sys_be_shortcuts`
--
ALTER TABLE `sys_be_shortcuts`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `event` (`userid`);

--
-- Indexes for table `sys_category`
--
ALTER TABLE `sys_category`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `category_parent` (`parent`),
  ADD KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  ADD KEY `parent` (`pid`,`deleted`,`hidden`),
  ADD KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`);

--
-- Indexes for table `sys_category_record_mm`
--
ALTER TABLE `sys_category_record_mm`
  ADD KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  ADD KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`);

--
-- Indexes for table `sys_collection`
--
ALTER TABLE `sys_collection`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`deleted`,`hidden`),
  ADD KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`);

--
-- Indexes for table `sys_collection_entries`
--
ALTER TABLE `sys_collection_entries`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `uid_local` (`uid_local`),
  ADD KEY `uid_foreign` (`uid_foreign`);

--
-- Indexes for table `sys_domain`
--
ALTER TABLE `sys_domain`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `getSysDomain` (`hidden`),
  ADD KEY `getDomainStartPage` (`pid`,`hidden`,`domainName`(100)),
  ADD KEY `parent` (`pid`,`hidden`);

--
-- Indexes for table `sys_file`
--
ALTER TABLE `sys_file`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `sel01` (`storage`,`identifier_hash`),
  ADD KEY `folder` (`storage`,`folder_hash`),
  ADD KEY `tstamp` (`tstamp`),
  ADD KEY `lastindex` (`last_indexed`),
  ADD KEY `sha1` (`sha1`),
  ADD KEY `parent` (`pid`);

--
-- Indexes for table `sys_filemounts`
--
ALTER TABLE `sys_filemounts`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`deleted`,`hidden`);

--
-- Indexes for table `sys_file_collection`
--
ALTER TABLE `sys_file_collection`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`deleted`,`hidden`),
  ADD KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`);

--
-- Indexes for table `sys_file_metadata`
--
ALTER TABLE `sys_file_metadata`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `file` (`file`),
  ADD KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  ADD KEY `parent` (`pid`),
  ADD KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`);

--
-- Indexes for table `sys_file_processedfile`
--
ALTER TABLE `sys_file_processedfile`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  ADD KEY `identifier` (`storage`,`identifier`(180));

--
-- Indexes for table `sys_file_reference`
--
ALTER TABLE `sys_file_reference`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  ADD KEY `deleted` (`deleted`),
  ADD KEY `uid_local` (`uid_local`),
  ADD KEY `uid_foreign` (`uid_foreign`),
  ADD KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  ADD KEY `parent` (`pid`,`deleted`,`hidden`),
  ADD KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`);

--
-- Indexes for table `sys_file_storage`
--
ALTER TABLE `sys_file_storage`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`deleted`);

--
-- Indexes for table `sys_history`
--
ALTER TABLE `sys_history`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `recordident_1` (`tablename`(100),`recuid`),
  ADD KEY `recordident_2` (`tablename`(100),`tstamp`),
  ADD KEY `parent` (`pid`);

--
-- Indexes for table `sys_language`
--
ALTER TABLE `sys_language`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`hidden`);

--
-- Indexes for table `sys_lockedrecords`
--
ALTER TABLE `sys_lockedrecords`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `event` (`userid`,`tstamp`);

--
-- Indexes for table `sys_log`
--
ALTER TABLE `sys_log`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `event` (`userid`,`event_pid`),
  ADD KEY `recuidIdx` (`recuid`),
  ADD KEY `user_auth` (`type`,`action`,`tstamp`),
  ADD KEY `request` (`request_id`),
  ADD KEY `combined_1` (`tstamp`,`type`,`userid`),
  ADD KEY `parent` (`pid`);

--
-- Indexes for table `sys_news`
--
ALTER TABLE `sys_news`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`deleted`,`hidden`);

--
-- Indexes for table `sys_note`
--
ALTER TABLE `sys_note`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`deleted`);

--
-- Indexes for table `sys_redirect`
--
ALTER TABLE `sys_redirect`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `index_source` (`source_host`(80),`source_path`(80)),
  ADD KEY `parent` (`pid`,`deleted`,`disabled`);

--
-- Indexes for table `sys_refindex`
--
ALTER TABLE `sys_refindex`
  ADD PRIMARY KEY (`hash`),
  ADD KEY `lookup_rec` (`tablename`(100),`recuid`),
  ADD KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  ADD KEY `lookup_string` (`ref_string`(191));

--
-- Indexes for table `sys_registry`
--
ALTER TABLE `sys_registry`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`);

--
-- Indexes for table `sys_template`
--
ALTER TABLE `sys_template`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `roottemplate` (`deleted`,`hidden`,`root`),
  ADD KEY `parent` (`pid`,`deleted`,`hidden`),
  ADD KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`);

--
-- Indexes for table `tt_content`
--
ALTER TABLE `tt_content`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`sorting`),
  ADD KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  ADD KEY `language` (`l18n_parent`,`sys_language_uid`),
  ADD KEY `translation_source` (`l10n_source`);

--
-- Indexes for table `tx_extensionmanager_domain_model_extension`
--
ALTER TABLE `tx_extensionmanager_domain_model_extension`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  ADD KEY `index_extrepo` (`extension_key`,`repository`),
  ADD KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  ADD KEY `index_currentversions` (`current_version`,`review_state`),
  ADD KEY `parent` (`pid`);

--
-- Indexes for table `tx_extensionmanager_domain_model_repository`
--
ALTER TABLE `tx_extensionmanager_domain_model_repository`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`);

--
-- Indexes for table `tx_impexp_presets`
--
ALTER TABLE `tx_impexp_presets`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `lookup` (`item_uid`);

--
-- Indexes for table `tx_scheduler_task`
--
ALTER TABLE `tx_scheduler_task`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `index_nextexecution` (`nextexecution`);

--
-- Indexes for table `tx_scheduler_task_group`
--
ALTER TABLE `tx_scheduler_task_group`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `parent` (`pid`,`deleted`,`hidden`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_layout`
--
ALTER TABLE `backend_layout`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `be_groups`
--
ALTER TABLE `be_groups`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `be_users`
--
ALTER TABLE `be_users`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cf_adminpanel_requestcache`
--
ALTER TABLE `cf_adminpanel_requestcache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_adminpanel_requestcache_tags`
--
ALTER TABLE `cf_adminpanel_requestcache_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_cache_hash`
--
ALTER TABLE `cf_cache_hash`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cf_cache_hash_tags`
--
ALTER TABLE `cf_cache_hash_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cf_cache_imagesizes`
--
ALTER TABLE `cf_cache_imagesizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_cache_imagesizes_tags`
--
ALTER TABLE `cf_cache_imagesizes_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_cache_pages`
--
ALTER TABLE `cf_cache_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_cache_pagesection`
--
ALTER TABLE `cf_cache_pagesection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_cache_pagesection_tags`
--
ALTER TABLE `cf_cache_pagesection_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_cache_pages_tags`
--
ALTER TABLE `cf_cache_pages_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_cache_rootline`
--
ALTER TABLE `cf_cache_rootline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cf_cache_rootline_tags`
--
ALTER TABLE `cf_cache_rootline_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cf_extbase_datamapfactory_datamap`
--
ALTER TABLE `cf_extbase_datamapfactory_datamap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_extbase_datamapfactory_datamap_tags`
--
ALTER TABLE `cf_extbase_datamapfactory_datamap_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_vhs_main`
--
ALTER TABLE `cf_vhs_main`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_vhs_main_tags`
--
ALTER TABLE `cf_vhs_main_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_vhs_markdown`
--
ALTER TABLE `cf_vhs_markdown`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cf_vhs_markdown_tags`
--
ALTER TABLE `cf_vhs_markdown_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_types`
--
ALTER TABLE `content_types`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fe_groups`
--
ALTER TABLE `fe_groups`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fe_users`
--
ALTER TABLE `fe_users`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_be_shortcuts`
--
ALTER TABLE `sys_be_shortcuts`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_category`
--
ALTER TABLE `sys_category`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_collection`
--
ALTER TABLE `sys_collection`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_collection_entries`
--
ALTER TABLE `sys_collection_entries`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_domain`
--
ALTER TABLE `sys_domain`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_file`
--
ALTER TABLE `sys_file`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_filemounts`
--
ALTER TABLE `sys_filemounts`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_file_collection`
--
ALTER TABLE `sys_file_collection`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_file_metadata`
--
ALTER TABLE `sys_file_metadata`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_file_processedfile`
--
ALTER TABLE `sys_file_processedfile`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_file_reference`
--
ALTER TABLE `sys_file_reference`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_file_storage`
--
ALTER TABLE `sys_file_storage`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_history`
--
ALTER TABLE `sys_history`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sys_language`
--
ALTER TABLE `sys_language`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_lockedrecords`
--
ALTER TABLE `sys_lockedrecords`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sys_log`
--
ALTER TABLE `sys_log`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `sys_news`
--
ALTER TABLE `sys_news`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_note`
--
ALTER TABLE `sys_note`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_redirect`
--
ALTER TABLE `sys_redirect`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_registry`
--
ALTER TABLE `sys_registry`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sys_template`
--
ALTER TABLE `sys_template`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tt_content`
--
ALTER TABLE `tt_content`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tx_extensionmanager_domain_model_extension`
--
ALTER TABLE `tx_extensionmanager_domain_model_extension`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tx_extensionmanager_domain_model_repository`
--
ALTER TABLE `tx_extensionmanager_domain_model_repository`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tx_impexp_presets`
--
ALTER TABLE `tx_impexp_presets`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tx_scheduler_task`
--
ALTER TABLE `tx_scheduler_task`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tx_scheduler_task_group`
--
ALTER TABLE `tx_scheduler_task_group`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
