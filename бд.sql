-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 08 2026 г., 18:57
-- Версия сервера: 12.3.3-MariaDB-ubu2404-log
-- Версия PHP: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gmbase_site`
--
CREATE DATABASE IF NOT EXISTS `gmbase_site` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `gmbase_site`;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_logs`
--

CREATE TABLE `admin_logs` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `action` varchar(64) NOT NULL,
  `target_type` varchar(32) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_logs`
--

INSERT INTO `admin_logs` (`id`, `admin_id`, `action`, `target_type`, `target_id`, `details`, `amount`, `ip`, `created_at`) VALUES
(4, 5, 'admin_login', 'self', 5, 'Вход в админку', NULL, '77.79.145.176', '2026-10-16 20:12:18'),
(11, 5, 'user_delete', 'user', 1, 'Удалён \'Рустем Батыров\'', NULL, '77.79.145.176', '2026-10-16 20:24:01'),
(12, 1, 'admin_login', 'self', 1, 'Вход в админку', NULL, '77.79.145.176', '2026-10-16 20:26:12'),
(13, 5, 'marzban_delete', 'user', 3, 'Удалена Marzban-подписка у \'Ильнур Ильдарович\'', NULL, '77.79.145.176', '2026-10-16 21:38:29'),
(14, 1, 'balance_add', 'user', 1, 'Начислено 500₽', 500.00, '77.79.145.176', '2026-10-16 21:54:55'),
(15, 1, 'balance_add', 'user', 3, 'Ильнур Ильдарович [ID 3, VK 276571560] — Начислено 11₽', 11.00, '77.79.145.176', '2026-10-16 22:20:05'),
(16, 5, 'admin_login', 'self', 5, 'Вход в админку', NULL, '77.79.145.176', '2026-10-18 04:42:58'),
(17, 1, 'admin_login', 'self', 1, 'Вход в админку', NULL, '77.79.145.176', '2026-10-18 04:46:31'),
(18, 1, 'role_change', 'user', 5, 'Ufa Gmbase [ID 5, VK 692527343] — Роль изменена: admin → support (Ufa Gmbase)', NULL, '77.79.145.176', '2026-10-18 04:46:38'),
(19, 1, 'balance_add', 'user', 5, 'Ufa Gmbase [ID 5, VK 692527343] — Начислено 3₽', 3.00, '77.79.145.176', '2026-10-18 04:49:18'),
(20, 5, 'balance_add', 'user', 1, 'Рустем Батыров [ID 1, VK 211280229] — Начислено 4₽', 4.00, '77.79.145.176', '2026-10-18 04:49:27'),
(21, 1, 'marzban_delete', 'user', 5, 'Ufa Gmbase [ID 5, VK 692527343] — Удаление подписки Marzban', NULL, '77.79.145.176', '2026-10-18 05:05:35'),
(22, 1, 'marzban_delete', 'user', 5, 'Ufa Gmbase [ID 5, VK 692527343] — Удаление подписки Marzban (было: до 25.10.2026)', NULL, '77.79.145.176', '2026-10-18 05:28:27'),
(23, 1, 'admin_login', 'self', 1, 'Вход в админку', NULL, '178.176.172.46', '2026-10-18 05:55:58'),
(24, 1, 'balance_add', 'user', 8, 'Кристина Кристина [ID 8, VK 493268039] — Начислено 60₽', 60.00, '178.176.172.46', '2026-10-18 06:44:58'),
(25, 1, 'admin_login', 'self', 1, 'Вход в админку', NULL, '188.162.205.122', '2026-10-20 07:36:42'),
(26, 1, 'balance_add', 'user', 9, 'Ильмира-И-Руслан Амировы [ID 9, VK 471620984] — Начислено 500₽', 500.00, '188.162.205.122', '2026-10-20 07:37:04'),
(27, 1, 'admin_login', 'self', 1, 'Вход в админку', NULL, '178.176.181.35', '2026-10-23 17:38:51'),
(28, 1, 'admin_login', 'self', 1, 'Вход в админку', NULL, '77.79.145.176', '2026-10-23 18:19:59'),
(29, 1, 'balance_add', 'user', 11, 'Lonely Wanderer [ID 11, VK 734047807] — Начислено 149₽', 149.00, '77.79.145.176', '2026-10-23 18:21:36'),
(30, 1, 'balance_add', 'user', 11, 'Lonely Wanderer [ID 11, VK 734047807] — Начислено 1₽', 1.00, '77.79.145.176', '2026-10-23 23:44:09'),
(31, 1, 'promocode_delete', 'promocode', 18, 'Удалён код 33321', NULL, '77.79.145.176', '2026-10-23 23:49:34'),
(32, 1, 'promocode_delete', 'promocode', 17, 'Удалён код 321', NULL, '77.79.145.176', '2026-10-23 23:49:37'),
(33, 1, 'promocode_delete', 'promocode', 16, 'Удалён код 123', NULL, '77.79.145.176', '2026-10-23 23:49:42'),
(34, 1, 'milestone_run', NULL, NULL, 'Проверка всех: проверено 1, начислено 0', NULL, '77.79.145.176', '2026-10-23 23:50:15'),
(35, 1, 'balance_add', 'user', 10, 'No Name [ID 10, VK 1098069562] — Начислено 59₽', 59.00, '77.79.145.176', '2026-10-24 00:09:20'),
(36, 5, 'admin_login', 'self', 5, 'Вход в админку', NULL, '77.79.145.176', '2026-10-24 12:29:29'),
(37, 1, 'ticket_close', 'ticket', 1, 'Тикет закрыт', NULL, '77.79.145.176', '2026-10-24 13:58:08'),
(38, 1, 'admin_login', 'self', 1, 'Вход в админку', NULL, '77.239.102.91', '2026-10-30 00:53:03'),
(39, 1, 'admin_login', 'self', 1, 'Вход в админку', NULL, '178.176.171.210', '2026-10-31 13:20:56'),
(40, 1, 'balance_add', 'user', 10, 'No Name [ID 10, VK 1098069562] — Начислено 200₽', 200.00, '178.176.171.210', '2026-10-31 13:21:17'),
(41, 1, 'admin_login', 'self', 1, 'Вход в админку', NULL, '77.79.145.176', '2026-11-07 22:36:42'),
(42, 1, 'admin_login', 'self', 1, 'Вход в админку', NULL, '77.79.145.176', '2026-11-08 18:27:44'),
(43, 1, 'balance_add', 'user', 1, 'Рустем Батыров [ID 1, VK 211280229] — Начислено 1₽', 1.00, '77.79.145.176', '2026-11-08 19:06:12'),
(44, 1, 'promocode_create', 'promocode', 20, 'Создан код 123', NULL, '77.79.145.176', '2026-11-08 23:06:05'),
(45, 1, 'promocode_delete', 'promocode', 20, 'Удалён код 123', NULL, '77.79.145.176', '2026-11-08 23:06:57'),
(46, 1, 'promocode_create', 'promocode', 21, 'Создан код 321', NULL, '77.79.145.176', '2026-11-08 23:07:01'),
(47, 1, 'promocode_delete', 'promocode', 21, 'Удалён код 321', NULL, '77.79.145.176', '2026-11-08 23:10:40'),
(48, 1, 'promocode_create', 'promocode', 22, 'Создан код 123', NULL, '77.79.145.176', '2026-11-08 23:10:44'),
(49, 1, 'promocode_create', 'promocode', 23, 'Создан код 333', NULL, '77.79.145.176', '2026-11-08 23:11:01'),
(50, 1, 'promocode_create', 'promocode', 25, 'Создан код 444', NULL, '77.79.145.176', '2026-11-08 23:11:38'),
(51, 1, 'promocode_create', 'promocode', 27, 'Создан код 222', NULL, '77.79.145.176', '2026-11-08 23:12:01'),
(52, 1, 'promocode_delete', 'promocode', 27, 'Удалён код 222', NULL, '77.79.145.176', '2026-11-08 23:14:31'),
(53, 1, 'promocode_delete', 'promocode', 26, 'Удалён код SPIN_D1DA0308_1', NULL, '77.79.145.176', '2026-11-08 23:14:35'),
(54, 1, 'promocode_delete', 'promocode', 25, 'Удалён код 444', NULL, '77.79.145.176', '2026-11-08 23:14:40'),
(55, 1, 'promocode_delete', 'promocode', 23, 'Удалён код 333', NULL, '77.79.145.176', '2026-11-08 23:14:44'),
(56, 1, 'promocode_delete', 'promocode', 24, 'Удалён код SPIN_669C8069_1', NULL, '77.79.145.176', '2026-11-08 23:14:48'),
(57, 1, 'promocode_delete', 'promocode', 22, 'Удалён код 123', NULL, '77.79.145.176', '2026-11-08 23:14:52'),
(58, 1, 'promocode_create', 'promocode', 28, 'Создан код 123', NULL, '77.79.145.176', '2026-11-08 23:14:58'),
(59, 1, 'promocode_create', 'promocode', 29, 'Создан код 222', NULL, '77.79.145.176', '2026-11-08 23:18:06'),
(60, 1, 'promocode_create', 'promocode', 30, 'Создан код 1233', NULL, '77.79.145.176', '2026-11-08 23:20:10'),
(61, 1, 'promocode_delete', 'promocode', 30, 'Удалён код 1233', NULL, '77.79.145.176', '2026-11-08 23:24:11'),
(62, 1, 'promocode_delete', 'promocode', 29, 'Удалён код 222', NULL, '77.79.145.176', '2026-11-08 23:24:14'),
(63, 1, 'promocode_delete', 'promocode', 28, 'Удалён код 123', NULL, '77.79.145.176', '2026-11-08 23:24:17'),
(64, 1, 'promocode_create', 'promocode', 31, 'Создан код 111', NULL, '77.79.145.176', '2026-11-08 23:24:23'),
(65, 1, 'promocode_create', 'promocode', 32, 'Создан код 222', NULL, '77.79.145.176', '2026-11-08 23:29:20'),
(66, 1, 'promocode_delete', 'promocode', 31, 'Удалён код 111', NULL, '77.79.145.176', '2026-11-08 23:30:18'),
(67, 1, 'promocode_create', 'promocode', 33, 'Создан код 333', NULL, '77.79.145.176', '2026-11-08 23:30:21'),
(68, 1, 'promocode_create', 'promocode', 34, 'Создан код 444', NULL, '77.79.145.176', '2026-11-08 23:31:40'),
(69, 1, 'promocode_create', 'promocode', 35, 'Создан код 4444', NULL, '77.79.145.176', '2026-11-08 23:34:24'),
(70, 1, 'reward_create', 'reward', 9, 'Создан подарок: Скидка 30% (promocode=30)', NULL, '77.79.145.176', '2026-11-08 23:36:10'),
(71, 1, 'promocode_create', 'promocode', 36, 'Создан код 123', NULL, '77.79.145.176', '2026-11-08 23:36:25'),
(72, 1, 'promocode_delete', 'promocode', 36, 'Удалён код 123', NULL, '77.79.145.176', '2026-11-08 23:37:15'),
(73, 1, 'promocode_delete', 'promocode', 35, 'Удалён код 4444', NULL, '77.79.145.176', '2026-11-08 23:37:18'),
(74, 1, 'promocode_delete', 'promocode', 34, 'Удалён код 444', NULL, '77.79.145.176', '2026-11-08 23:37:21'),
(75, 1, 'promocode_delete', 'promocode', 33, 'Удалён код 333', NULL, '77.79.145.176', '2026-11-08 23:37:23'),
(76, 1, 'promocode_delete', 'promocode', 32, 'Удалён код 222', NULL, '77.79.145.176', '2026-11-08 23:37:26'),
(77, 1, 'promocode_create', 'promocode', 37, 'Создан код 11', NULL, '77.79.145.176', '2026-11-08 23:37:31'),
(78, 1, 'promocode_create', 'promocode', 38, 'Создан код 22', NULL, '77.79.145.176', '2026-11-08 23:42:54'),
(79, 1, 'promocode_create', 'promocode', 39, 'Создан код 33', NULL, '77.79.145.176', '2026-11-08 23:46:03'),
(80, 1, 'promocode_create', 'promocode', 40, 'Создан код SPIN_212312', NULL, '77.79.145.176', '2026-11-08 23:49:04'),
(81, 1, 'promocode_create', 'promocode', 41, 'Создан код 213', NULL, '77.79.145.176', '2026-11-08 23:54:53');

-- --------------------------------------------------------

--
-- Структура таблицы `bonus_spins`
--

CREATE TABLE `bonus_spins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `bonus_amount` int(11) NOT NULL,
  `is_used` tinyint(1) DEFAULT 1,
  `used_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `bonus_spins`
--

INSERT INTO `bonus_spins` (`id`, `user_id`, `promocode_id`, `bonus_amount`, `is_used`, `used_at`) VALUES
(32, 1, 37, 10, 1, '2026-11-08 23:37:40'),
(33, 1, 38, 50, 1, '2026-11-08 23:42:58'),
(34, 1, 39, 20, 1, '2026-11-08 23:46:12'),
(35, 1, 40, 10, 1, '2026-11-08 23:49:12'),
(36, 1, 41, 50, 1, '2026-11-08 23:54:59');

-- --------------------------------------------------------

--
-- Структура таблицы `case_rewards`
--

CREATE TABLE `case_rewards` (
  `id` int(11) NOT NULL,
  `type` enum('balance','promocode') NOT NULL,
  `value` int(11) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `icon` varchar(16) DEFAULT '?',
  `name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `case_rewards`
--

INSERT INTO `case_rewards` (`id`, `type`, `value`, `weight`, `icon`, `name`, `is_active`, `created_at`) VALUES
(1, 'balance', 10, 30, '💰', '10 ₽', 1, '2026-10-05 17:39:05'),
(2, 'balance', 20, 20, '💰', '20 ₽', 1, '2026-10-05 17:39:05'),
(3, 'balance', 50, 15, '💰', '50 ₽', 1, '2026-10-05 17:39:06'),
(4, 'balance', 100, 10, '💰', '100 ₽', 1, '2026-10-05 17:39:06'),
(5, 'balance', 200, 8, '💰', '200 ₽', 1, '2026-10-05 17:39:06'),
(6, 'balance', 500, 5, '💰', '500 ₽', 1, '2026-10-05 17:39:07'),
(7, 'promocode', 10, 7, '🎫', 'Скидка 10%', 1, '2026-10-05 17:39:07'),
(8, 'promocode', 20, 3, '🎫', 'Скидка 20%', 1, '2026-10-05 17:39:07'),
(9, 'promocode', 30, 2, '🎫', 'Скидка 30%', 1, '2026-11-08 23:36:10');

-- --------------------------------------------------------

--
-- Структура таблицы `milestone_promocodes`
--

CREATE TABLE `milestone_promocodes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `milestone` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `issued_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `related_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` text DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Дамп данных таблицы `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `type`, `related_id`, `title`, `body`, `is_read`, `created_at`) VALUES
(1, 1, 'ticket_created', 2, 'Тикет создан', 'Ваш тикет создан. Мы ответим в ближайшее время.', 0, '2026-11-08 18:20:22');

-- --------------------------------------------------------

--
-- Структура таблицы `promocodes`
--

CREATE TABLE `promocodes` (
  `id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `discount_percent` int(11) DEFAULT 0,
  `discount_fixed` int(11) DEFAULT 0,
  `min_amount` int(11) DEFAULT 0,
  `max_uses` int(11) DEFAULT 1,
  `used_count` int(11) DEFAULT 0,
  `expires_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `spin_bonus_min` int(11) DEFAULT 0,
  `spin_bonus_max` int(11) DEFAULT 0,
  `is_spin_promocode` tinyint(1) DEFAULT 0,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `promocodes`
--

INSERT INTO `promocodes` (`id`, `code`, `discount_percent`, `discount_fixed`, `min_amount`, `max_uses`, `used_count`, `expires_at`, `is_active`, `created_at`, `spin_bonus_min`, `spin_bonus_max`, `is_spin_promocode`, `user_id`) VALUES
(37, '11', 0, 0, 0, 1, 1, NULL, 1, '2026-11-08 23:37:31', 0, 0, 1, NULL),
(38, '22', 0, 0, 0, 1, 1, NULL, 1, '2026-11-08 23:42:54', 0, 0, 1, NULL),
(39, '33', 0, 0, 0, 1, 1, NULL, 1, '2026-11-08 23:46:03', 0, 0, 1, NULL),
(40, 'SPIN_212312', 0, 0, 0, 1, 1, NULL, 1, '2026-11-08 23:49:04', 0, 0, 1, NULL),
(41, '213', 0, 0, 0, 1, 1, NULL, 1, '2026-11-08 23:54:52', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `promocode_usages`
--

CREATE TABLE `promocode_usages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `amount_before` decimal(10,2) DEFAULT NULL,
  `amount_after` decimal(10,2) DEFAULT NULL,
  `used_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `referral_milestones`
--

CREATE TABLE `referral_milestones` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `milestone` int(11) NOT NULL,
  `bonus_amount` int(11) NOT NULL,
  `claimed_at` datetime DEFAULT current_timestamp(),
  `reward_type` varchar(50) DEFAULT 'balance'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `role` enum('user','support','admin','overlord') NOT NULL,
  `level` int(11) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`permissions`)),
  `limits` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`limits`)),
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`role`, `level`, `permissions`, `limits`, `is_system`, `updated_at`) VALUES
('user', 0, '[]', '{}', 1, '2026-10-16 14:59:52'),
('support', 1, '[\"users.view\",\"users.balance\",\"users.sync\",\"referral.view\",\"promocodes.view\",\"milestones.view\",\"transactions.view\",\"logs.view_own\"]', '{\"balance_max\":500,\"referral_max\":0}', 1, '2026-10-16 20:16:13'),
('admin', 2, '[\"users.view\", \"users.balance\", \"users.sync\", \"referral.view\", \"promocodes.view\", \"promocodes.create\", \"promocodes.toggle\", \"milestones.view\", \"milestones.run\", \"transactions.view\", \"admins.view\", \"admins.manage_support\", \"logs.view_own\", \"logs.view_all\", \"users.delete_marzban\"]', '{\"balance_max\":10000,\"referral_max\":5000}', 1, '2026-10-16 21:35:47'),
('overlord', 3, '[\"*\"]', '{\"balance_max\":10000,\"referral_max\":5000}', 1, '2026-10-16 14:59:52');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `data_limit_gb` int(11) DEFAULT NULL,
  `duration_days` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `data_limit_gb`, `duration_days`, `price`, `is_active`) VALUES
(1, 'Неделя', NULL, 7, 59.00, 1),
(2, 'Месяц (HOT)', NULL, 30, 149.00, 1),
(3, '3 месяца (-16%)', NULL, 90, 379.00, 1),
(4, '6 Месяцев (-21%)', NULL, 180, 699.00, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` enum('open','pending','answered','closed') NOT NULL DEFAULT 'open',
  `priority` enum('low','normal','high','urgent') NOT NULL DEFAULT 'normal',
  `assigned_to` int(10) UNSIGNED DEFAULT NULL,
  `last_reply_at` datetime DEFAULT NULL,
  `last_reply_by` enum('user','staff') DEFAULT NULL,
  `unread_for_user` tinyint(1) NOT NULL DEFAULT 1,
  `unread_for_staff` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `closed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `subject`, `status`, `priority`, `assigned_to`, `last_reply_at`, `last_reply_by`, `unread_for_user`, `unread_for_staff`, `created_at`, `updated_at`, `closed_at`) VALUES
(1, 5, '123', 'closed', 'normal', 1, '2026-10-24 13:57:46', 'staff', 0, 0, '2026-10-24 13:56:57', '2026-10-24 13:58:08', '2026-10-24 13:58:08'),
(2, 1, 'Репорт', 'open', 'normal', NULL, '2026-11-08 18:27:32', 'user', 0, 1, '2026-11-08 18:20:22', '2026-11-08 18:27:32', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_mentions`
--

CREATE TABLE `ticket_mentions` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `invited_by` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `author_role` enum('user','support','admin','overlord') NOT NULL,
  `message` text NOT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ticket_messages`
--

INSERT INTO `ticket_messages` (`id`, `ticket_id`, `author_id`, `author_role`, `message`, `is_internal`, `created_at`) VALUES
(1, 1, 5, 'user', '12312фыыыыв', 0, '2026-10-24 13:56:57'),
(2, 1, 1, 'overlord', '123123', 0, '2026-10-24 13:57:46'),
(3, 2, 1, 'user', '123123123фывфывфыв', 0, '2026-11-08 18:20:22'),
(4, 2, 1, 'user', '122', 0, '2026-11-08 18:27:32');

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_templates`
--

