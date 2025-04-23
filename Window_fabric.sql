-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 23 2025 г., 19:12
-- Версия сервера: 8.0.30
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Window_fabric`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `window_id` int NOT NULL,
  `count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `user_id`, `window_id`, `count`) VALUES
(1, 2, 1, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `dop_complects`
--

CREATE TABLE `dop_complects` (
  `id` int NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `dop_complects`
--

INSERT INTO `dop_complects` (`id`, `title`) VALUES
(1, 'Подоконник'),
(2, 'Рама');

-- --------------------------------------------------------

--
-- Структура таблицы `dop_parametrs`
--

CREATE TABLE `dop_parametrs` (
  `id` int NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `dop_parametrs`
--

INSERT INTO `dop_parametrs` (`id`, `title`) VALUES
(1, 'Шумоизоляция'),
(2, 'Звукоизоляция');

-- --------------------------------------------------------

--
-- Структура таблицы `materials`
--

CREATE TABLE `materials` (
  `id` int NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `materials`
--

INSERT INTO `materials` (`id`, `title`) VALUES
(1, 'Пластик'),
(2, 'Дерево');

-- --------------------------------------------------------

--
-- Структура таблицы `opening_type`
--

CREATE TABLE `opening_type` (
  `id` int NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `opening_type`
--

INSERT INTO `opening_type` (`id`, `type`) VALUES
(1, 'Задвижка'),
(2, 'пиаппшгива');

-- --------------------------------------------------------

--
-- Структура таблицы `proizvoditeli`
--

CREATE TABLE `proizvoditeli` (
  `id` int NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `proizvoditeli`
--

INSERT INTO `proizvoditeli` (`id`, `title`) VALUES
(1, 'WindowMore'),
(2, 'Zara Home');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `role`) VALUES
(1, 'a', '1', 'admin'),
(2, 'u', '2', 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `windows`
--

CREATE TABLE `windows` (
  `id` int NOT NULL,
  `material_id` int NOT NULL,
  `proizv_id` int NOT NULL,
  `width` int NOT NULL,
  `length` int NOT NULL,
  `opening_type_id` int NOT NULL,
  `dop_komp_id` int NOT NULL,
  `dop_par_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `windows`
--

INSERT INTO `windows` (`id`, `material_id`, `proizv_id`, `width`, `length`, `opening_type_id`, `dop_komp_id`, `dop_par_id`) VALUES
(1, 1, 1, 40, 60, 1, 2, 2),
(2, 2, 2, 50, 55, 2, 1, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `window_id` (`window_id`);

--
-- Индексы таблицы `dop_complects`
--
ALTER TABLE `dop_complects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dop_parametrs`
--
ALTER TABLE `dop_parametrs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `opening_type`
--
ALTER TABLE `opening_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `proizvoditeli`
--
ALTER TABLE `proizvoditeli`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `windows`
--
ALTER TABLE `windows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `proizv_id` (`proizv_id`),
  ADD KEY `opening_type_id` (`opening_type_id`),
  ADD KEY `dop_komp_id` (`dop_komp_id`),
  ADD KEY `dop_par_id` (`dop_par_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `windows`
--
ALTER TABLE `windows`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `basket_ibfk_2` FOREIGN KEY (`window_id`) REFERENCES `windows` (`id`);

--
-- Ограничения внешнего ключа таблицы `windows`
--
ALTER TABLE `windows`
  ADD CONSTRAINT `windows_ibfk_1` FOREIGN KEY (`opening_type_id`) REFERENCES `opening_type` (`id`),
  ADD CONSTRAINT `windows_ibfk_2` FOREIGN KEY (`dop_par_id`) REFERENCES `dop_parametrs` (`id`),
  ADD CONSTRAINT `windows_ibfk_3` FOREIGN KEY (`dop_komp_id`) REFERENCES `dop_complects` (`id`),
  ADD CONSTRAINT `windows_ibfk_4` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`),
  ADD CONSTRAINT `windows_ibfk_5` FOREIGN KEY (`proizv_id`) REFERENCES `proizvoditeli` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
