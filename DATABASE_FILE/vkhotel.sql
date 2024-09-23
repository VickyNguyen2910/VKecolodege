-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 23, 2024 at 04:41 AM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vkhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int NOT NULL,
  `admin_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `admin_pass` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(2, 'hank', '2024');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int NOT NULL,
  `booking_id` int NOT NULL,
  `room_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `total_pay` int NOT NULL,
  `room_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `phonenum` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(107, 108, 'Premium Executive Bungalows', 6000000, 6000000, NULL, 'abc', '0908123456', 'abc'),
(108, 109, 'Garden Suite bungalows', 9000000, 9000000, NULL, 'abc', '0908123456', 'abc'),
(109, 110, 'Garden Suite bungalows', 9000000, 9000000, NULL, 'abc', '0908123456', 'abc'),
(110, 111, 'Deluxe Suite Bungalow', 8000000, 8000000, NULL, 'abc', '0908123456', 'abc'),
(111, 112, 'Garden Suite bungalows', 9000000, 9000000, NULL, 'abc', '0908123456', 'abc'),
(112, 113, 'Deluxe Suite Bungalow', 8000000, 8000000, NULL, 'abc', '0908123456', 'abc'),
(113, 114, 'Deluxe Suite Bungalow', 8000000, 8000000, NULL, 'abc', '0908123456', 'abc'),
(114, 115, 'Garden Suite bungalows', 9000000, 9000000, NULL, 'abc', '0908123456', 'abc'),
(115, 116, 'Biệt thự hồ bơi', 11000000, 11000000, NULL, 'abc', '0908123456', 'abc'),
(116, 117, 'Premium Executive Bungalows', 6000000, 6000000, NULL, 'abc', '0908123456', 'abc'),
(117, 118, 'Biệt thự hồ bơi', 11000000, 22000000, NULL, 'abc', '0908123456', 'abc'),
(118, 119, 'Biệt thự hồ bơi', 11000000, 22000000, NULL, 'abc', '0908123456', 'abc'),
(119, 120, 'Premium Executive Bungalows', 6000000, 6000000, NULL, 'abc', '0908123456', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int NOT NULL,
  `user_id` int NOT NULL,
  `room_id` int NOT NULL,
  `check_in` date NOT NULL,
  `arrival` int NOT NULL DEFAULT '0',
  `refund` int DEFAULT NULL,
  `check_out` date NOT NULL,
  `booking_status` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Đã Đặt',
  `order_id` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `trans_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trans_amt` int NOT NULL,
  `trans_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Đã Đặt',
  `trans_resp_msg` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rate_review` int DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `arrival`, `refund`, `check_out`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(108, 11, 10, '2024-09-07', 0, NULL, '2024-09-08', 'Đã Huỷ', 'ORD_117116274', NULL, 0, '', NULL, NULL, '2024-09-03 16:12:47'),
(109, 11, 11, '2024-09-10', 1, NULL, '2024-09-11', 'Đã Thanh Toán', 'ORD_112081472', NULL, 9000000, 'TXN_SUCCESS', NULL, NULL, '2024-09-03 16:18:24'),
(110, 11, 11, '2024-09-14', 0, NULL, '2024-09-15', 'Đã Thanh Toán', 'ORD_111670795', NULL, 0, '', NULL, NULL, '2024-09-03 16:24:08'),
(111, 11, 12, '2024-09-06', 0, NULL, '2024-09-07', 'Đã Huỷ', 'ORD_11147801', NULL, 0, '', NULL, NULL, '2024-09-03 16:24:38'),
(112, 11, 11, '2024-09-05', 0, NULL, '2024-09-06', 'Đã Thanh Toán', 'ORD_111100260', NULL, 0, '', NULL, NULL, '2024-09-03 16:30:50'),
(113, 11, 12, '2024-09-19', 1, NULL, '2024-09-20', 'Đã Thanh Toán', 'ORD_119323981', NULL, 8000000, 'TXN_SUCCESS', NULL, NULL, '2024-09-03 16:31:31'),
(114, 11, 12, '2024-10-05', 0, NULL, '2024-10-06', 'Đã Đặt', 'ORD_117582537', NULL, 0, '', NULL, NULL, '2024-09-03 16:34:00'),
(115, 11, 11, '2024-09-18', 0, 0, '2024-09-19', 'Đã Huỷ', 'ORD_113408688', NULL, 0, '', NULL, NULL, '2024-09-15 19:43:06'),
(116, 11, 13, '2024-09-16', 0, NULL, '2024-09-17', 'Đã Huỷ', 'ORD_114208008', NULL, 0, '', NULL, NULL, '2024-09-15 20:11:59'),
(117, 11, 10, '2024-09-28', 0, 0, '2024-09-29', 'Đã Huỷ', 'ORD_11262156', NULL, 0, '', NULL, NULL, '2024-09-21 16:09:14'),
(118, 11, 13, '2024-09-26', 0, 0, '2024-09-28', 'Đã Huỷ', 'ORD_119795913', NULL, 22000000, 'Đã Đặt', NULL, NULL, '2024-09-21 17:27:01'),
(119, 11, 13, '2024-09-27', 0, NULL, '2024-09-28', 'Đã Đặt', 'ORD_11411001', NULL, 22000000, 'Đã Đặt', NULL, NULL, '2024-09-21 17:29:09'),
(120, 11, 10, '2024-09-26', 1, NULL, '2024-09-27', 'Đã Thanh Toán', 'ORD_112769421', NULL, 6000000, 'TXN_SUCCESS', NULL, NULL, '2024-09-22 21:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int NOT NULL,
  `file_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `type` enum('image','video') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `file_name`, `type`) VALUES
