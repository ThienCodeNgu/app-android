-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 08, 2024 lúc 03:25 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `app_android`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(500) NOT NULL,
  `hinhanh` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `tendanhmuc`, `hinhanh`) VALUES
(1, 'Máy Tính', 'https://cdn.nguyenkimmall.com/images/companies/_1/womens-day/1200x628/pc2.png'),
(2, 'Màn Hình', 'https://www.lg.com/vn/images/man-hinh-may-tinh/md07565854/gallery/N04_D4.jpg'),
(3, 'Linh Kiện', 'https://bcavn.com/Image/Picture/New/linh-kien-may-tinh.png'),
(4, 'Phụ Kiện', 'https://congnghevadoisong.vn/files/image003.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"shop_db\",\"table\":\"products\"},{\"db\":\"shop_db\",\"table\":\"message\"},{\"db\":\"test\",\"table\":\"users\"},{\"db\":\"test\",\"table\":\"products\"},{\"db\":\"test\",\"table\":\"danhmuc\"},{\"db\":\"shop_db\",\"table\":\"cart\"},{\"db\":\"shop_db\",\"table\":\"orders\"},{\"db\":\"shop_db\",\"table\":\"users\"},{\"db\":\"test\",\"table\":\"chitiethoadon\"},{\"db\":\"test\",\"table\":\"banner\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-11-09 01:34:26', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(500) NOT NULL,
  `mota` varchar(500) NOT NULL,
  `hinhanh` varchar(300) NOT NULL,
  `thongso` varchar(1024) NOT NULL,
  `gia` varchar(30) NOT NULL,
  `thoigian` date DEFAULT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `tensanpham`, `mota`, `hinhanh`, `thongso`, `gia`, `thoigian`, `id_danhmuc`) VALUES
