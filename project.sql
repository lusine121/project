-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 11 2018 г., 12:22
-- Версия сервера: 10.1.31-MariaDB
-- Версия PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Art'),
(2, 'Sport'),
(3, 'Medicine'),
(4, 'Government\r\n'),
(5, 'Environmental'),
(6, 'Politics '),
(7, 'Weather '),
(8, 'Universe ');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL,
  `image_path` varchar(255) CHARACTER SET latin1 NOT NULL,
  `category_id` int(11) NOT NULL,
  `date_of_creating` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `content`, `image_path`, `category_id`, `date_of_creating`) VALUES
(0, 'mkmkm', 'kkkkk', 'llllll ', '1533928312.jpg ', 1, '2018-08-10'),
(1, 'news 1', 'aaaaa aaaaaaaaaaaa aqqq', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'test.jpg', 1, '0000-00-00'),
(2, 'title 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesett', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'test.jpg', 1, '0000-00-00'),
(3, 'bjsbcjsbjc', 'wdwkd', 'dwjdbnkwn ', '96 (3).jpg ', 6, '2018-08-02'),
(4, 'news conserning iuniverse', 'The Universe is all of space and time[a] and their contents,[10] including planets,', 'The Universe is all of space and time[a] and their contents,[10] including planets, stars, galaxies, and all other forms of matter and energy. While the spatial size of the entire Universe is still unknown,[3] it is possible to measure the observable universe.\r\n\r\nT ', '96 (3).jpg ', 7, '2018-08-02'),
(5, 'There are many', 'There are many variations of passages of Lorem Ipsum available', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '5.jpg ', 1, '2018-08-02'),
(6, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration ', '5.jpg ', 4, '2018-08-02'),
(7, 'Does ugliness have aesthetic value?', 'Hence, beautiful wallpapers can also come in many different', 'Can the ugliness have aesthetic value? And above all, how to define beauty? What aesthetic pleasure is he different from any other pleasure? What is the nature of aesthetic pleasure? Is a beautiful property of things? All these questions have no universally accepted response. Hence, beautiful wallpapers can also come in many different ', '13.jpg ', 1, '2018-08-02'),
(8, 'In pto demonstrate t', 'In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".', 'In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".\r\n\r\nEven though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning. Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation. \"Lorem ipsum\" also approximates a typical distribution of letters in English.In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".\r\n\r\nEven though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning. Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation. \"Lorem ipsum\" also approximates a typical distribution of letters in English.In publishing and graphic design, lorem ipsum is common placeholder text used to demonstrate the graphic elements of a document or visual presentation, such as web pages, typography, and graphical layout. It is a form of \"greeking\".\r\n\r\nEven though using \"lorem ipsum\" often arouses curiosity due to its resemblance to classical Latin, it is not intended to have meaning. Where text is visible in a document, people tend to focus on the textual content rather than upon overall presentation, so publishers use lorem ipsum when displaying a typeface or design in order to direct the focus to presentation. \"Lorem ipsum\" also approximates a typical distribution of letters in English. ', '11.jpg ', 6, '2018-08-02'),
(9, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years o', 'to demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate t\r\nContrary to', 'to demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate tto demonstrate t ', '10.jpg ', 3, '2018-08-02'),
(10, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years o', 'wdnjndwjk', 'wjdiqwkd ', '3.jpg ', 1, '2018-08-02'),
(11, 'there are a lot of environmental issues', 'Our Mother Earth is currently facing lot of environmental concerns. The environmental problems like global warming, acid rain, air pollution, urban', 'Our Mother Earth is currently facing lot of environmental concerns. The environmental problems like global warming, acid rain, air pollution, urban sprawl, waste disposal, ozone layer depletion, water pollution, climate change and many more affect every human, animal and nation on this planet. Over the last few decades, the exploitation of our planet and degradation of our environment have  gone up at an alarming rate. As our actions have been not in favor of protecting this planet, we have seen natural disasters striking us more often in the form of flash floods, tsunamis and cyclones. ', '1.jpg ', 4, '2018-08-02'),
(12, 'wqjdnjqwnd', 'wndkwndnwdn', 'wdbjwbdjw ', '1533226833.jpg ', 1, '2018-08-02'),
(13, 'nuture', 'content from clients can often be a frustrating process), and is used in place o', 'content from clients can often be a frustrating process), and is used in place of meaningful content during the design phase.With roots in classical Latin literature, lorem ipsum has ', '1533226940.jpg ', 6, '2018-08-02'),
(14, 'again test', 'about something', 'just testing ', '1533228447.jpg ', 1, '2018-08-02'),
(15, 'jnwjnjnwdfjnwjd', 'djndnkq', 'dnqjkdnqndk ', '1533230014.jpg ', 4, '2018-08-02'),
(16, 'The Minions are small, yellow henchmen', 'The Minions are small, yellow henchmen', 'The Minions are small, yellow henchmen ', '1533288851.jpg ', 1, '2018-08-03'),
(17, 'nwkwnk', 'nkwnfknw', 'kwnkwn ', '1533292357.jpg ', 4, '2018-08-03'),
(18, 'efnkefenf', 'ejkfenknfkf', 'ebjbefkefnk ', '1533302618.jpg ', 4, '2018-08-03'),
(19, 'kjn3rk3nrk3nrkn3rk3nkr', '3fk3nr3nrk3nrk', '3nk3nkn3krn3k ', '1533308473.jpg ', 4, '2018-08-03'),
(20, 'hbhjb', 'bj', 'bjbj ', '1533384524.jpg ', 1, '2018-08-04'),
(21, 'Õ¸Õ°Õ«Õ°ÕµÕ¸Õ«Ö†Õ°', 'Õ¸Ö†Õ¶Õ¯Õ¶Õ¸Ö†', 'Õ¸Õ¶Ö†Õ¯Õ¸Õ¶Ö† ', '1533385236.jpg ', 6, '2018-08-04'),
(22, 'nbdjknwkdnkw', 'Õ¶Õ¸ÕµÕ¤Õ¶Õ¸Õ¯Õ¤Õ¶Õ¸Õ¯Õ¤Õ¶Õ¯Õ¸Õ¶Õ¤', 'Ñ‚Ð¾Ñ†Ñ‚Ð²Ð»Ñ†Ð²Ð» ', '1533386097.jpg ', 3, '2018-08-04'),
(23, 'wdnkwndk', 'djqbdjqbdj', 'wnkdnwkln ', '1533386524.jpg ', 6, '2018-08-04'),
(24, 'djwnfkwnfk', 'wnfklnwflwnfl', 'wldmwlfmwl ', '1533386744.jpg ', 5, '2018-08-04'),
(25, 'Õ¸Õ¶Õ¯Õ¤Õ¸Õ¯Õ¤', 'Õ¸ Õ¤Õ¢Õ¸ÕµÕ¢Õ¤Õµ', 'Õ¸Õ¤Õ¶Õ¯Õ¶Õ¸Õ¤ ', '1533387511.jpg ', 4, '2018-08-04'),
(26, 'Õ¶Õ¯Õ¸Õ¶Ö†Õ¯Õ¸Ö†', 'Õ¸ÕµÕ¯Õ¢Ö†Õ¯', 'Õ¸Õ¶Õ¤Õ¯Õ¶Õ¸Ö† ', '1533387600.jpg ', 1, '2018-08-04'),
(27, 'Õ¶Õ¯Õ¤Õ¶Õ¸Õ¯Õ¤Ö†Õ¶Õ¯', 'Õ¶Õ¸Õ¯Õ¶Ö†Õ¯Õ¸Õ¶', 'Õ¸Õ¶Õ¤Õ¯Õ¸Õ¶Õ¤Õ¯ ', '1533387816.jpg ', 5, '2018-08-04'),
(28, 'nejfnkefn', 'bjwjdf', 'w dkwnfdk ', '1533387863.jpg ', 6, '2018-08-04'),
(29, 'Ñ‚Ð¾Ñ†', 'Ñ†Ð²Ð¾Ð»Ñ†Ð¸Ð²Ð»', 'Ñ†Ñ‚Ð²Ð°Ð»Ñ†Ð° ', '1533387880.jpg ', 1, '2018-08-04'),
(30, 'Ð¸Ñ†Ð²Ð¾Ð¸Ñ†Ð²Ð¾Ð¸Ð¾', 'wbdjwd', 'bdjwbdjwbdjbwj ', '1533387955.jpg ', 6, '2018-08-04'),
(31, 'Õ¢ÕµÕ¸Õ¤Õ¢Õ¸Õ¤ÕµÕ¢Õ¤Õ¸Õµ', 'Õ¤Õ¸Õ¶Õ¯Õ¤Õ¶Õ¯', 'Õ¤Õ¸Õ¯Õ¤Õ¶Õ¯ ', '1533388215.jpg ', 1, '2018-08-04'),
(32, 'fekjnfkefnk', 'dfjefjefbjef', 'ejfebfbjbjbjbj ', '1533398401.jpg ', 4, '2018-08-04'),
(33, 'ecjecje', 'hkcrhkc', 'chjehcjehcj ', '1533453359.jpg ', 4, '2018-08-05'),
(34, 'dwkdkwndk', 'nfkwnf', 'wnknwkdfn ', '1533537201.jpg ', 1, '2018-08-06'),
(35, 'wfjwfj', 'fjfjwfbw', 'wjfwnjfkn ', '1533545760.jpg ', 1, '2018-08-06'),
(36, 'qsbjqbdsj', 'wdbjwdjwb', 'wdkwbdkw ', '1533547802.jpg ', 1, '2018-08-06'),
(37, 'vjhjbj', 'bvjjbj', 'bjbjj ', '1533556416.jpg ', 4, '2018-08-06'),
(38, 'vjhjbj', 'bvjjbj', 'bjbjj ', '1533556417.jpg ', 4, '2018-08-06'),
(39, 'qdjdqd', 'dqbdj', 'dhjbqbdq ', '1533559864.jpg ', 3, '2018-08-06'),
(40, 'wdfwkfnnfkfnk', 'wnkfwnfk', 'wknkfnk ', '1533632470.jpg ', 4, '2018-08-07');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `f_name` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `l_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
