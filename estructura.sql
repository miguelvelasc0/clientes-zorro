-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2025 a las 00:09:59
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `dbf_sync`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudios`
--

CREATE TABLE `estudios` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `clave` bigint(20) DEFAULT NULL,
  `tip` varchar(3) DEFAULT NULL,
  `estudio` varchar(46) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `importe` decimal(8,2) DEFAULT NULL,
  `iva` decimal(8,2) DEFAULT NULL,
  `lista2` decimal(8,2) DEFAULT NULL,
  `lista3` decimal(8,2) DEFAULT NULL,
  `lista4` decimal(8,2) DEFAULT NULL,
  `lista5` decimal(8,2) DEFAULT NULL,
  `lista6` decimal(8,2) DEFAULT NULL,
  `muestra` varchar(40) DEFAULT NULL,
  `condicion` varchar(35) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `tiempo` bigint(20) DEFAULT NULL,
  `clase` bigint(20) DEFAULT NULL,
  `nombre` varchar(32) DEFAULT NULL,
  `nombre1` varchar(32) DEFAULT NULL,
  `unidades` varchar(10) DEFAULT NULL,
  `ref1` varchar(32) DEFAULT NULL,
  `ref2` varchar(32) DEFAULT NULL,
  `ref3` varchar(32) DEFAULT NULL,
  `tipo` varchar(1) DEFAULT NULL,
  `reporte` varchar(8) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `borrar` varchar(1) DEFAULT NULL,
  `perfil` tinyint(1) DEFAULT NULL,
  `obs` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f00081025`
--

CREATE TABLE `f00081025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `amiba` varchar(15) DEFAULT NULL,
  `leucocitos` varchar(25) DEFAULT NULL,
  `bacteria` varchar(25) DEFAULT NULL,
  `celulasepi` varchar(25) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f01681025`
--

CREATE TABLE `f01681025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `biltot` decimal(6,2) DEFAULT NULL,
  `bildir` decimal(6,2) DEFAULT NULL,
  `bilind` decimal(6,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f01681125`
--

CREATE TABLE `f01681125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `biltot` decimal(6,2) DEFAULT NULL,
  `bildir` decimal(6,2) DEFAULT NULL,
  `bilind` decimal(6,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f01691025`
--

CREATE TABLE `f01691025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `erit` varchar(10) DEFAULT NULL,
  `hemo` varchar(15) DEFAULT NULL,
  `vglo` varchar(4) DEFAULT NULL,
  `hema` varchar(4) DEFAULT NULL,
  `vcor` varchar(4) DEFAULT NULL,
  `hemo2` varchar(4) DEFAULT NULL,
  `conc` varchar(4) DEFAULT NULL,
  `reti` varchar(4) DEFAULT NULL,
  `leuc` varchar(6) DEFAULT NULL,
  `linfp` varchar(4) DEFAULT NULL,
  `linfv` varchar(6) DEFAULT NULL,
  `monop` varchar(4) DEFAULT NULL,
  `monov` varchar(6) DEFAULT NULL,
  `neutp` varchar(4) DEFAULT NULL,
  `neutv` varchar(6) DEFAULT NULL,
  `eosip` varchar(4) DEFAULT NULL,
  `eosiv` varchar(6) DEFAULT NULL,
  `basop` varchar(4) DEFAULT NULL,
  `basov` varchar(6) DEFAULT NULL,
  `miel` varchar(4) DEFAULT NULL,
  `meta` varchar(4) DEFAULT NULL,
  `eban` varchar(4) DEFAULT NULL,
  `segm` varchar(4) DEFAULT NULL,
  `ari` varchar(4) DEFAULT NULL,
  `arii` varchar(4) DEFAULT NULL,
  `ariii` varchar(4) DEFAULT NULL,
  `ariv` varchar(4) DEFAULT NULL,
  `arv` varchar(4) DEFAULT NULL,
  `linfa` varchar(4) DEFAULT NULL,
  `cplas` varchar(4) DEFAULT NULL,
  `monor` varchar(4) DEFAULT NULL,
  `pcamp` varchar(20) DEFAULT NULL,
  `pcuan` varchar(8) DEFAULT NULL,
  `vsg` varchar(4) DEFAULT NULL,
  `ccorr` varchar(4) DEFAULT NULL,
  `amo1` varchar(60) DEFAULT NULL,
  `amo2` varchar(60) DEFAULT NULL,
  `amo3` varchar(60) DEFAULT NULL,
  `amo4` varchar(60) DEFAULT NULL,
  `amo5` varchar(60) DEFAULT NULL,
  `amo6` varchar(60) DEFAULT NULL,
  `int1` varchar(60) DEFAULT NULL,
  `int2` varchar(60) DEFAULT NULL,
  `int3` varchar(60) DEFAULT NULL,
  `int4` varchar(60) DEFAULT NULL,
  `int5` varchar(60) DEFAULT NULL,
  `int6` varchar(60) DEFAULT NULL,
  `int7` varchar(60) DEFAULT NULL,
  `int8` varchar(60) DEFAULT NULL,
  `int9` varchar(60) DEFAULT NULL,
  `int10` varchar(60) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f01691125`
--

CREATE TABLE `f01691125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `erit` varchar(10) DEFAULT NULL,
  `hemo` varchar(15) DEFAULT NULL,
  `vglo` varchar(4) DEFAULT NULL,
  `hema` varchar(4) DEFAULT NULL,
  `vcor` varchar(4) DEFAULT NULL,
  `hemo2` varchar(4) DEFAULT NULL,
  `conc` varchar(4) DEFAULT NULL,
  `reti` varchar(4) DEFAULT NULL,
  `leuc` varchar(6) DEFAULT NULL,
  `linfp` varchar(4) DEFAULT NULL,
  `linfv` varchar(6) DEFAULT NULL,
  `monop` varchar(4) DEFAULT NULL,
  `monov` varchar(6) DEFAULT NULL,
  `neutp` varchar(4) DEFAULT NULL,
  `neutv` varchar(6) DEFAULT NULL,
  `eosip` varchar(4) DEFAULT NULL,
  `eosiv` varchar(6) DEFAULT NULL,
  `basop` varchar(4) DEFAULT NULL,
  `basov` varchar(6) DEFAULT NULL,
  `miel` varchar(4) DEFAULT NULL,
  `meta` varchar(4) DEFAULT NULL,
  `eban` varchar(4) DEFAULT NULL,
  `segm` varchar(4) DEFAULT NULL,
  `ari` varchar(4) DEFAULT NULL,
  `arii` varchar(4) DEFAULT NULL,
  `ariii` varchar(4) DEFAULT NULL,
  `ariv` varchar(4) DEFAULT NULL,
  `arv` varchar(4) DEFAULT NULL,
  `linfa` varchar(4) DEFAULT NULL,
  `cplas` varchar(4) DEFAULT NULL,
  `monor` varchar(4) DEFAULT NULL,
  `pcamp` varchar(20) DEFAULT NULL,
  `pcuan` varchar(8) DEFAULT NULL,
  `vsg` varchar(4) DEFAULT NULL,
  `ccorr` varchar(4) DEFAULT NULL,
  `amo1` varchar(60) DEFAULT NULL,
  `amo2` varchar(60) DEFAULT NULL,
  `amo3` varchar(60) DEFAULT NULL,
  `amo4` varchar(60) DEFAULT NULL,
  `amo5` varchar(60) DEFAULT NULL,
  `amo6` varchar(60) DEFAULT NULL,
  `int1` varchar(60) DEFAULT NULL,
  `int2` varchar(60) DEFAULT NULL,
  `int3` varchar(60) DEFAULT NULL,
  `int4` varchar(60) DEFAULT NULL,
  `int5` varchar(60) DEFAULT NULL,
  `int6` varchar(60) DEFAULT NULL,
  `int7` varchar(60) DEFAULT NULL,
  `int8` varchar(60) DEFAULT NULL,
  `int9` varchar(60) DEFAULT NULL,
  `int10` varchar(60) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02141025`
--

CREATE TABLE `f02141025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `polimorfo` decimal(6,1) DEFAULT NULL,
  `mononuclea` decimal(6,1) DEFAULT NULL,
  `leucocitos` varchar(25) DEFAULT NULL,
  `bacterias` varchar(25) DEFAULT NULL,
  `celulasepi` varchar(25) DEFAULT NULL,
  `tinciongra` varchar(40) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02171025`
--

CREATE TABLE `f02171025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `fdleu` varchar(30) DEFAULT NULL,
  `fdbac` varchar(30) DEFAULT NULL,
  `fdcel` varchar(30) DEFAULT NULL,
  `fdlin` varchar(4) DEFAULT NULL,
  `fdmon` varchar(4) DEFAULT NULL,
  `fdneu` varchar(4) DEFAULT NULL,
  `fdeos` varchar(4) DEFAULT NULL,
  `fdbas` varchar(4) DEFAULT NULL,
  `fdtin1` varchar(30) DEFAULT NULL,
  `fdtin2` varchar(30) DEFAULT NULL,
  `fdtin3` varchar(30) DEFAULT NULL,
  `fdtin4` varchar(30) DEFAULT NULL,
  `fileu` varchar(30) DEFAULT NULL,
  `fibac` varchar(30) DEFAULT NULL,
  `ficel` varchar(30) DEFAULT NULL,
  `filin` varchar(4) DEFAULT NULL,
  `fimon` varchar(4) DEFAULT NULL,
  `fineu` varchar(4) DEFAULT NULL,
  `fieos` varchar(4) DEFAULT NULL,
  `fibas` varchar(4) DEFAULT NULL,
  `fitin1` varchar(30) DEFAULT NULL,
  `fitin2` varchar(30) DEFAULT NULL,
  `fitin3` varchar(30) DEFAULT NULL,
  `fitin4` varchar(30) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02171125`
--

