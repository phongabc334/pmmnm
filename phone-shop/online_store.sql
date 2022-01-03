-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 16, 2021 lúc 09:23 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `online_store`
--
CREATE DATABASE IF NOT EXISTS `online_store` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `online_store`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_muc_gio_hang`
--

CREATE TABLE `chi_muc_gio_hang` (
  `id` bigint(20) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ma_gio_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `id` bigint(20) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `ma_don_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL,
  `so_luong_dat` int(11) NOT NULL,
  `so_luong_nhan_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`id`, `don_gia`, `so_luong`, `ma_don_hang`, `ma_san_pham`, `so_luong_dat`, `so_luong_nhan_hang`) VALUES
(9, 1290000, NULL, 39, 181, 1, 0),
(10, 600000, NULL, 40, 172, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` bigint(20) NOT NULL,
  `ten_danh_muc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `ten_danh_muc`) VALUES
(1, 'Điện Thoại'),
(2, 'Phụ Kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id` bigint(20) NOT NULL,
  `dia_chi_nhan` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `ho_ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `ngay_dat_hang` datetime DEFAULT NULL,
  `ngay_giao_hang` datetime DEFAULT NULL,
  `ngay_nhan_hang` datetime DEFAULT NULL,
  `sdt_nhan_hang` varchar(255) DEFAULT NULL,
  `trang_thai_don_hang` varchar(255) DEFAULT NULL,
  `ma_nguoi_dat` bigint(20) DEFAULT NULL,
  `ma_shipper` bigint(20) DEFAULT NULL,
  `tong_gia_tri` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id`, `dia_chi_nhan`, `ghi_chu`, `ho_ten_nguoi_nhan`, `ngay_dat_hang`, `ngay_giao_hang`, `ngay_nhan_hang`, `sdt_nhan_hang`, `trang_thai_don_hang`, `ma_nguoi_dat`, `ma_shipper`, `tong_gia_tri`) VALUES
