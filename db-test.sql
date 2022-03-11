-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2022 a las 22:18:51
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db-test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_11_143304_create_table_usuarios', 1),
(6, '2022_03_11_144902_create_productos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` double(8,2) NOT NULL,
  `precio` double(8,2) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `SKU`, `nombre`, `cantidad`, `precio`, `descripcion`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '123456-R25', 'Camisa XS', 15.00, 10.00, 'Camisa de Guns and rouses', NULL, '2022-03-12 02:14:07', '2022-03-12 03:13:11'),
(2, 'BR-123', 'Jean Negro', 50.00, 25.00, 'Jeans Negros Vans', NULL, '2022-03-12 02:35:41', '2022-03-12 02:35:41'),
(3, 'PA-123456', 'Camisa XXL', 25.00, 12.00, 'Talla extr grande de camisa roja', NULL, '2022-03-12 02:43:13', '2022-03-12 02:43:13'),
(4, '12354-CDA', 'Llavero Pokemon', 50.00, 3.50, 'Llavero de Picachu', NULL, '2022-03-12 02:45:42', '2022-03-12 02:45:42'),
(5, 'KO-45D1', 'Peluche Pokemon', 25.00, 9.99, 'Peluche de Charmander', NULL, '2022-03-12 02:46:41', '2022-03-12 02:46:41'),
(6, 'HI-5645JH', 'Camisa Polo S', 25.00, 14.99, 'Camisa Polo Negra', NULL, '2022-03-12 02:46:41', '2022-03-12 02:46:41'),
(7, 'GB-5460', 'Camisa Cuello V', 100.00, 11.99, 'Camisa Cuello V Talla M', NULL, '2022-03-12 02:46:41', '2022-03-12 02:46:41'),
(8, 'CA-123', 'Short M', 30.00, 15.00, 'Short con diseño', NULL, '2022-03-12 02:46:41', '2022-03-12 02:46:41'),
(9, 'CA-456', 'Short S', 30.00, 15.00, 'Short con diseño talla S', NULL, '2022-03-12 02:46:41', '2022-03-12 02:46:41'),
(10, 'H1-FGFD', 'Camisa Polo M', 10.00, 10.00, 'Camisa Polo M', NULL, '2022-03-12 02:46:41', '2022-03-12 02:46:41'),
(11, 'XC-7892', 'Llavero Jesus', 100.00, 2.50, 'Llavero con cruz de Jesús', NULL, '2022-03-12 02:46:41', '2022-03-12 03:12:51'),
(12, 'AS-7YTR', 'Gorra Nike', 50.00, 18.00, 'Gorra negra', NULL, '2022-03-12 02:46:41', '2022-03-12 02:46:41'),
(13, 'GR-123', 'Gorra Vans', 50.00, 20.00, 'Gorra roja', NULL, '2022-03-12 02:46:41', '2022-03-12 02:46:41'),
(14, 'U6-223', 'Gorra Adidas', 50.00, 18.00, 'Gorra azul', NULL, '2022-03-12 02:46:41', '2022-03-12 02:46:41'),
(15, 'UL-D520', 'Taza de colores', 125.00, 5.00, 'Taza de colores, grande', NULL, '2022-03-12 02:55:15', '2022-03-12 02:55:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `telefono`, `username`, `fecha_nacimiento`, `email`, `password`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Marvin Eduardo Linares Rojas', '6001-2466', 'marvined7', '1997-05-01', 'marvin.edd7@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, '2022-03-12 01:27:26', '2022-03-12 03:01:49'),
(2, 'Pedro Lopez', '2466-7878', 'pedro94', '1994-05-05', 'pedro94@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, '2022-03-12 01:28:52', '2022-03-12 03:08:42'),
(3, 'Alejandra Carolina Gonzales Ramirez', '7841-6312', 'alecarito12', '1995-09-09', 'alecarito12@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, '2022-03-12 01:35:05', '2022-03-12 01:35:05'),
(4, 'Juan Carlos', '7898-9898', 'juancho', '1998-12-05', 'juan@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, '2022-03-12 01:36:12', '2022-03-12 02:04:04'),
(5, 'Roxana Menjivar', '7123-7896', 'roxyy4', '1993-06-12', 'roxy@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, '2022-03-12 01:37:04', '2022-03-12 01:37:04'),
(6, 'Manuel Ortiz', '60335454', 'manuelito', '1999-05-05', 'manuelortiz@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, '2022-03-12 01:40:04', '2022-03-12 02:03:46'),
(7, 'Gabriela Bermudez', '24467878', 'gabri7', '1996-06-06', 'gabi@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, '2022-03-12 01:40:57', '2022-03-12 01:40:57'),
(8, 'Eduardo Cortez', '21258978', 'edy123', '1994-12-11', 'eduardo@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, '2022-03-12 01:59:55', '2022-03-12 01:59:55'),
(9, 'Marta Rivera', '6778-9222', 'marta12', '1995-07-07', 'marta@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL),
(10, 'Kevin Linares', '6446-7845', 'kevinin', '1993-08-08', 'kevin@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL),
(11, 'Alexandra Medina', '7228-4523', 'alexa12', '1992-07-03', 'alexa@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL),
(12, 'Xochitl River', '2410-1212', 'xochitl7', '1990-05-05', 'xochitl@gmail.com', '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