CREATE TABLE `f02171125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `fdleu` varchar(30) DEFAULT NULL,
  `fdbac` varchar(30) DEFAULT NULL,
  `fdcel` varchar(30) DEFAULT NULL,
  `fdlin` varchar(4) DEFAULT NULL,
  `fdmon` varchar(4) DEFAULT NULL,
  `fdneu` varchar(4) DEFAULT NULL,
  `fdeos` varchar(4) DEFAULT NULL,
  `fdbas` varchar(4) DEFAULT NULL,
  `fdtin1` varchar(30) DEFAULT NULL,
  `fdtin2` varchar(30) DEFAULT NULL,
  `fdtin3` varchar(30) DEFAULT NULL,
  `fdtin4` varchar(30) DEFAULT NULL,
  `fileu` varchar(30) DEFAULT NULL,
  `fibac` varchar(30) DEFAULT NULL,
  `ficel` varchar(30) DEFAULT NULL,
  `filin` varchar(4) DEFAULT NULL,
  `fimon` varchar(4) DEFAULT NULL,
  `fineu` varchar(4) DEFAULT NULL,
  `fieos` varchar(4) DEFAULT NULL,
  `fibas` varchar(4) DEFAULT NULL,
  `fitin1` varchar(30) DEFAULT NULL,
  `fitin2` varchar(30) DEFAULT NULL,
  `fitin3` varchar(30) DEFAULT NULL,
  `fitin4` varchar(30) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02431025`
--

CREATE TABLE `f02431025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `co1` varchar(4) DEFAULT NULL,
  `co2` varchar(12) DEFAULT NULL,
  `co3` varchar(12) DEFAULT NULL,
  `co4` varchar(12) DEFAULT NULL,
  `co5` varchar(12) DEFAULT NULL,
  `co6` varchar(12) DEFAULT NULL,
  `co7` varchar(12) DEFAULT NULL,
  `co8` varchar(12) DEFAULT NULL,
  `em1` varchar(8) DEFAULT NULL,
  `em2` varchar(8) DEFAULT NULL,
  `em3` varchar(8) DEFAULT NULL,
  `em4` varchar(8) DEFAULT NULL,
  `em5` varchar(8) DEFAULT NULL,
  `em6` varchar(8) DEFAULT NULL,
  `em7` varchar(8) DEFAULT NULL,
  `em8` varchar(8) DEFAULT NULL,
  `em9` varchar(8) DEFAULT NULL,
  `exm1` varchar(40) DEFAULT NULL,
  `exm2` varchar(40) DEFAULT NULL,
  `exm3` varchar(40) DEFAULT NULL,
  `exm4` varchar(40) DEFAULT NULL,
  `mi1` varchar(40) DEFAULT NULL,
  `mi2` varchar(40) DEFAULT NULL,
  `mi3` varchar(40) DEFAULT NULL,
  `mi4` varchar(40) DEFAULT NULL,
  `mi5` varchar(40) DEFAULT NULL,
  `mi6` varchar(40) DEFAULT NULL,
  `mi7` varchar(40) DEFAULT NULL,
  `ei1` varchar(40) DEFAULT NULL,
  `ei2` varchar(40) DEFAULT NULL,
  `ei3` varchar(40) DEFAULT NULL,
  `ei4` varchar(40) DEFAULT NULL,
  `ei5` varchar(40) DEFAULT NULL,
  `ei6` varchar(40) DEFAULT NULL,
  `eq1` varchar(4) DEFAULT NULL,
  `so1` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02431125`
--

CREATE TABLE `f02431125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `co1` varchar(4) DEFAULT NULL,
  `co2` varchar(12) DEFAULT NULL,
  `co3` varchar(12) DEFAULT NULL,
  `co4` varchar(12) DEFAULT NULL,
  `co5` varchar(12) DEFAULT NULL,
  `co6` varchar(12) DEFAULT NULL,
  `co7` varchar(12) DEFAULT NULL,
  `co8` varchar(12) DEFAULT NULL,
  `em1` varchar(8) DEFAULT NULL,
  `em2` varchar(8) DEFAULT NULL,
  `em3` varchar(8) DEFAULT NULL,
  `em4` varchar(8) DEFAULT NULL,
  `em5` varchar(8) DEFAULT NULL,
  `em6` varchar(8) DEFAULT NULL,
  `em7` varchar(8) DEFAULT NULL,
  `em8` varchar(8) DEFAULT NULL,
  `em9` varchar(8) DEFAULT NULL,
  `exm1` varchar(40) DEFAULT NULL,
  `exm2` varchar(40) DEFAULT NULL,
  `exm3` varchar(40) DEFAULT NULL,
  `exm4` varchar(40) DEFAULT NULL,
  `mi1` varchar(40) DEFAULT NULL,
  `mi2` varchar(40) DEFAULT NULL,
  `mi3` varchar(40) DEFAULT NULL,
  `mi4` varchar(40) DEFAULT NULL,
  `mi5` varchar(40) DEFAULT NULL,
  `mi6` varchar(40) DEFAULT NULL,
  `mi7` varchar(40) DEFAULT NULL,
  `ei1` varchar(40) DEFAULT NULL,
  `ei2` varchar(40) DEFAULT NULL,
  `ei3` varchar(40) DEFAULT NULL,
  `ei4` varchar(40) DEFAULT NULL,
  `ei5` varchar(40) DEFAULT NULL,
  `ei6` varchar(40) DEFAULT NULL,
  `eq1` varchar(4) DEFAULT NULL,
  `so1` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02451025`
--

CREATE TABLE `f02451025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `cs0` varchar(1) DEFAULT NULL,
  `cs1` varchar(56) DEFAULT NULL,
  `cs2` varchar(56) DEFAULT NULL,
  `cs3` varchar(56) DEFAULT NULL,
  `cs4` varchar(60) DEFAULT NULL,
  `cs5` varchar(60) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02451125`
--

CREATE TABLE `f02451125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `cs0` varchar(1) DEFAULT NULL,
  `cs1` varchar(56) DEFAULT NULL,
  `cs2` varchar(56) DEFAULT NULL,
  `cs3` varchar(56) DEFAULT NULL,
  `cs4` varchar(60) DEFAULT NULL,
  `cs5` varchar(60) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02561025`
--

CREATE TABLE `f02561025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `resultado` varchar(9) DEFAULT NULL,
  `fur` varchar(20) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02561125`
--

CREATE TABLE `f02561125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `resultado` varchar(9) DEFAULT NULL,
  `fur` varchar(20) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02811025`
--

CREATE TABLE `f02811025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `peso` decimal(6,1) DEFAULT NULL,
  `talla` decimal(6,1) DEFAULT NULL,
  `volrec` bigint(20) DEFAULT NULL,
  `volmin` decimal(6,1) DEFAULT NULL,
  `creatinina` decimal(6,1) DEFAULT NULL,
  `creauri` decimal(6,1) DEFAULT NULL,
  `supcor` decimal(6,1) DEFAULT NULL,
  `idg` decimal(6,1) DEFAULT NULL,
  `cifracor` decimal(6,1) DEFAULT NULL,
  `funcion` decimal(6,1) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02811125`
--

CREATE TABLE `f02811125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `peso` decimal(6,1) DEFAULT NULL,
  `talla` decimal(6,1) DEFAULT NULL,
  `volrec` bigint(20) DEFAULT NULL,
  `volmin` decimal(6,1) DEFAULT NULL,
  `creatinina` decimal(6,1) DEFAULT NULL,
  `creauri` decimal(6,1) DEFAULT NULL,
  `supcor` decimal(6,1) DEFAULT NULL,
  `idg` decimal(6,1) DEFAULT NULL,
  `cifracor` decimal(6,1) DEFAULT NULL,
  `funcion` decimal(6,1) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02881025`
--

CREATE TABLE `f02881025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `tipo` varchar(6) DEFAULT NULL,
  `cardiologo` varchar(40) DEFAULT NULL,
  `ritmo` varchar(15) DEFAULT NULL,
  `fvm` varchar(15) DEFAULT NULL,
  `p1` varchar(10) DEFAULT NULL,
  `pr` varchar(16) DEFAULT NULL,
  `qrs` varchar(10) DEFAULT NULL,
  `aqr` varchar(15) DEFAULT NULL,
  `qt` varchar(10) DEFAULT NULL,
  `qtc` varchar(10) DEFAULT NULL,
  `observa` text DEFAULT NULL,
  `conclusion` text DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02881125`
--

CREATE TABLE `f02881125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `tipo` varchar(6) DEFAULT NULL,
  `cardiologo` varchar(40) DEFAULT NULL,
  `ritmo` varchar(15) DEFAULT NULL,
  `fvm` varchar(15) DEFAULT NULL,
  `p1` varchar(10) DEFAULT NULL,
  `pr` varchar(16) DEFAULT NULL,
  `qrs` varchar(10) DEFAULT NULL,
  `aqr` varchar(15) DEFAULT NULL,
  `qt` varchar(10) DEFAULT NULL,
  `qtc` varchar(10) DEFAULT NULL,
  `observa` text DEFAULT NULL,
  `conclusion` text DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02941025`
--

CREATE TABLE `f02941025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `sodio` decimal(7,2) DEFAULT NULL,
  `potasio` decimal(7,2) DEFAULT NULL,
  `cloro` decimal(7,2) DEFAULT NULL,
  `volumen` decimal(7,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f02941125`
--

CREATE TABLE `f02941125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `sodio` decimal(7,2) DEFAULT NULL,
  `potasio` decimal(7,2) DEFAULT NULL,
  `cloro` decimal(7,2) DEFAULT NULL,
  `volumen` decimal(7,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f03001025`
--

CREATE TABLE `f03001025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `volu` varchar(10) DEFAULT NULL,
  `colox` varchar(20) DEFAULT NULL,
  `licu` varchar(11) DEFAULT NULL,
  `visc` varchar(8) DEFAULT NULL,
  `aspe` varchar(15) DEFAULT NULL,
  `ph` varchar(4) DEFAULT NULL,
  `num1` varchar(11) DEFAULT NULL,
  `num2` varchar(11) DEFAULT NULL,
  `fase` varchar(4) DEFAULT NULL,
  `fain` varchar(4) DEFAULT NULL,
  `faca` varchar(4) DEFAULT NULL,
  `fasi` varchar(4) DEFAULT NULL,
  `tota` varchar(4) DEFAULT NULL,
  `tip1` varchar(4) DEFAULT NULL,
  `tip2` varchar(4) DEFAULT NULL,
  `tip3` varchar(4) DEFAULT NULL,
  `leuc` varchar(18) DEFAULT NULL,
  `hema` varchar(18) DEFAULT NULL,
  `cepi` varchar(18) DEFAULT NULL,
  `obs1` varchar(50) DEFAULT NULL,
  `obs2` varchar(50) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f03001125`
--

