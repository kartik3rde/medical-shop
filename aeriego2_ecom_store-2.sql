-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2020 at 08:16 AM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aeriego2_ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', '\r\n\r\n\r\n\r\n\r\n\r\n An online shop evokes the physical analogy of buying products or services at a regular \"bicks-and mortar\" retaileror shopping.\r\n  center the process is called business-to consumer(B2C) online shopping .\r\n\r\n\r\n\r\n\r\n', '<p><strong>&nbsp;Online medicine shopping is a form of electronic commerce which allows consumers to directly buy goods or services from a&nbsp;&nbsp;seller over the internet using a web browser .</strong></p>\r\n<h3 style=\"font-family: lucida;\">Consumers find a product&nbsp; of interest by visiting the website of the retailer&nbsp;&nbsp;directly or by searching among alternative vendors using a shopping search engine which display the same&nbsp; products available&nbsp;and pricing at different e-retailers.as of 2016 customers can shop online using a range of different computers and devices ,&nbsp; including desktop computers,laptops,tablet computers and samrtphones<strong>.</strong>&nbsp;<strong>An online shop evokes the physical analogy of buying products or services at a regular \"bicks-and mortar\" retaileror shopping.center the process is called business-to consumer(B2C) online shopping .When an online store is set up to anable businesses to buy from another businesses the process is called business-to business(B2B)online shopping .A typical openssl_spki_new&nbsp;store enables the customer to browser&nbsp; the firms range of products and services view photos or images of the products ,along with information about the product specifications features and prices.</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp;</p>\r\n<p>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'kartik sharma', 'kartik3rde@gmail.com', '123', 'thumb-1920-665091.jpg', '9074064802', 'india', 'Front-End Developer', '  Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical  '),
(3, 'shama', 'shama123@gmail.com', 'shama', 'P1.jpg', '1234567876', 'india', 'front-end-developer', ' gfghttrfjfj'),
(4, 'Shama&pooja', 'Shamapooja@gmail.com', 'shamapooja', 'images (8).jpeg', '5678987654', 'India', 'Front-end developer', '    We(pooja & shama)are developed this project together  &#128515;&#128512;    '),
(5, 'Pooja yadav', 'Pooja123@gmail.com', 'pooja', 'images (8).jpeg', '5467876543', 'India', 'Front-end developer', ' Front-end- developer'),
(6, 'shaili', 'shaili@gmail.com', 'shaili', 'feedback_system.sql', '9998081212', 'India', 'developer', ' hdkfhldgvssbckd');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `uId` varchar(50) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `uId`, `ip_add`, `qty`, `p_price`, `size`) VALUES
(13, '', '47.8.150.196', 0, '100', ''),
(20, '', '27.61.248.157', 2, '60', ''),
(16, 'amanbhadrecha875@gmail.com', '27.57.206.16', 3, '59', ''),
(20, '', '27.61.254.240', 2, '60', ''),
(20, '', '27.61.227.106', 5, '60', ''),
(2, '', '27.61.130.33', 2, '69', ''),
(20, 'Sonam@gmail.com', '27.61.130.33', 1, '60', ''),
(20, 'Sonam@gmail.com', '27.61.130.33', 0, '60', ''),
(15, '', '27.61.213.19', 0, '150', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(6, 'test', 'yes', 'Screenshot 2020-04-09 at 8.18.00 AM.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'sad.ahmed22224@gmail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(3, 20, 'blue-tablet', '40', '333444   ', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'user', 'user@ave.com', '123', 'United State', 'New York', '0092334566931', 'new york', 'user.jpg', '::1', ''),
(4, 'Sonam', 'Sonam@gmail.com', 'Sonm123', 'India', 'Ankleshwar', '4567898765', 'Radhepark', 'Screenshot_2020-05-18-13-20-32-979_com.zhiliaoapp.musically.png', '106.213.166.31', '920670947'),
(6, 'kartik sharma', 'amanbhadrecha875@gmail.com', 'Hardwork@123', 'india', 'indore', '9074094802', 'indore', 'IMG_20200214_150013.jpg', '27.56.228.212', '1107127252'),
(10, 'pooja', 'pooja@gmail.com', 'Linux@123', 'india', 'indore', '90742054545', 'indroe', 'Screenshot 2020-04-09 at 8.18.00 AM.png', '27.56.223.14', '1837262242'),
(11, 'Zeenat', 'Zeenat@gmail.com', 'zeenat123', 'India', 'Ankleshwar', '78987898765', 'Jitali', 'IMG-20200524-WA0007.jpg', '106.77.142.6', '1594785157'),
(12, 'pooja new testing', 'pooja2@gmail.com', 'Linux@123', 'India', 'indore', '90742054545', 'indore', 'IMG_20200214_121935 (1).jpg', '106.207.255.15', '1762474392'),
(13, 'Sumaina', 'Sumaina@gmail.com', 'sumaina123', 'India', 'Surat', '4567898654', 'Ragini', 'Screenshot_2020-05-28-14-01-28-456_com.zhiliaoapp.musically.png', '27.61.158.149', '825788221');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `productJson` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `productJson`, `order_date`, `order_status`) VALUES
(39, 6, 300, 1887735040, 0, '', '[{\"p_id\":\"18\",\"uId\":\"amanbhadrecha875@gmail.com\",\"ip_add\":\"27.57.206.16\",\"qty\":\"2\",\"p_price\":\"150\",\"size\":\"\"}]', '2020-05-31 11:11:08', 'Complete'),
(40, 6, 360, 1334539352, 0, '', '[{\"p_id\":\"18\",\"uId\":\"amanbhadrecha875@gmail.com\",\"ip_add\":\"27.57.206.16\",\"qty\":\"2\",\"p_price\":\"150\",\"size\":\"\"},{\"p_id\":\"20\",\"uId\":\"amanbhadrecha875@gmail.com\",\"ip_add\":\"27.57.206.16\",\"qty\":\"1\",\"p_price\":\"60\",\"size\":\"\"}]', '2020-05-24 08:59:13', 'Process'),
(41, 11, 200, 178893670, 0, '', '[{\"p_id\":\"14\",\"uId\":\"Zeenat@gmail.com\",\"ip_add\":\"106.77.142.6\",\"qty\":\"2\",\"p_price\":\"100\",\"size\":\"\"}]', '2020-05-30 12:12:52', 'Process'),
(44, 12, 180, 1946153788, 0, '', '[{\"p_id\":\"20\",\"uId\":\"pooja2@gmail.com\",\"ip_add\":\"106.207.255.15\",\"qty\":\"2\",\"p_price\":\"40\",\"size\":\"\"},{\"p_id\":\"13\",\"uId\":\"pooja2@gmail.com\",\"ip_add\":\"106.207.255.15\",\"qty\":\"1\",\"p_price\":\"100\",\"size\":\"\"}]', '2020-05-29 07:36:53', 'Pending'),
(45, 11, 120, 1762026322, 0, '', '[{\"p_id\":\"20\",\"uId\":\"Zeenat@gmail.com\",\"ip_add\":\"106.76.91.103\",\"qty\":\"2\",\"p_price\":\"60\",\"size\":\"\"}]', '2020-05-29 12:34:20', 'Cancel'),
(49, 11, 118, 903932097, 0, '', '[{\"p_id\":\"16\",\"uId\":\"Zeenat@gmail.com\",\"ip_add\":\"112.110.73.238\",\"qty\":\"2\",\"p_price\":\"59\",\"size\":\"\"}]', '2020-05-29 12:49:41', 'Pending'),
(50, 13, 240, 2079434227, 0, '', '[{\"p_id\":\"33\",\"uId\":\"Sumaina@gmail.com\",\"ip_add\":\"27.61.158.149\",\"qty\":\"2\",\"p_price\":\"120\",\"size\":\"\"},{\"p_id\":\"18\",\"uId\":\"Sumaina@gmail.com\",\"ip_add\":\"27.61.158.149\",\"qty\":\"0\",\"p_price\":\"150\",\"size\":\"\"}]', '2020-06-02 04:54:41', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'cipla', 'no', 'tab7.jpg'),
(3, 'manforce', 'no', 'sy5.jpg'),
(4, 'sun  Pharmacy', 'no', 'tab8.png');

-- --------------------------------------------------------

--
-- Table structure for table `orderReview`
--

CREATE TABLE `orderReview` (
  `id` int(11) NOT NULL,
  `orderId` varchar(50) NOT NULL,
  `userId` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderReview`
--

INSERT INTO `orderReview` (`id`, `orderId`, `userId`, `name`, `message`) VALUES
(9, '50', 'Sumaina@gmail.com', 'Sumaina', ' I want a better quality'),
(8, '44', 'pooja2@gmail.com', 'kartik sharma', ' testat');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni Paisa', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni Paisa', 443, 865, '11/1/2016'),
(4, 2147483647, 200, 'Bank Code', 0, 0, '24-5-20'),
(5, 2455, 400, 'Bank Code', 0, 0, '23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(2, 5, 6, 2, '2020-05-20 15:45:25', 'Herbobiuld Capsules', 'product-url-2', 'aayu1.jpg', 'aayu2.jpg', 'aayu3.jpg', 69, 45, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', '', '', '', '', 'product'),
(13, 4, 6, 2, '2020-05-20 15:37:15', 'tset', 'test', 'Screenshot 2020-04-18 at 8.45.07 AM.png', '', '', 100, 80, '<p>dfgsdsfsaf asf&nbsp;</p>', '', '', '', '', 'product'),
(15, 7, 6, 4, '2020-05-18 08:58:39', 'Paracetamol', 'Orange-yellow-tablet', 'images.jpeg', '', '', 150, 300, '', '', '', '', '', 'product'),
(16, 7, 6, 4, '2020-05-18 08:58:00', 'Crocin', 'Blue-white-tablet', 'images (1).jpeg', '', '', 59, 69, '', '', '', '', '', 'product'),
(17, 6, 6, 4, '2020-05-18 09:01:50', 'Syrup', 'Blue-white-syrup', 'download.jpeg', '', '', 250, 400, '', '', '', '', '', 'product'),
(18, 6, 6, 2, '2020-05-18 09:10:11', 'Stomach relief', 'Orange-white-syrup', 'images (2).jpeg', '', '', 150, 300, '', '', '', '', '', 'product'),
(20, 6, 6, 3, '2020-05-20 15:39:12', 'koflet', 'white-grey-syrup', 'aayu9.jpg', '', '', 60, 50, '', '', '', '', '', 'product'),
(21, 7, 0, 4, '2020-05-31 06:35:49', 'Stomach relief', 'Blue-white-tablet', 'IMG_20200531_120531.png', '', '', 250, 100, '', '', '', '', '', 'product'),
(22, 5, 0, 4, '2020-05-31 07:13:33', 'Teething catches drop', 'Orange-white-drop', 'IMG_20200531_121120.png', '', '', 300, 250, '', '', '', '', '', 'product'),
(23, 4, 0, 2, '2020-05-31 07:13:12', 'Eye drops', 'Blue-white-drop', 'IMG_20200531_121417.png', '', '', 400, 300, '', '', '', '', '', 'product'),
(24, 7, 0, 4, '2020-05-31 06:48:57', 'Chest pain', 'Orange-yellow-tablet', 'IMG_20200531_121743.png', '', '', 300, 200, '', '', '', '', '', 'product'),
(25, 4, 0, 2, '2020-05-31 07:14:08', 'Lower back pain', 'Green-white-syrup', 'IMG_20200531_122109.png', '', '', 350, 250, '', '', '', '', '', 'product'),
(26, 5, 0, 4, '2020-05-31 07:14:30', 'Ear drop', 'Blue-white-drop', 'IMG_20200531_122426.png', '', '', 250, 100, '', '', '', '', '', 'product'),
(27, 7, 0, 3, '2020-05-31 07:12:33', 'Leg&back pain relief', 'Red-blue-tablet', 'IMG_20200531_124018.png', '', '', 400, 250, '', '', '', '', '', 'product'),
(28, 7, 0, 4, '2020-05-31 07:17:45', 'Stomach relief for kids', 'Yellow-white-tablet', 'IMG_20200531_124607.png', '', '', 350, 276, '', '', '', '', '', 'product'),
(29, 4, 0, 2, '2020-05-31 16:03:48', 'cough syrup', 'blue-white', 'aayu6.jpg', '', '', 120, 150, '', '', '', '', '', 'product'),
(30, 5, 0, 3, '2020-05-31 16:06:42', 'stonil', 'pink-white', 'homeo3.jpg', '', '', 90, 120, '', '', '', '', '', 'product'),
(31, 6, 0, 3, '2020-05-31 16:08:49', 'fever', 'blue-white', 'sy1.jpg', '', '', 100, 130, '', '', '', '', '', 'product'),
(32, 7, 0, 4, '2020-05-31 16:11:08', 'IBUPROFEN', 'orange-white', 'tab4.jpg', '', '', 100, 140, '', '', '', '', '', 'product'),
(33, 4, 0, 4, '2020-05-31 16:12:40', 'Elemer', 'white-brown', 'aayu4.jpg', '', '', 120, 140, '', '', '', '', '', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'aayurvedic', 'no', 'aayu1.jpg'),
(5, 'homeopathic', 'no', 'homeo1.jpg'),
(6, 'Syrup', 'no', 'sy8.jpg'),
(7, 'tablet', 'yes', 'tab1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'London Store', 'store (3).jpg', '<p style=\"text-align: center;\"><strong>180-182 RECENTS STREET, LONDON, W1B 5BT</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(5, 'New York Store', 'store (1).png', '<p style=\"text-align: center;\"><strong>109 COLUMBUS CIRCLE, NEW YORK, NY10023</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(6, 'Paris Store', 'store (2).jpg', '<p style=\"text-align: center;\"><strong>2133 RUE SAINT-HONORE, 75001 PARIS&nbsp;</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 4, 16),
(4, 5, 16),
(5, 6, 18),
(6, 6, 2),
(7, 7, 16),
(8, 7, 17),
(9, 9, 18),
(10, 4, 15),
(11, 11, 20),
(12, 6, 20),
(13, 12, 14),
(14, 12, 17),
(15, 13, 33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `orderReview`
--
ALTER TABLE `orderReview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orderReview`
--
ALTER TABLE `orderReview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
