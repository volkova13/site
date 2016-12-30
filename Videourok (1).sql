-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 30 2016 г., 20:25
-- Версия сервера: 5.5.50
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Videourok`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accaunt`
--

CREATE TABLE IF NOT EXISTS `accaunt` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `phone` tinytext NOT NULL,
  `address` tinytext NOT NULL,
  `foto` tinytext NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `accaunt`
--

INSERT INTO `accaunt` (`id`, `user_id`, `name`, `phone`, `address`, `foto`, `created_at`, `updated_at`) VALUES
(1, 3, 'gfgh', '43535', 'address', 'Jellyfish.jpg', '2016-12-30', '2016-12-30 19:49:54');

-- --------------------------------------------------------

--
-- Структура таблицы `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL,
  `class` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `classes`
--

INSERT INTO `classes` (`id`, `class`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `maintexts`
--

CREATE TABLE IF NOT EXISTS `maintexts` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `url` tinytext NOT NULL,
  `lang` enum('ru','en') NOT NULL DEFAULT 'ru',
  `showhide` enum('show','hide') NOT NULL,
  `putdate` date NOT NULL,
  `leftmenu` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `lang`, `showhide`, `putdate`, `leftmenu`) VALUES
(1, 'Добро пожаловать на сайт', '- технические, связанные с изучением методов и средств надежного сбора, хранения, передачи, обработки и выдачи информации; - семантические, определяющие способы описания смысла информации, изучающие языки ее описания; - прагматические, описывающие методы кодирования информации; - синтаксические, связанные с решением задач по формализации и автоматизации некоторых видов научно-информационной деятельности, в частности индексирование, автоматическое реферирование, машинный перевод. \r\n<img src=''media/img/1.gif''>\r\n', 'index', 'ru', 'show', '2016-12-16', '0'),
(2, 'Контакты', 'телефон, почтаб адрес', 'contakts', 'ru', 'show', '2016-12-16', '0'),
(3, 'О нас', 'Информация о нас', 'about', 'ru', 'show', '0000-00-00', '0'),
(4, 'Видеоуроки', 'Видеоконтент', 'video', 'ru', 'show', '0000-00-00', '1'),
(5, 'Конкурсы', 'Всё о конкурсах', 'konkurs', 'ru', 'show', '0000-00-00', '1'),
(6, 'Проекты', 'О проектах', 'proekt', 'ru', 'show', '0000-00-00', '1'),
(7, 'Сервисы', 'Всякие сервисы', 'Servis', 'ru', 'show', '0000-00-00', '0'),
(8, 'Физика', 'Видео уроки по физике', 'fizika', 'ru', 'show', '0000-00-00', '0'),
(9, 'Химия', 'Видеоуроки по химии', 'himia', 'ru', 'show', '0000-00-00', '0'),
(10, 'Биология', 'Видеоуроки по биологии', 'bio', 'ru', 'show', '0000-00-00', '0'),
(11, 'История', 'Видеоуроки по истории', 'history', 'ru', 'show', '0000-00-00', '0'),
(12, 'География', 'Видео по географии', 'geo', 'ru', 'show', '0000-00-00', '0'),
(13, 'Математика', 'Видеоуроки по математике', 'matem', 'ru', 'show', '0000-00-00', '0'),
(14, 'Информатика', 'Видеоуроки по информатике', 'informatika', 'ru', 'show', '0000-00-00', '0'),
(15, 'Русский язык', 'Видеоуроки по русскому языку', 'russ', 'ru', 'show', '0000-00-00', '0'),
(16, 'Белорусский язык', 'Видеоуроки по белорусскому языку', 'bel', 'ru', 'show', '0000-00-00', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `predmets`
--

CREATE TABLE IF NOT EXISTS `predmets` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `picture` tinytext NOT NULL,
  `schowhide` enum('show','hide') NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `predmets`
--

INSERT INTO `predmets` (`id`, `class_id`, `user_id`, `name`, `body`, `picture`, `schowhide`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'name', 'body', 'D:/OpenServer/domains/volkova/media/foto/.Koala.jpg', 'show', '2016-12-28', '2016-12-28 20:32:10'),
(2, 2, 3, 'химия', 'body', 'D:/OpenServer/domains/volkova/media/foto/.Jellyfish.jpg', 'show', '2016-12-28', '2016-12-28 20:33:00'),
(3, 2, 3, 'химия', 'body', 'D:/OpenServer/domains/volkova/media/foto/.Jellyfish.jpg', 'show', '2016-12-28', '2016-12-28 20:42:52'),
(4, 2, 3, 'химия', '', 'D:/OpenServer/domains/volkova/media/foto/.Jellyfish.jpg', 'show', '2016-12-28', '2016-12-28 20:50:53'),
(5, 2, 3, 'химия', '', 'D:/OpenServer/domains/volkova/media/foto/.Jellyfish.jpg', 'show', '2016-12-28', '2016-12-28 20:53:19'),
(6, 4, 3, 'fff', '443', 'D:/OpenServer/domains/volkova/media/foto/.Jellyfish.jpg', 'show', '2016-12-28', '2016-12-28 20:53:58'),
(7, 4, 3, 'fff', '443', 'D:/OpenServer/domains/volkova/media/foto/.Jellyfish.jpg', 'show', '2016-12-28', '2016-12-28 20:54:36'),
(8, 4, 3, 'fff', '443', 'D:/OpenServer/domains/volkova/media/foto/.Jellyfish.jpg', 'show', '2016-12-28', '2016-12-28 20:58:40'),
(9, 4, 3, 'dd', 'ddd', 'D:/OpenServer/domains/volkova/media/foto/.Penguins.jpg', 'show', '2016-12-28', '2016-12-28 21:00:13'),
(10, 6, 3, '[bvbz', 'ппапап', 'D:/OpenServer/domains/volkova/media/foto/.', 'show', '2016-12-30', '2016-12-30 19:23:38');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `login` tinytext NOT NULL,
  `pass` tinytext NOT NULL,
  `datereg` date NOT NULL,
  `lastvisit` datetime NOT NULL,
  `blockunblock` enum('unblock','block') NOT NULL DEFAULT 'unblock'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `login`, `pass`, `datereg`, `lastvisit`, `blockunblock`) VALUES
(1, 'volkova@tut.by', '', '123', '2016-12-23', '2016-12-23 20:27:46', 'unblock'),
(2, 'ful@tut.by', '', '123', '2016-12-23', '2016-12-23 20:30:05', 'unblock'),
(3, 'dr@mail.ru', 'fur', '25', '2016-12-23', '2016-12-23 20:31:27', 'unblock'),
(4, 'volkova@tut.by', 'volkova', '152', '2016-12-23', '2016-12-23 20:57:57', 'unblock'),
(5, 'volkova@tut.by', 'hjh', '123', '2016-12-23', '2016-12-23 21:00:57', 'unblock'),
(6, 'scet@mail.ru', 'sveta', 'sveta', '2016-12-28', '2016-12-28 19:04:51', 'unblock'),
(7, 'ggg@tut.by', 'mmm', '123', '2016-12-30', '2016-12-30 19:16:05', 'unblock'),
(8, 'Svets@tut.by', 'login', '58', '2016-12-30', '2016-12-30 19:26:57', 'unblock'),
(9, 'tut@tut.by', 'tut', '528', '2016-12-30', '2016-12-30 19:31:36', 'unblock');

-- --------------------------------------------------------

--
-- Структура таблицы `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL,
  `predmet_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `body` text NOT NULL,
  `url` tinytext NOT NULL,
  `picture` tinytext NOT NULL,
  `created_at` date NOT NULL,
  `updeated_at` datetime NOT NULL,
  `showhide` enum('show','hide') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accaunt`
--
ALTER TABLE `accaunt`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `predmets`
--
ALTER TABLE `predmets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accaunt`
--
ALTER TABLE `accaunt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `predmets`
--
ALTER TABLE `predmets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