CREATE TABLE `ticket_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` enum('deposit','referral','purchase','milestone') DEFAULT NULL,
  `status` enum('pending','completed','failed') DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `referral_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `admin_id`, `service_id`, `amount`, `type`, `status`, `payment_id`, `description`, `created_at`, `deleted_at`, `referral_user_id`) VALUES
(22, 5, NULL, NULL, 10.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 33: +10 ₽', '2026-10-09 22:35:44', NULL, NULL),
(23, 5, NULL, NULL, 10.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 333: +10 ₽', '2026-10-09 22:36:09', NULL, NULL),
(24, 5, NULL, NULL, 20.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 3333: +20 ₽', '2026-10-09 22:38:45', NULL, NULL),
(25, 5, NULL, NULL, 500.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 33333: +500 ₽', '2026-10-09 22:40:49', NULL, NULL),
(26, 5, NULL, NULL, 20.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 123: +20 ₽', '2026-10-09 22:41:42', NULL, NULL),
(27, 5, NULL, NULL, 50.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 321: +50 ₽', '2026-10-09 22:43:23', NULL, NULL),
(28, 5, NULL, NULL, 10.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 33321: +10 ₽', '2026-10-09 22:46:21', NULL, NULL),
(29, 3, NULL, NULL, 301.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-10 08:57:26', NULL, NULL),
(33, 3, NULL, NULL, 1.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-16 09:49:20', NULL, NULL),
(34, 3, NULL, NULL, -101.00, 'deposit', 'completed', NULL, 'Списание администратором', '2026-10-16 09:50:53', NULL, NULL),
(35, 3, NULL, NULL, -1.00, 'deposit', 'completed', NULL, 'Списание администратором', '2026-10-16 09:50:57', NULL, NULL),
(36, 5, NULL, NULL, 100.00, 'deposit', 'completed', NULL, 'Взнос через админ-панель', '2026-10-16 13:41:04', NULL, NULL),
(38, 3, NULL, NULL, 1.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-16 14:29:16', NULL, NULL),
(39, 3, NULL, NULL, -1.00, 'deposit', 'completed', NULL, 'Списание администратором', '2026-10-16 14:29:21', NULL, NULL),
(40, 1, NULL, NULL, 500.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-16 21:54:52', NULL, NULL),
(41, 1, NULL, NULL, -149.00, 'purchase', 'completed', NULL, 'Покупка тарифа: Месяц (HOT)', '2026-10-16 21:55:14', NULL, NULL),
(42, 3, 1, NULL, 11.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-16 22:20:05', NULL, NULL),
(43, 5, 1, NULL, 3.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-18 04:49:18', NULL, NULL),
(44, 1, 5, NULL, 4.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-18 04:49:27', NULL, NULL),
(45, 5, NULL, NULL, -59.00, 'purchase', 'completed', NULL, 'Покупка тарифа: Неделя', '2026-10-18 05:01:26', NULL, NULL),
(46, 5, NULL, 1, -59.00, 'purchase', 'completed', NULL, 'Покупка тарифа: Неделя', '2026-10-18 05:27:53', NULL, NULL),
(47, 8, 1, NULL, 60.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-18 06:44:57', NULL, NULL),
(48, 8, NULL, 1, -59.00, 'purchase', 'completed', NULL, 'Покупка тарифа: Неделя', '2026-10-18 06:45:21', NULL, NULL),
(49, 9, 1, NULL, 500.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-20 07:37:04', NULL, NULL),
(50, 9, NULL, 3, -379.00, 'purchase', 'completed', NULL, 'Покупка тарифа: 3 месяца (-16%)', '2026-10-20 07:37:30', NULL, NULL),
(51, 11, 1, NULL, 149.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-23 18:21:35', NULL, NULL),
(52, 11, NULL, 2, -149.00, 'purchase', 'completed', NULL, 'Покупка тарифа: Месяц (HOT)', '2026-10-23 18:22:28', NULL, NULL),
(53, 11, 1, NULL, 1.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-23 23:44:09', NULL, NULL),
(54, 10, 1, NULL, 59.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-24 00:09:19', NULL, NULL),
(55, 10, NULL, 1, -59.00, 'purchase', 'completed', NULL, 'Покупка тарифа: Неделя', '2026-10-24 00:14:31', NULL, NULL),
(56, 10, 1, NULL, 200.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-10-31 13:21:17', NULL, NULL),
(57, 10, NULL, NULL, 200.00, 'deposit', 'pending', 'inv_397e84ec06b14a8f6428a745854408ea', 'Пополнение баланса', '2026-10-31 13:22:01', NULL, NULL),
(58, 10, NULL, NULL, 200.00, 'deposit', 'pending', 'inv_6e905974c47a10ff06388eecceac97da', 'Пополнение баланса', '2026-10-31 13:22:30', NULL, NULL),
(59, 10, NULL, NULL, 200.00, 'deposit', 'pending', 'inv_d29e3fa22132a06c4f6cf854e5ebdace', 'Пополнение баланса', '2026-10-31 13:22:35', NULL, NULL),
(60, 10, NULL, 2, -149.00, 'purchase', 'completed', NULL, 'Покупка тарифа: Месяц (HOT)', '2026-10-31 13:23:38', NULL, NULL),
(61, 1, 1, NULL, 1.00, 'deposit', 'completed', NULL, 'Ручное начисление администратором', '2026-11-08 19:06:12', NULL, NULL),
(62, 1, NULL, NULL, 20.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 123: +20 ₽', '2026-11-08 23:06:41', NULL, NULL),
(63, 1, NULL, NULL, 50.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 321: +50 ₽', '2026-11-08 23:07:04', NULL, NULL),
(64, 1, NULL, NULL, 20.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 123: +20 ₽', '2026-11-08 23:10:48', NULL, NULL),
(65, 1, NULL, NULL, 50.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 222: +50 ₽', '2026-11-08 23:12:03', NULL, NULL),
(66, 1, NULL, NULL, 20.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 123: +20 ₽', '2026-11-08 23:15:00', NULL, NULL),
(67, 1, NULL, NULL, 500.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 222: +500 ₽', '2026-11-08 23:18:11', NULL, NULL),
(68, 1, NULL, NULL, 200.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 1233: +200 ₽', '2026-11-08 23:20:13', NULL, NULL),
(69, 1, NULL, NULL, 50.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 111: +50 ₽', '2026-11-08 23:24:30', NULL, NULL),
(70, 1, NULL, NULL, 100.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 222: +100 ₽', '2026-11-08 23:29:48', NULL, NULL),
(71, 1, NULL, NULL, 20.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 333: +20 ₽', '2026-11-08 23:30:25', NULL, NULL),
(72, 1, NULL, NULL, 20.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 444: +20 ₽', '2026-11-08 23:31:46', NULL, NULL),
(73, 1, NULL, NULL, 20.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 4444: +20 ₽', '2026-11-08 23:34:31', NULL, NULL),
(74, 1, NULL, NULL, 10.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 123: +10 ₽', '2026-11-08 23:36:35', NULL, NULL),
(75, 1, NULL, NULL, 10.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 11: +10 ₽', '2026-11-08 23:37:40', NULL, NULL),
(76, 1, NULL, NULL, 50.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 22: +50 ₽', '2026-11-08 23:42:58', NULL, NULL),
(77, 1, NULL, NULL, 20.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 33: +20 ₽', '2026-11-08 23:46:12', NULL, NULL),
(78, 1, NULL, NULL, 10.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду SPIN_212312: +10 ₽', '2026-11-08 23:49:12', NULL, NULL),
(79, 1, NULL, NULL, 50.00, 'milestone', 'completed', NULL, '🎁 Бонус-крутка по промокоду 213: +50 ₽', '2026-11-08 23:54:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `vk_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT 0.00,
  `referral_code` varchar(64) DEFAULT NULL,
  `referrer_id` int(11) DEFAULT NULL,
  `avatar_url` varchar(500) DEFAULT NULL,
  `subscription_url` varchar(500) DEFAULT NULL,
  `marzban_username` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `has_active_subscription` tinyint(1) DEFAULT 0,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `role` enum('user','support','admin','overlord') NOT NULL DEFAULT 'user',
  `last_known_status` varchar(50) DEFAULT NULL,
  `last_known_used_traffic` bigint(20) DEFAULT NULL,
  `last_known_data_limit` bigint(20) DEFAULT NULL,
  `last_known_expire` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `vk_id`, `username`, `email`, `password_hash`, `balance`, `referral_code`, `referrer_id`, `avatar_url`, `subscription_url`, `marzban_username`, `created_at`, `has_active_subscription`, `is_admin`, `role`, `last_known_status`, `last_known_used_traffic`, `last_known_data_limit`, `last_known_expire`) VALUES
(1, 211280229, 'Рустем Батыров', NULL, NULL, 1576.00, '509a37777e0082cd', NULL, 'https://sun9-47.userapi.com/impg/DW4IDqvukChyc-WPXmzIot46En40R00idiUAXw/l5w5aIHioYc.jpg?quality=96&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360&sign=10ad7d7953daabb7b0e707fdfb7ebefd&u=I6EtahnrCRLlyd0MhT2raQt6ydhuyxX4s72EHGuUSoM&cs=200x200', 'https://sub.gmbase.net/sub/dXNlcl8yMTEyODAyMjlfMTc5MjE4MjI2NiwxNzk0MTYxMjE07tmfLAdwKg', 'user_211280229_1792182266', '2026-10-16 20:24:27', 1, 1, 'overlord', 'active', 14862966606, NULL, 1794779713),
(3, 276571560, 'Ильнур Ильдарович', NULL, NULL, 211.00, '8a57bba53bb23823', NULL, 'https://sun9-68.userapi.com/s/v1/ig2/uItma_rXAyDl2sWxKti2eI5mCnsgSALTtUFOZ3rO_1TBJ1bJOupLxhzEM_rfTx6JRulgHsNoH0ph5eGoHPKbmXzxOpCMLg.jpg?quality=95&crop=97,97,831,831&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360,480x480,540x540,640x640,720x720&ava=1&cs=200x200', NULL, NULL, '2026-10-07 16:54:14', 0, 0, 'user', 'deleted_from_marzban', NULL, NULL, NULL),
(5, 692527343, 'Ufa Gmbase', NULL, NULL, 605.00, '18e1d4290eda0de7', 1, 'https://sun9-87.userapi.com/s/v1/ig2/lpwDbHCWDyVmKQuJiArzYJokFPOnQhxzgoogOGYFEuEEFGuA-B9IBc9htzJM4x7uNlTurAiEWc7Kv2fiOeAXVhSF.jpg?quality=95&crop=0,0,400,400&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360&ava=1&cs=200x200', NULL, 'user_692527343_1791576308', '2026-10-09 20:05:08', 0, 1, 'support', 'deleted_from_marzban', NULL, NULL, NULL),
(8, 493268039, 'Кристина Кристина', NULL, NULL, 1.00, '989deaa6457c4642', NULL, 'https://sun1-87.userapi.com/s/v1/ig2/4vyboCTObxOrMr2zqFQpH5ZhL8yrDTkavd8qTfxks56mHs3yljB5S_doQMpdp2ZXUyNlTK_f-jo0YdXvWUOzG543.jpg?quality=95&crop=0,71,2373,2373&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360,480x480,540x540,640x640,720x720,1080x1080,1280x1280,1440x1440&ava=1&cs=200x200', NULL, 'user_493268039_1792305836', '2026-10-18 06:43:56', 0, 0, 'user', 'active', 5937819, NULL, 1792910721),
(9, 471620984, 'Ильмира-И-Руслан Амировы', NULL, NULL, 121.00, 'bbe3d4eab5faf392', NULL, 'https://sun9-69.userapi.com/s/v1/ig2/L6To3B5QaQQj_Q6lCE6gZI6eq80UFTXNILiTbjOi5OKyqEunxgxtbKUQiOnR_EnNeD_sr43M8ebBSlhqZOpJFR4X.jpg?quality=95&crop=331,304,599,599&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360,480x480,540x540&ava=1&cs=200x200', 'https://sub.gmbase.net/sub/dXNlcl80NzE2MjA5ODRfMTc5MjQ4MTYwNCwxNzkyNDgxODUzJQcToGKF8U', 'user_471620984_1792481604', '2026-10-20 07:33:24', 1, 0, 'user', 'active', 0, NULL, 1800257849),
(10, 1098069562, 'No Name', NULL, NULL, 51.00, '314618b564249399', NULL, 'https://sun9-47.userapi.com/impg/DW4IDqvukChyc-WPXmzIot46En40R00idiUAXw/l5w5aIHioYc.jpg?quality=96&as=32x32,48x48,72x72,108x108,160x160,240x240,360x360&sign=10ad7d7953daabb7b0e707fdfb7ebefd&u=I6EtahnrCRLlyd0MhT2raQt6ydhuyxX4s72EHGuUSoM&cs=200x200', 'https://sub.gmbase.net/sub/dXNlcl8xMDk4MDY5NTYyXzE3OTI3Nzc1NDYsMTc5MzU1MDk5OA_fCAom-ahH', 'user_1098069562_1792777546', '2026-10-23 17:45:46', 1, 0, 'user', 'active', 7554056742, NULL, 1796027017),
(11, 734047807, 'Lonely Wanderer', NULL, NULL, 1.00, '23118ce46f91cccd', NULL, 'https://sun9-45.userapi.com/s/v1/ig2/qEYeCx7u3NzDEuAJXJ3R5wWkZQ6PPcae0upNMROG122N3q4c9e_0O7F0FXIeMwGq43VVmRBcH0Gz2JzRMKUvZLN7.jpg?quality=95&crop=160,160,319,319&as=32x32,48x48,72x72,108x108,160x160,240x240&ava=1&cs=200x200', 'https://sub.gmbase.net/sub/dXNlcl83MzQwNDc4MDdfMTc5Mjc3OTY0OSwxNzkyNzc5ODg4PMLrtf1kXs', 'user_734047807_1792779649', '2026-10-23 18:20:50', 1, 0, 'user', 'active', 0, NULL, 1795371748);

-- --------------------------------------------------------

--
-- Структура таблицы `user_services`
--

CREATE TABLE `user_services` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `marzban_username` varchar(255) NOT NULL,
  `purchased_at` datetime DEFAULT current_timestamp(),
  `expires_at` datetime NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_services`
--

INSERT INTO `user_services` (`id`, `user_id`, `service_id`, `marzban_username`, `purchased_at`, `expires_at`, `is_active`) VALUES
(10, 1, 2, 'user_211280229_1792182266', '2026-10-16 21:55:14', '2026-11-16 00:55:14', 1),
(11, 5, 1, 'user_692527343_1791576308', '2026-10-18 05:01:26', '2026-10-25 08:01:26', 0),
(12, 5, 1, 'user_692527343_1791576308', '2026-10-18 05:27:53', '2026-10-25 08:27:53', 0),
(13, 8, 1, 'user_493268039_1792305836', '2026-10-18 06:45:21', '2026-10-25 09:45:21', 1),
(14, 9, 3, 'user_471620984_1792481604', '2026-10-20 07:37:30', '2027-01-18 10:37:30', 1),
(15, 11, 2, 'user_734047807_1792779649', '2026-10-23 18:22:29', '2026-11-22 21:22:28', 1),
(16, 10, 1, 'user_1098069562_1792777546', '2026-10-24 00:14:32', '2026-10-31 00:14:32', 0),
(17, 10, 2, 'user_1098069562_1792777546', '2026-10-31 13:23:38', '2026-11-30 13:23:38', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admin_logs_admin_id` (`admin_id`),
  ADD KEY `idx_admin_logs_action` (`action`),
  ADD KEY `idx_admin_logs_created_at` (`created_at`),
  ADD KEY `idx_admin_logs_target` (`target_type`,`target_id`),
  ADD KEY `idx_admin_logs_admin_action` (`admin_id`,`action`);

--
-- Индексы таблицы `bonus_spins`
--
ALTER TABLE `bonus_spins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_user_promocode` (`user_id`,`promocode_id`),
  ADD KEY `idx_bonus_spins_user_id` (`user_id`),
  ADD KEY `fk_bonus_spins_promocode` (`promocode_id`);

--
-- Индексы таблицы `case_rewards`
--
ALTER TABLE `case_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `milestone_promocodes`
--
ALTER TABLE `milestone_promocodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_user_milestone_promocode` (`user_id`,`milestone`,`promocode_id`),
  ADD KEY `idx_milestone_promocodes_user` (`user_id`),
  ADD KEY `promocode_id` (`promocode_id`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Индексы таблицы `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `idx_promocodes_code` (`code`),
  ADD KEY `idx_promocodes_is_spin` (`is_spin_promocode`),
  ADD KEY `idx_promocodes_user_id` (`user_id`);

--
-- Индексы таблицы `promocode_usages`
--
ALTER TABLE `promocode_usages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_user_promocode` (`user_id`,`promocode_id`),
  ADD KEY `idx_promocode_usages_promocode` (`promocode_id`),
  ADD KEY `idx_promocode_usages_transaction` (`transaction_id`);

--
-- Индексы таблицы `referral_milestones`
--
ALTER TABLE `referral_milestones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_milestone` (`user_id`,`milestone`),
  ADD KEY `idx_referral_milestones_user_id` (`user_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `session_token` (`session_token`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_sessions_expires_at` (`expires_at`);

--
-- Индексы таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`user_id`,`status`),
  ADD KEY `idx_status` (`status`,`last_reply_at`),
  ADD KEY `idx_assigned` (`assigned_to`);

--
-- Индексы таблицы `ticket_mentions`
--
ALTER TABLE `ticket_mentions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_ticket_staff` (`ticket_id`,`staff_id`),
  ADD KEY `idx_staff` (`staff_id`),
  ADD KEY `fk_tmen_inviter` (`invited_by`);

--
-- Индексы таблицы `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ticket` (`ticket_id`,`created_at`);

--
-- Индексы таблицы `ticket_templates`
--
ALTER TABLE `ticket_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner` (`owner_id`);

