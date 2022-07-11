-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Мар 02 2022 г., 10:08
-- Версия сервера: 8.0.27
-- Версия PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `users`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users_info`
--

CREATE TABLE `users_info` (
  `id` int UNSIGNED NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users_info`
--

INSERT INTO `users_info` (`id`, `login`, `password`) VALUES
(1, 'admin', 'admin'),
(11, 'username', 'user'),
(22, '1', '1'),
(24, 'Sam', 'Sam123'),
(23, 'test', 'test'),
(25, 'Lina', 'password123'),
(26, 'Kyle', 'qwerty1234567'),
(27, 'Jean', 'QUIHfebwiuf1376!@'),
(28, 'John', 'Password'),
(29, 'Ann', 'mypassword'),
(30, 'Tyrell', 'welick777'),
(37, 'signup_test', 'lol'),
(32, 'newtest', '123'),
(38, 'testtest', 'testtest');

-- --------------------------------------------------------

--
-- Структура таблицы `users_posts`
--

CREATE TABLE `users_posts` (
  `id` int UNSIGNED NOT NULL,
  `post` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users_posts`
--

INSERT INTO `users_posts` (`id`, `post`) VALUES
(22, 'qwe'),
(22, 'qwe1'),
(1, 'admin&#39;s notes'),
(1, 'admin&#39;s blabla text'),
(1, 'long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text'),
(1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci suscipit lobortis claritatem.'),
(1, '&#34;> alert()'),
(1, 'qweqweqweqweqweqwe'),
(1, 'XSS'),
(24, 'Hello this is my first post!'),
(24, 'also there is the second post'),
(24, 'Sam Test'),
(22, 'test lol'),
(22, 'test for admin'),
(1, 'test for admin 2'),
(22, 'lololololollol'),
(22, 'test'),
(22, 'long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read long read'),
(1, 'idor'),
(1, 'test'),
(1, ''),
(27, 'i&#39;m Jean'),
(1, 'QWEQWE'),
(32, 'hello'),
(32, '123'),
(1, 'test post'),
(35, 'гпишшгшршршл'),
(36, 'hodjsfhowefjoiwejfoiwef'),
(1, 'h3110 4g41n'),
(11, 'testUSER'),
(28, 'John&#39;s post'),
(28, '123'),
(28, 'jkldfskljsdfjklsdf'),
(22, 'odododo'),
(28, 'lolo'),
(22, '111111'),
(28, '999999'),
(22, 'TEST FOR DB'),
(11, 'userlol'),
(11, 'qweqweqwe'),
(11, 'test for username'),
(22, '11111'),
(22, 'qweqweqwe');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `users_posts`
--
ALTER TABLE `users_posts`
  ADD KEY `id_2` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `users_posts`
--
ALTER TABLE `users_posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
