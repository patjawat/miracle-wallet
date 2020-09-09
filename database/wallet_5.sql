-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2020 at 12:17 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wallet`
--

-- --------------------------------------------------------

--
-- Table structure for table `pw_activity`
--

CREATE TABLE `pw_activity` (
  `id` int(11) NOT NULL,
  `txid` text DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `user_customer` varchar(255) DEFAULT NULL,
  `mt4` text DEFAULT NULL,
  `idcard` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `bank_account_number` text DEFAULT NULL,
  `bank_account_name` text NOT NULL,
  `bankname_customer` text NOT NULL,
  `amount_usd` float DEFAULT NULL,
  `local_amount` float NOT NULL,
  `exchange_rate` float NOT NULL,
  `vat_percent` varchar(20) NOT NULL,
  `vat_local` varchar(20) NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `deposit_via` int(11) DEFAULT NULL,
  `withdrawal_via` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `status_broker` varchar(10) NOT NULL DEFAULT '0',
  `notify` text DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_activity`
--

INSERT INTO `pw_activity` (`id`, `txid`, `type`, `uid`, `user_customer`, `mt4`, `idcard`, `name`, `email`, `bank_account_number`, `bank_account_name`, `bankname_customer`, `amount_usd`, `local_amount`, `exchange_rate`, `vat_percent`, `vat_local`, `currency`, `deposit_via`, `withdrawal_via`, `status`, `status_broker`, `notify`, `created`, `updated`) VALUES
(770, 'B1', 2, 3, NULL, '123456ฟหก', '1100011001100', 'SDSDFak SDFDSFSDFai', 'kunnooiiz@gmail.com', '5234861944541', 'BBBBBBBBBBBBB', 'SCB', 4.34, 100, 23.02, '2.5', '2.50', 'THB', 1, NULL, 3, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1598862931, 1598862931),
(771, 'KUNGBOATNOIIZZ32141561110as0aasd', 1, 3, NULL, '123456', '1100011001100', 'Kittisak Ngoasrihpai', 'kungboatnoiiz2543@gmail.com', '5234861944541', 'Kungboatnoiiz', 'SCB', 43.47, 1000.76, 30, '2.5', '25.02', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599030094, 1599030094),
(772, 'KUNGBOATNOIIZZ32141561110as0aasda', 1, 3, NULL, '123456', '1100011001100', 'Kittisak Ngoasrihpai', 'kungboatnoiiz2543@gmail.com', '5234861944541', 'Kungboatnoiiz', 'SCB', 217.21, 5000.16, 30, '2.5', '125.00', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599030177, 1599030177),
(773, 'KUNGBOATNOIIZZ32141561110as0aasdaฟ', 1, 3, NULL, '123456', '1100011001100', 'Kittisak Ngoasrihpai', 'kungboatnoiiz2543@gmail.com', '5234861944541', 'Kungboatnoiiz', 'SCB', 217.24, 5000.93, 30, '2.5', '125.02', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599030628, 1599030628),
(774, 'a', 1, 3, NULL, '123456', '1100011001100', 'Kittisak Ngoasrihpai', 'kungboatnoiiz2543@gmail.com', '5234861944541', 'Kungboatnoiiz', 'SCB', 217.22, 5000.44, 25, '2.5', '125.01', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599030801, 1599030801),
(775, 'ab', 1, 3, NULL, '123456', '1100011001100', 'Kittisak Ngoasrihpai', 'kungboatnoiiz2543@gmail.com', '5234861944541', 'Kungboatnoiiz', 'SCB', 217.23, 5000.55, 30, '2.5', '125.01', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599030852, 1599030852),
(776, 'ab3', 1, 3, NULL, '123456', '1100011001100', 'Kittisak Ngoasrihpai', 'kungboatnoiiz2543@gmail.com', '5234861944541', 'Kungboatnoiiz', 'SCB', 217.24, 5000.8, 20, '2.5', '125.02', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599030927, 1599030927),
(777, 'ab3a', 1, 3, NULL, '123456', '1100011001100', 'Kittisak Ngoasrihpai', 'kungboatnoiiz2543@gmail.com', '5234861944541', 'Kungboatnoiiz', 'SCB', 217.23, 5000.61, 21, '2.5', '125.02', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599030970, 1599030970),
(778, 'ab3ad', 1, 3, NULL, '123456', '1100011001100', 'Kittisak Ngoasrihpai', 'kungboatnoiiz2543@gmail.com', '5234861944541', 'Kungboatnoiiz', 'SCB', 217.21, 5000.25, 30, '2.5', '125.01', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599031103, 1599031103),
(779, 'ab3ada', 1, 3, NULL, '123456', '1100011001100', 'Kittisak Ngoasrihpai', 'kungboatnoiiz2543@gmail.com', '5234861944541', 'Kungboatnoiiz', 'SCB', 217.22, 5000.44, 30, '2.5', '125.01', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599031247, 1599031247),
(780, 'ab3adaj', 1, 3, NULL, '123456', '1100011001100', 'Kittisak Ngoasrihpai', 'kungboatnoiiz2543@gmail.com', '5234861944541', 'Kungboatnoiiz', 'SCB', 217.23, 5000.71, 20, '2.5', '125.02', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599031329, 1599031329),
(781, 'ab3adaja', 1, 3, NULL, '123456', '1100011001100', 'Kittisak Ngoasrihpai', 'kungboatnoiiz2543@gmail.com', '5234861944541', 'Kungboatnoiiz', 'SCB', 217.22, 5000.45, 30, '2.5', '125.01', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599031749, 1599031749),
(782, 'ab3adajaฟ', 1, 3, NULL, '123456', '1100011001100', 'Kittisak Ngoasrihpai', 'kungboatnoiiz2543@gmail.com', '5234861944541', 'Kungboatnoiiz', 'SCB', 217.22, 5000.33, 10, '2.5', '125.01', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599032371, 1599032371),
(783, '4456166', 1, 2, NULL, '123456', '1100011001100', 'thanawut padermwong', 'thanawut.pad@gmail.com', '085411561615', 'thanawut padermwong', 'KTB', 65.2, 1500.87, 23.02, '2.5', '37.52', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599460051, 1599460051),
(784, '655', 2, 2, NULL, '1561651', '1100011001100', 'thanawut pade', 'thanawut.pad@gmail.com', '1129901583451', 'thanawut padermwong', 'SCB', 0, 200, 0, '2.5', '5.00', 'THB', 1, NULL, 3, '3', 'https://kittisak.dev/ajax/testpost.php', 1599460224, 1599460224),
(785, '4456154', 1, 2, NULL, '123456', '1100011001100', 'thanawut padermwong', 'thanawut.pad@gmail.com', '085411561615', 'thanawut padermwong', 'KTB', 65.17, 1500.22, 23.02, '2.5', '0', 'THB', 1, NULL, 2, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599460236, 1599460236),
(786, '6515615', 1, 2, NULL, '123456', '1100011001100', 'thanawut padermwong', 'thanawut.pad@gmail.com', '085411561615', 'thanawut padermwong', 'KTB', 86.9, 2000.47, 23.02, '2.5', '50.01', 'THB', 1, NULL, 1, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599541750, 1599541750),
(787, '6541651', 2, 2, NULL, '51465', '1100011001100', 'thanawut pade', 'thanawut.pad@gmail.com', '1129901583451', 'thanawut padermwong', 'SCB', 6.45, 200, 31, '2.5', '5.00', 'THB', 1, NULL, 3, '3', 'https://kittisak.dev/ajax/testpost.php', 1599541915, 1599541915),
(788, '15165', 1, 2, NULL, '5161651', '1100011001100', 'thanawut padermwong', 'thanawut.pad@gmail.com', '085411561615', 'thanawut padermwong', 'KTB', 86.91, 2000.62, 23.02, '2.5', '0', 'THB', 1, NULL, 3, '3', 'http://localhost/e-wallet/ajax/testpost.php', 1599645940, 1599645940);

