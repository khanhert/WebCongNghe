-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2020 at 04:22 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_ban_hang`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenbaner` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `tenbaner`) VALUES
(1, 'banner1.png'),
(2, 'banner2.jpg'),
(3, 'banner3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
CREATE TABLE IF NOT EXISTS `chitiethoadon` (
  `ma_ct_hoa_don` int(11) NOT NULL AUTO_INCREMENT,
  `mahoadon` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` double NOT NULL,
  `thanh_tien` double NOT NULL,
  PRIMARY KEY (`ma_ct_hoa_don`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `mahd` int(11) NOT NULL AUTO_INCREMENT,
  `makh` int(11) NOT NULL,
  `ngayban` date NOT NULL,
  PRIMARY KEY (`mahd`),
  KEY `FK_HD_USER` (`makh`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

DROP TABLE IF EXISTS `loaisp`;
CREATE TABLE IF NOT EXISTS `loaisp` (
  `maloai` int(11) NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(30) NOT NULL,
  PRIMARY KEY (`maloai`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`maloai`, `tenloai`) VALUES
(1, 'Điện Thoại'),
(2, 'Laptop'),
(3, 'Máy tính Bảng'),
(4, 'Smart Wacth'),
(5, 'Tai Nghe'),
(6, 'Loa Bluetooth');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `masp` int(11) NOT NULL AUTO_INCREMENT,
  `maloai` int(11) NOT NULL,
  `tensp` varchar(30) NOT NULL,
  `gia` double NOT NULL,
  `hinh` varchar(30) NOT NULL,
  `hang` varchar(100) NOT NULL,
  `manhinh` varchar(100) NOT NULL,
  `hedieuhanh` varchar(100) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  PRIMARY KEY (`masp`),
  KEY `FK_SP_LoaiSP` (`maloai`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `maloai`, `tensp`, `gia`, `hinh`, `hang`, `manhinh`, `hedieuhanh`, `ram`, `pin`) VALUES
(1, 1, 'SamSung N10', 10000000, 'SamSungNote10.jpg', 'SamSung', 'Dynamic AMOLED, 6.8\", Quad HD+ (2K+)', 'Android', '12 GB', '4300 mAh, có sạc nhanh'),
(2, 2, 'Dell Vostro', 12000000, 'DellVostro.jpg', 'Dell', 'Full HD', 'Win 10', '4 GB', 'Lion'),
(3, 2, 'MacBook Pro 15', 15000000, 'Mac15.jpg', 'Apple', '2K', 'Mac OS', '8 GB', 'Lion'),
(4, 1, 'RedMi 5', 5000000, 'Redmi5.jpg', 'Xiaomi', 'Full HD', 'AnDroid', '8GB', '4000 mAh'),
(5, 1, 'Iphone 12', 30000000, 'IPhone12.jpg', 'Apple', '6.7\"', 'IOS', '6 GB', '3687 mAh, có sạc nhanh'),
(6, 2, 'Acer Nitro5', 17000000, 'Nitro5.jpg', 'Acer', 'Full HD', 'Win 10', '8 GB', 'Lion'),
(7, 1, 'Huawei', 10000000, 'Huawei.jpg', 'Huawei', 'Full HD', 'Android', '8 GB', '4000 mAh '),
(8, 1, 'OPPO Reno2', 10000000, 'oppoReno2.jpg', 'OPPO', 'Full HD', 'Android', '8 GB', '4015 mAh, có sạc nhanh'),
(9, 2, 'Surface 3', 20000000, 'Surface3.jpg', 'Microsoft', 'Full HD', 'Win 10', '8 GB', 'Lion'),
(10, 5, 'Air Pods Pro', 6000000, 'AriPodsPro.jpg', 'Apple', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 h liên tục'),
(11, 5, 'Defunc True Go', 3000000, 'Defunc-True_Go.jpg', 'Defunc ', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 tiếng liên tục'),
(12, 6, 'JBL Pulse4', 3500000, 'JBLPulse4.jpg', 'JBL', 'không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 tiếng liên tục'),
(13, 6, 'Xiaomi Square', 500000, 'xiaomisquare.jpg', 'Xiaomi', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 tiếng liên tục'),
(14, 1, 'RedMi 9', 9000000, 'Redmi9.jpg', 'Xiaomi', 'Full HD', 'Android', '8 GB', '4000 mAh'),
(15, 1, 'SamSung A51', 8000000, 'SamsungA51.jpg', 'SamSung', 'Full HD', 'Android', '8 GB', '3600 mAh'),
(16, 1, 'OPPO A5', 7000000, 'oppoA5.jpg', 'OPPO', 'Full HD', 'Android', '8 GB', '3600 mAh'),
(17, 1, 'Samsung A81', 5500000, 'SamsungA51.jpg', 'SamSung', 'Full HD', 'Android', '8 GB', '4000 mAh'),
(18, 2, 'HP 15s', 15000000, 'Hp15s.jpg', 'HP', 'Full HD ', 'Win 10', '8 GB', 'Lion '),
(19, 2, 'Asus VivoBook 14', 14000000, 'AsusVivobook14.jpg', 'Asus', 'Full HD', 'Win 10', '8 GB', 'Lion'),
(20, 2, 'Lenovo IdeaPad', 13000000, 'LenovoIdeaPad.jpg', 'Lenovo', 'Full HD', 'Win 10', '8 GB', 'Lion'),
(21, 6, 'Speaker Bottle', 30000000, 'Speaker-Bottle.jpg', 'Speaker Bottle', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 tiếng liên tục'),
(22, 6, 'SRS-XB22', 3500000, 'SRS-XB22.jpg', 'Sony', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 tiếng liên tục'),
(23, 5, 'JBL-T500BT', 4500000, 'JBL-T500BT.jpg', 'JBL', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '8 tiếng liên tục'),
(24, 5, 'WH-CH510', 1500000, 'WH-CH510.jpg', 'Sony', 'Không có thông tin', 'Đang cập nhật', 'Đang cập nhật', '10 tiếng liên tục'),
(25, 3, 'IPad8-10.2', 8000000, 'IPad8-10.2.jpg', 'Apple', 'Full HD', 'ISO', '3 GB', '8600 mAh'),
(26, 4, 'AppleWatch6', 8500000, 'AppleWatch6.jpg', 'Apple', '1.57 inch', 'watchOS 7.0', 'Apple S5 64 bit', '334 mAh'),
(27, 3, 'IPad Pro11', 12000000, 'IPadPro11.jpg', 'Apple', 'Full HD', 'IOS', '6 GB', '1000 mAh'),
(28, 3, 'Lenovo M10', 5000000, 'LenovoM10.jpg', 'Lenovo', 'Full HD', 'Đang cập nhật', '4 GB', '3600 mAh'),
(29, 4, 'Galaxy Fit', 500000, 'GalaxyFit.jpg', 'SamSung', 'PMOLED', 'Android 5.0 , iOS 9 trở lên', '128 MB', '334 mAh'),
(30, 4, 'Lenovo S2', 3000000, 'LenovoS2.jpg', 'Lenovo', '1.4 \"240X240 ', 'Đang cập nhật', '128 MB', '120 mAh'),
(31, 3, 'Galaxy Tab6 Lite', 3500000, 'Tab6Lite.jpg', 'SamSung', 'PLS LCD, 10.4\"', 'Android 10', '4 GB', '7040 mAh'),
(32, 4, 'Samsung Gear S3', 7000000, 'SamsungGearS3.jpg', 'SamSung', 'AMOLED', 'OS TIZEN', '4 GB', '334 mAh'),
(33, 3, 'Galaxy Tab7 ', 9000000, 'Tab7.jpg', 'SamSung', 'PLS LCD, 13\"', 'OS TIZEN', '4 GB', '7200 mAh');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `makh` int(11) NOT NULL AUTO_INCREMENT,
  `tenkh` varchar(50) NOT NULL,
  `diachi` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `sdt` varchar(150) NOT NULL,
  `tendangnhap` varchar(150) NOT NULL,
  `matkhau` varchar(150) NOT NULL,
  PRIMARY KEY (`makh`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_SP_LoaiSP` FOREIGN KEY (`maloai`) REFERENCES `loaisp` (`maloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