CREATE TABLE `f03001125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `volu` varchar(10) DEFAULT NULL,
  `colox` varchar(20) DEFAULT NULL,
  `licu` varchar(11) DEFAULT NULL,
  `visc` varchar(8) DEFAULT NULL,
  `aspe` varchar(15) DEFAULT NULL,
  `ph` varchar(4) DEFAULT NULL,
  `num1` varchar(11) DEFAULT NULL,
  `num2` varchar(11) DEFAULT NULL,
  `fase` varchar(4) DEFAULT NULL,
  `fain` varchar(4) DEFAULT NULL,
  `faca` varchar(4) DEFAULT NULL,
  `fasi` varchar(4) DEFAULT NULL,
  `tota` varchar(4) DEFAULT NULL,
  `tip1` varchar(4) DEFAULT NULL,
  `tip2` varchar(4) DEFAULT NULL,
  `tip3` varchar(4) DEFAULT NULL,
  `leuc` varchar(18) DEFAULT NULL,
  `hema` varchar(18) DEFAULT NULL,
  `cepi` varchar(18) DEFAULT NULL,
  `obs1` varchar(50) DEFAULT NULL,
  `obs2` varchar(50) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f03351025`
--

CREATE TABLE `f03351025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `ayunas` decimal(7,2) DEFAULT NULL,
  `min30` decimal(7,2) DEFAULT NULL,
  `min60` decimal(7,2) DEFAULT NULL,
  `min120` decimal(7,2) DEFAULT NULL,
  `min180` decimal(7,2) DEFAULT NULL,
  `obs1` varchar(50) DEFAULT NULL,
  `obs2` varchar(50) DEFAULT NULL,
  `obs3` varchar(50) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f03371025`
--

CREATE TABLE `f03371025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `grup` varchar(2) DEFAULT NULL,
  `fact` varchar(8) DEFAULT NULL,
  `fact2` varchar(47) DEFAULT NULL,
  `observ` varchar(30) DEFAULT NULL,
  `reac` varchar(8) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f03371125`
--

CREATE TABLE `f03371125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `grup` varchar(2) DEFAULT NULL,
  `fact` varchar(8) DEFAULT NULL,
  `fact2` varchar(47) DEFAULT NULL,
  `observ` varchar(30) DEFAULT NULL,
  `reac` varchar(8) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f03831025`
--

CREATE TABLE `f03831025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `aspecto` varchar(20) DEFAULT NULL,
  `densidad` varchar(20) DEFAULT NULL,
  `colox` varchar(20) DEFAULT NULL,
  `leucocitos` varchar(20) DEFAULT NULL,
  `eritrocito` varchar(20) DEFAULT NULL,
  `bacterias` varchar(20) DEFAULT NULL,
  `cilindros` varchar(60) DEFAULT NULL,
  `cilindro2` varchar(60) DEFAULT NULL,
  `epiteliale` varchar(60) DEFAULT NULL,
  `cristales` varchar(60) DEFAULT NULL,
  `cristales2` varchar(60) DEFAULT NULL,
  `otros1` varchar(60) DEFAULT NULL,
  `otros2` varchar(60) DEFAULT NULL,
  `otros3` varchar(60) DEFAULT NULL,
  `albumina` varchar(10) DEFAULT NULL,
  `glucosa` varchar(10) DEFAULT NULL,
  `hemoglobin` varchar(10) DEFAULT NULL,
  `acetona` varchar(10) DEFAULT NULL,
  `bilirrubin` varchar(10) DEFAULT NULL,
  `nitritos` varchar(10) DEFAULT NULL,
  `urobilinog` varchar(10) DEFAULT NULL,
  `reph` varchar(10) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f03831125`
--

CREATE TABLE `f03831125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `aspecto` varchar(20) DEFAULT NULL,
  `densidad` varchar(20) DEFAULT NULL,
  `colox` varchar(20) DEFAULT NULL,
  `leucocitos` varchar(20) DEFAULT NULL,
  `eritrocito` varchar(20) DEFAULT NULL,
  `bacterias` varchar(20) DEFAULT NULL,
  `cilindros` varchar(60) DEFAULT NULL,
  `cilindro2` varchar(60) DEFAULT NULL,
  `epiteliale` varchar(60) DEFAULT NULL,
  `cristales` varchar(60) DEFAULT NULL,
  `cristales2` varchar(60) DEFAULT NULL,
  `otros1` varchar(60) DEFAULT NULL,
  `otros2` varchar(60) DEFAULT NULL,
  `otros3` varchar(60) DEFAULT NULL,
  `albumina` varchar(10) DEFAULT NULL,
  `glucosa` varchar(10) DEFAULT NULL,
  `hemoglobin` varchar(10) DEFAULT NULL,
  `acetona` varchar(10) DEFAULT NULL,
  `bilirrubin` varchar(10) DEFAULT NULL,
  `nitritos` varchar(10) DEFAULT NULL,
  `urobilinog` varchar(10) DEFAULT NULL,
  `reph` varchar(10) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f03951025`
--

CREATE TABLE `f03951025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `t3capta` decimal(7,2) DEFAULT NULL,
  `t3total` decimal(7,2) DEFAULT NULL,
  `t4total` decimal(7,2) DEFAULT NULL,
  `yodopro` decimal(6,3) DEFAULT NULL,
  `indicetiro` decimal(6,2) DEFAULT NULL,
  `tsh` decimal(10,3) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f03951125`
--

CREATE TABLE `f03951125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `t3capta` decimal(7,2) DEFAULT NULL,
  `t3total` decimal(7,2) DEFAULT NULL,
  `t4total` decimal(7,2) DEFAULT NULL,
  `yodopro` decimal(6,3) DEFAULT NULL,
  `indicetiro` decimal(6,2) DEFAULT NULL,
  `tsh` decimal(10,3) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04031025`
--

CREATE TABLE `f04031025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `tgo` decimal(7,1) DEFAULT NULL,
  `dhl` decimal(7,1) DEFAULT NULL,
  `cpk` decimal(7,1) DEFAULT NULL,
  `cpk_mb` decimal(7,1) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04301025`
--

CREATE TABLE `f04301025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `cocaina` varchar(10) DEFAULT NULL,
  `anfetamina` varchar(10) DEFAULT NULL,
  `canabinoid` varchar(10) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04301125`
--

CREATE TABLE `f04301125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `cocaina` varchar(10) DEFAULT NULL,
  `anfetamina` varchar(10) DEFAULT NULL,
  `canabinoid` varchar(10) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04371025`
--

CREATE TABLE `f04371025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `sangrado` varchar(16) DEFAULT NULL,
  `coagulacio` varchar(34) DEFAULT NULL,
  `protrombin` varchar(34) DEFAULT NULL,
  `tromboplas` varchar(31) DEFAULT NULL,
  `plaquetas` varchar(20) DEFAULT NULL,
  `inr` varchar(10) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04371125`
--

CREATE TABLE `f04371125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `sangrado` varchar(16) DEFAULT NULL,
  `coagulacio` varchar(34) DEFAULT NULL,
  `protrombin` varchar(34) DEFAULT NULL,
  `tromboplas` varchar(31) DEFAULT NULL,
  `plaquetas` varchar(20) DEFAULT NULL,
  `inr` varchar(10) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04551025`
--

CREATE TABLE `f04551025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `lipi` varchar(6) DEFAULT NULL,
  `cole` varchar(5) DEFAULT NULL,
  `trig` varchar(5) DEFAULT NULL,
  `alfa` varchar(5) DEFAULT NULL,
  `prebeta` varchar(5) DEFAULT NULL,
  `beta` varchar(5) DEFAULT NULL,
  `quil` varchar(5) DEFAULT NULL,
  `aspe` varchar(11) DEFAULT NULL,
  `fosf` varchar(5) DEFAULT NULL,
  `colalta` varchar(5) DEFAULT NULL,
  `colbaja` varchar(5) DEFAULT NULL,
  `colmuybaja` varchar(5) DEFAULT NULL,
  `indi` varchar(5) DEFAULT NULL,
  `obs1` varchar(50) DEFAULT NULL,
  `obs2` varchar(50) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04551125`
--

CREATE TABLE `f04551125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `lipi` varchar(6) DEFAULT NULL,
  `cole` varchar(5) DEFAULT NULL,
  `trig` varchar(5) DEFAULT NULL,
  `alfa` varchar(5) DEFAULT NULL,
  `prebeta` varchar(5) DEFAULT NULL,
  `beta` varchar(5) DEFAULT NULL,
  `quil` varchar(5) DEFAULT NULL,
  `aspe` varchar(11) DEFAULT NULL,
  `fosf` varchar(5) DEFAULT NULL,
  `colalta` varchar(5) DEFAULT NULL,
  `colbaja` varchar(5) DEFAULT NULL,
  `colmuybaja` varchar(5) DEFAULT NULL,
  `indi` varchar(5) DEFAULT NULL,
  `obs1` varchar(50) DEFAULT NULL,
  `obs2` varchar(50) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04651025`
--

CREATE TABLE `f04651025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `antigeno` decimal(6,1) DEFAULT NULL,
  `fosfatasa` decimal(6,1) DEFAULT NULL,
  `fraccion` decimal(6,1) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04741025`
--

CREATE TABLE `f04741025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `t3capta` decimal(7,2) DEFAULT NULL,
  `t3total` decimal(7,2) DEFAULT NULL,
  `t4total` decimal(7,2) DEFAULT NULL,
  `yodopro` decimal(7,2) DEFAULT NULL,
  `indicetiro` decimal(7,2) DEFAULT NULL,
  `tsh` decimal(7,2) DEFAULT NULL,
  `hormonafsh` decimal(7,2) DEFAULT NULL,
  `hormonalh` decimal(7,2) DEFAULT NULL,
  `prolactina` decimal(7,2) DEFAULT NULL,
  `progestero` decimal(7,3) DEFAULT NULL,
  `estradiol` decimal(7,2) DEFAULT NULL,
  `cortisol` decimal(7,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04741125`
--

CREATE TABLE `f04741125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `t3capta` decimal(7,2) DEFAULT NULL,
  `t3total` decimal(7,2) DEFAULT NULL,
  `t4total` decimal(7,2) DEFAULT NULL,
  `yodopro` decimal(7,2) DEFAULT NULL,
  `indicetiro` decimal(7,2) DEFAULT NULL,
  `tsh` decimal(7,2) DEFAULT NULL,
  `hormonafsh` decimal(7,2) DEFAULT NULL,
  `hormonalh` decimal(7,2) DEFAULT NULL,
  `prolactina` decimal(7,2) DEFAULT NULL,
  `progestero` decimal(7,3) DEFAULT NULL,
  `estradiol` decimal(7,2) DEFAULT NULL,
  `cortisol` decimal(7,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04761025`
--

