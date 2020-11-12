-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: br4tgujrft3rpbq7xsaw-mysql.services.clever-cloud.com:3306
-- Generation Time: Nov 12, 2020 at 11:03 PM
-- Server version: 8.0.15-5
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `br4tgujrft3rpbq7xsaw`
--

-- --------------------------------------------------------

--
-- Table structure for table `Ingredientes`
--

CREATE TABLE `Ingredientes` (
  `id_ingredientes` int(100) NOT NULL,
  `Valor_ingrediente` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Receta`
--

CREATE TABLE `Receta` (
  `id_Receta` int(180) UNSIGNED NOT NULL,
  `Nombre_Receta` text,
  `Ingredientes` text,
  `Pasos` text,
  `Imagen` longblob,
  `Valor_Nutricional` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Receta`
--

INSERT INTO `Receta` (`id_Receta`, `Nombre_Receta`, `Ingredientes`, `Pasos`, `Imagen`, `Valor_Nutricional`) VALUES
(1, 'Tomate Relleno', 'TOmate, Atun, Champiñones, Calabacin, Oregano, Queso light', 'Para hacer nuestro tomate relleno lo primero que tenemos que hacer es cortar la cabeza del tomate y dejarlo hueco con la ayuda de un cuchillo. \r\n                    \r\nEl jugo del tomate lo guardaremos para mezclarlo más tarde con el relleno.Para hacer el relleno tenemos que mezclar el atún con los champiñones, el jugo de tomate y sazonar con el orégano u otra especie que prefieras. Una vez tengamos todo \r\nmezclado colocamos todo el relleno con la ayuda de una cuchara dentro del tomate y cubrimos con una loncha de queso light. Metemos el tomate en el horno y dejamos hornear durante unos 15 minutos a baja temperatura. Ya tendrás tu receta perfecta para el almuerzo \r\no la cena deliciosa y baja en calorías.', NULL, 'Valor Nutricional'),
(2, 'Rollitos de verduras integrales', '1 pimiento verde, 1 pimiento rojo 1/4 de cebolla, 1 calabacin, queso light, Tortillas integrales', 'Lo primero será cortar 1 pimiento verde y 1 pimiento rojo en tiras y ponerlos en la sartén con poco aceite (a modo wok).\r\nAñadiremos, mientras estas verduras se hacen, 1/4 de cebolla picada y 1 calabacín cortado a tiras.\r\nAñadiremos, mientras estas verduras se hacen, 1/4 de cebolla picada y 1 calabacín cortado a tiras.\r\nMientras tanto metemos un par de tortitas integrales para fajitas \r\n(en Mercadona las podemos encontrar de la marca Hacendado) en el microondas durante 10 sg.\r\nAñadimos todo el wok de verduras dentro de la fajita y \r\nenrollamos bien para servir.', NULL, 'Valor Nutricional'),
(3, 'Espaguetis de calabacín', 'Calabacin, Tomates Cherry, Atun (o tiras de pollo) Especias italianas, Queso light', 'Comenzamos nuestra receta de espaguetis de calabacín cortando la verdura el tiras finas y largas, dejando así un aspecto similar al de los espaguetis. Luego preparamos los ingredientes que vamos a añadir como condimento y los cocinamos a la plancha en una sartén. Cuando ya estén hechos, añadimos las tiras de calabacín a la sartén, sazonamos con las especias italianas que más nos gusten y removemos hasta que todo quede bien mezclado', NULL, 'Valor Nutricional'),
(4, 'Ensalada mediterranea', 'Rabanos al gusto, 1 pepino, 1/2 Jitomates cherry rojo y amarillo, Mix de hojas verdes, Jugo de 1 limón', 'Picamos todo al gusto, ya sea grueso o delgado, se recomienda que no sea muy grueso para disfrutar mas el alimento y que se presentable\r\nMezcla los alimentos comenzando con las hojas verdes y los rábanos. \r\nAgrega, posteriormente, los rábanos y al final los jitomates \r\nPara finalizar, baña con jugo de limón.', NULL, 'Valor Nutricional'),
(5, 'Smoothie de mango', 'Mango mediano, 2 cucharadas de yogur natural descremado, 1 chorrito de nectar de mango, Hielo', 'Licúa el hielo con el mango, el yogur y el néctar. Sirve en un vaso y decora con fruta a tu gusto ', NULL, 'Valor Nutricional');

-- --------------------------------------------------------

--
-- Table structure for table `Rutina`
--

CREATE TABLE `Rutina` (
  `id_Usuario` int(100) UNSIGNED NOT NULL,
  `id_Rutina` int(150) UNSIGNED NOT NULL,
  `Tipo_rutina` varchar(66) DEFAULT NULL,
  `Zona_enfocada` varchar(100) DEFAULT NULL,
  `Peso` int(250) DEFAULT NULL,
  `Tiempo_Aprox` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Rutina`
--

INSERT INTO `Rutina` (`id_Usuario`, `id_Rutina`, `Tipo_rutina`, `Zona_enfocada`, `Peso`, `Tiempo_Aprox`) VALUES
(1, 104, 'Cardio', 'Pierna', 70, 20);

-- --------------------------------------------------------

--
-- Table structure for table `Usuario`
--

CREATE TABLE `Usuario` (
  `id_Usuario` int(100) UNSIGNED NOT NULL,
  `Nombre` varchar(66) NOT NULL,
  `Apellido` varchar(66) DEFAULT NULL,
  `Edad` int(100) DEFAULT NULL,
  `Peso` int(250) DEFAULT NULL,
  `Correo_electronico` varchar(500) DEFAULT NULL,
  `Contraseña` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Usuario`
--

INSERT INTO `Usuario` (`id_Usuario`, `Nombre`, `Apellido`, `Edad`, `Peso`, `Correo_electronico`, `Contraseña`) VALUES
(1, 'Jose Arturo', 'Rodriguez', 15, 70, 'rdrog@gmail.com', 'vipop'),
(2, 'Juan Camilo', 'Correa', 15, 80, 'cvium@gmail.com', 'vivo'),
(3, 'Isabel', 'Escobar', 20, 55, 'isabela@gamil.com', '147258369');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Ingredientes`
--
ALTER TABLE `Ingredientes`
  ADD PRIMARY KEY (`id_ingredientes`);

--
-- Indexes for table `Receta`
--
ALTER TABLE `Receta`
  ADD PRIMARY KEY (`id_Receta`);

--
-- Indexes for table `Rutina`
--
ALTER TABLE `Rutina`
  ADD PRIMARY KEY (`id_Rutina`);

--
-- Indexes for table `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id_Usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Ingredientes`
--
ALTER TABLE `Ingredientes`
  MODIFY `id_ingredientes` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Receta`
--
ALTER TABLE `Receta`
  MODIFY `id_Receta` int(180) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Rutina`
--
ALTER TABLE `Rutina`
  MODIFY `id_Rutina` int(150) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `id_Usuario` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