(27, 'On_a_hilltop_high_in_the_Sapa_mountains_1.mp4', 'video');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `gmap` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `pn1` bigint NOT NULL,
  `pn2` bigint NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `fb` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `insta` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tw` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `iframe` varchar(300) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, '126 Nguyễn Thiện Thành, Phường 5, Trà Vinh', 'https://maps.app.goo.gl/2y5N4ucb2XaFMYv86', 2943855246, 2943855246, 'tvu@tvu.edu.vn', 'https://www.facebook.com/TraVinhUniversity.TVU', 'https://www.facebook.com/', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3930.1260734058806!2d106.34394437563795!3d9.923456874345874!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0175ea296facb:0x55ded92e29068221!2sTrà Vinh University!5e0!3m2!1sen!2s!4v1725294304878!5m2!1sen!2s');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(13, 'IMG_43553.svg', 'Wifi', 'Wifi trong khách sạn cho phép khách hàng kết nối internet không dây tốc độ cao, có thể truy cập vào các trang web yêu thích của họ, xem phim, nghe nhạc, tải xuống các tài liệu, và liên lạc với người thân và bạn bè. '),
(14, 'IMG_49949.svg', 'Điều Hoà', ' Khách hàng có thể dễ dàng điều chỉnh nhiệt độ và các tính năng khác trên điều hòa để đáp ứng các nhu cầu của họ và tạo ra một không gian nghỉ ngơi lý tưởng.'),
(15, 'IMG_41622.svg', 'Tivi', 'TV cung cấp cho khách hàng nhiều kênh truyền hình đa dạng và phong phú, bao gồm cả các kênh quốc tế và địa phương, các kênh phim, chương trình giải trí, tin tức, thể thao và giáo dục'),
(17, 'IMG_47816.svg', 'Spa', 'Tại spa, khách hàng có thể trải nghiệm các liệu pháp chăm sóc da, tắm thủy lực, massage và nhiều dịch vụ khác.'),
(18, 'IMG_96423.svg', 'Máy Sưởi', 'Máy sưởi phòng được thiết kế để giữ cho phòng ấm áp và thoải mái trong suốt mùa đông.'),
(19, 'IMG_27079.svg', 'Nóng Lạnh', 'Được trang bị các tính năng và thiết bị hiện đại như màn hình LCD hiển thị nhiệt độ, điều khiển từ xa, cảm biến nhiệt độ và chức năng tự động điều chỉnh nhiệt độ nước.');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(18, 'Phòng Ngủ'),
(19, 'Ban Công'),
(20, 'Phòng Bếp'),
(21, 'Ghế sofa');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int NOT NULL,
  `booking_id` int NOT NULL,
  `room_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  `review` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `seen` int NOT NULL DEFAULT '0',
  `datentime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(15, 110, 11, 11, 5, 'Good!', 0, '2024-09-03 16:38:44'),
(16, 116, 13, 11, 5, 'Phòng thoáng, view đẹp, chuẩn 5 sao.', 0, '2024-09-15 20:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `area` int NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `adult` int NOT NULL,
  `children` int NOT NULL,
  `description` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `removed` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(3, 'Phòng Bình Dân', 30, 800000, 4, 5, 3, 'Các tiện nghi trong phòng khách sạn bao gồm các ghế sofa và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, máy sưởi, hệ thống chiếu sáng.', 1, 1),
(4, 'Phòng VIP 1', 40, 1000000, 3, 5, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 1),
(5, 'Phòng Vip 2', 40, 1200000, 3, 8, 6, 'Các tiện nghi trong phòng khách sạn bao gồm các ghế sofa và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, máy sưởi, hệ thống chiếu sáng, tủ quần áo và giường ngủ thoải mái.', 1, 1),
(6, 'Phòng Vip 3', 50, 1500000, 7, 9, 10, 'Các tiện nghi trong phòng khách sạn bao gồm các ghế sofa và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, máy sưởi, hệ thống chiếu sáng, tủ quần áo và giường ngủ thoải mái.', 1, 1),
(7, 'Phòng Đơn', 20, 800000, 2, 2, 2, 'phòng rộng rãi', 1, 1),
(8, 'Phòng Đơn', 20, 500000, 2, 2, 2, 'rộng rãi thoáng mát', 1, 1),
(9, 'Phòng standard', 24, 800000, 4, 2, 1, 'Các tiện nghi trong phòng bao gồm các ghế và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, hệ thống chiếu sáng, tủ quần áo và giường ngủ thoải mái.', 1, 1),
(10, 'Premium Executive Bungalows', 28, 6000000, 1, 2, 1, 'Đây là loại phòng tiêu chuẩn của VKecolodge! Mỗi Premium Executive Bungalow toát lên vẻ đẹp mộc mạc từ tường đá vững chãi, đến giường ngủ sang trọng trong tông màu trung tính và đồ nội thất bằng gỗ. Ban công lớn là nơi bạn có thể ngắm nhìn núi non và thung lũng bên ngoài.\r\n\r\nCác Premium Executive Bungalow được đặt ở vị trí cuối khu nghỉ dưỡng giúp bạn tận hưởng những phút giây êm ả, tĩnh lặng cùng thiên nhiên.', 1, 0),
(11, 'Garden Suite bungalows', 56, 9000000, 0, 2, 1, 'Rộng rãi nhưng vẫn ấm cúng, các Garden Suite Bungalow được xây dựng theo kiểu nhà gỗ hai tầng và trang trí theo phong cách Bắc Âu tối giản. Nằm ở cuối khu nghỉ dưỡng, tất cả các Garden Suite Bungalow đều có tầm nhìn phóng ra quang cảnh đẹp ngỡ ngàng của những ngọn núi cao chót vót, đan xen với rừng thông xum xuê vững chãi, hay thung lũng ruộng bậc thang trứ danh.\r\n\r\nBạn có thể tận hưởng bức tranh tuyệt tác của thiên nhiên ấy ngay tại ban công trong phòng riêng.\r\n\r\nMỗi Garden Suite Bungalow có thể thông sang một Premium Executive Bungalow qua một khu vườn riêng, có trang bị bàn ghế ngoài trời, hoàn hảo cho một gia đình hoặc nhóm bạn.', 1, 0),
(12, 'Deluxe Suite Bungalow', 60, 8000000, 3, 2, 1, 'Deluxe Suite Bungalow sở hữu các trang thiết bị thân thiện môi trường hiện đại nhất. Với sàn nhà và nước sinh hoạt được làm ấm bằng hệ thống máy bơm không khí đặt ngầm, bạn có thể an tâm thư giãn hoàn toàn trong không gian tiện nghi mà vẫn đảm bảo môi trường được bảo vệ.\r\n\r\nDeluxe Suite Bungalow được bày trí theo phong cách Bắc Âu trang nhã. Từ cả hai tầng của mỗi bungalow kiểu dáng nhà gỗ miền núi đều có tầm nhìn ấn tượng hướng ra những đỉnh núi trập trùng và những thung lũng sớm chiều mây phủ. Bên cạnh đó, vị trí nằm gần hồ bơi vô cực và Rice Spa là một điểm cộng của hạng phòng này.', 1, 0),
(13, 'Biệt thự hồ bơi', 87, 11000000, 5, 2, 4, 'Trải nghiệm không gian nguyên bản nhất của Sapa tại hạng phòng cao cấp nhất của VKecolodge – Biệt thự Hồ Bơi hay Pool Villa với tầm nhìn toàn cảnh tuyệt đẹp hướng núi và thung lũng xung quanh từ ban công và bể bơi bốn mùa của phòng. \r\n\r\nVới không gian tách biệt tại VKecolodge, đây là sự lựa chọn hoàn hảo cho những người hướng đến trải nghiệm riêng tư trong kỳ nghỉ của mình.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int NOT NULL,
  `room_id` int NOT NULL,
  `facilities_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(107, 10, 13),