CREATE TABLE `f04761025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `hormonafsh` decimal(6,1) DEFAULT NULL,
  `hormonalh` decimal(6,1) DEFAULT NULL,
  `prolactina` decimal(6,1) DEFAULT NULL,
  `progestero` decimal(6,2) DEFAULT NULL,
  `estradiol` decimal(6,1) DEFAULT NULL,
  `testostero` decimal(6,4) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04761125`
--

CREATE TABLE `f04761125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `hormonafsh` decimal(6,1) DEFAULT NULL,
  `hormonalh` decimal(6,1) DEFAULT NULL,
  `prolactina` decimal(6,1) DEFAULT NULL,
  `progestero` decimal(6,2) DEFAULT NULL,
  `estradiol` decimal(6,1) DEFAULT NULL,
  `testostero` decimal(6,4) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04791025`
--

CREATE TABLE `f04791025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `biltotal` decimal(6,1) DEFAULT NULL,
  `bildirecta` decimal(6,1) DEFAULT NULL,
  `bilindirec` decimal(6,1) DEFAULT NULL,
  `prototales` decimal(6,1) DEFAULT NULL,
  `albumina` decimal(6,1) DEFAULT NULL,
  `globulinas` decimal(6,1) DEFAULT NULL,
  `relacionag` decimal(6,1) DEFAULT NULL,
  `fosalcalin` decimal(6,1) DEFAULT NULL,
  `transpiruv` decimal(6,1) DEFAULT NULL,
  `transoxala` decimal(6,1) DEFAULT NULL,
  `tiempo` varchar(20) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04791125`
--

CREATE TABLE `f04791125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `biltotal` decimal(6,1) DEFAULT NULL,
  `bildirecta` decimal(6,1) DEFAULT NULL,
  `bilindirec` decimal(6,1) DEFAULT NULL,
  `prototales` decimal(6,1) DEFAULT NULL,
  `albumina` decimal(6,1) DEFAULT NULL,
  `globulinas` decimal(6,1) DEFAULT NULL,
  `relacionag` decimal(6,1) DEFAULT NULL,
  `fosalcalin` decimal(6,1) DEFAULT NULL,
  `transpiruv` decimal(6,1) DEFAULT NULL,
  `transoxala` decimal(6,1) DEFAULT NULL,
  `tiempo` varchar(20) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04801125`
--

CREATE TABLE `f04801125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `t3capta` decimal(6,1) DEFAULT NULL,
  `t3total` decimal(6,1) DEFAULT NULL,
  `t4total` decimal(6,1) DEFAULT NULL,
  `yodopro` decimal(6,1) DEFAULT NULL,
  `indicetiro` decimal(6,1) DEFAULT NULL,
  `tsh` decimal(6,1) DEFAULT NULL,
  `hormonafsh` decimal(6,1) DEFAULT NULL,
  `hormonalh` decimal(6,1) DEFAULT NULL,
  `prolactina` decimal(6,1) DEFAULT NULL,
  `progestero` decimal(7,2) DEFAULT NULL,
  `estradiol` decimal(6,1) DEFAULT NULL,
  `cortisol` decimal(6,1) DEFAULT NULL,
  `crecimient` decimal(6,1) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04811025`
--

CREATE TABLE `f04811025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `captat3` decimal(7,2) DEFAULT NULL,
  `t3total` decimal(7,2) DEFAULT NULL,
  `t4total` decimal(7,2) DEFAULT NULL,
  `yodopro` decimal(7,2) DEFAULT NULL,
  `indicetl` decimal(7,2) DEFAULT NULL,
  `tsh` decimal(7,2) DEFAULT NULL,
  `fsh` decimal(7,2) DEFAULT NULL,
  `lh` decimal(7,2) DEFAULT NULL,
  `prolactina` decimal(7,2) DEFAULT NULL,
  `testostero` decimal(7,2) DEFAULT NULL,
  `cortisol` decimal(7,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04881025`
--

CREATE TABLE `f04881025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `antiestrep` decimal(6,1) DEFAULT NULL,
  `proteinac` varchar(20) DEFAULT NULL,
  `factor` varchar(20) DEFAULT NULL,
  `acidourico` decimal(7,2) DEFAULT NULL,
  `velocidad` decimal(7,1) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f04881125`
--

CREATE TABLE `f04881125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `antiestrep` decimal(6,1) DEFAULT NULL,
  `proteinac` varchar(20) DEFAULT NULL,
  `factor` varchar(20) DEFAULT NULL,
  `acidourico` decimal(7,2) DEFAULT NULL,
  `velocidad` decimal(7,1) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05021025`
--

CREATE TABLE `f05021025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `vdrl` varchar(20) DEFAULT NULL,
  `mazzini` varchar(20) DEFAULT NULL,
  `explora1` varchar(30) DEFAULT NULL,
  `explora2` varchar(30) DEFAULT NULL,
  `explora3` varchar(30) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05021125`
--

CREATE TABLE `f05021125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `vdrl` varchar(20) DEFAULT NULL,
  `mazzini` varchar(20) DEFAULT NULL,
  `explora1` varchar(30) DEFAULT NULL,
  `explora2` varchar(30) DEFAULT NULL,
  `explora3` varchar(30) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05121025`
--

CREATE TABLE `f05121025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `resultado` decimal(6,1) DEFAULT NULL,
  `volumen` bigint(20) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05121125`
--

CREATE TABLE `f05121125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `resultado` decimal(6,1) DEFAULT NULL,
  `volumen` bigint(20) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05161025`
--

CREATE TABLE `f05161025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `resultado` varchar(10) DEFAULT NULL,
  `sessibili` bigint(20) DEFAULT NULL,
  `fur` varchar(20) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05161125`
--

CREATE TABLE `f05161125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `resultado` varchar(10) DEFAULT NULL,
  `sessibili` bigint(20) DEFAULT NULL,
  `fur` varchar(20) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05181025`
--

CREATE TABLE `f05181025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `embt1` varchar(40) DEFAULT NULL,
  `embt2` varchar(40) DEFAULT NULL,
  `emb1` varchar(15) DEFAULT NULL,
  `emb2` varchar(4) DEFAULT NULL,
  `embobs` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05201025`
--

CREATE TABLE `f05201025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `glucosa` decimal(8,2) DEFAULT NULL,
  `urea` decimal(8,2) DEFAULT NULL,
  `creatinina` decimal(8,2) DEFAULT NULL,
  `acurico` decimal(8,2) DEFAULT NULL,
  `colesterol` decimal(8,2) DEFAULT NULL,
  `trigliceri` decimal(8,2) DEFAULT NULL,
  `calcio` decimal(8,2) DEFAULT NULL,
  `fosforo` decimal(8,2) DEFAULT NULL,
  `biltotal` decimal(8,2) DEFAULT NULL,
  `bildirecta` decimal(8,2) DEFAULT NULL,
  `bilindirec` decimal(8,2) DEFAULT NULL,
  `prototales` decimal(8,2) DEFAULT NULL,
  `albumina` decimal(8,2) DEFAULT NULL,
  `globulinas` decimal(8,2) DEFAULT NULL,
  `relacionag` decimal(8,2) DEFAULT NULL,
  `fosalcalin` decimal(8,2) DEFAULT NULL,
  `transpiruv` decimal(8,2) DEFAULT NULL,
  `transoxala` decimal(8,2) DEFAULT NULL,
  `deslactica` decimal(8,2) DEFAULT NULL,
  `amilasa` decimal(8,2) DEFAULT NULL,
  `gamaglutam` decimal(8,2) DEFAULT NULL,
  `hierro` decimal(8,2) DEFAULT NULL,
  `colalta` decimal(8,2) DEFAULT NULL,
  `colbaja` decimal(8,2) DEFAULT NULL,
  `indiceate` decimal(8,2) DEFAULT NULL,
  `bun` decimal(8,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05201125`
--

CREATE TABLE `f05201125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `glucosa` decimal(8,2) DEFAULT NULL,
  `urea` decimal(8,2) DEFAULT NULL,
  `creatinina` decimal(8,2) DEFAULT NULL,
  `acurico` decimal(8,2) DEFAULT NULL,
  `colesterol` decimal(8,2) DEFAULT NULL,
  `trigliceri` decimal(8,2) DEFAULT NULL,
  `calcio` decimal(8,2) DEFAULT NULL,
  `fosforo` decimal(8,2) DEFAULT NULL,
  `biltotal` decimal(8,2) DEFAULT NULL,
  `bildirecta` decimal(8,2) DEFAULT NULL,
  `bilindirec` decimal(8,2) DEFAULT NULL,
  `prototales` decimal(8,2) DEFAULT NULL,
  `albumina` decimal(8,2) DEFAULT NULL,
  `globulinas` decimal(8,2) DEFAULT NULL,
  `relacionag` decimal(8,2) DEFAULT NULL,
  `fosalcalin` decimal(8,2) DEFAULT NULL,
  `transpiruv` decimal(8,2) DEFAULT NULL,
  `transoxala` decimal(8,2) DEFAULT NULL,
  `deslactica` decimal(8,2) DEFAULT NULL,
  `amilasa` decimal(8,2) DEFAULT NULL,
  `gamaglutam` decimal(8,2) DEFAULT NULL,
  `hierro` decimal(8,2) DEFAULT NULL,
  `colalta` decimal(8,2) DEFAULT NULL,
  `colbaja` decimal(8,2) DEFAULT NULL,
  `indiceate` decimal(8,2) DEFAULT NULL,
  `bun` decimal(8,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05211025`
--

CREATE TABLE `f05211025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `glucosa` decimal(8,2) DEFAULT NULL,
  `urea` decimal(8,2) DEFAULT NULL,
  `creatinina` decimal(8,2) DEFAULT NULL,
  `acurico` decimal(8,2) DEFAULT NULL,
  `colesterol` decimal(8,2) DEFAULT NULL,
  `trigliceri` decimal(8,2) DEFAULT NULL,
  `calcio` decimal(8,2) DEFAULT NULL,
  `fosforo` decimal(8,2) DEFAULT NULL,
  `biltotal` decimal(8,2) DEFAULT NULL,
  `prototales` decimal(8,2) DEFAULT NULL,
  `albumina` decimal(8,2) DEFAULT NULL,
  `globulinas` decimal(8,2) DEFAULT NULL,
  `relacionag` decimal(8,2) DEFAULT NULL,
  `fosalcalin` decimal(8,2) DEFAULT NULL,
  `transoxala` decimal(8,2) DEFAULT NULL,
  `deslactica` decimal(8,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05211125`
