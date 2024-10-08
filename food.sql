-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 05:22 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `menu`) VALUES
(2, 'fods', 'and this is an amercan food\r\n', 'http://localhost/food/img/categories/menu-title-sushi.jpg', 1),
(4, 'americany', 'and this is an amercan food&#13;&#10;', 'http://localhost/food/img/categories/menu-title-pizza.jpg', 1),
(13, 'ITALYAN', 'this is a italyan foods', 'http://localhost/food/img/categories/menu-title-pasta.jpg', 1),
(32, 'Burgers', 'this is a Burger foods', 'http://localhost/food/img/categories/menu-title-desserts.jpg', 1),
(64, 'cat toassd2', '', 'http://food.test/img/categories/rlux085b5bef3f2a.jpg', 56),
(69, 'my cateee', '', 'http://food.test/img/categories/rlwdgf9e3b3a67c2.jpg', 56);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `icon`) VALUES
(1, 'U.S. Dollar', '$'),
(2, 'European Euro', '€'),
(3, 'Japanese Yen', 'JPY'),
(4, 'British Pound', 'GBP');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `price`, `description`, `image`, `category`) VALUES
(3, 'Aliquam sagittis', 22, 'Nam in suscipit nisi, sit amet consectetur metus. Ut sit amet tellus accumsan\r\n\r\n', 'http://localhost\\food\\img\\foods\\rdj4fdefe20fdc47.jpg', 2),
(4, 'Quisque et felis eros\r\n', 12, 'Nam in suscipit nisi, sit amet consectetur metus. Ut sit amet tellus accumsan\r\n\r\n', 'http://localhost/food/img/foods/04.jpg', 4),
(8, 'Pot Appetizers', 45, 'The best part about the Instant Pot is that it\'s basically foolproof. Drop in the ingredients, ', 'http://localhost\\food\\img/foods/rdj3cxb4c1421771.jpg', 13),
(9, 'Veggie Sandwich', 55, 'Listen I love sandwiches, especially those that have meat in them (see my obsession with the iconic', 'http://localhost\\food\\img/foods/rdj3d4bfc093510a.jpg', 4),
(10, 'Pancakes', 25, 'type of candies but it is very good and had a 5 start as a rate from USF', 'http://localhost\\food\\img/foods/rdj3db8bffc7f62b.jpeg', 13),
(42, 'pizzzaa marchleno', 3, 'lorem Ipsum Some Words For Testing', 'http://food.test/img/foods/default.jpg', 64),
(43, 'alot of foods', 10, 'lorem Ipsum Some Words For Testing', 'http://food.test/img/foods/default.jpg', 69),
(51, 'testing food', 20, 'lorem Ipsum Some Words For Testing', 'http://food.test/img/foods/default.jpg', 69);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `restaurant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `description`, `image`, `restaurant`) VALUES
(1, 'sanabel ramazan menu', 'test descrtiption', 'http://localhost/food/img/menus/default-ramadan.jpg', 1),
(56, 'testing menu', 'testing description for menu', 'http://food.test/img/menus/ro82s4ecf62732f7.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url_name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `logo_secondary` varchar(255) DEFAULT NULL,
  `number` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `order_msg` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `currency` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `url_name`, `logo`, `logo_secondary`, `number`, `whatsapp`, `instagram`, `order_msg`, `address`, `currency`) VALUES
(1, 'sanabel', 'sanabel', 'http://localhost\\food\\img\\logos\\resm-logo.svg', 'http://localhost\\food\\img\\logos\\resm-logo-white.svg', '00905527188570', '00905527188570', '', 'hey! i like to order ( ## ) wich cost foodprice how much time will it take?', 'esenyurt meydan', 2),
(2, 'empty R', 'empty-R', 'default.jpg', NULL, '05434344522', '05434344522', '', 'hi i want to oerder', 'saudi arabia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `permission` tinyint(4) NOT NULL DEFAULT 2,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `permission`, `restaurant_id`) VALUES
(1, 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 1),
(2, 'mudirator', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_category` (`menu`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_food` (`category`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_resteaurant` (`restaurant`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url_name` (`url_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_users` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `menu_category` FOREIGN KEY (`menu`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `category_food` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_resteaurant` FOREIGN KEY (`restaurant`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `currency_website` FOREIGN KEY (`currency`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `restaurant_users` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
