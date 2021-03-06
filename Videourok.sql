-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 23 2016 г., 20:54
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `login`, `pass`, `datereg`, `lastvisit`, `blockunblock`) VALUES
(1, 'volkova@tut.by', '', '123', '2016-12-23', '2016-12-23 20:27:46', 'unblock'),
(2, 'ful@tut.by', '', '123', '2016-12-23', '2016-12-23 20:30:05', 'unblock'),
(3, 'dr@mail.ru', 'fur', '25', '2016-12-23', '2016-12-23 20:31:27', 'unblock'),
(4, 'volkova@tut.by', 'volkova', '152', '2016-12-23', '2016-12-23 20:57:57', 'unblock'),
(5, 'volkova@tut.by', 'hjh', '123', '2016-12-23', '2016-12-23 21:00:57', 'unblock');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