--

CREATE TABLE `f05211125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `glucosa` decimal(8,2) DEFAULT NULL,
  `urea` decimal(8,2) DEFAULT NULL,
  `creatinina` decimal(8,2) DEFAULT NULL,
  `acurico` decimal(8,2) DEFAULT NULL,
  `colesterol` decimal(8,2) DEFAULT NULL,
  `trigliceri` decimal(8,2) DEFAULT NULL,
  `calcio` decimal(8,2) DEFAULT NULL,
  `fosforo` decimal(8,2) DEFAULT NULL,
  `biltotal` decimal(8,2) DEFAULT NULL,
  `prototales` decimal(8,2) DEFAULT NULL,
  `albumina` decimal(8,2) DEFAULT NULL,
  `globulinas` decimal(8,2) DEFAULT NULL,
  `relacionag` decimal(8,2) DEFAULT NULL,
  `fosalcalin` decimal(8,2) DEFAULT NULL,
  `transoxala` decimal(8,2) DEFAULT NULL,
  `deslactica` decimal(8,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05231025`
--

CREATE TABLE `f05231025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `glucosa` decimal(8,2) DEFAULT NULL,
  `urea` decimal(8,2) DEFAULT NULL,
  `creatinina` decimal(8,2) DEFAULT NULL,
  `a_urico` decimal(8,2) DEFAULT NULL,
  `colesterol` decimal(8,2) DEFAULT NULL,
  `trigliceri` decimal(8,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05231125`
--

CREATE TABLE `f05231125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `glucosa` decimal(8,2) DEFAULT NULL,
  `urea` decimal(8,2) DEFAULT NULL,
  `creatinina` decimal(8,2) DEFAULT NULL,
  `a_urico` decimal(8,2) DEFAULT NULL,
  `colesterol` decimal(8,2) DEFAULT NULL,
  `trigliceri` decimal(8,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05251025`
--

CREATE TABLE `f05251025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `tificoo` varchar(25) DEFAULT NULL,
  `tificoh` varchar(25) DEFAULT NULL,
  `paratia` varchar(25) DEFAULT NULL,
  `paratib` varchar(25) DEFAULT NULL,
  `huddleson` varchar(25) DEFAULT NULL,
  `proteus` varchar(25) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f05251125`
--

CREATE TABLE `f05251125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `tificoo` varchar(25) DEFAULT NULL,
  `tificoh` varchar(25) DEFAULT NULL,
  `paratia` varchar(25) DEFAULT NULL,
  `paratib` varchar(25) DEFAULT NULL,
  `huddleson` varchar(25) DEFAULT NULL,
  `proteus` varchar(25) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f07361025`
--

CREATE TABLE `f07361025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `a1` varchar(5) DEFAULT NULL,
  `a2` varchar(5) DEFAULT NULL,
  `a3` varchar(5) DEFAULT NULL,
  `b1` varchar(5) DEFAULT NULL,
  `b2` varchar(5) DEFAULT NULL,
  `b3` varchar(5) DEFAULT NULL,
  `c1` varchar(5) DEFAULT NULL,
  `c2` varchar(5) DEFAULT NULL,
  `c3` varchar(5) DEFAULT NULL,
  `d1` varchar(5) DEFAULT NULL,
  `d2` varchar(5) DEFAULT NULL,
  `d3` varchar(5) DEFAULT NULL,
  `e1` varchar(5) DEFAULT NULL,
  `e2` varchar(5) DEFAULT NULL,
  `e3` varchar(5) DEFAULT NULL,
  `a_1` varchar(5) DEFAULT NULL,
  `a_2` varchar(5) DEFAULT NULL,
  `a_3` varchar(5) DEFAULT NULL,
  `b_1` varchar(5) DEFAULT NULL,
  `b_2` varchar(5) DEFAULT NULL,
  `b_3` varchar(5) DEFAULT NULL,
  `c_1` varchar(5) DEFAULT NULL,
  `c_2` varchar(5) DEFAULT NULL,
  `c_3` varchar(5) DEFAULT NULL,
  `d_1` varchar(5) DEFAULT NULL,
  `d_2` varchar(5) DEFAULT NULL,
  `d_3` varchar(5) DEFAULT NULL,
  `e_1` varchar(5) DEFAULT NULL,
  `e_2` varchar(5) DEFAULT NULL,
  `e_3` varchar(5) DEFAULT NULL,
  `con1` varchar(50) DEFAULT NULL,
  `con2` varchar(50) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f07361125`
--

CREATE TABLE `f07361125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `a1` varchar(5) DEFAULT NULL,
  `a2` varchar(5) DEFAULT NULL,
  `a3` varchar(5) DEFAULT NULL,
  `b1` varchar(5) DEFAULT NULL,
  `b2` varchar(5) DEFAULT NULL,
  `b3` varchar(5) DEFAULT NULL,
  `c1` varchar(5) DEFAULT NULL,
  `c2` varchar(5) DEFAULT NULL,
  `c3` varchar(5) DEFAULT NULL,
  `d1` varchar(5) DEFAULT NULL,
  `d2` varchar(5) DEFAULT NULL,
  `d3` varchar(5) DEFAULT NULL,
  `e1` varchar(5) DEFAULT NULL,
  `e2` varchar(5) DEFAULT NULL,
  `e3` varchar(5) DEFAULT NULL,
  `a_1` varchar(5) DEFAULT NULL,
  `a_2` varchar(5) DEFAULT NULL,
  `a_3` varchar(5) DEFAULT NULL,
  `b_1` varchar(5) DEFAULT NULL,
  `b_2` varchar(5) DEFAULT NULL,
  `b_3` varchar(5) DEFAULT NULL,
  `c_1` varchar(5) DEFAULT NULL,
  `c_2` varchar(5) DEFAULT NULL,
  `c_3` varchar(5) DEFAULT NULL,
  `d_1` varchar(5) DEFAULT NULL,
  `d_2` varchar(5) DEFAULT NULL,
  `d_3` varchar(5) DEFAULT NULL,
  `e_1` varchar(5) DEFAULT NULL,
  `e_2` varchar(5) DEFAULT NULL,
  `e_3` varchar(5) DEFAULT NULL,
  `con1` varchar(50) DEFAULT NULL,
  `con2` varchar(50) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f0815a1025`
--

CREATE TABLE `f0815a1025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `ayunas` decimal(7,2) DEFAULT NULL,
  `t30` decimal(7,2) DEFAULT NULL,
  `t60` decimal(7,2) DEFAULT NULL,
  `t120` decimal(7,2) DEFAULT NULL,
  `t180` decimal(7,2) DEFAULT NULL,
  `obs1` varchar(50) DEFAULT NULL,
  `obs2` varchar(50) DEFAULT NULL,
  `obs3` varchar(50) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f0815a1125`
--

CREATE TABLE `f0815a1125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `ayunas` decimal(7,2) DEFAULT NULL,
  `t30` decimal(7,2) DEFAULT NULL,
  `t60` decimal(7,2) DEFAULT NULL,
  `t120` decimal(7,2) DEFAULT NULL,
  `t180` decimal(7,2) DEFAULT NULL,
  `obs1` varchar(50) DEFAULT NULL,
  `obs2` varchar(50) DEFAULT NULL,
  `obs3` varchar(50) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f08441025`
--

CREATE TABLE `f08441025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `ayuno` decimal(6,1) DEFAULT NULL,
  `postprandi` decimal(6,1) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f12421025`
--

CREATE TABLE `f12421025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `glucosa` decimal(6,1) DEFAULT NULL,
  `urea` decimal(6,1) DEFAULT NULL,
  `creatinina` decimal(6,1) DEFAULT NULL,
  `acurico` decimal(6,1) DEFAULT NULL,
  `colesterol` decimal(6,1) DEFAULT NULL,
  `trigliceri` decimal(6,1) DEFAULT NULL,
  `calcio` decimal(6,1) DEFAULT NULL,
  `fosforo` decimal(6,1) DEFAULT NULL,
  `biltotal` decimal(6,1) DEFAULT NULL,
  `bildirecta` decimal(6,1) DEFAULT NULL,
  `bilindirec` decimal(6,1) DEFAULT NULL,
  `prototales` decimal(6,1) DEFAULT NULL,
  `albumina` decimal(6,1) DEFAULT NULL,
  `globulinas` decimal(6,1) DEFAULT NULL,
  `relacionag` decimal(6,1) DEFAULT NULL,
  `fosalcalin` decimal(6,1) DEFAULT NULL,
  `transpiruv` decimal(6,1) DEFAULT NULL,
  `transoxala` decimal(6,1) DEFAULT NULL,
  `deslactica` decimal(6,1) DEFAULT NULL,
  `amilasa` decimal(6,1) DEFAULT NULL,
  `gamaglutam` decimal(6,1) DEFAULT NULL,
  `hierro` decimal(6,1) DEFAULT NULL,
  `colalta` decimal(6,1) DEFAULT NULL,
  `colbaja` decimal(6,1) DEFAULT NULL,
  `indiceate` decimal(6,1) DEFAULT NULL,
  `bun` decimal(6,1) DEFAULT NULL,
  `sodio` decimal(6,1) DEFAULT NULL,
  `potasio` decimal(6,1) DEFAULT NULL,
  `cloro` decimal(6,1) DEFAULT NULL,
  `magnesio` decimal(6,1) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f12421125`
--

CREATE TABLE `f12421125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `glucosa` decimal(6,1) DEFAULT NULL,
  `urea` decimal(6,1) DEFAULT NULL,
  `creatinina` decimal(6,1) DEFAULT NULL,
  `acurico` decimal(6,1) DEFAULT NULL,
  `colesterol` decimal(6,1) DEFAULT NULL,
  `trigliceri` decimal(6,1) DEFAULT NULL,
  `calcio` decimal(6,1) DEFAULT NULL,
  `fosforo` decimal(6,1) DEFAULT NULL,
  `biltotal` decimal(6,1) DEFAULT NULL,
  `bildirecta` decimal(6,1) DEFAULT NULL,
  `bilindirec` decimal(6,1) DEFAULT NULL,
  `prototales` decimal(6,1) DEFAULT NULL,
  `albumina` decimal(6,1) DEFAULT NULL,
  `globulinas` decimal(6,1) DEFAULT NULL,
  `relacionag` decimal(6,1) DEFAULT NULL,
  `fosalcalin` decimal(6,1) DEFAULT NULL,
  `transpiruv` decimal(6,1) DEFAULT NULL,
  `transoxala` decimal(6,1) DEFAULT NULL,
  `deslactica` decimal(6,1) DEFAULT NULL,
  `amilasa` decimal(6,1) DEFAULT NULL,
  `gamaglutam` decimal(6,1) DEFAULT NULL,
  `hierro` decimal(6,1) DEFAULT NULL,
  `colalta` decimal(6,1) DEFAULT NULL,
  `colbaja` decimal(6,1) DEFAULT NULL,
  `indiceate` decimal(6,1) DEFAULT NULL,
  `bun` decimal(6,1) DEFAULT NULL,
  `sodio` decimal(6,1) DEFAULT NULL,
  `potasio` decimal(6,1) DEFAULT NULL,
  `cloro` decimal(6,1) DEFAULT NULL,
  `magnesio` decimal(6,1) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f12431025`
