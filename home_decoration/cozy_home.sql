-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Авг 06 2018 г., 12:44
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cozy_home`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `rate` int(1) NOT NULL,
  `date_uploud` datetime NOT NULL,
  `text_comment` text NOT NULL,
  `id_news` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `date_publication` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `caption`, `image`, `text`, `date_publication`) VALUES
(1, 'Цветы в интерьере', 'img/news/flow_bottles.jpg', '   Расставьте по дому букеты из полевых и садовых цветов, сухоцветов, веток облепихи, бузины, рябины. Вместо ваз используйте стеклянные банки или бутылки из-под вина, выкрашенные в одинаковый цвет. \r\n\r\n   Цветы в бутылках являются оригинальным украшением интерьера. А если вы любитель специй, заведите себе горшочек со свежими травами. На подоконнике можно вырастить мяту, мелиссу, базилик, петрушку, укроп. Зелень освежит интерьер вашей кухни и добавит новый вкус привычным блюдам.', '2018-08-16'),
(2, 'Уют в деталях. Важность диванных подушек', 'img/news/pillows.jpg', 'Для гостинной всегда можно придумать множество решений придания уюта. Изменение основного декора, добавление теплого освещения, милый ручной декор. Вот тут то и наша остановочка. Самый простой способ добавить уют - сделать своими руками диванные подушки, ведь они добавляют изюминку интерьеру и являются символом уюта. А ручная работа всегда выделяется, выглядит по домашнему и радует домочадцев. Изобилие цветов, форм и размеров подушек важная составляющая создания комфорта и красоты Вашего дома. Подушки можно создать заново, а можно зделать необычный чехол для готовой подушки. Первый вариант немного сложней, но интересней в плане создания формы подушки. Второй - проще, ведь можно сделать наружную часть даже из старой футболки, и с помощью ножниц. Никакого шитья, а дизайн подушки уже уникальный.', '2018-08-17'),
(3, 'Если уют, то камин', 'img/news/4987kamin.jpg', 'Как художника невозможно представить без кистей, так и гостиная без камина совсем не та. Что может быть уютнее тихого потрескивания поленьев, запаха древесины, еловых веток и шишек, искрящихся за печной заслонкой! Какое умиротворение, какой покой охватывает человека в такие моменты! Согласитесь, ведь приятно после тяжелого рабочего дня присесть в кресло, укрыться пледом, заварить вкуснейший чай и завороженно любоваться огнем. Можно смело сказать, что камин — это своеобразное «сердце» гостиной. Если вы все же сомневаетесь в том, устанавливать ли вам камин, то наш ответ однозначен: «Да!» Ведь данный предмет интерьера является носителем уюта, теплоты и комфорта. Важно помнить, что настоящий каменный камин возможно установить только в частном доме, но и здесь есть выход. На современном рынке уже довольно давно представлена линейка электрических каминов для дома, которые совершенно безопасны и подойдут как для частного, так и многоквартирного дома. А это значит, что абсолютно в любых условиях можно наслаждаться уютом, символом которого является камин.', '2018-08-18'),
(4, 'Уют на полу, или \"Как приятно ходить босиком...\"', 'img/news/8119kover.jpg', 'Мода на ковры в доме не проходит ни в какие времена — меняется лишь оттенок-фаворит, размер и форма изделия. \r\nКовёр в первую очередь ассоциируется с гармонией, и всегда способны создать уютную атмосферу в любом помещении, поэтому их наличие очень желательно.\r\nКовры хорошо сочетаются с текстилем в интерьере: шторы, мебель, цвет стен, например, очень важны в подборе ковра. Если он будет в тех же тонах или оттенках, то общее сочетание декора и обстановки будет приятным глазу. Дизайн ковра бывает пёстрым, разноцветным и «активным». Выбор зависит от того, на чём вы хотите сделать акцент, нужно оживить интерьер или, наоборот, приглушить его яркость.\r\nСчитается полезным располагать круглые ковры в гостиной или спальне, они принесут дому спокойствие и благополучие. Выбирать нужно, отталкиваясь от цветовой гаммы комнаты.', '2018-08-19'),
(5, 'Cоздаем уютный уголок. Предметы декора.', 'img/news/678283.jpg', 'Украсить стены квартиры или дома таким образом, чтобы превратить  свой дом в стильное, красивое и уютное место для жизни вполне решаемая задача. \r\nСтарые фото, увеличенные, вирированные, или обработанные в фотошопе различными эффектами, журнальные фотографии, вставленные в рамки, все это с успехом  может  заменить дорогие произведения искусства.\r\nЕсли композиция будет состоять из нескольких картин, можно использовать вариант с воображаемой осью композиции. Ось может быть ветрикальной, горизонтальной или наклонной. Такая ось может быть набором картин одного размера или приблизительно одного размера и одинаковых рамок. Или в одинаковой цветовой гамме.\r\nС помощью композиции из картин и фотографий можно создать уютный уголок в гостиной или с помощью такой композиции разграничить пространство.', '2018-08-20'),
(6, 'Ароматы для Вашего дома', 'img/news/7053aromat.jpg', 'Уют дома складывается из мелочей. \r\nРоль ароматов в жизни современного человека невозможно недооценивать.\r\nЗапахи -\r\n это то, что дает возможность почувствовать уют, даже закрыв глаза.\r\nСейчас для потребителя есть огромный выбор ароматов для дома в различных вариациях: ароматические свечи, диффузоры, парфюмерные палочки, саше, спреи для белья, нейтрализаторы запахов, аромалампы и масла.\r\n\r\nОдну из самых серьезных сегодня проблем современного трудящегося — постоянную усталость и переутомляемость — помогут снять аромамасла солнечных бергамота, апельсина, лимона, грейпфрута и уравновешивающие, успокаивающие запахи лаванды, мяты, ладана, мирры, розмарина и эвкалипта.\r\n', '2018-08-21'),
(7, 'Таинственный танец огня...', 'img/news/6363orig.jpg', 'Свечи, являются источником тепла, света и энергии. Это самый простой способ сделать обычный вечер чуть романтичнее и наполнить воздух лёгким ароматом. Плюс огромнейший выбор позволяет найти свечи любых форм, размеров и цветов. Это стильный и очень красивый элемент декора, который сделает любой интерьер по-настоящему атмосферным. Стоит добавить лишь пару свечей, и помещение мгновенно преобразится, наполнится романтикой и радостью, подарит успокоение после тяжелого трудового дня. Зажгите ароматическую свечу, и ваш дом наполнится ароматом трав и цветов, нотами пряностей и древесины, а может быть запахами шампанского или десертов.\r\nВо все времена зажжённая свеча служила людям не только источником освещения, но и символом некоего таинства.Плямя свечи было эмблемой надежды, жизни, правды, мудрости и любви к Богу.\r\nКак бы там нибыло, но современный человек тысяча раз прав, украшая своё жилище маленькими источниками тепла и радости.', '2018-08-22'),
(8, 'Тепленький, мягенький плед. Ммм..', 'img/news/7422670963141-dorine.jpg', 'Плед всегда ассоциируется с уютом и домашним теплом, без которого нельзя представить ни один дом. Прохладным вечером, закутавшись в теплый плед, вы ощутите полный покой и комфорт, сидя в любимом кресле с книгой или перед телевизором. Или закутав ноги пледом, пить чай на террасе и любоваться закатом!\r\n\r\nВыбирая плед, мы чаще всего обращаем внимание на дизайн и мягкость изделия и практически не смотрим на его состав. Но ведь именно материал, из которого изготовлен плед, определяет его качество. Плед может быть изготовлен из синтетических и натуральных волокон, а также из комбинации этих материалов.\r\n\r\nПлед из хлопка очень легкий, воздушный, достаточно прочный, не портится от частых стирок, хорошо подходит для теплого времени года. Это идеальный вариант для людей, страдающих аллергическими заболеваниями и маленьких детей.\r\n\r\nНо плед из чистого хлопка быстро изнашивается, поэтому хлопок часто комбинируют с искусственным акрилом, что позволяет получить более износостойкую ткань. При правильном уходе такой плед прослужит долгое время.\r\n\r\nПлед является прекрасным дополнением вашего интерьера, но не его центральным элементом. Поэтому выбирать плед необходимо с учетом цветовой гаммы, текстиля и мебели. Вся жилая обстановка должна идеально гармонировать между собой.', '2018-08-23'),
(9, 'Цвета. Важность цветовой гаммы в декоре', 'img/news/5616watermarked-2_1732.jpg', '  Цвета интерьера – это то, что придает помещению дух, настроение.\r\n\r\n  Общая комната (гостиная) в квартире, является местом постоянного пребывания членов семьи с целью отдыха, поэтому дизайн помещения гостиной в целом и ее цветовое решение в частности должны быть ясными, спокойными, способствующими хорошему настроению. В зависимости от ориентации здесь могут быть использованы золотистые, желто-зеленые, серо-голубые, серо-зеленые и другие теплые и холодные цвета малой и средней насыщенности.\r\n\r\nРазрабатывая дизайн помещения спальни, важно создать атмосферу полного спокойствия. Ей отвечают теплые спокойные, достаточно разбеленные желтые и голубые тона. Если же дизайном данного помещения предусмотрено и рабочее место для занятий, то рекомендуются светлые серо-зеленые, серо-голубые и другие нейтральные цвета, способствующие сосредоточенному умственному труду.\r\n\r\n  Задумывая дизайн помещения детской комнаты, где дети дошкольного и младшего школьного возраста спят, играют и занимаются, позаботьтесь о создании радостной атмосферы, стимулирующей жизнедеятельность детей. Следует учитывать, что в раннем возрасте дети любят красный и оранжевый цвета, в школьном — голубой и зеленый.\r\n\r\n  Прихожая — помещение ограниченных размеров, узкое, тесноватое. Кроме того здесь не хватает дневного света. Для зрительной корректировки этих недостатков стены прихожей решаются в светлых тонах.\r\n\r\n  Дизайн помещения кухни обычно строится на светлых тонах, что дает возможность поддерживать ее в надлежащем санитарном состоянии. Наиболее желательными для кухни цветами стен являются разбеленный голубой или сине-зеленый, создающие впечатление прохлады и простора.При этом мебель должна быть ярких цветов, теплых оттенков, для того, чтобы вызывать аппетит. Ярко-зеленый, оранжевый, желтый, красный. ', '2018-08-24');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_news` (`id_news`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;