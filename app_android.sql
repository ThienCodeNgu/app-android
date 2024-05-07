-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 01:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_android`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(500) NOT NULL,
  `hinhanh` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `tendanhmuc`, `hinhanh`) VALUES
(1, 'Máy Tính', 'https://cdn.nguyenkimmall.com/images/companies/_1/womens-day/1200x628/pc2.png'),
(2, 'Màn Hình', 'https://www.lg.com/vn/images/man-hinh-may-tinh/md07565854/gallery/N04_D4.jpg'),
(3, 'Linh Kiện', 'https://bcavn.com/Image/Picture/New/linh-kien-may-tinh.png'),
(4, 'Phụ Kiện', 'https://congnghevadoisong.vn/files/image003.png');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
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
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `tensanpham`, `mota`, `hinhanh`, `thongso`, `gia`, `thoigian`, `id_danhmuc`) VALUES
(1, 'Asus ROG Strix G513QC HN015T', 'máy tính', 'https://techcare.net.vn/wp-content/uploads/2022/07/asus-gaming-rog-strix-g513qc-hn015t-10-768x768.jpg', 'CPU: AMD RYZEN 7-4800H\r\nRAM: 8GB\r\nỔ cứng: SSD 512GB\r\nCard đồ họa: NVIDIA GEFORCE RTX 3050TI 4GB\r\nMàn Hình: 15.6 INCH FULL HD\r\n', '18.700.000', '2024-05-05', 1),
(2, 'Acer Predator Helios Neo 2023', 'máy tính', 'https://techcare.net.vn/wp-content/uploads/2022/08/acer-predator-helios-16-2023.jpg', 'CPU: CORE I7-13700HX.\r\nRAM: 16GB.\r\nỔ cứng: SSD 512GB.\r\nCard đồ họa: NVIDIA GEFORCE RTX 4050 6GB\r\nMàn hình: 16 INCH FULL HD', '28.900.000', '2024-05-05', 1),
(3, 'Laptop HP 14s-em0086AU R5', 'máy tính', 'https://product.hstatic.net/200000680839/product/2e97bbcc-10ce-4a1a-b89c-17b534a25d39_4ba683fa309343609729ffe878f4e2e4.jpg', 'CPU: AMD, RYZEN 5, 7520U\r\nRAM: 16GB\r\nỔ cứng: SSD 512GB\r\nCard đồ họa: AMD Radeon Graphics\r\nMàn hình: 14 inch, 1920 x 1080 Pixels, SVA, 60 Hz, 250 nits, FHD\r\n', '13.490.000', '2024-03-05', 1),
(5, 'Lenovo LOQ 15IRH8', 'máy tính', 'https://techcare.vn/image/lenovo-loq-15irh8-1-ro7ce0j.jpg', 'CPU: Intel® Core™ i5-13420H, 8 Cores (4P + 4E) / 12 Threads, P-core up to 4.6GHz, E-core up to 3.4GHz, 12MB\r\nRAM: 1 x 8GB DDR5 5200MHz (2x SO-DIMM socket, up to 16GB SDRAM)\r\nỔ cứng: 1TB SSD M.2 2242 PCIe 4.0x4 NVMe (2 Slots: M2 2242 PCIe 4.0 x4 Slot, M.2 2280 PCIe 4.0 x4 Slot)\r\nCard đồ họa: NVIDIA® GeForce RTX™ 3050 6GB GDDR6, Boost Clock 2370MHz, TGP 95W\r\nMàn hình:15.6 inch FHD (1920x1080) IPS 350nits Anti-glare, 45% NTSC, 144Hz, G-SYNC', '18.900.000', '2024-05-08', 1),
(6, 'Card đồ họa MSI GeForce GTX 1650 VENTUS XS 4G OC', 'linh kiện', 'https://product.hstatic.net/200000449805/product/1_16e8db7e9951469e9ff06633d8ab00f8_master.png', 'Chip đồ họa: GeForce GTX 1650\r\nBộ nhớ:	4 GB GDDR5\r\nOC Mode: Boost 1740 MHz\r\nGaming Mode: Không\r\nSố lượng đơn vị xử lý: 896 CUDA Cores\r\nTản nhiệt: 2 quạt\r\nThương hiệu: MSI\r\nXuất xứ: Trung Quốc', '4.190.000', '2024-05-08', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
