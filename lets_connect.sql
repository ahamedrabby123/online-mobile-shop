-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 12:15 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lets_connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `mark_as_read` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `msg`, `mark_as_read`) VALUES
(10, 'Rita Rahman ', 'rita1@gmail.com', 'please add some new product ', 1),
(11, 'Alina Moon', 'moon@gmail.com', 'I have received you product. Product quality was very good.', 0),
(12, 'Sk Emon', 'emon@gmai.com', 'Can you please reduce the vat %. Thank you. ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `p_id`, `amount`, `name`, `phone`, `address`, `status`) VALUES
(3, 61, 68498, 'Redwan Rafi', '0156456', 'Dhaka ', 'pending'),
(4, 61, 68498, 'Redwan Rafi 2', '0156456', 'Dhaka ', 'pending'),
(5, 42, 91600, 'redwanalirafi', '0156456000', 'Bashundhara RA', 'pending'),
(6, 55, 52750, 'Rayhan', '01424564564', 'Noyatola,Saidpur, Nilphamarai.', 'pending'),
(7, 48, 68498, 'Test1', '0156456', 'Dhk', 'pending'),
(8, 49, 92648, 'Redwan Rafi', '0156456', 'asdasdfas', 'delivered'),
(9, 45, 85300, 'Redwan Rafi', '0156456000', 'road 5,block c, Bashundhara RA', 'pending'),
(10, 48, 68498, 'redwanalirafi', '0156456', 'Test 66', 'delivered'),
(11, 54, 36475, 'Fahim', '0156456000', 'dummy details', 'pending'),
(12, 60, 28598, 'Fahim', '0156456000', 'bashundhara', 'delivered');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `seller` varchar(50) DEFAULT NULL,
  `pending` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `seller`, `pending`) VALUES
(42, 'karim', 1),
(43, 'karim', 1),
(44, 'marufAhmed', 1),
(45, 'marufAhmed', 1),
(46, 'siamahmed', 1),
(47, 'siamahmed', 1),
(48, 'rahmed', 1),
(49, 'rahmed', 1),
(50, 'karim', 1),
(51, 'karim', 1),
(52, 'marufAhmed', 1),
(53, 'marufAhmed', 1),
(54, 'karim', 1),
(55, 'karim', 1),
(56, 'marufAhmed', 1),
(57, 'marufAhmed', 1),
(58, 'siamahmed', 1),
(59, 'siamahmed', 1),
(60, 'rahmed', 1),
(61, 'rahmed', 1),
(62, 'karim', 1),
(63, 'karim', 1),
(64, 'marufAhmed', 1),
(65, 'marufAhmed', 1),
(66, 'marufAhmed', 1),
(72, 'khaled ', 1),
(74, 'khaled', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `display` varchar(50) NOT NULL,
  `processor` varchar(50) NOT NULL,
  `fcam` varchar(50) NOT NULL,
  `rcam` varchar(50) NOT NULL,
  `storage` varchar(50) NOT NULL,
  `battery` varchar(50) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `connectivity` varchar(50) NOT NULL,
  `sim` varchar(50) NOT NULL,
  `sensor` varchar(50) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `r_date` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `brand`, `model`, `display`, `processor`, `fcam`, `rcam`, `storage`, `battery`, `ram`, `color`, `connectivity`, `sim`, `sensor`, `picture`, `r_date`, `price`) VALUES
