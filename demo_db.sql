-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 28, 2022 lúc 01:43 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demo_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `member`
--

INSERT INTO `member` (`username`, `password`, `email`, `phone`) VALUES
('admin', 'anhyeuem09', 'bach11@gmail.com', 96),
('bach27102', 'anhyeuem09', 'bach27102@gmail.com', 36),
('hoang1', 'anhyeuem09', 'ha@gmail.com', 4454);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `Cate_ID` int(100) NOT NULL,
  `Loai` varchar(500) NOT NULL,
  `HinhAnh` varchar(2000) NOT NULL,
  `TenSp` varchar(500) NOT NULL,
  `GiaSp` int(200) NOT NULL,
  `HanhDong` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`Cate_ID`, `Loai`, `HinhAnh`, `TenSp`, `GiaSp`, `HanhDong`) VALUES
(0, '', '', 'ASSSaaaaaa', 155000, 'Còn Hàng'),
(0, 'ao', '', 'bachaa', 14444, 'Còn Hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `Cate_ID` int(100) NOT NULL,
  `Ho` varchar(500) NOT NULL,
  `Ten` varchar(500) NOT NULL,
  `DiaChi` varchar(500) NOT NULL,
  `SDT` int(20) NOT NULL,
  `Email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thanhtoan`
--

INSERT INTO `thanhtoan` (`Cate_ID`, `Ho`, `Ten`, `DiaChi`, `SDT`, `Email`) VALUES
(0, 'hoang', 'nguy', 'hànoi', 2, 'giaa@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`TenSp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
