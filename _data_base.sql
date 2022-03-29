-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2021 a las 18:33:44
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aaaaaaaaa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` bigint(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Habitaciones Personales', 'habitaciones Simples', 'img_196b47622354da606bd11ed2eafed77d.jpg', '2021-10-19 21:17:36', 'habitaciones-personales', 1),
(2, 'Habitaciones Pareja', 'Habitaciones Dobles', 'img_625d19a7e1f4849bdb021e40c60b4774.jpg', '2021-10-19 21:23:13', 'habitaciones-pareja', 1),
(3, 'Habitaciones Familiares', 'Habitaciones Triple', 'img_fc4fa7bc9ef7df8be176439b3f8ccb77.jpg', '2021-10-19 21:33:05', 'habitaciones-familiares', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_h`
--

CREATE TABLE `categorias_h` (
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `fechReg` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(127, 86, 47, '150.00', 1),
(128, 91, 47, '150.00', 1),
(129, 95, 48, '350.00', 1),
(130, 96, 47, '150.00', 1),
(131, 96, 48, '350.00', 1),
(132, 97, 48, '350.00', 1),
(133, 97, 46, '123.00', 1),
(134, 98, 47, '150.00', 1),
(135, 99, 48, '350.00', 1),
(136, 100, 48, '350.00', 1),
(137, 100, 47, '150.00', 1),
(138, 100, 46, '123.00', 1),
(139, 101, 46, '123.00', 1),
(140, 101, 48, '350.00', 1),
(141, 102, 46, '123.00', 1),
(142, 102, 48, '350.00', 1),
(143, 103, 48, '350.00', 1),
(144, 104, 50, '250.00', 1),
(145, 105, 48, '350.00', 1),
(146, 105, 47, '150.00', 1),
(147, 106, 48, '350.00', 1),
(148, 107, 50, '250.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` bigint(20) NOT NULL,
  `personaid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `transaccionid` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_temp`
--

INSERT INTO `detalle_temp` (`id`, `personaid`, `productoid`, `precio`, `cantidad`, `transaccionid`) VALUES
(15, 1, 46, '123.00', 1, 'g6fjguin42mghpuk9tq34hodmp'),
(16, 1, 48, '350.00', 1, 'g6fjguin42mghpuk9tq34hodmp'),
(19, 1, 46, '123.00', 1, 'qlvvpm831od00l3mbhqoc5f628'),
(20, 1, 48, '350.00', 1, 'qlvvpm831od00l3mbhqoc5f628'),
(33, 25, 47, '150.00', 1, 'jar30blhupm8tinccgub6um6bv'),
(36, 25, 47, '150.00', 1, '82us5a1c0152tvd4c1mebngrnp'),
(45, 25, 47, '150.00', 1, 'adchk33oq7d6van7f17kf1qd61'),
(49, 25, 48, '350.00', 1, '4dst0c47tgutvei3c9gp5vlu23'),
(52, 25, 47, '150.00', 1, 'r286fdn9djl93vdku4laoc7ueb'),
(53, 25, 48, '350.00', 1, 'r286fdn9djl93vdku4laoc7ueb'),
(54, 26, 48, '350.00', 1, '0b3gn072e1u3e5ut9p29dhb8a0'),
(55, 26, 46, '123.00', 1, '0b3gn072e1u3e5ut9p29dhb8a0'),
(56, 26, 47, '150.00', 1, 'cr62je2vv09nse7i8s5eb81as4'),
(57, 26, 48, '350.00', 1, 'lcm4b5rnp5apgcppdqa3uvkb42'),
(58, 26, 48, '350.00', 1, 'scnhe1d8v1e2b699uodogg1erv'),
(59, 26, 47, '150.00', 1, 'scnhe1d8v1e2b699uodogg1erv'),
(60, 26, 46, '123.00', 1, 'scnhe1d8v1e2b699uodogg1erv'),
(63, 1, 48, '350.00', 1, 'f7htsu267r1se5jolducvihr15'),
(64, 1, 46, '123.00', 1, 'f7htsu267r1se5jolducvihr15'),
(65, 25, 46, '123.00', 1, 'baeee85vu639sh9msgareickec'),
(66, 25, 48, '350.00', 1, 'baeee85vu639sh9msgareickec'),
(67, 27, 46, '123.00', 1, '0j68rqkgjgkfe1em3dfc7ld5bk'),
(68, 27, 48, '350.00', 1, '0j68rqkgjgkfe1em3dfc7ld5bk'),
(69, 27, 48, '350.00', 1, 'e80jdvkbhpjco2fbqdltevd9b3'),
(71, 27, 50, '250.00', 1, '8epqbmmc6pmumk159j9gev1161'),
(72, 27, 48, '350.00', 1, '26i4e50f6bs6p6am8c7u7fjo1r'),
(73, 27, 47, '150.00', 1, '26i4e50f6bs6p6am8c7u7fjo1r'),
(74, 27, 48, '350.00', 1, 'vj8pjb3lc5kindrhrn7q13si8k'),
(75, 27, 50, '250.00', 1, 't7s1ofr40o2mlnm9gpf2mm31ba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `idHabitacion` bigint(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `Precio` decimal(11,2) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `fechaReg` datetime NOT NULL DEFAULT current_timestamp(),
  `imagen` varchar(100) NOT NULL,
  `ruta` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`idHabitacion`, `Nombre`, `descripcion`, `Precio`, `id_categoria`, `capacidad`, `fechaReg`, `imagen`, `ruta`, `status`) VALUES
(46, 'hola que tal', '1234 hque tambien s xds', '123.00', 1, 2, '2021-11-02 23:28:13', '', 'hola-que-tal', 2),
(47, 'Habitaciones Extra Superior 865', 'habitacion muy comoda para los que no peuden dormir y por ellos simepmre duermen de dioa o cosas asi', '150.00', 3, 5, '2021-11-03 00:31:06', '', 'habitaciones-extra-superior-865', 2),
(48, 'Habitacion 520', 'habitacion para un maximo de 7 personas * con dos baños * con niños *medidas 2.30m x 7m', '350.00', 3, 7, '2021-11-29 23:44:05', '', 'habitacion-520', 2),
(50, 'habitacion doble 308', 'ideal apra parejas <3', '250.00', 2, 2, '2021-12-07 23:13:44', '', 'habitacion-doble-308', 2),
(51, 'habitacion pareja 310', 'ideal apra parejas <3', '280.00', 2, 2, '2021-12-07 23:16:31', '', 'habitacion-pareja-310', 2),
(52, 'habitacion simple 102', '123', '100.00', 1, 1, '2021-12-07 23:18:02', '', 'habitacion-simple-102', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(2, 46, 'pro_6b65b523be6580ae9678e3f7bdfed247.jpg'),
(3, 46, 'pro_ede844f51556b59af2dac4131d013bac.jpg'),
(5, 47, 'pro_b4ae2bb935591dcba884c24db31d91d1.jpg'),
(6, 47, 'pro_05a3ca657a7c41c30cde774bfc128559.jpg'),
(7, 47, 'pro_99c430e47ed1e5f468f5d890c405837b.jpg'),
(8, 48, 'pro_e30dc40f0ef36aafe29029f4e3d7600a.jpg'),
(9, 48, 'pro_b7b88066c820e9ad560ee6073cabf8a8.jpg'),
(12, 51, 'pro_4c28f3da1d19c5e45b97a59e170870a5.jpg'),
(13, 51, 'pro_b636c97f1fb197461b6a785630b77e56.jpg'),
(14, 52, 'pro_841cafd648c3cc1235b162d571cb20d3.jpg'),
(15, 50, 'pro_2ec2acbddffc7c4914ae6ddfe0616bd4.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` bigint(20) NOT NULL,
  `titulo` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` bigint(20) NOT NULL,
  `referenciacobro` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datospaypal` text COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `costo_envio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `direccion_envio` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(61, NULL, NULL, NULL, 26, '2021-11-04 00:35:45', '50.00', '323.00', 2, 'ss, ssss', 'Pendiente'),
(62, NULL, NULL, NULL, 26, '2021-11-04 00:39:13', '50.00', '323.00', 2, 'w, w', 'Pendiente'),
(63, NULL, NULL, NULL, 1, '2021-11-04 21:27:27', '50.00', '323.00', 2, 'tre, tre', 'Pendiente'),
(64, NULL, NULL, NULL, 1, '2021-11-04 21:43:51', '50.00', '596.00', 4, 'ascas, casca', 'Pendiente'),
(65, NULL, NULL, NULL, 25, '2021-11-04 23:17:44', '0.00', '273.00', 5, 'casa, casa', 'Pendiente'),
(66, NULL, '7X5431675N6937257', '{\"id\":\"8N825306EP349124W\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"273.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 273 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"7X5431675N6937257\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"273.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-11-26T01:32:34Z\",\"update_time\":\"2021-11-26T01:32:34Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-cjolr2601989@personal.example.com\",\"payer_id\":\"L9V35LUDETWDS\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-11-26T01:30:04Z\",\"update_time\":\"2021-11-26T01:32:34Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/8N825306EP349124W\",\"rel\":\"self\",\"method\":\"GET\"}]}', 25, '2021-11-25 20:32:34', '0.00', '273.00', 1, 'casa, casa', 'Completo'),
(67, NULL, NULL, NULL, 25, '2021-11-25 20:33:38', '0.00', '273.00', 3, 'casa, casa', 'Pendiente'),
(68, NULL, NULL, NULL, 25, '2021-11-29 23:11:41', '0.00', '123.00', 3, 'xd, s', 'Pendiente'),
(69, NULL, NULL, NULL, 25, '2021-11-29 23:12:29', '0.00', '123.00', 4, 'xd, dd', 'Pendiente'),
(70, NULL, NULL, NULL, 25, '2021-11-29 23:14:01', '0.00', '123.00', 3, 'xd, s', 'Pendiente'),
(71, NULL, NULL, NULL, 25, '2021-11-29 23:14:42', '0.00', '123.00', 3, 'xd, a', 'Pendiente'),
(72, '9050', NULL, NULL, 25, '2021-11-29 23:29:53', '0.00', '273.00', 5, 'xd, si', 'Completo'),
(73, NULL, NULL, NULL, 26, '2021-11-29 23:37:42', '0.00', '273.00', 2, 'xd, si', 'Pendiente'),
(74, NULL, NULL, NULL, 1, '2021-12-02 21:04:47', '0.00', '473.00', 3, 'xd, 2022/01/07 - 2022/01/11', 'Pendiente'),
(75, NULL, NULL, NULL, 1, '2021-12-02 21:08:02', '0.00', '473.00', 3, 'xd, 2021/12/31 - 2022/01/05', 'Pendiente'),
(76, NULL, NULL, NULL, 1, '2021-12-02 21:13:53', '0.00', '473.00', 5, 'xd, 2021/12/31 - 2022/01/05', 'Pendiente'),
(77, NULL, NULL, NULL, 1, '2021-12-02 21:26:09', '0.00', '473.00', 2, 'xd, 2021/12/31 - 2022/01/05', 'Pendiente'),
(78, NULL, NULL, NULL, 1, '2021-12-02 21:27:10', '0.00', '473.00', 5, 'xd, 2021/12/31 - 2022/01/05', 'Pendiente'),
(79, NULL, NULL, NULL, 1, '2021-12-02 22:45:59', '0.00', '473.00', 4, 'xd, 2021/12/31 - 2022/01/05', 'Pendiente'),
(80, NULL, NULL, NULL, 1, '2021-12-02 22:49:47', '0.00', '473.00', 4, 'xd, 2021/12/31 - 2022/01/05', 'Pendiente'),
(81, NULL, NULL, NULL, 1, '2021-12-02 23:03:03', '0.00', '473.00', 3, 'xd, 2021/12/31 - 2022/01/05', 'Pendiente'),
(82, NULL, NULL, NULL, 1, '2021-12-03 01:15:31', '0.00', '473.00', 4, 'xd, 2021/12/31 - 2022/01/05', 'Pendiente'),
(83, NULL, NULL, NULL, 1, '2021-12-03 01:16:12', '0.00', '473.00', 5, 'xd, 2021/12/31 - 2022/01/05', 'Pendiente'),
(84, NULL, NULL, NULL, 25, '2021-12-03 20:14:07', '0.00', '150.00', 4, 's, 2021/12/02 - 2021/12/05', 'Pendiente'),
(85, NULL, NULL, NULL, 25, '2021-12-03 20:24:33', '0.00', '150.00', 5, 'ss, 2021/12/02 - 2021/12/05', 'Pendiente'),
(86, NULL, NULL, NULL, 25, '2021-12-03 20:27:47', '0.00', '150.00', 4, 'sss, 2021/12/02 - 2021/12/05', 'Pendiente'),
(87, NULL, '7B7672307L509204X', '{\"id\":\"8GB36055S6984833P\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"150.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 150 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"7B7672307L509204X\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"150.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-04T01:31:33Z\",\"update_time\":\"2021-12-04T01:31:33Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-w2n4762636071@business.example.com\",\"payer_id\":\"FS4CF9N3W76VQ\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-04T01:28:24Z\",\"update_time\":\"2021-12-04T01:31:33Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/8GB36055S6984833P\",\"rel\":\"self\",\"method\":\"GET\"}]}', 25, '2021-12-03 20:31:33', '0.00', '150.00', 1, 'xds, 2021/12/03 - 2021/12/03', 'Completo'),
(88, NULL, '2Y609150UV9602314', '{\"id\":\"8VV26752S27016931\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"150.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 150 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"2Y609150UV9602314\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"150.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-04T01:34:32Z\",\"update_time\":\"2021-12-04T01:34:32Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-w2n4762636071@business.example.com\",\"payer_id\":\"FS4CF9N3W76VQ\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-04T01:34:20Z\",\"update_time\":\"2021-12-04T01:34:32Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/8VV26752S27016931\",\"rel\":\"self\",\"method\":\"GET\"}]}', 25, '2021-12-03 20:34:33', '0.00', '150.00', 1, 'xdsS, Invalid date - Invalid date', 'Completo'),
(89, NULL, '0L522125B1153232V', '{\"id\":\"4YK30215XR638871W\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"150.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 150 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"0L522125B1153232V\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"150.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-04T01:40:15Z\",\"update_time\":\"2021-12-04T01:40:15Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-w2n4762636071@business.example.com\",\"payer_id\":\"FS4CF9N3W76VQ\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-04T01:40:08Z\",\"update_time\":\"2021-12-04T01:40:15Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/4YK30215XR638871W\",\"rel\":\"self\",\"method\":\"GET\"}]}', 25, '2021-12-03 20:40:15', '0.00', '150.00', 1, 'xdsSs, Invalid date - Invalid date', 'Completo'),
(90, NULL, '7PP10975PA1674121', '{\"id\":\"0V962637AY615120L\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"150.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 150 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"7PP10975PA1674121\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"150.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-04T01:48:15Z\",\"update_time\":\"2021-12-04T01:48:15Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-w2n4762636071@business.example.com\",\"payer_id\":\"FS4CF9N3W76VQ\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-04T01:48:08Z\",\"update_time\":\"2021-12-04T01:48:15Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/0V962637AY615120L\",\"rel\":\"self\",\"method\":\"GET\"}]}', 25, '2021-12-03 20:48:16', '0.00', '150.00', 1, 'xdsSss, Invalid date - Invalid date', 'Completo'),
(91, NULL, NULL, NULL, 25, '2021-12-03 20:49:38', '0.00', '150.00', 3, 'xdsSsss, Invalid date - Invalid date', 'Pendiente'),
(92, NULL, '23725542EL7162740', '{\"id\":\"6E165124C9741994N\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 350 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"23725542EL7162740\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-04T01:50:24Z\",\"update_time\":\"2021-12-04T01:50:24Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-w2n4762636071@business.example.com\",\"payer_id\":\"FS4CF9N3W76VQ\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-04T01:50:15Z\",\"update_time\":\"2021-12-04T01:50:24Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/6E165124C9741994N\",\"rel\":\"self\",\"method\":\"GET\"}]}', 25, '2021-12-03 20:50:25', '0.00', '350.00', 1, 'xds, 2021/12/03 - 2021/12/03', 'Completo'),
(93, NULL, '0N678827LJ514053F', '{\"id\":\"4SB25087A7403484X\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 350 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"0N678827LJ514053F\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-04T01:52:29Z\",\"update_time\":\"2021-12-04T01:52:29Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-w2n4762636071@business.example.com\",\"payer_id\":\"FS4CF9N3W76VQ\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-04T01:52:22Z\",\"update_time\":\"2021-12-04T01:52:29Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/4SB25087A7403484X\",\"rel\":\"self\",\"method\":\"GET\"}]}', 25, '2021-12-03 20:52:29', '0.00', '350.00', 1, 'xdss, 2022/01/04 - 2022/01/13', 'Completo'),
(94, NULL, '2J320835WL800271B', '{\"id\":\"3VS828885U696730C\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 350 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"2J320835WL800271B\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-04T01:53:19Z\",\"update_time\":\"2021-12-04T01:53:19Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-w2n4762636071@business.example.com\",\"payer_id\":\"FS4CF9N3W76VQ\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-04T01:53:12Z\",\"update_time\":\"2021-12-04T01:53:19Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/3VS828885U696730C\",\"rel\":\"self\",\"method\":\"GET\"}]}', 25, '2021-12-03 20:53:19', '0.00', '350.00', 1, 'xdsss, 2022/01/04 - 2022/01/13', 'Completo'),
(95, NULL, '9DS31632RM674023V', '{\"id\":\"7NL4804966013733F\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 350 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"9DS31632RM674023V\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-04T01:57:13Z\",\"update_time\":\"2021-12-04T01:57:13Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-w2n4762636071@business.example.com\",\"payer_id\":\"FS4CF9N3W76VQ\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-04T01:57:06Z\",\"update_time\":\"2021-12-04T01:57:13Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/7NL4804966013733F\",\"rel\":\"self\",\"method\":\"GET\"}]}', 25, '2021-12-03 20:57:14', '0.00', '350.00', 1, 'xdssss, 2022/01/04 - 2022/01/13', 'Completo'),
(96, NULL, '8KP5675607216232D', '{\"id\":\"26226033N7405354D\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"500.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 500 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"8KP5675607216232D\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"500.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-04T02:01:47Z\",\"update_time\":\"2021-12-04T02:01:47Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-w2n4762636071@business.example.com\",\"payer_id\":\"FS4CF9N3W76VQ\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-04T02:01:40Z\",\"update_time\":\"2021-12-04T02:01:47Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/26226033N7405354D\",\"rel\":\"self\",\"method\":\"GET\"}]}', 25, '2021-12-03 21:01:48', '0.00', '500.00', 1, 'xdss, 2021/12/03 - 2021/12/03', 'Completo'),
(97, NULL, '8M013931T70786343', '{\"id\":\"31H35064G9155325G\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"473.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 473 \",\"soft_descriptor\":\"PAYPAL *TEST STORE TES\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"8M013931T70786343\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"473.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-04T02:35:25Z\",\"update_time\":\"2021-12-04T02:35:25Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-w2n4762636071@business.example.com\",\"payer_id\":\"FS4CF9N3W76VQ\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-04T02:35:14Z\",\"update_time\":\"2021-12-04T02:35:25Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/31H35064G9155325G\",\"rel\":\"self\",\"method\":\"GET\"}]}', 26, '2021-12-03 21:35:26', '0.00', '473.00', 1, 'si, 2021/12/03 - 2021/12/03', 'Completo'),
(98, '99', NULL, NULL, 26, '2021-12-03 22:35:34', '0.00', '150.00', 4, 'ahora q? ///, 2021/12/26 - 2022/01/20', 'Entregado'),
(99, '123', NULL, NULL, 26, '2021-12-03 22:39:38', '0.00', '350.00', 2, '*, 2021/12/03 - 2021/12/03', 'Aprobado'),
(100, '985', NULL, NULL, 26, '2021-12-03 22:58:42', '0.00', '623.00', 2, '* 2021/12/03 - 2021/12/03', 'Pendiente'),
(101, NULL, '9BY683317V786412U', '{\"id\":\"38F11085FT203674J\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"473.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 473 \",\"soft_descriptor\":\"PAYPAL *TEST STORE TES\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"9BY683317V786412U\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"473.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-08T03:38:28Z\",\"update_time\":\"2021-12-08T03:38:28Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-w2n4762636071@business.example.com\",\"payer_id\":\"FS4CF9N3W76VQ\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-08T03:38:01Z\",\"update_time\":\"2021-12-08T03:38:28Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/38F11085FT203674J\",\"rel\":\"self\",\"method\":\"GET\"}]}', 25, '2021-12-07 22:38:29', '0.00', '473.00', 1, '* 2021/12/15 - 2021/12/24', 'Completo'),
(102, NULL, '9TJ65770JD578160V', '{\"id\":\"61S572815R542123M\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"473.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 473 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"9TJ65770JD578160V\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"473.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-08T05:23:54Z\",\"update_time\":\"2021-12-08T05:23:54Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-w2n4762636071@business.example.com\",\"payer_id\":\"FS4CF9N3W76VQ\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-08T05:17:42Z\",\"update_time\":\"2021-12-08T05:23:54Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/61S572815R542123M\",\"rel\":\"self\",\"method\":\"GET\"}]}', 27, '2021-12-08 00:23:55', '0.00', '473.00', 1, '* 2021/12/02 - 2021/12/06', 'Completo'),
(103, NULL, '5R475841EX491030F', '{\"id\":\"83179923LM091160K\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 350 \",\"soft_descriptor\":\"PAYPAL *TEST STORE TES\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"5R475841EX491030F\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-08T05:30:00Z\",\"update_time\":\"2021-12-08T05:30:00Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-cjolr2601989@personal.example.com\",\"payer_id\":\"L9V35LUDETWDS\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-08T05:29:21Z\",\"update_time\":\"2021-12-08T05:30:00Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/83179923LM091160K\",\"rel\":\"self\",\"method\":\"GET\"}]}', 27, '2021-12-08 00:30:01', '0.00', '350.00', 1, '* 2021/12/08 - 2021/12/08', 'Pendiente'),
(104, NULL, NULL, NULL, 27, '2021-12-08 00:38:47', '0.00', '250.00', 4, '* 2021/12/08 - 2021/12/08', 'Pendiente'),
(105, NULL, '7FT875252P9250142', '{\"id\":\"51D02181TA031652K\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"500.00\"},\"payee\":{\"email_address\":\"sb-43swx48719586@business.example.com\",\"merchant_id\":\"Q2V48RY4XYVMN\"},\"description\":\"Compra de artículos en Hotel Passion Barranco por S/. 500 \",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"7FT875252P9250142\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"500.00\"},\"final_capture\":true,\"disbursement_mode\":\"INSTANT\",\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-12-08T05:39:46Z\",\"update_time\":\"2021-12-08T05:39:46Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-cjolr2601989@personal.example.com\",\"payer_id\":\"L9V35LUDETWDS\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2021-12-08T05:39:37Z\",\"update_time\":\"2021-12-08T05:39:46Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/51D02181TA031652K\",\"rel\":\"self\",\"method\":\"GET\"}]}', 27, '2021-12-08 00:39:47', '0.00', '500.00', 1, '* 2021/12/08 - 2021/12/08', 'Completo'),
(106, NULL, NULL, NULL, 27, '2021-12-08 01:04:42', '0.00', '350.00', 2, '* 2022/01/02 - 2022/01/20', 'Pendiente'),
(107, NULL, NULL, NULL, 27, '2021-12-08 01:09:25', '0.00', '250.00', 4, '* 2021/12/08 - 2021/12/08', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` bigint(20) NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT 0,
  `w` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(698, 3, 1, 1, 0, 0, 0),
(699, 3, 2, 0, 0, 0, 0),
(700, 3, 3, 0, 0, 0, 0),
(701, 3, 4, 1, 0, 0, 0),
(702, 3, 5, 1, 0, 0, 0),
(703, 3, 6, 0, 0, 0, 0),
(716, 7, 1, 1, 0, 0, 0),
(717, 7, 2, 0, 0, 0, 0),
(718, 7, 3, 0, 0, 0, 0),
(719, 7, 4, 0, 0, 0, 0),
(720, 7, 5, 1, 0, 0, 0),
(721, 7, 6, 0, 0, 0, 0),
(771, 1, 1, 1, 0, 0, 0),
(772, 1, 2, 1, 1, 1, 1),
(773, 1, 3, 1, 1, 1, 1),
(774, 1, 4, 1, 1, 1, 1),
(775, 1, 5, 1, 1, 1, 1),
(776, 1, 6, 1, 1, 1, 1),
(777, 1, 7, 1, 0, 0, 0),
(792, 2, 1, 0, 0, 0, 0),
(793, 2, 2, 0, 0, 0, 0),
(794, 2, 3, 0, 0, 0, 0),
(795, 2, 4, 1, 1, 1, 1),
(796, 2, 5, 0, 0, 0, 0),
(797, 2, 6, 1, 1, 1, 1),
(798, 2, 7, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL,
  `identificacion` varchar(30) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombres` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombrefiscal` varchar(80) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `direccionfiscal` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `token` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '2409198920', 'Abel', 'OSH', 1234567, 'admin@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '24252622', 'Abel OSH', 'Antigua Guatemala', '', 1, '2020-08-13 00:51:44', 1),
(2, '131313131313', 'Carlos', 'Hernández', 121212121, 'carlos@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '2c52a34f7988a0afc63e-dfe4badca8d2cb2b93e6-94824d050567a0ccd851-56165c5603c4ca020', 2, '2020-08-13 00:54:08', 1),
(3, '879846545454', 'Pablo', 'Arana', 784858856, 'pablo@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 7, '2020-08-14 01:42:34', 1),
(4, '65465465', 'Jorge David', 'Arana', 987846545, 'jorge@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 1, '2020-08-22 00:27:17', 1),
(5, '4654654', 'Carme Elena', 'Arana', 12121221, 'carmen@infom.com', 'be63ad947e82808780278e044bcd0267a6ac6b3cd1abdb107cc10b445a182eb0', '', '', '', '', 2, '2020-08-22 00:35:04', 1),
(6, '8465484', 'Alex Fernando', 'Méndez', 222222222, 'alex@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 3, '2020-08-22 00:48:50', 1),
(7, '54684987', 'Francisco', 'Herrera', 6654456545, 'francisco@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 2, '2020-08-22 01:55:57', 1),
(8, '54646849844', 'Axel Gudiel', 'Vela', 654687454, 'axel@info.com', '993fdea29acd1f7c6a6423c038601b175bb282382fc85b306a85f134fff4a63e', '', '', '', '', 3, '2020-09-07 01:30:52', 1),
(9, '46548454', 'Alan', 'Arenales', 45687954, 'alan@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Alan', 'Ciudad', '', 7, '2020-10-11 01:30:23', 1),
(10, '89898989', 'Rafa', 'Arana', 25478548, 'toolsfordeveloper@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Rafa Arana', 'Ciudad de Guatemala', '', 7, '2020-10-11 01:43:30', 1),
(11, '54789656458', 'Joel Eduardo', 'Cabrera', 54124528, 'joel@joel.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'CF', 'Joel Eduardo', 'Antigua Guatemala', '', 7, '2020-10-11 01:44:30', 1),
(12, '56874654', 'Pablo', 'Herrera', 65468464, 'pabloh@info.com', '7213f0b87347be4a36e70f9a9eeca3dfc48da72c6ef346871e36e6d53c5572c1', 'CF', 'Pablo', 'Antigua Guatemala', '', 7, '2020-10-11 01:59:45', 1),
(13, '46584645', 'Elena', 'Rosales', 46876454, 'elena123@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 7, '2020-12-03 04:23:40', 1),
(14, '654654654547', 'Alexa', 'Cardona', 487546878, 'alexa@info.com', '74d7f333ede0080c542c95522969be8dbc5a127d4cd3b1f765944e318f087bec', '', '', '', '', 2, '2020-12-04 01:49:58', 1),
(15, '6546546545', 'Alan', 'Estrada', 464564564, 'aaaa@info.com', '739ed90c2e5568537d3b3e37550d467e8469a9c2efee57b8ea0faf50bc54f8a2', '', '', '', '', 2, '2020-12-04 02:45:37', 1),
(16, '65465465478', 'Jorge', 'Mendoza', 6545644, 'jmendoza@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Jorge Mendoza', 'Ciudad', '', 2, '2020-12-05 01:58:08', 1),
(17, '65465455', 'Jorge', 'Mendoza', 6545644, 'jjjj@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Jorge Mendoza', 'Ciudad', '', 2, '2020-12-05 01:59:25', 1),
(18, '46584654711', 'Arnold', 'Gutierrez', 78465454, 'arnold@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Arnold', 'Ciudad', '', 7, '2020-12-05 02:02:31', 1),
(19, '64894654', 'Julieta', 'Estrada', 4654564, 'julieta@info.com', 'b6602f58690ca41488e97cd28153671356747c951c55541b6c8d8b8493eb7143', 'CF', 'Julieta', 'Ciudad', '', 7, '2020-12-05 02:22:30', 1),
(20, '785741200', 'Jon', 'Beta', 456546545, 'jon@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Jon', 'Ciudad de Guatemala', '', 7, '2020-12-28 03:36:39', 1),
(21, '745845214558', 'Ale', 'Pérez', 4654798878, 'ale@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Ale', 'Ciudad', '', 7, '2020-12-28 03:42:23', 1),
(22, NULL, 'Erick', 'Varillas', 321654, 'erick@gmail.com', 'd0ac712fe0647f52b9b773d33449ee666caff027e1fe556f2ff558b142415a78', NULL, NULL, NULL, NULL, 7, '2021-10-15 21:46:47', 1),
(23, '36958265', 'Xcd', 'Xdx', 9658, 'xd@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL, NULL, NULL, NULL, 7, '2021-10-15 21:57:51', 1),
(24, NULL, 'Sss', 'Sss', 3242, 'sdfsm@gmail.com', 'd8cf84e54b36e8407145ed5640d26aaeefabed7ca25f6f8a38fd9746ac5ae3c5', NULL, NULL, NULL, NULL, 7, '2021-10-18 22:24:25', 1),
(25, '32654152', 'Matw', 'Varillas', 956859674, 'mat@info.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'jr los olivos', 'independencia', 'casa', '0ba9d0b048658f50fc0c-ab992fce12c8bb3889d3-3f812627548fb2e43fa8-43c66662ac1c60e85428', 2, '2021-10-21 22:43:40', 1),
(26, '123456', 'Clinton', 'Ramirez', 930995442, 'clin@cliente.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'la sociedad', 'passion barranco', 'pjs piasd125 lima', NULL, 7, '2021-11-04 00:25:47', 1),
(27, NULL, 'Victor', 'Victor', 953658745, 'victor@info.com', 'e20b003c0f1ea671a1ff9ac4335f644217439267a6abe63d22231808e49b9a83', NULL, NULL, NULL, NULL, 7, '2021-12-08 00:14:50', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` bigint(20) NOT NULL,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 4, '45684545', 'Producto 1', '<p>Descripci&oacute;n producto 1</p>', '200.00', 10, '', '2020-11-15 00:57:57', 'producto-1', 1),
(2, 3, '465456465', 'Producto 1', '<p>Descripci&oacute;n producto</p> <ul> <li>Uno</li> <li>Dos</li> </ul>', '110.00', 10, '', '2020-11-15 03:13:35', 'producto-1', 1),
(3, 1, '4654654', 'Producto Uno', '<p>Descripci&oacute;n producto uno</p> <table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"> <tbody> <tr> <td style=\"width: 48.0244%;\">N&uacute;mero</td> <td style=\"width: 48.022%;\">Descripc&iacute;&oacute;n</td> </tr> <tr> <td style=\"width: 48.0244%;\">Uno</td> <td style=\"width: 48.022%;\">Peque&ntilde;o</td> </tr> <tr> <td style=\"width: 48.0244%;\">Dos</td> <td style=\"width: 48.022%;\">Mediano</td> </tr> <tr> <td style=\"width: 48.0244%;\">Tres</td> <td style=\"width: 48.022%;\">Grande</td> </tr> </tbody> </table>', '200.00', 50, '', '2020-11-15 03:19:15', 'producto-uno', 1),
(4, 2, '45654654', 'Producto 4', '<p>Descripci&oacute; producto</p>', '50.00', 0, '', '2020-11-23 02:59:44', 'producto-4', 1),
(5, 5, '6546546545', 'Producto 5', '<p>Aqu&iacute; va la descripci&oacute;n del producto</p> <ul> <li>Grande</li> <li>Peque&ntilde;o</li> <li>Mediano</li> </ul>', '1000.00', 10, '', '2020-11-23 03:22:35', 'producto-5', 1),
(6, 4, '646546547877', 'Producto 6', '<p>Descripci&oacute;n producto seis</p> <ul> <li>Uno</li> <li>Dos</li> <li>Tres</li> </ul> <p>&nbsp;</p>', '50.00', 10, '', '2020-11-23 03:38:55', 'producto-6', 1),
(7, 5, '65465454', 'Producto 7', '<p>Datos del producto</p>', '100.00', 10, '', '2020-11-23 03:39:59', 'producto-7', 1),
(8, 9, '6546545', 'Producto 8', '<p>Descripc&iacute;on</p>', '50.00', 10, '', '2020-11-23 03:43:29', 'producto-8', 1),
(9, 2, '546455456', 'Producto Nuevo', '<p>Datos del producto</p>', '120.00', 50, '', '2020-12-01 12:52:33', 'producto-nuevo', 1),
(10, 1, '654546544', 'Producto Nuevo', '<p>Descripc&oacute;n</p>', '470.00', 0, '', '2020-12-02 03:52:09', 'producto-nuevo', 1),
(11, 1, '4657897897', 'Reloj de pulsera', '<p style=\"text-align: justify;\">Cuentan con un mecanismo que funciona con pilar y se caracterizan por su enorme precisi&oacute;n gracias a una pieza de cuarzo que es la que se encarga de impulsar la mec&aacute;nica.</p> <p style=\"text-align: justify;\">En la actualidad, la mayor&iacute;a de los relojes de pulsera funcionan con mecanismos de cuarzo, que curiosamente fue un invento suizo que los japoneses supieron aprovechar en los a&ntilde;os setenta para hacerse con los due&ntilde;os del mercado mundial con firmas como Seiko, Orient, etc.</p> <p>&nbsp;</p>', '690.00', 50, '', '2020-12-06 02:30:02', 'reloj-de-pulsera', 1),
(12, 1, '4894647878', 'Chaqueta Azúl', '<p style=\"text-align: justify;\"><span style=\"color: #000000; font-family: arial, helvetica, sans-serif;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span> <a title=\"Google\" href=\"https://google.com\" target=\"_blank\" rel=\"noopener\">Ver m&aacute;s detalle&nbsp;</a></p> <ul> <li>Uno</li> <li>Dos</li> <li>Tres</li> </ul> <p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://abelosh.com/tienda_virtual/Assets/images/uploads/pro_d1d4ad5e1603d3c15a440e5dd4c5cb0c.jpg\" alt=\"\" width=\"188\" height=\"233\" /></p> <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p> <p><iframe src=\"https://www.youtube.com/embed/75xiD6yDcMM\" width=\"450\" height=\"340\" allowfullscreen=\"allowfullscreen\"></iframe></p>', '250.00', 10, '', '2020-12-11 02:23:22', 'chaqueta-azul', 1),
(13, 1, '4654654564', 'Producto nuevo Ruta AX-1', '<p>Descripci&oacute;n producto Nuevo</p>', '150.00', 5, '', '2020-12-18 00:44:28', 'producto-nuevo-ruta-ax-1', 1),
(14, 1, '222123', '12343123123', '<p>123</p>', '123.00', 123, '', '2021-10-28 01:14:10', '12343123123', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

CREATE TABLE `reembolso` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `idtransaccion` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datosreembolso` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `observacion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(150) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `reembolso`
--

INSERT INTO `reembolso` (`id`, `pedidoid`, `idtransaccion`, `datosreembolso`, `observacion`, `status`) VALUES
(1, 13, '3YL95553L27747319', '{\"id\":\"3YL95553L27747319\",\"status\":\"COMPLETED\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/refunds\\/3YL95553L27747319\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/89T8947688556831X\",\"rel\":\"up\",\"method\":\"GET\"}]}', 'Descripcion reembolso', 'COMPLETED'),
(2, 17, '54U51016166442224', '{\"id\":\"54U51016166442224\",\"status\":\"COMPLETED\",\"links\":[{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/refunds\\/54U51016166442224\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/1RJ71409ML289001F\",\"rel\":\"up\",\"method\":\"GET\"}]}', 'Prueba Tienda Virtual', 'COMPLETED');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` bigint(20) NOT NULL,
  `nombrerol` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisores', 'Supervisor de tienda', 1),
(3, 'Vendedores', 'Acceso a módulo ventas', 1),
(4, 'Servicio al cliente', 'Servicio al cliente sistema', 1),
(5, 'Bodega', 'Bodega', 1),
(6, 'Resporteria', 'Resporteria Sistema', 2),
(7, 'Cliente', 'Clientes tienda', 1),
(8, 'Ejemplo rol', 'Ejemplo rol sitema', 1),
(9, 'Coordinador', 'Coordinador', 1),
(10, 'Consulta Ventas', 'Consulta Ventas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `idsuscripcion` bigint(20) NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(1, 'Abel Osh', 'info@abelosh.com', '2021-05-25 01:02:58'),
(2, 'Abel Osh', 'info@info.com', '2021-05-25 01:03:32'),
(3, 'Abel Osh', 'abel@abel.com', '2021-05-25 01:03:54'),
(4, 'Abel Osh', 'alan@info.com', '2021-05-25 01:05:33'),
(5, 'Alberto', 'alberto@info.com', '2021-05-25 01:08:00'),
(6, 'Alejandra Pineda', 'ale@info.com', '2021-06-08 00:47:57'),
(7, 'Carlos', 'mario@info.com', '2021-12-08 00:08:07'),
(8, 'Ss', 'ss@xd.com', '2021-12-08 00:09:33'),
(9, 'Asd', 'asd@xd.cpm', '2021-12-08 01:18:57'),
(10, 'Asdss', 'asdasd.@gmail.com', '2021-12-08 01:22:52'),
(11, 'Asdssas', 'asdassd.@gmail.com', '2021-12-08 01:25:24'),
(12, 'Bb', 'bb@gmail.com', '2021-12-08 01:25:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `idtipopago` bigint(20) NOT NULL,
  `tipopago` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `categorias_h`
--
ALTER TABLE `categorias_h`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`),
  ADD KEY `personaid` (`personaid`) USING BTREE;

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`idHabitacion`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `personaid` (`personaid`),
  ADD KEY `tipopagoid` (`tipopagoid`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `rolid` (`rolid`),
  ADD KEY `moduloid` (`moduloid`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `rolid` (`rolid`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoriaid` (`categoriaid`);

--
-- Indices de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`idsuscripcion`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`idtipopago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categorias_h`
--
ALTER TABLE `categorias_h`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `idHabitacion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=799;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `idsuscripcion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `idtipopago` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `habitaciones` (`idHabitacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `habitaciones` (`idHabitacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `habitaciones` (`idHabitacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