(39, 'hn', '123', 'phong', '2021-12-08 22:11:21', NULL, NULL, '1234', 'Đã bị hủy', NULL, NULL, 1290000),
(40, 'hn', 'Ghi chú shipper: \nđã nhận<br> Ghi chú admin:\nđã nhận', 'linh', '2021-12-09 08:06:28', '2021-12-09 08:07:28', '2021-12-09 08:11:13', '12345', 'Hoàn thành', 12, 11, 600000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id` bigint(20) NOT NULL,
  `tong_tien` varchar(255) DEFAULT NULL,
  `ma_nguoi_dung` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `gio_hang`
--

INSERT INTO `gio_hang` (`id`, `tong_tien`, `ma_nguoi_dung`) VALUES
(5, NULL, 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_san_xuat`
--

CREATE TABLE `hang_san_xuat` (
  `id` bigint(20) NOT NULL,
  `ten_hang_san_xuat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hang_san_xuat`
--

INSERT INTO `hang_san_xuat` (`id`, `ten_hang_san_xuat`) VALUES
(2, 'Apple'),
(3, 'SamSung'),
(4, 'Xiaomi'),
(5, 'Realme'),
(6, 'Nokia'),
(7, 'Oppo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` bigint(20) NOT NULL,
  `email_lien_he` varchar(255) DEFAULT NULL,
  `ngay_lien_he` datetime DEFAULT NULL,
  `ngay_tra_loi` datetime DEFAULT NULL,
  `noi_dung_lien_he` varchar(255) DEFAULT NULL,
  `noi_dung_tra_loi` varchar(255) DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `ma_nguoi_tra_loi` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung_vaitro`
--

CREATE TABLE `nguoidung_vaitro` (
  `ma_nguoi_dung` bigint(20) NOT NULL,
  `ma_vai_tro` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoidung_vaitro`
--

INSERT INTO `nguoidung_vaitro` (`ma_nguoi_dung`, `ma_vai_tro`) VALUES
(9, 1),
(9, 2),
(10, 2),
(11, 3),
(12, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` bigint(20) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `dia_chi`, `email`, `ho_ten`, `password`, `so_dien_thoai`) VALUES
(9, NULL, 'admin@gmail.com', 'Nguyễn Xuân Linh', '$2a$10$cCVdJR5/292Hd7BR9X4UcebFDD0935yGVq/kbUUjW86tszZzjaI0u', '123456789'),
(10, NULL, 'member@gmail.com', NULL, '$2a$10$wIx8wOznCzAU9/tMNa6hAuuKRdC1OPfFZ9EDpRh5k0qTjjiWcuoE6', NULL),
(11, NULL, 'shipper@gmail.com', NULL, '$2a$10$BJjvUVayurSxJCmGBx7.Y.icgJxbnZ/ygE1OmrqPRE5NkQfvvOMKG', NULL),
(12, 'hn', 'linh@gmail.com', 'linh', '$2a$10$S1TbUnOw27p/l//MSCeWPO9nOiPc7bm3F6io9Pz3ym8h9.ZbMAHQq', '12345');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` bigint(20) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `don_vi_ban` int(11) NOT NULL,
  `don_vi_kho` int(11) NOT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `man_hinh` varchar(255) DEFAULT NULL,
  `he_dieu_hanh` varchar(255) DEFAULT NULL,
  `camera_truoc` varchar(255) DEFAULT NULL,
  `camera_sau` varchar(255) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `rom` varchar(255) DEFAULT NULL,
  `sim` varchar(255) DEFAULT NULL,
  `dung_luong_pin` varchar(255) DEFAULT NULL,
  `sac_toi_da` varchar(255) DEFAULT NULL,
  `bao_mat` varchar(255) DEFAULT NULL,
  `thiet_ke` varchar(255) DEFAULT NULL,
  `thong_tin_chung` varchar(255) DEFAULT NULL,
  `ma_danh_muc` bigint(20) DEFAULT NULL,
  `ma_hang_sx` bigint(20) DEFAULT NULL,
  `mau_sac` varchar(50) DEFAULT NULL,
  `thong_tin_bao_hanh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `don_gia`, `don_vi_ban`, `don_vi_kho`, `ten_san_pham`, `man_hinh`, `he_dieu_hanh`, `camera_truoc`, `camera_sau`, `cpu`, `ram`, `rom`, `sim`, `dung_luong_pin`, `sac_toi_da`, `bao_mat`, `thiet_ke`, `thong_tin_chung`, `ma_danh_muc`, `ma_hang_sx`, `mau_sac`, `thong_tin_bao_hanh`) VALUES
(2, 31490000, 0, 999, 'iPhone 12 Pro Max 128GB', 'OLED6.7\"Super Retina XDR', 'iOS 14', '12 MP', '3 camera 12 MP', 'Apple A14 Bionic', '6 GB', '128 GB', '1 Nano SIM & 1 eSIM, Hỗ trợ 5G', '3687 mAh', '20 W', 'Mở khoá khuôn mặt Face ID', 'Nguyên khối', '\r\nDài 160.8 mm - Ngang 78.1 mm - Dày 7.4 mm - Nặng 228 g', 1, 2, 'Xanh', '3 năm'),
(144, 44990000, 0, 999, 'Samsung Galaxy Z Fold3 5G 512GB', 'Dynamic AMOLED 2XChính 7.6\" & Phụ 6.2\"Full HD+', 'Android 11', '10 MP & 4 MP', '3 camera 12 MP', 'Snapdragon 888', '12 GB', '512 GB', '2 Nano SIM & 1 eSIM, Hỗ trợ 5G', '4400 mAh', '25 W', 'Mở khoá vân tay cạnh viền', 'Nguyên khối', '\r\nDài 158.2 mm - Ngang 128.1 mm - Dày 6.4 mm - Nặng 271 g', 1, 3, 'Đen', '3 năm'),
(145, 10990000, 0, 999, 'Xiaomi 11T 5G 128GB', 'AMOLED 6.67\"Full HD+', 'Android 11', '16 MP', 'Chính 108 MP & Phụ 8 MP, 5 MP', 'MediaTek Dimensity 1200', '8 GB', '128 GB', '2 Nano SIM, Hỗ trợ 5G', '5000 mAh', '67 W', 'Mở khoá khuôn mặt, Mở khoá vân tay cạnh viền', 'Nguyên khối', '\r\nDài 164.1 mm - Ngang 76.9 mm - Dày 8.8 mm - Nặng 203 g', 1, 4, 'Xám', '3 năm'),
(146, 9490000, 0, 999, 'OPPO Reno 6Z 5G', 'AMOLED 6.43\"Full HD+', 'Android 11', '32 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP', 'MediaTek Dimensity 800U 5G', '8 GB', '128 GB', '2 Nano SIM, Hỗ trợ 5G', '4310 mAh', '67 W', 'Mở khoá khuôn mặt, Mở khoá vân tay cạnh viền', 'Nguyên khối', '\r\nDài 164.1 mm - Ngang 76.9 mm - Dày 8.8 mm - Nặng 203 g', 1, 7, 'Bạc', '3 năm'),
(147, 17490000, 0, 999, 'iPhone 11 64GB', 'IPS LCD6.1\"Liquid Retina', 'iOS 14', '12 MP', '2 camera 12 MP', 'Apple A13 Bionic', '4 GB', '64 GB', '1 Nano SIM & 1 eSIM', '3110 mAh', '18 W', 'Mở khoá khuôn mặt Face ID', 'Nguyên khối', '\r\nDài 160.8 mm - Ngang 78.1 mm - Dày 7.4 mm - Nặng 228 g', 1, 2, 'Đỏ', '3 năm'),
(148, 33990000, 0, 999, 'iPhone 13 Pro Max 128GB', 'OLED6.7\"Super Retina XDR', 'iOS 15', '12 MP', '3 camera 12 MP', 'Apple A15 Bionic', '6 GB', '128 GB', '1 Nano SIM & 1 eSIM, Hỗ trợ 5G', '4352 mAh', '20 W', 'Mở khoá khuôn mặt Face ID', 'Nguyên khối', '\r\nDài 160.8 mm - Ngang 78.1 mm - Dày 7.4 mm - Nặng 228 g', 1, 2, 'vàng', '3 năm'),
(149, 20490000, 0, 999, 'iPhone 12 128GB', 'OLED6.1\"Super Retina XDR', 'iOS 14', '12 MP', '2 camera 12 MP', 'Apple A14 Bionic', '4 GB', '128 GB', '1 Nano SIM & 1 eSIM, Hỗ trợ 5G', '2815 mAh', '20 W', 'Mở khoá khuôn mặt Face ID', 'Nguyên khối', '\r\nDài 146.7 mm - Ngang 71.5 mm - Dày 7.4 mm - Nặng 164 g', 1, 2, 'Đen', '3 năm'),
(150, 28490000, 0, 999, 'iPhone 12 Pro 128GB', 'OLED6.1\"Super Retina XDR', 'iOS 14', '12 MP', '3 camera 12 MP', 'Apple A14 Bionic', '6 GB', '128 GB', '1 Nano SIM & 1 eSIM, Hỗ trợ 5G', '2815 mAh', '20 W', 'Mở khoá khuôn mặt Face ID', 'Nguyên khối', '\r\nDài 146.7 mm - Ngang 71.5 mm - Dày 7.4 mm - Nặng 189 g', 1, 2, 'Đen', '3 năm'),
(151, 3690000, 0, 999, 'Samsung Galaxy A03s', 'PLS LCD 6.5\"HD+', 'Android 11', '5 MP', 'Chính 13 MP & Phụ 2 MP, 2 MP', 'MediaTek MT6765', '4 GB', '64 GB', '2 Nano SIM', '5000 mAh', '7.5 W', 'Mở khoá khuôn mặt, Mở khoá vân tay cạnh viền', 'Nguyên khối', '\r\nDài 164 mm - Ngang 7.6 mm - Dày 9.1 mm - Nặng 196 g', 1, 3, 'Xám', '3 năm'),
(152, 17990000, 0, 999, 'Samsung Galaxy S21 5G', 'Dynamic AMOLED 2X 6.2\"Full HD+', 'Android 11', '10 MP', 'Chính 12 MP & Phụ 64 MP, 12 MP', 'Exynos 2100', '8 GB', '128 GB', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G', '4000 mAh', '25 W', 'Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 'Nguyên khối', '\r\nDài 158.2 mm - Ngang 128.1 mm - Dày 6.4 mm - Nặng 271 g', 1, 3, 'Tím', '3 năm'),
(153, 20990000, 0, 999, 'Samsung Galaxy S21+ 5G 128GB', 'Dynamic AMOLED 2X 6.7\"Full HD+', 'Android 11', '10 MP', 'Chính 12 MP & Phụ 64 MP, 12 MP', 'Exynos 2100', '8 GB', '128 GB', '2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G', '4800 mAh', '25 W', 'Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 'Nguyên khối', '\r\nDài 158.2 mm - Ngang 128.1 mm - Dày 6.4 mm - Nặng 271 g', 1, 3, 'Đen', '3 năm'),
(154, 24990000, 0, 999, 'Samsung Galaxy Z Flip3 5G 128GB', 'Dynamic AMOLED 2X Chính 6.7\" & Phụ 1.9\"Full HD+', 'Android 11', '10 MP', '2 camera 12 MP', 'Snapdragon 888', '8 GB', '128 GB', '1 Nano SIM & 1 eSIM, Hỗ trợ 5G', '3300 mAh', '25 W', 'Mở khoá khuôn mặt, Mở khoá vân tay cạnh viền', 'Nguyên khối', '\r\nDài 158.2 mm - Ngang 128.1 mm - Dày 6.4 mm - Nặng 271 g', 1, 3, 'vàng', '3 năm'),
(155, 19990000, 0, 999, 'Xiaomi 11 5G', 'AMOLED 6.81\"Quad HD+ (2K+)', 'Android 11', '20 MP', 'Chính 108 MP & Phụ 13 MP, 5 MP', 'Snapdragon 888', '8 GB', '256 GB', '2 Nano SIM, Hỗ trợ 5G', '4600 mAh', '67 W', 'Mở khoá khuôn mặt, Mở khoá vân tay cạnh viền', 'Nguyên khối', '\r\nDài 164.1 mm - Ngang 76.9 mm - Dày 8.8 mm - Nặng 203 g', 1, 4, 'Xanh', '3 năm'),
(156, 14990000, 0, 999, 'Xiaomi 11T Pro 5G', 'AMOLED 6.67\"Full HD+', 'Android 11', '16 MP', 'Chính 108 MP & Phụ 8 MP, 5 MP', 'Snapdragon 888', '12 GB', '256 GB', '2 Nano SIM, Hỗ trợ 5G', '5000 mAh', '67 W', 'Mở khoá khuôn mặt, Mở khoá vân tay cạnh viền', 'Nguyên khối', '\r\nDài 164.1 mm - Ngang 76.9 mm - Dày 8.8 mm - Nặng 203 g', 1, 4, 'Đen', '3 năm'),
(157, 12990000, 0, 999, 'Xiaomi Mi 10T Pro 5G', 'AMOLED 6.67\"Full HD+', 'Android 11', '10 MP', 'Chính 108 MP & Phụ 13 MP, 5 MP', 'Snapdragon 865', '8 GB', '256 GB', '2 Nano SIM, Hỗ trợ 5G', '5000 mAh', '33 W', 'Mở khoá khuôn mặt, Mở khoá vân tay cạnh viền', 'Nguyên khối', '\r\nDài 164.1 mm - Ngang 76.9 mm - Dày 8.8 mm - Nặng 203 g', 1, 4, 'Xám', '3 năm'),
(158, 7490000, 0, 999, 'Xiaomi Redmi Note 10 Pro (8GB/128GB)', 'AMOLED 6.67\"Full HD+', 'Android 11', '16 MP', 'Chính 108 MP & Phụ 8 MP, 5 MP, 2 MP', 'Snapdragon 732G', '8 GB', '128 GB', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh', '67 W', 'Mở khoá khuôn mặt, Mở khoá vân tay cạnh viền', 'Nguyên khối', '\r\nDài 164.1 mm - Ngang 76.9 mm - Dày 8.8 mm - Nặng 203 g', 1, 4, 'Xám', '3 năm'),
(159, 7990000, 0, 999, 'Xiaomi 11T 5G 128GB', 'AMOLED 6.67\"Full HD+', 'Android 11', '16 MP', 'Chính 64 MP & Phụ 8 MP, 5 MP', 'Snapdragon 732G', '8 GB', '128 GB', '2 Nano SIM, Hỗ trợ 5G', '4250 mAh', '33 W', 'Mở khoá khuôn mặt, Mở khoá vân tay cạnh viền', 'Nguyên khối', '\r\nDài 164.1 mm - Ngang 76.9 mm - Dày 8.8 mm - Nặng 203 g', 1, 4, 'Blue', '3 năm'),
(161, 6990000, 0, 999, 'OPPO A95', 'AMOLED 6.43\"Full HD+', 'Android 11', '16 MP', 'Chính 48 MP & Phụ 2 MP, 2 MP', 'Snapdragon 662', '8 GB', '128 GB', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh', '30 W', 'Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 'Nguyên khối', '\r\nDài 164.1 mm - Ngang 76.9 mm - Dày 8.8 mm - Nặng 203 g', 1, 7, 'Bạc', '3 năm'),
(162, 18490000, 0, 999, 'OPPO Reno6 Pro 5G', 'AMOLED 6.43\"Full HD+', 'Android 11', '32 MP', 'Chính 50 MP & Phụ 16 MP, 13 MP, 2 MP', 'Snapdragon 870 5G', '12 GB', '256 GB', '2 Nano SIM, Hỗ trợ 5G', '5000 mAh', '30 W', 'Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 'Nguyên khối', '\r\nDài 164.1 mm - Ngang 76.9 mm - Dày 8.8 mm - Nặng 203 g', 1, 7, 'Xanh', '3 năm'),
(163, 23990000, 0, 999, 'OPPO Find X3 Pro 5G', 'AMOLED 6.7\" Quad HD+ (2K+)', 'Android 11', '32 MP', 'Chính 50 MP & Phụ 50 MP, 13 MP, 2 MP', 'Snapdragon 888', '12 GB', '256 GB', '2 Nano SIM, Hỗ trợ 5G', '4500 mAh', '65 W', 'Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 'Nguyên khối', '\r\nDài 164.1 mm - Ngang 76.9 mm - Dày 8.8 mm - Nặng 203 g', 1, 7, 'Xám', '3 năm'),
(164, 3290000, 0, 999, 'Nokia 3.4', 'IPS LCD 6.39\"HD+', 'Android 10', '8 MP', 'Chính 13 MP & Phụ 5 MP, 2 MP', 'Snapdragon 460', '4 GB', '64 GB', '2 Nano SIM, Hỗ trợ 4G', '4000 mAh', '10 W', 'Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 'Nguyên khối', '\r\nDài 164.1 mm - Ngang 76.9 mm - Dày 8.8 mm - Nặng 203 g', 1, 6, 'Xám', '3 năm'),
(165, 2190000, 0, 999, 'Nokia C20', 'IPS LCD 6.5\" HD+', 'Android 11 (Go Edition)', '5 MP', '5 MP', 'Spreadtrum SC9863A', '2 GB', '32 GB', '2 Nano SIM, Hỗ trợ 4G', '2950 mAh', '10 W', 'Mở khoá khuôn mặt, Mở khoá vân tay cạnh viền', 'Nguyên khối', '\r\nDài 164.1 mm - Ngang 76.9 mm - Dày 8.8 mm - Nặng 203 g', 1, 6, 'Blue', '12'),
(166, 2990000, 0, 999, 'Realme C11 (2021)', 'LCD 6.5\" HD+', 'Android 11 (Go Edition)', '5 MP', '8 MP', 'Spreadtrum SC9863A', '2 GB', '32 GB', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh', '10 W', 'Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 'Nguyên khối', '\r\nDài 160.8 mm - Ngang 78.1 mm - Dày 7.4 mm - Nặng 228 g', 1, 5, 'Blue', '3 năm'),
(167, 8690000, 0, 999, 'Realme 8 Pro Vàng', 'Super AMOLED6.4\"Full HD+', 'Android 11', '16 MP', 'Chính 108 MP & Phụ 8 MP, 2 MP, 2 MP', 'Snapdragon 720G', '8 GB', '128 GB', '2 Nano SIM, Hỗ trợ 4G', '4500 mAh', '50 W', 'Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 'Nguyên khối', '\r\nDài 160.8 mm - Ngang 78.1 mm - Dày 7.4 mm - Nặng 228 g', 1, 5, 'vàng', '3 năm'),
(168, 8690000, 0, 999, 'Realme 7 Pro', 'Super AMOLED 6.4\"Full HD+', 'Android 10', '32 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', 'Snapdragon 720G', '8 GB', '128 GB', '2 Nano SIM, Hỗ trợ 4G', '4500 mAh', '50 W', 'Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 'Nguyên khối', '\r\nDài 160.8 mm - Ngang 78.1 mm - Dày 7.4 mm - Nặng 228 g', 1, 5, 'Bạc', '3 năm'),
(169, 7990000, 0, 999, 'Realme 8 5G', 'Super AMOLED 6.5\" Full HD+', 'Android 11', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', 'MediaTek Dimensity 700', '8 GB', '128 GB', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh', '18 W', 'Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 'Nguyên khối', '\r\nDài 160.8 mm - Ngang 78.1 mm - Dày 7.4 mm - Nặng 228 g', 1, 5, 'Blue', '3 năm'),
(172, 300000, 2, 18, 'ốp lưng Iphone 13 pro max', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dạng thanh', 'Kiểu dáng thời trang và đẹp mắt.\r\nThiết kế vừa vặn và ôm sát thân máy.\r\nDễ dàng tháo/lắp ốp vào máy.', 2, 2, 'Xám', 'không'),
(173, 620000, 0, 200, 'Ốp lưng Itskins iPhone 12 Pro Max Feroniabio Terra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '	Mỏng nhẹ, ôm sát viền máy', 'Với chất liệu bền bỉ và được thiết kế để ôm sát các góc máy, đem đến sự bảo vệ tốt nhất cho cả hệ thống camera, mặt lưng, các cạnh bên và từng phím chức năng.', 2, 2, 'Xanh dương', 'không'),
(174, 275000, 0, 100, 'Pin dự phòng Energizer 10.000mAh UE10052BK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pin dự phòng Energizer 10.000mAh UE10052BK là phụ kiện hữu ích không thể thiếu đối với các tín đồ công nghệ hiện nay. Tuy có thiết kế nhỏ gọn nhưng pin dự phòng này lại có dung lượng lớn cũng nhiều tính năng thông minh', 2, 2, 'Đen', '24 tháng'),
(175, 200000, 0, 100, 'Ốp lưng iPhone 13 Pro Max Nillkin Super Frosted Shield Pro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mỏng nhẹ, ôm sát viền máy', ' Không chỉ có khả năng bảo vệ tốt cho điện thoại,  ốp lưng iPhone 13 Pro Max Nillkin Super Frosted Shield Pro còn có khả năng đàn hồi tốt giúp tăng cường khả năng bảo vệ cho chiếc điện thoại của bạn.', 2, 2, 'Đen', 'không'),
(176, 4990000, 0, 100, 'Tai nghe Bluetooth Apple AirPods Pro VN/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chống ồn chủ động Xuyên âm, Micro kép đàm thoại', 'IPX4 (Chống nước,mồ hôi), Tương thích IOS,Android\r\nLaptop có hỗ trợ Bluetooth', 2, 2, 'Trắng', '12 tháng'),
(177, 450000, 0, 100, 'Pin sạc dự phòng Xiaomi Redmi 20000mah sạc nhanh 18W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tích hợp bảo vệ mạch thông minh Chế độ sạc nhỏ giọt', 'Pin 20000Mah', 2, 4, 'Đen', '6 tháng'),
(178, 330000, 0, 100, 'Pin sạc dự phòng Polymer 10.000mAh Xiaomi Mi 18W Fast Charge Power Bank 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 cổng Micro USB, 1 cổng Type C', 'Thời gian sạc đầy: Khoảng 4-6 giờ', 2, 4, 'Trắng', '6 tháng'),
(179, 1190000, 0, 100, 'Pin sạc dự phòng Samsung EB P5300x 20000mAh 25W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kích thước: 69 x 143 x 25, Trọng lượng:	392g', 'Cổng sạc ra: 1x USB + 2x USB-C, Công suất: 25W', 2, 3, 'Black', '12 tháng'),
(180, 2990000, 0, 100, 'Tai nghe không dây Samsung Galaxy Buds 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chống ồn chủ động ANC, Loa 2 chiều, Chế độ âm thanh xung quanh', 'Chống nước:	IPX2 (Giọt nước nhỏ), Cổng sạc: USB-C, Sạc không dây chuẩn Qi', 2, 3, 'Trắng', '12 tháng'),
(181, 1290000, 0, 100, 'Bao da Samsung Galaxy S21 Ultra Clearview kèm S-Pen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Thiết kế tỉ mỉ, cao cấp, chống bám vân tay', 'Bao da Samsung Galaxy S21 Ultra Clearview kèm S-Pen được thiết kế theo dạng gập ngang như cuốn sổ viết. Các chi tiết của bao da được thiết kế vô cùng tỉ mỉ và tinh tế. Phần camera và đèn Flash làm nhô cao để bảo vệ tốt nhất khi tiếp xúc với các bề mặt.', 2, 3, 'Đen', 'không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vai_tro`
--

CREATE TABLE `vai_tro` (
  `id` bigint(20) NOT NULL,
  `ten_vai_tro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `vai_tro`
--

INSERT INTO `vai_tro` (`id`, `ten_vai_tro`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_MEMBER'),
(3, 'ROLE_SHIPPER');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK49lmmclnjgb7eck20lwhv0cks` (`ma_gio_hang`),
  ADD KEY `FKkd69a7wiulr4xgohxl0rlhth4` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9wl3houbukbxpixsut6uvojhy` (`ma_don_hang`),
  ADD KEY `FK3ry84nmdxgoarx53qjxd671tk` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnwjiboxao1uvw1siemkvs1jb9` (`ma_nguoi_dat`),
  ADD KEY `FKgndcrlvetoudr3jaif9b7ay37` (`ma_shipper`);

--
-- Chỉ mục cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKitverect56puwr47y7tyvy6er` (`ma_nguoi_dung`);

--
-- Chỉ mục cho bảng `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6jm47uh7f94pc3wix0duvedde` (`ma_nguoi_tra_loi`);

--
-- Chỉ mục cho bảng `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD PRIMARY KEY (`ma_nguoi_dung`,`ma_vai_tro`),
  ADD KEY `FKig6jxd861mqv02a8pn68r43fr` (`ma_vai_tro`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqss6n6gtx6lhb7flcka9un18t` (`ma_danh_muc`),
  ADD KEY `FKchvjvgjnq8lbt9mjtyfn5pksq` (`ma_hang_sx`);

--
-- Chỉ mục cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  ADD CONSTRAINT `FK49lmmclnjgb7eck20lwhv0cks` FOREIGN KEY (`ma_gio_hang`) REFERENCES `gio_hang` (`id`),
  ADD CONSTRAINT `FKkd69a7wiulr4xgohxl0rlhth4` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`);

--
-- Các ràng buộc cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `FK3ry84nmdxgoarx53qjxd671tk` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `FK9wl3houbukbxpixsut6uvojhy` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`id`);

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `FKgndcrlvetoudr3jaif9b7ay37` FOREIGN KEY (`ma_shipper`) REFERENCES `nguoi_dung` (`id`),
  ADD CONSTRAINT `FKnwjiboxao1uvw1siemkvs1jb9` FOREIGN KEY (`ma_nguoi_dat`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `FKitverect56puwr47y7tyvy6er` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD CONSTRAINT `FK6jm47uh7f94pc3wix0duvedde` FOREIGN KEY (`ma_nguoi_tra_loi`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD CONSTRAINT `FKig6jxd861mqv02a8pn68r43fr` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`id`),
  ADD CONSTRAINT `FKocavcnspu1wcvp2w0s4usfgbf` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `FKchvjvgjnq8lbt9mjtyfn5pksq` FOREIGN KEY (`ma_hang_sx`) REFERENCES `hang_san_xuat` (`id`),
  ADD CONSTRAINT `FKqss6n6gtx6lhb7flcka9un18t` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danh_muc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