--

CREATE TABLE `f12431025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `glucosa` decimal(7,2) DEFAULT NULL,
  `urea` decimal(7,2) DEFAULT NULL,
  `creatinina` decimal(7,2) DEFAULT NULL,
  `acurico` decimal(7,2) DEFAULT NULL,
  `colesterol` decimal(7,2) DEFAULT NULL,
  `trigliceri` decimal(7,2) DEFAULT NULL,
  `calcio` decimal(7,2) DEFAULT NULL,
  `fosforo` decimal(7,2) DEFAULT NULL,
  `biltotal` decimal(7,2) DEFAULT NULL,
  `bildirecta` decimal(7,2) DEFAULT NULL,
  `bilindirec` decimal(7,2) DEFAULT NULL,
  `prototales` decimal(7,2) DEFAULT NULL,
  `albumina` decimal(7,2) DEFAULT NULL,
  `globulinas` decimal(7,2) DEFAULT NULL,
  `relacionag` decimal(7,2) DEFAULT NULL,
  `fosalcalin` decimal(7,2) DEFAULT NULL,
  `transpiruv` decimal(7,2) DEFAULT NULL,
  `transoxala` decimal(7,2) DEFAULT NULL,
  `deslactica` decimal(7,2) DEFAULT NULL,
  `amilasa` decimal(7,2) DEFAULT NULL,
  `gamaglutam` decimal(7,2) DEFAULT NULL,
  `hierro` decimal(7,2) DEFAULT NULL,
  `colalta` decimal(7,2) DEFAULT NULL,
  `colbaja` decimal(7,2) DEFAULT NULL,
  `colmuybaja` decimal(7,2) DEFAULT NULL,
  `indiceate` decimal(7,2) DEFAULT NULL,
  `bun` decimal(7,2) DEFAULT NULL,
  `sodio` decimal(7,2) DEFAULT NULL,
  `potasio` decimal(7,2) DEFAULT NULL,
  `cloro` decimal(7,2) DEFAULT NULL,
  `magnesio` decimal(7,2) DEFAULT NULL,
  `cpk` decimal(7,2) DEFAULT NULL,
  `cpkmb` decimal(7,2) DEFAULT NULL,
  `fosfatasa` decimal(7,2) DEFAULT NULL,
  `lipasa` decimal(7,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f12431125`
--

CREATE TABLE `f12431125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `glucosa` decimal(7,2) DEFAULT NULL,
  `urea` decimal(7,2) DEFAULT NULL,
  `creatinina` decimal(7,2) DEFAULT NULL,
  `acurico` decimal(7,2) DEFAULT NULL,
  `colesterol` decimal(7,2) DEFAULT NULL,
  `trigliceri` decimal(7,2) DEFAULT NULL,
  `calcio` decimal(7,2) DEFAULT NULL,
  `fosforo` decimal(7,2) DEFAULT NULL,
  `biltotal` decimal(7,2) DEFAULT NULL,
  `bildirecta` decimal(7,2) DEFAULT NULL,
  `bilindirec` decimal(7,2) DEFAULT NULL,
  `prototales` decimal(7,2) DEFAULT NULL,
  `albumina` decimal(7,2) DEFAULT NULL,
  `globulinas` decimal(7,2) DEFAULT NULL,
  `relacionag` decimal(7,2) DEFAULT NULL,
  `fosalcalin` decimal(7,2) DEFAULT NULL,
  `transpiruv` decimal(7,2) DEFAULT NULL,
  `transoxala` decimal(7,2) DEFAULT NULL,
  `deslactica` decimal(7,2) DEFAULT NULL,
  `amilasa` decimal(7,2) DEFAULT NULL,
  `gamaglutam` decimal(7,2) DEFAULT NULL,
  `hierro` decimal(7,2) DEFAULT NULL,
  `colalta` decimal(7,2) DEFAULT NULL,
  `colbaja` decimal(7,2) DEFAULT NULL,
  `colmuybaja` decimal(7,2) DEFAULT NULL,
  `indiceate` decimal(7,2) DEFAULT NULL,
  `bun` decimal(7,2) DEFAULT NULL,
  `sodio` decimal(7,2) DEFAULT NULL,
  `potasio` decimal(7,2) DEFAULT NULL,
  `cloro` decimal(7,2) DEFAULT NULL,
  `magnesio` decimal(7,2) DEFAULT NULL,
  `cpk` decimal(7,2) DEFAULT NULL,
  `cpkmb` decimal(7,2) DEFAULT NULL,
  `fosfatasa` decimal(7,2) DEFAULT NULL,
  `lipasa` decimal(7,2) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f99991025`
--

CREATE TABLE `f99991025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `clave` bigint(20) DEFAULT NULL,
  `estudio` varchar(30) DEFAULT NULL,
  `fresco1` varchar(46) DEFAULT NULL,
  `fresco2` varchar(46) DEFAULT NULL,
  `fresco3` varchar(46) DEFAULT NULL,
  `fresco4` varchar(46) DEFAULT NULL,
  `fresco5` varchar(46) DEFAULT NULL,
  `bacter1` varchar(40) DEFAULT NULL,
  `bacter2` varchar(40) DEFAULT NULL,
  `bacter3` varchar(40) DEFAULT NULL,
  `bacter4` varchar(40) DEFAULT NULL,
  `cultivo1` varchar(40) DEFAULT NULL,
  `cultivo2` varchar(40) DEFAULT NULL,
  `cultivo3` varchar(40) DEFAULT NULL,
  `cultivo4` varchar(40) DEFAULT NULL,
  `cultivo5` varchar(40) DEFAULT NULL,
  `cultivo6` varchar(40) DEFAULT NULL,
  `cultivo7` varchar(40) DEFAULT NULL,
  `cultivo8` varchar(40) DEFAULT NULL,
  `bicho` varchar(60) DEFAULT NULL,
  `anti1` varchar(18) DEFAULT NULL,
  `anti2` varchar(18) DEFAULT NULL,
  `anti3` varchar(18) DEFAULT NULL,
  `anti4` varchar(18) DEFAULT NULL,
  `anti5` varchar(18) DEFAULT NULL,
  `anti6` varchar(18) DEFAULT NULL,
  `anti7` varchar(18) DEFAULT NULL,
  `anti8` varchar(18) DEFAULT NULL,
  `anti9` varchar(18) DEFAULT NULL,
  `anti10` varchar(18) DEFAULT NULL,
  `anti11` varchar(18) DEFAULT NULL,
  `anti12` varchar(18) DEFAULT NULL,
  `anti13` varchar(18) DEFAULT NULL,
  `anti14` varchar(18) DEFAULT NULL,
  `anti15` varchar(18) DEFAULT NULL,
  `anti16` varchar(18) DEFAULT NULL,
  `anti17` varchar(18) DEFAULT NULL,
  `anti18` varchar(18) DEFAULT NULL,
  `anti19` varchar(18) DEFAULT NULL,
  `anti20` varchar(18) DEFAULT NULL,
  `res1` varchar(2) DEFAULT NULL,
  `res2` varchar(2) DEFAULT NULL,
  `res3` varchar(2) DEFAULT NULL,
  `res4` varchar(2) DEFAULT NULL,
  `res5` varchar(2) DEFAULT NULL,
  `res6` varchar(2) DEFAULT NULL,
  `res7` varchar(2) DEFAULT NULL,
  `res8` varchar(2) DEFAULT NULL,
  `res9` varchar(2) DEFAULT NULL,
  `res10` varchar(2) DEFAULT NULL,
  `res11` varchar(2) DEFAULT NULL,
  `res12` varchar(2) DEFAULT NULL,
  `res13` varchar(2) DEFAULT NULL,
  `res14` varchar(2) DEFAULT NULL,
  `res15` varchar(2) DEFAULT NULL,
  `res16` varchar(2) DEFAULT NULL,
  `res17` varchar(2) DEFAULT NULL,
  `res18` varchar(2) DEFAULT NULL,
  `res19` varchar(2) DEFAULT NULL,
  `res20` varchar(2) DEFAULT NULL,
  `leyenda` varchar(60) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f99991125`
--

