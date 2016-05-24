-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 23 2016 г., 01:32
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `magazin`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gorod`
--

CREATE TABLE IF NOT EXISTS `gorod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `gorod`
--

INSERT INTO `gorod` (`id`, `name`, `url`) VALUES
(1, 'Москва', 'moskva'),
(2, 'Санкт-Петербург', 'spb'),
(3, 'Якутск', 'yakutsk');

-- --------------------------------------------------------

--
-- Структура таблицы `information`
--

CREATE TABLE IF NOT EXISTS `information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_gorod` int(11) NOT NULL,
  `number` int(20) NOT NULL,
  `faks` int(20) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `opisanie` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `information`
--

INSERT INTO `information` (`id`, `id_gorod`, `number`, `faks`, `adress`, `opisanie`) VALUES
(1, 1, 2147, 0, 'ст.м.Таганская, ул. Воронцовская, д.6', 'Официальное представительство компании в г.Якутске'),
(2, 2, 2147483647, 0, 'ст.м.Международная, ул. Белы Куна, д.10', 'Официальное представительство компании в г.Санкт-Петербурге'),
(3, 3, 2147483647, 0, 'ул. Тимирязева, д. 25', 'Официальное представительство компании в г. Москва');

-- --------------------------------------------------------

--
-- Структура таблицы `kategorii`
--

CREATE TABLE IF NOT EXISTS `kategorii` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`,`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `kategorii`
--

INSERT INTO `kategorii` (`id`, `name`, `url`) VALUES
(1, 'Уборка', 'uborka'),
(2, 'Мытье окон', 'mytie_okon'),
(3, 'Химчистка', 'himchistka'),
(4, 'Высотные работы', 'vysotnye_raboty');

-- --------------------------------------------------------

--
-- Структура таблицы `uslugi`
--

CREATE TABLE IF NOT EXISTS `uslugi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cat` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `opisanie` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `uslugi`
--

INSERT INTO `uslugi` (`id`, `id_cat`, `name`, `price`, `opisanie`) VALUES
(1, 1, 'Уборка квартир', 1000, 'Уборка квартир после ремонта; Генеральная уборка'),
(2, 1, 'Уборка офисов', 2000, 'Генеральная уборка офисных помещений'),
(3, 2, 'Мытье окон', 1500, 'Мытье окон, балконов и витрин'),
(4, 3, 'Химчистка ковров', 1000, 'Чистка ковров и ковролина'),
(5, 3, 'Химчистка мебели', 3000, 'Химчистка мягкой мебели, диванов'),
(6, 3, 'Химчистка автомобилей', 2500, 'Химчистка салона автомобиля'),
(7, 3, 'Химчистка матрасов', 1000, 'Химчистка матрасов'),
(9, 4, 'Уборка снега с крыш', 3000, 'Уборка снега с крыш и территорий');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