(108, 10, 14),
(109, 10, 15),
(110, 10, 17),
(111, 10, 18),
(112, 10, 19),
(113, 11, 13),
(114, 11, 14),
(115, 11, 15),
(116, 11, 17),
(117, 11, 18),
(118, 11, 19),
(119, 12, 13),
(120, 12, 14),
(121, 12, 15),
(122, 12, 17),
(123, 12, 18),
(124, 12, 19),
(131, 13, 13),
(132, 13, 14),
(133, 13, 15),
(134, 13, 17),
(135, 13, 18),
(136, 13, 19);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int NOT NULL,
  `room_id` int NOT NULL,
  `features_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(72, 10, 18),
(73, 10, 19),
(74, 10, 20),
(75, 10, 21),
(76, 11, 18),
(77, 11, 19),
(78, 11, 20),
(79, 11, 21),
(80, 12, 18),
(81, 12, 19),
(82, 12, 20),
(83, 12, 21),
(88, 13, 18),
(89, 13, 19),
(90, 13, 20),
(91, 13, 21);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int NOT NULL,
  `room_id` int NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `thumb` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(36, 10, 'IMG_76751.webp', 0),
(37, 10, 'IMG_28441.webp', 0),
(38, 10, 'IMG_16711.webp', 0),
(39, 10, 'IMG_42386.jpg', 0),
(40, 10, 'IMG_94620.webp', 1),
(41, 11, 'IMG_27570.webp', 1),
(42, 11, 'IMG_14063.webp', 0),
(43, 11, 'IMG_40799.jpg', 0),
(44, 11, 'IMG_42078.webp', 0),
(45, 11, 'IMG_40571.webp', 0),
(46, 12, 'IMG_65143.webp', 1),
(48, 12, 'IMG_50790.jpg', 0),
(49, 12, 'IMG_47542.webp', 0),
(50, 12, 'IMG_14522.jpg', 0),
(51, 12, 'IMG_77638.jpg', 0),
(52, 13, 'IMG_52237.jpg', 1),
(53, 13, 'IMG_27825.jpg', 0),
(54, 13, 'IMG_41910.jpg', 0),
(55, 13, 'IMG_70052.webp', 0),
(56, 13, 'IMG_69144.webp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int NOT NULL,
  `site_title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `site_about` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'VKecolodge', 'VK ecolodge là một nhà nghỉ nhỏ nằm trên đỉnh đồi tuyệt đẹp sâu trong dãy núi của Vườn quốc gia Hoàng Liên, chỉ cách thị trấn Sapa 45 phút ở miền Bắc Việt Nam. Khu nghỉ dưỡng tốt nhất tại Sapa Việt Nam.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phonenum` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_verified` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `dob`, `profile`, `password`, `is_verified`, `status`) VALUES
(11, 'abc', 'test@gmail.com', 'abc', '0908123456', '2024-09-03', 'IMG_15239.png', '$2y$10$nbMmieS6uzuG0kJTgXmkgO.OhYeYL8RqDlkN7y9Tf.Py8T0gyRYBW', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `subject` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `message` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `datentime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seen` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(16, 'Nguyen A', 'nguyenabcd@gmail.com', 'Hi', 'Tôi cần hỏi về thông tin khách sạn.', '2024-09-15 20:14:12', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`),
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`),
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