--
-- Индексы таблицы `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_transactions_user_id` (`user_id`),
  ADD KEY `idx_transactions_created_at` (`created_at`),
  ADD KEY `idx_transactions_referral_user_id` (`referral_user_id`),
  ADD KEY `idx_transactions_status` (`status`),
  ADD KEY `idx_transactions_type` (`type`),
  ADD KEY `idx_transactions_admin_id` (`admin_id`),
  ADD KEY `idx_transactions_service_id` (`service_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vk_id` (`vk_id`),
  ADD UNIQUE KEY `referral_code` (`referral_code`),
  ADD UNIQUE KEY `marzban_username` (`marzban_username`),
  ADD KEY `idx_users_vk_id` (`vk_id`),
  ADD KEY `idx_users_referral_code` (`referral_code`),
  ADD KEY `referrer_id` (`referrer_id`),
  ADD KEY `idx_users_has_active_subscription` (`has_active_subscription`),
  ADD KEY `idx_users_role` (`role`);

--
-- Индексы таблицы `user_services`
--
ALTER TABLE `user_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_services_user_id` (`user_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `idx_user_services_active` (`user_id`,`is_active`,`expires_at`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin_logs`
--
ALTER TABLE `admin_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `bonus_spins`
--
ALTER TABLE `bonus_spins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `case_rewards`
--
ALTER TABLE `case_rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `milestone_promocodes`
--
ALTER TABLE `milestone_promocodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `promocode_usages`
--
ALTER TABLE `promocode_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `referral_milestones`
--
ALTER TABLE `referral_milestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `ticket_mentions`
--
ALTER TABLE `ticket_mentions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `ticket_templates`
--
ALTER TABLE `ticket_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `user_services`
--
ALTER TABLE `user_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD CONSTRAINT `fk_admin_logs_user` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `bonus_spins`
--
ALTER TABLE `bonus_spins`
  ADD CONSTRAINT `fk_bonus_spins_promocode` FOREIGN KEY (`promocode_id`) REFERENCES `promocodes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_bonus_spins_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `milestone_promocodes`
--
ALTER TABLE `milestone_promocodes`
  ADD CONSTRAINT `1` FOREIGN KEY (`promocode_id`) REFERENCES `promocodes` (`id`),
  ADD CONSTRAINT `fk_mp_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `promocode_usages`
--
ALTER TABLE `promocode_usages`
  ADD CONSTRAINT `fk_pu_promocode` FOREIGN KEY (`promocode_id`) REFERENCES `promocodes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pu_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `referral_milestones`
--
ALTER TABLE `referral_milestones`
  ADD CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `ticket_mentions`
--
ALTER TABLE `ticket_mentions`
  ADD CONSTRAINT `fk_tmen_inviter` FOREIGN KEY (`invited_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tmen_staff` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tmen_ticket` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD CONSTRAINT `fk_tm_ticket` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ticket_templates`
--
ALTER TABLE `ticket_templates`
  ADD CONSTRAINT `fk_tt_owner` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `1` FOREIGN KEY (`referrer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `user_services`
--
ALTER TABLE `user_services`
  ADD CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);
--
-- База данных: `marzban`
--
CREATE DATABASE IF NOT EXISTS `marzban` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `marzban`;

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(34) DEFAULT NULL,
  `hashed_password` varchar(128) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_sudo` tinyint(1) DEFAULT 0,
  `password_reset_at` datetime DEFAULT NULL,
  `telegram_id` bigint(20) DEFAULT NULL,
  `discord_webhook` varchar(1024) DEFAULT NULL,
  `users_usage` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`id`, `username`, `hashed_password`, `created_at`, `is_sudo`, `password_reset_at`, `telegram_id`, `discord_webhook`, `users_usage`) VALUES
(1, 'admin', '$2b$12$qkMRKtY9lB14d1ACjj0PLOsmPnu0Xvd.EBLd8ZZv2ZGTHNRi1Dl4a', '2026-10-05 15:23:16', 1, '2026-10-05 15:29:26', 0, '', 82657984025);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_usage_logs`
--

CREATE TABLE `admin_usage_logs` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `used_traffic_at_reset` bigint(20) NOT NULL,
  `reset_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('2b231de97dc3');

-- --------------------------------------------------------

--
-- Структура таблицы `exclude_inbounds_association`
--

CREATE TABLE `exclude_inbounds_association` (
  `proxy_id` int(11) DEFAULT NULL,
  `inbound_tag` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hosts`
--

CREATE TABLE `hosts` (
  `id` int(11) NOT NULL,
  `remark` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `port` int(11) DEFAULT NULL,
  `inbound_tag` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `sni` varchar(1000) DEFAULT NULL,
  `host` varchar(1000) DEFAULT NULL,
  `security` enum('inbound_default','none','tls') NOT NULL DEFAULT 'inbound_default',
  `alpn` enum('h3','h3,h2','h3,h2,http/1.1','none','h2','http/1.1','h2,http/1.1') NOT NULL,
  `fingerprint` enum('none','chrome','firefox','safari','ios','android','edge','360','qq','random','randomized') NOT NULL DEFAULT 'none',
  `allowinsecure` tinyint(1) DEFAULT NULL,
  `is_disabled` tinyint(1) DEFAULT NULL,
  `path` varchar(256) DEFAULT NULL,
  `mux_enable` tinyint(1) NOT NULL DEFAULT 0,
  `fragment_setting` varchar(100) DEFAULT NULL,
  `random_user_agent` tinyint(1) NOT NULL DEFAULT 0,
  `noise_setting` varchar(2000) DEFAULT NULL,
  `use_sni_as_host` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hosts`
--

INSERT INTO `hosts` (`id`, `remark`, `address`, `port`, `inbound_tag`, `sni`, `host`, `security`, `alpn`, `fingerprint`, `allowinsecure`, `is_disabled`, `path`, `mux_enable`, `fragment_setting`, `random_user_agent`, `noise_setting`, `use_sni_as_host`) VALUES
(74, '{STATUS_EMOJI} 🚀 GMBASE.NET | {USERNAME} | {DATA_LEFT} | {DAYS_LEFT} дн.', '{SERVER_IP}', NULL, 'Shadowsocks TCP', NULL, NULL, 'inbound_default', 'none', 'none', NULL, 0, NULL, 0, NULL, 0, NULL, 0),
(75, '{STATUS_EMOJI} 🚀 GMBASE.NET | {USERNAME} | {DATA_LEFT} | {DAYS_LEFT} дн.', '{SERVER_IP}', 443, 'VLESS TCP REALITY (yandex-maps)', NULL, NULL, 'inbound_default', 'none', 'firefox', NULL, 0, NULL, 0, NULL, 0, NULL, 0),
(76, '{STATUS_EMOJI} 🚀 GMBASE.NET | {USERNAME} | {DATA_LEFT} | {DAYS_LEFT} дн.', '{SERVER_IP}', 443, 'VLESS TCP REALITY (github)', 'github.com', NULL, 'inbound_default', 'none', 'firefox', NULL, 0, NULL, 0, NULL, 0, NULL, 0),
(77, '{STATUS_EMOJI} 🚀 GMBASE.NET | {USERNAME} | {DATA_LEFT} | {DAYS_LEFT} дн.', '{SERVER_IP}', 443, 'VLESS TCP REALITY (2ip)', NULL, NULL, 'inbound_default', 'none', 'firefox', NULL, 0, NULL, 0, NULL, 0, NULL, 0),
(78, '{STATUS_EMOJI} 🚀 GMBASE.NET | {USERNAME} | {DATA_LEFT} | {DAYS_LEFT} дн.', '{SERVER_IP}', 443, 'VLESS TCP REALITY (2gis)', NULL, NULL, 'inbound_default', 'none', 'firefox', NULL, 0, NULL, 0, NULL, 0, NULL, 0),
(79, '{STATUS_EMOJI} 🚀 GMBASE.NET | {USERNAME} | {DATA_LEFT} | {DAYS_LEFT} дн.', '{SERVER_IP}', 443, 'VLESS TCP REALITY (avito)', NULL, NULL, 'inbound_default', 'none', 'firefox', NULL, 0, NULL, 0, NULL, 0, NULL, 0),
(80, '{STATUS_EMOJI} 🚀 GMBASE.NET | {USERNAME} | {DATA_LEFT} | {DAYS_LEFT} дн.', '{SERVER_IP}', 443, 'VLESS TCP REALITY (disk-yandex)', NULL, NULL, 'inbound_default', 'h2', 'firefox', NULL, 0, NULL, 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `inbounds`
--

CREATE TABLE `inbounds` (
  `id` int(11) NOT NULL,
  `tag` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `inbounds`
--

INSERT INTO `inbounds` (`id`, `tag`) VALUES
(1, 'Shadowsocks TCP'),
(16, 'VLESS TCP REALITY (2gis)'),
(4, 'VLESS TCP REALITY (2ip)'),
(7, 'VLESS TCP REALITY (api-maps-yandex)'),
(17, 'VLESS TCP REALITY (avito)'),
(9, 'VLESS TCP REALITY (cloudflare)'),
(18, 'VLESS TCP REALITY (disk-yandex)'),
(3, 'VLESS TCP REALITY (dns-shop)'),
(6, 'VLESS TCP REALITY (github)'),
(2, 'VLESS TCP REALITY (ozon)'),
(5, 'VLESS TCP REALITY (ufanet)'),
(8, 'VLESS TCP REALITY (wikipedia)'),
(15, 'VLESS TCP REALITY (yandex-maps)'),
(10, 'VLESS TCP REALITY 1'),
(11, 'VLESS TCP REALITY 2'),
(12, 'VLESS TCP REALITY 3'),
(13, 'VLESS TCP REALITY 4'),
(14, 'VLESS TCP REALITY 5');

-- --------------------------------------------------------

--
-- Структура таблицы `jwt`
--

CREATE TABLE `jwt` (
  `id` int(11) NOT NULL,
  `secret_key` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `jwt`
--

INSERT INTO `jwt` (`id`, `secret_key`) VALUES
(1, '1ad97dfdbf41d5e6752f115f696fe818940c06914e2db064055b54db709cd554');

-- --------------------------------------------------------

--
-- Структура таблицы `next_plans`
--

CREATE TABLE `next_plans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data_limit` bigint(20) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `add_remaining_traffic` tinyint(1) NOT NULL DEFAULT 0,
  `fire_on_either` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `nodes`
--

CREATE TABLE `nodes` (
  `id` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `address` varchar(256) NOT NULL,
  `port` int(11) NOT NULL,
  `api_port` int(11) NOT NULL,
  `status` enum('connected','connecting','error','disabled') NOT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `message` varchar(1024) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `uplink` bigint(20) DEFAULT NULL,
  `downlink` bigint(20) DEFAULT NULL,
  `xray_version` varchar(32) DEFAULT NULL,
  `usage_coefficient` float NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `node_usages`
--

CREATE TABLE `node_usages` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `uplink` bigint(20) DEFAULT NULL,
  `downlink` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `node_usages`
--

INSERT INTO `node_usages` (`id`, `created_at`, `node_id`, `uplink`, `downlink`) VALUES
(1, '2026-10-05 20:00:00', NULL, 51360, 190634),
(2, '2026-10-05 21:00:00', NULL, 266131, 3508975),
(3, '2026-10-05 22:00:00', NULL, 372525, 10001409),
(4, '2026-10-05 23:00:00', NULL, 94304, 681545),
(5, '2026-10-06 05:00:00', NULL, 212908, 5724840),
(6, '2026-10-06 23:00:00', NULL, 44457127, 181672913),
(7, '2026-10-07 00:00:00', NULL, 21313939, 783324448),
(8, '2026-10-07 01:00:00', NULL, 543738, 2123209),
(9, '2026-10-07 02:00:00', NULL, 565174, 2370687),
(10, '2026-10-08 10:00:00', NULL, 6307754, 706515609),
(11, '2026-10-08 11:00:00', NULL, 2174873, 216741041),
(12, '2026-10-08 12:00:00', NULL, 3513816, 46692306),
(13, '2026-10-09 11:00:00', NULL, 1742250, 22737920),
(14, '2026-10-09 12:00:00', NULL, 3432739, 197092088),
(15, '2026-10-09 13:00:00', NULL, 2322151, 132646230),
(16, '2026-10-09 14:00:00', NULL, 3915614, 159424456),
(17, '2026-10-09 15:00:00', NULL, 2175595, 4150033),
(18, '2026-10-09 16:00:00', NULL, 3857001, 171960341),
(19, '2026-10-09 18:00:00', NULL, 5911652, 609077009),
(20, '2026-10-09 19:00:00', NULL, 924907, 2906029),
(21, '2026-10-09 20:00:00', NULL, 807739, 30763101),
(22, '2026-10-09 21:00:00', NULL, 240167, 612686),
(23, '2026-10-09 22:00:00', NULL, 4666678, 1170157548),
(24, '2026-10-09 23:00:00', NULL, 1081717, 4566565),
(25, '2026-10-10 00:00:00', NULL, 1044992, 2135820),
(26, '2026-10-10 01:00:00', NULL, 1024288, 1396302),
(27, '2026-10-10 02:00:00', NULL, 532025, 2847233),
(28, '2026-10-10 03:00:00', NULL, 2870959, 82959736),
(29, '2026-10-10 04:00:00', NULL, 3352913, 44990057),
(30, '2026-10-10 05:00:00', NULL, 2399507, 39181617),
(31, '2026-10-10 06:00:00', NULL, 1271527, 4029327),
(32, '2026-10-10 07:00:00', NULL, 57239, 197595),
(33, '2026-10-10 08:00:00', NULL, 1230929, 2972428),
(34, '2026-10-10 09:00:00', NULL, 8249269, 34896020),
(35, '2026-10-10 10:00:00', NULL, 2010374, 32451685),
(36, '2026-10-10 11:00:00', NULL, 231694, 998776),
(37, '2026-10-10 12:00:00', NULL, 10327039, 488467588),
(38, '2026-10-10 13:00:00', NULL, 1118707, 56946000),
(39, '2026-10-10 14:00:00', NULL, 105680, 639403),
(40, '2026-10-10 15:00:00', NULL, 15638, 45294),
(41, '2026-10-10 16:00:00', NULL, 2500, 3138),
(42, '2026-10-10 17:00:00', NULL, 8581698, 223511287),
(43, '2026-10-10 18:00:00', NULL, 3739994, 253564357),
(44, '2026-10-10 19:00:00', NULL, 311804, 1536420),
(45, '2026-10-10 20:00:00', NULL, 2534227, 131516787),
(46, '2026-10-10 21:00:00', NULL, 207128, 5008848),
(47, '2026-10-10 22:00:00', NULL, 93894, 276616),
(48, '2026-10-10 23:00:00', NULL, 79814, 186695),
(49, '2026-10-11 00:00:00', NULL, 80966, 179623),
(50, '2026-10-11 01:00:00', NULL, 2188669, 166917920),
(51, '2026-10-11 02:00:00', NULL, 258944, 132418325),
(52, '2026-10-11 03:00:00', NULL, 111454, 213480),
(53, '2026-10-11 04:00:00', NULL, 65367, 167692),
(54, '2026-10-11 05:00:00', NULL, 5863366, 46430009),
(55, '2026-10-11 06:00:00', NULL, 158302, 812863),
(56, '2026-10-11 08:00:00', NULL, 766839, 20207598),
(57, '2026-10-11 11:00:00', NULL, 5244980, 616612379),
(58, '2026-10-11 12:00:00', NULL, 3749134, 113993706),
(59, '2026-10-11 13:00:00', NULL, 4015790, 58810346),
(60, '2026-10-11 14:00:00', NULL, 5377304, 58548230),
(61, '2026-10-11 16:00:00', NULL, 3823446, 199214800),
(62, '2026-10-11 17:00:00', NULL, 388724, 4584067),
(63, '2026-10-13 05:00:00', NULL, 8906132, 673035622),
(64, '2026-10-13 06:00:00', NULL, 830578, 116780641),
(65, '2026-10-13 11:00:00', NULL, 23712, 55289),
(66, '2026-10-13 15:00:00', NULL, 1238010, 20151618),
(67, '2026-10-13 16:00:00', NULL, 1893598, 17941529),
(68, '2026-10-13 18:00:00', NULL, 2629976, 57280113),
(69, '2026-10-13 19:00:00', NULL, 5654653, 116381603),
(70, '2026-10-14 08:00:00', NULL, 3830856, 721392325),
(71, '2026-10-14 09:00:00', NULL, 486481, 2071679),
(72, '2026-10-14 10:00:00', NULL, 490616, 2130475),
(73, '2026-10-14 11:00:00', NULL, 511095, 2354525),
(74, '2026-10-14 12:00:00', NULL, 506355, 1992005),
(75, '2026-10-14 13:00:00', NULL, 738627, 2328150),
(76, '2026-10-14 14:00:00', NULL, 482369, 2089869),
(77, '2026-10-14 15:00:00', NULL, 547693, 20092164),
(78, '2026-10-14 16:00:00', NULL, 486806, 2694997),
(79, '2026-10-14 17:00:00', NULL, 758191, 3605245),
(80, '2026-10-14 18:00:00', NULL, 502461, 2044105),
(81, '2026-10-14 19:00:00', NULL, 433310, 2179441),
(82, '2026-10-14 21:00:00', NULL, 10815, 25319),
(83, '2026-10-14 23:00:00', NULL, 118502, 357260),
(84, '2026-10-15 00:00:00', NULL, 312086, 1295844),
(85, '2026-10-15 01:00:00', NULL, 298068, 1765300),
(86, '2026-10-15 02:00:00', NULL, 425941, 1606729),
(87, '2026-10-15 03:00:00', NULL, 475979, 2318292),
(88, '2026-10-15 04:00:00', NULL, 242720, 1667452),
(89, '2026-10-15 05:00:00', NULL, 278318, 895056),
(90, '2026-10-15 06:00:00', NULL, 382654, 1547610),
(91, '2026-10-15 07:00:00', NULL, 258454, 1544275),
(92, '2026-10-15 08:00:00', NULL, 380949, 1624507),
(93, '2026-10-15 09:00:00', NULL, 320018, 1673191),
(94, '2026-10-15 10:00:00', NULL, 239876, 1554977),
(95, '2026-10-15 11:00:00', NULL, 333938, 245446479),
(96, '2026-10-15 12:00:00', NULL, 280417, 3143585),
(97, '2026-10-15 13:00:00', NULL, 582021, 2295546),
(98, '2026-10-15 14:00:00', NULL, 307941, 1731091),
(99, '2026-10-15 15:00:00', NULL, 590743, 5785970),
(100, '2026-10-15 16:00:00', NULL, 313211, 3563639),
(101, '2026-10-15 17:00:00', NULL, 306325, 3252569),
(102, '2026-10-15 18:00:00', NULL, 219174, 1672259),
(103, '2026-10-16 07:00:00', NULL, 312267, 1045182),
(104, '2026-10-16 08:00:00', NULL, 1160550, 4709813),
(105, '2026-10-16 21:00:00', NULL, 2370533, 11368122),
(106, '2026-10-16 22:00:00', NULL, 66846, 132105),
(107, '2026-10-17 09:00:00', NULL, 1462682, 132008953),
(108, '2026-10-17 10:00:00', NULL, 1838361, 27515254),
(109, '2026-10-17 11:00:00', NULL, 3607519, 11965825),
(110, '2026-10-17 12:00:00', NULL, 12384502, 55659448),
(111, '2026-10-17 13:00:00', NULL, 17728274, 59231650),
(112, '2026-10-17 14:00:00', NULL, 16668762, 226675291),
(113, '2026-10-17 21:00:00', NULL, 1980483, 164927720),
(114, '2026-10-17 22:00:00', NULL, 1652533, 43062999),
(115, '2026-10-17 23:00:00', NULL, 3508508, 6452420),
(116, '2026-10-18 00:00:00', NULL, 1744049, 2447412),
(117, '2026-10-18 01:00:00', NULL, 1546065, 2038675),
(118, '2026-10-18 02:00:00', NULL, 1603850, 2053085),
(119, '2026-10-18 03:00:00', NULL, 1906782, 89921911),
(120, '2026-10-18 04:00:00', NULL, 3509819, 87337073),
(121, '2026-10-18 05:00:00', NULL, 3457760, 33706083),
(122, '2026-10-18 06:00:00', NULL, 53488, 285133),
(123, '2026-10-18 07:00:00', NULL, 977173, 1582967),
(124, '2026-10-18 14:00:00', NULL, 6234367, 604448703),
(125, '2026-10-18 15:00:00', NULL, 1516598, 720950400),
(126, '2026-10-18 17:00:00', NULL, 1114889, 13330766),
(127, '2026-10-18 18:00:00', NULL, 9621527, 257922532),
(128, '2026-10-18 19:00:00', NULL, 12370255, 264073615),
(129, '2026-10-18 20:00:00', NULL, 9570492, 237100773),
(130, '2026-10-18 21:00:00', NULL, 408620, 959242),
(131, '2026-10-18 22:00:00', NULL, 150291, 681552),
(132, '2026-10-18 23:00:00', NULL, 24362954, 807727),
(133, '2026-10-19 00:00:00', NULL, 68710, 527762),
(134, '2026-10-19 01:00:00', NULL, 49564, 246102),
(135, '2026-10-19 02:00:00', NULL, 113214, 664768),
(136, '2026-10-19 03:00:00', NULL, 159113, 547933),
(137, '2026-10-19 04:00:00', NULL, 3862367, 82554095),
(138, '2026-10-19 05:00:00', NULL, 9338314, 150545338),
(139, '2026-10-19 06:00:00', NULL, 10295887, 412153451),
(140, '2026-10-19 07:00:00', NULL, 4564264, 125762893),
(141, '2026-10-19 08:00:00', NULL, 8745425, 112981570),
(142, '2026-10-19 09:00:00', NULL, 1909705, 10483586),
(143, '2026-10-19 10:00:00', NULL, 1274000, 20148276),
(144, '2026-10-19 11:00:00', NULL, 2240677, 57151030),
(145, '2026-10-19 12:00:00', NULL, 852553, 46666962),
(146, '2026-10-19 13:00:00', NULL, 1944422, 72814869),
(147, '2026-10-19 14:00:00', NULL, 953163, 75996330),
(148, '2026-10-19 15:00:00', NULL, 316624, 11525055),
(149, '2026-10-19 16:00:00', NULL, 453437, 13343149),
(150, '2026-10-19 17:00:00', NULL, 422161, 20892449),
(151, '2026-10-19 18:00:00', NULL, 230943, 5489498),
(152, '2026-10-19 20:00:00', NULL, 1537686, 41738987),
(153, '2026-10-19 21:00:00', NULL, 1152702, 25903016),
(154, '2026-10-19 22:00:00', NULL, 5444118, 54558231),
(155, '2026-10-19 23:00:00', NULL, 33970, 198756),
(156, '2026-10-20 03:00:00', NULL, 122680, 638849),
(157, '2026-10-20 04:00:00', NULL, 3347, 13265),
(158, '2026-10-20 05:00:00', NULL, 6970551, 136316740),
(159, '2026-10-20 06:00:00', NULL, 458952, 2167798),
(160, '2026-10-20 07:00:00', NULL, 3122240, 20147051),
(161, '2026-10-20 08:00:00', NULL, 9454005, 160434764),
(162, '2026-10-20 09:00:00', NULL, 23550828, 39695651),
(163, '2026-10-20 10:00:00', NULL, 2888200, 40936967),
(164, '2026-10-20 11:00:00', NULL, 1172778, 65820127),
(165, '2026-10-20 12:00:00', NULL, 75893, 3670439),
(166, '2026-10-20 14:00:00', NULL, 325730, 7532381),
(167, '2026-10-20 15:00:00', NULL, 4222814, 186273409),
(168, '2026-10-20 16:00:00', NULL, 1750252, 66590273),
(169, '2026-10-20 17:00:00', NULL, 5517544, 222100581),
(170, '2026-10-20 18:00:00', NULL, 2341599, 61282616),
(171, '2026-10-20 19:00:00', NULL, 435310, 31170843),
(172, '2026-10-20 20:00:00', NULL, 958475, 12136521),
(173, '2026-10-20 21:00:00', NULL, 4042535, 125953835),
(174, '2026-10-20 22:00:00', NULL, 2418511, 84540163),
(175, '2026-10-20 23:00:00', NULL, 165779, 733873),
(176, '2026-10-21 02:00:00', NULL, 51766, 324629),
(177, '2026-10-21 03:00:00', NULL, 227296, 2714630),
(178, '2026-10-21 04:00:00', NULL, 3819134, 105651506),
(179, '2026-10-21 05:00:00', NULL, 5890160, 157399712),
(180, '2026-10-21 06:00:00', NULL, 4765339, 131702720),
(181, '2026-10-21 07:00:00', NULL, 2824330, 81222829),
(182, '2026-10-21 08:00:00', NULL, 12169563, 465111807),
(183, '2026-10-21 09:00:00', NULL, 10419124, 486580797),
(184, '2026-10-21 10:00:00', NULL, 3410731, 58237177),
(185, '2026-10-21 11:00:00', NULL, 5037700, 178823505),
(186, '2026-10-21 12:00:00', NULL, 21777436, 781785688),
(187, '2026-10-21 13:00:00', NULL, 4147601, 56692993),
(188, '2026-10-21 14:00:00', NULL, 4517707, 449335363),
(189, '2026-10-21 15:00:00', NULL, 11456743, 674728064),
(190, '2026-10-21 16:00:00', NULL, 3563493, 25332780),
(191, '2026-10-21 17:00:00', NULL, 6673568, 118789518),
(192, '2026-10-21 19:00:00', NULL, 13176192, 198211516),
(193, '2026-10-21 20:00:00', NULL, 23912974, 558989080),
(194, '2026-10-21 21:00:00', NULL, 14456516, 293135230),
(195, '2026-10-21 22:00:00', NULL, 1350006, 2942197),
(196, '2026-10-21 23:00:00', NULL, 1634781, 2550819),
(197, '2026-10-22 00:00:00', NULL, 1995705, 10350709),
(198, '2026-10-22 01:00:00', NULL, 5574142, 263350503),
(199, '2026-10-22 02:00:00', NULL, 4916012, 68946485),
(200, '2026-10-22 03:00:00', NULL, 14251023, 141119761),
(201, '2026-10-22 04:00:00', NULL, 8953130, 133180771),
(202, '2026-10-22 05:00:00', NULL, 4576037, 83216487),
(203, '2026-10-22 06:00:00', NULL, 16504814, 608438717),
(204, '2026-10-22 07:00:00', NULL, 17474119, 765442786),
(205, '2026-10-22 08:00:00', NULL, 19910051, 545486890),
(206, '2026-10-22 09:00:00', NULL, 7729286, 262612776),
(207, '2026-10-22 10:00:00', NULL, 17744530, 718655017),
(208, '2026-10-22 11:00:00', NULL, 676142, 674954),
(209, '2026-10-22 12:00:00', NULL, 8466003, 122149160),
(210, '2026-10-22 13:00:00', NULL, 10739282, 290980431),
(211, '2026-10-22 14:00:00', NULL, 23253923, 624560010),
(212, '2026-10-22 15:00:00', NULL, 16799733, 665703190),
(213, '2026-10-22 16:00:00', NULL, 29980994, 503006962),
(214, '2026-10-22 17:00:00', NULL, 1862456, 12144318),
(215, '2026-10-22 18:00:00', NULL, 5305474, 114031217),
(216, '2026-10-22 19:00:00', NULL, 11036098, 201182718),
(217, '2026-10-22 20:00:00', NULL, 32645511, 995654501),
(218, '2026-10-22 21:00:00', NULL, 5806208, 84158798),
(219, '2026-10-22 22:00:00', NULL, 4679081, 19223113),
(220, '2026-10-22 23:00:00', NULL, 2263691, 17574330),
(221, '2026-10-23 00:00:00', NULL, 2137073, 85005835),
(222, '2026-10-23 01:00:00', NULL, 2341964, 2687943),
(223, '2026-10-23 02:00:00', NULL, 3431158, 20950652),
(224, '2026-10-23 03:00:00', NULL, 12005875, 688062268),
(225, '2026-10-23 04:00:00', NULL, 107887946, 684969970),
(226, '2026-10-23 05:00:00', NULL, 75934238, 31674494),
(227, '2026-10-23 06:00:00', NULL, 11918102, 242847473),
(228, '2026-10-23 07:00:00', NULL, 17078814, 131131130),
(229, '2026-10-23 08:00:00', NULL, 21354487, 544779297),
(230, '2026-10-23 09:00:00', NULL, 22112274, 516148480),
(231, '2026-10-23 10:00:00', NULL, 22561396, 479758794),
(232, '2026-10-23 11:00:00', NULL, 14494690, 246985848),
(233, '2026-10-23 12:00:00', NULL, 6116937, 61683199),
(234, '2026-10-23 13:00:00', NULL, 24214922, 668652327),
(235, '2026-10-23 14:00:00', NULL, 36093599, 1076822253),
(236, '2026-10-23 15:00:00', NULL, 7764376, 385921446),
(237, '2026-10-23 16:00:00', NULL, 11885089, 338067564),
(238, '2026-10-23 17:00:00', NULL, 3443367, 69583888),
(239, '2026-10-23 18:00:00', NULL, 9633194, 114364521),
(240, '2026-10-23 19:00:00', NULL, 31379744, 356728916),
(241, '2026-10-23 20:00:00', NULL, 21880411, 434705893),
(242, '2026-10-23 21:00:00', NULL, 36833968, 1783836251),
(243, '2026-10-23 22:00:00', NULL, 4860066, 49031768),
(244, '2026-10-23 23:00:00', NULL, 18586964, 138949770),
(245, '2026-10-24 00:00:00', NULL, 3066069, 3047914),
(246, '2026-10-24 01:00:00', NULL, 2229392, 3157277),
(247, '2026-10-24 02:00:00', NULL, 3090315, 30345502),
(248, '2026-10-24 03:00:00', NULL, 1644230, 3311348),
(249, '2026-10-24 04:00:00', NULL, 2312364, 4253915),
(250, '2026-10-24 05:00:00', NULL, 2753566, 18407124),
(251, '2026-10-24 06:00:00', NULL, 11746066, 385080427),
(252, '2026-10-24 07:00:00', NULL, 6238462, 163905408),
(253, '2026-10-24 08:00:00', NULL, 15135337, 517044522),
(254, '2026-10-24 09:00:00', NULL, 32948246, 524651505),
(255, '2026-10-24 10:00:00', NULL, 8253990, 389062816),
(256, '2026-10-24 13:00:00', NULL, 1444117, 11954656),
(257, '2026-10-24 14:00:00', NULL, 11419296, 271725503),
(258, '2026-10-24 15:00:00', NULL, 6570828, 313191565),
(259, '2026-10-24 16:00:00', NULL, 14985458, 297283030),
(260, '2026-10-24 17:00:00', NULL, 11160473, 93395481),
(261, '2026-10-24 18:00:00', NULL, 12183652, 145325230),
(262, '2026-10-24 19:00:00', NULL, 31582990, 398474056),
(263, '2026-10-24 20:00:00', NULL, 136936, 152566),
(264, '2026-10-24 21:00:00', NULL, 2475884, 17201752),
(265, '2026-10-24 22:00:00', NULL, 10718881, 125761955),
(266, '2026-10-24 23:00:00', NULL, 4102352, 23515407),
(267, '2026-10-25 00:00:00', NULL, 2758626, 2432173),
(268, '2026-10-25 01:00:00', NULL, 1804461, 2781333),
(269, '2026-10-25 02:00:00', NULL, 4723270, 50882801),
(270, '2026-10-25 03:00:00', NULL, 2854180, 37713799),
(271, '2026-10-25 04:00:00', NULL, 3549977, 14167794),
(272, '2026-10-25 05:00:00', NULL, 5077577, 69025524),
(273, '2026-10-25 06:00:00', NULL, 7217960, 161639943),
(274, '2026-10-25 07:00:00', NULL, 6081649, 164507895),
(275, '2026-10-25 08:00:00', NULL, 16166971, 126251163),
(276, '2026-10-25 09:00:00', NULL, 10968833, 236166372),
(277, '2026-10-25 10:00:00', NULL, 18027936, 304135475),
(278, '2026-10-25 11:00:00', NULL, 12613082, 377347001),
(279, '2026-10-25 12:00:00', NULL, 21123610, 617137111),
(280, '2026-10-25 13:00:00', NULL, 15812385, 372807027),
(281, '2026-10-25 14:00:00', NULL, 9168066, 43693841),
(282, '2026-10-25 15:00:00', NULL, 18132081, 290367797),
(283, '2026-10-25 16:00:00', NULL, 17987801, 236441692),
(284, '2026-10-25 17:00:00', NULL, 13056376, 320781457),
(285, '2026-10-25 18:00:00', NULL, 16218295, 290155285),
(286, '2026-10-25 19:00:00', NULL, 2312675, 12250596),
(287, '2026-10-25 20:00:00', NULL, 2939546, 28926183),
(288, '2026-10-25 21:00:00', NULL, 15386699, 497698914),
(289, '2026-10-25 22:00:00', NULL, 17716823, 1277037987),
(290, '2026-10-25 23:00:00', NULL, 227544, 374902),
(291, '2026-10-26 00:00:00', NULL, 327623, 601521),
(292, '2026-10-26 01:00:00', NULL, 416542, 2377787),
(293, '2026-10-26 02:00:00', NULL, 1674466, 3898019),
(294, '2026-10-26 03:00:00', NULL, 3904106, 79123850),
(295, '2026-10-26 04:00:00', NULL, 5471610, 144078211),
(296, '2026-10-26 05:00:00', NULL, 7217613, 124739979),
(297, '2026-10-26 06:00:00', NULL, 8896302, 211997121),
(298, '2026-10-26 07:00:00', NULL, 13235840, 384473172),
(299, '2026-10-26 08:00:00', NULL, 10922436, 148674981),
(300, '2026-10-26 09:00:00', NULL, 37173129, 713637547),
(301, '2026-10-26 10:00:00', NULL, 22057252, 384712092),
(302, '2026-10-26 11:00:00', NULL, 7031294, 216539465),
(303, '2026-10-26 12:00:00', NULL, 14398188, 1208582153),
(304, '2026-10-26 13:00:00', NULL, 5059053, 38935544),
(305, '2026-10-26 14:00:00', NULL, 7044550, 83846958),
(306, '2026-10-26 15:00:00', NULL, 34631688, 432016832),
(307, '2026-10-26 16:00:00', NULL, 18513592, 282007784),
(308, '2026-10-26 17:00:00', NULL, 25517801, 502090452),
(309, '2026-10-26 18:00:00', NULL, 25177970, 388731616),
(310, '2026-10-26 19:00:00', NULL, 20996841, 410326188),
(311, '2026-10-26 20:00:00', NULL, 24385330, 397210543),
(312, '2026-10-26 21:00:00', NULL, 32204692, 402118737),
(313, '2026-10-26 22:00:00', NULL, 21305194, 285239056),
(314, '2026-10-26 23:00:00', NULL, 2555257, 1603887),
(315, '2026-10-27 00:00:00', NULL, 2920565, 1715546),
(316, '2026-10-27 01:00:00', NULL, 1357176, 1877840),
(317, '2026-10-27 02:00:00', NULL, 2707056, 18149737),
(318, '2026-10-27 03:00:00', NULL, 535016, 729707),
(319, '2026-10-27 04:00:00', NULL, 506832, 949402),
(320, '2026-10-27 05:00:00', NULL, 12709912, 78909636),
(321, '2026-10-27 06:00:00', NULL, 12308319, 127775378),
(322, '2026-10-27 07:00:00', NULL, 6872792, 75210523),
(323, '2026-10-27 08:00:00', NULL, 8167848, 239136429),
(324, '2026-10-27 09:00:00', NULL, 35771843, 321277724),
(325, '2026-10-27 10:00:00', NULL, 17490379, 761982877),
(326, '2026-10-27 11:00:00', NULL, 6815616, 56443975),
(327, '2026-10-27 12:00:00', NULL, 14669829, 208871335),
(328, '2026-10-27 13:00:00', NULL, 10459059, 303084331),
(329, '2026-10-27 14:00:00', NULL, 21418091, 171096441),
(330, '2026-10-27 15:00:00', NULL, 6485976, 78008335),
(331, '2026-10-27 16:00:00', NULL, 8492577, 137559583),
(332, '2026-10-27 17:00:00', NULL, 12798769, 274394285),
(333, '2026-10-27 18:00:00', NULL, 7583771, 89272510),
(334, '2026-10-27 19:00:00', NULL, 14704210, 231215240),
(335, '2026-10-27 20:00:00', NULL, 19921062, 519396645),
(336, '2026-10-27 21:00:00', NULL, 11174738, 362575279),
(337, '2026-10-27 22:00:00', NULL, 4427272, 46068386),
(338, '2026-10-27 23:00:00', NULL, 3428713, 9564660),
(339, '2026-10-28 00:00:00', NULL, 4148127, 9565928),
(340, '2026-10-28 01:00:00', NULL, 2699840, 4033626),
(341, '2026-10-28 02:00:00', NULL, 4228577, 14995511),
(342, '2026-10-28 03:00:00', NULL, 1641341, 2420047),
(343, '2026-10-28 04:00:00', NULL, 6613425, 122474805),
(344, '2026-10-28 05:00:00', NULL, 2625455, 9598587),
(345, '2026-10-28 06:00:00', NULL, 12652776, 194627111),
(346, '2026-10-28 07:00:00', NULL, 12727698, 443887278),
(347, '2026-10-28 08:00:00', NULL, 36945814, 37634472),
(348, '2026-10-28 09:00:00', NULL, 6997167, 168880252),
(349, '2026-10-28 10:00:00', NULL, 1911627, 10608424),
(350, '2026-10-28 11:00:00', NULL, 787530, 1448010),
(351, '2026-10-28 12:00:00', NULL, 7563415, 37775966),
(352, '2026-10-28 13:00:00', NULL, 25457184, 105731268),
(353, '2026-10-28 14:00:00', NULL, 17696477, 35837771),
(354, '2026-10-28 15:00:00', NULL, 11560610, 37040368),
(355, '2026-10-28 16:00:00', NULL, 4237770, 32933933),
(356, '2026-10-28 17:00:00', NULL, 21283596, 297653091),
(357, '2026-10-28 18:00:00', NULL, 221262063, 455258254),
(358, '2026-10-28 19:00:00', NULL, 16780249, 217452918),
(359, '2026-10-28 20:00:00', NULL, 5342927, 143051667),
(360, '2026-10-28 21:00:00', NULL, 7189096, 255099619),
(361, '2026-10-28 22:00:00', NULL, 1720064, 2549887),
(362, '2026-10-28 23:00:00', NULL, 1327045, 1437795),
(363, '2026-10-29 00:00:00', NULL, 5812717, 171051898),
(364, '2026-10-29 01:00:00', NULL, 1547474, 3381446),
(365, '2026-10-29 02:00:00', NULL, 438139, 757630),
(366, '2026-10-29 03:00:00', NULL, 1634284, 297337442),
(367, '2026-10-29 04:00:00', NULL, 3641515, 55217875),
(368, '2026-10-29 05:00:00', NULL, 520138, 4903276),
(369, '2026-10-29 06:00:00', NULL, 1709392, 13642700),
(370, '2026-10-29 07:00:00', NULL, 439332, 2808572),
(371, '2026-10-29 08:00:00', NULL, 5650582, 77855572),
(372, '2026-10-29 09:00:00', NULL, 3914700, 55535956),
(373, '2026-10-29 10:00:00', NULL, 4029834, 77327350),
(374, '2026-10-29 11:00:00', NULL, 4617772, 29079706),
(375, '2026-10-29 12:00:00', NULL, 11629733, 420143152),
(376, '2026-10-29 13:00:00', NULL, 4296279, 53771672),
(377, '2026-10-29 14:00:00', NULL, 957186, 3122052),
(378, '2026-10-29 15:00:00', NULL, 13610213, 44866964),
(379, '2026-10-29 16:00:00', NULL, 31002868, 148032521),
(380, '2026-10-29 17:00:00', NULL, 18409465, 213764161),
(381, '2026-10-29 18:00:00', NULL, 6030383, 47871300),
(382, '2026-10-29 19:00:00', NULL, 13022541, 265626563),
(383, '2026-10-29 20:00:00', NULL, 25675459, 92857658),
(384, '2026-10-29 21:00:00', NULL, 27045786, 159720637),
(385, '2026-10-29 22:00:00', NULL, 8222080, 13581243),
(386, '2026-10-29 23:00:00', NULL, 518079, 685893),
(387, '2026-10-30 00:00:00', NULL, 277563, 336428),
(388, '2026-10-30 01:00:00', NULL, 388064, 441912),
(389, '2026-10-30 02:00:00', NULL, 488482, 523695),
(390, '2026-10-30 03:00:00', NULL, 5476992, 67348806),
(391, '2026-10-30 04:00:00', NULL, 491549, 848214),
(392, '2026-10-30 05:00:00', NULL, 5615468, 92658658),
(393, '2026-10-30 06:00:00', NULL, 2057282, 114490750),
(394, '2026-10-30 07:00:00', NULL, 9295908, 116188903),
(395, '2026-10-30 08:00:00', NULL, 1954500, 35519250),
(396, '2026-10-30 09:00:00', NULL, 10950952, 100936624),
(397, '2026-10-30 10:00:00', NULL, 2610501, 50129068),
(398, '2026-10-30 11:00:00', NULL, 13004199, 64397681),
(399, '2026-10-30 12:00:00', NULL, 55043, 135458),
(400, '2026-10-30 13:00:00', NULL, 4791457, 7212329),
(401, '2026-10-30 14:00:00', NULL, 19692748, 81810252),
(402, '2026-10-30 15:00:00', NULL, 24206331, 267555166),
(403, '2026-10-30 16:00:00', NULL, 15707727, 385269095),
(404, '2026-10-30 17:00:00', NULL, 26641118, 447640126),
(405, '2026-10-30 18:00:00', NULL, 27983874, 410413986),
(406, '2026-10-30 19:00:00', NULL, 24961468, 560972697),
(407, '2026-10-30 20:00:00', NULL, 3826596, 11624677),
(408, '2026-10-30 21:00:00', NULL, 2749299, 269237176),
(409, '2026-10-30 22:00:00', NULL, 2442048, 262552967),
(410, '2026-10-30 23:00:00', NULL, 2364726, 276697196),
(411, '2026-10-31 00:00:00', NULL, 2435163, 243805307),
(412, '2026-10-31 01:00:00', NULL, 2216532, 216641409),
(413, '2026-10-31 07:00:00', NULL, 470875, 5164962),
(414, '2026-10-31 08:00:00', NULL, 12615879, 144573948),
(415, '2026-10-31 09:00:00', NULL, 9814519, 43088147),
(416, '2026-10-31 10:00:00', NULL, 1933249, 7626952),
(417, '2026-10-31 11:00:00', NULL, 5923250, 24269700),
(418, '2026-10-31 12:00:00', NULL, 8812376, 111806655),
(419, '2026-10-31 13:00:00', NULL, 11702588, 200837558),
(420, '2026-10-31 14:00:00', NULL, 4803274, 80854322),
(421, '2026-10-31 15:00:00', NULL, 12123573, 214047416),
(422, '2026-10-31 16:00:00', NULL, 5263602, 86069024),
(423, '2026-10-31 17:00:00', NULL, 4188258, 81313706),
(424, '2026-10-31 18:00:00', NULL, 8276563, 275490235),
(425, '2026-10-31 19:00:00', NULL, 10315455, 182261599),
(426, '2026-10-31 20:00:00', NULL, 5087406, 232735116),
(427, '2026-10-31 21:00:00', NULL, 5699213, 276331267),
(428, '2026-10-31 22:00:00', NULL, 5034580, 271621676),
(429, '2026-10-31 23:00:00', NULL, 4216841, 286389149),
(430, '2026-11-01 00:00:00', NULL, 7829525, 473295096),
(431, '2026-11-01 01:00:00', NULL, 69248411, 182667526),
(432, '2026-11-01 02:00:00', NULL, 11428602, 136130573),
(433, '2026-11-01 03:00:00', NULL, 1089576, 19638231),
(434, '2026-11-01 04:00:00', NULL, 32672, 265127),
(435, '2026-11-01 05:00:00', NULL, 3062836, 37957531),
(436, '2026-11-01 06:00:00', NULL, 17931247, 79888083),
(437, '2026-11-01 07:00:00', NULL, 21904246, 76099632),
(438, '2026-11-01 08:00:00', NULL, 13128068, 87459138),
(439, '2026-11-01 09:00:00', NULL, 1913992, 22498793),
(440, '2026-11-01 10:00:00', NULL, 8892507, 215778094),
(441, '2026-11-01 11:00:00', NULL, 35282120, 139451553),
(442, '2026-11-01 12:00:00', NULL, 29635436, 149681818),
(443, '2026-11-01 13:00:00', NULL, 14198388, 154946570),
(444, '2026-11-01 14:00:00', NULL, 54649078, 317671366),
(445, '2026-11-01 15:00:00', NULL, 24669692, 243715836),
(446, '2026-11-01 16:00:00', NULL, 16054758, 986567627),
(447, '2026-11-01 17:00:00', NULL, 11290407, 231695212),
(448, '2026-11-01 18:00:00', NULL, 30849789, 442617924),
(449, '2026-11-01 19:00:00', NULL, 14357615, 296882662),
(450, '2026-11-01 20:00:00', NULL, 18010595, 229201902),
(451, '2026-11-01 21:00:00', NULL, 4130914, 5126679),
(452, '2026-11-01 22:00:00', NULL, 5108550, 5361473),
(453, '2026-11-01 23:00:00', NULL, 4338581, 4899046),
(454, '2026-11-02 00:00:00', NULL, 5256286, 5921526),
(455, '2026-11-02 01:00:00', NULL, 4846446, 25790635),
(456, '2026-11-02 02:00:00', NULL, 10979386, 177548369),
(457, '2026-11-02 03:00:00', NULL, 40525205, 395016296),
(458, '2026-11-02 04:00:00', NULL, 4051001, 36079774),
(459, '2026-11-02 05:00:00', NULL, 1728472, 51255843),
(460, '2026-11-02 06:00:00', NULL, 11402447, 77228904),
(461, '2026-11-02 07:00:00', NULL, 34813776, 154713873),
(462, '2026-11-02 08:00:00', NULL, 43793389, 361385587),
(463, '2026-11-02 09:00:00', NULL, 42784237, 239383594),
(464, '2026-11-02 10:00:00', NULL, 25839420, 810894610),
(465, '2026-11-02 11:00:00', NULL, 27015831, 366618212),
(466, '2026-11-02 12:00:00', NULL, 41833759, 152493426),
(467, '2026-11-02 13:00:00', NULL, 55489807, 376530445),
(468, '2026-11-02 14:00:00', NULL, 7553930, 46652147),
(469, '2026-11-08 00:00:00', NULL, 2814252, 586630342),
(470, '2026-11-08 01:00:00', NULL, 9645707, 1287464825),
(471, '2026-11-08 02:00:00', NULL, 1301077, 2855527),
(472, '2026-11-08 03:00:00', NULL, 1507783, 4959031),
(473, '2026-11-08 04:00:00', NULL, 1367140, 3144355),
(474, '2026-11-08 05:00:00', NULL, 7522402, 515635916),
(475, '2026-11-08 06:00:00', NULL, 1997086, 41118039),
(476, '2026-11-08 08:00:00', NULL, 798404, 6772264),
(477, '2026-11-08 18:00:00', NULL, 4649553, 119513915);

-- --------------------------------------------------------

--
-- Структура таблицы `node_user_usages`
--

CREATE TABLE `node_user_usages` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `used_traffic` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `node_user_usages`
--

INSERT INTO `node_user_usages` (`id`, `created_at`, `user_id`, `node_id`, `used_traffic`) VALUES
(8, '2026-10-06 23:00:00', 6, NULL, 391142),
(9, '2026-10-07 00:00:00', 6, NULL, 804647526),
(10, '2026-10-07 01:00:00', 6, NULL, 2657854),
(11, '2026-10-07 02:00:00', 6, NULL, 2935815),
(12, '2026-10-08 10:00:00', 6, NULL, 712823363),
(13, '2026-10-08 11:00:00', 6, NULL, 218920556),
(14, '2026-10-08 12:00:00', 6, NULL, 50206191),
(15, '2026-10-09 11:00:00', 6, NULL, 24882769),
(16, '2026-10-09 12:00:00', 6, NULL, 200801504),
(17, '2026-10-09 13:00:00', 6, NULL, 134305363),
(18, '2026-10-09 14:00:00', 6, NULL, 163333433),
(19, '2026-10-09 15:00:00', 6, NULL, 6326179),
(20, '2026-10-09 16:00:00', 6, NULL, 175834482),
(21, '2026-10-09 18:00:00', 6, NULL, 614989281),
(22, '2026-10-09 19:00:00', 6, NULL, 3834853),
(23, '2026-10-09 20:00:00', 6, NULL, 31568166),
(24, '2026-10-09 21:00:00', 6, NULL, 852853),
(25, '2026-10-09 22:00:00', 6, NULL, 1174829495),
(26, '2026-10-09 23:00:00', 6, NULL, 5659952),
(27, '2026-10-10 00:00:00', 6, NULL, 3164000),
(28, '2026-10-10 01:00:00', 6, NULL, 2421600),
(29, '2026-10-10 02:00:00', 6, NULL, 3379282),
(30, '2026-10-10 03:00:00', 6, NULL, 85831543),
(31, '2026-10-10 04:00:00', 6, NULL, 48362593),
(32, '2026-10-10 05:00:00', 6, NULL, 41560811),
(33, '2026-10-10 06:00:00', 6, NULL, 5301484),
(34, '2026-10-10 07:00:00', 6, NULL, 254731),
(35, '2026-10-10 08:00:00', 6, NULL, 4204375),
(36, '2026-10-10 09:00:00', 6, NULL, 43144467),
(37, '2026-10-10 10:00:00', 6, NULL, 34464295),
(38, '2026-10-10 11:00:00', 6, NULL, 1230563),
(42, '2026-10-10 15:00:00', 6, NULL, 60932),
(43, '2026-10-10 16:00:00', 6, NULL, 15638),
(44, '2026-10-10 17:00:00', 6, NULL, 31898106),
(58, '2026-10-11 05:00:00', 6, NULL, 11555448),
(61, '2026-10-11 11:00:00', 6, NULL, 621858531),
(62, '2026-10-11 12:00:00', 6, NULL, 118128024),
(63, '2026-10-11 13:00:00', 6, NULL, 62474073),
(64, '2026-10-11 14:00:00', 6, NULL, 61261166),
(68, '2026-10-13 05:00:00', 6, NULL, 799480718),
(69, '2026-10-13 06:00:00', 6, NULL, 72255),
(70, '2026-10-13 11:00:00', 6, NULL, 79001),
(71, '2026-10-13 15:00:00', 6, NULL, 21389721),
(72, '2026-10-13 16:00:00', 6, NULL, 19835561),
(73, '2026-10-13 18:00:00', 6, NULL, 60002953),
(74, '2026-10-13 19:00:00', 6, NULL, 121966029),
(75, '2026-10-14 08:00:00', 6, NULL, 725229086),
(76, '2026-10-14 09:00:00', 6, NULL, 2554062),
(77, '2026-10-14 10:00:00', 6, NULL, 2619330),
(78, '2026-10-14 11:00:00', 6, NULL, 2865620),
(79, '2026-10-14 12:00:00', 6, NULL, 2591995),
(80, '2026-10-14 13:00:00', 6, NULL, 2973142),
(81, '2026-10-14 14:00:00', 6, NULL, 2572238),
(82, '2026-10-14 15:00:00', 6, NULL, 20646814),
(83, '2026-10-14 16:00:00', 6, NULL, 3174870),
(84, '2026-10-14 17:00:00', 6, NULL, 4363458),
(85, '2026-10-14 18:00:00', 6, NULL, 2605614),
(86, '2026-10-14 19:00:00', 6, NULL, 2553611),
(87, '2026-10-14 21:00:00', 6, NULL, 36134),
(88, '2026-10-14 23:00:00', 6, NULL, 475762),
(89, '2026-10-15 00:00:00', 6, NULL, 1609414),
(90, '2026-10-15 01:00:00', 6, NULL, 2061930),
(91, '2026-10-15 02:00:00', 6, NULL, 2043332),
(92, '2026-10-15 03:00:00', 6, NULL, 2784341),
(93, '2026-10-15 04:00:00', 6, NULL, 1910006),
(94, '2026-10-15 05:00:00', 6, NULL, 1175448),
(95, '2026-10-15 06:00:00', 6, NULL, 1927662),
(96, '2026-10-15 07:00:00', 6, NULL, 1803681),
(97, '2026-10-15 08:00:00', 6, NULL, 2005150),
(98, '2026-10-15 09:00:00', 6, NULL, 1993161),
(99, '2026-10-15 10:00:00', 6, NULL, 1795121),
(100, '2026-10-15 11:00:00', 6, NULL, 245780531),
(101, '2026-10-15 12:00:00', 6, NULL, 3424176),
(102, '2026-10-15 13:00:00', 6, NULL, 2877109),
(103, '2026-10-15 14:00:00', 6, NULL, 2045697),
(104, '2026-10-15 15:00:00', 6, NULL, 6463443),
(105, '2026-10-15 16:00:00', 6, NULL, 3791815),
(106, '2026-10-15 17:00:00', 6, NULL, 3551892),
(107, '2026-10-15 18:00:00', 6, NULL, 1889295),
(108, '2026-10-16 07:00:00', 6, NULL, 1357449),
(109, '2026-10-16 08:00:00', 6, NULL, 5886168),
(110, '2026-10-16 21:00:00', 8, NULL, 13738655),
(111, '2026-10-16 22:00:00', 8, NULL, 198951),
(112, '2026-10-17 09:00:00', 8, NULL, 133471704),
(113, '2026-10-17 10:00:00', 8, NULL, 29353753),
(114, '2026-10-17 11:00:00', 8, NULL, 15578066),
(115, '2026-10-17 12:00:00', 8, NULL, 68046645),
(116, '2026-10-17 13:00:00', 8, NULL, 76969057),
(117, '2026-10-17 14:00:00', 8, NULL, 243578823),
(118, '2026-10-17 21:00:00', 8, NULL, 166940617),
(119, '2026-10-17 22:00:00', 8, NULL, 44717083),
(120, '2026-10-17 23:00:00', 8, NULL, 9960981),
(121, '2026-10-18 00:00:00', 8, NULL, 4194275),
(122, '2026-10-18 01:00:00', 8, NULL, 3585163),
(123, '2026-10-18 02:00:00', 8, NULL, 3657469),
(124, '2026-10-18 03:00:00', 8, NULL, 91828693),
(125, '2026-10-18 04:00:00', 8, NULL, 90849669),
(126, '2026-10-18 05:00:00', 8, NULL, 37164050),
(127, '2026-10-18 06:00:00', 11, NULL, 338621),
(128, '2026-10-18 07:00:00', 11, NULL, 2560140),
(129, '2026-10-18 14:00:00', 11, NULL, 3039058),
(130, '2026-10-18 14:00:00', 8, NULL, 607647531),
(131, '2026-10-18 15:00:00', 8, NULL, 722487912),
(132, '2026-10-18 17:00:00', 11, NULL, 13803161),
(133, '2026-10-18 17:00:00', 8, NULL, 642542),
(134, '2026-10-18 18:00:00', 11, NULL, 270320329),
(135, '2026-10-18 19:00:00', 11, NULL, 273667648),
(136, '2026-10-18 20:00:00', 11, NULL, 246671289),
(137, '2026-10-18 21:00:00', 11, NULL, 1367862),
(138, '2026-10-18 22:00:00', 11, NULL, 831843),
(139, '2026-10-18 23:00:00', 11, NULL, 25170681),
(140, '2026-10-19 00:00:00', 11, NULL, 596472),
(141, '2026-10-19 01:00:00', 11, NULL, 295666),
(142, '2026-10-19 02:00:00', 11, NULL, 778006),
(143, '2026-10-19 03:00:00', 11, NULL, 707046),
(144, '2026-10-19 04:00:00', 11, NULL, 86416510),
(145, '2026-10-19 05:00:00', 11, NULL, 159883724),
(146, '2026-10-19 06:00:00', 11, NULL, 422449620),
(147, '2026-10-19 07:00:00', 11, NULL, 130334206),
(148, '2026-10-19 08:00:00', 11, NULL, 121729980),
(149, '2026-10-19 09:00:00', 8, NULL, 5434792),
(150, '2026-10-19 09:00:00', 11, NULL, 6962055),
(151, '2026-10-19 10:00:00', 11, NULL, 21421678),
(152, '2026-10-19 11:00:00', 11, NULL, 59392401),
(153, '2026-10-19 12:00:00', 11, NULL, 47519635),
(154, '2026-10-19 13:00:00', 11, NULL, 69800440),
(155, '2026-10-19 13:00:00', 8, NULL, 4958923),
(156, '2026-10-19 14:00:00', 11, NULL, 76949517),
(157, '2026-10-19 15:00:00', 11, NULL, 11520864),
(158, '2026-10-19 15:00:00', 8, NULL, 320908),
(159, '2026-10-19 16:00:00', 11, NULL, 13796586),
(160, '2026-10-19 17:00:00', 11, NULL, 21314634),
(161, '2026-10-19 18:00:00', 11, NULL, 5720441),
(162, '2026-10-19 20:00:00', 11, NULL, 43276673),
(163, '2026-10-19 21:00:00', 11, NULL, 27055976),
(164, '2026-10-19 22:00:00', 11, NULL, 60002373),
(165, '2026-10-19 23:00:00', 11, NULL, 232726),
(166, '2026-10-20 03:00:00', 11, NULL, 761529),
(167, '2026-10-20 04:00:00', 11, NULL, 16612),
(168, '2026-10-20 05:00:00', 11, NULL, 143287339),
(169, '2026-10-20 06:00:00', 11, NULL, 2626798),
(170, '2026-10-20 07:00:00', 11, NULL, 23234945),
(171, '2026-10-20 07:00:00', 8, NULL, 36462),
(172, '2026-10-20 08:00:00', 11, NULL, 169892498),
(173, '2026-10-20 09:00:00', 11, NULL, 63246551),
(174, '2026-10-20 10:00:00', 11, NULL, 43831278),
(175, '2026-10-20 11:00:00', 11, NULL, 66992905),
(176, '2026-10-20 12:00:00', 11, NULL, 3746332),
(177, '2026-10-20 14:00:00', 11, NULL, 7858111),
(178, '2026-10-20 15:00:00', 11, NULL, 190496391),
(179, '2026-10-20 16:00:00', 11, NULL, 68340549),
(180, '2026-10-20 17:00:00', 12, NULL, 156149725),
(181, '2026-10-20 17:00:00', 8, NULL, 71556569),
(182, '2026-10-20 18:00:00', 8, NULL, 27682167),
(183, '2026-10-20 18:00:00', 12, NULL, 35942565),
(184, '2026-10-20 19:00:00', 8, NULL, 31606711),
(185, '2026-10-20 20:00:00', 11, NULL, 13094996),
(186, '2026-10-20 21:00:00', 11, NULL, 129996490),
(187, '2026-10-20 22:00:00', 11, NULL, 86958674),
(188, '2026-10-20 23:00:00', 11, NULL, 899676),
(189, '2026-10-21 02:00:00', 11, NULL, 376419),
(190, '2026-10-21 03:00:00', 11, NULL, 2941974),
(191, '2026-10-21 04:00:00', 11, NULL, 109470712),
(192, '2026-10-21 05:00:00', 11, NULL, 163291131),
(193, '2026-10-21 06:00:00', 11, NULL, 136468107),
(194, '2026-10-21 07:00:00', 11, NULL, 84047207),
(195, '2026-10-21 08:00:00', 11, NULL, 477281490),
(196, '2026-10-21 09:00:00', 11, NULL, 92509886),
(197, '2026-10-21 09:00:00', 8, NULL, 112723727),
(198, '2026-10-21 09:00:00', 12, NULL, 291764514),
(199, '2026-10-21 10:00:00', 8, NULL, 9198103),
(200, '2026-10-21 10:00:00', 11, NULL, 52463254),
(201, '2026-10-21 11:00:00', 8, NULL, 17483256),
(202, '2026-10-21 11:00:00', 11, NULL, 166380067),
(203, '2026-10-21 12:00:00', 8, NULL, 309790128),
(204, '2026-10-21 12:00:00', 11, NULL, 493775369),
(205, '2026-10-21 13:00:00', 11, NULL, 60753923),
(206, '2026-10-21 13:00:00', 8, NULL, 86791),
(207, '2026-10-21 14:00:00', 11, NULL, 453856328),
(208, '2026-10-21 15:00:00', 11, NULL, 668361350),
(209, '2026-10-21 15:00:00', 8, NULL, 17823529),
(210, '2026-10-21 16:00:00', 8, NULL, 1741041),
(211, '2026-10-21 16:00:00', 11, NULL, 27229122),
(212, '2026-10-21 17:00:00', 11, NULL, 109087128),
(213, '2026-10-21 17:00:00', 8, NULL, 16386105),
(214, '2026-10-21 19:00:00', 11, NULL, 211387708),
(215, '2026-10-21 20:00:00', 11, NULL, 582902054),
(216, '2026-10-21 21:00:00', 11, NULL, 307591746),
(217, '2026-10-21 22:00:00', 11, NULL, 4292203),
(218, '2026-10-21 23:00:00', 11, NULL, 4185600),
(219, '2026-10-22 00:00:00', 11, NULL, 12349448),
(220, '2026-10-22 01:00:00', 11, NULL, 246988688),
(221, '2026-10-22 01:00:00', 8, NULL, 21956661),
(222, '2026-10-22 02:00:00', 8, NULL, 393151),
(223, '2026-10-22 02:00:00', 11, NULL, 73478516),
(224, '2026-10-22 03:00:00', 11, NULL, 155371301),
(225, '2026-10-22 04:00:00', 11, NULL, 142133936),
(226, '2026-10-22 05:00:00', 11, NULL, 87792524),
(227, '2026-10-22 06:00:00', 11, NULL, 624943531),
(228, '2026-10-22 07:00:00', 11, NULL, 782916929),
(229, '2026-10-22 08:00:00', 11, NULL, 565407543),
(230, '2026-10-22 09:00:00', 11, NULL, 270342062),
(231, '2026-10-22 10:00:00', 11, NULL, 736402653),
(232, '2026-10-22 11:00:00', 11, NULL, 1351096),
(233, '2026-10-22 12:00:00', 11, NULL, 130618870),
(234, '2026-10-22 13:00:00', 11, NULL, 301719713),
(235, '2026-10-22 14:00:00', 11, NULL, 647834942),
(236, '2026-10-22 15:00:00', 11, NULL, 682502947),
(237, '2026-10-22 16:00:00', 11, NULL, 533003911),
(238, '2026-10-22 17:00:00', 11, NULL, 14009847),
(239, '2026-10-22 18:00:00', 11, NULL, 119336691),
(240, '2026-10-22 19:00:00', 11, NULL, 212218816),
(241, '2026-10-22 20:00:00', 11, NULL, 377229115),
(242, '2026-10-22 20:00:00', 12, NULL, 651155899),
(243, '2026-10-22 21:00:00', 11, NULL, 83978260),
(244, '2026-10-22 21:00:00', 12, NULL, 298250),
(245, '2026-10-22 21:00:00', 8, NULL, 5739394),
(246, '2026-10-22 22:00:00', 8, NULL, 18485925),
(247, '2026-10-22 22:00:00', 11, NULL, 5440883),
(248, '2026-10-22 23:00:00', 11, NULL, 19841021),
(249, '2026-10-23 00:00:00', 11, NULL, 87144408),
(250, '2026-10-23 01:00:00', 11, NULL, 5032931),
(251, '2026-10-23 02:00:00', 11, NULL, 22058596),
(252, '2026-10-23 02:00:00', 12, NULL, 2327350),
(253, '2026-10-23 03:00:00', 11, NULL, 163400766),
(254, '2026-10-23 03:00:00', 12, NULL, 536679741),
(255, '2026-10-23 04:00:00', 11, NULL, 34869686),
(256, '2026-10-23 04:00:00', 8, NULL, 758073719),
(257, '2026-10-23 05:00:00', 8, NULL, 87584909),
(258, '2026-10-23 05:00:00', 11, NULL, 20217698),
(259, '2026-10-23 06:00:00', 8, NULL, 114909394),
(260, '2026-10-23 06:00:00', 11, NULL, 140038333),
(261, '2026-10-23 07:00:00', 8, NULL, 8553075),
(262, '2026-10-23 07:00:00', 11, NULL, 139776341),
(263, '2026-10-23 08:00:00', 11, NULL, 566133784),
(264, '2026-10-23 09:00:00', 11, NULL, 538260754),
(265, '2026-10-23 10:00:00', 11, NULL, 495838342),
(266, '2026-10-23 10:00:00', 8, NULL, 6492705),
(267, '2026-10-23 11:00:00', 8, NULL, 16802772),
(268, '2026-10-23 11:00:00', 11, NULL, 244643652),
(269, '2026-10-23 12:00:00', 11, NULL, 58256899),
(270, '2026-10-23 12:00:00', 8, NULL, 9593260),
(271, '2026-10-23 13:00:00', 11, NULL, 690790266),
(272, '2026-10-23 13:00:00', 8, NULL, 2095640),
(273, '2026-10-23 14:00:00', 11, NULL, 1091818732),
(274, '2026-10-23 14:00:00', 8, NULL, 21154922),
(275, '2026-10-23 15:00:00', 11, NULL, 393685822),
(276, '2026-10-23 16:00:00', 11, NULL, 349952677),
(277, '2026-10-23 17:00:00', 11, NULL, 73027570),
(278, '2026-10-23 18:00:00', 11, NULL, 123992064),
(279, '2026-10-23 18:00:00', 13, NULL, 5651),
(280, '2026-10-23 19:00:00', 11, NULL, 85617401),
(281, '2026-10-23 19:00:00', 13, NULL, 266665576),
(282, '2026-10-23 19:00:00', 14, NULL, 35477262),
(283, '2026-10-23 19:00:00', 8, NULL, 355440),
(284, '2026-10-23 20:00:00', 8, NULL, 36215947),
(285, '2026-10-23 20:00:00', 11, NULL, 131739404),
(286, '2026-10-23 20:00:00', 13, NULL, 225178142),
(287, '2026-10-23 20:00:00', 14, NULL, 63507130),
(288, '2026-10-23 21:00:00', 11, NULL, 13770553),
(289, '2026-10-23 21:00:00', 13, NULL, 154154593),
(290, '2026-10-23 21:00:00', 14, NULL, 537029570),
(291, '2026-10-23 21:00:00', 8, NULL, 239268),
(292, '2026-10-23 21:00:00', 6, NULL, 1115476715),
(293, '2026-10-23 22:00:00', 13, NULL, 4762493),
(294, '2026-10-23 22:00:00', 14, NULL, 4358475),
(295, '2026-10-23 22:00:00', 8, NULL, 52084),
(296, '2026-10-23 22:00:00', 11, NULL, 44718782),
(297, '2026-10-23 23:00:00', 11, NULL, 152344004),
(298, '2026-10-23 23:00:00', 14, NULL, 2970567),
(299, '2026-10-23 23:00:00', 13, NULL, 2048746),
(300, '2026-10-23 23:00:00', 8, NULL, 173441),
(301, '2026-10-24 00:00:00', 13, NULL, 1585157),
(302, '2026-10-24 00:00:00', 14, NULL, 2939416),
(303, '2026-10-24 00:00:00', 11, NULL, 1540959),
(304, '2026-10-24 00:00:00', 8, NULL, 48451),
(305, '2026-10-24 01:00:00', 11, NULL, 1644725),
(306, '2026-10-24 01:00:00', 14, NULL, 1993730),
(307, '2026-10-24 01:00:00', 13, NULL, 1669880),
(308, '2026-10-24 01:00:00', 8, NULL, 78334),
(309, '2026-10-24 02:00:00', 13, NULL, 2497851),
(310, '2026-10-24 02:00:00', 14, NULL, 29822468),
(311, '2026-10-24 02:00:00', 8, NULL, 145110),
(312, '2026-10-24 02:00:00', 11, NULL, 970388),
(313, '2026-10-24 03:00:00', 13, NULL, 1951265),
(314, '2026-10-24 03:00:00', 14, NULL, 2212045),
(315, '2026-10-24 03:00:00', 11, NULL, 792268),
(316, '2026-10-24 04:00:00', 13, NULL, 1629599),
(317, '2026-10-24 04:00:00', 14, NULL, 3807291),
(318, '2026-10-24 04:00:00', 11, NULL, 1129389),
(319, '2026-10-24 05:00:00', 13, NULL, 16677853),
(320, '2026-10-24 05:00:00', 14, NULL, 2754940),
(321, '2026-10-24 05:00:00', 11, NULL, 1727897),
(322, '2026-10-24 06:00:00', 11, NULL, 257677197),
(323, '2026-10-24 06:00:00', 13, NULL, 139149813),
(324, '2026-10-24 07:00:00', 11, NULL, 2970008),
(325, '2026-10-24 07:00:00', 13, NULL, 85296718),
(326, '2026-10-24 07:00:00', 8, NULL, 81898258),
(327, '2026-10-24 08:00:00', 8, NULL, 25903693),
(328, '2026-10-24 08:00:00', 13, NULL, 503447243),
(329, '2026-10-24 08:00:00', 11, NULL, 2866700),
(330, '2026-10-24 09:00:00', 8, NULL, 22359730),
(331, '2026-10-24 09:00:00', 11, NULL, 342720806),
(332, '2026-10-24 09:00:00', 13, NULL, 158087467),
(333, '2026-10-24 09:00:00', 14, NULL, 34447496),
(334, '2026-10-24 10:00:00', 11, NULL, 176079285),
(335, '2026-10-24 10:00:00', 13, NULL, 145941833),
(336, '2026-10-24 10:00:00', 14, NULL, 75044132),
(337, '2026-10-24 10:00:00', 8, NULL, 255343),
(338, '2026-10-24 13:00:00', 13, NULL, 13398773),
(339, '2026-10-24 14:00:00', 13, NULL, 283144823),
(340, '2026-10-24 15:00:00', 13, NULL, 319762393),
(341, '2026-10-24 16:00:00', 13, NULL, 312269005),
(342, '2026-10-24 17:00:00', 13, NULL, 104556471),
(343, '2026-10-24 18:00:00', 13, NULL, 157509399),
(344, '2026-10-24 19:00:00', 13, NULL, 276586821),
(345, '2026-10-24 19:00:00', 14, NULL, 153470742),
(346, '2026-10-24 20:00:00', 14, NULL, 289502),
(347, '2026-10-24 21:00:00', 14, NULL, 19677636),
(348, '2026-10-24 22:00:00', 14, NULL, 136480836),
(349, '2026-10-24 23:00:00', 14, NULL, 9533949),
(350, '2026-10-24 23:00:00', 11, NULL, 18083810),
(351, '2026-10-25 00:00:00', 14, NULL, 4468370),
(352, '2026-10-25 00:00:00', 11, NULL, 723946),
(353, '2026-10-25 01:00:00', 14, NULL, 4585794),
(354, '2026-10-25 02:00:00', 14, NULL, 7451007),
(355, '2026-10-25 02:00:00', 11, NULL, 48165144),
(356, '2026-10-25 03:00:00', 14, NULL, 19075452),
(357, '2026-10-25 03:00:00', 11, NULL, 21492527),
(358, '2026-10-25 04:00:00', 14, NULL, 17440963),
(359, '2026-10-25 04:00:00', 11, NULL, 276808),
(360, '2026-10-25 05:00:00', 14, NULL, 19269383),
(361, '2026-10-25 05:00:00', 11, NULL, 91603),
(362, '2026-10-25 05:00:00', 13, NULL, 54742632),
(363, '2026-10-25 06:00:00', 13, NULL, 168611683),
(364, '2026-10-25 06:00:00', 11, NULL, 247254),
(365, '2026-10-25 07:00:00', 13, NULL, 151132990),
(366, '2026-10-25 07:00:00', 14, NULL, 19456554),
(367, '2026-10-25 08:00:00', 13, NULL, 78742446),
(368, '2026-10-25 08:00:00', 14, NULL, 63675688),
(369, '2026-10-25 09:00:00', 13, NULL, 161545053),
(370, '2026-10-25 09:00:00', 14, NULL, 85590669),
(371, '2026-10-25 10:00:00', 13, NULL, 322164466),
(372, '2026-10-25 11:00:00', 13, NULL, 386889192),
(373, '2026-10-25 11:00:00', 8, NULL, 3078457),
(374, '2026-10-25 12:00:00', 13, NULL, 604180968),
(375, '2026-10-25 12:00:00', 14, NULL, 34080312),
(376, '2026-10-25 13:00:00', 13, NULL, 388619929),
(377, '2026-10-25 14:00:00', 13, NULL, 52861907),
(378, '2026-10-25 15:00:00', 13, NULL, 230543270),
(379, '2026-10-25 15:00:00', 8, NULL, 77981096),
(380, '2026-10-25 16:00:00', 8, NULL, 92801732),
(381, '2026-10-25 16:00:00', 13, NULL, 161628505),
(382, '2026-10-25 17:00:00', 8, NULL, 45128188),
(383, '2026-10-25 17:00:00', 13, NULL, 288710079),
(384, '2026-10-25 18:00:00', 8, NULL, 132833542),
(385, '2026-10-25 18:00:00', 13, NULL, 173541630),
(386, '2026-10-25 19:00:00', 13, NULL, 616778),
(387, '2026-10-25 19:00:00', 14, NULL, 13946493),
(388, '2026-10-25 20:00:00', 14, NULL, 31377072),
(389, '2026-10-25 20:00:00', 8, NULL, 488726),
(390, '2026-10-25 21:00:00', 8, NULL, 372605414),
(391, '2026-10-25 21:00:00', 14, NULL, 140480585),
(392, '2026-10-25 22:00:00', 8, NULL, 163564807),
(393, '2026-10-25 22:00:00', 6, NULL, 1131210931),
(394, '2026-10-25 23:00:00', 8, NULL, 602446),
(395, '2026-10-26 00:00:00', 8, NULL, 929144),
(396, '2026-10-26 01:00:00', 8, NULL, 2794329),
(397, '2026-10-26 02:00:00', 8, NULL, 5572485),
(398, '2026-10-26 03:00:00', 8, NULL, 83030106),
(399, '2026-10-26 04:00:00', 8, NULL, 149549821),
(400, '2026-10-26 05:00:00', 8, NULL, 6892916),
(401, '2026-10-26 05:00:00', 13, NULL, 125064676),
(402, '2026-10-26 06:00:00', 8, NULL, 7860157),
(403, '2026-10-26 06:00:00', 13, NULL, 158729168),
(404, '2026-10-26 06:00:00', 14, NULL, 54304098),
(405, '2026-10-26 07:00:00', 8, NULL, 10430961),
(406, '2026-10-26 07:00:00', 13, NULL, 197751951),
(407, '2026-10-26 07:00:00', 14, NULL, 189526617),
(408, '2026-10-26 08:00:00', 8, NULL, 21188874),
(409, '2026-10-26 08:00:00', 13, NULL, 105089558),
(410, '2026-10-26 08:00:00', 14, NULL, 33320043),
(411, '2026-10-26 09:00:00', 8, NULL, 339425716),
(412, '2026-10-26 09:00:00', 14, NULL, 411406147),
(413, '2026-10-26 10:00:00', 8, NULL, 332761970),
(414, '2026-10-26 10:00:00', 14, NULL, 15112405),
(415, '2026-10-26 10:00:00', 13, NULL, 58901130),
(416, '2026-10-26 11:00:00', 13, NULL, 25195364),
(417, '2026-10-26 11:00:00', 14, NULL, 395599),
(418, '2026-10-26 11:00:00', 8, NULL, 197981315),
(419, '2026-10-26 12:00:00', 8, NULL, 1008849901),
(420, '2026-10-26 12:00:00', 13, NULL, 214138613),
(421, '2026-10-26 13:00:00', 8, NULL, 3189749),
(422, '2026-10-26 13:00:00', 13, NULL, 40805010),
(423, '2026-10-26 14:00:00', 8, NULL, 39827557),
(424, '2026-10-26 14:00:00', 14, NULL, 46164640),
(425, '2026-10-26 14:00:00', 13, NULL, 4901448),
(426, '2026-10-26 15:00:00', 8, NULL, 96261053),
(427, '2026-10-26 15:00:00', 13, NULL, 220679779),
(428, '2026-10-26 15:00:00', 14, NULL, 149732994),
(429, '2026-10-26 16:00:00', 8, NULL, 97552144),
(430, '2026-10-26 16:00:00', 13, NULL, 175420641),
(431, '2026-10-26 16:00:00', 14, NULL, 27549683),
(432, '2026-10-26 17:00:00', 8, NULL, 79228219),
(433, '2026-10-26 17:00:00', 13, NULL, 213058009),
(434, '2026-10-26 17:00:00', 14, NULL, 235323968),
(435, '2026-10-26 18:00:00', 8, NULL, 171909936),
(436, '2026-10-26 18:00:00', 13, NULL, 51321213),
(437, '2026-10-26 18:00:00', 14, NULL, 190679439),
(438, '2026-10-26 19:00:00', 8, NULL, 13092159),
(439, '2026-10-26 19:00:00', 13, NULL, 418230894),
(440, '2026-10-26 20:00:00', 13, NULL, 421595897),
(441, '2026-10-26 21:00:00', 13, NULL, 421719740),
(442, '2026-10-26 21:00:00', 14, NULL, 12605739),
(443, '2026-10-26 22:00:00', 13, NULL, 289050769),
(444, '2026-10-26 22:00:00', 14, NULL, 17493481),
(445, '2026-10-26 23:00:00', 14, NULL, 4159144),
(446, '2026-10-27 00:00:00', 14, NULL, 4636111),
(447, '2026-10-27 01:00:00', 14, NULL, 3235016),
(448, '2026-10-27 02:00:00', 14, NULL, 20856793),
(449, '2026-10-27 03:00:00', 14, NULL, 1264723),
(450, '2026-10-27 04:00:00', 14, NULL, 1456234),
(451, '2026-10-27 05:00:00', 14, NULL, 65070114),
(452, '2026-10-27 05:00:00', 13, NULL, 26550468),
(453, '2026-10-27 06:00:00', 13, NULL, 138572073),
(454, '2026-10-27 06:00:00', 14, NULL, 1521278),
(455, '2026-10-27 07:00:00', 13, NULL, 68919449),
(456, '2026-10-27 07:00:00', 14, NULL, 13163866),
(457, '2026-10-27 08:00:00', 13, NULL, 143807762),
(458, '2026-10-27 08:00:00', 14, NULL, 2308921),
(459, '2026-10-27 08:00:00', 8, NULL, 101187594),
(460, '2026-10-27 09:00:00', 8, NULL, 62175681),
(461, '2026-10-27 09:00:00', 13, NULL, 294876255),
(462, '2026-10-27 10:00:00', 8, NULL, 127754598),
(463, '2026-10-27 10:00:00', 13, NULL, 360563913),
(464, '2026-10-27 10:00:00', 14, NULL, 291163531),
(465, '2026-10-27 11:00:00', 14, NULL, 7996075),
(466, '2026-10-27 11:00:00', 13, NULL, 55265799),
(467, '2026-10-27 12:00:00', 13, NULL, 219578853),
(468, '2026-10-27 12:00:00', 14, NULL, 3962373),
(469, '2026-10-27 13:00:00', 13, NULL, 228613130),
(470, '2026-10-27 13:00:00', 14, NULL, 84930777),
(471, '2026-10-27 14:00:00', 14, NULL, 46368351),
(472, '2026-10-27 14:00:00', 13, NULL, 52585787),
(473, '2026-10-27 14:00:00', 8, NULL, 93568624),
(474, '2026-10-27 15:00:00', 8, NULL, 30152519),
(475, '2026-10-27 15:00:00', 13, NULL, 54342395),
(476, '2026-10-27 16:00:00', 13, NULL, 138768778),
(477, '2026-10-27 16:00:00', 8, NULL, 7283582),
(478, '2026-10-27 17:00:00', 8, NULL, 148561165),
(479, '2026-10-27 17:00:00', 13, NULL, 138631889),
(480, '2026-10-27 18:00:00', 8, NULL, 32099522),
(481, '2026-10-27 18:00:00', 13, NULL, 64783564),
(482, '2026-10-27 19:00:00', 8, NULL, 121954116),
(483, '2026-10-27 19:00:00', 13, NULL, 123978050),
(484, '2026-10-27 20:00:00', 8, NULL, 376405848),
(485, '2026-10-27 20:00:00', 13, NULL, 148453661),
(486, '2026-10-27 20:00:00', 14, NULL, 14467037),
(487, '2026-10-27 21:00:00', 13, NULL, 48551356),
(488, '2026-10-27 21:00:00', 14, NULL, 64771397),
(489, '2026-10-27 21:00:00', 8, NULL, 260448149),
(490, '2026-10-27 22:00:00', 8, NULL, 6682015),
(491, '2026-10-27 22:00:00', 14, NULL, 42050248),
(492, '2026-10-27 22:00:00', 13, NULL, 1763395),
(493, '2026-10-27 23:00:00', 8, NULL, 6012788),
(494, '2026-10-27 23:00:00', 14, NULL, 5315164),
(495, '2026-10-27 23:00:00', 13, NULL, 1665979),
(496, '2026-10-28 00:00:00', 8, NULL, 5619511),
(497, '2026-10-28 00:00:00', 14, NULL, 7820836),
(498, '2026-10-28 00:00:00', 13, NULL, 273708),
(499, '2026-10-28 01:00:00', 8, NULL, 5273888),
(500, '2026-10-28 01:00:00', 14, NULL, 1228947),
(501, '2026-10-28 01:00:00', 13, NULL, 230631),
(502, '2026-10-28 02:00:00', 8, NULL, 10148732),
(503, '2026-10-28 02:00:00', 13, NULL, 973111),
(504, '2026-10-28 02:00:00', 14, NULL, 8102314),
(505, '2026-10-28 03:00:00', 14, NULL, 2450617),
(506, '2026-10-28 03:00:00', 13, NULL, 481425),
(507, '2026-10-28 03:00:00', 8, NULL, 1129346),
(508, '2026-10-28 04:00:00', 13, NULL, 3294328),
(509, '2026-10-28 04:00:00', 14, NULL, 124510179),
(510, '2026-10-28 04:00:00', 8, NULL, 1283723),
(511, '2026-10-28 05:00:00', 8, NULL, 9021055),
(512, '2026-10-28 05:00:00', 13, NULL, 976671),
(513, '2026-10-28 05:00:00', 14, NULL, 2226385),
(514, '2026-10-28 06:00:00', 14, NULL, 41160638),
(515, '2026-10-28 06:00:00', 8, NULL, 135767837),
(516, '2026-10-28 06:00:00', 13, NULL, 30374405),
(517, '2026-10-28 07:00:00', 8, NULL, 346375400),
(518, '2026-10-28 07:00:00', 13, NULL, 101305052),
(519, '2026-10-28 07:00:00', 14, NULL, 8935675),
(520, '2026-10-28 08:00:00', 8, NULL, 50710582),
(521, '2026-10-28 08:00:00', 13, NULL, 23880122),
(522, '2026-10-28 09:00:00', 13, NULL, 175877723),
(523, '2026-10-28 10:00:00', 13, NULL, 12520568),
(524, '2026-10-28 11:00:00', 13, NULL, 2237337),
(525, '2026-10-28 12:00:00', 8, NULL, 45339381),
(526, '2026-10-28 13:00:00', 8, NULL, 106472604),
(527, '2026-10-28 13:00:00', 13, NULL, 24715848),
(528, '2026-10-28 14:00:00', 8, NULL, 2455224),
(529, '2026-10-28 14:00:00', 13, NULL, 51079110),
(530, '2026-10-28 15:00:00', 13, NULL, 22900520),
(531, '2026-10-28 15:00:00', 8, NULL, 25700458),
(532, '2026-10-28 16:00:00', 8, NULL, 33802548),
(533, '2026-10-28 16:00:00', 13, NULL, 3371651),
(534, '2026-10-28 17:00:00', 8, NULL, 47003075),
(535, '2026-10-28 17:00:00', 13, NULL, 150777401),
(536, '2026-10-28 17:00:00', 6, NULL, 121186158),
(537, '2026-10-28 18:00:00', 8, NULL, 18656582),
(538, '2026-10-28 18:00:00', 6, NULL, 658578800),
(539, '2026-10-28 19:00:00', 8, NULL, 161249623),
(540, '2026-10-28 19:00:00', 6, NULL, 114642),
(541, '2026-10-28 19:00:00', 14, NULL, 72873406),
(542, '2026-10-28 20:00:00', 8, NULL, 4226783),
(543, '2026-10-28 20:00:00', 14, NULL, 144167811),
(544, '2026-10-28 21:00:00', 8, NULL, 49349215),
(545, '2026-10-28 21:00:00', 14, NULL, 212940058),
(546, '2026-10-28 22:00:00', 8, NULL, 2613551),
(547, '2026-10-28 22:00:00', 14, NULL, 1656469),
(548, '2026-10-28 23:00:00', 8, NULL, 2764840),
(549, '2026-10-29 00:00:00', 8, NULL, 62485958),
(550, '2026-10-29 00:00:00', 14, NULL, 114378726),
(551, '2026-10-29 01:00:00', 8, NULL, 4928920),
(552, '2026-10-29 02:00:00', 8, NULL, 1195769),
(553, '2026-10-29 03:00:00', 8, NULL, 298980080),
(554, '2026-10-29 04:00:00', 8, NULL, 58860017),
(555, '2026-10-29 05:00:00', 8, NULL, 5423414),
(556, '2026-10-29 06:00:00', 8, NULL, 15358906),
(557, '2026-10-29 07:00:00', 8, NULL, 3248854),
(558, '2026-10-29 08:00:00', 14, NULL, 83506154),
(559, '2026-10-29 09:00:00', 14, NULL, 59450656),
(560, '2026-10-29 10:00:00', 8, NULL, 40407446),
(561, '2026-10-29 10:00:00', 14, NULL, 40950241),
(562, '2026-10-29 11:00:00', 14, NULL, 31934474),
(563, '2026-10-29 11:00:00', 13, NULL, 1763004),
(564, '2026-10-29 12:00:00', 13, NULL, 343611613),
(565, '2026-10-29 12:00:00', 14, NULL, 88170117),
(566, '2026-10-29 13:00:00', 14, NULL, 3976056),
(567, '2026-10-29 13:00:00', 13, NULL, 54091895),
(568, '2026-10-29 14:00:00', 14, NULL, 4079238),
(569, '2026-10-29 15:00:00', 13, NULL, 13869486),
(570, '2026-10-29 15:00:00', 14, NULL, 44607691),
(571, '2026-10-29 16:00:00', 13, NULL, 22453496),
(572, '2026-10-29 16:00:00', 14, NULL, 151583185),
(573, '2026-10-29 16:00:00', 8, NULL, 4999161),
(574, '2026-10-29 17:00:00', 8, NULL, 28333996),
(575, '2026-10-29 17:00:00', 14, NULL, 177877634),
(576, '2026-10-29 17:00:00', 13, NULL, 25962060),
(577, '2026-10-29 18:00:00', 8, NULL, 11447348),
(578, '2026-10-29 18:00:00', 14, NULL, 19926002),
(579, '2026-10-29 18:00:00', 13, NULL, 22528625),
(580, '2026-10-29 19:00:00', 8, NULL, 273490948),
(581, '2026-10-29 19:00:00', 13, NULL, 5161840),
(582, '2026-10-29 20:00:00', 8, NULL, 118536396),
(583, '2026-10-29 21:00:00', 8, NULL, 186768097),
(584, '2026-10-29 22:00:00', 8, NULL, 21803323),
(585, '2026-10-29 23:00:00', 8, NULL, 1203972),
(586, '2026-10-30 00:00:00', 8, NULL, 613991),
(587, '2026-10-30 01:00:00', 8, NULL, 829976),
(588, '2026-10-30 02:00:00', 8, NULL, 1012177),
(589, '2026-10-30 03:00:00', 8, NULL, 72826301),
(590, '2026-10-30 04:00:00', 8, NULL, 1339832),
(591, '2026-10-30 05:00:00', 8, NULL, 15687603),
(592, '2026-10-30 05:00:00', 14, NULL, 82588097),
(593, '2026-10-30 06:00:00', 8, NULL, 116553073),
(594, '2026-10-30 07:00:00', 11, NULL, 125485845),
(595, '2026-10-30 08:00:00', 11, NULL, 37474275),
(596, '2026-10-30 09:00:00', 11, NULL, 54731079),
(597, '2026-10-30 09:00:00', 14, NULL, 54448350),
(598, '2026-10-30 09:00:00', 8, NULL, 2708705),
(599, '2026-10-30 10:00:00', 11, NULL, 52749359),
(600, '2026-10-30 11:00:00', 11, NULL, 77402114),
(601, '2026-10-30 12:00:00', 11, NULL, 190501),
(602, '2026-10-30 13:00:00', 11, NULL, 12003786),
(603, '2026-10-30 14:00:00', 11, NULL, 20376223),
(604, '2026-10-30 14:00:00', 8, NULL, 81140986),
(605, '2026-10-30 15:00:00', 11, NULL, 196751639),
(606, '2026-10-30 15:00:00', 14, NULL, 95028234),
(607, '2026-10-30 16:00:00', 11, NULL, 125971912),
(608, '2026-10-30 16:00:00', 14, NULL, 275005015),
(609, '2026-10-30 17:00:00', 11, NULL, 186528378),
(610, '2026-10-30 17:00:00', 14, NULL, 254837118),
(611, '2026-10-30 17:00:00', 8, NULL, 32924122),
(612, '2026-10-30 18:00:00', 11, NULL, 131306603),
(613, '2026-10-30 18:00:00', 8, NULL, 178707238),
(614, '2026-10-30 18:00:00', 14, NULL, 128446676),
(615, '2026-10-30 19:00:00', 8, NULL, 98160674),
(616, '2026-10-30 19:00:00', 11, NULL, 459628322),
(617, '2026-10-30 19:00:00', 14, NULL, 28152387),
(618, '2026-10-30 20:00:00', 8, NULL, 15451273),
(619, '2026-10-30 21:00:00', 8, NULL, 271986475),
(620, '2026-10-30 22:00:00', 8, NULL, 264995015),
(621, '2026-10-30 23:00:00', 8, NULL, 279061922),
(622, '2026-10-31 00:00:00', 8, NULL, 246240470),
(623, '2026-10-31 01:00:00', 8, NULL, 218857941),
(624, '2026-10-31 07:00:00', 11, NULL, 5636871),
(625, '2026-10-31 08:00:00', 11, NULL, 81616353),
(626, '2026-10-31 08:00:00', 14, NULL, 75573474),
(627, '2026-10-31 09:00:00', 11, NULL, 51491268),
(628, '2026-10-31 09:00:00', 14, NULL, 1411398),
(629, '2026-10-31 10:00:00', 11, NULL, 3854454),
(630, '2026-10-31 10:00:00', 14, NULL, 5705747),
(631, '2026-10-31 11:00:00', 11, NULL, 30192950),
(632, '2026-10-31 12:00:00', 11, NULL, 7758993),
(633, '2026-10-31 12:00:00', 14, NULL, 112863214),
(634, '2026-10-31 13:00:00', 11, NULL, 177813983),
(635, '2026-10-31 13:00:00', 14, NULL, 4494619),
(636, '2026-10-31 13:00:00', 8, NULL, 30259343),
(637, '2026-10-31 14:00:00', 11, NULL, 84137690),
(638, '2026-10-31 14:00:00', 14, NULL, 1538325),
(639, '2026-10-31 15:00:00', 14, NULL, 200244006),
(640, '2026-10-31 15:00:00', 8, NULL, 25926983),
(641, '2026-10-31 16:00:00', 14, NULL, 80880831),
(642, '2026-10-31 16:00:00', 8, NULL, 10451888),
(643, '2026-10-31 17:00:00', 8, NULL, 16649044),
(644, '2026-10-31 17:00:00', 14, NULL, 68853554),
(645, '2026-10-31 18:00:00', 8, NULL, 221277487),
(646, '2026-10-31 18:00:00', 14, NULL, 62492170),
(647, '2026-10-31 19:00:00', 14, NULL, 192577054),
(648, '2026-10-31 20:00:00', 14, NULL, 151758065),
(649, '2026-10-31 20:00:00', 8, NULL, 86065690),
(650, '2026-10-31 21:00:00', 8, NULL, 267581009),
(651, '2026-10-31 21:00:00', 14, NULL, 14449495),
(652, '2026-10-31 22:00:00', 8, NULL, 271422469),
(653, '2026-10-31 22:00:00', 14, NULL, 5233835),
(654, '2026-10-31 23:00:00', 8, NULL, 286603821),
(655, '2026-10-31 23:00:00', 14, NULL, 4002217),
(656, '2026-11-01 00:00:00', 8, NULL, 148684759),
(657, '2026-11-01 00:00:00', 11, NULL, 332441111),
(658, '2026-11-01 01:00:00', 8, NULL, 108466568),
(659, '2026-11-01 01:00:00', 11, NULL, 143449898),
(660, '2026-11-01 02:00:00', 11, NULL, 147560286),
(661, '2026-11-01 03:00:00', 11, NULL, 20727807),
(662, '2026-11-01 04:00:00', 11, NULL, 297799),
(663, '2026-11-01 05:00:00', 11, NULL, 15136708),
(664, '2026-11-01 05:00:00', 8, NULL, 25885219),
(665, '2026-11-01 06:00:00', 11, NULL, 17201962),
(666, '2026-11-01 06:00:00', 12, NULL, 80688752),
(667, '2026-11-01 07:00:00', 11, NULL, 10463894),
(668, '2026-11-01 07:00:00', 12, NULL, 81814492),
(669, '2026-11-01 07:00:00', 8, NULL, 5747890),
(670, '2026-11-01 08:00:00', 11, NULL, 98528775),
(671, '2026-11-01 08:00:00', 12, NULL, 2070266),
(672, '2026-11-01 09:00:00', 11, NULL, 11108251),
(673, '2026-11-01 09:00:00', 12, NULL, 1925308),
(674, '2026-11-01 09:00:00', 14, NULL, 11386981),
(675, '2026-11-01 10:00:00', 11, NULL, 31897617),
(676, '2026-11-01 10:00:00', 12, NULL, 2102799),
(677, '2026-11-01 10:00:00', 14, NULL, 190678457),
(678, '2026-11-01 11:00:00', 12, NULL, 66500194),
(679, '2026-11-01 11:00:00', 14, NULL, 78124630),
(680, '2026-11-01 11:00:00', 11, NULL, 30143285),
(681, '2026-11-01 12:00:00', 11, NULL, 14336517),
(682, '2026-11-01 12:00:00', 12, NULL, 58565087),
(683, '2026-11-01 12:00:00', 14, NULL, 106431933),
(684, '2026-11-01 13:00:00', 11, NULL, 114095175),
(685, '2026-11-01 13:00:00', 12, NULL, 2256478),
(686, '2026-11-01 13:00:00', 14, NULL, 49937951),
(687, '2026-11-01 13:00:00', 8, NULL, 2864660),
(688, '2026-11-01 14:00:00', 11, NULL, 204902940),
(689, '2026-11-01 14:00:00', 12, NULL, 77085881),
(690, '2026-11-01 14:00:00', 14, NULL, 90355643),
(691, '2026-11-01 15:00:00', 11, NULL, 217341012),
(692, '2026-11-01 15:00:00', 12, NULL, 12053096),
(693, '2026-11-01 15:00:00', 14, NULL, 39016222),
(694, '2026-11-01 16:00:00', 11, NULL, 774359240),
(695, '2026-11-01 16:00:00', 12, NULL, 167244517),
(696, '2026-11-01 16:00:00', 8, NULL, 31073824),
(697, '2026-11-01 16:00:00', 14, NULL, 29968138),
(698, '2026-11-01 17:00:00', 11, NULL, 48144263),
(699, '2026-11-01 17:00:00', 14, NULL, 179849362),
(700, '2026-11-01 17:00:00', 12, NULL, 3119603),
(701, '2026-11-01 17:00:00', 8, NULL, 11895285),
(702, '2026-11-01 18:00:00', 11, NULL, 171682806),
(703, '2026-11-01 18:00:00', 12, NULL, 3029181),
(704, '2026-11-01 18:00:00', 14, NULL, 281074801),
(705, '2026-11-01 18:00:00', 8, NULL, 17689818),
(706, '2026-11-01 19:00:00', 8, NULL, 1686424),
(707, '2026-11-01 19:00:00', 11, NULL, 80057023),
(708, '2026-11-01 19:00:00', 14, NULL, 227096057),
(709, '2026-11-01 19:00:00', 12, NULL, 2409479),
(710, '2026-11-01 20:00:00', 11, NULL, 73375931),
(711, '2026-11-01 20:00:00', 12, NULL, 4235292),
(712, '2026-11-01 20:00:00', 14, NULL, 169618852),
(713, '2026-11-01 21:00:00', 12, NULL, 2805543),
(714, '2026-11-01 21:00:00', 14, NULL, 6459805),
(715, '2026-11-01 22:00:00', 12, NULL, 3128500),
(716, '2026-11-01 22:00:00', 14, NULL, 7360652),
(717, '2026-11-01 23:00:00', 12, NULL, 1931438),
(718, '2026-11-01 23:00:00', 14, NULL, 7318597),
(719, '2026-11-02 00:00:00', 12, NULL, 2673909),
(720, '2026-11-02 00:00:00', 14, NULL, 8512175),
(721, '2026-11-02 01:00:00', 14, NULL, 9665551),
(722, '2026-11-02 01:00:00', 12, NULL, 20987040),
(723, '2026-11-02 02:00:00', 14, NULL, 93395318),
(724, '2026-11-02 02:00:00', 12, NULL, 3201407),
(725, '2026-11-02 02:00:00', 11, NULL, 91941887),
(726, '2026-11-02 03:00:00', 11, NULL, 11728086),
(727, '2026-11-02 03:00:00', 14, NULL, 335471355),
(728, '2026-11-02 03:00:00', 12, NULL, 88381049),
(729, '2026-11-02 04:00:00', 12, NULL, 36556636),
(730, '2026-11-02 04:00:00', 14, NULL, 1014147),
(731, '2026-11-02 04:00:00', 11, NULL, 2567230),
(732, '2026-11-02 05:00:00', 11, NULL, 52285824),
(733, '2026-11-02 05:00:00', 12, NULL, 705212),
(734, '2026-11-02 06:00:00', 11, NULL, 60199827),
(735, '2026-11-02 06:00:00', 12, NULL, 2607454),
(736, '2026-11-02 06:00:00', 8, NULL, 25834055),
(737, '2026-11-02 07:00:00', 11, NULL, 101515874),
(738, '2026-11-02 07:00:00', 12, NULL, 72221313),
(739, '2026-11-02 07:00:00', 8, NULL, 2650756),
(740, '2026-11-02 07:00:00', 14, NULL, 13194918),
(741, '2026-11-02 08:00:00', 11, NULL, 45609776),
(742, '2026-11-02 08:00:00', 12, NULL, 54297184),
(743, '2026-11-02 08:00:00', 14, NULL, 305314435),
(744, '2026-11-02 08:00:00', 8, NULL, 14679),
(745, '2026-11-02 09:00:00', 14, NULL, 153153084),
(746, '2026-11-02 09:00:00', 12, NULL, 108086326),
(747, '2026-11-02 09:00:00', 11, NULL, 20969246),
(748, '2026-11-02 10:00:00', 12, NULL, 25753997),
(749, '2026-11-02 10:00:00', 14, NULL, 792120712),
(750, '2026-11-02 10:00:00', 11, NULL, 18882972),
(751, '2026-11-02 11:00:00', 12, NULL, 50135521),
(752, '2026-11-02 11:00:00', 14, NULL, 339730469),
(753, '2026-11-02 11:00:00', 11, NULL, 3797089),
(754, '2026-11-02 12:00:00', 12, NULL, 71190221),
(755, '2026-11-02 12:00:00', 14, NULL, 103188437),
(756, '2026-11-02 12:00:00', 11, NULL, 20024049),
(757, '2026-11-02 13:00:00', 11, NULL, 9720427),
(758, '2026-11-02 13:00:00', 12, NULL, 106776321),
(759, '2026-11-02 13:00:00', 14, NULL, 315577303),
(760, '2026-11-02 14:00:00', 12, NULL, 10198839),
(761, '2026-11-02 14:00:00', 14, NULL, 43911072),
(762, '2026-11-02 14:00:00', 11, NULL, 100993),
(763, '2026-11-08 00:00:00', 6, NULL, 589446556),
(764, '2026-11-08 01:00:00', 6, NULL, 1297110532),
(765, '2026-11-08 02:00:00', 6, NULL, 4156604),
(766, '2026-11-08 03:00:00', 6, NULL, 6466814),
(767, '2026-11-08 04:00:00', 6, NULL, 4511495),
(768, '2026-11-08 05:00:00', 6, NULL, 52186891),
(769, '2026-11-08 05:00:00', 14, NULL, 470966826),
(770, '2026-11-08 06:00:00', 14, NULL, 43120125),
(771, '2026-11-08 08:00:00', 14, NULL, 7623546),
(772, '2026-11-08 18:00:00', 14, NULL, 124237294);

-- --------------------------------------------------------

--
-- Структура таблицы `notification_reminders`
--

CREATE TABLE `notification_reminders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` enum('expiration_date','data_usage') NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `threshold` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `proxies`
--

CREATE TABLE `proxies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` enum('VMess','VLESS','Trojan','Shadowsocks') NOT NULL,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`settings`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `proxies`
--

INSERT INTO `proxies` (`id`, `user_id`, `type`, `settings`) VALUES
(8, 6, 'Shadowsocks', '{\"password\": \"Zp5pjwO5Un1ELZMXKEI6IA\", \"method\": \"chacha20-ietf-poly1305\"}'),
(9, 6, 'VLESS', '{\"id\": \"029ab0ce-d504-46e2-9ef0-55e21f706a77\", \"flow\": \"\"}'),
(11, 8, 'VLESS', '{\"id\": \"c41d023f-a390-478b-8f55-7a46fee0a42b\", \"flow\": \"\"}'),
(14, 11, 'VLESS', '{\"id\": \"51c43d04-580a-41f2-aa87-6ffe2d5dd867\", \"flow\": \"\"}'),
(15, 12, 'VLESS', '{\"id\": \"6e47ed74-b379-4961-8d9d-0de470f34c02\", \"flow\": \"\"}'),
(16, 13, 'VLESS', '{\"id\": \"6d196069-2f2c-4b38-a577-3d0cdebd1035\", \"flow\": \"\"}'),
(17, 14, 'VLESS', '{\"id\": \"0eecfc42-c8a5-4eed-9840-8f0dbb8fb7d1\", \"flow\": \"\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `system`
--

CREATE TABLE `system` (
  `id` int(11) NOT NULL,
  `uplink` bigint(20) DEFAULT NULL,
  `downlink` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system`
--

INSERT INTO `system` (`id`, `uplink`, `downlink`) VALUES
(1, 4256565185, 78385506220);

-- --------------------------------------------------------

--
-- Структура таблицы `template_inbounds_association`
--

CREATE TABLE `template_inbounds_association` (
  `user_template_id` int(11) DEFAULT NULL,
  `inbound_tag` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tls`
--

CREATE TABLE `tls` (
  `id` int(11) NOT NULL,
  `key` varchar(4096) NOT NULL,
  `certificate` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tls`
--

INSERT INTO `tls` (`id`, `key`, `certificate`) VALUES
(1, '-----BEGIN PRIVATE KEY-----\nMIIJQQIBADANBgkqhkiG9w0BAQEFAASCCSswggknAgEAAoICAQCWNxOlpHWcupML\naG757E3DaEoIiEhTrk2prEShjgCOD4LlOooPDctoayGiq90oLJNOj3qFM+aPtUlf\n9ho1DL9sZ25LXTH+abLtO96dlHUaAD1uotxNtRbBhZOK7QKg4J5kAeqyuaTuekIh\nBTedScoURf+Ou2gf+3GQLY5TPM3GcWe0ttUcdk303i326aXCTbSf5b8AeCSFyLbb\n9bUkUniMtZk3qu5JLxZYAu5RLGkIu2KulfOWyFKw3WybdYuQl8SfsC62JGFwEUfC\n/G7KuSKl/0ezmTkvbTfVv1Qc6LK2e3zC5A2nypEXq+hj+1W8DuBq24VNTqtAyqtx\nIR6/IR/GmitaApVd2oFYGg06jCfcy2rSBjD7kXQ/Q3lVK2RETfdxp0MH4fqhqQRM\nTtPSUvq5ur/QxqLG0rUBdskxEY2uMbpQSbIFhlO2bzZIaNIXJhun96u7bjgaFGpc\np4MjHgGOTQCcxOfs056/EJo3h1dxJp4AZyucpUB19f4zucxCrIXqyJCem0sGde+M\nao6W9FY2Mp5q8nHWWFaxvamO4BQ/Pv8YmkueC0dxHSBBDfEMb3aJxNFCKbrJUkcZ\nPYiEiwWNnKD3dCTZARoWfu0pCjYGKoUcXwp4kkmfdKBzbJOliy0UWb6WjeRu3BM4\nwlxCJS1e7z2Gex9ttMHXAx0EWSYzPwIDAQABAoICADTX9UptO47CN95og7nZ/lVC\nx+COiNsfU2TgHFi1Cs7u9/5KBK1dDfSS04dVbHyoib22TcS0SGS/wqtGeVu2O1UY\nYb2TcHXumypHyH2o7zURZosYMeYIUZQMuKXD0QvlWPMXlYgANNxMGB1jp3fmsHdH\nVKrSlMPDgeTVkd8IYd9wn6n8M6ZKnAwLaSIWeeCL04H4oaO5oCeMP3/LxUic1pmx\nfNAPiromHXciuNHHjL+so/+E8udVW3mqu31I8asRKPOAWD5tN/XjrloS0arxTBYX\nYxL0USC1DFJed2mgFtaJRI+PCJrBcR9hs2QQ081PcnVE+nUCus4VPhCTNSzJq1J5\nhjU6VsAtOtZqCFh00Wi9G4H4qd01wL6ynqb32pvhvymoei+pLEDU2dinh62jR9J2\noL6kUFs5QvLSzHsMvZ7+Scvw/A+OWFfYLRe5ShuavilPmZV+p2zZmIpgSIxy1gob\nsP5GjLpUPL9B0Vke3EIuI4/GNM6BvFBXM/E31YdwKhKRi8GhafSJXcIyEMSD/MQx\n6RdcZF3ohWvQE//vEama+n1a3M8IWwwzGO9hR7f5+uG4WB+lCNM+ayvkamdDBrEI\nHrjx6p1SlPKOqcG3PytQd3ab4ex15ZHTTtZUni31HVQoDWMzjO1xBmUFfqp4x7tV\ny3tQbuDwi+DehGFav+B5AoIBAQDHULlg+TFGbGm1NdckrVj2HG3Xx28ud9WtUwh6\nZjoHs1pf4E2w+O0toLwKg49Uo+uDu3EBM23NszbwSyztmdOdXEMayXK5wJDadzO/\ninrH2lynLjRgWaZE7QrH7VjqHJxIttpbd/tIgEweJDEGqvuWxNXe3PZXcohKxqu1\nelvMyvVbivNgiHLJDAW9/jZ4tvszHb6ZiFdOOTp9NF4zlT0UdZL8m7GCB8BegSn7\nd7Vzx/W8c+D3R1DaObeVcr0GsJ/QX1VfVORvChPqnhsqGAZN4zp6r+IKRkEuMtr9\naUclpFPwJ3d7xXukFwxXCdpA9WYFI58Y+Scgad+ZP5BZFlXTAoIBAQDA75VPc+Iu\nwjjsszTYBJXnlJmtit9exzKYlqzpeKyhqVqVXrTHpJOis0L38sxnjeq8XH3UK3mO\n5KGh8Asqr2a+r8YFWL0lEuftMITiSfdMriJEGX3bhlwUzoXXbLKGZAepRLrPj0TY\nW1CkFUcogS/bwd8EfJE+tILBQUaeFARTKRy3NB1MPf8/BhBi6Y6LZcE22jCRJSpI\n6j1qz2AvwnUBqan6LkPdyCD1dkcu0jOIIvNEpkQDqkmQPjaAGMI/uKynS1ZS0kBO\n1i30lkrhUVOT+2xag/UPhkwWm4C+noUiggq3JRfBBx8I/shL989Df7DmYifUzlnc\nuIKVz7rrVu1lAoIBABf6+WLWeHw9nPZFdQ4foR1zTC/y+ciAeH/zBokbdY3poUz5\nwr8xI/Aib51gOMV5N2PREIaRdnuSPWDp2oz3vgMnz5cQd7IrngH654n7EkyrVAx1\nPa39+0g9sNdfEhyQtqj0/w6UP/J4JTBXMGLZ/Y0lP4oh0a2xxP4iKxSZlSPto1mR\nPTj3EcBopuQ2Cr25Xj3HLWBxi/eIYSYhP9g6829bugSUguXfIuD7714nB/jXLRSw\naHe3591pplHfzShZ5dB/N9lRcG5/qufGgAQvgcqrNST/tlWAIGV7jueAXCQGQmcZ\niIGmv/p9H2n1cIHyRIUHxSOPDosS0ekxQZ/GVSsCggEATucsVuv7ikff491+NQHb\nFHRPTQvIQgiRBppIaMrzPsH1y7SJlkQWJKnPL3vaYFdHsnTY+NY2xlt2RrXWu0Q0\nbrOP9kvOPsU2mGgJUEoTmwZz+Qm70PVn3xJ+5hUMBa4O/AihpZTgAOOHXTNegJAk\ntGja/gi7lbtY5hP9/1QMWL4tgjcL7ExGgM3IEcuWgifBFt+wkQtz+ZHiQDZDDgUm\nuOFcJHabRq473Gbcwacxb/FrL54XnrAbmaP3wfdeKZUq9tf2m7RknFk3Phng0bji\nx1hBfdsNc6XmpDBAPLSzmeM44qGGz2hMJu+bloXn+6DTBcUKqRsi4QOMVBw6Q1iv\niQKCAQA5aLg4kAN0lfG9MUp7WgUkkshJOdTGpjluckcHrT7Ipl8e1cgo03plfltx\n+Pigw4UeFLjX2zNF4YyzU4pipwXd8ZCzEtp2Mjf9n1q87jclFRtCWyDkwR0BDEWJ\npgkPr9ET4o3ZfAKlhFcEAflJSGiKt8DS0btWQBgnNYjDG6lShIJQ0Lwh/Xqg7UnI\nA/FGL3HDh97eEMyEPFmQxNb/fzi+iyxzu46n+PyCh8GuXI3RXzGG82S80Rc2+tHa\nhVr3Gsew3utvK8uvKF4oQW8IQbwCYuj0iC2HRxoelMzIFAI+qs4IZwEGaHPKfg4S\n3mAABecDaE+/jhmuwX6t8XtWdOet\n-----END PRIVATE KEY-----\n', '-----BEGIN CERTIFICATE-----\nMIIEnDCCAoQCAQAwDQYJKoZIhvcNAQENBQAwEzERMA8GA1UEAwwIR296YXJnYWgw\nIBcNMjYxMDA1MTUyMTMxWhgPMjEyNjA5MTExNTIxMzFaMBMxETAPBgNVBAMMCEdv\nemFyZ2FoMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAljcTpaR1nLqT\nC2hu+exNw2hKCIhIU65NqaxEoY4Ajg+C5TqKDw3LaGshoqvdKCyTTo96hTPmj7VJ\nX/YaNQy/bGduS10x/mmy7TvenZR1GgA9bqLcTbUWwYWTiu0CoOCeZAHqsrmk7npC\nIQU3nUnKFEX/jrtoH/txkC2OUzzNxnFntLbVHHZN9N4t9umlwk20n+W/AHgkhci2\n2/W1JFJ4jLWZN6ruSS8WWALuUSxpCLtirpXzlshSsN1sm3WLkJfEn7AutiRhcBFH\nwvxuyrkipf9Hs5k5L2031b9UHOiytnt8wuQNp8qRF6voY/tVvA7gatuFTU6rQMqr\ncSEevyEfxporWgKVXdqBWBoNOown3Mtq0gYw+5F0P0N5VStkRE33cadDB+H6oakE\nTE7T0lL6ubq/0MaixtK1AXbJMRGNrjG6UEmyBYZTtm82SGjSFyYbp/eru244GhRq\nXKeDIx4Bjk0AnMTn7NOevxCaN4dXcSaeAGcrnKVAdfX+M7nMQqyF6siQnptLBnXv\njGqOlvRWNjKeavJx1lhWsb2pjuAUPz7/GJpLngtHcR0gQQ3xDG92icTRQim6yVJH\nGT2IhIsFjZyg93Qk2QEaFn7tKQo2BiqFHF8KeJJJn3Sgc2yTpYstFFm+lo3kbtwT\nOMJcQiUtXu89hnsfbbTB1wMdBFkmMz8CAwEAATANBgkqhkiG9w0BAQ0FAAOCAgEA\nM7vIIvNf2oeCaT0YaLIEFBgliHOQLv61exU/vQvPFS0TjMCt0p++n1sWl4Y/7VgN\npgMvNlCaEZzAgDCeV5nb05mu6NmwuwInrqOYtijIG6WK62a7hzCHMqoLz8IsLJ0h\nSHx6XwtoIkc9NCRo42gcdiwqzTQGkEITno8UJmFtdh/DoR6VkKvE9V8RUXbTNCoj\nXd9YtiIQ28N6al0mANgwWieTvPGxXX/U7AqwsQybhqJXgQ94fdzt3LrrUOojSTvE\n65+L5/r067fMUF235jG+Kvs9GVZ30UYCCyllLfY1ivzIM8fc8qx7ihvEXtzf/eLN\nRKsHXa2OiYU08A13f1yX2Bya5op1yBAFaF7meZ33jC8h+jPDZKsy2QmEPXcSVlOr\nTWl86iqJeKva5PmcAur/sAJXV3spvVUe2AKaikva/AgJVYv60TGpynYrs27CbzQz\nRVfzUSfNPMil6cvoeLPwLoHOgJ0oAPTlLyX/JDkNKh/QJGsEu72IvJVKpF5olt59\nmtRTnDEk7M+NBsLotSb3SEGGQS3L41r2PFvVwSyX4+QQiKRgLsQnY78CrNiZd0rB\nqLFu4jhTvrqdTLIf+c6GnLkKBJQXX62/0HrDRMXxDe0XgJhdOjOjPpSj/NyTAOnI\nlJRqcXAzZoKari6+nwRdK9drfdcqx1AibIMAnyVP6So=\n-----END CERTIFICATE-----\n');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` enum('on_hold','active','limited','expired','disabled') NOT NULL,
  `used_traffic` bigint(20) DEFAULT NULL,
  `data_limit` bigint(20) DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `admin_id` int(11) DEFAULT NULL,
  `data_limit_reset_strategy` enum('no_reset','day','week','month','year') NOT NULL DEFAULT 'no_reset',
  `sub_revoked_at` datetime DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `sub_updated_at` datetime DEFAULT NULL,
  `sub_last_user_agent` varchar(512) DEFAULT NULL,
  `online_at` datetime DEFAULT NULL,
  `edit_at` datetime DEFAULT NULL,
  `on_hold_timeout` datetime DEFAULT NULL,
  `on_hold_expire_duration` bigint(20) DEFAULT NULL,
  `auto_delete_in_days` int(11) DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `used_traffic`, `data_limit`, `expire`, `created_at`, `admin_id`, `data_limit_reset_strategy`, `sub_revoked_at`, `note`, `sub_updated_at`, `sub_last_user_agent`, `online_at`, `edit_at`, `on_hold_timeout`, `on_hold_expire_duration`, `auto_delete_in_days`, `last_status_change`) VALUES
(6, 'grobeexttv', 'active', 12587083372, NULL, NULL, '2026-10-06 23:49:12', 1, 'no_reset', '2026-10-16 08:22:04', NULL, '2026-11-08 00:44:38', 'v2raytun/windows', '2026-11-08 05:25:00', '2026-10-16 08:22:04', NULL, NULL, NULL, '2026-10-06 23:49:12'),
(8, 'user_211280229_1792182266', 'active', 14862966606, NULL, 1794779713, '2026-10-16 21:55:14', 1, 'no_reset', NULL, NULL, '2026-11-02 06:06:33', 'v2raytun/android', '2026-11-02 08:06:43', NULL, NULL, NULL, NULL, '2026-10-16 21:55:14'),
(11, 'user_493268039_1792305836', 'active', 25743103913, NULL, 1794769199, '2026-10-18 06:45:21', 1, 'no_reset', NULL, NULL, '2026-11-08 10:40:18', 'Happ/6.3.0/ios/2610281100606', '2026-11-02 14:11:03', '2026-10-30 07:29:52', NULL, NULL, NULL, '2026-10-25 06:45:23'),
(12, 'user_471620984_1792481604', 'active', 2901056379, NULL, 1800257849, '2026-10-20 07:37:29', 1, 'no_reset', NULL, NULL, '2026-11-01 06:39:06', 'v2raytun/android', '2026-11-02 14:09:33', NULL, NULL, NULL, NULL, '2026-10-20 07:37:29'),
(13, 'user_734047807_1792779649', 'limited', 12949147139, 10737418240, 1795371748, '2026-10-23 18:22:28', 1, 'no_reset', NULL, NULL, '2026-11-08 17:23:14', 'Happ/4.8.0/Android/17921395329952009631', '2026-10-29 19:53:33', '2026-10-29 19:54:00', NULL, NULL, NULL, '2026-10-23 18:22:28'),
(14, 'user_1098069562_1792777546', 'active', 11622999773, NULL, 1796497199, '2026-10-23 19:14:31', 1, 'no_reset', NULL, NULL, '2026-11-08 15:32:17', 'Happ/4.8.0/Android/17921395329952009631', '2026-11-08 18:57:00', '2026-11-07 17:42:07', NULL, NULL, NULL, '2026-10-30 19:14:33');

-- --------------------------------------------------------

--
-- Структура таблицы `user_templates`
--

CREATE TABLE `user_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `data_limit` bigint(20) DEFAULT NULL,
  `expire_duration` bigint(20) DEFAULT NULL,
  `username_prefix` varchar(20) DEFAULT NULL,
  `username_suffix` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user_usage_logs`
--

CREATE TABLE `user_usage_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `used_traffic_at_reset` bigint(20) NOT NULL,
  `reset_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_admins_username` (`username`);

--
-- Индексы таблицы `admin_usage_logs`
--
ALTER TABLE `admin_usage_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Индексы таблицы `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Индексы таблицы `exclude_inbounds_association`
--
ALTER TABLE `exclude_inbounds_association`
  ADD KEY `proxy_id` (`proxy_id`),
  ADD KEY `1` (`inbound_tag`);

--
-- Индексы таблицы `hosts`
--
ALTER TABLE `hosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1` (`inbound_tag`);

--
-- Индексы таблицы `inbounds`
--
ALTER TABLE `inbounds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_inbounds_tag` (`tag`);

--
-- Индексы таблицы `jwt`
--
ALTER TABLE `jwt`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `next_plans`
--
ALTER TABLE `next_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `nodes`
--
ALTER TABLE `nodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `node_usages`
--
ALTER TABLE `node_usages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `created_at` (`created_at`,`node_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Индексы таблицы `node_user_usages`
--
ALTER TABLE `node_user_usages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `created_at` (`created_at`,`user_id`,`node_id`),
  ADD KEY `node_id` (`node_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `notification_reminders`
--
ALTER TABLE `notification_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `proxies`
--
ALTER TABLE `proxies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `template_inbounds_association`
--
ALTER TABLE `template_inbounds_association`
  ADD KEY `user_template_id` (`user_template_id`),
  ADD KEY `1` (`inbound_tag`);

--
-- Индексы таблицы `tls`
--
ALTER TABLE `tls`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_users_username` (`username`),
  ADD KEY `fk_users_admin_id_admins` (`admin_id`);

--
-- Индексы таблицы `user_templates`
--
ALTER TABLE `user_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `user_usage_logs`
--
ALTER TABLE `user_usage_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `admin_usage_logs`
--
ALTER TABLE `admin_usage_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `hosts`
--
ALTER TABLE `hosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `inbounds`
--
ALTER TABLE `inbounds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `jwt`
--
ALTER TABLE `jwt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `next_plans`
--
ALTER TABLE `next_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `nodes`
--
ALTER TABLE `nodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `node_usages`
--
ALTER TABLE `node_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- AUTO_INCREMENT для таблицы `node_user_usages`
--
ALTER TABLE `node_user_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=773;

--
-- AUTO_INCREMENT для таблицы `notification_reminders`
--
ALTER TABLE `notification_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `proxies`
--
ALTER TABLE `proxies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `system`
--
ALTER TABLE `system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tls`
--
ALTER TABLE `tls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `user_templates`
--
ALTER TABLE `user_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user_usage_logs`
--
ALTER TABLE `user_usage_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `admin_usage_logs`
--
ALTER TABLE `admin_usage_logs`
  ADD CONSTRAINT `1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Ограничения внешнего ключа таблицы `exclude_inbounds_association`
--
ALTER TABLE `exclude_inbounds_association`
  ADD CONSTRAINT `1` FOREIGN KEY (`inbound_tag`) REFERENCES `inbounds` (`tag`),
  ADD CONSTRAINT `2` FOREIGN KEY (`proxy_id`) REFERENCES `proxies` (`id`);

--
-- Ограничения внешнего ключа таблицы `hosts`
--
ALTER TABLE `hosts`
  ADD CONSTRAINT `1` FOREIGN KEY (`inbound_tag`) REFERENCES `inbounds` (`tag`);

--
-- Ограничения внешнего ключа таблицы `next_plans`
--
ALTER TABLE `next_plans`
  ADD CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `node_usages`
--
ALTER TABLE `node_usages`
  ADD CONSTRAINT `1` FOREIGN KEY (`node_id`) REFERENCES `nodes` (`id`);

--
-- Ограничения внешнего ключа таблицы `node_user_usages`
--
ALTER TABLE `node_user_usages`
  ADD CONSTRAINT `1` FOREIGN KEY (`node_id`) REFERENCES `nodes` (`id`),
  ADD CONSTRAINT `2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `notification_reminders`
--
ALTER TABLE `notification_reminders`
  ADD CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `proxies`
--
ALTER TABLE `proxies`
  ADD CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `template_inbounds_association`
--
ALTER TABLE `template_inbounds_association`
  ADD CONSTRAINT `1` FOREIGN KEY (`inbound_tag`) REFERENCES `inbounds` (`tag`),
  ADD CONSTRAINT `2` FOREIGN KEY (`user_template_id`) REFERENCES `user_templates` (`id`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_admin_id_admins` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_usage_logs`
--
ALTER TABLE `user_usage_logs`
  ADD CONSTRAINT `1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
