-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 11:18 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `console_rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Playstation', NULL, NULL),
(2, 'Nintendo', NULL, NULL),
(3, 'Xbox\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `consoles`
--

CREATE TABLE `consoles` (
  `id_console` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `console_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consoles`
--

INSERT INTO `consoles` (`id_console`, `id_category`, `console_name`, `harga`, `deskripsi`, `images`, `created_at`, `updated_at`) VALUES
(1, 1, 'Playstation 5', 50000, 'Experience lightning-fast loading with an ultra-high-speed SSD, deeper immersion with support for haptic feedback, adaptive triggers and 3D Audio,* and an all-new generation of incredible PlayStation® games.', 'ps5.png', NULL, NULL),
(2, 1, 'Playstation 4 Pro', 40000, 'Play the latest games in amazing 4K1 clarity; sunsets become warmer, materials take on realistic textures and environments come alive like never before.', 'ps4Pro.png', NULL, NULL),
(3, 1, 'Playstation 4', 30000, 'The PS4 console, delivering awesome gaming power, incredible entertainment and vibrant HDR technology.1', 'ps4.png', NULL, NULL),
(4, 2, 'Nintendo Switch', 30000, 'Nintendo Switch is designed to fit your life, transforming from home console to portable system in a snap. TV mode.', 'nintendo_switch.png', '2021-05-25 23:01:11', '2021-05-31 16:09:36'),
(5, 2, 'Nintendo Switch Lite', 20000, 'The system for gamers on the go. The Nintendo Switch Lite is designed specifically for handheld play—so you can jump into your favorite games wherever you happen to be.', 'nintendo_switch_lite.png', '2021-05-31 23:41:21', '2021-06-02 02:20:54'),
(6, 3, 'Xbox Series S', 55000, 'The next generation of gaming brings our largest digital launch library yet to our smallest Xbox ever. With more dynamic worlds, faster load times, and the addition of Xbox Game Pass', 'xbox-s.png', '2021-05-31 23:43:29', '2021-05-31 23:43:29'),
(7, 3, 'Xbox Series X', 60000, 'The Xbox Series X has higher end hardware, and supports higher display resolutions (up to 8K resolution) along with higher frame rates and real-time ray tracing; it also has a high-speed solid-state drive to reduce loading times.', 'xbox-x.png', '2021-05-31 16:31:14', '2021-05-31 16:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id_game` int(11) NOT NULL,
  `id_console` int(11) NOT NULL,
  `game_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id_game`, `id_console`, `game_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Returnal', NULL, NULL),
(2, 1, 'Sackboy: A Big Adventure', NULL, NULL),
(4, 1, 'Demon\'s Souls', NULL, NULL),
(5, 3, 'Marvel\'s Spider-Man: Miles Morales', NULL, NULL),
(6, 3, 'Watch Dogs: Legion', NULL, NULL),
(7, 3, 'Assassin\'s Creed Valhalla', NULL, NULL),
(10, 4, 'Pokémon™: Let’s Go, Pikachu!', '2021-06-03 00:30:34', '2021-06-03 00:30:34'),
(11, 5, 'Pokémon™: Let’s Go, Pikachu!', '2021-06-03 00:30:40', '2021-06-03 00:30:40'),
(12, 4, 'Monster Hunter Rise', '2021-06-03 00:55:05', '2021-06-03 00:55:05'),
(13, 5, 'Monster Hunter Rise', '2021-06-03 00:55:10', '2021-06-03 00:55:10'),
(14, 4, 'Kirby Fighters™ 2', '2021-06-03 01:07:16', '2021-06-03 01:07:16'),
(15, 5, 'Kirby Fighters™ 2', '2021-06-03 01:07:19', '2021-06-03 01:07:19'),
(16, 4, 'Mario Golf™: Super Rush', '2021-06-03 01:07:45', '2021-06-03 01:07:45'),
(17, 5, 'Mario Golf™: Super Rush', '2021-06-03 01:07:50', '2021-06-03 01:07:50'),
(18, 6, 'BIOMUTANT®', '2021-06-03 01:13:17', '2021-06-03 01:13:17'),
(19, 7, 'BIOMUTANT®', '2021-06-03 01:13:22', '2021-06-03 01:13:22'),
(20, 2, 'Marvel\'s Spider-Man: Miles Morales', '2021-06-03 01:14:38', '2021-06-03 01:14:38'),
(21, 2, 'Watch Dogs: Legion', '2021-06-03 01:14:48', '2021-06-03 01:14:48'),
(22, 2, 'Assassin\'s Creed Valhalla', '2021-06-03 01:14:56', '2021-06-03 01:14:56'),
(23, 6, 'Call of Duty®: Modern Warfare®', '2021-06-03 01:27:15', '2021-06-03 01:27:15'),
(24, 7, 'Call of Duty®: Modern Warfare®', '2021-06-03 01:27:18', '2021-06-03 01:27:18'),
(25, 6, 'Subnautica: Below Zero', '2021-06-03 01:27:44', '2021-06-03 01:27:44'),
(26, 7, 'Subnautica: Below Zero', '2021-06-03 01:27:48', '2021-06-03 01:27:48'),
(27, 6, 'NBA 2K21', '2021-06-03 01:28:40', '2021-06-03 01:28:40'),
(28, 7, 'NBA 2K21', '2021-06-03 01:28:43', '2021-06-03 01:28:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2021_05_26_050910_create_category_table', 2),
(17, '2021_05_26_050938_create_consoles_table', 2),
(18, '2021_05_29_044814_create_carts_table', 2),
(19, '2021_05_29_052947_create_games_table', 2),
(21, '2021_05_31_064859_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `games` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `item_name`, `duration`, `price`, `total_price`, `status`, `games`, `created_at`, `updated_at`) VALUES
(8, 1, 'Playstation 5', '3', 50000, 150000, 'Selesai', 'Returnal, Sackboy: A Big Adventure', '2021-05-31 08:08:52', '2021-06-02 02:58:19'),
(9, 1, 'Playstation 4', '3', 30000, 90000, 'Selesai', 'Marvel\'s Spider-Man: Miles Morales, Watch Dogs: Legion', '2021-05-31 08:08:52', '2021-06-02 02:58:20'),
(10, 4, 'Playstation 4 Pro', '5', 40000, 200000, 'Selesai', 'Watch Dogs: Legion, Marvel\'s Spider-Man: Miles Morales', '2021-06-03 01:36:19', '2021-06-03 01:39:10'),
(11, 4, 'Xbox Series S', '5', 55000, 275000, 'Selesai', 'Subnautica: Below Zero, Call of Duty®: Modern Warfare®', '2021-06-03 01:36:19', '2021-06-03 01:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `first_name`, `last_name`, `email`, `phone`, `birth_date`, `address`, `password`, `role`) VALUES
(1, 'Matthew', 'Marcellino', 'matthew.marcellino@yahoo.co.id', '085794933113', '2001-07-11', 'Taman Kopo Indah 2 3A 144', '$2y$10$iv6OIA.wyDkgjebvc6FxOO/.gZvSdlRH8R1THnWCe2YzXOdSbKGFS', 'user'),
(2, 'Admin', '-', 'admin@gmail.com', '-', '2001-07-11', '-', '$2y$10$VSaeL4c.viweJSCnn0GWiu48SwiCDyWO7mVilynDUY5fb.X8xQjqW', 'admin'),
(4, 'John', 'Mayer', 'johnmayer@gmail.com', '081355774659', '1988-05-23', 'London', '$2y$10$sbTGOh08Ned1VxhGGXjVCeTYvBKMlx/7G9HThYJm/iJvsBZOSf24C', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `consoles`
--
ALTER TABLE `consoles`
  ADD PRIMARY KEY (`id_console`),
  ADD KEY `consoles_id_category_foreign` (`id_category`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id_game`),
  ADD KEY `games_id_console_foreign` (`id_console`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `consoles`
--
ALTER TABLE `consoles`
  MODIFY `id_console` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consoles`
--
ALTER TABLE `consoles`
  ADD CONSTRAINT `consoles_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_id_console_foreign` FOREIGN KEY (`id_console`) REFERENCES `consoles` (`id_console`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
