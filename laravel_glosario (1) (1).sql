-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-02-2024 a las 04:17:17
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_glosario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2024_02_10_210554_create_terminos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terminos`
--

CREATE TABLE `terminos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `termino` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `terminos`
--

INSERT INTO `terminos` (`id`, `termino`, `descripcion`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Cliente', 'El cliente es una aplicación informática o un ordenador que consume un servicio remoto en otro ordenador conocido como servidor, normalmente a través de una red de telecomunicaciones.También se puede definir que un cliente es cualquier cosa (que no se', 'uploads/qs4FHFZ2kOozWm68AoedI18l7ezY4qzVOOp9rxKl.png', NULL, '2024-02-14 08:02:39'),
(2, 'Servidor', 'Un servidor es un dispositivo o programa que proporciona servicios o recursos a otros dispositivos llamados clientes en una red. Puede ofrecer servicios como almacenamiento de archivos, procesamiento de datos, administración de red, etc.', 'uploads/sQzGedc7jTienPjVpEyiP8HyEXgninjUKSwjz1T9.jpg', NULL, '2024-02-14 08:04:02'),
(3, 'Sistemas de computadoras centrales', 'Se refiere a sistemas informáticos que centralizan el procesamiento y la gestión de recursos. Estos sistemas pueden ser mainframes o supercomputadoras.', 'uploads/p06CrUMzeQumWBEDmX11PqjnmDHUn6ZAgljUmMkQ.jpg', NULL, NULL),
(4, 'Computadoras dedicadas', 'Son sistemas informáticos diseñados para realizar tareas específicas o funciones especializadas, en contraste con sistemas de propósito general.', 'uploads/O0sUEXB9rlhyDoJvn1zxpVaL5j9iZapP79v9UPnX.jpg', NULL, NULL),
(5, 'Recursos compartidos', 'Son elementos (como archivos, impresoras o servicios) que están disponibles para ser utilizados por varios usuarios o sistemas.', 'uploads/afWOMYFxkvGyawQTlwZIv4l46lDILk8ZHR3nSffV.jpg', NULL, NULL),
(6, 'Protocolos asimétricos', 'Se refiere a protocolos de comunicación en los cuales las funciones de transmisión y recepción no son simétricas. Por ejemplo, en la comunicación por satélite, la velocidad de transmisión puede ser diferente de la velocidad de recepción.', 'uploads/OfBIlCVOk0gbAx85HxkFq9987wJfAEEGYDYfYtYX.jpg', NULL, NULL),
(7, 'Encapsulación de servicios', 'Es un concepto en redes de computadoras donde los datos y las funciones relacionadas con la implementación de un servicio específico se agrupan y se ocultan del resto del sistema.', 'uploads/mjP4tJr6vGU4LY22sEP1WlilVlVxmMVBPiXzxYMf.png', NULL, NULL),
(8, 'Escalabilidad', 'Capacidad de un sistema para adaptarse y manejar un aumento en la carga o tamaño sin perder rendimiento o eficiencia.', 'uploads/Pw4kBCHDHEmFzOg7YoAWzCIlTrBN4kr7ofhdpCLD.png', NULL, NULL),
(9, 'Integridad', 'En el contexto de datos, se refiere a la precisión y confiabilidad de la información. Los datos íntegros son aquellos que no han sido alterados de manera no autorizada o accidental.', 'uploads/pDGm1QwLx6AjYMTlE4Vh7gcaVZkbakUNPJtotOvC.png', NULL, NULL),
(10, 'Infrastructure as a Service (IAAS)', 'Es un modelo de servicio en la nube que proporciona infraestructura de computación virtualizada a través de internet. Incluye recursos como servidores virtuales, almacenamiento y redes.', 'uploads/r3KIo9zAFfF83pPuveoN4NXeWGtJIw3sFnnJAgr7.jpg', NULL, NULL),
(11, 'Platform as a Service (PAAS)', 'Es un modelo de servicio en la nube que proporciona una plataforma completa de desarrollo y despliegue de aplicaciones sin que los usuarios se preocupen por la gestión de la infraestructura subyacente.', 'uploads/vhKe3Ji4ZgofP3aZ7BBWXe8MzIjQkVpCpsYSjT0t.png', NULL, NULL),
(12, 'Software as a Service (SAAS)', 'Es un modelo de servicio en la nube que ofrece acceso a aplicaciones y software a través de internet, eliminando la necesidad de instalación y mantenimiento local.', 'uploads/G4h4hz7DXl04pu9bhzD0KZj3TnhR1xCbSmfpEDZE.jpg', NULL, NULL),
(13, 'Cómputo en la nube', 'Es un modelo de entrega de servicios de computación a través de internet, permitiendo el acceso bajo demanda a recursos computacionales como almacenamiento, potencia de procesamiento, y aplicaciones.', 'uploads/vPcngqyO4hGh59oo69vZPzAyr052gPwFFZBYMfBs.jpg', NULL, NULL),
(14, 'Acerca de', 'Chelsea Fabiola Hernández Ceja & Angela Janeth Cruz Mendoza', 'uploads/MvqPAUGDbWcbCmCdJgPZVYO2DjLE6TvFcGO8VokC.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `terminos`
--
ALTER TABLE `terminos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `terminos`
--
ALTER TABLE `terminos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