-- --------------------------------------------------------

--
-- Table structure for table `pw_admin_earnings`
--

CREATE TABLE `pw_admin_earnings` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_admin_earnings`
--

INSERT INTO `pw_admin_earnings` (`id`, `amount`, `currency`, `created`, `updated`) VALUES
(1, '6', 'JPY', 1596035002, 1596035869),
(2, '323.7', 'THB', 1596035314, 1596038305);

-- --------------------------------------------------------

--
-- Table structure for table `pw_admin_logs`
--

CREATE TABLE `pw_admin_logs` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_admin_logs`
--

INSERT INTO `pw_admin_logs` (`id`, `type`, `time`, `u_field_1`, `u_field_2`, `u_field_3`, `u_field_4`, `u_field_5`) VALUES
(1, 5, 1596035002, '3', 'JPY', '911575FC3E678EC7D98334E2E1FFB8', NULL, NULL),
(2, 5, 1596035314, '15', 'THB', 'F8F3968360DF006CA3BEDF52FAD547', NULL, NULL),
(3, 5, 1596035869, '3', 'JPY', '7559BCDCCE606A2527CCF6849B30E3', NULL, NULL),
(4, 5, 1596036262, '14.7', 'THB', '7C7C6A2F31A26456327B86642F7975', NULL, NULL),
(5, 5, 1596038305, '294', 'THB', 'ABC98E27C9A8241B0CDBA2774DFCCC', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pw_gateways`
--

CREATE TABLE `pw_gateways` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `gateway_id` int(11) NOT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `min_amount` varchar(255) DEFAULT NULL,
  `max_amount` varchar(255) DEFAULT NULL,
  `exchange_type` varchar(255) DEFAULT NULL,
  `include_vat` int(11) DEFAULT NULL,
  `extra_vat` varchar(255) DEFAULT NULL,
  `transaction_vat` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `external_icon` text DEFAULT NULL,
  `process_type` int(11) DEFAULT NULL,
  `process_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_gateways`
--

INSERT INTO `pw_gateways` (`id`, `type`, `gateway_id`, `bankname`, `bank_account_number`, `currency`, `min_amount`, `max_amount`, `exchange_type`, `include_vat`, `extra_vat`, `transaction_vat`, `status`, `external_icon`, `process_type`, `process_time`) VALUES
(5, 3, 1, 'SCB', '0637404904', 'THB', '100', '50000', 'USD', 1, '2.5', '', 1, 'bank_logo/SCB.png', 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `pw_payments`
--

CREATE TABLE `pw_payments` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `merchant_account` varchar(255) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_price` varchar(255) DEFAULT NULL,
  `item_currency` varchar(255) DEFAULT NULL,
  `return_success` varchar(255) DEFAULT NULL,
  `return_fail` varchar(255) DEFAULT NULL,
  `return_cancel` varchar(255) DEFAULT NULL,
  `payment_time` int(11) DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `payee_account` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_postlog`
--

CREATE TABLE `pw_postlog` (
  `id` int(100) NOT NULL,
  `uid` text NOT NULL,
  `txid` text NOT NULL,
  `link` text NOT NULL,
  `data` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_postlog`
--

INSERT INTO `pw_postlog` (`id`, `uid`, `txid`, `link`, `data`, `status`, `created`) VALUES
(1, '3', 'KUNGBOATNOIIZZ32141561110as0aasd', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.28 (Win32) OpenSSL/1.0.2l PHP/7.1.10</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599030157'),
(2, '3', 'KUNGBOATNOIIZZ32141561110as0aasda', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.28 (Win32) OpenSSL/1.0.2l PHP/7.1.10</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599030207'),
(3, '3', 'KUNGBOATNOIIZZ32141561110as0aasdaฟ', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.28 (Win32) OpenSSL/1.0.2l PHP/7.1.10</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599030700'),
(4, '3', 'a', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.28 (Win32) OpenSSL/1.0.2l PHP/7.1.10</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599030816'),
(5, '3', 'ab', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.28 (Win32) OpenSSL/1.0.2l PHP/7.1.10</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599030858'),
(6, '3', 'ab3', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.28 (Win32) OpenSSL/1.0.2l PHP/7.1.10</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599030939'),
(7, '3', 'ab3a', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.28 (Win32) OpenSSL/1.0.2l PHP/7.1.10</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599030980'),
(8, '3', 'ab3ad', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.28 (Win32) OpenSSL/1.0.2l PHP/7.1.10</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599031118'),
(9, '3', 'ab3ada', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.28 (Win32) OpenSSL/1.0.2l PHP/7.1.10</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599031258'),
(10, '3', 'ab3adaj', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.28 (Win32) OpenSSL/1.0.2l PHP/7.1.10</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599031368'),
(11, '3', 'ab3adaja', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.28 (Win32) OpenSSL/1.0.2l PHP/7.1.10</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599031765'),
(12, '3', 'ab3adajaฟ', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.28 (Win32) OpenSSL/1.0.2l PHP/7.1.10</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599032394'),
(13, '2', '4456166', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.43 (Win64) OpenSSL/1.1.1g PHP/7.4.7</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599460188'),
(14, '2', '6515615', 'http://localhost/e-wallet/ajax/testpost.php', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"\r\n  \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\">\r\n<head>\r\n<title>Object not found!</title>\r\n<link rev=\"made\" href=\"mailto:postmaster@localhost\" />\r\n<style type=\"text/css\"><!--/*--><![CDATA[/*><!--*/ \r\n    body { color: #000000; background-color: #FFFFFF; }\r\n    a:link { color: #0000CC; }\r\n    p, address {margin-left: 3em;}\r\n    span {font-size: smaller;}\r\n/*]]>*/--></style>\r\n</head>\r\n\r\n<body>\r\n<h1>Object not found!</h1>\r\n<p>\r\n\r\n\r\n    The requested URL was not found on this server.\r\n\r\n  \r\n\r\n    If you entered the URL manually please check your\r\n    spelling and try again.\r\n\r\n  \r\n\r\n</p>\r\n<p>\r\nIf you think this is a server error, please contact\r\nthe <a href=\"mailto:postmaster@localhost\">webmaster</a>.\r\n\r\n</p>\r\n\r\n<h2>Error 404</h2>\r\n<address>\r\n  <a href=\"/\">localhost</a><br />\r\n  <span>Apache/2.4.43 (Win64) OpenSSL/1.1.1g PHP/7.4.7</span>\r\n</address>\r\n</body>\r\n</html>\r\n\r\n', '', '1599541813');

-- --------------------------------------------------------

--
-- Table structure for table `pw_rates`
--

CREATE TABLE `pw_rates` (
  `id` int(11) NOT NULL,
  `img` text DEFAULT NULL,
  `base` varchar(20) NOT NULL,
  `uid` varchar(100) NOT NULL DEFAULT '0',
  `rates_type` varchar(10) NOT NULL,
  `rates_buy` float NOT NULL,
  `rates_sell` float NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_rates`
--

INSERT INTO `pw_rates` (`id`, `img`, `base`, `uid`, `rates_type`, `rates_buy`, `rates_sell`, `updated`) VALUES
(12, 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg', 'USD', '3', 'JPY', 23.32, 0, 1598691807),
(13, 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Flag_of_Thailand.svg', 'USD', '3', 'THB', 23.02, 0, 1598691807),
(15, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOMAAACXCAMAAADQ4xypAAAAeFBMVEXOESYAKGj///+2FjUAKm7SECMAJmcAJGYAGmIAFGAAAFgAF2EAHmTt7/MAAFMAEGCaorjJzts+UYH09fkACV28w9KwtsdZY4tocpXQ1N+iqLxzdph6hqXh5OoAAFyYnbVufJ8bJWhPXoiEiqYaLWtHV4R4f58YNXBB2IhhAAAC40lEQVR4nO2cjXaiMBBGTXY3CQSNCIHWH1pr7b7/G654tt2e3VYl+rElfLcPYO5pMhmGGSYTQgghhBBCCCGEEEIIIYQQQgghhETHj/iZfIufyff4mYj4oWMc0PH2qONfv/ToqI1rSuesc2XjjO7vh/ty1C7V+5eHZeVzXy0fXhY6dX1p9uNoZumj30wL+Uox3fjHdGZ6+fUeHJXZ1l5+QOHrrenhcOIdE7XKPzI8kq9UAl8B2lEndfWpYUtVJ+hzCXbMzHx6UlHK6dxk2EVgHa35fJu+27DGQleBdFTJojhveKBYJMjQA3RU2d25ffq2X+8yoCTQMblYsZUEhleco11crnjYrnvcmYQ5Zu6ys/gm6WDRFeWo7X0nxTa6ou5JkKMyy46KUi5ReR3IsUu8eQUWdzCO+vnDJPwM/hmzWzGO9iVAUcoV5lkL4qi2l6Rw/5JvIScS4mjqIEUpa8g/EuI4CzmNLX6GWA7CUZWBilKWiM2KcEzXwY7rErAeiGNYxGnxKWA9AEf9cxPsuBGAKxLgaOtu2fh7pk+AyApwLHfhjsUOcCABjk33dPwPy+b2C0Ls1dPFxtNUgMrO7R2VCc0AWjzgAev2jjoLvzoOKWt2+8AKcBRXOQIuD4CjvspRD8FRZVedR0Ch9cvFVUAJkvdjEGPIc8aQr2oR/3OHSMMD61CeH0U5gjrAFfWcZij1nDHU5UZRXx1DnVyYVZDjkN53BL63qgb13irw/SOoJeArvUdGNel8nX6AezuwfgAhsqxjZq4H19dxOJJPXSSLPa4JCdlntYq+z2oU/XJd+h7tQPseD9jkov5VO9z+VTGKPuRR9JOLs3MBevhzAeLEfIeMZr6jxczsOv9rTidf23jmdI7oslH73bzyPve+mu/2qinjmrc6ok1ZOpfYxLm0jHFu7jdKKNX7ACTnWOOAjnEwiu88/O+PafTAKL67QgghhBBCCCGEEEIIIYQQQgghhJDo+AVfq3up+rXJyAAAAABJRU5ErkJggg==', 'USD', '3', 'LAK', 400, 70, 1598693660),
(16, 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg', 'USD', '2', 'JPY', 23.32, 0, 1599459765),
(17, 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Flag_of_Thailand.svg', 'USD', '2', 'THB', 23.02, 31, 1599459765),
(18, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOMAAACXCAMAAADQ4xypAAAAeFBMVEXOESYAKGj///+2FjUAKm7SECMAJmcAJGYAGmIAFGAAAFgAF2EAHmTt7/MAAFMAEGCaorjJzts+UYH09fkACV28w9KwtsdZY4tocpXQ1N+iqLxzdph6hqXh5OoAAFyYnbVufJ8bJWhPXoiEiqYaLWtHV4R4f58YNXBB2IhhAAAC40lEQVR4nO2cjXaiMBBGTXY3CQSNCIHWH1pr7b7/G654tt2e3VYl+rElfLcPYO5pMhmGGSYTQgghhBBCCCGEEEIIIYQQQgghhETHj/iZfIufyff4mYj4oWMc0PH2qONfv/ToqI1rSuesc2XjjO7vh/ty1C7V+5eHZeVzXy0fXhY6dX1p9uNoZumj30wL+Uox3fjHdGZ6+fUeHJXZ1l5+QOHrrenhcOIdE7XKPzI8kq9UAl8B2lEndfWpYUtVJ+hzCXbMzHx6UlHK6dxk2EVgHa35fJu+27DGQleBdFTJojhveKBYJMjQA3RU2d25ffq2X+8yoCTQMblYsZUEhleco11crnjYrnvcmYQ5Zu6ys/gm6WDRFeWo7X0nxTa6ou5JkKMyy46KUi5ReR3IsUu8eQUWdzCO+vnDJPwM/hmzWzGO9iVAUcoV5lkL4qi2l6Rw/5JvIScS4mjqIEUpa8g/EuI4CzmNLX6GWA7CUZWBilKWiM2KcEzXwY7rErAeiGNYxGnxKWA9AEf9cxPsuBGAKxLgaOtu2fh7pk+AyApwLHfhjsUOcCABjk33dPwPy+b2C0Ls1dPFxtNUgMrO7R2VCc0AWjzgAev2jjoLvzoOKWt2+8AKcBRXOQIuD4CjvspRD8FRZVedR0Ch9cvFVUAJkvdjEGPIc8aQr2oR/3OHSMMD61CeH0U5gjrAFfWcZij1nDHU5UZRXx1DnVyYVZDjkN53BL63qgb13irw/SOoJeArvUdGNel8nX6AezuwfgAhsqxjZq4H19dxOJJPXSSLPa4JCdlntYq+z2oU/XJd+h7tQPseD9jkov5VO9z+VTGKPuRR9JOLs3MBevhzAeLEfIeMZr6jxczsOv9rTidf23jmdI7oslH73bzyPve+mu/2qinjmrc6ok1ZOpfYxLm0jHFu7jdKKNX7ACTnWOOAjnEwiu88/O+PafTAKL67QgghhBBCCCGEEEIIIYQQQgghhJDo+AVfq3up+rXJyAAAAABJRU5ErkJggg==', 'USD', '2', 'LAK', 400, 70, 1599459765);

-- --------------------------------------------------------

--
-- Table structure for table `pw_rates_admin`
--

CREATE TABLE `pw_rates_admin` (
  `id` int(20) NOT NULL,
  `img` text DEFAULT NULL,
  `base` varchar(10) NOT NULL,
  `rates_type` varchar(10) NOT NULL,
  `rates_buy` float NOT NULL,
  `rates_sell` float NOT NULL,
  `updated` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_rates_admin`
--

INSERT INTO `pw_rates_admin` (`id`, `img`, `base`, `rates_type`, `rates_buy`, `rates_sell`, `updated`) VALUES
(1, 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg', 'USD', 'JPY', 23.32, 0, 135121010),
(2, 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Flag_of_Thailand.svg', 'USD', 'THB', 23.02, 0, 35215123),
(3, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOMAAACXCAMAAADQ4xypAAAAeFBMVEXOESYAKGj///+2FjUAKm7SECMAJmcAJGYAGmIAFGAAAFgAF2EAHmTt7/MAAFMAEGCaorjJzts+UYH09fkACV28w9KwtsdZY4tocpXQ1N+iqLxzdph6hqXh5OoAAFyYnbVufJ8bJWhPXoiEiqYaLWtHV4R4f58YNXBB2IhhAAAC40lEQVR4nO2cjXaiMBBGTXY3CQSNCIHWH1pr7b7/G654tt2e3VYl+rElfLcPYO5pMhmGGSYTQgghhBBCCCGEEEIIIYQQQgghhETHj/iZfIufyff4mYj4oWMc0PH2qONfv/ToqI1rSuesc2XjjO7vh/ty1C7V+5eHZeVzXy0fXhY6dX1p9uNoZumj30wL+Uox3fjHdGZ6+fUeHJXZ1l5+QOHrrenhcOIdE7XKPzI8kq9UAl8B2lEndfWpYUtVJ+hzCXbMzHx6UlHK6dxk2EVgHa35fJu+27DGQleBdFTJojhveKBYJMjQA3RU2d25ffq2X+8yoCTQMblYsZUEhleco11crnjYrnvcmYQ5Zu6ys/gm6WDRFeWo7X0nxTa6ou5JkKMyy46KUi5ReR3IsUu8eQUWdzCO+vnDJPwM/hmzWzGO9iVAUcoV5lkL4qi2l6Rw/5JvIScS4mjqIEUpa8g/EuI4CzmNLX6GWA7CUZWBilKWiM2KcEzXwY7rErAeiGNYxGnxKWA9AEf9cxPsuBGAKxLgaOtu2fh7pk+AyApwLHfhjsUOcCABjk33dPwPy+b2C0Ls1dPFxtNUgMrO7R2VCc0AWjzgAev2jjoLvzoOKWt2+8AKcBRXOQIuD4CjvspRD8FRZVedR0Ch9cvFVUAJkvdjEGPIc8aQr2oR/3OHSMMD61CeH0U5gjrAFfWcZij1nDHU5UZRXx1DnVyYVZDjkN53BL63qgb13irw/SOoJeArvUdGNel8nX6AezuwfgAhsqxjZq4H19dxOJJPXSSLPa4JCdlntYq+z2oU/XJd+h7tQPseD9jkov5VO9z+VTGKPuRR9JOLs3MBevhzAeLEfIeMZr6jxczsOv9rTidf23jmdI7oslH73bzyPve+mu/2qinjmrc6ok1ZOpfYxLm0jHFu7jdKKNX7ACTnWOOAjnEwiu88/O+PafTAKL67QgghhBBCCCGEEEIIIYQQQgghhJDo+AVfq3up+rXJyAAAAABJRU5ErkJggg==', 'USD', 'LAK', 400, 70, 1597854039);

-- --------------------------------------------------------

--
-- Table structure for table `pw_settings`
--

CREATE TABLE `pw_settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `infoemail` varchar(255) DEFAULT NULL,
  `supportemail` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `default_language` varchar(255) DEFAULT NULL,
  `default_template` varchar(255) DEFAULT NULL,
  `default_currency` varchar(255) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `require_email_verify` int(11) DEFAULT NULL,
  `require_document_verify` int(11) DEFAULT NULL,
  `limit_maxamount_sent` int(11) DEFAULT NULL,
  `limit_maxtxs_sent` int(11) DEFAULT NULL,
  `payfee_type` int(11) DEFAULT NULL,
  `payfee_side` int(11) DEFAULT NULL,
  `payfee_percentage` int(11) DEFAULT NULL,
  `enable_recaptcha` int(11) DEFAULT NULL,
  `recaptcha_publickey` varchar(255) DEFAULT NULL,
  `recaptcha_privatekey` varchar(255) DEFAULT NULL,
  `enable_curcnv` int(11) DEFAULT NULL,
  `curcnv_api` varchar(255) DEFAULT NULL,
  `curcnv_fee_percentage` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_settings`
--

INSERT INTO `pw_settings` (`id`, `title`, `description`, `keywords`, `name`, `infoemail`, `supportemail`, `url`, `default_language`, `default_template`, `default_currency`, `logo`, `require_email_verify`, `require_document_verify`, `limit_maxamount_sent`, `limit_maxtxs_sent`, `payfee_type`, `payfee_side`, `payfee_percentage`, `enable_recaptcha`, `recaptcha_publickey`, `recaptcha_privatekey`, `enable_curcnv`, `curcnv_api`, `curcnv_fee_percentage`) VALUES
(1, 'q-wallet', 'iq-wallet', 'qq-wallet', 'iq-wallet', 'thanawut.pad@gmail.com', 'thanawut.pad@gmail.com', 'http://localhost/e-wallet/', 'English', NULL, 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pw_users`
--

CREATE TABLE `pw_users` (
  `id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_recovery` varchar(255) DEFAULT NULL,
  `document_verified` int(11) DEFAULT NULL,
  `email_verified` int(11) DEFAULT NULL,
  `email_hash` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `account_type` int(11) DEFAULT NULL,
  `account_level` int(11) DEFAULT NULL,
  `account_user` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `signup_time` int(11) DEFAULT NULL,
  `2fa_auth` int(11) DEFAULT NULL,
  `2fa_auth_login` int(11) DEFAULT NULL,
  `2fa_auth_send` int(11) DEFAULT NULL,
  `2fa_auth_withdrawal` int(11) DEFAULT NULL,
  `googlecode` varchar(255) DEFAULT NULL,
  `wallet_passphrase` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `merchant_api_key` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthday_date` varchar(255) DEFAULT NULL,
  `deposit_via` int(11) NOT NULL,
  `withdraw_via` int(11) NOT NULL,
  `sattlement_via` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_users`
--

INSERT INTO `pw_users` (`id`, `password`, `password_recovery`, `document_verified`, `email_verified`, `email_hash`, `email`, `status`, `account_type`, `account_level`, `account_user`, `ip`, `last_login`, `signup_time`, `2fa_auth`, `2fa_auth_login`, `2fa_auth_send`, `2fa_auth_withdrawal`, `googlecode`, `wallet_passphrase`, `first_name`, `last_name`, `business_name`, `merchant_api_key`, `country`, `city`, `province`, `zip_code`, `address`, `birthday_date`, `deposit_via`, `withdraw_via`, `sattlement_via`) VALUES
(1, '$2y$10$cOvgu3tx3eS0LrKuOM766eQVatRFVaQD1sTPEqAPCRTh9GWkByAaC', NULL, NULL, NULL, NULL, 'thanawut.pad@gmail.com', 1, NULL, 666, 'QQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(2, '$2y$10$BS0Ds.vuHcurdlZEkkNZeOMU6oZjqXM41XnfGSVw59So173vsA0nC', NULL, NULL, 1, NULL, 'kiwharryrock@gmail.com', 1, 2, NULL, NULL, '::1', 1597892665, 1594434989, NULL, NULL, NULL, NULL, NULL, NULL, 'thanawut', 'padermwong', 'xm', '43A37-4C262-D680B-2122A-981F3', 'Thailand', 'bangkok', NULL, '10000', 'bkk', NULL, 1, 1, 0),
(3, '$2y$10$qtII7ZUtziGm/DPcWxg5hOuxPIj6xfgTOGoH/fA4dxW0qT8e24rj2', NULL, NULL, 1, NULL, 'kungboatnoiiz2543@gmail.com', 1, 2, 666, NULL, '::1', 1599395640, 1595499456, 0, 1, 1, 1, '6RG5EVTHTDIVZC25', NULL, 'กิตติ', 'เหง้าศรี', 'DSSSSS', '0376C-02884-84249-C80F1-2CE79', 'Thailand', 'เมืองขอนแก่น', NULL, '40000', 'หอพัก The Future โนนม่วง', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pw_users_documents`
--

CREATE TABLE `pw_users_documents` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `document_type` int(11) DEFAULT NULL,
  `document_path` text DEFAULT NULL,
  `uploaded` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_users_logs`
--

CREATE TABLE `pw_users_logs` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_users_logs`
--

INSERT INTO `pw_users_logs` (`id`, `uid`, `type`, `time`, `u_field_1`, `u_field_2`, `u_field_3`, `u_field_4`, `u_field_5`) VALUES
(1, 2, 1, 1594438369, '::1', NULL, NULL, NULL, NULL),
(2, 2, 1, 1594438663, '::1', NULL, NULL, NULL, NULL),
(3, 2, 1, 1594438688, '::1', NULL, NULL, NULL, NULL),
(4, 2, 1, 1594438703, '::1', NULL, NULL, NULL, NULL),
(5, 2, 1, 1594466207, '::1', NULL, NULL, NULL, NULL),
(6, 2, 1, 1594468154, '::1', NULL, NULL, NULL, NULL),
(7, 2, 1, 1594473989, '::1', NULL, NULL, NULL, NULL),
(8, 2, 1, 1594474628, '::1', NULL, NULL, NULL, NULL),
(9, 2, 1, 1594639281, '::1', NULL, NULL, NULL, NULL),
(10, 2, 1, 1594829111, '::1', NULL, NULL, NULL, NULL),
(11, 2, 1, 1594917395, '::1', NULL, NULL, NULL, NULL),
(12, 2, 1, 1595055452, '::1', NULL, NULL, NULL, NULL),
(13, 2, 1, 1595130201, '::1', NULL, NULL, NULL, NULL),
(14, 2, 1, 1595131190, '::1', NULL, NULL, NULL, NULL),
(15, 2, 1, 1595290549, '::1', NULL, NULL, NULL, NULL),
(16, 3, 1, 1595499465, '::1', NULL, NULL, NULL, NULL),
(17, 3, 1, 1595514397, '::1', NULL, NULL, NULL, NULL),
(18, 3, 1, 1595516306, '::1', NULL, NULL, NULL, NULL),
(19, 3, 1, 1595586668, '::1', NULL, NULL, NULL, NULL),
(20, 3, 1, 1595594435, '::1', NULL, NULL, NULL, NULL),
(21, 3, 1, 1595652963, '::1', NULL, NULL, NULL, NULL),
(22, 3, 1, 1595737592, '::1', NULL, NULL, NULL, NULL),
(23, 3, 1, 1595741388, '::1', NULL, NULL, NULL, NULL),
(24, 3, 1, 1595775995, '::1', NULL, NULL, NULL, NULL),
(25, 3, 1, 1595948955, '::1', NULL, NULL, NULL, NULL),
(26, 3, 1, 1596003382, '::1', NULL, NULL, NULL, NULL),
(27, 3, 1, 1596034123, '::1', NULL, NULL, NULL, NULL),
(28, 3, 1, 1596471051, '::1', NULL, NULL, NULL, NULL),
(29, 3, 1, 1596643883, '::1', NULL, NULL, NULL, NULL),
(30, 3, 1, 1596814424, '::1', NULL, NULL, NULL, NULL),
(31, 3, 1, 1596901940, '::1', NULL, NULL, NULL, NULL),
(32, 3, 1, 1597072415, '::1', NULL, NULL, NULL, NULL),
(33, 3, 1, 1597077092, '::1', NULL, NULL, NULL, NULL),
(34, 3, 1, 1597237618, '::1', NULL, NULL, NULL, NULL),
(35, 3, 1, 1597238172, '::1', NULL, NULL, NULL, NULL),
(36, 3, 1, 1597308494, '::1', NULL, NULL, NULL, NULL),
(37, 3, 1, 1597757697, '::1', NULL, NULL, NULL, NULL),
(38, 3, 1, 1597814361, '::1', NULL, NULL, NULL, NULL),
(39, 3, 1, 1597848131, '::1', NULL, NULL, NULL, NULL),
(40, 2, 1, 1597892665, '::1', NULL, NULL, NULL, NULL),
(41, 3, 1, 1598004435, '::1', NULL, NULL, NULL, NULL),
(42, 3, 1, 1598071674, '::1', NULL, NULL, NULL, NULL),
(43, 3, 1, 1598101004, '::1', NULL, NULL, NULL, NULL),
(44, 3, 1, 1598202186, '::1', NULL, NULL, NULL, NULL),
(45, 3, 1, 1598264722, '::1', NULL, NULL, NULL, NULL),
(46, 3, 1, 1598445036, '::1', NULL, NULL, NULL, NULL),
(47, 3, 1, 1598540086, '::1', NULL, NULL, NULL, NULL),
(48, 3, 1, 1598626141, '::1', NULL, NULL, NULL, NULL),
(49, 3, 1, 1598761019, '::1', NULL, NULL, NULL, NULL),
(50, 3, 1, 1598856758, '::1', NULL, NULL, NULL, NULL),
(51, 3, 1, 1598977743, '::1', NULL, NULL, NULL, NULL),
(52, 3, 1, 1599030113, '::1', NULL, NULL, NULL, NULL),
(53, 3, 1, 1599060289, '::1', NULL, NULL, NULL, NULL),
(54, 3, 1, 1599327456, '::1', NULL, NULL, NULL, NULL),
(55, 3, 1, 1599364405, '::1', NULL, NULL, NULL, NULL),
(56, 3, 1, 1599395640, '::1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pw_users_wallets`
--

CREATE TABLE `pw_users_wallets` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `img` text DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_users_wallets`
--

INSERT INTO `pw_users_wallets` (`id`, `uid`, `img`, `amount`, `currency`, `updated`) VALUES
(43, 3, 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Flag_of_Thailand.svg', 4147.82, 'THB', 1598862748),
(44, 3, 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg', 0, 'JPY', 1599408697),
(45, 2, 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Flag_of_Thailand.svg', 3003.81, 'THB', 1599459740);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_sattlement`
--

CREATE TABLE `transaction_sattlement` (
  `id` int(20) NOT NULL,
  `UID` varchar(20) NOT NULL,
  `txid` text NOT NULL,
  `name` text NOT NULL,
  `sattlement_via` varchar(20) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `local_amount` float NOT NULL,
  `vat_percent` varchar(10) NOT NULL,
  `vat_local` varchar(10) NOT NULL,
  `account _No` text NOT NULL,
  `note` text NOT NULL,
  `status` varchar(5) NOT NULL,
  `created` varchar(20) NOT NULL,
  `updated` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction_sattlement`
--

INSERT INTO `transaction_sattlement` (`id`, `UID`, `txid`, `name`, `sattlement_via`, `currency`, `local_amount`, `vat_percent`, `vat_local`, `account _No`, `note`, `status`, `created`, `updated`) VALUES
(1, '3', '6f4febc5f316a8eda05b', 'BBBBBBB', '1', 'THB', 100, '2.5', '2.5', '115151511115', 'Boat', '3', '1599455398', '1599455398');

-- --------------------------------------------------------

--
-- Table structure for table `user_sattlement`
--

CREATE TABLE `user_sattlement` (
  `id` int(20) NOT NULL,
  `UID` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `Address` text NOT NULL,
  `phoneNo` varchar(20) NOT NULL,
  `Beneficial_bank` text NOT NULL,
  `Account_No` text NOT NULL,
  `Branch_and_Address_of_Bank` text NOT NULL,
  `Bank_Code` text NOT NULL,
  `currency` varchar(10) NOT NULL,
  `Note` text NOT NULL,
  `created` varchar(20) NOT NULL,
  `status` varchar(2) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_sattlement`
--

INSERT INTO `user_sattlement` (`id`, `UID`, `name`, `Address`, `phoneNo`, `Beneficial_bank`, `Account_No`, `Branch_and_Address_of_Bank`, `Bank_Code`, `currency`, `Note`, `created`, `status`) VALUES
(1, '3', 'BBBBBBB', 'AAAAAAA', '1234567890', 'QQQQQQQ', '115151511115', '6665656', 'adsasdasd', 'THB', 'asdasda', '1599410290', '3'),
(2, '3', 'Kittisak BBB', '55/55', '1231231230', 'ASDASDAD', '123456', 'aqsdsa', 'EEEEEEE', 'THB', 'BBBBBB', '1599410397', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pw_activity`
--
ALTER TABLE `pw_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_admin_earnings`
--
ALTER TABLE `pw_admin_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_admin_logs`
--
ALTER TABLE `pw_admin_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_gateways`
--
ALTER TABLE `pw_gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gateway_id` (`gateway_id`);

--
-- Indexes for table `pw_payments`
--
ALTER TABLE `pw_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_postlog`
--
ALTER TABLE `pw_postlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_rates`
--
ALTER TABLE `pw_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_rates_admin`
--
ALTER TABLE `pw_rates_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_settings`
--
ALTER TABLE `pw_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_users`
--
ALTER TABLE `pw_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_users_documents`
--
ALTER TABLE `pw_users_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_users_logs`
--
ALTER TABLE `pw_users_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_users_wallets`
--
ALTER TABLE `pw_users_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_sattlement`
--
ALTER TABLE `transaction_sattlement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sattlement`
--
ALTER TABLE `user_sattlement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pw_activity`
--
ALTER TABLE `pw_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=789;

--
-- AUTO_INCREMENT for table `pw_admin_earnings`
--
ALTER TABLE `pw_admin_earnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pw_admin_logs`
--
ALTER TABLE `pw_admin_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pw_gateways`
--
ALTER TABLE `pw_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pw_payments`
--
ALTER TABLE `pw_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_postlog`
--
ALTER TABLE `pw_postlog`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pw_rates`
--
ALTER TABLE `pw_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pw_rates_admin`
--
ALTER TABLE `pw_rates_admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pw_settings`
--
ALTER TABLE `pw_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pw_users`
--
ALTER TABLE `pw_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pw_users_documents`
--
ALTER TABLE `pw_users_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_users_logs`
--
ALTER TABLE `pw_users_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `pw_users_wallets`
--
ALTER TABLE `pw_users_wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `transaction_sattlement`
--
ALTER TABLE `transaction_sattlement`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_sattlement`
--
ALTER TABLE `user_sattlement`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