CREATE TABLE `f99991125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `clave` bigint(20) DEFAULT NULL,
  `estudio` varchar(30) DEFAULT NULL,
  `fresco1` varchar(46) DEFAULT NULL,
  `fresco2` varchar(46) DEFAULT NULL,
  `fresco3` varchar(46) DEFAULT NULL,
  `fresco4` varchar(46) DEFAULT NULL,
  `fresco5` varchar(46) DEFAULT NULL,
  `bacter1` varchar(40) DEFAULT NULL,
  `bacter2` varchar(40) DEFAULT NULL,
  `bacter3` varchar(40) DEFAULT NULL,
  `bacter4` varchar(40) DEFAULT NULL,
  `cultivo1` varchar(40) DEFAULT NULL,
  `cultivo2` varchar(40) DEFAULT NULL,
  `cultivo3` varchar(40) DEFAULT NULL,
  `cultivo4` varchar(40) DEFAULT NULL,
  `cultivo5` varchar(40) DEFAULT NULL,
  `cultivo6` varchar(40) DEFAULT NULL,
  `cultivo7` varchar(40) DEFAULT NULL,
  `cultivo8` varchar(40) DEFAULT NULL,
  `bicho` varchar(60) DEFAULT NULL,
  `anti1` varchar(18) DEFAULT NULL,
  `anti2` varchar(18) DEFAULT NULL,
  `anti3` varchar(18) DEFAULT NULL,
  `anti4` varchar(18) DEFAULT NULL,
  `anti5` varchar(18) DEFAULT NULL,
  `anti6` varchar(18) DEFAULT NULL,
  `anti7` varchar(18) DEFAULT NULL,
  `anti8` varchar(18) DEFAULT NULL,
  `anti9` varchar(18) DEFAULT NULL,
  `anti10` varchar(18) DEFAULT NULL,
  `anti11` varchar(18) DEFAULT NULL,
  `anti12` varchar(18) DEFAULT NULL,
  `anti13` varchar(18) DEFAULT NULL,
  `anti14` varchar(18) DEFAULT NULL,
  `anti15` varchar(18) DEFAULT NULL,
  `anti16` varchar(18) DEFAULT NULL,
  `anti17` varchar(18) DEFAULT NULL,
  `anti18` varchar(18) DEFAULT NULL,
  `anti19` varchar(18) DEFAULT NULL,
  `anti20` varchar(18) DEFAULT NULL,
  `res1` varchar(2) DEFAULT NULL,
  `res2` varchar(2) DEFAULT NULL,
  `res3` varchar(2) DEFAULT NULL,
  `res4` varchar(2) DEFAULT NULL,
  `res5` varchar(2) DEFAULT NULL,
  `res6` varchar(2) DEFAULT NULL,
  `res7` varchar(2) DEFAULT NULL,
  `res8` varchar(2) DEFAULT NULL,
  `res9` varchar(2) DEFAULT NULL,
  `res10` varchar(2) DEFAULT NULL,
  `res11` varchar(2) DEFAULT NULL,
  `res12` varchar(2) DEFAULT NULL,
  `res13` varchar(2) DEFAULT NULL,
  `res14` varchar(2) DEFAULT NULL,
  `res15` varchar(2) DEFAULT NULL,
  `res16` varchar(2) DEFAULT NULL,
  `res17` varchar(2) DEFAULT NULL,
  `res18` varchar(2) DEFAULT NULL,
  `res19` varchar(2) DEFAULT NULL,
  `res20` varchar(2) DEFAULT NULL,
  `leyenda` varchar(60) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gral1025`
--

CREATE TABLE `gral1025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `clave` bigint(20) DEFAULT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `titulo` varchar(35) DEFAULT NULL,
  `subtitulo` varchar(35) DEFAULT NULL,
  `resultado` decimal(11,2) DEFAULT NULL,
  `ref1` varchar(35) DEFAULT NULL,
  `ref2` varchar(35) DEFAULT NULL,
  `ref3` varchar(35) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `r` bigint(20) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gral1125`
--

CREATE TABLE `gral1125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `clave` bigint(20) DEFAULT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `titulo` varchar(35) DEFAULT NULL,
  `subtitulo` varchar(35) DEFAULT NULL,
  `resultado` decimal(11,2) DEFAULT NULL,
  `ref1` varchar(35) DEFAULT NULL,
  `ref2` varchar(35) DEFAULT NULL,
  `ref3` varchar(35) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `r` bigint(20) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `numero` bigint(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `edad` varchar(8) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `medico` varchar(45) DEFAULT NULL,
  `cant1` bigint(20) DEFAULT NULL,
  `cant2` bigint(20) DEFAULT NULL,
  `cant3` bigint(20) DEFAULT NULL,
  `cant4` bigint(20) DEFAULT NULL,
  `cant5` bigint(20) DEFAULT NULL,
  `cant6` bigint(20) DEFAULT NULL,
  `cant7` bigint(20) DEFAULT NULL,
  `cant8` bigint(20) DEFAULT NULL,
  `cant9` bigint(20) DEFAULT NULL,
  `cant10` bigint(20) DEFAULT NULL,
  `est1` bigint(20) DEFAULT NULL,
  `est2` bigint(20) DEFAULT NULL,
  `est3` bigint(20) DEFAULT NULL,
  `est4` bigint(20) DEFAULT NULL,
  `est5` bigint(20) DEFAULT NULL,
  `est6` bigint(20) DEFAULT NULL,
  `est7` bigint(20) DEFAULT NULL,
  `est8` bigint(20) DEFAULT NULL,
  `est9` bigint(20) DEFAULT NULL,
  `est10` bigint(20) DEFAULT NULL,
  `descrip1` varchar(46) DEFAULT NULL,
  `descrip2` varchar(46) DEFAULT NULL,
  `descrip3` varchar(46) DEFAULT NULL,
  `descrip4` varchar(46) DEFAULT NULL,
  `descrip5` varchar(46) DEFAULT NULL,
  `descrip6` varchar(46) DEFAULT NULL,
  `descrip7` varchar(46) DEFAULT NULL,
  `descrip8` varchar(46) DEFAULT NULL,
  `descrip9` varchar(46) DEFAULT NULL,
  `descrip10` varchar(46) DEFAULT NULL,
  `desc1` decimal(8,4) DEFAULT NULL,
  `desc2` decimal(8,4) DEFAULT NULL,
  `desc3` decimal(8,4) DEFAULT NULL,
  `desc4` decimal(8,4) DEFAULT NULL,
  `desc5` decimal(8,4) DEFAULT NULL,
  `desc6` decimal(8,4) DEFAULT NULL,
  `desc7` decimal(8,4) DEFAULT NULL,
  `desc8` decimal(8,4) DEFAULT NULL,
  `desc9` decimal(8,4) DEFAULT NULL,
  `desc10` decimal(8,4) DEFAULT NULL,
  `imp1` decimal(8,2) DEFAULT NULL,
  `imp2` decimal(8,2) DEFAULT NULL,
  `imp3` decimal(8,2) DEFAULT NULL,
  `imp4` decimal(8,2) DEFAULT NULL,
  `imp5` decimal(8,2) DEFAULT NULL,
  `imp6` decimal(8,2) DEFAULT NULL,
  `imp7` decimal(8,2) DEFAULT NULL,
  `imp8` decimal(8,2) DEFAULT NULL,
  `imp9` decimal(8,2) DEFAULT NULL,
  `imp10` decimal(8,2) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `iva` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `cuenta` decimal(8,2) DEFAULT NULL,
  `resta` decimal(8,2) DEFAULT NULL,
  `factura` bigint(20) DEFAULT NULL,
  `formapago` bigint(20) DEFAULT NULL,
  `terminada` varchar(1) DEFAULT NULL,
  `fpagada` datetime DEFAULT NULL,
  `entregada` varchar(1) DEFAULT NULL,
  `lista` bigint(20) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `direc` varchar(35) DEFAULT NULL,
  `col` varchar(30) DEFAULT NULL,
  `cp` varchar(5) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `tel1` varchar(15) DEFAULT NULL,
  `entre` datetime DEFAULT NULL,
  `comis` tinyint(1) DEFAULT NULL,
  `horas` varchar(6) DEFAULT NULL,
  `unidad` varchar(10) DEFAULT NULL,
  `diagnostic` varchar(40) DEFAULT NULL,
  `obs` varchar(60) DEFAULT NULL,
  `obs2` varchar(60) DEFAULT NULL,
  `obs3` varchar(60) DEFAULT NULL,
  `obsesp` varchar(15) DEFAULT NULL,
  `pagoi` tinyint(1) DEFAULT NULL,
  `recibe` varchar(4) DEFAULT NULL,
  `cupones` decimal(10,2) DEFAULT NULL,
  `anterior` bigint(20) DEFAULT NULL,
  `siguiente` bigint(20) DEFAULT NULL,
  `fanterior` datetime DEFAULT NULL,
  `fsiguiente` datetime DEFAULT NULL,
  `timex` varchar(8) DEFAULT NULL,
  `r1` bigint(20) DEFAULT NULL,
  `r2` bigint(20) DEFAULT NULL,
  `r3` bigint(20) DEFAULT NULL,
  `r4` bigint(20) DEFAULT NULL,
  `r5` bigint(20) DEFAULT NULL,
  `r6` bigint(20) DEFAULT NULL,
  `r7` bigint(20) DEFAULT NULL,
  `r8` bigint(20) DEFAULT NULL,
  `r9` bigint(20) DEFAULT NULL,
  `r10` bigint(20) DEFAULT NULL,
  `cant11` bigint(20) DEFAULT NULL,
  `cant12` bigint(20) DEFAULT NULL,
  `cant13` bigint(20) DEFAULT NULL,
  `cant14` bigint(20) DEFAULT NULL,
  `cant15` bigint(20) DEFAULT NULL,
  `est11` bigint(20) DEFAULT NULL,
  `est12` bigint(20) DEFAULT NULL,
  `est13` bigint(20) DEFAULT NULL,
  `est14` bigint(20) DEFAULT NULL,
  `est15` bigint(20) DEFAULT NULL,
  `descrip11` varchar(46) DEFAULT NULL,
  `descrip12` varchar(46) DEFAULT NULL,
  `descrip13` varchar(46) DEFAULT NULL,
  `descrip14` varchar(46) DEFAULT NULL,
  `descrip15` varchar(46) DEFAULT NULL,
  `desc11` decimal(8,4) DEFAULT NULL,
  `desc12` decimal(8,4) DEFAULT NULL,
  `desc13` decimal(8,4) DEFAULT NULL,
  `desc14` decimal(8,4) DEFAULT NULL,
  `desc15` decimal(8,4) DEFAULT NULL,
  `imp11` decimal(8,2) DEFAULT NULL,
  `imp12` decimal(8,2) DEFAULT NULL,
  `imp13` decimal(8,2) DEFAULT NULL,
  `imp14` decimal(8,2) DEFAULT NULL,
  `imp15` decimal(8,2) DEFAULT NULL,
  `fnaci` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teli1025`
--

