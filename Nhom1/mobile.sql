-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 05, 2018 lúc 03:52 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(1, 'apple', '250px-Apple_logo_black.svg.png'),
(2, 'samsung', '1200px-Samsung_Logo.svg.png'),
(3, 'sony', 'sbkfC49F_400x400.jpeg'),
(4, 'xiaomi', '1200px-Xiaomi_logo.svg.png'),
(5, 'huawei', 'tải xuống.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_ID` int(11) NOT NULL,
  `type_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `name`, `price`, `image`, `description`, `manu_ID`, `type_ID`) VALUES
(1, 'Điện thoại iPhone X 256GB Gray', 25000000, 'iphone-x-256gb-h2-400x460-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	OLED, 5.8\", Super Retina\r\nHệ điều hành:	iOS 11\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A11 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:	1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	2716 mAh, có sạc nhanh', 1, 1),
(6, 'Điện thoại Samsung Galaxy Note 9 512GB', 24000000, 'samsung-galaxy-note-9-512gb-blue-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.4\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64 bit\r\nRAM:	8 GB\r\nBộ nhớ trong:	512 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 2, 1),
(2, 'Điện thoại iPhone 8 Plus 64GB', 22000000, 'iphone-8-plus-64gb-h1-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 11\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A11 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ SIM:	1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	2691 mAh, có sạc nhanh\r\n', 1, 1),
(3, 'Điện thoại iPhone 6s 32GB', 7000000, 'iphone-6s-32gb-vang-dong-2-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	LED-backlit IPS LCD, 4.7\", Retina HD\r\nHệ điều hành:	iOS 11\r\nCamera sau:	12 MP\r\nCamera trước:	5 MP\r\nCPU:	Apple A9 2 nhân 64-bit\r\nRAM:	2 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	1715 mAh', 1, 1),
(4, 'Điện thoại iPhone 7 Plus 128GB', 18000000, 'iphone-7-plus-128gb-de-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 11\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A10 Fusion 4 nhân 64-bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	2900 mAh', 1, 1),
(5, 'Điện thoại iPhone 8 Plus Red 256GB (Đỏ)', 21000000, 'iphone-8-plus-do-256gb-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 11\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A11 Bionic 6 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	256 GB\r\nThẻ SIM:	1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	2691 mAh, có sạc nhanh', 1, 1),
(7, 'Điện thoại Samsung Galaxy J8', 9000000, 'samsung-galaxy-j8-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.0\", HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	16 MP và 5 MP (2 camera)\r\nCamera trước:	16 MP\r\nCPU:	Qualcomm Snapdragon 450 8 nhân 64-bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3500 mAh', 2, 1),
(8, 'Điện thoại Samsung Galaxy A6 (2018)', 8000000, 'samsung-galaxy-a6-2018-1-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 5.6\", HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	16 MP\r\nCamera trước:	16 MP\r\nCPU:	Exynos 7870 8 nhân 64-bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3000 mAh', 2, 1),
(9, 'Điện thoại Samsung Galaxy J7 Pro', 7000000, 'samsung-galaxy-j7-pro-6-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 5.5\", Full HD\r\nHệ điều hành:	Android 7.0 (Nougat)\r\nCamera sau:	13 MP\r\nCamera trước:	13 MP\r\nCPU:	Exynos 7870 8 nhân 64-bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3600 mAh', 2, 1),
(10, 'Điện thoại Samsung Galaxy S9+ 128GB Hoàng Kim', 27000000, 'samsung-galaxy-s9-plus-128gb-vang-dong-2-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	Super AMOLED, 6.2\", Quad HD+ (2K+)\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 9810 8 nhân 64 bit\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB\r\nThẻ SIM:	2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nDung lượng pin:	3500 mAh, có sạc nhanh', 2, 1),
(11, 'Điện thoại Sony Xperia XA1 Plus', 4990000, 'sony-xepria-xa1-plus-1-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5.5\", Full HD\r\nHệ điều hành:	Android 7.0 (Nougat)\r\nCamera sau:	23 MP\r\nCamera trước:	8 MP\r\nCPU:	Mediatek Helio P20\r\nRAM:	4 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3430 mAh, có sạc nhanh', 3, 1),
(12, 'Điện thoại Sony Xperia L1', 6000000, 'sony-xperia-l1-den-3-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5.5\", HD\r\nHệ điều hành:	Android 7.0 (Nougat)\r\nCamera sau:	13 MP\r\nCamera trước:	5 MP\r\nCPU:	MT6737T, 4 nhân\r\nRAM:	2 GB\r\nBộ nhớ trong:	16 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	2620 mAh\r\n', 3, 1),
(13, 'Điện thoại Sony Xperia XA1 Ultra', 7000000, 'sony-xa1-ultra-trang-1-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.0\", Full HD\r\nHệ điều hành:	Android 7.0 (Nougat)\r\nCamera sau:	23 MP\r\nCamera trước:	16 MP\r\nCPU:	Mediatek Helio P20\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	2700 mAh, có sạc nhanh', 3, 1),
(14, 'Điện thoại Sony Xperia XZ1', 15000000, 'sony-xperia-xz1-xanh-2-400x460 (1).png', 'Thông số kỹ thuật\r\nMàn hình:	IPS HDR LCD, 5.2\", Full HD\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	19 MP\r\nCamera trước:	13 MP\r\nCPU:	Qualcomm Snapdragon 835 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:	2 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	2700 mAh, có sạc nhanh', 3, 1),
(15, 'Điện thoại Sony Xperia XA1', 3000000, 'sony-xperia-xa1-400x4601-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5\", HD\r\nHệ điều hành:	Android 7.0 (Nougat)\r\nCamera sau:	23 MP\r\nCamera trước:	8 MP\r\nCPU:	Mediatek Helio P20\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:	2 Nano SIM\r\nDung lượng pin:	2300 mAh', 3, 1),
(16, 'Điện thoại Xiaomi Mi A2', 6000000, 'xiaomi-mi-a2-2-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5.99\", Full HD+\r\nHệ điều hành:	Android One\r\nCamera sau:	20 MP và 12 MP (2 camera)\r\nCamera trước:	20 MP\r\nCPU:	Qualcomm Snapdragon 660 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3010 mAh, có sạc nhanh', 4, 1),
(17, 'Điện thoại Xiaomi Redmi Note 5', 8000000, 'xiaomi-redmi-note-5-pro-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5.99\", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	12 MP và 5 MP (2 camera)\r\nCamera trước:	13 MP\r\nCPU:	Qualcomm Snapdragon 636 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 128 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 4, 1),
(18, 'Điện thoại Xiaomi Mi A1 64GB', 6500000, 'xiaomi-mi-a1-mau-vang-hong-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	LTPS LCD, 5.5\", Full HD\r\nHệ điều hành:	Android 7.1 (Nougat)\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	5 MP\r\nCPU:	Snapdragon 625 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 128 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3080 mAh', 4, 1),
(19, 'Điện thoại Xiaomi Redmi Note 6 Pro 32GB\r\n', 10000000, 'xiaomi-redmi-note-6-pro-32gb-blue-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.26\", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	12 MP và 5 MP (2 camera)\r\nCamera trước:	8 MP và 2 MP\r\nCPU:	Qualcomm Snapdragon 636 8 nhân\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh', 4, 1),
(20, 'Điện thoại Xiaomi Redmi 5 Plus 4GB', 5000000, 'xiaomi-redmi-5-plus-2-1-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5.99\", Full HD+\r\nHệ điều hành:	Android 7.1 (Nougat)\r\nCamera sau:	12 MP\r\nCamera trước:	5 MP\r\nCPU:	Snapdragon 625 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh', 4, 1),
(21, 'Điện thoại Huawei Nova 3i', 6000000, 'huawei-nova-3i-den-chipu-1-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	LTPS LCD, 6.3\", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	16 MP và 2 MP (2 camera)\r\nCamera trước:	24 MP và 2 MP (2 camera)\r\nCPU:	HiSilicon Kirin 710\r\nRAM:	4 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ', 5, 1),
(22, 'Điện thoại Huawei Nova 2i', 5000000, 'huawei-nova-2i-2-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5.9\", Full HD+\r\nHệ điều hành:	Android 7.0 (Nougat)\r\nCamera sau:	16 MP và 2 MP (2 camera)\r\nCamera trước:	13 MP và 2 MP\r\nCPU:	HiSilicon Kirin 659 8 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 128 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3340 mAh', 4, 1),
(23, 'Điện thoại Huawei Nova 3', 11000000, 'huawei-nova-3-purple-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	LTPS LCD, 6.3\", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	24 MP và 16 MP (2 camera)\r\nCamera trước:	24 MP và 2 MP (2 camera)\r\nCPU:	Hisilicon Kirin 970 8 nhân\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3750 mAh, có sạc nhanh', 5, 1),
(24, 'Điện thoại Huawei P20 Pro', 18000000, 'huawei-p20-pro-h1-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	OLED, 6.1\", Full HD+\r\nHệ điều hành:	Android 8.1 (Oreo)\r\nCamera sau:	40 MP, 20 MP và 8 MP (3 camera)\r\nCamera trước:	24 MP\r\nCPU:	Hisilicon Kirin 970 8 nhân\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	4000 mAh, có sạc nhanh', 5, 1),
(25, 'Điện thoại Huawei Y7 Pro (2018)', 7000000, 'huawei-y7-pro-2018-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 5.99\", HD+\r\nHệ điều hành:	Android 8.0 (Oreo)\r\nCamera sau:	13 MP và 2 MP (2 camera)\r\nCamera trước:	8 MP\r\nCPU:	Qualcomm Snapdragon 430 8 nhân 64 bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTMua sim Mobi Big 60 (3GB data/ tháng). Giá từ 80.000đ\r\nDung lượng pin:	3000 mAh', 5, 1),
(26, 'Ốp lưng iPhone X Silicone Apple MQT22 Trắng\r\n', 1200000, 'op-lung-iphone-x-silicone-apple-mqt22-trang-avatar-1-600x600.jpg', 'Ốp lưng chính hãng Apple, nguyên seal 100%\r\nChất liệu nhựa, kiểu dáng thời trang và đẹp mắt.\r\nThiết kế vừa vặn và ôm sát thân máy.\r\n Dễ dàng tháo/lắp ốp vào máy.', 1, 2),
(27, 'Ốp lưng Galaxy S9 Plus Nắp gập Clear View Samsung\r\n', 1200000, 'op-lung-galaxy-s9-plus-nap-gap-clear-view-samsung-avatar-600x600.jpg', 'Bảo vệ toàn diện màn hình và các góc cạnh.\r\nNghe nhận cuộc gọi, kiểm tra tin nhắn, quản lý cuộc gọi nhỡ, điều khiển nhạc, theo dõi pin mà không cần mở nắp bảo vệ.\r\nChân đế trình chiếu linh hoạt.\r\nỐp lưng chính hãng Samsung.', 2, 2),
(28, 'Ốp lưng Sony XZ2 nhựa dẻo TPU Case Litchi Grain OSMIA Đen\r\n', 100000, 'op-lung-sony-xz2-deo-case-litchi-grain-osmia-den-avatar-1-600x600.jpg', 'Chất liệu nhựa, kiểu dáng thời trang và đẹp mắt\r\nThiết kế vừa vặn và ôm sát thân máy\r\n Dễ dàng tháo/lắp ốp vào máy', 3, 2),
(29, 'Ốp lưng Redmi 4A Nhựa dẻo Xmobile Nude\r\n', 100000, 'op-lung-redmi-4a-nhua-deo-xmobile-nude-avatar-1-600x600.jpg', 'Chất liệu nhựa dẻo, kiểu dáng thời trang và đẹp mắt.\r\nThiết kế vừa vặn và ôm sát thân máy.\r\n Dễ dàng tháo/lắp ốp vào máy', 4, 2),
(30, 'Ốp lưng Huawei P20 Pro Nhựa dẻo Noisele JM Gold\r\n', 100000, 'op-lung-huawei-p20-pro-nhua-deo-noisele-jm-gold-add-600x600.jpg', 'Chất liệu nhựa, kiểu dáng thời trang và đẹp mắt.\r\nThiết kế vừa vặn và ôm sát thân máy.\r\n Dễ dàng tháo/lắp ốp vào máy', 5, 2),
(31, 'Laptop Apple Macbook Pro Touch MR9Q2SA/A i5 2.3GHz/8GB/256GB (2018)\r\n', 45000000, 'apple-macbook-pro-touch-mr9q2sa-a-2018-thumb-1-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Kabylake Refresh, 2.30 GHz\r\nRAM:	8 GB, DDR3L(On board), 2133 MHz\r\nỔ cứng:	SSD: 256 GB\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)\r\nCard màn hình:	Card đồ họa tích hợp, Intel Iris Plus Graphics 655\r\nCổng kết nối:	4 x Thunderbolt 3 (USB-C)\r\nĐặc biệt:	Có đèn bàn phím\r\nHệ điều hành:	Mac OS\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền\r\nKích thước:	Dày 14.9 mm, 1.37 kg', 1, 3),
(32, 'Laptop Samsung N510\r\n', 10000000, 'Samsung-N510L.jpg', 'Thông số kỹ thuật\r\nCPU:	N280, 1.66 GHz\r\nRAM:	1 GB, DDR2, 667 MHz\r\nMàn hình:	11.6 inch, HD (1366 x 768)\r\nCard màn hình:	Card đồ họa tích hợp, NVIDIA GeForce 9400M GeForceBoost\r\nCổng kết nối:	-\r\nKích thước:	199, 1.39\r\n', 2, 3),
(33, 'Laptop Sony Vaio CR309E R Red\r\n', 11000000, 'cr307red.jpg', 'Thông số kỹ thuật\r\nCPU:	T2330, 1.60 GHz\r\nRAM:	2 GB, DDR2, 667 MHz\r\nMàn hình:	14.1 inch, WXGA (1280 x 800)\r\nCard màn hình:	Card đồ họa tích hợp, Intel Graphics Media Accelerator (GMA) X3100\r\nCổng kết nối:	IEEE 1394 (Firewire), S-Video, VGA (D-Sub)\r\nKích thước:	335, 2.40', 4, 3),
(34, 'Mi Notebook Pro', 20000000, 'minotebookpro_800x450.jpg', 'Core i7, RAM 16GB, bảo mật vân tay', 4, 3),
(35, 'Honor Magicbook', 25000000, 'huawei-matebook-x-4707-008_800x450.jpg', 'sắp ra mắt', 5, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_ID` int(11) NOT NULL,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_ID`, `type_name`, `type_img`) VALUES
(1, 'dtdd', '717Ac0oQ-AL._SL1500_.jpg'),
(2, 'ốp lưng', 'op.jpg'),
(3, 'laptop', '61aZwj3rIyL._SX425_.jpg'),
(4, 'Loa', '636087538518601855_HAPK-LOA-DAN-20-SOUNDMAX-A130-BLUE-0003983.png'),
(5, 'tai nghe', 'tai-nghe-iphone.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
