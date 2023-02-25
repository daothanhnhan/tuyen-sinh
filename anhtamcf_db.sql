-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 25, 2023 lúc 08:46 AM
-- Phiên bản máy phục vụ: 10.2.43-MariaDB
-- Phiên bản PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `anhtamcf_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_state` int(11) DEFAULT 1,
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$02.uMGB26ln3fgNk8MyarOf8hnuaF/hWlukTDKk99Kb9TluOarctq', NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_1`
--

CREATE TABLE `bang_gia_1` (
  `id` int(11) NOT NULL,
  `khoahoc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhanh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvien` int(11) NOT NULL,
  `namsinh` year(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_1`
--

INSERT INTO `bang_gia_1` (`id`, `khoahoc`, `chinhanh`, `hocvien`, `namsinh`, `email`, `phone`, `name`, `notes`) VALUES
(43, 'Smart Reading Skills', 'AMERICAN SKILLS LONG BIÊN-HÀ NỘI', 0, 1995, 'viethung95cute@gmail.com', '1672523165', 'Nguyễn Việt Hưng', ''),
(44, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', ''),
(45, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_2`
--

CREATE TABLE `bang_gia_2` (
  `id` int(11) NOT NULL,
  `name_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_student` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) NOT NULL,
  `hoan_thien_so_sach` varchar(300) NOT NULL,
  `quyet_toan_thue` varchar(300) NOT NULL,
  `tong_dich_vu` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_2`
--

INSERT INTO `bang_gia_2` (`id`, `name_parent`, `phone_parent`, `name_student`, `birthday`, `adress`, `email`, `hoan_thien_so_sach`, `quyet_toan_thue`, `tong_dich_vu`, `time`) VALUES
(34, 'Việt Hưng', '01672523165', 'ABC', '2018-03-30', 'ĐH Mỏ - Địa chất', 'viethung95cute@gmail.com', '', '', '', '2018-03-28 04:54:52'),
(35, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:26'),
(36, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:33'),
(37, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:13'),
(38, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:19'),
(39, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:13:51'),
(40, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:20:52'),
(41, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:19'),
(42, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:22'),
(43, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:52'),
(44, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:55'),
(45, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:23:34'),
(46, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:46'),
(47, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cad_file`
--

CREATE TABLE `cad_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cad_file`
--

INSERT INTO `cad_file` (`id`, `name`) VALUES
(2, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calculators_file`
--

CREATE TABLE `calculators_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `calculators_file`
--

INSERT INTO `calculators_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_logo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner1` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner3` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_web` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `slideshow_home`, `link1`, `link2`, `link3`, `banner2`, `banner1`, `banner3`, `icon_web`) VALUES
(1, 'Ban Quản lý Ký túc xá Trường Đại học Cửu Long', '', 'Ban Quản lý Ký túc xá', 'Ban Quản lý Ký túc xá Trường Đại học Cửu Long', 'Logo truong Dai hoc Cuu Long new.jpg', '', '', 'Ban Quản lý Ký túc xá Trường Đại học Cửu Long\r\nĐịa chỉ: Quốc lộ 1A, Phú Quới, Long Hồ, Vĩnh Long', 'Địa chỉ: Quốc lộ 1A, Phú Quới, Long Hồ, Vĩnh Long', 'banquanlyktx@mku.edu.vn', '02706283888', '', 'BAN QUẢN LÝ KÝ TÚC XÁ\r\nTRƯỜNG ĐẠI HỌC CỬU LONG', '', '', '', '2023-03-01', '', '[]', 'avits-smart-readingbrphat-trien-ngon-ngu-tieng-viet-4-10-tuoi', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan', 'Logo truong Dai hoc Cuu Long new.jpg', 'banner-quang-cao-750x1000-1.jpg', 'Logo truong Dai hoc Cuu Long new.jpg', 'Logo truong Dai hoc Cuu Long new.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) DEFAULT 0,
  `lang_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link3` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `edit_state`, `lang_link1`, `lang_link2`, `lang_link3`) VALUES
(1, 1, 'vn', 'Ban Quản lý Ký túc xá Trường Đại học Cửu Long', '', 'Ban Quản lý Ký túc xá', 'Ban Quản lý Ký túc xá Trường Đại học Cửu Long', '', '', 'Ban Quản lý Ký túc xá Trường Đại học Cửu Long\r\nĐịa chỉ: Quốc lộ 1A, Phú Quới, Long Hồ, Vĩnh Long', 'Địa chỉ: Quốc lộ 1A, Phú Quới, Long Hồ, Vĩnh Long', 'banquanlyktx@mku.edu.vn', '02706283888', '', 'BAN QUẢN LÝ KÝ TÚC XÁ\r\nTRƯỜNG ĐẠI HỌC CỬU LONG', '', '', '', '2023-03-01', '', 1, '0', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan'),
(2, 1, 'en', '', NULL, '', '', NULL, NULL, '', '', '', '', '', 'UNIVERSITY\r\nSCIENCE AND TECHNOLOGY\r\nHANOI', '', '', '', 'TIMBER RELATED STORIES', NULL, 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datasheets_file`
--

CREATE TABLE `datasheets_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `datasheets_file`
--

INSERT INTO `datasheets_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_mua`
--

CREATE TABLE `dat_mua` (
  `id` int(11) NOT NULL,
  `name_investors` varchar(200) CHARACTER SET utf8 NOT NULL,
  `professional_field` varchar(225) NOT NULL,
  `work_unit` varchar(225) NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(200) CHARACTER SET utf8 NOT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `aspiration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dat_mua`
--

INSERT INTO `dat_mua` (`id`, `name_investors`, `professional_field`, `work_unit`, `phone`, `email`, `address`, `district`, `city`, `chanel`, `aspiration`) VALUES
(2, 'Rèm vải 01', '760', '1', 'tuấn', 'tuan@gmail.com', '0123', 'Hà Nội', '', '', ''),
(3, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng'),
(4, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `declaration_file`
--

CREATE TABLE `declaration_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `declaration_file`
--

INSERT INTO `declaration_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doi_tac`
--

CREATE TABLE `doi_tac` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `khoa_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `doi_tac`
--

INSERT INTO `doi_tac` (`id`, `image`, `khoa_id`) VALUES
(6, 'logo-paris-cite-416x240-1-1.jpg', 1),
(7, 'logo-paris-cite-416x240-1-1.jpg', 32),
(8, 'logo-tohoku-416x240-1.jpg', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gallery`
--

INSERT INTO `gallery` (`id`, `note`, `name`) VALUES
(1, '12', 'Trang chủ'),
(2, '2', 'Hợp tác quốc tế'),
(3, '3', 'Sinh Viên'),
(4, '4', 'Nghiên cứu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `guong_mat`
--

CREATE TABLE `guong_mat` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `khoa_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `guong_mat`
--

INSERT INTO `guong_mat` (`id`, `image`, `name`, `position`, `khoa_id`) VALUES
(1, 'pic-nguyen-hong-nam-555x740-1-555x740.jpg', 'TS. Nguyễn Hồng Nam', 'Trưởng khoa Đào tạo Đại Cương', 3),
(2, 'pic-to-thi-mai-huong-555x740-1-555x740.jpg', 'TS. Tô Thị Mai Hương', 'Giảng viên khoa Khoa học Sự sống', 3),
(3, 'pic-le-hai-khoi-555x740-1-555x740.jpg', 'TS. Nguyễn Thy Ngọc', 'Giảng viên khoa Khoa học Sự sống', 3),
(4, 'pic-trinh-bich-ngoc-555x740-1-555x740.jpg', 'TS. Nguyễn Thị Hoa', 'Giảng viên Khoa Khoa học vật liệu tiên tiến và Công nghệ nano', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `installation_file`
--

CREATE TABLE `installation_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `installation_file`
--

INSERT INTO `installation_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`id`, `name`, `gallery`) VALUES
(31, 'Khoa Đào tạo đại cương', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(32, 'Khoa năng lượng', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `comment` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khoa_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`, `khoa_id`) VALUES
(8, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', '', 'test', '2023-02-11 08:23:11', 31);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listings_certifications_file`
--

CREATE TABLE `listings_certifications_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `listings_certifications_file`
--

INSERT INTO `listings_certifications_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_sort_order` int(11) DEFAULT 0,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT 0,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL,
  `khoa_id` int(11) NOT NULL DEFAULT 0,
  `khoa_menu_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`, `khoa_id`, `khoa_menu_id`) VALUES
(114, 'Trang chủ', 0, 1, '', 0, 0, 0, 0, 0, 1, 166, 0, 0, NULL, 0, 0),
(151, 'Tuyển sinh', 3, 8, '#', 0, 0, 0, 0, 0, 1, 166, 0, 0, NULL, 0, 0),
(155, 'Giới thiệu', 2, 8, '#', 0, 0, 0, 0, 0, 1, 166, 0, 0, NULL, 0, 0),
(166, 'Menu Chính', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, 0),
(167, 'Khoa Đào tạo đại cương', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 31, 0),
(170, 'Tổng quan', 0, 8, '#', 0, 0, 0, 0, 0, 1, 167, 0, 0, NULL, 31, 0),
(171, 'Tin tức', 0, 5, '', 0, 76, 0, 0, 0, 1, 167, 0, 0, NULL, 31, 0),
(172, 'Khoa năng lượng', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 32, 0),
(173, 'Tổng quan', 0, 1, '', 0, 0, 0, 0, 0, 1, 172, 0, 0, NULL, 32, 0),
(174, 'Đào tạo', 2, 8, '#', 0, 0, 0, 0, 0, 1, 166, 0, 0, NULL, 0, 0),
(177, 'Đại học', 0, 5, '', 0, 78, 0, 0, 0, 1, 174, 0, 0, NULL, 0, 0),
(178, 'Thạc sĩ', 0, 5, '', 0, 80, 0, 0, 0, 1, 174, 0, 0, NULL, 0, 0),
(179, 'Tiến sĩ', 0, 5, '', 0, 81, 0, 0, 0, 1, 174, 0, 0, NULL, 0, 0),
(182, 'Sự kiện', 0, 5, '', 0, 87, 0, 0, 0, 1, 167, 0, 0, NULL, 31, 0),
(183, 'Đào tạo', 0, 8, '#', 0, 0, 0, 0, 0, 1, 167, 0, 0, NULL, 31, 0),
(184, 'Hoạt động', 0, 5, '', 0, 89, 0, 0, 0, 1, 167, 0, 0, NULL, 31, 0),
(185, 'Liên hệ', 0, 9, '', 0, 0, 0, 0, 0, 1, 167, 0, 0, NULL, 31, 0),
(186, 'Giới thiệu', 0, 13, '', 0, 0, 0, 50, 0, 1, 170, 0, 0, NULL, 31, 0),
(187, 'Cán bộ, giảng viên', 0, 16, '', 0, 0, 0, 0, 0, 1, 170, 0, 0, NULL, 31, 0),
(188, 'Chương trình đại cương', 0, 7, '', 0, 0, 0, 0, 116, 1, 183, 0, 0, NULL, 31, 0),
(189, 'Chương trình Khoa học quản lý', 0, 7, '', 0, 0, 0, 0, 132, 1, 183, 0, 0, NULL, 31, 0),
(190, 'Các học phần điều kiện', 0, 5, '', 0, 90, 0, 0, 0, 1, 183, 0, 0, NULL, 31, 0),
(192, 'Hợp tác quốc tế', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0),
(193, 'Tổng quan', 0, 1, '', 0, 0, 0, 0, 0, 1, 192, 0, 0, NULL, 1, 0),
(194, 'Hoạt động quốc tế', 0, 1, '', 0, 0, 0, 0, 0, 1, 192, 0, 0, NULL, 1, 0),
(195, 'Mạng lưới hợp tác', 0, 1, '', 0, 0, 0, 0, 0, 1, 192, 0, 0, NULL, 1, 0),
(196, 'Văn bản hành chính', 0, 1, '', 0, 0, 0, 0, 0, 1, 192, 0, 0, NULL, 1, 0),
(197, 'Liên hệ', 0, 1, '', 0, 0, 0, 0, 0, 1, 192, 0, 0, NULL, 1, 0),
(198, 'Sinh viên', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0),
(199, 'Học bổng - Học phí', 0, 1, '', 0, 0, 0, 0, 0, 1, 198, 0, 0, NULL, 2, 0),
(200, 'Dịch vụ hỗ trợ', 0, 1, '', 0, 0, 0, 0, 0, 1, 198, 0, 0, NULL, 2, 0),
(201, 'Hoạt động sinh viên', 0, 1, '', 0, 0, 0, 0, 0, 1, 198, 0, 0, NULL, 2, 0),
(202, 'Hướng nghiệp', 0, 1, '', 0, 0, 0, 0, 0, 1, 198, 0, 0, NULL, 2, 0),
(203, 'Góc cựu sinh viên', 0, 1, '', 0, 0, 0, 0, 0, 1, 198, 0, 0, NULL, 2, 0),
(204, 'Nghiên cứu', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 3, 0),
(205, 'Tổng quan', 0, 1, '', 0, 0, 0, 0, 0, 1, 204, 0, 0, NULL, 3, 0),
(206, 'PTN và nhóm nghiên cứu', 0, 1, '', 0, 0, 0, 0, 0, 1, 204, 0, 0, NULL, 3, 0),
(207, 'Các khóa chuyên môn', 0, 1, '', 0, 0, 0, 0, 0, 1, 204, 0, 0, NULL, 3, 0),
(208, 'Kết quả nghiên cứu', 0, 1, '', 0, 0, 0, 0, 0, 1, 204, 0, 0, NULL, 3, 0),
(209, 'Hợp tác', 0, 1, '', 0, 0, 0, 0, 0, 1, 204, 0, 0, NULL, 3, 0),
(210, 'Liên hệ', 0, 1, '', 0, 0, 0, 0, 0, 1, 204, 0, 0, NULL, 3, 0),
(211, 'Đào tạo', 0, 1, '', 0, 0, 0, 0, 0, 1, 172, 0, 0, NULL, 32, 0),
(212, 'Nghiên cứu', 0, 1, '', 0, 0, 0, 0, 0, 1, 172, 0, 0, NULL, 32, 0),
(213, 'Tuyển sinh', 0, 1, '', 0, 0, 0, 0, 0, 1, 172, 0, 0, NULL, 32, 0),
(214, 'Liên hệ', 0, 1, '', 0, 0, 0, 0, 0, 1, 172, 0, 0, NULL, 32, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'Trang chủ', 1, '', 114),
(206, 'en', 'Home', 1, '', 114),
(279, 'vn', 'Tuyển sinh', 1, '#', 151),
(280, 'en', 'Admissions', 1, 'lich-kham', 151),
(287, 'vn', 'Giới thiệu', 0, '#', 155),
(288, 'en', 'Giới thiệu', 0, '', 155),
(309, 'vn', 'Menu Chính', 0, '', 166),
(310, 'en', 'Menu Chính', 0, '', 166),
(311, 'vn', 'Khoa Đào tạo đại cương', 0, '', 167),
(312, 'en', 'Khoa Đào tạo đại cương', 0, '', 167),
(317, 'vn', 'Tổng quan', 0, '#', 170),
(318, 'en', 'Tổng quan', 0, '', 170),
(319, 'vn', 'Tin tức', 0, '', 171),
(320, 'en', 'Tin tức', 0, '', 171),
(321, 'vn', 'Khoa năng lượng', 0, '', 172),
(322, 'en', 'Khoa năng lượng', 0, '', 172),
(323, 'vn', 'Tổng quan', 0, '', 173),
(324, 'en', 'Tổng quan', 0, '', 173),
(325, 'vn', 'Đào tạo', 0, '#', 174),
(326, 'en', 'Đào tạo', 0, '', 174),
(331, 'vn', 'Đại học', 0, '', 177),
(332, 'en', 'Đại học', 0, '', 177),
(333, 'vn', 'Thạc sĩ', 0, '', 178),
(334, 'en', 'Thạc sĩ', 0, '', 178),
(335, 'vn', 'Tiến sĩ', 0, '', 179),
(336, 'en', 'Tiến sĩ', 0, '', 179),
(341, 'vn', 'Sự kiện', 0, '', 182),
(342, 'en', 'Sự kiện', 0, '', 182),
(343, 'vn', 'Đào tạo', 0, '#', 183),
(344, 'en', 'Đào tạo', 0, '', 183),
(345, 'vn', 'Hoạt động', 0, '', 184),
(346, 'en', 'Hoạt động', 0, '', 184),
(347, 'vn', 'Liên hệ', 1, '', 185),
(348, 'en', 'Contact', 1, '', 185),
(349, 'vn', 'Giới thiệu', 0, '', 186),
(350, 'en', 'Giới thiệu', 0, '', 186),
(351, 'vn', 'Cán bộ, giảng viên', 0, '', 187),
(352, 'en', 'Cán bộ, giảng viên', 0, '', 187),
(353, 'vn', 'Chương trình đại cương', 0, '', 188),
(354, 'en', 'Chương trình đại cương', 0, '', 188),
(355, 'vn', 'Chương trình Khoa học quản lý', 0, '', 189),
(356, 'en', 'Chương trình Khoa học quản lý', 0, '', 189),
(357, 'vn', 'Các học phần điều kiện', 0, '', 190),
(358, 'en', 'Các học phần điều kiện', 0, '', 190),
(361, 'vn', 'Hợp tác quốc tế', 0, '', 192),
(362, 'en', 'Hợp tác quốc tế', 0, '', 192),
(363, 'vn', 'Tổng quan', 0, '', 193),
(364, 'en', 'Tổng quan', 0, '', 193),
(365, 'vn', 'Hoạt động quốc tế', 0, '', 194),
(366, 'en', 'Hoạt động quốc tế', 0, '', 194),
(367, 'vn', 'Mạng lưới hợp tác', 0, '', 195),
(368, 'en', 'Mạng lưới hợp tác', 0, '', 195),
(369, 'vn', 'Văn bản hành chính', 0, '', 196),
(370, 'en', 'Văn bản hành chính', 0, '', 196),
(371, 'vn', 'Liên hệ', 0, '', 197),
(372, 'en', 'Liên hệ', 0, '', 197),
(373, 'vn', 'Sinh viên', 0, '', 198),
(374, 'en', 'Sinh viên', 0, '', 198),
(375, 'vn', 'Học bổng - Học phí', 0, '', 199),
(376, 'en', 'Học bổng - Học phí', 0, '', 199),
(377, 'vn', 'Dịch vụ hỗ trợ', 0, '', 200),
(378, 'en', 'Dịch vụ hỗ trợ', 0, '', 200),
(379, 'vn', 'Hoạt động sinh viên', 0, '', 201),
(380, 'en', 'Hoạt động sinh viên', 0, '', 201),
(381, 'vn', 'Hướng nghiệp', 0, '', 202),
(382, 'en', 'Hướng nghiệp', 0, '', 202),
(383, 'vn', 'Góc cựu sinh viên', 0, '', 203),
(384, 'en', 'Góc cựu sinh viên', 0, '', 203),
(385, 'vn', 'Nghiên cứu', 0, '', 204),
(386, 'en', 'Nghiên cứu', 0, '', 204),
(387, 'vn', 'Tổng quan', 0, '', 205),
(388, 'en', 'Tổng quan', 0, '', 205),
(389, 'vn', 'PTN và nhóm nghiên cứu', 0, '', 206),
(390, 'en', 'PTN và nhóm nghiên cứu', 0, '', 206),
(391, 'vn', 'Các khóa chuyên môn', 0, '', 207),
(392, 'en', 'Các khóa chuyên môn', 0, '', 207),
(393, 'vn', 'Kết quả nghiên cứu', 0, '', 208),
(394, 'en', 'Kết quả nghiên cứu', 0, '', 208),
(395, 'vn', 'Hợp tác', 0, '', 209),
(396, 'en', 'Hợp tác', 0, '', 209),
(397, 'vn', 'Liên hệ', 0, '', 210),
(398, 'en', 'Liên hệ', 0, '', 210),
(399, 'vn', 'Đào tạo', 0, '', 211),
(400, 'en', 'Đào tạo', 0, '', 211),
(401, 'vn', 'Nghiên cứu', 0, '', 212),
(402, 'en', 'Nghiên cứu', 0, '', 212),
(403, 'vn', 'Tuyển sinh', 0, '', 213),
(404, 'en', 'Tuyển sinh', 0, '', 213),
(405, 'vn', 'Liên hệ', 0, '', 214),
(406, 'en', 'Liên hệ', 0, '', 214);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL),
(16, 'Nhân sự', 'nhan-su'),
(17, 'Khoa', 'khoa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'lien-he'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `khoa_id` int(11) NOT NULL DEFAULT 0,
  `de_tai_du_an` int(11) NOT NULL DEFAULT 0,
  `cong_bo_khoa_hoc` int(11) NOT NULL DEFAULT 0,
  `co_so_vat_chat` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `khoa_id`, `de_tai_du_an`, `cong_bo_khoa_hoc`, `co_so_vat_chat`) VALUES
(116, 'Chương trình đại cương', 'Nội dung đang cập nhật', '<p>Nội dung đang cập nhật</p>\r\n', 'hot-news.jpg', 0, 76, '', '2023-02-07 09:02:16', '2023-02-07 15:02:28', 1, '', '', '', '', '', 'Chương trình đại cương', '', 'chuong-trinh-dai-cuong-p116', '', 1, 31, 0, 0, 0),
(117, 'Đề tại / Dự án nghiên cứu', '', '', 'sa121-555x501.jpg', 0, 0, '', '2023-02-07 09:02:26', '2023-02-13 17:02:33', 1, '', '', '', '', '', 'Đề tại / Dự án nghiên cứu', '', 'de-tai-du-an-nghien-cuu-p117', '', 1, 32, 1, 0, 0),
(118, 'Đề tài/ dự án nghiên cứu', '', '<p>Nội dung đang cập nhật</p>\r\n', 'sa121-555x501.jpg', 0, 0, '', '2023-02-10 16:02:32', '2023-02-10 16:02:36', 1, '', '', '', '', '', 'Đề tài/ dự án nghiên cứu', '', 'de-tai-du-an-nghien-cuu-p118', '', 1, 31, 1, 0, 0),
(119, 'Công bố khoa học', '', '', 'sa5-555x500.jpg', 0, 0, '', '2023-02-10 16:02:30', '2023-02-10 16:02:48', 1, '', '', '', '', '', 'Công bố khoa học', '', 'cong-bo-khoa-hoc-p119', '', 1, 31, 0, 1, 0),
(120, 'Cơ sở vật chất', '', '', 'sa6-555x508.jpg', 0, 0, '', '2023-02-10 16:02:49', '2023-02-10 16:02:55', 1, '', '', '', '', '', 'Cơ sở vật chất', '', 'co-so-vat-chat-p120', '', 1, 31, 0, 0, 1),
(132, 'Chương trình khoa học quản lý', '', '', '', 0, 0, '', '2023-02-11 11:02:13', NULL, 1, '', '', '', '', '', 'Chương trình khoa học quản lý', '', 'chuong-trinh-khoa-hoc-quan-ly-p132', '', 1, 31, 0, 0, 0),
(133, 'Học bổng SEED trao đổi và thực tập nghiên cứu tại Đại học Đại học Québec à Trois-Rivières (Canada)  năm 2022', 'Thời hạn nộp hồ sơ ứng tuyển học bổng SEED để trao đổi và thực tập tại Trường Đại học Québec à Trois-Rivières (Canada):', '<p>Nội dung đang cập nhật</p>\r\n', 'residence-uqtr-555x370.jpg', 0, 91, '', '2023-02-13 10:02:14', '2023-02-13 10:02:34', 1, '', '', '', '', '', 'Học bổng SEED trao đổi và thực tập nghiên cứu tại Đại học Đại học Québec à Trois-Rivières (Canada)  năm 2022', '', 'hoc-bong-seed-trao-doi-va-thuc-tap-nghien-cuu-tai-dai-hoc-dai-hoc-quebec-a-trois-rivieres-canada-nam-2022-p133', '', 1, 1, 0, 0, 0),
(136, '“USTH là một bước đệm hoàn hảo cho sinh viên nếu muốn du học hay làm việc ở công ty nước ngoài.”', 'Là 1 trong 15 người được chọn trong 1339 ứng viên từ nhiều quốc gia trên thế giới để nhận học bổng Erasmus Mundus trong', '', '658bdccbee662e387777-555x370.jpg', 0, 96, '', '2023-02-13 14:02:08', NULL, 1, '', '', '', '', '', '“USTH là một bước đệm hoàn hảo cho sinh viên nếu muốn du học hay làm việc ở công ty nước ngoài.”', '', 'usth-la-mot-buoc-dem-hoan-hao-cho-sinh-vien-neu-muon-du-hoc-hay-lam-viec-o-cong-ty-nuoc-ngoai-p136', '', 1, 2, 0, 0, 0),
(138, 'Café Scientifique No.12', '', '', 'dsc9136-555x370.jpg', 0, 97, '', '2023-02-13 14:02:54', NULL, 1, '', '', '', '', '', 'Café Scientifique No.12', '', 'cafe-scientifique-no12-p138', '', 1, 3, 0, 0, 0),
(139, 'Nhà khoa học Việt tách hoạt chất chống loãng xương từ cây rừng', '', '', 'residence-uqtr-555x370.jpg', 0, 97, '', '2023-02-13 15:02:08', NULL, 1, '', '', '', '', '', 'Nhà khoa học Việt tách hoạt chất chống loãng xương từ cây rừng', '', 'nha-khoa-hoc-viet-tach-hoat-chat-chong-loang-xuong-tu-cay-rung-p139', '', 1, 3, 0, 0, 0),
(140, 'Café Scientifique No.11', '', '', 'dsc2791-1-555x370.jpg', 0, 97, '', '2023-02-13 15:02:48', NULL, 1, '', '', '', '', '', 'Café Scientifique No.11', '', 'cafe-scientifique-no11-p140', '', 1, 3, 0, 0, 0),
(141, 'Buổi thảo luận của TS. Jan Prikryl và ThS. Vladimir Jonas từ Viện hàn lâm Khoa học Czech tại Brno', '', '', 'dsc9136-555x370.jpg', 0, 97, '', '2023-02-13 15:02:31', NULL, 1, '', '', '', '', '', 'Buổi thảo luận của TS. Jan Prikryl và ThS. Vladimir Jonas từ Viện hàn lâm Khoa học Czech tại Brno', '', 'buoi-thao-luan-cua-ts-jan-prikryl-va-ths-vladimir-jonas-tu-vien-han-lam-khoa-hoc-czech-tai-brno-p141', '', 1, 3, 0, 0, 0),
(142, 'Lễ ký kết hợp tác với HR1 Vietnam Holdings', 'Căn cứ Quyết định số 89/QĐ-TTg ngày 18/01/2019 của Thủ tướng Chính phủ về việc ban hành Đề án nâng cao năng lực đội ngũ … ', '', 'dsc2791-1-555x370.jpg', 0, 98, '', '2023-02-13 16:02:30', '2023-02-22 23:02:29', 1, '', '', '', '', '', 'Lễ ký kết hợp tác với HR1 Vietnam Holdings', '', 'le-ky-ket-hop-tac-voi-hr1-vietnam-holdings-p142', '', 1, 0, 0, 0, 0),
(143, 'Lễ ký kết hợp tác với HR1 Vietnam Holdings', 'Căn cứ Quyết định số 89/QĐ-TTg ngày 18/01/2019 của Thủ tướng Chính phủ về việc ban hành Đề án nâng cao năng lực đội ngũ … ', '', 'dsc9136-555x370.jpg', 0, 98, '', '2023-02-13 16:02:01', '2023-02-22 23:02:19', 1, '', '', '', '', '', 'Lễ ký kết hợp tác với HR1 Vietnam Holdings', '', 'le-ky-ket-hop-tac-voi-hr1-vietnam-holdings-p143', '', 1, 0, 0, 0, 0),
(153, 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023', '', '', 'dsc2791-1-555x370.jpg', 0, 101, '', '2023-02-13 17:02:46', '2023-02-22 23:02:39', 1, '', '', '', '', '', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023', '', 'pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-p153', '', 1, 0, 0, 0, 0),
(154, 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023', '', '', 'dsc9136-555x370.jpg', 0, 101, '', '2023-02-13 17:02:57', '2023-02-22 23:02:55', 1, '', '', '', '', '', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023', '', 'pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-p154', '', 1, 0, 0, 0, 0),
(155, 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 ', '', '', 'residence-uqtr-555x370.jpg', 0, 101, '', '2023-02-13 17:02:11', '2023-02-22 23:02:19', 1, '', '', '', '', '', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 ', '', 'pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-p155', '', 1, 0, 0, 0, 0),
(156, 'Công bố khoa học', '', '', 'sa5-555x500.jpg', 0, 0, '', '2023-02-13 17:02:29', NULL, 1, '', '', '', '', '', 'Công bố khoa học', '', 'cong-bo-khoa-hoc-p156', '', 1, 32, 0, 1, 0),
(157, 'Cơ sở vật chất', '', '', 'sa6-555x508.jpg', 0, 0, '', '2023-02-13 17:02:22', NULL, 1, '', '', '', '', '', 'Cơ sở vật chất', '', 'co-so-vat-chat-p157', '', 1, 32, 0, 0, 1),
(158, 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', 'dsc2791-1-555x370.jpg', 0, 104, '', '2023-02-13 17:02:22', NULL, 1, '', '', '', '', '', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p158', '', 1, 32, 0, 0, 0),
(159, 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', 'dsc9136-555x370.jpg', 0, 104, '', '2023-02-13 17:02:20', '2023-02-13 17:02:49', 1, '', '', '', '', '', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p159', '', 1, 32, 0, 0, 0),
(160, 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', 'residence-uqtr-555x370.jpg', 0, 104, '', '2023-02-13 17:02:30', NULL, 1, '', '', '', '', '', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p160', '', 1, 32, 0, 0, 0),
(161, 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', 'dsc2791-1-555x370.jpg', 0, 104, '', '2023-02-13 17:02:24', NULL, 1, '', '', '', '', '', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p161', '', 1, 32, 0, 0, 0),
(162, 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', 'dsc2791-1-555x370.jpg', 0, 105, '', '2023-02-13 17:02:29', NULL, 1, '', '', '', '', '', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p162', '', 1, 32, 0, 0, 0),
(163, 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', 'dsc9136-555x370.jpg', 0, 105, '', '2023-02-13 17:02:32', NULL, 1, '', '', '', '', '', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p163', '', 1, 32, 0, 0, 0),
(164, 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', 'residence-uqtr-555x370.jpg', 0, 105, '', '2023-02-13 17:02:40', NULL, 1, '', '', '', '', '', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p164', '', 1, 32, 0, 0, 0),
(165, 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', 'dsc2791-1-555x370.jpg', 0, 105, '', '2023-02-13 17:02:13', NULL, 1, '', '', '', '', '', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p165', '', 1, 32, 0, 0, 0),
(166, 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', '', 'dsc2791-1-555x370.jpg', 0, 106, '', '2023-02-13 17:02:38', NULL, 1, '', '', '', '', '', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', 'pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-tai-usth-p166', '', 1, 32, 0, 0, 0),
(167, 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', '', 'dsc9136-555x370.jpg', 0, 106, '', '2023-02-14 08:02:55', NULL, 1, '', '', '', '', '', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', 'pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-tai-usth-p167', '', 1, 32, 0, 0, 0),
(174, 'USTH tổ chức thành công Tuần lễ Thực tập và Việc làm 2023', '', '', 'dsc9136-555x370.jpg', 0, 108, '', '2023-02-14 08:02:40', NULL, 1, '', '', '', '', '', 'USTH tổ chức thành công Tuần lễ Thực tập và Việc làm 2023', '', 'usth-to-chuc-thanh-cong-tuan-le-thuc-tap-va-viec-lam-2023-p174', '', 1, 1, 0, 0, 0),
(177, 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', '', 'dsc2791-1-555x370.jpg', 0, 109, '', '2023-02-14 08:02:56', NULL, 1, '', '', '', '', '', 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', 'le-trao-bang-tot-nghiep-tien-si-thac-si-va-cu-nhan-nam-2022-p177', '', 1, 1, 0, 0, 0),
(178, 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', '', 'dsc9136-555x370.jpg', 0, 109, '', '2023-02-14 08:02:07', NULL, 1, '', '', '', '', '', 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', 'le-trao-bang-tot-nghiep-tien-si-thac-si-va-cu-nhan-nam-2022-p178', '', 1, 1, 0, 0, 0),
(179, 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', '', 'residence-uqtr-555x370.jpg', 0, 109, '', '2023-02-14 08:02:18', NULL, 1, '', '', '', '', '', 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', 'le-trao-bang-tot-nghiep-tien-si-thac-si-va-cu-nhan-nam-2022-p179', '', 1, 1, 0, 0, 0),
(189, 'THÔNG BÁO: QUYẾT ĐỊNH BAN HÀNH QUY CHẾ SINH VIÊN', '', '', 'dsc9136-555x370.jpg', 0, 112, '', '2023-02-14 09:02:48', NULL, 1, '', '', '', '', '', 'THÔNG BÁO: QUYẾT ĐỊNH BAN HÀNH QUY CHẾ SINH VIÊN', '', 'thong-bao-quyet-dinh-ban-hanh-quy-che-sinh-vien-p189', '', 1, 2, 0, 0, 0),
(190, 'THÔNG BÁO: QUYẾT ĐỊNH BAN HÀNH QUY CHẾ SINH VIÊN', '', '', 'residence-uqtr-555x370.jpg', 0, 112, '', '2023-02-14 09:02:57', NULL, 1, '', '', '', '', '', 'THÔNG BÁO: QUYẾT ĐỊNH BAN HÀNH QUY CHẾ SINH VIÊN', '', 'thong-bao-quyet-dinh-ban-hanh-quy-che-sinh-vien-p190', '', 1, 2, 0, 0, 0),
(193, 'UCL tổ chức thành công Tuần lễ Thực tập và Việc làm 2023', '', '', 'residence-uqtr-555x370.jpg', 0, 113, '', '2023-02-14 09:02:33', '2023-02-22 22:02:14', 1, '', '', '', '', '', 'UCL tổ chức thành công Tuần lễ Thực tập và Việc làm 2023', '', 'ucl-to-chuc-thanh-cong-tuan-le-thuc-tap-va-viec-lam-2023-p193', '', 1, 3, 0, 0, 0),
(194, 'Tin Đại học', 'Căn cứ Quyết định số 89/QĐ-TTg ngày 18/01/2019 của Thủ tướng Chính phủ về việc ban hành Đề án nâng cao năng lực đội ngũ …', '<p>Nội dung đang cập nhật</p>\r\n', 'residence-uqtr-555x370.jpg', 0, 78, '', '2023-02-14 10:02:28', '2023-02-14 17:02:48', 1, '', '', '', '', '', 'Tin Đại học', '', 'tin-dai-hoc-p194', '', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  `newscat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `khoa_id` int(11) NOT NULL DEFAULT 0,
  `dai_hoc` int(11) NOT NULL DEFAULT 0,
  `thac_si` int(11) NOT NULL DEFAULT 0,
  `tien_si` int(11) NOT NULL DEFAULT 0,
  `tin_tuc` int(11) NOT NULL DEFAULT 0,
  `su_kien` int(11) NOT NULL DEFAULT 0,
  `gallery` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `khoa_id`, `dai_hoc`, `thac_si`, `tien_si`, `tin_tuc`, `su_kien`, `gallery`) VALUES
(76, 'Tin tức', '', '', 0, 0, '2023-02-10 16:02:35', NULL, 1, NULL, '', '', '', '', '', 'Tin tức', '', 'tin-tuc-cat76', '', 1, 31, 0, 0, 0, 1, 0, 0),
(78, 'Đại học', 'Chương trình đạt chuẩn kiểm định quốc tế HCERES', '', 0, 0, '2023-02-13 16:02:36', NULL, 1, 'educate-570x570-2.jpg', '(16 ngành đào tạo)', '', '', '', '', 'Đại học', '', 'dai-hoc-cat78', '', 1, 0, 1, 0, 0, 0, 0, 0),
(79, 'Đại học', 'Chương trình đại chuẩn kiểm định quốc tế', '', 0, 0, '2023-02-13 17:02:49', NULL, 1, 'educate-570x570-2.jpg', '', '', '', '', '', 'Đại học', '', 'dai-hoc-cat79', '', 1, 32, 1, 0, 0, 0, 0, 0),
(80, 'Thạc sĩ', 'Đồng cấp bằng với các trường đại học, tổ chức nghiên cứu uy tín của Pháp', '', 0, 0, '2023-02-13 16:02:24', NULL, 1, 'education-2-856x428-1.jpg', '(6 ngành đạo tạo)', '', '', '', '', 'Thạc sĩ', '', 'thac-si-cat80', '', 1, 0, 0, 1, 0, 0, 0, 0),
(81, 'Tiến sĩ', 'Bằng tiến sĩ có giá trị học thuật được quốc tế công nhận', '', 0, 0, '2023-02-13 16:02:13', NULL, 1, 'education-3-856x428-1.jpg', '(6 ngành đào tạo)', '', '', '', '', 'Tiến sĩ', '', 'tien-si-cat81', '', 1, 0, 0, 0, 1, 0, 0, 0),
(82, 'Cấp bằng', '', '', 0, 0, '2023-02-07 14:02:11', NULL, 1, '', '', '', '', '', '', 'Cấp bằng', '', 'cap-bang', '', 1, 0, 0, 0, 0, 0, 0, 0),
(83, 'Công tác đảm bảo chất lượng', '', '', 0, 0, '2023-02-07 14:02:24', NULL, 1, '', '', '', '', '', '', 'Công tác đảm bảo chất lượng', '', 'cong-tac-dam-bao-chat-luong', '', 1, 0, 0, 0, 0, 0, 0, 0),
(84, 'Đại học', 'Chương trình đạt chuẩn kiểm định quốc tế\r\n', '', 0, 0, '2023-02-10 15:02:14', NULL, 1, 'educate-570x570-2.jpg', '', '', '', '', '', 'Đại học', '', 'dai-hoc-cat84', '', 1, 31, 1, 0, 0, 0, 0, 0),
(85, 'Thac sĩ', 'Chương trình đạt chuẩn kiểm định quốc tế', '', 0, 0, '2023-02-10 15:02:26', NULL, 1, 'education-2-856x428-1.jpg', '', '', '', '', '', 'Thac sĩ', '', 'thac-si-cat85', '', 1, 31, 0, 1, 0, 0, 0, 0),
(86, 'Tiến sĩ', 'Chương trình đạt chuẩn kiểm định quốc tế', '', 0, 0, '2023-02-10 15:02:43', NULL, 1, 'education-3-856x428-1.jpg', '', '', '', '', '', 'Tiến sĩ', '', 'tien-si-1-cat86', '', 1, 31, 0, 0, 1, 0, 0, 0),
(87, 'Sự kiện', '', '', 0, 0, '2023-02-10 16:02:00', NULL, 1, NULL, '', '', '', '', '', 'Sự kiện', '', 'su-kien-cat87', '', 1, 31, 0, 0, 0, 0, 1, 0),
(88, 'Gallery', '', '', 0, 0, '2023-02-11 09:02:28', NULL, 1, NULL, '', '', '', '', '', 'Gallery', '', 'gallery-cat88', '', 1, 31, 0, 0, 0, 0, 0, 1),
(89, 'Hoạt động', '', '', 0, 0, '2023-02-11 11:02:08', NULL, 1, NULL, '', '', '', '', '', 'Hoạt động', '', 'hoat-dong-cat89', '', 1, 31, 0, 0, 0, 0, 0, 0),
(90, 'Các học phần điều kiện khoa học đại cương', '', '', 0, 0, '2023-02-11 11:02:37', NULL, 1, '', '', '', '', '', '', 'Các học phần điều kiện khoa học đại cương', '', 'cac-hoc-phan-dieu-kien-khoa-hoc-dai-cuong-cat90', '', 1, 31, 0, 0, 0, 0, 0, 0),
(91, 'Hoạt động quốc tế', '', '', 0, 0, '2023-02-13 10:02:51', NULL, 1, '', '', '', '', '', '', 'Hoạt động quốc tế', '', 'hoat-dong-quoc-te-cat91', '', 1, 1, 0, 0, 0, 0, 0, 0),
(92, 'Hướng nghiệp', '', '', 0, 0, '2023-02-13 13:02:52', NULL, 1, 'a3-555x740.jpg', '', '', '', '', '', 'Hướng nghiệp', '', 'huong-nghiep-cat92', '', 1, 2, 0, 0, 0, 0, 0, 0),
(93, 'Thực tập', '', '', 0, 0, '2023-02-13 13:02:12', NULL, 1, 'a2-555x740.jpg', '', '', '', '', '', 'Thực tập', '', 'thuc-tap-cat93', '', 1, 2, 0, 0, 0, 0, 0, 0),
(94, 'Cơ hội việc làm', '', '', 0, 0, '2023-02-13 13:02:37', NULL, 1, 'a1-555x740.jpg', '', '', '', '', '', 'Cơ hội việc làm', '', 'co-hoi-viec-lam-cat94', '', 1, 2, 0, 0, 0, 0, 0, 0),
(95, 'Câu lạc bộ sinh viên', '', '', 0, 0, '2023-02-13 14:02:49', NULL, 1, '', '', '', '', '', '', 'Câu lạc bộ sinh viên', '', 'cau-lac-bo-sinh-vien-cat95', '', 1, 2, 0, 0, 0, 0, 0, 0),
(96, 'Góc cựu sinh viên', '', '', 0, 0, '2023-02-13 14:02:18', NULL, 1, '', '', '', '', '', '', 'Góc cựu sinh viên', '', 'goc-cuu-sinh-vien-cat96', '', 1, 2, 0, 0, 0, 0, 0, 0),
(97, 'Tin tức mới nhất', '', '', 0, 0, '2023-02-13 14:02:27', NULL, 1, '', '', '', '', '', '', 'Tin tức mới nhất', '', 'tin-tuc-moi-nhat-cat97', '', 1, 3, 0, 0, 0, 0, 0, 0),
(98, 'Tin tức', '', '', 0, 0, '2023-02-13 16:02:53', NULL, 1, NULL, '', '', '', '', '', 'Tin tức', '', 'tin-tuc-cat98', '', 1, 0, 0, 0, 0, 1, 0, 0),
(99, 'Sự kiện', '', '', 0, 0, '2023-02-13 16:02:04', NULL, 1, '', '', '', '', '', '', 'Sự kiện', '', 'su-kien-cat99', '', 1, 0, 0, 0, 0, 0, 1, 0),
(100, 'Thông tin tuyển sinh', '', '', 0, 0, '2023-02-13 16:02:05', NULL, 1, '', '', '', '', '', '', 'Thông tin tuyển sinh', '', 'thong-tin-tuyen-sinh-cat100', '', 1, 0, 0, 0, 0, 0, 0, 0),
(101, 'Khám phá UCL', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lxbWMrznzkw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', 0, 0, '2023-02-22 22:02:41', NULL, 1, NULL, '', '', '', '', '', 'Khám phá UCL', '', 'kham-pha-ucl-cat101', '', 1, 0, 0, 0, 0, 0, 0, 1),
(102, 'Thạc sĩ', 'Chương trình đại chuẩn kiểm định quốc tế', '', 0, 0, '2023-02-13 17:02:54', NULL, 1, 'education-2-856x428-1.jpg', '', '', '', '', '', 'Thạc sĩ', '', 'thac-si-cat102', '', 1, 32, 0, 1, 0, 0, 0, 0),
(103, 'Tiến sĩ', 'Chương trình đại chuẩn kiểm định quốc tế', '', 0, 0, '2023-02-13 17:02:38', NULL, 1, 'education-3-856x428-1.jpg', '', '', '', '', '', 'Tiến sĩ', '', 'tien-si-cat103', '', 1, 32, 0, 0, 1, 0, 0, 0),
(104, 'Tin tức', '', '', 0, 0, '2023-02-13 17:02:19', NULL, 1, '', '', '', '', '', '', 'Tin tức', '', 'tin-tuc-cat104', '', 1, 32, 0, 0, 0, 1, 0, 0),
(105, 'Sự kiện', '', '', 0, 0, '2023-02-13 17:02:58', NULL, 1, '', '', '', '', '', '', 'Sự kiện', '', 'su-kien-cat105', '', 1, 32, 0, 0, 0, 0, 1, 0),
(106, 'Gallery', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', 0, 0, '2023-02-14 08:02:24', NULL, 1, NULL, '', '', '', '', '', 'Gallery', '', 'gallery-cat106', '', 1, 32, 0, 0, 0, 0, 0, 1),
(107, 'Tin tức', '', '', 0, 0, '2023-02-14 08:02:05', NULL, 1, NULL, '', '', '', '', '', 'Tin tức', '', 'tin-tuc-cat107', '', 1, 1, 0, 0, 0, 1, 0, 0),
(108, 'Sự kiện', '', '', 0, 0, '2023-02-14 08:02:17', NULL, 1, '', '', '', '', '', '', 'Sự kiện', '', 'su-kien-cat108', '', 1, 1, 0, 0, 0, 0, 1, 0),
(109, 'Gallery', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', 0, 0, '2023-02-14 08:02:01', NULL, 1, '', '', '', '', '', '', 'Gallery', '', 'gallery-cat109', '', 1, 1, 0, 0, 0, 0, 0, 1),
(110, 'Tin tức', '1', '', 0, 0, '2023-02-14 08:02:42', NULL, 1, '', '', '', '', '', '', 'Tin tức', '', 'tin-tuc-cat110', '', 1, 2, 0, 0, 0, 1, 0, 0),
(111, 'Sự kiện', '', '', 0, 0, '2023-02-14 08:02:26', NULL, 1, '', '', '', '', '', '', 'Sự kiện', '', 'su-kien-cat111', '', 1, 2, 0, 0, 0, 0, 1, 0),
(112, 'Gallery', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', 0, 0, '2023-02-14 09:02:15', NULL, 1, '', '', '', '', '', '', 'Gallery', '', 'gallery-cat112', '', 1, 2, 0, 0, 0, 0, 0, 1),
(113, 'Gallery', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', 0, 0, '2023-02-14 09:02:16', NULL, 1, '', '', '', '', '', '', 'Gallery', '', 'gallery-cat113', '', 1, 3, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(147, 76, 'vn', 'Tin tức', '', NULL, '', '', '', '', '', 0, 'tin-tuc-cat76', '', 'Tin tức', ''),
(148, 76, 'en', 'english version danh muc 1', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-danh-muc-1', '', 'danh muc 1', ''),
(151, 78, 'vn', 'Đại học', 'Chương trình đạt chuẩn kiểm định quốc tế HCERES', '1', '(16 ngành đào tạo)', '', '', '', '', 1, 'dai-hoc-cat78', '', 'Đại học', ''),
(152, 78, 'en', 'University', 'english version ', '1', '(16 training industry)', '', '', '', '', 1, 'en-danh-muc-3', '', 'University', ''),
(153, 79, 'vn', 'Đại học', 'Chương trình đại chuẩn kiểm định quốc tế', NULL, '', '', '', '', '', 0, 'dai-hoc-cat79', '', 'Đại học', ''),
(154, 79, 'en', 'english version Danh mục 4', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-danh-muc-4-cat79', '', 'Danh mục 4', ''),
(155, 80, 'vn', 'Thạc sĩ', 'Đồng cấp bằng với các trường đại học, tổ chức nghiên cứu uy tín của Pháp', '1', '(6 ngành đạo tạo)', '', '', '', '', 1, 'thac-si-cat80', '', 'Thạc sĩ', ''),
(156, 80, 'en', 'english version Thạc sĩ', 'english version ', '1', '(6 training industry)', '', '', '', '', 1, 'en-thac-si-cat80', '', 'Thạc sĩ', ''),
(157, 81, 'vn', 'Tiến sĩ', 'Bằng tiến sĩ có giá trị học thuật được quốc tế công nhận', '1', '(6 ngành đào tạo)', '', '', '', '', 1, 'tien-si-cat81', '', 'Tiến sĩ', ''),
(158, 81, 'en', 'english version Tiến sĩ', 'english version ', '1', '(6 training industry)', '', '', '', '', 1, 'en-tien-si-cat81', '', 'Tiến sĩ', ''),
(159, 82, 'vn', 'Cấp bằng', '', '', '', '', '', '', '', 0, 'cap-bang-cat82', '', 'Cấp bằng', ''),
(160, 82, 'en', 'english version Cấp bằng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cap-bang-cat82', '', 'Cấp bằng', ''),
(161, 83, 'vn', 'Công tác đảm bảo chất lượng', '', '', '', '', '', '', '', 0, 'cong-tac-dam-bao-chat-luong-cat83', '', 'Công tác đảm bảo chất lượng', ''),
(162, 83, 'en', 'english version Công tác đảm bảo chất lượng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cong-tac-dam-bao-chat-luong-cat83', '', 'Công tác đảm bảo chất lượng', ''),
(163, 84, 'vn', 'Đại học', 'Chương trình đạt chuẩn kiểm định quốc tế\r\n', NULL, '', '', '', '', '', 0, 'dai-hoc-cat84', '', 'Đại học', ''),
(164, 84, 'en', 'english version Đại học', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-dai-hoc-cat84', '', 'Đại học', ''),
(165, 85, 'vn', 'Thac sĩ', 'Chương trình đạt chuẩn kiểm định quốc tế', NULL, '', '', '', '', '', 0, 'thac-si-cat85', '', 'Thac sĩ', ''),
(166, 85, 'en', 'english version Thach sĩ', 'english version Chương trình đạt chuẩn kiểm định quốc tế', 'english version ', '', '', '', '', '', 0, 'en-thach-si-cat85', '', 'Thach sĩ', ''),
(167, 86, 'vn', 'Tiến sĩ', 'Chương trình đạt chuẩn kiểm định quốc tế', NULL, '', '', '', '', '', 0, 'tien-si-1-cat86', '', 'Tiến sĩ', ''),
(168, 86, 'en', 'english version Tiến sĩ', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tien-si-1-cat86', '', 'Tiến sĩ', ''),
(169, 87, 'vn', 'Sự kiện', '', NULL, '', '', '', '', '', 0, 'su-kien-cat87', '', 'Sự kiện', ''),
(170, 87, 'en', 'english version Sự kiện', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-su-kien-cat87', '', 'Sự kiện', ''),
(171, 88, 'vn', 'Gallery', '', NULL, '', '', '', '', '', 0, 'gallery-cat88', '', 'Gallery', ''),
(172, 88, 'en', 'english version ', 'english version ', 'english version ', '', '', '', '', '', 0, 'en--cat88', '', '', ''),
(173, 89, 'vn', 'Hoạt động', '', NULL, '', '', '', '', '', 0, 'hoat-dong-cat89', '', 'Hoạt động', ''),
(174, 89, 'en', 'english version Hoạt động', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-hoat-dong-cat89', '', 'Hoạt động', ''),
(175, 90, 'vn', 'Các học phần điều kiện khoa học đại cương', '', '', '', '', '', '', '', 0, 'cac-hoc-phan-dieu-kien-khoa-hoc-dai-cuong-cat90', '', 'Các học phần điều kiện khoa học đại cương', ''),
(176, 90, 'en', 'english version Các học phần điều kiện khoa học đại cương', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cac-hoc-phan-dieu-kien-khoa-hoc-dai-cuong-cat90', '', 'Các học phần điều kiện khoa học đại cương', ''),
(177, 91, 'vn', 'Hoạt động quốc tế', '', '1', '', '', '', '', '', 1, 'hoat-dong-quoc-te-cat91', '', 'Hoạt động quốc tế', ''),
(178, 91, 'en', 'International activities', 'english version ', '1', '', '', '', '', '', 1, 'en-hoat-dong-quoc-te-cat91', '', 'International activities', ''),
(179, 92, 'vn', 'Hướng nghiệp', '', '1', '', '', '', '', '', 1, 'huong-nghiep-cat92', '', 'Hướng nghiệp', ''),
(180, 92, 'en', 'Vocational guidance', 'english version ', '1', '', '', '', '', '', 1, 'en-huong-nghiep-cat92', '', 'Vocational guidance', ''),
(181, 93, 'vn', 'Thực tập', '', '1', '', '', '', '', '', 1, 'thuc-tap-cat93', '', 'Thực tập', ''),
(182, 93, 'en', 'Internship', 'english version ', '1', '', '', '', '', '', 1, 'en-thuc-tap-cat93', '', 'Internship', ''),
(183, 94, 'vn', 'Cơ hội việc làm', '', '1', '', '', '', '', '', 1, 'co-hoi-viec-lam-cat94', '', 'Cơ hội việc làm', ''),
(184, 94, 'en', 'Job opportunity', 'english version ', '1', '', '', '', '', '', 1, 'en-co-hoi-viec-lam-cat94', '', 'Job opportunity', ''),
(185, 95, 'vn', 'Câu lạc bộ sinh viên', '', '', '', '', '', '', '', 0, 'cau-lac-bo-sinh-vien-cat95', '', 'Câu lạc bộ sinh viên', ''),
(186, 95, 'en', 'english version Câu lạc bộ sinh viên', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cau-lac-bo-sinh-vien-cat95', '', 'Câu lạc bộ sinh viên', ''),
(187, 96, 'vn', 'Góc cựu sinh viên', '', '1', '', '', '', '', '', 1, 'goc-cuu-sinh-vien-cat96', '', 'Góc cựu sinh viên', ''),
(188, 96, 'en', 'Alumni corner', 'english version ', '1', '', '', '', '', '', 1, 'en-goc-cuu-sinh-vien-cat96', '', 'Alumni corner', ''),
(189, 97, 'vn', 'Tin tức mới nhất', '', '', '', '', '', '', '', 0, 'tin-tuc-moi-nhat-cat97', '', 'Tin tức mới nhất', ''),
(190, 97, 'en', 'english version Tin tức mới nhất', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-moi-nhat-cat97', '', 'Tin tức mới nhất', ''),
(191, 98, 'vn', 'Tin tức', '', NULL, '', '', '', '', '', 0, 'tin-tuc-cat98', '', 'Tin tức', ''),
(192, 98, 'en', 'english version Tin tức', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-cat98', '', 'Tin tức', ''),
(193, 99, 'vn', 'Sự kiện', '', '', '', '', '', '', '', 0, 'su-kien-cat99', '', 'Sự kiện', ''),
(194, 99, 'en', 'english version Sự kiện', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-su-kien-cat99', '', 'Sự kiện', ''),
(195, 100, 'vn', 'Thông tin tuyển sinh', '', '1', '', '', '', '', '', 1, 'thong-tin-tuyen-sinh-cat100', '', 'Thông tin tuyển sinh', ''),
(196, 100, 'en', 'Admission Information', 'english version ', '1', '', '', '', '', '', 1, 'en-thong-tin-tuyen-sinh-cat100', '', 'Admission Information', ''),
(197, 101, 'vn', 'Khám phá UCL', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lxbWMrznzkw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, '', '', '', '', '', 1, 'kham-pha-ucl-cat101', '', 'Khám phá UCL', ''),
(198, 101, 'en', 'Discover USTH', 'english version ', '1', '', '', '', '', '', 1, 'en-kham-pha-usth-cat101', '', 'Discover USTh', ''),
(199, 102, 'vn', 'Thạc sĩ', 'Chương trình đại chuẩn kiểm định quốc tế', '', '', '', '', '', '', 0, 'thac-si-cat102', '', 'Thạc sĩ', ''),
(200, 102, 'en', 'english version Thạc sĩ', 'english version Chương trình đại chuẩn kiểm định quốc tế', 'english version ', '', '', '', '', '', 0, 'en-thac-si-cat102', '', 'Thạc sĩ', ''),
(201, 103, 'vn', 'Tiến sĩ', 'Chương trình đại chuẩn kiểm định quốc tế', '', '', '', '', '', '', 0, 'tien-si-cat103', '', 'Tiến sĩ', ''),
(202, 103, 'en', 'english version Tiến sĩ', 'english version Chương trình đại chuẩn kiểm định quốc tế', 'english version ', '', '', '', '', '', 0, 'en-tien-si-cat103', '', 'Tiến sĩ', ''),
(203, 104, 'vn', 'Tin tức', '', '', '', '', '', '', '', 0, 'tin-tuc-cat104', '', 'Tin tức', ''),
(204, 104, 'en', 'english version Tin tức', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-cat104', '', 'Tin tức', ''),
(205, 105, 'vn', 'Sự kiện', '', '', '', '', '', '', '', 0, 'su-kien-cat105', '', 'Sự kiện', ''),
(206, 105, 'en', 'english version Sự kiện', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-su-kien-cat105', '', 'Sự kiện', ''),
(207, 106, 'vn', 'Gallery', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', NULL, '', '', '', '', '', 0, 'gallery-cat106', '', 'Gallery', ''),
(208, 106, 'en', 'english version Gallery', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-gallery-cat106', '', 'Gallery', ''),
(209, 107, 'vn', 'Tin tức', '', NULL, '', '', '', '', '', 0, 'tin-tuc-cat107', '', 'Tin tức', ''),
(210, 107, 'en', 'english version Tin tức', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-cat107', '', 'Tin tức', ''),
(211, 108, 'vn', 'Sự kiện', '', '', '', '', '', '', '', 0, 'su-kien-cat108', '', 'Sự kiện', ''),
(212, 108, 'en', 'english version Sự kiện', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-su-kien-cat108', '', 'Sự kiện', ''),
(213, 109, 'vn', 'Gallery', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', '', '', '', 0, 'gallery-cat109', '', 'Gallery', ''),
(214, 109, 'en', 'english version Gallery', 'english version <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'english version ', '', '', '', '', '', 0, 'en-gallery-cat109', '', 'Gallery', ''),
(215, 110, 'vn', 'Tin tức', '1', '', '', '', '', '', '', 0, 'tin-tuc-cat110', '', 'Tin tức', ''),
(216, 110, 'en', 'english version Tin tức', 'english version 1', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-cat110', '', 'Tin tức', ''),
(217, 111, 'vn', 'Sự kiện', '', '', '', '', '', '', '', 0, 'su-kien-cat111', '', 'Sự kiện', ''),
(218, 111, 'en', 'english version Sự kiện', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-su-kien-cat111', '', 'Sự kiện', ''),
(219, 112, 'vn', 'Gallery', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', '', '', '', 0, 'gallery-cat112', '', 'Gallery', ''),
(220, 112, 'en', 'english version Gallery', 'english version <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'english version ', '', '', '', '', '', 0, 'en-gallery-cat112', '', 'Gallery', ''),
(221, 113, 'vn', 'Gallery', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', '', '', '', 0, 'gallery-cat113', '', 'Gallery', ''),
(222, 113, 'en', 'english version Gallery', 'english version <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gBEw17Bl32Y\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'english version ', '', '', '', '', '', 0, 'en-gallery-cat113', '', 'Gallery', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(231, 116, 'vn', 'Chương trình đại cương', 'Nội dung đang cập nhật', '<p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'chuong-trinh-dai-cuong-p116', 'Chương trình đại cương', '', ''),
(232, 116, 'en', 'english version Tin tức 1', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-1', 'Tin tức 1', '', ''),
(233, 117, 'vn', 'Đề tại / Dự án nghiên cứu', '', '', '', '', '', '', '', 0, 'de-tai-du-an-nghien-cuu-p117', 'Đề tại / Dự án nghiên cứu', '', ''),
(234, 117, 'en', 'english version Tin tức 2', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-2-p117', 'Tin tức 2', '', ''),
(235, 118, 'vn', 'Đề tài/ dự án nghiên cứu', '', '<p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'de-tai-du-an-nghien-cuu-p118', 'Đề tài/ dự án nghiên cứu', '', ''),
(236, 118, 'en', 'english version Đề tài/ dự án nghiên cứu', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-de-tai-du-an-nghien-cuu-p118', 'Đề tài/ dự án nghiên cứu', '', ''),
(237, 119, 'vn', 'Công bố khoa học', '', '', '', '', '', '', '', 0, 'cong-bo-khoa-hoc-p119', 'Công bố khoa học', '', ''),
(238, 119, 'en', 'english version Công bố khoa học', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cong-bo-khoa-hoc-p119', 'Công bố khoa học', '', ''),
(239, 120, 'vn', 'Cơ sở vật chất', '', '', '', '', '', '', '', 0, 'co-so-vat-chat-p120', 'Cơ sở vật chất', '', ''),
(240, 120, 'en', 'english version Cơ sở vật chất', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-co-so-vat-chat-p120', 'Cơ sở vật chất', '', ''),
(263, 132, 'vn', 'Chương trình khoa học quản lý', '', '', '', '', '', '', '', 0, 'chuong-trinh-khoa-hoc-quan-ly-p132', 'Chương trình khoa học quản lý', '', ''),
(264, 132, 'en', 'english version Chương trình khoa học quản lý', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chuong-trinh-khoa-hoc-quan-ly-p132', 'Chương trình khoa học quản lý', '', ''),
(265, 133, 'vn', 'Học bổng SEED trao đổi và thực tập nghiên cứu tại Đại học Đại học Québec à Trois-Rivières (Canada)  năm 2022', 'Thời hạn nộp hồ sơ ứng tuyển học bổng SEED để trao đổi và thực tập tại Trường Đại học Québec à Trois-Rivières (Canada):', '<p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'hoc-bong-seed-trao-doi-va-thuc-tap-nghien-cuu-tai-dai-hoc-dai-hoc-quebec-a-trois-rivieres-canada-nam-2022-p133', 'Học bổng SEED trao đổi và thực tập nghiên cứu tại Đại học Đại học Québec à Trois-Rivières (Canada)  năm 2022', '', ''),
(266, 133, 'en', 'english version Học bổng SEED trao đổi và thực tập nghiên cứu tại Đại học Đại học Québec à Trois-Rivières (Canada)  năm 2022', 'english version Thời hạn nộp hồ sơ ứng tuyển học bổng SEED để trao đổi và thực tập tại Trường Đại học Québec à Trois-Rivières (Canada):', 'english version ', '', '', '', '', '', 0, 'en-hoc-bong-seed-trao-doi-va-thuc-tap-nghien-cuu-tai-dai-hoc-dai-hoc-quebec-a-trois-rivieres-canada-nam-2022-p133', 'Học bổng SEED trao đổi và thực tập nghiên cứu tại Đại học Đại học Québec à Trois-Rivières (Canada)  năm 2022', '', ''),
(271, 136, 'vn', '“USTH là một bước đệm hoàn hảo cho sinh viên nếu muốn du học hay làm việc ở công ty nước ngoài.”', 'Là 1 trong 15 người được chọn trong 1339 ứng viên từ nhiều quốc gia trên thế giới để nhận học bổng Erasmus Mundus trong', '', '', '', '', '', '', 0, 'usth-la-mot-buoc-dem-hoan-hao-cho-sinh-vien-neu-muon-du-hoc-hay-lam-viec-o-cong-ty-nuoc-ngoai-p136', '“USTH là một bước đệm hoàn hảo cho sinh viên nếu muốn du học hay làm việc ở công ty nước ngoài.”', '', ''),
(272, 136, 'en', 'english version “USTH là một bước đệm hoàn hảo cho sinh viên nếu muốn du học hay làm việc ở công ty nước ngoài.”', 'english version Là 1 trong 15 người được chọn trong 1339 ứng viên từ nhiều quốc gia trên thế giới để nhận học bổng Erasmus Mundus trong', 'english version ', '', '', '', '', '', 0, 'en-usth-la-mot-buoc-dem-hoan-hao-cho-sinh-vien-neu-muon-du-hoc-hay-lam-viec-o-cong-ty-nuoc-ngoai-p136', '“USTH là một bước đệm hoàn hảo cho sinh viên nếu muốn du học hay làm việc ở công ty nước ngoài.”', '', ''),
(275, 138, 'vn', 'Café Scientifique No.12', '', '', '', '', '', '', '', 0, 'cafe-scientifique-no12-p138', 'Café Scientifique No.12', '', ''),
(276, 138, 'en', 'english version Café Scientifique No.12', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cafe-scientifique-no12-p138', 'Café Scientifique No.12', '', ''),
(277, 139, 'vn', 'Nhà khoa học Việt tách hoạt chất chống loãng xương từ cây rừng', '', '', '', '', '', '', '', 0, 'nha-khoa-hoc-viet-tach-hoat-chat-chong-loang-xuong-tu-cay-rung-p139', 'Nhà khoa học Việt tách hoạt chất chống loãng xương từ cây rừng', '', ''),
(278, 139, 'en', 'english version Nhà khoa học Việt tách hoạt chất chống loãng xương từ cây rừng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-nha-khoa-hoc-viet-tach-hoat-chat-chong-loang-xuong-tu-cay-rung-p139', 'Nhà khoa học Việt tách hoạt chất chống loãng xương từ cây rừng', '', ''),
(279, 140, 'vn', 'Café Scientifique No.11', '', '', '', '', '', '', '', 0, 'cafe-scientifique-no11-p140', 'Café Scientifique No.11', '', ''),
(280, 140, 'en', 'english version Café Scientifique No.11', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cafe-scientifique-no11-p140', 'Café Scientifique No.11', '', ''),
(281, 141, 'vn', 'Buổi thảo luận của TS. Jan Prikryl và ThS. Vladimir Jonas từ Viện hàn lâm Khoa học Czech tại Brno', '', '', '', '', '', '', '', 0, 'buoi-thao-luan-cua-ts-jan-prikryl-va-ths-vladimir-jonas-tu-vien-han-lam-khoa-hoc-czech-tai-brno-p141', 'Buổi thảo luận của TS. Jan Prikryl và ThS. Vladimir Jonas từ Viện hàn lâm Khoa học Czech tại Brno', '', ''),
(282, 141, 'en', 'english version Buổi thảo luận của TS. Jan Prikryl và ThS. Vladimir Jonas từ Viện hàn lâm Khoa học Czech tại Brno', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-buoi-thao-luan-cua-ts-jan-prikryl-va-ths-vladimir-jonas-tu-vien-han-lam-khoa-hoc-czech-tai-brno-p141', 'Buổi thảo luận của TS. Jan Prikryl và ThS. Vladimir Jonas từ Viện hàn lâm Khoa học Czech tại Brno', '', ''),
(283, 142, 'vn', 'Lễ ký kết hợp tác với HR1 Vietnam Holdings', 'Căn cứ Quyết định số 89/QĐ-TTg ngày 18/01/2019 của Thủ tướng Chính phủ về việc ban hành Đề án nâng cao năng lực đội ngũ … ', '', '', '', '', '', '', 0, 'le-ky-ket-hop-tac-voi-hr1-vietnam-holdings-p142', 'Lễ ký kết hợp tác với HR1 Vietnam Holdings', '', ''),
(284, 142, 'en', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'english version Căn cứ Quyết định số 89/QĐ-TTg ngày 18/01/2019 của Thủ tướng Chính phủ về việc ban hành Đề án nâng cao năng lực đội ngũ … ', 'english version ', '', '', '', '', '', 0, 'en-le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p142', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(285, 143, 'vn', 'Lễ ký kết hợp tác với HR1 Vietnam Holdings', 'Căn cứ Quyết định số 89/QĐ-TTg ngày 18/01/2019 của Thủ tướng Chính phủ về việc ban hành Đề án nâng cao năng lực đội ngũ … ', '', '', '', '', '', '', 0, 'le-ky-ket-hop-tac-voi-hr1-vietnam-holdings-p143', 'Lễ ký kết hợp tác với HR1 Vietnam Holdings', '', ''),
(286, 143, 'en', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'english version Căn cứ Quyết định số 89/QĐ-TTg ngày 18/01/2019 của Thủ tướng Chính phủ về việc ban hành Đề án nâng cao năng lực đội ngũ … ', 'english version ', '', '', '', '', '', 0, 'en-le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p143', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(305, 153, 'vn', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023', '', '', '', '', '', '', '', 0, 'pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-p153', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023', '', ''),
(306, 153, 'en', 'english version Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-tai-usth-p153', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', ''),
(307, 154, 'vn', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023', '', '', '', '', '', '', '', 0, 'pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-p154', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023', '', ''),
(308, 154, 'en', 'english version Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-tai-usth-p154', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', ''),
(309, 155, 'vn', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 ', '', '', '', '', '', '', '', 0, 'pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-p155', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 ', '', ''),
(310, 155, 'en', 'english version Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-tai-usth-p155', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', ''),
(311, 156, 'vn', 'Công bố khoa học', '', '', '', '', '', '', '', 0, 'cong-bo-khoa-hoc-p156', 'Công bố khoa học', '', ''),
(312, 156, 'en', 'english version Công bố khoa học', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cong-bo-khoa-hoc-p156', 'Công bố khoa học', '', ''),
(313, 157, 'vn', 'Cơ sở vật chất', '', '', '', '', '', '', '', 0, 'co-so-vat-chat-p157', 'Cơ sở vật chất', '', ''),
(314, 157, 'en', 'english version Cơ sở vật chất', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-co-so-vat-chat-p157', 'Cơ sở vật chất', '', ''),
(315, 158, 'vn', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', '', '', '', '', '', 0, 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p158', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(316, 158, 'en', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', 'english version ', '', '', '', '', '', 0, 'en-le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p158', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(317, 159, 'vn', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', '', '', '', '', '', 0, 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p159', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(318, 159, 'en', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', 'english version ', '', '', '', '', '', 0, 'en-le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p159', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(319, 160, 'vn', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', '', '', '', '', '', 0, 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p160', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(320, 160, 'en', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', 'english version ', '', '', '', '', '', 0, 'en-le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p160', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(321, 161, 'vn', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', '', '', '', '', '', 0, 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p161', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(322, 161, 'en', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', 'english version ', '', '', '', '', '', 0, 'en-le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p161', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(323, 162, 'vn', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', '', '', '', '', '', 0, 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p162', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(324, 162, 'en', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', 'english version ', '', '', '', '', '', 0, 'en-le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p162', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(325, 163, 'vn', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', '', '', '', '', '', 0, 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p163', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(326, 163, 'en', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', 'english version ', '', '', '', '', '', 0, 'en-le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p163', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(327, 164, 'vn', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', '', '', '', '', '', 0, 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p164', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(328, 164, 'en', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', 'english version ', '', '', '', '', '', 0, 'en-le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p164', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(329, 165, 'vn', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', '', '', '', '', '', '', 0, 'le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p165', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(330, 165, 'en', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', 'english version Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và Trường Đại học Khoa học và Công nghệ Hà Nội (USTH) đã diễn ra vào ngày', 'english version ', '', '', '', '', '', 0, 'en-le-ky-ket-hop-tac-giua-hr1-vietnam-holdings-va-usth-p165', 'Lễ ký kết hợp tác giữa HR1 Vietnam Holdings và USTH', '', ''),
(331, 166, 'vn', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', '', '', '', '', '', '', 0, 'pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-tai-usth-p166', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', ''),
(332, 166, 'en', 'english version Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-tai-usth-p166', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', ''),
(333, 167, 'vn', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', '', '', '', '', '', '', 0, 'pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-tai-usth-p167', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', ''),
(334, 167, 'en', 'english version Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-pho-chu-tich-nuoc-vo-thi-anh-xuan-tham-du-le-khai-giang-nam-hoc-2022-2023-tai-usth-p167', 'Phó Chủ tịch  nước Võ Thị Ánh Xuân tham dự Lễ Khai giảng năm học 2022-2023 tại USTH', '', ''),
(347, 174, 'vn', 'USTH tổ chức thành công Tuần lễ Thực tập và Việc làm 2023', '', '', '', '', '', '', '', 0, 'usth-to-chuc-thanh-cong-tuan-le-thuc-tap-va-viec-lam-2023-p174', 'USTH tổ chức thành công Tuần lễ Thực tập và Việc làm 2023', '', ''),
(348, 174, 'en', 'english version USTH tổ chức thành công Tuần lễ Thực tập và Việc làm 2023', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-usth-to-chuc-thanh-cong-tuan-le-thuc-tap-va-viec-lam-2023-p174', 'USTH tổ chức thành công Tuần lễ Thực tập và Việc làm 2023', '', ''),
(353, 177, 'vn', 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', '', '', '', '', '', '', 0, 'le-trao-bang-tot-nghiep-tien-si-thac-si-va-cu-nhan-nam-2022-p177', 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', ''),
(354, 177, 'en', 'english version Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-le-trao-bang-tot-nghiep-tien-si-thac-si-va-cu-nhan-nam-2022-p177', 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', ''),
(355, 178, 'vn', 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', '', '', '', '', '', '', 0, 'le-trao-bang-tot-nghiep-tien-si-thac-si-va-cu-nhan-nam-2022-p178', 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', ''),
(356, 178, 'en', 'english version Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-le-trao-bang-tot-nghiep-tien-si-thac-si-va-cu-nhan-nam-2022-p178', 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', ''),
(357, 179, 'vn', 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', '', '', '', '', '', '', 0, 'le-trao-bang-tot-nghiep-tien-si-thac-si-va-cu-nhan-nam-2022-p179', 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', ''),
(358, 179, 'en', 'english version Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-le-trao-bang-tot-nghiep-tien-si-thac-si-va-cu-nhan-nam-2022-p179', 'Lễ trao bằng tốt nghiệp tiến sĩ, thạc sĩ và cử nhân năm 2022', '', ''),
(377, 189, 'vn', 'THÔNG BÁO: QUYẾT ĐỊNH BAN HÀNH QUY CHẾ SINH VIÊN', '', '', '', '', '', '', '', 0, 'thong-bao-quyet-dinh-ban-hanh-quy-che-sinh-vien-p189', 'THÔNG BÁO: QUYẾT ĐỊNH BAN HÀNH QUY CHẾ SINH VIÊN', '', ''),
(378, 189, 'en', 'english version THÔNG BÁO: QUYẾT ĐỊNH BAN HÀNH QUY CHẾ SINH VIÊN', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-thong-bao-quyet-dinh-ban-hanh-quy-che-sinh-vien-p189', 'THÔNG BÁO: QUYẾT ĐỊNH BAN HÀNH QUY CHẾ SINH VIÊN', '', ''),
(379, 190, 'vn', 'THÔNG BÁO: QUYẾT ĐỊNH BAN HÀNH QUY CHẾ SINH VIÊN', '', '', '', '', '', '', '', 0, 'thong-bao-quyet-dinh-ban-hanh-quy-che-sinh-vien-p190', 'THÔNG BÁO: QUYẾT ĐỊNH BAN HÀNH QUY CHẾ SINH VIÊN', '', ''),
(380, 190, 'en', 'english version THÔNG BÁO: QUYẾT ĐỊNH BAN HÀNH QUY CHẾ SINH VIÊN', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-thong-bao-quyet-dinh-ban-hanh-quy-che-sinh-vien-p190', 'THÔNG BÁO: QUYẾT ĐỊNH BAN HÀNH QUY CHẾ SINH VIÊN', '', ''),
(385, 193, 'vn', 'UCL tổ chức thành công Tuần lễ Thực tập và Việc làm 2023', '', '', '', '', '', '', '', 0, 'ucl-to-chuc-thanh-cong-tuan-le-thuc-tap-va-viec-lam-2023-p193', 'UCL tổ chức thành công Tuần lễ Thực tập và Việc làm 2023', '', ''),
(386, 193, 'en', 'english version USTH tổ chức thành công Tuần lễ Thực tập và Việc làm 2023', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-usth-to-chuc-thanh-cong-tuan-le-thuc-tap-va-viec-lam-2023-p193', 'USTH tổ chức thành công Tuần lễ Thực tập và Việc làm 2023', '', ''),
(387, 194, 'vn', 'Tin Đại học', 'Căn cứ Quyết định số 89/QĐ-TTg ngày 18/01/2019 của Thủ tướng Chính phủ về việc ban hành Đề án nâng cao năng lực đội ngũ …', '<p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', 1, 'tin-dai-hoc-p194', 'Tin Đại học', '', ''),
(388, 194, 'en', 'english version Tin Đại học', 'english version Căn cứ Quyết định số 89/QĐ-TTg ngày 18/01/2019 của Thủ tướng Chính phủ về việc ban hành Đề án nâng cao năng lực đội ngũ …', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-tin-dai-hoc-p194', 'Tin Đại học en', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_ban_tin`
--

CREATE TABLE `nhan_ban_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_su`
--

CREATE TABLE `nhan_su` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `khoa_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_tai_lieu`
--

CREATE TABLE `nhan_tai_lieu` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `noi_ve_khoa`
--

CREATE TABLE `noi_ve_khoa` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `khoa_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `noi_ve_khoa`
--

INSERT INTO `noi_ve_khoa` (`id`, `name`, `image`, `note`, `position`, `khoa_id`) VALUES
(3, 'Nguyễn Văn Hải', 'le-ngoc-tram-cuu-hoc-vien-thac-si-usth-tai-nasa-555x370.jpg', 'Từ sự giúp đỡ, hướng dẫn nhiệt tình của các thầy, bạn bè nên mình dần vơi đi áp lực trong quá trình nghiên cứu. Tới thời điểm hiện tại, mình nhận định, con gái theo ngành Khoa học Vũ trụ và Công nghệ vệ tinh sẽ không gặp quá nhiều cản trở. Bằng sự nỗ lực nghiên cứu của bản thân, mình mong ước sẽ được đóng góp vào những dự án vệ tinh trong nước, kết nối nhiều bạn đam mê khám phá Vũ trụ.', 'Cựu sinh viên khóa 10 (2018 - 2021)', 32),
(4, 'Lã Thùy Linh', 'la-thuy-linh-555x370.jpg', 'Từ sự giúp đỡ, hướng dẫn nhiệt tình của các thầy, bạn bè nên mình dần vơi đi áp lực trong quá trình nghiên cứu. Tới thời điểm hiện tại, mình nhận định, con gái theo ngành Khoa học Vũ trụ và Công nghệ vệ tinh sẽ không gặp quá nhiều cản trở. Bằng sự nỗ lực nghiên cứu của bản thân, mình mong ước sẽ được đóng góp vào những dự án vệ tinh trong nước, kết nối nhiều bạn đam mê khám phá Vũ trụ.', 'Cựu sinh viên khóa 10 (2018 - 2021)', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `obsolete_products_file`
--

CREATE TABLE `obsolete_products_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `obsolete_products_file`
--

INSERT INTO `obsolete_products_file` (`id`, `name`) VALUES
(3, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `operating_file`
--

CREATE TABLE `operating_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `operating_file`
--

INSERT INTO `operating_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `khoa_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`, `khoa_id`) VALUES
(47, 'Giơi thiệu', '', '<p>C&ocirc;ng ty TNHH Xuất nhập khẩu Trung Th&agrave;nh: Chuy&ecirc;n Xuất - Nhập khẩu c&aacute;c loại M&aacute;y, Thiết bị d&ugrave;ng trong C&ocirc;ng nghiệp. B&aacute;n bu&ocirc;n, b&aacute;n lẻ c&aacute;c sản phẩm: Sợi Thuỷ tinh, Vải Thuỷ tinh, Sợi PVA, Sợi PP, Sợi gia cường, Mực in, Bột &Ocirc; x&iacute;t sắt, Băng tải dạ, Lưới Inox, Amiang (Trung Quốc): &nbsp;D&ugrave;ng cho sản xuất B&ecirc; t&ocirc;ng, Tấm lợp, Ng&oacute;i mầu. tấm Nhựa s&aacute;ng, quấn bồn Composite.<br />\r\n<br />\r\nMọi th&ocirc;ng tin xin vui l&ograve;ng li&ecirc;n hệ:<br />\r\nC&ocirc;ng Ty TNHH Kinh Doanh XNK Trung Th&agrave;nh<br />\r\n- Hotline: 0813 379 666<br />\r\n- Email: trungthanh07.666@gmail.com,<br />\r\n- Địa chỉ: Khu CN Bắc Duy&ecirc;n Hải, TP. L&agrave;o Cai, T. L&agrave;o Cai</p>\r\n', 'top.svg', '2022-07-25 17:07:00', '2023-02-10 14:02:48', 1, '', '', '', '', '', '', 'Giơi thiệu', '', 'gioi-thieu', 1, 0),
(49, 'Giới thiêu', '', '', '', '2023-02-11 11:02:57', NULL, 1, '', '', '', '', '', '', 'Giới thiêu', '', 'gioi-thieu-1-page49', 1, 32),
(50, 'Giới thiệu', '', '', NULL, '2023-02-11 11:02:34', '2023-02-13 10:02:38', 1, '', '', '', '', '', '', 'Giới thiệu', '', 'gioi-thieu-1-page50', 1, 31),
(51, 'Thư ngỏ từ Hiệu trưởng', '', '<p>Nội dung đang cập nhật</p>\r\n', NULL, '2023-02-13 09:02:16', '2023-02-14 17:02:00', 1, '', '', '', '', '', '', 'Thư ngỏ từ Hiệu trưởng', '', 'thu-ngo-tu-hieu-truong-page51', 1, 0),
(52, 'Chương trình đào tạo', 'USTH tự hào mang đến môi trường giáo dục quốc tế với các chương trình giảng dạy bằng tiếng Anh và những\r\nngành đào tạo khoa học công nghệ dẫn đầu xu hướng nguồn nhân lực thời đại 4.0', '', '', '2023-02-16 11:02:47', NULL, 1, '', '', '', '', '', '', 'Chương trình đào tạo', '', 'chuong-trinh-dao-tao-page52', 1, 0),
(53, 'HẠN NỘP HỒ SƠ ĐỢT 1 NĂM 2023', '', '', NULL, '2023-02-16 13:02:40', '2023-02-22 22:02:11', 1, '', '', '', '', '', '', 'HẠN NỘP HỒ SƠ TUYỂN SINH ĐẠI HỌC ĐỢT 1 NĂM 2023', '', 'han-nop-ho-so-tuyen-sinh-dai-hoc-dot-1-nam-2023-page53', 1, 0),
(54, '90%', 'Giảng viên trình độ tiến sĩ', '', '', '2023-02-16 13:02:17', NULL, 1, '', '', '', '', '', '', '90%', '', '90-page54', 1, 0),
(55, '97%', 'Sinh viên có việc làm hoặc học tiếp lên', '', '', '2023-02-16 13:02:37', NULL, 1, '', '', '', '', '', '', '97%', '', '97-page55', 1, 0),
(56, '30%', 'Trường đại học và tổ chức nghiên cứu Pháp hỗ trợ', '', '', '2023-02-16 14:02:05', NULL, 1, '', '', '', '', '', '', '30%', '', '30-page56', 1, 0),
(57, '60%', 'Sinh viên thực tập nước ngoài', '', '', '2023-02-16 14:02:26', NULL, 1, '', '', '', '', '', '', '60%', '', '60-page57', 1, 0),
(58, '70', 'Hơn 70 đối tác trong nước và quốc tế', '', '', '2023-02-16 14:02:16', NULL, 1, '', '', '', '', '', '', '70', '', '70-page58', 1, 1),
(59, '20', 'Quốc gia đối tác', '', '', '2023-02-16 14:02:30', NULL, 1, '', '', '', '', '', '', '20', '', '20-page59', 1, 1),
(60, '167', 'Biên bản ghi nhớ và thỏa thuận hợp tác với các tổ chức, doanh nghiệp, viện nghiên cứu...', '', '', '2023-02-16 14:02:44', NULL, 1, '', '', '', '', '', '', '167', '', '167-page60', 1, 1),
(61, '30', 'Hơn 30 trường đại học và tổ chức nghiên cứu Pháp hỗ trợ', '', '', '2023-02-16 14:02:57', NULL, 1, '', '', '', '', '', '', '30', '', '30-page61', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(59, 47, 'vn', 'Giơi thiệu', '', '<p>C&ocirc;ng ty TNHH Xuất nhập khẩu Trung Th&agrave;nh: Chuy&ecirc;n Xuất - Nhập khẩu c&aacute;c loại M&aacute;y, Thiết bị d&ugrave;ng trong C&ocirc;ng nghiệp. B&aacute;n bu&ocirc;n, b&aacute;n lẻ c&aacute;c sản phẩm: Sợi Thuỷ tinh, Vải Thuỷ tinh, Sợi PVA, Sợi PP, Sợi gia cường, Mực in, Bột &Ocirc; x&iacute;t sắt, Băng tải dạ, Lưới Inox, Amiang (Trung Quốc): &nbsp;D&ugrave;ng cho sản xuất B&ecirc; t&ocirc;ng, Tấm lợp, Ng&oacute;i mầu. tấm Nhựa s&aacute;ng, quấn bồn Composite.<br />\r\n<br />\r\nMọi th&ocirc;ng tin xin vui l&ograve;ng li&ecirc;n hệ:<br />\r\nC&ocirc;ng Ty TNHH Kinh Doanh XNK Trung Th&agrave;nh<br />\r\n- Hotline: 0813 379 666<br />\r\n- Email: trungthanh07.666@gmail.com,<br />\r\n- Địa chỉ: Khu CN Bắc Duy&ecirc;n Hải, TP. L&agrave;o Cai, T. L&agrave;o Cai</p>\r\n', '', '', '', '', '', 0, 'gioi-thieu', 'Giơi thiệu', '', ''),
(60, 47, 'en', 'english version Giơi thiệu', 'english version ', 'english version <p><strong>VỀ C&Ocirc;NG TY TNHH C&Ocirc;NG NGHIỆP V&Agrave; DỊCH VỤ HTH</strong></p>\r\n\r\n<p>Ng&agrave;nh cơ kh&iacute; chế tạo l&agrave; ng&agrave;nh c&ocirc;ng nghiệp tạo ra c&aacute;c loại m&aacute;y m&oacute;c, thiết bị hoặc vật dụng hữu &iacute;ch phục vụ c&ocirc;ng t&aacute;c&nbsp;thiết kế trong c&aacute;c lĩnh vực sản xuất như: m&aacute;y m&oacute;c, thiết bị sản xuất, &ocirc; t&ocirc;, m&aacute;y bay, hệ thống gia nhiệt, l&agrave;m lạnh,&nbsp; đồ d&ugrave;ng gia đinh&hellip; Đ&acirc;y l&agrave; một trong những lĩnh vực c&oacute; vai tr&ograve; quan trọng trong hoạt động sản xuất thực tế, gi&uacute;p tối ưu h&oacute;a qu&aacute; tr&igrave;nh sản xuất đảm bảo t&iacute;nh hiệu quả, t&iacute;nh kinh tế nhất c&oacute; thể.&nbsp;</p>\r\n\r\n<p><strong>Giới thiệu chung</strong></p>\r\n\r\n<p>C&ocirc;ng ty TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH l&agrave; địa điểm cung cấp đa dạng c&aacute;c loại linh kiện cơ kh&iacute; chế tạo.&nbsp;B&ecirc;n cạnh đ&oacute;, ch&uacute;ng t&ocirc;i c&ograve;n c&oacute; bộ phận, kỹ thuật sẵn s&agrave;ng hỗ trợ giải ph&aacute;p chuy&ecirc;n s&acirc;u cho kh&aacute;ch h&agrave;ng về ng&agrave;nh cơ kh&iacute; chế tạo.&nbsp;Th&ocirc;ng qua qu&aacute; tr&igrave;nh kinh doanh thực chiến ch&uacute;ng t&ocirc;i c&oacute; được khối lượng kiến thức, kinh nghiệm dồi d&agrave;o sẵn s&agrave;ng s&aacute;ng tạo để đột ph&aacute; tạo ra những gi&aacute; trị mới. Tất cả c&aacute;c sản phẩm của ch&uacute;ng t&ocirc;i trước khi mang tới kh&aacute;ch h&agrave;ng phải qua những quy tr&igrave;nh kiểm tra&nbsp;nghi&ecirc;m ngặt từ kh&acirc;u đầu ti&ecirc;n - lựa chọn nh&agrave; cung cấp đến khi ho&agrave;n thiện - kiểm tra chất lượng c&ocirc;ng năng. C&ocirc;ng ty TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH - một doanh nghiệp linh hoạt v&agrave; bền bỉ với sự nỗ lực để ph&aacute;t triển kh&ocirc;ng ngừng&nbsp;với khẩu hiệu &ldquo;Trung thực - Kết nối - Giao tiếp - Tạo Gi&aacute; Trị&rdquo;. Ch&uacute;ng t&ocirc;i lu&ocirc;n trong trạng th&aacute;i li&ecirc;n tục học hỏi, trau dồi, kiến thức ngo&agrave;i đ&aacute;p ứng ch&iacute;nh x&aacute;c c&aacute;c y&ecirc;u cầu của kh&aacute;ch h&agrave;ng c&ograve;n tạo ra những mối quan hệ mang lại gi&aacute; trị bền vững cho c&aacute;c đối t&aacute;c kinh doanh.</p>\r\n\r\n<p><strong>Tầm nh&igrave;n v&agrave; sứ mệnh&nbsp;</strong><br />\r\nSứ mệnh của c&ocirc;ng ty TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH l&agrave; &ldquo;mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm về cơ kh&iacute; chế tạo v&agrave;&nbsp; hỗ trợ kh&aacute;ch h&agrave;ng r&uacute;t ngắn thời gian sản xuất, n&acirc;ng cao gi&aacute; trị sản phẩm.&rdquo; Tuy&ecirc;n bố n&agrave;y của ch&uacute;ng t&ocirc;i n&ecirc;u r&otilde; những g&igrave; kh&aacute;ch h&agrave;ng n&ecirc;n mong đợi từ những sản phẩm/ dịch vụ m&agrave; ch&uacute;ng t&ocirc;i cung cấp. Điều n&agrave;y nhằm nhấn mạnh c&ocirc;ng ty TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH chỉ cung cấp cho kh&aacute;ch h&agrave;ng những ưu đ&atilde;i tốt nhất dựa tr&ecirc;n ba yếu tố: Sự đa dạng của sản phẩm, sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng,&nbsp; gi&aacute; cả cạnh tranh m&agrave; kh&ocirc;ng ảnh hưởng đến chất lượng của c&aacute;c sản phẩm.<br />\r\n<br />\r\nTầm nh&igrave;n của c&ocirc;ng ty TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH l&agrave; &ldquo;Trở th&agrave;nh nh&agrave; cung cấp h&agrave;ng đầu về linh kiện khu&ocirc;n mẫu,&nbsp; kh&iacute; n&eacute;n thủy lực v&agrave; sản xuất uy t&iacute;n chất lượng cho c&aacute;c doanh nghiệp sản xuất ng&agrave;nh cơ kh&iacute; chế tạo.&rdquo; Đối với c&ocirc;ng ty&nbsp;TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH, ch&uacute;ng t&ocirc;i đặt kh&aacute;ch h&agrave;ng l&agrave; trung t&acirc;m. Ch&uacute;ng t&ocirc;i kh&aacute;t khao đạt được sự h&agrave;i l&ograve;ng của c&aacute;c đối t&aacute;c kh&aacute;ch h&agrave;ng ở khắp mọi nơi tại đất nước Việt Nam khi lựa chọn sản phẩm v&agrave; sử dụng dịch vụ tại c&ocirc;ng ty của ch&uacute;ng t&ocirc;i.&nbsp;<br />\r\n<br />\r\n<strong>Gi&aacute; trị cốt l&otilde;i&nbsp;</strong><br />\r\nGi&aacute; trị cốt l&otilde;i của c&ocirc;ng ty TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH bao gồm:<br />\r\n<em>Tận t&acirc;m</em>: &ldquo;Heart to Heart&rdquo; ch&uacute;ng t&ocirc;i lu&ocirc;n xem kh&aacute;ch h&agrave;ng l&agrave; anh em, gia đ&igrave;nh, v&agrave; lu&ocirc;n lấy tr&aacute;ch nhiệm ph&aacute;t triển gi&aacute; trị&nbsp; l&agrave;m tr&aacute;ch nhiệm của c&ocirc;ng ty m&igrave;nh. HTH lu&ocirc;n cố gắng l&agrave;m hết khả năng mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm tốt nhất,&nbsp; v&igrave; mục ti&ecirc;u ph&aacute;t triển chung của ng&agrave;nh sản xuất Việt Nam.&nbsp;<br />\r\n<em>S&aacute;ng tạo v&agrave; học tập:</em>&nbsp;Lu&ocirc;n nỗ lực v&agrave; học hỏi cập nhật những kiến thức mới để đưa ra c&aacute;c giải ph&aacute;p tối ưu cho kh&aacute;ch h&agrave;ng&nbsp;<br />\r\n<em>Tinh thần phục vụ:&nbsp;</em>Lu&ocirc;n trong trạng th&aacute;i sẵn s&agrave;ng hỗ trợ kh&aacute;ch h&agrave;ng, đem đến sự lựa chọn ph&ugrave; hợp với ti&ecirc;u ch&iacute; của doanh nghiệp.&nbsp;<br />\r\n<em>Đạo đức doanh nghiệp:&nbsp;</em>HTH t&ocirc;n trọng v&agrave; đề cao c&aacute;c gi&aacute; trị chuẩn mực x&atilde; hội, lu&ocirc;n c&oacute; tr&aacute;ch nhiệm với cộng đồng.&nbsp;<br />\r\n<em>Biết ơn</em>: Xem kh&aacute;ch h&agrave;ng l&agrave; trung t&acirc;m, lu&ocirc;n tr&acirc;n qu&yacute; v&agrave; biết ơn kh&aacute;ch h&agrave;ng. Ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng l&agrave; ai trong thị trường kinh doanh&nbsp;&nbsp;đầy khốc liệt n&agrave;y nếu kh&ocirc;ng c&oacute; được sự ủng hộ của qu&yacute; kh&aacute;ch h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'en-gioi-thieu', 'Giơi thiệu', '', ''),
(63, 49, 'vn', 'Giới thiêu', '', '', '', '', '', '', '', 0, 'gioi-thieu-1-page49', 'Giới thiêu', '', ''),
(64, 49, 'en', 'english version Giới thiêu', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-gioi-thieu-1-page49', 'Giới thiêu', '', ''),
(65, 50, 'vn', 'Giới thiệu', '', '', '', '', '', '', '', 0, 'gioi-thieu-1-page50', 'Giới thiệu', '', ''),
(66, 50, 'en', 'english version Giới thiệu', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-gioi-thieu-1-page50', 'Giới thiệu', '', ''),
(67, 51, 'vn', 'Thư ngỏ từ Hiệu trưởng', '', '<p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', 1, 'thu-ngo-tu-hieu-truong-page51', 'Thư ngỏ từ Hiệu trưởng', '', ''),
(68, 51, 'en', 'english version Thư ngỏ từ Hiệu trưởng', 'english version ', '<p>english version1</p>\r\n', '', '', '', '', '', 1, 'en-thu-ngo-tu-hieu-truong-page51', 'Thư ngỏ từ Hiệu trưởng en', '', ''),
(69, 52, 'vn', 'Chương trình đào tạo', 'USTH tự hào mang đến môi trường giáo dục quốc tế với các chương trình giảng dạy bằng tiếng Anh và những\r\nngành đào tạo khoa học công nghệ dẫn đầu xu hướng nguồn nhân lực thời đại 4.0', '', '', '', '', '', '', 1, 'chuong-trinh-dao-tao-page52', 'Chương trình đào tạo', '', ''),
(70, 52, 'en', 'Education program', 'USTH is proud to bring an international educational environment with English-taught programs and\r\nScience and technology training industry leads the trend of human resources in the 4.0 era', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-chuong-trinh-dao-tao-page52', 'Chương trình đào tạo', '', ''),
(71, 53, 'vn', 'HẠN NỘP HỒ SƠ ĐỢT 1 NĂM 2023', '', '', '', '', '', '', '', 1, 'han-nop-ho-so-tuyen-sinh-dai-hoc-dot-1-nam-2023-page53', 'HẠN NỘP HỒ SƠ TUYỂN SINH ĐẠI HỌC ĐỢT 1 NĂM 2023', '', ''),
(72, 53, 'en', 'UNIVERSITY APPLICATION DEADLINE FOR 1 YEAR 2023', 'english version ', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-han-nop-ho-so-tuyen-sinh-dai-hoc-dot-1-nam-2023-page53', 'HẠN NỘP HỒ SƠ TUYỂN SINH ĐẠI HỌC ĐỢT 1 NĂM 2023', '', ''),
(73, 54, 'vn', '90%', 'Giảng viên trình độ tiến sĩ', '', '', '', '', '', '', 1, '90-page54', '90%', '', ''),
(74, 54, 'en', '90%', 'of lecturers hold a doctorate', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-90-page54', '90%', '', ''),
(75, 55, 'vn', '97%', 'Sinh viên có việc làm hoặc học tiếp lên', '', '', '', '', '', '', 1, '97-page55', '97%', '', ''),
(76, 55, 'en', '97%', 'of graduates have a job or pursue higher education', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-97-page55', '97%', '', ''),
(77, 56, 'vn', '30%', 'Trường đại học và tổ chức nghiên cứu Pháp hỗ trợ', '', '', '', '', '', '', 1, '30-page56', '30%', '', ''),
(78, 56, 'en', '30%', 'French universities and research institutions support USTH', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-30-page56', '30%', '', ''),
(79, 57, 'vn', '60%', 'Sinh viên thực tập nước ngoài', '', '', '', '', '', '', 1, '60-page57', '60%', '', ''),
(80, 57, 'en', '60%', 'of students intern abroad', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-60-page57', '60%', '', ''),
(81, 58, 'vn', '70', 'Hơn 70 đối tác trong nước và quốc tế', '', '', '', '', '', '', 1, '70-page58', '70', '', ''),
(82, 58, 'en', '70', 'More than 70 domestic and international partners', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-70-page58', '70', '', ''),
(83, 59, 'vn', '20', 'Quốc gia đối tác', '', '', '', '', '', '', 1, '20-page59', '20', '', ''),
(84, 59, 'en', '20', 'Partner country', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-20-page59', '20', '', ''),
(85, 60, 'vn', '167', 'Biên bản ghi nhớ và thỏa thuận hợp tác với các tổ chức, doanh nghiệp, viện nghiên cứu...', '', '', '', '', '', '', 1, '167-page60', '167', '', ''),
(86, 60, 'en', '167', 'Memorandum of understanding and cooperation agreements with organizations, enterprises, research institutes...', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-167-page60', '167', '', ''),
(87, 61, 'vn', '30', 'Hơn 30 trường đại học và tổ chức nghiên cứu Pháp hỗ trợ', '', '', '', '', '', '', 1, '30-page61', '30', '', ''),
(88, 61, 'en', '30', 'More than 30 French universities and research institutions support', '<p>english version</p>\r\n', '', '', '', '', '', 1, 'en-30-page61', '30', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT 0,
  `product_favorite` int(11) NOT NULL DEFAULT 0,
  `product_new` int(11) DEFAULT 0,
  `product_sale` int(11) DEFAULT 0,
  `product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_ar` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_parent` int(11) NOT NULL DEFAULT 0,
  `productcat_sort_order` int(11) NOT NULL DEFAULT 0,
  `productcat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_catalogs_file`
--

CREATE TABLE `product_catalogs_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_catalogs_file`
--

INSERT INTO `product_catalogs_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT 1,
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT 1,
  `regInfor_answer2` int(11) DEFAULT 1,
  `regInfor_answer3` int(11) DEFAULT 1,
  `regInfor_answer4` int(11) DEFAULT 1,
  `regInfor_answer5` int(11) DEFAULT 1,
  `regInfor_answer6` int(11) DEFAULT 1,
  `regInfor_answer7` int(11) DEFAULT 1,
  `regInfor_answer8` int(11) DEFAULT 1,
  `regInfor_answer9` int(11) DEFAULT 1,
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(64, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', '<p><strong>Vị tr&iacute; tuyển dụng:&nbsp;</strong>Chuy&ecirc;n vi&ecirc;n ph&aacute;t triển học liệu (full time)</p>\r\n\r\n<p><strong>Số lượng:&nbsp;</strong>02</p>\r\n\r\n<p><strong>Thời gian l&agrave;m việc:&nbsp;&nbsp;</strong>Giờ h&agrave;nh ch&iacute;nh từ thứ 2 đến thứ 7</p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc:&nbsp;</strong>Trung t&acirc;m Ames - 152 Ph&oacute; Đức Ch&iacute;nh, Ba Đ&igrave;nh, H&agrave; Nội</p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu v&agrave; thiết kế c&aacute;c chương tr&igrave;nh giảng dạy Tiếng Anh cho trẻ em, tiếng Anh luyện thi chứng chỉ quốc tế IELTS/TOEFL/TOEIC</p>\r\n\r\n<p>- Thiết kế, soạn thảo v&agrave; kiểm tra nội dung gi&aacute;o &aacute;n, c&ocirc;ng cụ giảng dạy dựa tr&ecirc;n nội dung s&aacute;ch gi&aacute;o tr&igrave;nh sẵn c&oacute; (lộ tr&igrave;nh học, Slides b&agrave;i giảng, s&aacute;ch, lesson plan &hellip;)</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học, ưu ti&ecirc;n c&aacute;c chuy&ecirc;n ng&agrave;nh Tiếng Anh (Sư phạm Ngoại ngữ, Đại học H&agrave; Nội, Ngoại Thương, Ngoại Giao), c&oacute; chứng chỉ IELTS từ 7.0, TOEIC từ 800 trở l&ecirc;n hoặc c&aacute;c bằng cấp tương tự (C1 CEFR) l&agrave; một lợi thế.</p>\r\n\r\n<p>- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực đ&agrave;o tạo, thẩm định, bi&ecirc;n soạn/x&acirc;y dựng c&aacute;c bộ gi&aacute;o tr&igrave;nh, học liệu trong giảng dạy tiếng Anh.</p>\r\n\r\n<p>- C&oacute; khả năng tổng hợp, ph&acirc;n t&iacute;ch th&ocirc;ng tin tốt, s&aacute;ng tạo v&agrave; nhiều &yacute; tưởng.</p>\r\n\r\n<p>- C&oacute; khả năng tự quản l&yacute; c&ocirc;ng việc v&agrave; l&agrave;m việc nh&oacute;m tốt.</p>\r\n\r\n<p>- C&oacute; khả năng sử dụng tin học văn ph&ograve;ng v&agrave; khai th&aacute;c th&ocirc;ng tin, t&agrave;i liệu từ Internet.</p>\r\n\r\n<p><strong>III. Quyền lợi</strong></p>\r\n\r\n<p>- Lương, thưởng cạnh tranh tr&ecirc;n thị trường.</p>\r\n\r\n<p>- Đ&oacute;ng BHXH, BHYT theo quy định của ph&aacute;p luật. Chế độ nghỉ lễ Tết, được tham gia c&aacute;c hoạt động team buidling v&agrave; sự kiện lớn trong năm.</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trường năng động, trẻ trung, đầy nhiệt huyết.</p>\r\n\r\n<p>- Cơ hội thăng tiến, ph&aacute;t triển cao.</p>\r\n\r\n<p>- Được đ&agrave;o tạo v&agrave; hướng dẫn nghiệp vụ để đ&aacute;p ứng y&ecirc;u cầu của c&ocirc;ng việc.</p>\r\n\r\n<p><strong>Ứng vi&ecirc;n quan t&acirc;m, vui l&ograve;ng gửi CV v&agrave;o địa chỉ mail:&nbsp;</strong><a href=\"mailto:anhttm@ames.edu.vn\"><strong>hr@ames.edu.vn</strong></a><strong>&nbsp;HOẶC nộp trực tiếp tại 96 L&ograve; Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội.</strong></p>\r\n\r\n<p><strong>Li&ecirc;n hệ: 0934599894 (Ms. Mai Anh)</strong></p>\r\n', 'thong-tin-tuyen-dung1.jpg', '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', 'trung-tam-anh-ngu-ames-tuyen-dung-chuyen-vien-phat-trien-hoc-lieu', 'Quyết toán thuế', 1),
(65, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', '<p><strong>Vị tr&iacute; tuyển dụng: Gi&aacute;o vi&ecirc;n Tiếng Anh (full time)</strong></p>\r\n\r\n<p><strong>Số lượng:</strong>&nbsp;<strong>02</strong></p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc: 36 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</strong></p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc, tr&aacute;ch nhiệm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p>- Giảng b&agrave;i, giao b&agrave;i, chấm b&agrave;i v&agrave; chữa b&agrave;i cho học vi&ecirc;n theo m&ocirc; h&igrave;nh học linh động</p>\r\n\r\n<p>- Theo d&otilde;i, chăm s&oacute;c học vi&ecirc;n, tư vấn cho học vi&ecirc;n phương ph&aacute;p học tập hiệu quả.</p>\r\n\r\n<p>- Phối hợp với gi&aacute;o vi&ecirc;n nước ngo&agrave;i trong qu&aacute; tr&igrave;nh giảng b&agrave;i cho học vi&ecirc;n.</p>\r\n\r\n<p>- Theo d&otilde;i hồ sơ của học vi&ecirc;n, nhập th&ocirc;ng tin học vi&ecirc;n v&agrave; t&igrave;nh h&igrave;nh học tập v&agrave;o phần mềm quản l&yacute;.</p>\r\n\r\n<p>- Theo d&otilde;i, bảo quản cơ sở vật chất trong văn ph&ograve;ng bao gồm t&agrave;i liệu học, b&agrave;i l&agrave;m của học vi&ecirc;n, văn ph&ograve;ng phẩm, v&agrave; c&aacute;c thiết bị điện tử kh&aacute;c.</p>\r\n\r\n<p>- Chuẩn bị t&agrave;i liệu học, hồ sơ học vi&ecirc;n v&agrave; thực hiện c&aacute;c c&ocirc;ng việc h&agrave;nh ch&iacute;nh kh&aacute;c của ph&ograve;ng.</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu:</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh tiếng Anh/sư phạm tiếng Anh</p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm giảng dạy 01 năm hoặc đ&atilde; c&oacute; chứng chỉ IELTS/TOEFL iBT/TOEIC</p>\r\n\r\n<p>- Sử dụng th&agrave;nh thạo c&aacute;c phần mềm vi t&iacute;nh: Word, Excel&hellip;</p>\r\n\r\n<p>- C&oacute; khả năng giao tiếp, thuyết phục v&agrave; đ&agrave;m ph&aacute;n tốt.</p>\r\n\r\n<p>- H&ograve;a đồng, nhanh nhẹn, nhiệt t&igrave;nh v&agrave; trung thực.</p>\r\n\r\n<p>- L&agrave;m việc theo ca v&agrave; chịu &aacute;p lực tốt</p>\r\n\r\n<p><strong>III. Quyền lợi:</strong></p>\r\n\r\n<p>- Mức lương hấp dẫn (Lương cứng + lương kinh doanh)</p>\r\n\r\n<p>- Chế độ lương th&aacute;ng thứ 13, thưởng theo c&aacute;c ng&agrave;y lễ tết trong năm</p>\r\n\r\n<p>- Được hưởng c&aacute;c chế độ theo quy định của Luật lao động</p>\r\n\r\n<p>- Được tham gia c&aacute;c kh&oacute;a học tiếng anh tại Trung t&acirc;m miễn ph&iacute;</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trưởng năng động, chuy&ecirc;n nghiệp; c&oacute; cơ hội ph&aacute;t triển bản th&acirc;n v&agrave; thăng tiến l&ecirc;n vị tr&iacute; cấp QUẢN L&Yacute; (C&ocirc;ng ty đang mở rộng th&ecirc;m nhiều chi nh&aacute;nh ở H&agrave; Nội v&agrave; c&aacute;c tỉnh/th&agrave;nh phố trong cả nước)</p>\r\n\r\n<p><strong>IV. C&aacute;ch thức ứng tuyển:</strong></p>\r\n\r\n<p>Ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi CV n&ecirc;u r&otilde; th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; kinh nghiệm l&agrave;m việc về địa chỉ:&nbsp;<a href=\"mailto:anhttm@ames.edu.vn\">uyenptm@ames.edu.vn</a>&nbsp;v&agrave;&nbsp;<a href=\"mailto:linhtk@ames.edu.vn\">linhtk@ames.edu.vn</a></p>\r\n\r\n<p>Hoặc nộp trực tiếp tại &nbsp;<a href=\"https://goo.gl/maps/jDbfj2rWEu82\" rel=\"nofollow\" target=\"_blank\">38 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</a></p>\r\n\r\n<p>ĐT li&ecirc;n hệ: &nbsp;<a href=\"tel:02363779999\">0236 377 9999</a></p>\r\n', '-uploaded-pic-cat_chuongtrinh_cr_320x320.png', '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', 'thong-tin-tuyen-dung-ames-da-nang-thang-92017', 'Hoàn thiện sổ sách', 1),
(66, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', '<p style=\"text-align:justify\"><strong>Sau một thời gian hoạt động, Doanh nghiệp của bạn cần phải r&agrave; so&aacute;t sổ s&aacute;ch để c&oacute; thể chuẩn bị cho đợt quyết to&aacute;n thuế sắp tới? Bạn kh&ocirc;ng y&ecirc;n t&acirc;m về dữ liệu sổ s&aacute;ch do c&aacute;c kế to&aacute;n vi&ecirc;n tại c&ocirc;ng ty đang thực hiện? Sổ s&aacute;ch, chứng từ bị x&aacute;o trộn do chuyển địa điểm, chuyển giao c&ocirc;ng việc&hellip;?</strong><br />\r\n<strong>Dịch vụ&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch&nbsp;&ndash; X&aacute;c định rủi ro tiềm ẩn, sẽ gi&uacute;p bạn giải quyết mọi vấn đề đang gặp phải một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả nhất.</strong><br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch l&agrave; g&igrave;? C&oacute; cần thiết phải sử dụng dịch vụ n&agrave;y hay kh&ocirc;ng</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;l&agrave; một trong những loại h&igrave;nh được nhiều doanh nghiệp vừa v&agrave; nhỏ t&igrave;m đến. Đa phần c&ocirc;ng việc kinh doanh bận rộn hay việc thiếu kiến thức chuy&ecirc;n m&ocirc;n trong lĩnh vực n&agrave;y c&oacute; thể khiến cho c&aacute;c doanh nghiệp phải trả gi&aacute; v&igrave; những sai phạm kh&ocirc;ng đ&aacute;ng c&oacute; xuất ph&aacute;t từ vấn đề sổ s&aacute;ch. Ch&iacute;nh v&igrave; thế nếu bạn đang gặp phải những vấn đề như:<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng an t&acirc;m với sổ s&aacute;ch, số liệu kế to&aacute;n đang thực hiện.<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng x&aacute;c định được c&aacute;c rủi ro tiềm ẩn trong sổ s&aacute;ch v&agrave; c&aacute;ch khắc phục.<br />\r\n&nbsp; &nbsp; ➔ Chứng từ bị lưu trữ lộn xộn, thi&ecirc;́u khoa học, số liệu kế to&aacute;n bất ổn.<br />\r\n&nbsp; &nbsp; ➔ Thời hạn quyết to&aacute;n gần kề v&agrave; muốn r&agrave; so&aacute;t lại sổ s&aacute;ch để ph&aacute;t hiện c&aacute;c rủi ro, sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ➔ Bộ phận kế to&aacute;n doanh nghiệp kh&ocirc;ng đủ tự tin hay kh&ocirc;ng nắm bắt r&otilde; c&aacute;c luật định mới.<br />\r\nĐ&acirc;y l&agrave; l&uacute;c m&agrave; bạn cần đến&nbsp;<strong>dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;gi&uacute;p giải quyết mọi vấn đề gặp phải một c&aacute;ch khoa học với chi ph&iacute; tiết kiệm nhất.<br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn Nguy&ecirc;n Anh</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">L&agrave; một trong những đơn vị uy t&iacute;n, dịch vụ&nbsp;<strong>R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn</strong>&nbsp;Nguy&ecirc;n Anh hỗ trợ cho các doanh nghiệp một c&aacute;ch hiệu quả v&agrave; chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn:<br />\r\n&nbsp; &nbsp; ★ Kiểm tra tổng qu&aacute;t v&agrave; chi tiết c&aacute;c dữ liệu, t&igrave;nh trạng số liệu, chứng từ của doanh nghiệp.<br />\r\n&nbsp; &nbsp; ★ Từ đ&oacute; x&aacute;c định ngay những rủi ro, đưa ra hướng khắc phục c&aacute;c sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ★ Định lượng mức phạt quyết to&aacute;n từ sai phạm về sổ s&aacute;ch.<br />\r\n&nbsp; &nbsp; ★ Tổng kết v&agrave; tư vấn cho doanh nghiệp nhanh ch&oacute;ng v&agrave; hiệu quả.<br />\r\n<br />\r\nNgay l&uacute;c n&agrave;y nếu doanh nghiệp của bạn đang cần đến dịch vụ<strong>&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;- X&aacute;c định rủi ro tiềm ẩn h&atilde;y li&ecirc;n hệ ngay qua số Hotline của ch&uacute;ng t&ocirc;i để được hỗ trợ v&agrave; b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c nhất. Chi ph&iacute; chỉ từ 700.000 đồng/lần cho dịch vụ trọn g&oacute;i v&agrave; hiệu quả. Nguy&ecirc;n Anh &ndash; đối t&aacute;c của bạn, th&agrave;nh c&ocirc;ng của bạn!!!</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>HOTLINE:&nbsp;<span style=\"color:#e74c3c\">0986.1368.77 - 0988.1368.79</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e74c3c\">C&Ocirc;NG TY TNHH QUẢN TRỊ RỦI RO THUẾ NGUY&Ecirc;N ANH</span></p>\r\n\r\n<p style=\"text-align:center\"><strong>Địa chỉ:</strong>&nbsp;Lầu 9, số 68 Nguyễn Huệ, P. Bến Ngh&eacute;, Q.1, TPHCM</p>\r\n\r\n<p style=\"text-align:center\"><strong>Email:</strong>&nbsp;support@nguyenanhtax.vn</p>\r\n', NULL, '0', 3, '', '2017-12-21', '2017-12-28', 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', 'ra-soat-so-sach', 'Rà soát sổ sách', 1),
(67, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', '<p>Do nhu cầu ph&aacute;t triển, Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; full time:</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>- Trưởng ph&ograve;ng tư vấn tuyển sinh</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Marketing</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n h&agrave;nh ch&iacute;nh kĩ thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin&nbsp;ứng tuyển trực tiếp theo link:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>2. Gửi CV c&aacute; nh&acirc;n về mail: hr@ames.edu.vn (Lưu&nbsp;&yacute;:&nbsp;Ứng vi&ecirc;n ghi r&otilde; vị tr&iacute; v&agrave;&nbsp;địa&nbsp;điểm&nbsp;ứng tuyển)</p>\r\n\r\n<p>3. Nộp trực tiếp tại Ph&ograve;ng Nh&acirc;n sự - Ames 96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-22018', 'Kê khai thuế online', 1),
(68, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Anh ngữ Ames tuyển dụng nhiều vị trí Full time tại chi nhánh Hà Nội và các tỉnh trong cả nước', '<p>Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; Full time tại chi nh&aacute;nh H&agrave; Nội v&agrave; c&aacute;c tỉnh trong cả nước:</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n Tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n&nbsp;ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Nh&acirc;n sự</p>\r\n\r\n<p>Đặc biệt Ames&nbsp;mở rộng tuyển dụng c&aacute;c vị tr&iacute; quản l&yacute;.&nbsp;Đ&acirc;y l&agrave; cơ hội tốt d&agrave;nh cho c&aacute;c bạn&nbsp;ứng vi&ecirc;n mong muốn thử sức m&igrave;nh ở vị tr&iacute; mới:</p>\r\n\r\n<p>- Gi&aacute;m&nbsp;đốc trung t&acirc;m c&aacute;c tỉnh trong cả nước</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin trực tiếp qua&nbsp;đường link:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>2. Gửi mail về&nbsp;địa chỉ: hr@ames.edu.vn</p>\r\n\r\n<p>3. Gửi hồ sơ trực tiếp về&nbsp;địa chỉ:</p>\r\n\r\n<p>Ph&ograve;ng Nh&acirc;n sự&nbsp;</p>\r\n\r\n<p>Trung t&acirc;m Anh ngữ Ames</p>\r\n\r\n<p>96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>C&aacute;c bạn&nbsp;ứng vi&ecirc;n vui l&ograve;ng ghi r&otilde; th&ocirc;ng tin&nbsp;ứng tuyển: Vị tr&iacute;&nbsp;ứng tuyển-Địa&nbsp;điểm&nbsp;ứng tuyển-Họ v&agrave; t&ecirc;n</p>\r\n\r\n<p>Ames ch&agrave;o&nbsp;đ&oacute;n tất cả c&aacute;c bạn&nbsp;ứng vi&ecirc;n c&oacute; niềm&nbsp;đam m&ecirc; v&agrave; sẵn s&agrave;ng chấp nhận thử th&aacute;ch!!!</p>\r\n', '-uploaded_Teacher-female_cr_320x320.png', '0', 5, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Với dịch vụ kế toán thuế trọn gói – Theo dõi kế hoạch thuế Nguyên Anh, điều bạn cần chỉ là kinh doanh, tất cả vấn đề thuế hãy để chúng tôi hỗ trợ bạn.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-32018', 'Kế toán thuế trọn gói', 1),
(69, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', 'giao-vien-day-van.jpg', '0', 3, '', '2018-04-26', '2018-04-26', 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE ', 1),
(70, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', '', '0', 3, '', '2018-04-26', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Dịch Vụ', '', '', 0, 0, '2017-12-21', NULL, 1, 's1.jpg', NULL, NULL, NULL, NULL, NULL, 'Dịch Vụ', '', 'dich-vu', '', 1),
(4, 'Smart Reading Skills', '', '', 0, 0, '2018-03-27', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', 1),
(5, 'Tuyển dụng', '', '', 0, 0, '2018-03-27', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, 'Dịch Vụ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch Vụ', '', 'dich-vu', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3),
(7, 'Smart Reading Skills', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', NULL, 'vn', 4),
(8, 'Smart Reading Skills', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', NULL, 'en', 4),
(9, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'vn', 5),
(10, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'en', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(83, 'vn', 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', '<p><strong>Vị tr&iacute; tuyển dụng:&nbsp;</strong>Chuy&ecirc;n vi&ecirc;n ph&aacute;t triển học liệu (full time)</p>\r\n\r\n<p><strong>Số lượng:&nbsp;</strong>02</p>\r\n\r\n<p><strong>Thời gian l&agrave;m việc:&nbsp;&nbsp;</strong>Giờ h&agrave;nh ch&iacute;nh từ thứ 2 đến thứ 7</p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc:&nbsp;</strong>Trung t&acirc;m Ames - 152 Ph&oacute; Đức Ch&iacute;nh, Ba Đ&igrave;nh, H&agrave; Nội</p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu v&agrave; thiết kế c&aacute;c chương tr&igrave;nh giảng dạy Tiếng Anh cho trẻ em, tiếng Anh luyện thi chứng chỉ quốc tế IELTS/TOEFL/TOEIC</p>\r\n\r\n<p>- Thiết kế, soạn thảo v&agrave; kiểm tra nội dung gi&aacute;o &aacute;n, c&ocirc;ng cụ giảng dạy dựa tr&ecirc;n nội dung s&aacute;ch gi&aacute;o tr&igrave;nh sẵn c&oacute; (lộ tr&igrave;nh học, Slides b&agrave;i giảng, s&aacute;ch, lesson plan &hellip;)</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học, ưu ti&ecirc;n c&aacute;c chuy&ecirc;n ng&agrave;nh Tiếng Anh (Sư phạm Ngoại ngữ, Đại học H&agrave; Nội, Ngoại Thương, Ngoại Giao), c&oacute; chứng chỉ IELTS từ 7.0, TOEIC từ 800 trở l&ecirc;n hoặc c&aacute;c bằng cấp tương tự (C1 CEFR) l&agrave; một lợi thế.</p>\r\n\r\n<p>- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực đ&agrave;o tạo, thẩm định, bi&ecirc;n soạn/x&acirc;y dựng c&aacute;c bộ gi&aacute;o tr&igrave;nh, học liệu trong giảng dạy tiếng Anh.</p>\r\n\r\n<p>- C&oacute; khả năng tổng hợp, ph&acirc;n t&iacute;ch th&ocirc;ng tin tốt, s&aacute;ng tạo v&agrave; nhiều &yacute; tưởng.</p>\r\n\r\n<p>- C&oacute; khả năng tự quản l&yacute; c&ocirc;ng việc v&agrave; l&agrave;m việc nh&oacute;m tốt.</p>\r\n\r\n<p>- C&oacute; khả năng sử dụng tin học văn ph&ograve;ng v&agrave; khai th&aacute;c th&ocirc;ng tin, t&agrave;i liệu từ Internet.</p>\r\n\r\n<p><strong>III. Quyền lợi</strong></p>\r\n\r\n<p>- Lương, thưởng cạnh tranh tr&ecirc;n thị trường.</p>\r\n\r\n<p>- Đ&oacute;ng BHXH, BHYT theo quy định của ph&aacute;p luật. Chế độ nghỉ lễ Tết, được tham gia c&aacute;c hoạt động team buidling v&agrave; sự kiện lớn trong năm.</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trường năng động, trẻ trung, đầy nhiệt huyết.</p>\r\n\r\n<p>- Cơ hội thăng tiến, ph&aacute;t triển cao.</p>\r\n\r\n<p>- Được đ&agrave;o tạo v&agrave; hướng dẫn nghiệp vụ để đ&aacute;p ứng y&ecirc;u cầu của c&ocirc;ng việc.</p>\r\n\r\n<p><strong>Ứng vi&ecirc;n quan t&acirc;m, vui l&ograve;ng gửi CV v&agrave;o địa chỉ mail:&nbsp;</strong><a href=\"mailto:anhttm@ames.edu.vn\"><strong>hr@ames.edu.vn</strong></a><strong>&nbsp;HOẶC nộp trực tiếp tại 96 L&ograve; Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội.</strong></p>\r\n\r\n<p><strong>Li&ecirc;n hệ: 0934599894 (Ms. Mai Anh)</strong></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', 'trung-tam-anh-ngu-ames-tuyen-dung-chuyen-vien-phat-trien-hoc-lieu', 'Quyết toán thuế', NULL, 64),
(84, 'en', 'Quyết toán thuế', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Quyết toán thuế', '', 'quyet-toan-thue', '', NULL, 64),
(85, 'vn', 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', '<p><strong>Vị tr&iacute; tuyển dụng: Gi&aacute;o vi&ecirc;n Tiếng Anh (full time)</strong></p>\r\n\r\n<p><strong>Số lượng:</strong>&nbsp;<strong>02</strong></p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc: 36 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</strong></p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc, tr&aacute;ch nhiệm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p>- Giảng b&agrave;i, giao b&agrave;i, chấm b&agrave;i v&agrave; chữa b&agrave;i cho học vi&ecirc;n theo m&ocirc; h&igrave;nh học linh động</p>\r\n\r\n<p>- Theo d&otilde;i, chăm s&oacute;c học vi&ecirc;n, tư vấn cho học vi&ecirc;n phương ph&aacute;p học tập hiệu quả.</p>\r\n\r\n<p>- Phối hợp với gi&aacute;o vi&ecirc;n nước ngo&agrave;i trong qu&aacute; tr&igrave;nh giảng b&agrave;i cho học vi&ecirc;n.</p>\r\n\r\n<p>- Theo d&otilde;i hồ sơ của học vi&ecirc;n, nhập th&ocirc;ng tin học vi&ecirc;n v&agrave; t&igrave;nh h&igrave;nh học tập v&agrave;o phần mềm quản l&yacute;.</p>\r\n\r\n<p>- Theo d&otilde;i, bảo quản cơ sở vật chất trong văn ph&ograve;ng bao gồm t&agrave;i liệu học, b&agrave;i l&agrave;m của học vi&ecirc;n, văn ph&ograve;ng phẩm, v&agrave; c&aacute;c thiết bị điện tử kh&aacute;c.</p>\r\n\r\n<p>- Chuẩn bị t&agrave;i liệu học, hồ sơ học vi&ecirc;n v&agrave; thực hiện c&aacute;c c&ocirc;ng việc h&agrave;nh ch&iacute;nh kh&aacute;c của ph&ograve;ng.</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu:</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh tiếng Anh/sư phạm tiếng Anh</p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm giảng dạy 01 năm hoặc đ&atilde; c&oacute; chứng chỉ IELTS/TOEFL iBT/TOEIC</p>\r\n\r\n<p>- Sử dụng th&agrave;nh thạo c&aacute;c phần mềm vi t&iacute;nh: Word, Excel&hellip;</p>\r\n\r\n<p>- C&oacute; khả năng giao tiếp, thuyết phục v&agrave; đ&agrave;m ph&aacute;n tốt.</p>\r\n\r\n<p>- H&ograve;a đồng, nhanh nhẹn, nhiệt t&igrave;nh v&agrave; trung thực.</p>\r\n\r\n<p>- L&agrave;m việc theo ca v&agrave; chịu &aacute;p lực tốt</p>\r\n\r\n<p><strong>III. Quyền lợi:</strong></p>\r\n\r\n<p>- Mức lương hấp dẫn (Lương cứng + lương kinh doanh)</p>\r\n\r\n<p>- Chế độ lương th&aacute;ng thứ 13, thưởng theo c&aacute;c ng&agrave;y lễ tết trong năm</p>\r\n\r\n<p>- Được hưởng c&aacute;c chế độ theo quy định của Luật lao động</p>\r\n\r\n<p>- Được tham gia c&aacute;c kh&oacute;a học tiếng anh tại Trung t&acirc;m miễn ph&iacute;</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trưởng năng động, chuy&ecirc;n nghiệp; c&oacute; cơ hội ph&aacute;t triển bản th&acirc;n v&agrave; thăng tiến l&ecirc;n vị tr&iacute; cấp QUẢN L&Yacute; (C&ocirc;ng ty đang mở rộng th&ecirc;m nhiều chi nh&aacute;nh ở H&agrave; Nội v&agrave; c&aacute;c tỉnh/th&agrave;nh phố trong cả nước)</p>\r\n\r\n<p><strong>IV. C&aacute;ch thức ứng tuyển:</strong></p>\r\n\r\n<p>Ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi CV n&ecirc;u r&otilde; th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; kinh nghiệm l&agrave;m việc về địa chỉ:&nbsp;<a href=\"mailto:anhttm@ames.edu.vn\">uyenptm@ames.edu.vn</a>&nbsp;v&agrave;&nbsp;<a href=\"mailto:linhtk@ames.edu.vn\">linhtk@ames.edu.vn</a></p>\r\n\r\n<p>Hoặc nộp trực tiếp tại &nbsp;<a href=\"https://goo.gl/maps/jDbfj2rWEu82\" rel=\"nofollow\" target=\"_blank\">38 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</a></p>\r\n\r\n<p>ĐT li&ecirc;n hệ: &nbsp;<a href=\"tel:02363779999\">0236 377 9999</a></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', 'thong-tin-tuyen-dung-ames-da-nang-thang-92017', 'Hoàn thiện sổ sách', NULL, 65),
(86, 'en', 'Hoàn thiện sổ sách', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Hoàn thiện sổ sách', '', 'hoan-thien-so-sach', '', NULL, 65),
(87, 'vn', 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', '<p style=\"text-align:justify\"><strong>Sau một thời gian hoạt động, Doanh nghiệp của bạn cần phải r&agrave; so&aacute;t sổ s&aacute;ch để c&oacute; thể chuẩn bị cho đợt quyết to&aacute;n thuế sắp tới? Bạn kh&ocirc;ng y&ecirc;n t&acirc;m về dữ liệu sổ s&aacute;ch do c&aacute;c kế to&aacute;n vi&ecirc;n tại c&ocirc;ng ty đang thực hiện? Sổ s&aacute;ch, chứng từ bị x&aacute;o trộn do chuyển địa điểm, chuyển giao c&ocirc;ng việc&hellip;?</strong><br />\r\n<strong>Dịch vụ&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch&nbsp;&ndash; X&aacute;c định rủi ro tiềm ẩn, sẽ gi&uacute;p bạn giải quyết mọi vấn đề đang gặp phải một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả nhất.</strong><br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch l&agrave; g&igrave;? C&oacute; cần thiết phải sử dụng dịch vụ n&agrave;y hay kh&ocirc;ng</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;l&agrave; một trong những loại h&igrave;nh được nhiều doanh nghiệp vừa v&agrave; nhỏ t&igrave;m đến. Đa phần c&ocirc;ng việc kinh doanh bận rộn hay việc thiếu kiến thức chuy&ecirc;n m&ocirc;n trong lĩnh vực n&agrave;y c&oacute; thể khiến cho c&aacute;c doanh nghiệp phải trả gi&aacute; v&igrave; những sai phạm kh&ocirc;ng đ&aacute;ng c&oacute; xuất ph&aacute;t từ vấn đề sổ s&aacute;ch. Ch&iacute;nh v&igrave; thế nếu bạn đang gặp phải những vấn đề như:<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng an t&acirc;m với sổ s&aacute;ch, số liệu kế to&aacute;n đang thực hiện.<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng x&aacute;c định được c&aacute;c rủi ro tiềm ẩn trong sổ s&aacute;ch v&agrave; c&aacute;ch khắc phục.<br />\r\n&nbsp; &nbsp; ➔ Chứng từ bị lưu trữ lộn xộn, thi&ecirc;́u khoa học, số liệu kế to&aacute;n bất ổn.<br />\r\n&nbsp; &nbsp; ➔ Thời hạn quyết to&aacute;n gần kề v&agrave; muốn r&agrave; so&aacute;t lại sổ s&aacute;ch để ph&aacute;t hiện c&aacute;c rủi ro, sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ➔ Bộ phận kế to&aacute;n doanh nghiệp kh&ocirc;ng đủ tự tin hay kh&ocirc;ng nắm bắt r&otilde; c&aacute;c luật định mới.<br />\r\nĐ&acirc;y l&agrave; l&uacute;c m&agrave; bạn cần đến&nbsp;<strong>dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;gi&uacute;p giải quyết mọi vấn đề gặp phải một c&aacute;ch khoa học với chi ph&iacute; tiết kiệm nhất.<br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn Nguy&ecirc;n Anh</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">L&agrave; một trong những đơn vị uy t&iacute;n, dịch vụ&nbsp;<strong>R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn</strong>&nbsp;Nguy&ecirc;n Anh hỗ trợ cho các doanh nghiệp một c&aacute;ch hiệu quả v&agrave; chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn:<br />\r\n&nbsp; &nbsp; ★ Kiểm tra tổng qu&aacute;t v&agrave; chi tiết c&aacute;c dữ liệu, t&igrave;nh trạng số liệu, chứng từ của doanh nghiệp.<br />\r\n&nbsp; &nbsp; ★ Từ đ&oacute; x&aacute;c định ngay những rủi ro, đưa ra hướng khắc phục c&aacute;c sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ★ Định lượng mức phạt quyết to&aacute;n từ sai phạm về sổ s&aacute;ch.<br />\r\n&nbsp; &nbsp; ★ Tổng kết v&agrave; tư vấn cho doanh nghiệp nhanh ch&oacute;ng v&agrave; hiệu quả.<br />\r\n<br />\r\nNgay l&uacute;c n&agrave;y nếu doanh nghiệp của bạn đang cần đến dịch vụ<strong>&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;- X&aacute;c định rủi ro tiềm ẩn h&atilde;y li&ecirc;n hệ ngay qua số Hotline của ch&uacute;ng t&ocirc;i để được hỗ trợ v&agrave; b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c nhất. Chi ph&iacute; chỉ từ 700.000 đồng/lần cho dịch vụ trọn g&oacute;i v&agrave; hiệu quả. Nguy&ecirc;n Anh &ndash; đối t&aacute;c của bạn, th&agrave;nh c&ocirc;ng của bạn!!!</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>HOTLINE:&nbsp;<span style=\"color:#e74c3c\">0986.1368.77 - 0988.1368.79</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e74c3c\">C&Ocirc;NG TY TNHH QUẢN TRỊ RỦI RO THUẾ NGUY&Ecirc;N ANH</span></p>\r\n\r\n<p style=\"text-align:center\"><strong>Địa chỉ:</strong>&nbsp;Lầu 9, số 68 Nguyễn Huệ, P. Bến Ngh&eacute;, Q.1, TPHCM</p>\r\n\r\n<p style=\"text-align:center\"><strong>Email:</strong>&nbsp;support@nguyenanhtax.vn</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', 'ra-soat-so-sach', 'Rà soát sổ sách', NULL, 66),
(88, 'en', 'Rà soát sổ sách', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', '', 'ra-soat-so-sach', '', NULL, 66),
(89, 'vn', 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', '<p>Do nhu cầu ph&aacute;t triển, Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; full time:</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>- Trưởng ph&ograve;ng tư vấn tuyển sinh</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Marketing</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n h&agrave;nh ch&iacute;nh kĩ thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin&nbsp;ứng tuyển trực tiếp theo link:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>2. Gửi CV c&aacute; nh&acirc;n về mail: hr@ames.edu.vn (Lưu&nbsp;&yacute;:&nbsp;Ứng vi&ecirc;n ghi r&otilde; vị tr&iacute; v&agrave;&nbsp;địa&nbsp;điểm&nbsp;ứng tuyển)</p>\r\n\r\n<p>3. Nộp trực tiếp tại Ph&ograve;ng Nh&acirc;n sự - Ames 96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-22018', 'Kê khai thuế online', NULL, 67),
(90, 'en', 'Kê khai thuế online', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kê khai thuế online', '', 'ke-khai-thue-online', '', NULL, 67),
(91, 'vn', 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Anh ngữ Ames tuyển dụng nhiều vị trí Full time tại chi nhánh Hà Nội và các tỉnh trong cả nước', '<p>Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; Full time tại chi nh&aacute;nh H&agrave; Nội v&agrave; c&aacute;c tỉnh trong cả nước:</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n Tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n&nbsp;ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Nh&acirc;n sự</p>\r\n\r\n<p>Đặc biệt Ames&nbsp;mở rộng tuyển dụng c&aacute;c vị tr&iacute; quản l&yacute;.&nbsp;Đ&acirc;y l&agrave; cơ hội tốt d&agrave;nh cho c&aacute;c bạn&nbsp;ứng vi&ecirc;n mong muốn thử sức m&igrave;nh ở vị tr&iacute; mới:</p>\r\n\r\n<p>- Gi&aacute;m&nbsp;đốc trung t&acirc;m c&aacute;c tỉnh trong cả nước</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin trực tiếp qua&nbsp;đường link:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>2. Gửi mail về&nbsp;địa chỉ: hr@ames.edu.vn</p>\r\n\r\n<p>3. Gửi hồ sơ trực tiếp về&nbsp;địa chỉ:</p>\r\n\r\n<p>Ph&ograve;ng Nh&acirc;n sự&nbsp;</p>\r\n\r\n<p>Trung t&acirc;m Anh ngữ Ames</p>\r\n\r\n<p>96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>C&aacute;c bạn&nbsp;ứng vi&ecirc;n vui l&ograve;ng ghi r&otilde; th&ocirc;ng tin&nbsp;ứng tuyển: Vị tr&iacute;&nbsp;ứng tuyển-Địa&nbsp;điểm&nbsp;ứng tuyển-Họ v&agrave; t&ecirc;n</p>\r\n\r\n<p>Ames ch&agrave;o&nbsp;đ&oacute;n tất cả c&aacute;c bạn&nbsp;ứng vi&ecirc;n c&oacute; niềm&nbsp;đam m&ecirc; v&agrave; sẵn s&agrave;ng chấp nhận thử th&aacute;ch!!!</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Với dịch vụ kế toán thuế trọn gói – Theo dõi kế hoạch thuế Nguyên Anh, điều bạn cần chỉ là kinh doanh, tất cả vấn đề thuế hãy để chúng tôi hỗ trợ bạn.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-32018', 'Kế toán thuế trọn gói', NULL, 68),
(92, 'en', 'Kế toán thuế trọn gói', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kế toán thuế trọn gói', '', 'ke-toan-thue-tron-goi', '', NULL, 68),
(93, 'vn', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE ', NULL, 69),
(94, 'en', 'tuyển giáoo viên dạy văn', 'tuyển giáoo viên dạy văn', '<p>tuyển gi&aacute;oo vi&ecirc;n dạy văn</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'tuyển giáoo viên dạy văn', 'tuyển giáoo viên dạy văn', 'tuyen-giaoo-vien-day-van', 'tuyển giáoo viên dạy văn', NULL, 69),
(95, 'vn', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', NULL, 70),
(96, 'en', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', NULL, 70);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `khoa_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `image`, `khoa_id`) VALUES
(3, 'slider-1920x702-2.jpg', 32),
(4, 'khoa-htqt-moi-no-text-1920x702-1.jpg', 1),
(5, 'khoa-ctsv-2-notext-1920x702-2.jpg', 2),
(6, 'khoa-dritt-moi-no-text-1920x702-1.jpg', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `technical_bulletin_file`
--

CREATE TABLE `technical_bulletin_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `technical_bulletin_file`
--

INSERT INTO `technical_bulletin_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`) VALUES
(1, 'mystery078', 'tung92.ns@gmail.com', '01658824321', '', '$2y$10$zjlyFYq6vJ6TXeQVsOh/1esNuHFTf23SE62fvXVvyUAYvzxyCNzv6', '2017-03-12 02:03:39', 1),
(2, 'manh', 'manh@gmail.com', '0123434', '', '$2y$10$8JKJKBN1HlCxSIR6nv39pedRpujNWEOOQ9ePRT07j4x2F4blrAfA2', '2017-03-23 15:03:28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT 0,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `doi_tac`
--
ALTER TABLE `doi_tac`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `guong_mat`
--
ALTER TABLE `guong_mat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_su`
--
ALTER TABLE `nhan_su`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `noi_ve_khoa`
--
ALTER TABLE `noi_ve_khoa`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `doi_tac`
--
ALTER TABLE `doi_tac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `guong_mat`
--
ALTER TABLE `guong_mat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nhan_su`
--
ALTER TABLE `nhan_su`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `noi_ve_khoa`
--
ALTER TABLE `noi_ve_khoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