(1, 'Asus ROG Strix G513QC HN015T', 'máy tính', 'https://techcare.net.vn/wp-content/uploads/2022/07/asus-gaming-rog-strix-g513qc-hn015t-10-768x768.jpg', 'CPU: AMD RYZEN 7-4800H\r\nRAM: 8GB\r\nỔ cứng: SSD 512GB\r\nCard đồ họa: NVIDIA GEFORCE RTX 3050TI 4GB\r\nMàn Hình: 15.6 INCH FULL HD\r\n', '18.700.000', '2024-05-05', 1),
(2, 'Acer Predator Helios Neo 2023', 'máy tính', 'https://techcare.net.vn/wp-content/uploads/2022/08/acer-predator-helios-16-2023.jpg', 'CPU: CORE I7-13700HX.\r\nRAM: 16GB.\r\nỔ cứng: SSD 512GB.\r\nCard đồ họa: NVIDIA GEFORCE RTX 4050 6GB\r\nMàn hình: 16 INCH FULL HD', '28.900.000', '2024-05-05', 1),
(3, 'Laptop HP 14s-em0086AU R5', 'máy tính', 'https://product.hstatic.net/200000680839/product/2e97bbcc-10ce-4a1a-b89c-17b534a25d39_4ba683fa309343609729ffe878f4e2e4.jpg', 'CPU: AMD, RYZEN 5, 7520U\r\nRAM: 16GB\r\nỔ cứng: SSD 512GB\r\nCard đồ họa: AMD Radeon Graphics\r\nMàn hình: 14 inch, 1920 x 1080 Pixels, SVA, 60 Hz, 250 nits, FHD\r\n', '13.490.000', '2024-03-05', 1),
(5, 'Lenovo LOQ 15IRH8', 'máy tính', 'https://techcare.vn/image/lenovo-loq-15irh8-1-ro7ce0j.jpg', 'CPU: Intel® Core™ i5-13420H, 8 Cores (4P + 4E) / 12 Threads, P-core up to 4.6GHz, E-core up to 3.4GHz, 12MB\r\nRAM: 1 x 8GB DDR5 5200MHz (2x SO-DIMM socket, up to 16GB SDRAM)\r\nỔ cứng: 1TB SSD M.2 2242 PCIe 4.0x4 NVMe (2 Slots: M2 2242 PCIe 4.0 x4 Slot, M.2 2280 PCIe 4.0 x4 Slot)\r\nCard đồ họa: NVIDIA® GeForce RTX™ 3050 6GB GDDR6, Boost Clock 2370MHz, TGP 95W\r\nMàn hình:15.6 inch FHD (1920x1080) IPS 350nits Anti-glare, 45% NTSC, 144Hz, G-SYNC', '18.900.000', '2024-05-08', 1),
(6, 'Card đồ họa MSI GeForce GTX 1650 VENTUS XS 4G OC', 'linh kiện', 'https://product.hstatic.net/200000449805/product/1_16e8db7e9951469e9ff06633d8ab00f8_master.png', 'Chip đồ họa: GeForce GTX 1650\r\nBộ nhớ:	4 GB GDDR5\r\nOC Mode: Boost 1740 MHz\r\nGaming Mode: Không\r\nSố lượng đơn vị xử lý: 896 CUDA Cores\r\nTản nhiệt: 2 quạt\r\nThương hiệu: MSI\r\nXuất xứ: Trung Quốc', '4.190.000', '2024-05-08', 3),
(7, 'Tai nghe không dây Logitech G435', '- Tai nghe Logitech G435 thiết kế trọng lượng siêu nhẹ, chỉ 165 gram\r\n- Màng loa 40mm thế hệ mới cho âm thanh tuyệt vời\r\n- Hỗ trợ 2 kết nối không dây: LightSpeed và Bluetooth\r\n- Hỗ trợ đa nền tảng Windows, các thiết bị di động (Bluetooth), hỗ trợ cả PS4, PS5\r\n- Phạm vi hoạt động 10m\r\n- Thơi lượng pin lên tới 18 giờ', 'https://lh3.googleusercontent.com/7CdE9PkTBBdMwUYJzF_h4GMYRKMUywMuClTtVnZNjFFFzQQZciJ_XUmoL-h6l8nCyNebqj0fxj9J4aGZFR8E0TWNdVMJj3f5=w1000-rw', 'Kiểu: Over-ear\r\nKết nối: Bluetooth\r\nMàu sắc: Trắng\r\nKiểu kết nối: Tai nghe không dây\r\nĐèn LED: Không đèn\r\nMicrophone: Có\r\nKích thước driver: 40 mm\r\nTrở kháng: 45 ohms\r\nTần số phản hồi: 20 Hz-20 KHz\r\nĐộ nhạy: 83,1 dB SPL/mW\r\nKhối lượng: 165 g', '1.489.000', '2024-05-08', 4),
(8, 'Tai nghe gaming không dây INZONE H7 SONY WH-G700/WZ', '- Được trang bị 360 Spatial Sound dành cho Chơi game giúp phát hiện chính xác đối thủ\r\n- Trang bị công nghệ âm thanh tiên tiến nhờ kích hoạt phần mềm PC INZONE Hub\r\n- Thiết kế đệm tai êm ái cho trải nghiệm đeo thoải mái hàng giờ\r\n- Kết nối 2,4 GHz đồng thời với kết nối Bluetooth\r\n-Tích hợp Mic tiện lợi gập xuống để nói, gập lên để tắt tiếng', 'https://lh3.googleusercontent.com/plM7UBvcUTPvzrPLY0y8vmg_OsHVzwUMDKUu-MqEy6iujx0rowIuBdeJ06VxAevjcUG8L-mK57gklDZ_yidj8x7lTDZ0SorP=w500-rw', 'Kiểu: Over-ear\r\nKết nối: Bluetooth\r\nMàu sắc: Trắng\r\nKiểu kết nối: Tai nghe không dây\r\nĐèn LED: Không đèn\r\nMicrophone: Có\r\nKích thước driver: 40 mm\r\nTần số phản hồi: 5 Hz – 20.000 Hz\r\nKiểu pin: Lithium-ion polymer\r\nKhối lượng: 325g', '4.900.000', '2024-05-08', 4),
(9, 'Màn hình LCD SAMSUNG 27\" LS27CG510EEXXV', 'màn hình', 'https://lh3.googleusercontent.com/zroOC0ffMc1f_14uRVggChbvKlbhl6UaXWICaczbBmKTtjyVJz7OCYE4aXzBKaJMgtIY2yrNXrX9OcHIEQpG8AcveTpF-M0=w500-rw', 'Kích thước: 27\"\r\nĐộ phân giải: 2560 x 1440 ( 16:9 )\r\nTấm nền: VA\r\nTần số quét: 165Hz\r\nThời gian phản hồi: 1 ms\r\nKiểu màn hình: Màn hình phẳng\r\nCông nghệ đồng bộ: FreeSync Premium\r\nĐộ sáng: 300 cd/m2\r\nGóc nhìn: 178 (H) / 178 (V)\r\nKhả năng hiển thị màu sắc: 16.7 triệu màu\r\nĐộ tương phản tĩnh: 3,000:1\r\nBề mặt: Màn hình chống lóa\r\nHDR: hỗ trợ\r\nCổng xuất hình: 2 x HDMI , 1 x DisplayPort 1.4\r\nKhối lượng: 4.8 kg', '4.690.000', '2024-05-08', 2),
(10, 'Màn hình LCD Asus 23.6 VP247HAE', 'màn hình', 'https://lh3.googleusercontent.com/JTHCyBFvLlTnB8FNGeSQL9fQODEXwh0zj1XdvRgGjJjD90Yo6loNY8Q9wX2RT0iBPoQ6la3VA567ybLKvbqdl0xT3Ayqfw-w=w500-rw', 'Kích thước: 23.6\"\r\nĐộ phân giải: 1920 x 1080 ( 16:9 )\r\nTấm nền: VA LED\r\nTần số quét: 60Hz\r\nThời gian phản hồi: 5 ms\r\nKiểu màn hình: Màn hình phẳng\r\nĐộ sáng: 250 cd/m2\r\nGóc nhìn: 178 (H) / 178 (V)\r\nKhả năng hiển thị màu sắc: 16.7 triệu màu\r\nĐộ tương phản tĩnh: 3,000:1\r\nĐộ tương phản động: 100,000,000:1\r\nBề mặt: Màn hình chống lóa\r\nCổng xuất hình: 1 x HDMI 1.4 , 1 x VGA/D-sub\r\nKhối lượng: 5.8 kg', '2.890.000', '2024-05-08', 2),
(11, 'Mainboard GIGABYTE B760M DS3H DDR4', 'linh kiện', 'https://lh3.googleusercontent.com/R456bjilFfPSmy6hvQaAiNSYaG2cw08tFhs8vKOCfQdGiBJxaqDWYJoWunIBAPp4iG8B603HqI6PZA8EY7Uwg0A13AjMSGqw=w500-rw', 'Chipset: B760\r\nSocket: 1700\r\nKích thước: Micro-ATX\r\nKhe RAM tối đa: 4 khe\r\nKiểu RAM hỗ trợ: DDR4\r\nHỗ trợ bộ nhớ tối đa: 128GB\r\nBus RAM hỗ trợ: 5333MHz, 5133MHz, 5000MHz, 4933MHz, 4800MHz, 4700MHz, 4600MHz, 4500MHz, 4400MHz, 4300MHz\r\nLưu trữ: 4 x SATA 3 6Gb/s, 2 x M.2 NVMe\r\nKiểu khe M.2 hỗ trợ: M.2 NVMe\r\nCổng xuất hình: 1 x HDMI, 2 x DisplayPort, 1 x VGA/D-sub\r\nKhe PCI: 1 x PCI Express x16; 2 x PCI Express x1\r\nSố cổng USB:\r\n- 1 x USB Type-C\r\n- 3 x USB 3.2 (Tối đa 5)\r\n- 2 x USB 2.0(Tối đa 6)\r\nLAN: 1 x LAN 2.5Gb/s\r\nÂm thanh:\r\n- Realtek Audio CODEC\r\n- High Definition Audio\r\n- 2/4/5.1/7.1-channel', '2.949.000', '2024-05-08', 3),
(12, 'CPU INTEL Core i5-12400 (6C/12T, 2.50 GHz - 4.40 GHz, 18MB) - 1700', 'linh kiện', 'https://lh3.googleusercontent.com/wxwqYcEobO1IblY-dsEHmX1ilKSvQ2T28F0TnS7EI-dMslwjiBSivvjBAqu73-C1Oqd_cM7XYfMS_8Zerpvm67go4IZ9xcKA=w500-rw', 'CPU: Core i5-12400\r\nSeries: Core i5\r\nSocket: 1700\r\nSố nhân xử lý: 6\r\nSố luồng xử lý: 12\r\nCode name: Alder Lake\r\nThế hệ: Intel Core thế hệ thứ 12\r\nTốc độ xử lý: 2.50 GHz - 4.40 GHz\r\nCache: 18MB\r\nChip đồ họa: Intel UHD Graphics 730\r\nHyper-Threading: Có\r\nBộ nhớ hỗ trợ: DDR4/DDR5 Dual channel', '4.170.000', '2024-05-08', 3),
(13, 'Màn hình LCD ASUS 31.5 TUF Gaming VG32VQ-J', 'màn hình', 'https://lh3.googleusercontent.com/qj9RHIvVlqkRdU3ZksQBcUmtlSSZCJCDsb1a67-vxzpp7ddC0WjrdDuGcDYCNfk8raLSOmy_AfxT6eCv1kU6OKK5wlQUKZRv=w500-rw', 'Kích thước: 31.5\"\r\nĐộ phân giải: 2560 x 1440 ( 16:9 )\r\nTấm nền: VA LED\r\nTần số quét: 144Hz\r\nThời gian phản hồi: 1 ms\r\nKiểu màn hình: Màn hình cong\r\nCông nghệ đồng bộ: FreeSync Premium\r\nĐộ sáng: 400 cd/m2\r\nGóc nhìn: 178 (H) / 178 (V)\r\nKhả năng hiển thị màu sắc: 16.7 triệu màu\r\nĐộ tương phản tĩnh: 3,000:1\r\nBề mặt: Màn hình chống lóa\r\nHDR: hỗ trợ\r\nCổng xuất hình: 2 x HDMI 2.0 , 1 x DisplayPort 1.2\r\nKhối lượng: 13.39 kg', '8.390.000', '2024-05-08', 2),
(14, 'Loa vi tính Microlab B27', 'phụ kiện', 'https://lh3.googleusercontent.com/J8DqaV-VmryrV0kd_OURYdFX_XZt8M8mFPXcmfdsoMi6QAicU9xuHUW2Mwqs2gOGOd2pgaPEqDaEnXia5PjNodS6gRNUYFkG=w500-rw', 'Loại kết nối của loa: Loa có dây\r\nCông suất tổng: 10W\r\nKết nối: 3.5 mm\r\nTần số phản hồi: 120Hz - 20 KHz', '289.000', '2024-05-08', 4),
(15, 'Bàn phím + Chuột Newmen không dây K103', 'phụ kiện', 'https://lh3.googleusercontent.com/DVXtw_WuqiVwNd4WmacZUV0iG_0NnR_iEd_0vDCCAWuD9VIWaUEnE2mUG6L0nQLeXfpSXNEbABByCgG5jg=w500-rw', 'Kết nối bàn phím: Wireless', '329.000', '2024-05-08', 4),
(16, 'Bàn phím không dây Logitech K580 (Trắng)', 'phụ kiện', 'https://lh3.googleusercontent.com/wJo_xZXs6ENGNtO6Z7xbuPcuHIQlw6EyDnoP5NhVRDY0rGpC6bPfAzUhYB0o7Xof6gZsHJstURd6yOeI1zoahBwfXFRAyz3D=w500-rw', 'Màu sắc: Trắng\r\nKết nối: Bàn phím không dây\r\nKết nối bàn phím: Bluetooth, 2.4 GHz Wireless\r\nLoại bàn phím: Bàn phím thường\r\nĐèn: Không led\r\nKiểu pin: 2-AAA', '949.000', '2024-05-08', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `email` varchar(100) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `tenNguoiDung` varchar(500) NOT NULL,
  `sdt` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`email`, `pass`, `tenNguoiDung`, `sdt`) VALUES
('thienv.22it@vku.udn.vn', '123', 'Võ Thiện', '0392796953');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