CREATE TABLE `teli1025` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `clave` bigint(20) DEFAULT NULL,
  `resultado` varchar(30) DEFAULT NULL,
  `resultad2` varchar(30) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `titulo` varchar(35) DEFAULT NULL,
  `subtitulo` varchar(35) DEFAULT NULL,
  `ref1` varchar(35) DEFAULT NULL,
  `ref2` varchar(35) DEFAULT NULL,
  `ref3` varchar(35) DEFAULT NULL,
  `r` bigint(20) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teli1125`
--

CREATE TABLE `teli1125` (
  `id` int(10) UNSIGNED NOT NULL,
  `sucursal` varchar(64) NOT NULL,
  `orden` bigint(20) DEFAULT NULL,
  `paciente` varchar(40) DEFAULT NULL,
  `medico` varchar(40) DEFAULT NULL,
  `repfecha` datetime DEFAULT NULL,
  `tmfecha` datetime DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `clave` bigint(20) DEFAULT NULL,
  `resultado` varchar(30) DEFAULT NULL,
  `resultad2` varchar(30) DEFAULT NULL,
  `obs1` varchar(40) DEFAULT NULL,
  `obs2` varchar(40) DEFAULT NULL,
  `obs3` varchar(40) DEFAULT NULL,
  `titulo` varchar(35) DEFAULT NULL,
  `subtitulo` varchar(35) DEFAULT NULL,
  `ref1` varchar(35) DEFAULT NULL,
  `ref2` varchar(35) DEFAULT NULL,
  `ref3` varchar(35) DEFAULT NULL,
  `r` bigint(20) DEFAULT NULL,
  `validar` tinyint(1) DEFAULT NULL,
  `mes_archivo` tinyint(3) UNSIGNED DEFAULT NULL,
  `anio_archivo` smallint(5) UNSIGNED DEFAULT NULL,
  `archivo_origen` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `f00081025`
--
ALTER TABLE `f00081025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F00081025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f01681025`
--
ALTER TABLE `f01681025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F01681025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f01681125`
--
ALTER TABLE `f01681125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F01681125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f01691025`
--
ALTER TABLE `f01691025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F01691025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f01691125`
--
ALTER TABLE `f01691125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F01691125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02141025`
--
ALTER TABLE `f02141025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02141025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02171025`
--
ALTER TABLE `f02171025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02171025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02171125`
--
ALTER TABLE `f02171125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02171125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02431025`
--
ALTER TABLE `f02431025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02431025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02431125`
--
ALTER TABLE `f02431125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02431125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02451025`
--
ALTER TABLE `f02451025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02451025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02451125`
--
ALTER TABLE `f02451125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02451125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02561025`
--
ALTER TABLE `f02561025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02561025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02561125`
--
ALTER TABLE `f02561125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02561125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02811025`
--
ALTER TABLE `f02811025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02811025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02811125`
--
ALTER TABLE `f02811125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02811125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02881025`
--
ALTER TABLE `f02881025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02881025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02881125`
--
ALTER TABLE `f02881125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02881125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02941025`
--
ALTER TABLE `f02941025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02941025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f02941125`
--
ALTER TABLE `f02941125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F02941125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f03001025`
--
ALTER TABLE `f03001025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F03001025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f03001125`
--
ALTER TABLE `f03001125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F03001125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f03351025`
--
ALTER TABLE `f03351025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F03351025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f03371025`
--
ALTER TABLE `f03371025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F03371025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f03371125`
--
ALTER TABLE `f03371125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F03371125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f03831025`
--
ALTER TABLE `f03831025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F03831025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f03831125`
--
ALTER TABLE `f03831125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F03831125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f03951025`
--
ALTER TABLE `f03951025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F03951025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f03951125`
--
ALTER TABLE `f03951125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F03951125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04031025`
--
ALTER TABLE `f04031025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04031025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04301025`
--
ALTER TABLE `f04301025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04301025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04301125`
--
ALTER TABLE `f04301125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04301125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04371025`
--
ALTER TABLE `f04371025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04371025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04371125`
--
ALTER TABLE `f04371125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04371125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04551025`
--
ALTER TABLE `f04551025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04551025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04551125`
--
ALTER TABLE `f04551125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04551125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04651025`
--
ALTER TABLE `f04651025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04651025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04741025`
--
ALTER TABLE `f04741025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04741025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04741125`
--
ALTER TABLE `f04741125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04741125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04761025`
--
ALTER TABLE `f04761025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04761025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04761125`
--
ALTER TABLE `f04761125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04761125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04791025`
--
ALTER TABLE `f04791025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04791025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04791125`
--
ALTER TABLE `f04791125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04791125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04801125`
--
ALTER TABLE `f04801125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04801125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04811025`
--
ALTER TABLE `f04811025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04811025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04881025`
--
ALTER TABLE `f04881025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04881025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f04881125`
--
ALTER TABLE `f04881125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F04881125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05021025`
--
ALTER TABLE `f05021025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05021025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05021125`
--
ALTER TABLE `f05021125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05021125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05121025`
--
ALTER TABLE `f05121025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05121025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05121125`
--
ALTER TABLE `f05121125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05121125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05161025`
--
ALTER TABLE `f05161025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05161025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05161125`
--
ALTER TABLE `f05161125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05161125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05181025`
--
ALTER TABLE `f05181025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05181025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05201025`
--
ALTER TABLE `f05201025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05201025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05201125`
--
ALTER TABLE `f05201125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05201125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05211025`
--
ALTER TABLE `f05211025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05211025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05211125`
--
ALTER TABLE `f05211125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05211125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05231025`
--
ALTER TABLE `f05231025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05231025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05231125`
--
ALTER TABLE `f05231125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05231125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05251025`
--
ALTER TABLE `f05251025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05251025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f05251125`
--
ALTER TABLE `f05251125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F05251125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f07361025`
--
ALTER TABLE `f07361025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F07361025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f07361125`
--
ALTER TABLE `f07361125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F07361125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f0815a1025`
--
ALTER TABLE `f0815a1025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F0815A1025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f0815a1125`
--
ALTER TABLE `f0815a1125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F0815A1125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f08441025`
--
ALTER TABLE `f08441025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F08441025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f12421025`
--
ALTER TABLE `f12421025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F12421025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f12421125`
--
ALTER TABLE `f12421125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F12421125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f12431025`
--
ALTER TABLE `f12431025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F12431025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f12431125`
--
ALTER TABLE `f12431125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F12431125` (`sucursal`,`orden`);

--
-- Indices de la tabla `f99991025`
--
ALTER TABLE `f99991025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F99991025` (`sucursal`,`orden`);

--
-- Indices de la tabla `f99991125`
--
ALTER TABLE `f99991125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_F99991125` (`sucursal`,`orden`);

--
-- Indices de la tabla `gral1025`
--
ALTER TABLE `gral1025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_GRAL1025` (`sucursal`,`orden`);

--
-- Indices de la tabla `gral1125`
--
ALTER TABLE `gral1125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_GRAL1125` (`sucursal`,`orden`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_notas` (`sucursal`,`numero`);

--
-- Indices de la tabla `teli1025`
--
ALTER TABLE `teli1025`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_TELI1025` (`sucursal`,`orden`);

--
-- Indices de la tabla `teli1125`
--
ALTER TABLE `teli1125`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_TELI1125` (`sucursal`,`orden`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudios`
--
ALTER TABLE `estudios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f00081025`
--
ALTER TABLE `f00081025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f01681025`
--
ALTER TABLE `f01681025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f01681125`
--
ALTER TABLE `f01681125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f01691025`
--
ALTER TABLE `f01691025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f01691125`
--
ALTER TABLE `f01691125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02141025`
--
ALTER TABLE `f02141025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02171025`
--
ALTER TABLE `f02171025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02171125`
--
ALTER TABLE `f02171125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02431025`
--
ALTER TABLE `f02431025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02431125`
--
ALTER TABLE `f02431125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02451025`
--
ALTER TABLE `f02451025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02451125`
--
ALTER TABLE `f02451125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02561025`
--
ALTER TABLE `f02561025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02561125`
--
ALTER TABLE `f02561125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02811025`
--
ALTER TABLE `f02811025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02811125`
--
ALTER TABLE `f02811125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02881025`
--
ALTER TABLE `f02881025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02881125`
--
ALTER TABLE `f02881125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02941025`
--
ALTER TABLE `f02941025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f02941125`
--
ALTER TABLE `f02941125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f03001025`
--
ALTER TABLE `f03001025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f03001125`
--
ALTER TABLE `f03001125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f03351025`
--
ALTER TABLE `f03351025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f03371025`
--
ALTER TABLE `f03371025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f03371125`
--
ALTER TABLE `f03371125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f03831025`
--
ALTER TABLE `f03831025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f03831125`
--
ALTER TABLE `f03831125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f03951025`
--
ALTER TABLE `f03951025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f03951125`
--
ALTER TABLE `f03951125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04031025`
--
ALTER TABLE `f04031025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04301025`
--
ALTER TABLE `f04301025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04301125`
--
ALTER TABLE `f04301125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04371025`
--
ALTER TABLE `f04371025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04371125`
--
ALTER TABLE `f04371125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04551025`
--
ALTER TABLE `f04551025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04551125`
--
ALTER TABLE `f04551125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04651025`
--
ALTER TABLE `f04651025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04741025`
--
ALTER TABLE `f04741025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04741125`
--
ALTER TABLE `f04741125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04761025`
--
ALTER TABLE `f04761025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04761125`
--
ALTER TABLE `f04761125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04791025`
--
ALTER TABLE `f04791025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04791125`
--
ALTER TABLE `f04791125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04801125`
--
ALTER TABLE `f04801125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04811025`
--
ALTER TABLE `f04811025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04881025`
--
ALTER TABLE `f04881025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f04881125`
--
ALTER TABLE `f04881125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05021025`
--
ALTER TABLE `f05021025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05021125`
--
ALTER TABLE `f05021125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05121025`
--
ALTER TABLE `f05121025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05121125`
--
ALTER TABLE `f05121125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05161025`
--
ALTER TABLE `f05161025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05161125`
--
ALTER TABLE `f05161125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05181025`
--
ALTER TABLE `f05181025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05201025`
--
ALTER TABLE `f05201025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05201125`
--
ALTER TABLE `f05201125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05211025`
--
ALTER TABLE `f05211025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05211125`
--
ALTER TABLE `f05211125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05231025`
--
ALTER TABLE `f05231025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05231125`
--
ALTER TABLE `f05231125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05251025`
--
ALTER TABLE `f05251025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f05251125`
--
ALTER TABLE `f05251125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f07361025`
--
ALTER TABLE `f07361025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f07361125`
--
ALTER TABLE `f07361125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f0815a1025`
--
ALTER TABLE `f0815a1025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f0815a1125`
--
ALTER TABLE `f0815a1125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f08441025`
--
ALTER TABLE `f08441025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f12421025`
--
ALTER TABLE `f12421025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f12421125`
--
ALTER TABLE `f12421125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f12431025`
--
ALTER TABLE `f12431025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f12431125`
--
ALTER TABLE `f12431125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f99991025`
--
ALTER TABLE `f99991025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f99991125`
--
ALTER TABLE `f99991125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gral1025`
--
ALTER TABLE `gral1025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gral1125`
--
ALTER TABLE `gral1125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `teli1025`
--
ALTER TABLE `teli1025`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `teli1125`
--
ALTER TABLE `teli1125`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;