(42, 'Samsung', 'Samsung Galaxy Note10', '6.3inch', 'Exynos 9825', '10 MP', '12+12+16 MP', '256GB', '3500 mAh', '8GB', 'Black', 'NFC', 'Dual nano', 'Accelerometer, gyro', 'https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-note10-.jpg', 'Aug-18', 87000),
(43, 'Samsung', 'Samsung Galaxy A03 Core', '6.5inch', 'Unisoc SC9863A', '5 MP', '8 MP', '32 GB', '5000 MA', '2GB', 'Black', 'No NFC', 'Dual nano', 'Accelerometer,proximity', 'https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-a03-core.jpg', 'Nov-15', 9900),
(44, 'Samsung', 'Samsung Galaxy M31', '6.4inch', 'Exynos 9611', '32 MP', '64 Mp', '64 GB', '6000 MA', '6 GB', 'Blue', 'NFC', 'Dual nano', 'Accelerometer, gyro', 'https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-m31-sm-m315f.jpg', 'June-20', 23000),
(45, 'Samsung', 'Samsung Galaxy S20', '6.2 inch', 'Exynos 990', '12 MP', '64 MP,', '128GB', '4000 mAh', '8 GB', 'Black', 'NFC', 'Hybrid Dual SIM', 'Accelerometer, gyro', 'https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-s20-.jpg', 'March-26,2020', 81000),
(46, 'Apple', 'Apple iphone 13 Pro Max', '6.7 inch', 'Apple A15 Bionic', '12 MP', '12 MP', '128GB', '4352 mAh', '6GB', 'Graphite, Gold,', 'NFC', 'Dual SIM', 'Face ID, accelerometer, gyro, proximity, compass, ', 'https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-pro-max.jpg', 'September 14', 162999),
(47, 'Apple', 'Apple iphone 12', '6.1 inch', 'Apple A14 Bionic', '12 MP', '12 MP', '256GB', 'Li-Ion 2815 mAh', '8GB', 'Blue', 'NFC', 'Single Nano-Sim', 'Face ID, accelerometer, gyro, proximity, compass', 'https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12.jpg', '2020, October 13', 122750),
(48, 'Apple', 'Apple iphone 7 plus', '5.5 inch', 'Apple A10 Fusion', '7 MP', '12 MP', '128GB', 'Li-Ion 2900 mAh', '3GB', 'Silver', 'NFC', 'Nano-SIM', 'Fingerprint (front-mounted), accelerometer, gyro, ', 'https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-7-plus-r2.jpg', 'September 19', 64999),
(49, 'Apple', 'Apple iphone 11', '6.1 inch', 'Apple A13 Bionic', '12 MP', '12 MP', '256GB', 'Li-Ion 3110 mAh', '4GB', 'White', 'NFC', 'Single SIM or Dual SIM', 'Face ID, accelerometer, gyro, proximity, compass', 'https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-11.jpg', 'September 10', 87999),
(50, 'Realme', 'Realme GT Master', '6.43 inch', 'Qualcomm SM7325 Snapdragon 778G 5G', '32 MP', '64 MP', '128GB', 'Li-Po 4300 mAh', '8GB', 'Black, Gray,', 'NFC', 'Dual SIM', 'Fingerprint (under display, optical), acceleromete', 'https://fdn2.gsmarena.com/vv/pics/realme/realme-gt-master-1.jpg', 'July 21,2021', 33999),
(51, 'Realme', 'Realme GT Neo2', '6.62 inch', 'Qualcomm SM8250-AC Snapdragon 870 5G (', '16 MP', '64 MP', '256GB', 'Li-Po 5000 mAh', '8GB', 'Neo Black, Neo Blue, Neo Green', 'NFC', 'Dual SIM', 'Fingerprint (under display, optical), acceleromete', 'https://fdn2.gsmarena.com/vv/bigpic/realme-gt-neo2.jpg', 'September 28,2021', 39990),
(52, 'Realme', 'Realme 9i', '6.6 inch', 'Qualcomm SM6225 Snapdragon 680 4G', '16 MP', '50 MP', '128GB', 'Li-Po 5200 mAh', '6GB', 'Black', 'No NFC', 'Dual SIM', 'Fingerprint (side-mounted), accelerometer, gyro, p', 'https://fdn2.gsmarena.com/vv/bigpic/realme-9i-r.jpg', 'Nov 23, 2021', 15200),
(53, 'Realme', 'Realme 8', '6.4 inch', 'Mediatek Helio G95', '16 MP', '64 MP', '128GB', 'Li-Po 5000 mAh', '8GB', 'Cyber Silver', 'NFC', 'Dual SIM', 'Fingerprint (under display, optical), acceleromete', 'https://fdn2.gsmarena.com/vv/bigpic/realme-8.jpg', 'March 25,2021', 22000),
(54, 'OnePlus', 'OnePlus Nord 2 CE', '6.43 inch', 'MediaTek MT6877 Dimensity 900 5G', '16 MP', '64 MP', '256GB', 'Li-Po 4500 mAh', '12GB', 'Gray, Olive Green', 'NFC', 'Dual SIM', 'Fingerprint (under display, optical), acceleromete', 'https://fdn2.gsmarena.com/vv/bigpic/oneplus-nord-2-ce-r.jpg', 'Dec 10, 2021', 34500),
(55, 'OnePlus', 'OnePlus Nord 9 RT 5G', '6.62 inch', 'Qualcomm SM8350 Snapdragon 888 5G', '16 MP,', '50 MP', '256GB', 'Li-Po 4500 mAh', '12GB', 'Black, Silver, Blue', 'NFC', 'Dual SIM', 'Fingerprint (under display, optical), acceleromete', 'https://fdn2.gsmarena.com/vv/bigpic/oneplus-9-rt-r.jpg', 'Octpober 19,2021', 50000),
(56, 'OnePlus', 'OnePlus 9 pro', '6.7 inch', 'Qualcomm SM8350 Snapdragon 888 5G', '16 MP', '48 MP', '128GB', 'Li-Po 4500 mAh', '8GB', 'Morning Mist, Forest Green', 'NFC', 'Dual SIM', 'Fingerprint (under display, optical), acceleromete', 'https://fdn2.gsmarena.com/vv/bigpic/oneplus-9-pro-.jpg', 'March 30, 2021', 23999),
(57, 'OnePlus', 'OnePlus 10 pro', '6.7 inch', 'Qualcomm SM8450 Snapdragon 8 Gen1', '32 MP', '48 MP', '256GB', 'Li-Po 5000 mAh', '12GB', 'Black', 'NFC', 'Dual SIM', 'Fingerprint (under display, optical), acceleromete', 'https://fdn2.gsmarena.com/vv/bigpic/oneplus-10-pro-r.jpg', 'December 18,2021', 35000),
(58, 'Xiaomi', 'Pocophone X3 Pro', '6.67 Inch', 'Qualcomm Snapdragon 860', '20MP', '48MP', '256GB', 'Li-Po 5160 mAh, non-removable', '8GB', 'Blue', 'NFC', 'Hybrid Dual SIM', 'Proximity sensor, Ambient light sensor', 'https://fdn2.gsmarena.com/vv/bigpic/xiaomi-poco-x3-pro-.jpg', 'Sept 2020', 28000),
(59, 'Xiaomi', 'Redmi Note 10 Pro Max', '6.67 Inch', 'Qualcomm® Snapdragon™ 732G', '16MP', '108MP', '128GB', '5020mAh Li-Polymer Battery', '6GB', 'Vintage Bronze', 'No', 'nanoSIM', '360̊ Ambient Light sensor, Proximity, sensor, E Co', 'https://fdn2.gsmarena.com/vv/bigpic/xiaomi-redmi-note10-pro-india.jpg', '4th March 2021', 30999),
(60, 'Xiaomi', 'Redmi Note 10 Pro ', '6.67 Inch', 'Qualcomm® Snapdragon™ 732G', '16MP', '108MP', '128GB', '5020mAh Li-Polymer Battery', '6GB', 'Vintage Bronze', 'No', 'nanoSIM', '360̊ Ambient Light sensor, Proximity, sensor, E Co', 'https://fdn2.gsmarena.com/vv/bigpic/xiaomi-redmi-note10-pro.jpg', '2021, March 17', 26999),
(61, 'Xiaomi', 'Xiaomi 11T Pro', '6.67 Inch', 'Qualcomm®️ Snapdragon™️ 888G', '16MP', '108MP', '256GB', '5000mAh (typ) battery*', '8GB', 'Celestial Blue', 'NFC', 'Dual SIM', '360̊ Ambient Light sensor, Proximity, sensor, E Co', 'https://fdn2.gsmarena.com/vv/bigpic/xiaomi-11t-pro.jpg', '2021, October 05', 64999),
(62, 'Xiaomi', 'Xiaomi 11 Lite 5G NE', '6.55 Inch', 'Qualcomm® Snapdragon™ 778G', '20MP', '64MP', '256GB', '4250mAh battery (typ)', '8GB', 'Truffle Black', 'No', 'SIM 1 + Hybrid (SIM or MicroSD)', '360̊ Ambient Light sensor, Proximity, sensor, E Co', 'https://fdn2.gsmarena.com/vv/bigpic/xiaomi-11-lite-5g-ne.jpg', '2021, October 02', 45999),
(63, 'Google Pixel', 'Pixel 6 Pro', '6.7-inch', 'Google Tensor Titan M2™ security coprocessor', '64MP', '64MP', '512 GB', '5003 mAh', '12 GB LPDDR5 ram', 'Cloudy White', 'No', 'Dual Sim', 'Proximity sensor, Ambient light sensor', 'https://fdn2.gsmarena.com/vv/bigpic/google-pixel-6-pro.jpg', '2021, October 28', 77118),
(64, 'Google Pixel', 'Pixel 6', '6.4-inch', 'Google Tensor Titan M2™ security coprocessor', '64MP', '64MP', '128GB', '4600mah', '8 GB', 'Sorta Seafoam', 'No', 'Dual Sim', 'Proximity sensor, Ambient light sensor', 'https://fdn2.gsmarena.com/vv/bigpic/google-pixel-6.jpg', 'October 19', 51500),
(65, 'Google Pixel', 'Google Pixel 5a with 5G', '6.3-inch', 'Qualcomm® Snapdragon™ 765G', '64MP', '64MP', '128GB', '4700mah', '6GB', 'Sorta Sunny', 'No', 'Single Sim', 'Proximity sensor, Ambient light sensor', 'https://fdn2.gsmarena.com/vv/bigpic/google-pixel-5a-5g.jpg', '2021, August 26', 40500),
(66, 'Google Pixel', 'Google Pixel 4a', '5.8-inch', 'Qualcomm® Snapdragon™ 730G', '64MP', '64MP', '128GB', '3100mah', '6GB', 'Kinda Coral', 'No', 'Single Sim', 'Proximity sensor, Ambient light sensor', 'https://fdn2.gsmarena.com/vv/bigpic/google-pixel-4a.jpg', 'August 20, 2020', 32000),
(72, 'Apple', ' Apple iPhone 14 Pro', '6.1 inches', 'Apple A16 Bionic (4 nm)', '12 MP', '48 MP/ 12 MP', '256GB', 'Li-Ion 3200 mAh', '6GB', 'White, Black, Purple ', 'NFC', 'Single SIM or Dual SIM', 'Face ID, accelerometer, gyro, proximity, compass, ', 'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-pro-4.jpg', '', 172999),
(74, 'Apple', 'Apple iPhone 14 Pro Max', '6.3 inches', 'Apple A16 Bionic (4 nm)', '12 MP', '48 MP', '256GB', 'Li-Ion 3200 mAh', '6GB', 'White', 'NFC', 'Single SIM or Dual SIM', 'Face ID, accelerometer, gyro, proximity, compass,', 'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-pro-3.jpg', '', 182999);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `power` varchar(30) NOT NULL,
  `create_time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `full_name`, `email`, `phone`, `power`, `create_time`) VALUES
('khaled ', '1898', 'Md.Khaled Hossain', 'khaled@gmail.com ', '01949896374', 'admin', '2023-04-29'),
('mehedi', '123', 'Mehedi Hasan', 'mehedi@gmail.com', '017213659', 'seller', '2023-05-27'),
('nirjhor', '147', 'Nirjhor Saha', 'nirjhor@gmai.com', '01325698541', 'buyer', '2023-05-27'),
('skemon ', '153', 'Khaled hossain', 'emon@gmail.com', '01521576720', 'buyer', '2023-04-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_ibfk_1` FOREIGN KEY (`id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
