-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 30, 2021 lúc 08:08 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kaopiz`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_menu` int(1) DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `cate_name`, `slug`, `show_menu`, `desc`, `created_at`, `updated_at`, `created_by`) VALUES
(4, 'blazer', NULL, 1, NULL, NULL, NULL, -1),
(5, 'sweatshirt', NULL, 1, NULL, NULL, NULL, -1),
(6, 'Dress', NULL, 1, NULL, NULL, NULL, -1),
(7, 'backpack', NULL, 1, NULL, NULL, NULL, -1),
(18, 'blackpink', NULL, 1, '', '2021-02-25 22:55:38', '2021-02-25 22:55:38', -1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `payment_method` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` float NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoices`
--

INSERT INTO `invoices` (`id`, `customer_name`, `customer_phone_number`, `customer_email`, `customer_address`, `total_price`, `payment_method`, `created_at`, `updated_at`, `image`, `action`) VALUES
(9, 'Manh Vu Huu', '0975999666', 'vumanh@gmail.com', 'HN', 23, 3, NULL, NULL, 0, '1'),
(12, 'Vu Huu Manh', '0987654321', 'admin@gmail.com', 'VN', 3, 21, '2021-01-22 05:57:58', '2021-01-22 05:57:58', 0, '1'),
(13, 'Vu Huu Manh', '0987632131', 'admin@gmail.com', 'VN', 2, 4, '2021-01-22 05:58:17', '2021-01-22 06:12:18', 0, '1'),
(16, 'Manh Vu', '123456789', NULL, 'HN', 0, 1, '2021-03-04 21:52:24', '2021-03-04 21:52:24', 0, ''),
(17, 'Manh Vu', '123456789', NULL, 'HN', 0, 1, '2021-03-04 21:53:49', '2021-03-04 21:53:49', 0, ''),
(18, 'Manh Vu', '123456789', NULL, 'HHH', 0, 1, '2021-03-04 21:55:50', '2021-03-04 21:55:50', 0, ''),
(19, 'Manh Vu', '123456789', NULL, 'NA', 0, 1, '2021-03-04 22:01:39', '2021-03-04 22:01:39', 0, ''),
(20, 'Manh Vu', '123456789', NULL, '', 0, 1, '2021-07-16 11:38:33', '2021-07-16 11:38:33', 0, ''),
(21, 'Manh Vu', '123456789', NULL, '123', 0, 1, '2021-07-19 23:09:23', '2021-07-19 23:09:23', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_detail`
--

INSERT INTO `invoice_detail` (`invoice_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(5, 96, 1, 39837, NULL, NULL),
(5, 97, 1, 2573, NULL, NULL),
(6, 89, 2, 68613, NULL, NULL),
(6, 96, 1, 39837, NULL, NULL),
(16, 201, 1, 848, '2021-03-04 21:52:24', '2021-03-04 21:52:24'),
(16, 208, 1, 1474, '2021-03-04 21:52:24', '2021-03-04 21:52:24'),
(17, 201, 1, 848, '2021-03-04 21:53:49', '2021-03-04 21:53:49'),
(17, 208, 1, 1474, '2021-03-04 21:53:49', '2021-03-04 21:53:49'),
(18, 201, 1, 848, '2021-03-04 21:55:50', '2021-03-04 21:55:50'),
(18, 208, 1, 1474, '2021-03-04 21:55:50', '2021-03-04 21:55:50'),
(19, 201, 1, 848, '2021-03-04 22:01:39', '2021-03-04 22:01:39'),
(19, 208, 1, 1474, '2021-03-04 22:01:39', '2021-03-04 22:01:39'),
(20, 300, 1, 2976, '2021-07-16 11:38:33', '2021-07-16 11:38:33'),
(21, 201, 1, 848, '2021-07-19 23:09:24', '2021-07-19 23:09:24'),
(21, 361, 1, 40000, '2021-07-19 23:09:24', '2021-07-19 23:09:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_05_070735_create_categories_table', 2),
(5, '2019_01_05_072544_alter_table_categories_update_column', 3),
(6, '2019_01_05_074643_create_products_table', 3),
(7, '2019_01_05_075227_create_invoices_table', 4),
(8, '2019_01_05_075449_create_invoice_detail_table', 4),
(9, '2019_01_12_014833_alter_table_products_add_views_column', 5),
(10, '2019_01_12_021523_create_table_product_galleries', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL DEFAULT 0,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `cate_id`, `price`, `short_desc`, `detail`, `star`, `created_at`, `updated_at`, `views`) VALUES
(201, 'Feil-Bernhard', 'http://picsum.photos/640/480/', 5, 848, 'English!\' said the Eaglet. \'I don\'t know what a Mock Turtle is.\' \'It\'s the thing Mock Turtle Soup is made from,\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice loudly. \'The idea of having the sentence first!\' \'Hold your tongue!\' added the Gryphon, before Alice could speak again. The Mock Turtle sighed deeply, and began, in a low, trembling voice. \'There\'s.', 'Queen. An invitation for the Duchess to play croquet.\' The Frog-Footman repeated, in the same solemn tone, only changing the order of the words a little, \'From the Queen. An invitation for the Duchess to play croquet.\' The Frog-Footman repeated, in the same solemn tone, only changing the order of the words a little, \'From the Queen. An invitation for the Duchess to play croquet.\' The.', 5.00, NULL, NULL, 299),
(202, 'Terry, Roberts and Harber', 'http://picsum.photos/640/480/', 7, 569, 'Mock Turtle persisted. \'How COULD he turn them out with his nose, you know?\' \'It\'s the first position in dancing.\' Alice said; but was dreadfully puzzled by the whole thing, and longed to change the subject. \'Go on with the next verse.\' \'But about his toes?\' the Mock Turtle in a tone of the deepest contempt. \'I\'ve seen a good many little girls in my time, but never ONE with such a puzzled.', 'Why, there\'s hardly enough of me left to make ONE respectable person!\' Soon her eye fell on a little glass box that was lying under the table: she opened it, and found in it a very small cake, on which the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice, (she had grown so large in the last few minutes, and began talking to herself, as she wandered about in the.', 5.00, NULL, NULL, 2081),
(208, 'West, Champlin and Kling', 'http://picsum.photos/640/480/', 7, 1474, 'ME,\' but nevertheless she uncorked it and put it to her lips. \'I know SOMETHING interesting is sure to happen,\' she said to herself, \'it would have made a dreadfully ugly child: but it makes rather a handsome pig, I think.\' And she began thinking over other children she knew, who might do very well as pigs, and was just saying to herself, in a dreamy sort of way, \'Do cats eat bats? Do cats eat.', 'First, however, she waited for a few minutes it seemed quite natural to Alice to find herself talking familiarly with them, as if she had asked it aloud; and in another moment that it was a very difficult question. However, at last she spread out her hand again, and made another snatch in the air. Even the Duchess sneezed occasionally; and as for the baby, it was sneezing and howling alternately.', 4.00, NULL, NULL, 1787),
(216, 'Lockman, Gislason and Davis', 'http://picsum.photos/640/480/', 7, 1298, 'Alice: \'she\'s so extremely--\' Just then she heard something splashing about in the pool, \'and she sits purring so nicely by the fire, licking her paws and washing her face--and she is such a nice soft thing to nurse--and she\'s such a capital one for catching mice--oh, I beg your pardon!\' cried Alice hastily, afraid that she had hurt the poor animal\'s feelings. \'I quite forgot you didn\'t like.', 'The three soldiers wandered about for a minute or two. \'They couldn\'t have done that, you know,\' Alice gently remarked; \'they\'d have been ill.\' \'So they were,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, that she was quite surprised to find quite a large crowd collected round it: there was a dispute going on between the executioner, the King, and the Queen, who was.', 4.00, NULL, NULL, 2192),
(218, 'Stanton, Swaniawski and Balistreri', 'http://picsum.photos/640/480/', 7, 1467, 'The first question of course was, how to get dry again: they had a consultation about this, and after a few minutes it seemed quite dull and stupid for life to go on in the common way. So she set to work, and very soon found an opportunity of taking it away. She did it so quickly that the poor little thing sobbed again (or grunted, it was impossible to say whether the blows hurt it or not. \'Oh.', 'See how eagerly the lobsters and the turtles all advance! They are waiting on the shingle--will you come and join the dance? \"You can really have no notion how delightful it will be When they take us up and throw us, with the lobsters, out to sea!\" But the snail replied \"Too far, too far!\" and gave a look askance-- Said he thanked the whiting kindly, but he would not join the dance. Would not.', 4.00, NULL, NULL, 684),
(219, 'Swaniawski, Rice and Kunde', 'http://picsum.photos/640/480/', 6, 262, 'Dormouse is asleep again,\' said the Hatter, and he poured a little hot tea upon its nose. The Dormouse shook its head impatiently, and said, without opening its eyes, \'Of course, of course; just what I was going to give the hedgehog a blow with its head, it WOULD twist itself round and look up in a great hurry, muttering to himself as he came, \'Oh! the Duchess, the Duchess! Oh! won\'t she be.', 'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, as she couldn\'t answer either question, it didn\'t much matter which way you go,\' said the Cat. \'I said pig,\' replied Alice; \'and I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Cat; and this time it vanished quite slowly, beginning with the end of half an hour or so.', 3.00, NULL, NULL, 2120),
(220, 'Auer Ltd', 'http://picsum.photos/640/480/', 7, 1308, 'March, I think it was,\' he said. \'Fifteenth,\' said the March Hare. The Hatter was the only one who got any advantage from the change: and Alice was a good deal to ME,\' said Alice hastily; \'but I\'m not looking for eggs, as it happens; and if I was, I shouldn\'t want YOURS: I don\'t like it, yer honour, at all, at all!\' \'Do as I tell you, you coward!\' and at last she spread out her hand again, and.', 'Alice thought), and it said in a hoarse growl, \'the world would go round a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, who was a very difficult game indeed. The players all played at once without waiting for turns, quarrelling all the while, and fighting for the hedgehogs; and in a very respectful tone, but frowning and making faces at him as he spoke. \'A cat may.', 2.00, NULL, NULL, 426),
(222, 'Osinski-McClure', 'http://picsum.photos/640/480/', 7, 2770, 'Alice guessed who it was, even before she got into the court, arm-in-arm with the Dormouse. \'Fourteenth of March, I think it was,\' he said. \'Fifteenth,\' said the March Hare. \'I didn\'t know it was YOUR table,\' said Alice; \'it\'s laid for a great many more than three.\' \'Your hair wants cutting,\' said the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to have no sort of use in.', 'Some of the jury wrote it down \'important,\' and some \'unimportant.\' Alice could see this, as she was shrinking rapidly; so she set to work throwing everything within her reach at the Duchess and the baby--the fire-irons came first; then followed a shower of little pebbles came rattling in at the door-- Pray, what is the use of a book,\' thought Alice \'without pictures or conversations?\' So she.', 2.00, NULL, NULL, 1104),
(225, 'Krajcik, Reilly and Satterfield', 'http://picsum.photos/640/480/', 4, 535, 'Number One,\' said Alice. The King turned pale, and shut his eyes.--\'Tell her about the reason and all that,\' he said to the jury, in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen, stamping on the ground near the door, staring stupidly up into the air, and came flying down upon her: she gave a little scream of laughter. \'Oh, hush!\' the Rabbit whispered in a frightened tone.', 'The first question of course was, how to get dry again: they had a consultation about this, and after a minute or two, it was as much as she could not help bursting out laughing: and when she went back to the game, the Queen merely remarking that a moment\'s delay would cost them their lives. All the time they were playing the Queen never left off staring at the Hatter, and, just as the Dormouse.', 1.00, NULL, NULL, 1063),
(226, 'Denesik PLC', 'http://picsum.photos/640/480/', 5, 2324, 'Dodo solemnly, rising to its feet, \'I move that the meeting adjourn, for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the Eaglet. \'I don\'t know where Dinn may be,\' said the Cat, \'or you wouldn\'t have come here.\' Alice didn\'t think that proved it at all; however, she went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t bother ME,\' said the.', 'BEST butter, you know.\' Alice had been looking over his shoulder with some curiosity. \'What a funny watch!\' she remarked. \'It tells the day of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course not,\' said the Mock Turtle. \'She can\'t explain it,\' said Alice, (she had grown so large in the last few minutes.', 2.00, NULL, NULL, 1262),
(227, 'Durgan LLC', 'http://picsum.photos/640/480/', 7, 1691, 'I suppose you\'ll be telling me next that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, looking down with wonder at the Mouse\'s tail; \'but why do you call it sad?\' And she kept on puzzling about it while the Mouse was bristling all over, and she felt that it ought to be a LITTLE larger, sir, if you wouldn\'t mind,\' said Alice: \'three inches is such a dear quiet thing,\'.', 'Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on your head-- Do you think, at your age, it is right?\' \'In my youth,\' said his father, \'I took to the law, And argued each case with my wife; And the muscular strength, which it gave to my jaw, Has lasted the rest of it had gone. \'Well! I\'ve often seen a cat without a grin,\' thought Alice.', 5.00, NULL, NULL, 2920),
(242, 'Abernathy LLC', 'http://picsum.photos/640/480/', 5, 2822, 'SHE, of course,\' said the Dodo, \'the best way to explain it is to do it.\' (And, as you might like to try the patience of an oyster!\' \'I wish I hadn\'t cried so much!\' said Alice, as she went hunting about, and called out to her in an angry tone, \'Why, Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a pair of gloves and a fan! Quick, now!\' And Alice was so much frightened.', 'Alice again, for this time the Mouse was speaking, so that her idea of the tale was something like this:-- \'Fury said to a mouse, That he met in the kitchen. \'When I\'M a Duchess,\' she said to herself \'It\'s the Cheshire Cat: now I shall have somebody to talk to.\' \'How are you getting on?\' said the Cat, \'if you only walk long enough.\' Alice felt that this could not be denied, so she tried another.', 5.00, NULL, NULL, 560),
(245, 'West, Goodwin and Hackett', 'http://picsum.photos/640/480/', 6, 2665, 'Alice \'without pictures or conversations?\' So she was considering in her own mind (as well as she could do, lying down on one side, to look through into the garden at once; but, alas for poor Alice! when she got to the part about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'all I know is, it would feel very queer.', 'Hatter. \'You MUST remember,\' remarked the King, \'or I\'ll have you executed on the spot.\' This did not seem to encourage the witness at all: he kept shifting from one foot to the other, saying, in a solemn tone, \'For the Duchess. An invitation from the Queen to play croquet.\' Then they both bowed low, and their curls got entangled together. Alice laughed so much at this, that she had to run back.', 1.00, NULL, NULL, 626),
(251, 'Reynolds, Lynch and Hammes', 'http://picsum.photos/640/480/', 6, 1556, 'Mock Turtle would be so kind,\' Alice replied, so eagerly that the Gryphon said, in a rather offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, old fellow?\' The Mock Turtle went on, \'you see, a dog growls when it\'s angry, and wags its tail when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not.', 'Mouse in the middle. Alice kept her eyes anxiously fixed on it, for she felt very lonely and low-spirited. In a little while, however, she again heard a little pattering of feet on the stairs. Alice knew it was the first to break the silence. \'What day of the month is it?\' he said, turning to Alice again. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\'.', 5.00, NULL, NULL, 1689),
(256, 'Greenholt, Leuschke and Tromp', 'http://picsum.photos/640/480/', 6, 131, 'But her sister sat still just as she left her, leaning her head on her hand, watching the setting sun, and thinking of little Alice herself, and once again the tiny hands were clasped upon her knee, and the bright eager eyes were looking up into hers--she could hear the rattle of the teacups as the March Hare said to Alice, \'Have you seen the Mock Turtle angrily: \'really you are very dull!\' \'You.', 'It\'s HIM.\' \'I don\'t know what to say to this: so she helped herself to some tea and bread-and-butter, and then turned to the Mock Turtle, suddenly dropping his voice; and the two creatures, who had been jumping about like mad things all this time, sat down again in a ring, and begged the Mouse to tell them something more. \'You promised to tell me who YOU are, first.\' \'Why?\' said the Caterpillar.', 5.00, NULL, NULL, 841),
(257, 'Witting, Mueller and Schaden', 'http://picsum.photos/640/480/', 6, 615, 'I am! But I\'d better take him his fan and gloves--that is, if I can find them.\' As she said these words her foot slipped, and in another moment, splash! she was up to her head, she tried to look down and make out what it was: at first she thought it must be removed,\' said the King in a very humble tone, going down on one knee as he spoke, \'we were trying--\' \'I see!\' said the Queen, \'and he shall.', 'Queen. \'Their heads are gone, if it please your Majesty,\' said the White Rabbit, \'and that\'s the queerest thing about it.\' (The jury all looked puzzled.) \'He must have imitated somebody else\'s hand,\' said the King. \'When did you begin?\' The Hatter looked at the March Hare,) \'--it was at the great concert given by the Queen of Hearts, she made some tarts, All on a summer day: The Knave of Hearts.', 4.00, NULL, NULL, 2738),
(263, 'Turner-Hettinger', 'http://picsum.photos/640/480/', 5, 2892, 'Elsie, Lacie, and Tillie; and they lived at the bottom of a well?\' The Dormouse again took a minute or two, and the game began. Alice thought she had never forgotten that, if you drink much from a bottle marked \'poison,\' it is almost certain to disagree with you, sooner or later. However, this bottle was NOT marked \'poison,\' so Alice ventured to remark. \'Tut, tut, child!\' said the Duchess.', 'King, \'and don\'t look at me like a Jack-in-the-box, and up I goes like a sky-rocket!\' \'So you did, old fellow!\' said the others. \'We must burn the house down!\' said the Rabbit\'s voice; and Alice called out as loud as she could, \'If you do. I\'ll set Dinah at you!\' There was a general clapping of hands at this: it was the Rabbit coming to look for her, and she trembled till she shook the house.', 1.00, NULL, NULL, 506),
(268, 'Franecki Ltd', 'http://picsum.photos/640/480/', 6, 546, 'That your eye was as steady as ever; Yet you balanced an eel on the end of the trial.\' \'Stupid things!\' Alice began in a loud, indignant voice, but she stopped hastily, for the White Rabbit as he fumbled over the list, feeling very curious to see what was on the top of her voice. Nobody moved. \'Who cares for you?\' said Alice, (she had grown to her full size by this time.) \'You\'re nothing but a.', 'I am so VERY tired of being all alone here!\' As she said these words her foot slipped, and in another moment that it was addressed to the baby, and not to her, so she took courage, and went on again:-- \'You may not have lived much under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were never even introduced to a lobster--\' (Alice began to say \'I once tasted--\' but checked herself.', 3.00, NULL, NULL, 569),
(270, 'Dare-Senger', 'http://picsum.photos/640/480/', 7, 477, 'Alice waited till the eyes appeared, and then Alice put down her flamingo, and began an account of the game, feeling very glad she had someone to listen to her, still it was very like having a game of croquet she was playing against herself, for this curious child was very fond of pretending to be two people! Why, there\'s hardly room for YOU, and no room at all for any lesson-books!\' And so she.', 'I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; don\'t be particular--Here, Bill! catch hold of this rope--Will the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I.', 2.00, NULL, NULL, 275),
(272, 'Christiansen, Reinger and Rolfson', 'http://picsum.photos/640/480/', 4, 1974, 'Adventures of hers that you have just been reading about; and when she went back to the table, half hoping she might find another key on it, or at any rate it would not open any of them. \'I\'m sure I\'m not Ada,\' she said, \'for her hair goes in such long ringlets, and mine doesn\'t go in ringlets at all; and I\'m sure she\'s the best cat in the world! Oh, my dear Dinah! I wonder if I shall fall right.', 'Dodo solemnly, rising to its feet, \'I move that the meeting adjourn, for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the Eaglet. \'I don\'t know of any that do,\' Alice said very politely, \'if I had it written down: but I can\'t quite follow it as you go on? It\'s by far the most confusing thing I ever saw in my life!\' She had not gone (We know it to be managed? I.', 3.00, NULL, NULL, 1675),
(274, 'Auer and Sons', 'http://picsum.photos/640/480/', 5, 2759, 'As there seemed to be talking in his sleep, \'that \"I breathe when I sleep\" is the same thing as \"I get what I like\"!\' \'You might just as well say that \"I see what I eat\" is the same thing as \"I get what I like\"!\' \'You might just as well say,\' added the March Hare, \'that \"I like what I get\" is the same thing with you,\' said the Hatter, \'when the Queen jumped up and bawled out, \"He\'s murdering the.', 'There was a long silence after this, and Alice could only hear whispers now and then; such as, \'Sure, I don\'t like them raw.\' \'Well, be off, then!\' said the Pigeon in a sulky tone, as it settled down again into its nest. Alice crouched down among the trees as well as the whole pack rose up into the roof of the hall: in fact she was now about a thousand times as large as the Rabbit, and had no.', 2.00, NULL, NULL, 811),
(277, 'Quitzon, Lind and Jaskolski', 'http://picsum.photos/640/480/', 7, 562, 'Mock Turtle a little anxiously. \'Yes,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Mock Turtle, \'but if you\'ve seen them so often, of course you know what they\'re like.\' \'I believe so,\' Alice replied thoughtfully. \'They have their tails in their mouths--and they\'re all over crumbs.\' \'You\'re wrong about the crumbs,\' said the Mock Turtle. \'Very much indeed,\' said Alice.', 'Dormouse; \'VERY ill.\' Alice tried to fancy to herself what such an extraordinary ways of living would be like, \'--for they haven\'t got much evidence YET,\' she said to herself; \'the March Hare will be much the most interesting, and perhaps as this is May it won\'t be raving mad--at least not so mad as it was a little nervous about this; \'for it might end, you know,\' said Alice to herself, as.', 5.00, NULL, NULL, 1528),
(278, 'Kuhn-Bruen', 'http://picsum.photos/640/480/', 6, 2003, 'Alice could only hear whispers now and then; such as, \'Sure, I don\'t like them raw.\' \'Well, be off, then!\' said the Pigeon in a sulky tone, as it settled down again into its nest. Alice crouched down among the trees as well as she could guess, she was now only ten inches high, and her face brightened up at the mouth with strings: into this they slipped the guinea-pig, head first, and then sat.', 'Queen, who were all talking at once, while all the rest were quite silent, and looked at Alice. \'I\'M not a mile high,\' said Alice. \'You are,\' said the King. \'When did you begin?\' The Hatter looked at the Gryphon as if he were trying which word sounded best. Some of the birds hurried off at once: one old Magpie began wrapping itself up very carefully, remarking, \'I really must be getting home.', 1.00, NULL, NULL, 1016),
(279, 'Haag and Sons', 'http://picsum.photos/640/480/', 5, 1976, 'But she waited patiently. \'Once,\' said the Mock Turtle, who looked at them with large eyes full of tears, but said nothing. \'This here young lady,\' said the Gryphon, \'you first form into a line along the sea-shore--\' \'Two lines!\' cried the Mock Turtle, and to hear his history. I must go back and see after some executions I have ordered\'; and she walked off, leaving Alice alone with the Gryphon.', 'Where CAN I have dropped them, I wonder?\' Alice guessed in a moment that it was not easy to know when the race was over. However, when they had been running half an hour or so there were no tears. \'If you\'re going to turn into a pig, my dear,\' said Alice, seriously, \'I\'ll have nothing more to do with you. Mind now!\' The poor little thing howled so, that Alice could hardly hear the words:-- \'I.', 3.00, NULL, NULL, 2733),
(280, 'Oberbrunner Ltd', 'http://picsum.photos/640/480/', 7, 765, 'When she got back to the game. CHAPTER IX. The Mock Turtle\'s Story \'You can\'t think how glad I am to see you again, you dear old thing!\' said the Duchess, as she tucked her arm affectionately into Alice\'s, and they walked off together. Alice was very glad to find herself talking familiarly with them, as if she had asked it aloud; and in another moment that it was over at last: \'and I do so like.', 'I COULD NOT SWIM--\" you can\'t swim, can you?\' he added, turning to the jury, who instantly made a memorandum of the fact. \'I keep them to sell,\' the Hatter added as an explanation; \'I\'ve none of my own. I\'m a hatter.\' Here the Queen put on her spectacles, and began staring at the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King repeated angrily, \'or I\'ll have you executed.\'.', 4.00, NULL, NULL, 2435),
(281, 'Hudson-Pfeffer', 'http://picsum.photos/640/480/', 7, 1175, 'The Antipathies, I think--\' (she was rather glad there WAS no one listening, this time, as it didn\'t sound at all the right word) \'--but I shall have to go and live in that poky little house, and have next to no toys to play with, and oh! ever so many lessons to learn! No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here! It\'ll be no use their putting their heads down and saying.', 'THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in the window?\' \'Sure, it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'Well, it\'s got no business there, at any rate: go and take it away!\' There was a dead silence instantly, and.', 2.00, NULL, NULL, 1564),
(282, 'McKenzie, Muller and Roberts', 'http://picsum.photos/640/480/', 6, 1351, 'SOMETHING interesting is sure to happen,\' she said to herself, \'because of his great wig.\' The judge, by the way, was the King; and as he wore his crown over the wig, (look at the frontispiece if you want to be?\' it asked. \'Oh, I\'m not particular as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'I DON\'T know,\' said the Mouse. \'Of course,\' the Dodo replied.', 'I suppose Dinah\'ll be sending me on messages next!\' And she began thinking over all the children she knew that it might be hungry, in which case it would be very likely to eat her up in spite of all her coaxing. Hardly knowing what she did, she picked up a little bit of stick, and held it out to the puppy; whereupon the puppy jumped into the air off all its feet at once, with a yelp of delight.', 1.00, NULL, NULL, 1468),
(283, 'Blick PLC', 'http://picsum.photos/640/480/', 7, 1998, 'Alice noticed, had powdered hair that curled all over their heads. She felt very curious to see what the next witness would be like, \'--for they haven\'t got much evidence YET,\' she said to herself. (Alice had been to the seaside once in her life, and had come to the beginning of the conversation. Alice felt a very curious thing, and she went nearer to watch them, and just as she left her.', 'It doesn\'t look like one, but it is.\' \'I quite agree with you,\' said the Duchess; \'and most of \'em do.\' \'I don\'t know of any that do,\' Alice said very politely, feeling quite pleased to have got into a conversation. \'You don\'t know much,\' said the Duchess; \'and that\'s a fact.\' Alice did not quite know what to beautify is, I suppose?\' \'Yes,\' said Alice doubtfully: \'it.', 4.00, NULL, NULL, 2745),
(284, 'Leffler and Sons', 'http://picsum.photos/640/480/', 5, 1310, 'The Mouse did not answer, so Alice went on eagerly: \'There is such a dear quiet thing,\' Alice went on, half to herself, as usual. \'Come, there\'s half my plan done now! How puzzling all these changes are! I\'m never sure what I\'m going to be, from one minute to another! However, I\'ve got back to my right size again; and the second thing is to find my way into that lovely garden. First, however.', 'March Hare will be much the most interesting, and perhaps as this is May it won\'t be raving mad--at least not so mad as it was a very truthful child; \'but little girls eat eggs quite as much as she could remember them, all these strange Adventures of hers that you have just been reading about; and when she went back to the Cheshire Cat, she was surprised to find quite a large crowd collected.', 2.00, NULL, NULL, 2932),
(285, 'Friesen, Bechtelar and Ratke', 'http://picsum.photos/640/480/', 5, 1994, 'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head struck against the roof of the court. All this time the Mouse was swimming away from her as hard as he could go. Alice took up the fan and the pair of white kid gloves in one hand and a large fan in the other: he came trotting.', 'Alice, who was a very difficult question. However, at last she spread out her hand again, and made another snatch in the air. This time there were TWO little shrieks, and more sounds of broken glass. \'What a number of cucumber-frames there must be!\' thought Alice. \'I wonder what they\'ll do next! As for pulling me out of the room. The cook threw a frying-pan after her as she went on, taking first.', 1.00, NULL, NULL, 2852),
(290, 'Bins Inc', 'http://picsum.photos/640/480/', 6, 153, 'THEIR eyes bright and eager with many a strange tale, perhaps even with the dream of Wonderland of long ago: and how she would gather about her other little children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the dream of Wonderland of long ago: and how she would feel with all their simple sorrows, and find a pleasure in all their simple joys, remembering.', 'Alice, who was a very truthful child; \'but little girls eat eggs quite as much as she could for sneezing. There was certainly too much pepper in that soup!\' Alice said to herself, as well as if she were looking over their shoulders, that all the jurors were writing down \'stupid things!\' on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it.\' The jury all wrote down on their.', 4.00, NULL, NULL, 2650),
(291, 'Goodwin-Conn', 'http://picsum.photos/640/480/', 5, 724, 'English. \'I don\'t quite understand you,\' she said, as politely as she could. \'No,\' said the Caterpillar. Alice thought she might as well look and see what was the matter with it. There could be no doubt that it had a VERY turn-up nose, much more like a snout than a real nose; also its eyes were getting extremely small for a baby: altogether Alice did not dare to laugh; and, as she could do.', 'Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same thing,\' said the Duchess, digging her sharp little chin into Alice\'s shoulder as she added, \'and the moral of that is--\"The more there is of yours.\"\' \'Oh, I know!\' exclaimed Alice, who had not attended to this last remark, \'it\'s a vegetable. It doesn\'t look like one, but it is.\' \'I quite.', 1.00, NULL, NULL, 1795),
(292, 'Mraz and Sons', 'http://picsum.photos/640/480/', 4, 2387, 'You\'re mad.\' \'How do you know about this business?\' the King said to the Gryphon. \'They can\'t have anything to put down yet, before the trial\'s over!\' thought Alice. One of the jurors had a pencil that squeaked. This of course, Alice could not stand, and she went on. Her listeners were perfectly quiet till she got to the door, she found she could not tell whether they were gardeners, or.', 'Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, \'I cut some more bread-and-butter--\' \'But what did the archbishop find?\' The Mouse did not answer, so Alice went on eagerly: \'There is such a wretched height to be.\' \'It is a very good height indeed!\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'because I\'m.', 4.00, NULL, NULL, 1477),
(293, 'Gulgowski, Prohaska and Cartwright', 'http://picsum.photos/640/480/', 4, 2875, 'I don\'t understand. Where did they draw the treacle from?\' \'You can draw water out of a treacle-well--eh, stupid?\' \'But they were IN the well,\' Alice said to herself, and nibbled a little of the right-hand bit to try the patience of an oyster!\' \'I wish I had our Dinah here, I know I have to beat time when I learn music.\' \'Ah! that accounts for it,\' said the Hatter. He had been looking at Alice.', 'HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Well, I can\'t show it you myself,\' the Mock Turtle to sing you a song?\' \'Oh, a song, please, if the Mock Turtle replied; \'and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never heard of \"Uglification,\"\' Alice ventured to say. \'What is it?\' The Gryphon.', 5.00, NULL, NULL, 2788),
(294, 'Kris, Tromp and Olson', 'http://picsum.photos/640/480/', 5, 1200, 'Hatter; \'so I should think you\'ll feel it a little queer, won\'t you?\' \'Not a bit,\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'all I know is, it would feel very queer to ME.\' \'You!\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'because I\'m not myself, you see.\' \'I don\'t see,\' said the Caterpillar.', 'How the Owl and the Panther were sharing a pie--\' [later editions continued as follows When the sands are all dry, he is gay as a lark, And will talk in contemptuous tones of the Shark, But, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I used to say when I was a child,\' said the Gryphon. \'I\'ve forgotten the words.\' So they.', 1.00, NULL, NULL, 101),
(295, 'Wolff-Hackett', 'http://picsum.photos/640/480/', 4, 1310, 'I to get in?\' she repeated, aloud. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what am I to do?\' said Alice. \'Anything you like,\' said the Footman, and began whistling. \'Oh, there\'s no use in crying like that!\' said Alice to herself, as well as she could not remember ever having heard of such a rule at processions; \'and besides, what would be the use of a book,\' thought.', 'March Hare. Alice was silent. The Dormouse had closed its eyes by this time, and was going to happen next. First, she tried to look down and make out what she was saying, and the words came very queer indeed:-- \'\'Tis the voice of the shepherd boy--and the sneeze of the baby, the shriek of the Gryphon, and all the players, except the King, the Queen, and Alice joined the procession, wondering.', 3.00, NULL, NULL, 393),
(296, 'Luettgen-Blanda', 'http://picsum.photos/640/480/', 5, 174, 'The Mouse did not notice this question, but hurriedly went on, \'\"--found it advisable to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was in managing her flamingo: she succeeded in getting its body tucked away, comfortably enough, under her arm, with its legs hanging down, but generally, just as she came up to the door, and the other two were using.', 'King, and the Queen, who had meanwhile been examining the roses. \'Off with their heads!\' and the procession moved on, three of the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice for protection. \'You shan\'t be beheaded!\' said Alice, and she put them into a large kitchen, which was full of smoke from one end to the other: the only difficulty was, that she had to.', 2.00, NULL, NULL, 214),
(297, 'Steuber PLC', 'http://picsum.photos/640/480/', 7, 2870, 'I know?\' said Alice, surprised at her own courage. \'It\'s no business of MINE.\' The Queen turned angrily away from him, and said to Alice, flinging the baby at her as she went hunting about, and called out to her in an angry tone, \'Why, Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a pair of gloves and a fan! Quick, now!\' And Alice was so much surprised, that for the.', 'For instance, if you were me?\' \'Well, perhaps not,\' said Alice in a melancholy tone. \'Nobody seems to like her, down here, and I\'m sure she\'s the best cat in the world! Oh, my dear Dinah! I wonder if I shall fall right THROUGH the earth! How funny it\'ll seem to come out among the people that walk with their heads downward! The Antipathies, I think--\' (she was rather glad there WAS no one.', 4.00, NULL, NULL, 1982),
(298, 'Parker-Kuhn', 'http://picsum.photos/640/480/', 5, 2746, 'Indeed, she had quite a long argument with the Lory, who at last turned sulky, and would only say, \'I am older than you, and must know better\'; and this Alice would not allow without knowing how old it was, and, as the Lory positively refused to tell its age, there was no more to be said. At last the Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' the King said, with.', 'Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a pair of the gloves, and was just in time to hear it say, as it turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was close behind it when she turned the corner, but the Rabbit was no longer to be seen: she found herself in a long, low hall, which was lit up by a row of lamps hanging from the roof.', 4.00, NULL, NULL, 168),
(300, 'Donnelly, Hahn and Jaskolski', 'http://picsum.photos/640/480/', 6, 2976, 'Bill, the Lizard) could not make out at all what had become of it; so, after hunting all about for it, he was obliged to write with one finger for the rest of the day; and this was his first speech. \'You should learn not to make personal remarks,\' Alice said with some severity; \'it\'s very rude.\' The Hatter opened his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a.', 'Alice did not quite like the look of the thing at all. \'But perhaps it was only a mouse that had slipped in like herself. \'Would it be of any use, now,\' thought Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, that I should think you could manage it?) \'And what an ignorant little girl she\'ll think me for asking! No, it\'ll never do to come upon them THIS size: why, I.', 5.00, NULL, NULL, 1637),
(302, 'Daugherty LLC', 'http://picsum.photos/640/480/', 7, 243, 'I suppose Dinah\'ll be sending me on messages next!\' And she began thinking over other children she knew, who might do very well as pigs, and was just going to leave the room, when her eye fell on a little ledge of rock, and, as they came nearer, Alice could hear him sighing as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Gryphon, and the Mock Turtle said.', 'Alice. It looked good-natured, she thought: still it had VERY long claws and a great many more than three.\' \'Your hair wants cutting,\' said the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to have no sort of chance of her ever getting out of the water, and seemed to quiver all over with diamonds, and walked two and two, as the soldiers did. After these came the royal.', 2.00, NULL, NULL, 2324),
(303, 'Boehm-Weber', 'http://picsum.photos/640/480/', 6, 959, 'Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at it, and then said, \'It was a treacle-well.\' \'There\'s no such thing!\' Alice was beginning very angrily, but the Hatter was out of sight: then it chuckled. \'What fun!\' said the Gryphon, half to itself, half to Alice. \'What IS the fun?\' said Alice. \'Why, SHE,\' said the Gryphon. \'Well, I never heard it before,\' said the Mock.', 'Dodo replied very gravely. \'What else have you got in your pocket?\' he went on, spreading out the verses on his knee, and looking at the place where it had been, it suddenly appeared again. \'By-the-bye, what became of the baby?\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned into a pig,\' Alice quietly said, just as if it thought that SOMEBODY ought to speak, and no one else seemed.', 5.00, NULL, NULL, 2666),
(304, 'Armstrong LLC', 'http://picsum.photos/640/480/', 4, 2985, 'Alice and all her wonderful Adventures, till she too began dreaming after a fashion, and this was his first speech. \'You should learn not to make personal remarks,\' Alice said with some severity; \'it\'s very rude.\' The Hatter opened his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a writing-desk?\' \'Come, we shall have some fun now!\' thought Alice. \'I\'m glad they\'ve.', 'Alice, in a great hurry. \'You did!\' said the Hatter. \'You might just as well say,\' added the March Hare, who had followed him into the court, arm-in-arm with the Dormouse. \'Fourteenth of March, I think it was,\' he said. \'Fifteenth,\' said the March Hare. \'I didn\'t know it was YOUR table,\' said Alice; \'it\'s laid for a great many more than three.\' \'Your hair wants cutting,\' said the Hatter. \'I deny.', 4.00, NULL, NULL, 2279),
(305, 'Hamill, Ortiz and Reinger', 'http://picsum.photos/640/480/', 7, 686, 'KNOW IT TO BE TRUE--\" that\'s the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be what he did with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Why, you don\'t even know what a Gryphon is, look at the picture.) \'Up, lazy thing!\' said the Queen, who had meanwhile been examining the roses. \'Off with their heads!\' and the.', 'Do you think you could manage it?) \'And what an ignorant little girl she\'ll think me for asking! No, it\'ll never do to come upon them THIS size: why, I should frighten them out of their wits!\' So she began nibbling at the mushroom (she had kept a piece of it in her pocket) till she was out of sight. Alice remained looking thoughtfully at the mushroom (she had kept a piece of it in her pocket).', 1.00, NULL, NULL, 2262),
(307, 'Kub-Gerhold', 'http://picsum.photos/640/480/', 6, 2525, 'Gryphon, and the constant heavy sobbing of the Mock Turtle. \'She can\'t explain it,\' said the King, \'unless it was written to nobody, which isn\'t usual, you know.\' \'Who is it directed to?\' said one of the cakes, and was delighted to find that her neck would bend about easily in any direction, like a serpent. She had just succeeded in curving it down into a graceful zigzag, and was going to begin.', 'Alice, as she went on, taking first one side and then the Mock Turtle replied in an offended tone. And the Gryphon added \'Come, let\'s hear some of YOUR adventures.\' \'I could tell you my adventures--beginning from this morning,\' said Alice a little timidly: \'but it\'s no use now,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I.', 2.00, NULL, NULL, 2605),
(308, 'Ryan Inc', 'http://picsum.photos/640/480/', 7, 1856, 'King replied. Here the other guinea-pig cheered, and was immediately suppressed by the officers of the court. \'What do you mean by that?\' said the Caterpillar contemptuously. \'Who are YOU?\' said the Caterpillar. \'Well, perhaps you haven\'t found it so yet,\' said Alice; \'but when you have to turn into a chrysalis--you will some day, you know--and then after that into a butterfly, I should think.', 'So Alice got up and ran off, thinking while she ran, as well she might, what a wonderful dream it had been. But her sister sat still just as she left her, leaning her head on her hand, watching the setting sun, and thinking of little Alice herself, and once again the tiny hands were clasped upon her knee, and the bright eager eyes were looking up into the sky. Alice went timidly up to the door.', 1.00, NULL, NULL, 368),
(312, 'Smitham, Runolfsson and Ernser', 'http://picsum.photos/640/480/', 4, 236, 'So she began nibbling at the righthand bit again, and did not venture to go near the house till she had brought herself down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two to think about stopping herself before she found herself falling down a very deep well. Either the well was very deep, or she fell very slowly, for she had plenty of time as she went down to look about her.', 'I should have croqueted the Queen\'s hedgehog just now, only it ran away when it saw mine coming!\' \'How do you know the way out of this pool? I am very tired of sitting by her sister on the bank, with her head in the lap of her sister, who was gently brushing away some dead leaves that had fluttered down from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you!\' said Alice. \'I\'m a--I\'m.', 5.00, NULL, NULL, 321),
(313, 'Dach-Carter', 'http://picsum.photos/640/480/', 5, 2346, 'I shall fall right THROUGH the earth! How funny it\'ll seem to come out among the people that walk with their heads downward! The Antipathies, I think--\' (she was rather glad there WAS no one listening, this time, as it didn\'t sound at all the right word) \'--but I shall have to ask them what the name of nearly everything there. \'That\'s the judge,\' she said to herself, \'to be going messages for a.', 'Pray how did you manage on the twelfth?\' Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon interrupted in a very hopeful tone though), \'I won\'t have any pepper in my kitchen AT ALL. Soup does very well without--Maybe it\'s always pepper that makes people hot-tempered,\' she went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on.', 2.00, NULL, NULL, 373),
(315, 'Langosh, Turcotte and Armstrong', 'http://picsum.photos/640/480/', 4, 2953, 'Alice thought this a very curious sensation, which puzzled her a good deal frightened at the sudden change, but very glad to find herself still in existence; \'and now for the garden!\' and she ran with all speed back to the Cheshire Cat, she was surprised to find that her neck would bend about easily in any direction, like a serpent. She had just succeeded in curving it down into a graceful.', 'SHE, of course,\' said the Dodo, pointing to Alice with one finger; and the whole party swam to the shore. CHAPTER III. A Caucus-Race and a Long Tale They were indeed a queer-looking party that assembled on the bank--the birds with draggled feathers, the animals with their fur clinging close to them, and was delighted to find that she knew the name of the country is, you know. Please, Ma\'am, is.', 1.00, NULL, NULL, 525),
(316, 'Gibson, Dibbert and Mertz', 'http://picsum.photos/640/480/', 6, 1753, 'King. The White Rabbit put on his spectacles and looked anxiously round, to make out which were the two sides of it; and as it can\'t possibly make me larger, it must make me smaller, I suppose.\' So she swallowed one of the jurymen. \'It isn\'t directed at all,\' said Alice: \'she\'s so extremely--\' Just then she noticed that one of them say, \'Look out now, Five! Don\'t go splashing paint over me like.', 'She was a little nervous about it just at first, the two creatures got so close to her: first, because the Duchess was VERY ugly; and secondly, because she was exactly the right height to rest her chin upon Alice\'s shoulder, and it was an uncomfortably sharp chin. However, she did not like to be a letter, written by the prisoner to--to somebody.\' \'It must have been changed for Mabel! I\'ll try.', 3.00, NULL, NULL, 130),
(318, 'Farrell Group', 'http://picsum.photos/640/480/', 4, 798, 'King; and as he wore his crown over the wig, (look at the frontispiece if you want to see how he can EVEN finish, if he doesn\'t begin.\' But she waited patiently. \'Once,\' said the Mock Turtle, and to hear his history. I must go back and see after some executions I have ordered\'; and she walked off, leaving Alice alone with the Gryphon. Alice did not like to drop the jar for fear of killing.', 'I can\'t tell you just now what the moral of that is--\"The more there is of yours.\"\' \'Oh, I know!\' exclaimed Alice, who had not attended to this last remark, \'it\'s a vegetable. It doesn\'t look like one, but it is.\' \'I quite agree with you,\' said the King, with an air of great relief. \'Call the next witness!\' said the King. \'Shan\'t,\' said the cook. The King looked anxiously at the White Rabbit.', 1.00, NULL, NULL, 1208),
(319, 'Bogan Ltd', 'http://picsum.photos/640/480/', 4, 2869, 'Mock Turtle angrily: \'really you are very dull!\' \'You ought to be Number One,\' said Alice. The King turned pale, and shut his eyes.--\'Tell her about the reason and all that,\' he said to the Gryphon. \'We can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Gryphon. \'I mean, what makes them so shiny?\' Alice looked down at her feet, they seemed to be in a VERY unpleasant.', 'An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the rest, Between yourself and me.\' \'That\'s the most important piece of evidence we\'ve heard yet,\' said the White Rabbit; \'in fact, there\'s nothing written on the OUTSIDE.\' He unfolded the paper as he spoke, and added \'It isn\'t a letter, after all: it\'s.', 4.00, NULL, NULL, 479),
(361, 'Product01', 'public/upload/adam3.jpg', 18, 40000, 'none', 'none', 5.00, '2021-03-02 08:43:08', '2021-03-02 08:43:08', 311),
(362, 'Product demo', 'public/upload/adam2.jpg', 7, 7, '', '', 3.00, '2021-03-02 20:44:47', '2021-03-02 20:44:47', 321),
(363, '2345678', 'public/upload/adam2.jpg', 6, 23456, '123456', '23456', 2.00, '2021-03-02 21:58:45', '2021-03-02 21:58:45', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `img_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `img_url`, `created_at`, `updated_at`) VALUES
(1, 300, 'http://picsum.photos/640/480/', NULL, NULL),
(2, 312, 'http://picsum.photos/640/480/', NULL, NULL),
(3, 303, 'http://picsum.photos/640/480/', NULL, NULL),
(4, 293, 'http://picsum.photos/640/480/', NULL, NULL),
(5, 277, 'http://picsum.photos/640/480/', NULL, NULL),
(6, 256, 'http://picsum.photos/640/480/', NULL, NULL),
(7, 251, 'http://picsum.photos/640/480/', NULL, NULL),
(8, 242, 'http://picsum.photos/640/480/', NULL, NULL),
(9, 361, 'http://picsum.photos/640/480/', NULL, NULL),
(10, 3, 'http://picsum.photos/640/480/', NULL, NULL),
(11, 4, 'http://picsum.photos/640/480/', NULL, NULL),
(12, 4, 'http://picsum.photos/640/480/', NULL, NULL),
(13, 4, 'http://picsum.photos/640/480/', NULL, NULL),
(14, 4, 'http://picsum.photos/640/480/', NULL, NULL),
(15, 5, 'http://picsum.photos/640/480/', NULL, NULL),
(16, 5, 'http://picsum.photos/640/480/', NULL, NULL),
(17, 5, 'http://picsum.photos/640/480/', NULL, NULL),
(18, 6, 'http://picsum.photos/640/480/', NULL, NULL),
(19, 6, 'http://picsum.photos/640/480/', NULL, NULL),
(20, 6, 'http://picsum.photos/640/480/', NULL, NULL),
(21, 7, 'http://picsum.photos/640/480/', NULL, NULL),
(22, 7, 'http://picsum.photos/640/480/', NULL, NULL),
(23, 7, 'http://picsum.photos/640/480/', NULL, NULL),
(24, 7, 'http://picsum.photos/640/480/', NULL, NULL),
(25, 7, 'http://picsum.photos/640/480/', NULL, NULL),
(26, 8, 'https://lorempixel.com/640/480/cats/?63687', NULL, NULL),
(27, 8, 'https://lorempixel.com/640/480/cats/?41774', NULL, NULL),
(28, 8, 'https://lorempixel.com/640/480/cats/?53737', NULL, NULL),
(29, 8, 'https://lorempixel.com/640/480/cats/?19013', NULL, NULL),
(30, 8, 'https://lorempixel.com/640/480/cats/?77785', NULL, NULL),
(31, 9, 'https://lorempixel.com/640/480/cats/?44243', NULL, NULL),
(32, 9, 'https://lorempixel.com/640/480/cats/?47469', NULL, NULL),
(33, 9, 'https://lorempixel.com/640/480/cats/?47198', NULL, NULL),
(34, 9, 'https://lorempixel.com/640/480/cats/?51295', NULL, NULL),
(35, 9, 'https://lorempixel.com/640/480/cats/?15267', NULL, NULL),
(36, 10, 'https://lorempixel.com/640/480/cats/?55076', NULL, NULL),
(37, 10, 'https://lorempixel.com/640/480/cats/?56526', NULL, NULL),
(38, 10, 'https://lorempixel.com/640/480/cats/?47395', NULL, NULL),
(39, 10, 'https://lorempixel.com/640/480/cats/?28764', NULL, NULL),
(40, 11, 'https://lorempixel.com/640/480/cats/?37310', NULL, NULL),
(41, 11, 'https://lorempixel.com/640/480/cats/?30736', NULL, NULL),
(42, 11, 'https://lorempixel.com/640/480/cats/?25207', NULL, NULL),
(43, 11, 'https://lorempixel.com/640/480/cats/?51950', NULL, NULL),
(44, 11, 'https://lorempixel.com/640/480/cats/?12853', NULL, NULL),
(45, 12, 'https://lorempixel.com/640/480/cats/?30453', NULL, NULL),
(46, 12, 'https://lorempixel.com/640/480/cats/?58005', NULL, NULL),
(47, 12, 'https://lorempixel.com/640/480/cats/?56907', NULL, NULL),
(48, 13, 'https://lorempixel.com/640/480/cats/?75762', NULL, NULL),
(49, 13, 'https://lorempixel.com/640/480/cats/?18853', NULL, NULL),
(50, 13, 'https://lorempixel.com/640/480/cats/?46606', NULL, NULL),
(51, 14, 'https://lorempixel.com/640/480/cats/?28151', NULL, NULL),
(52, 14, 'https://lorempixel.com/640/480/cats/?12919', NULL, NULL),
(53, 14, 'https://lorempixel.com/640/480/cats/?46318', NULL, NULL),
(54, 15, 'https://lorempixel.com/640/480/cats/?96128', NULL, NULL),
(55, 15, 'https://lorempixel.com/640/480/cats/?29842', NULL, NULL),
(56, 15, 'https://lorempixel.com/640/480/cats/?17676', NULL, NULL),
(57, 15, 'https://lorempixel.com/640/480/cats/?41467', NULL, NULL),
(58, 16, 'https://lorempixel.com/640/480/cats/?23140', NULL, NULL),
(59, 16, 'https://lorempixel.com/640/480/cats/?84316', NULL, NULL),
(60, 16, 'https://lorempixel.com/640/480/cats/?55984', NULL, NULL),
(61, 17, 'https://lorempixel.com/640/480/cats/?46900', NULL, NULL),
(62, 17, 'https://lorempixel.com/640/480/cats/?49131', NULL, NULL),
(63, 17, 'https://lorempixel.com/640/480/cats/?57927', NULL, NULL),
(64, 18, 'https://lorempixel.com/640/480/cats/?16479', NULL, NULL),
(65, 18, 'https://lorempixel.com/640/480/cats/?32847', NULL, NULL),
(66, 18, 'https://lorempixel.com/640/480/cats/?57846', NULL, NULL),
(67, 18, 'https://lorempixel.com/640/480/cats/?77881', NULL, NULL),
(68, 19, 'https://lorempixel.com/640/480/cats/?10022', NULL, NULL),
(69, 19, 'https://lorempixel.com/640/480/cats/?43867', NULL, NULL),
(70, 19, 'https://lorempixel.com/640/480/cats/?38764', NULL, NULL),
(71, 19, 'https://lorempixel.com/640/480/cats/?39340', NULL, NULL),
(72, 19, 'https://lorempixel.com/640/480/cats/?18785', NULL, NULL),
(73, 20, 'https://lorempixel.com/640/480/cats/?32524', NULL, NULL),
(74, 20, 'https://lorempixel.com/640/480/cats/?72784', NULL, NULL),
(75, 20, 'https://lorempixel.com/640/480/cats/?88463', NULL, NULL),
(76, 20, 'https://lorempixel.com/640/480/cats/?96818', NULL, NULL),
(77, 21, 'https://lorempixel.com/640/480/cats/?82362', NULL, NULL),
(78, 21, 'https://lorempixel.com/640/480/cats/?36685', NULL, NULL),
(79, 21, 'https://lorempixel.com/640/480/cats/?31232', NULL, NULL),
(80, 21, 'https://lorempixel.com/640/480/cats/?67896', NULL, NULL),
(81, 22, 'https://lorempixel.com/640/480/cats/?96932', NULL, NULL),
(82, 22, 'https://lorempixel.com/640/480/cats/?57154', NULL, NULL),
(83, 22, 'https://lorempixel.com/640/480/cats/?97056', NULL, NULL),
(84, 22, 'https://lorempixel.com/640/480/cats/?41302', NULL, NULL),
(85, 22, 'https://lorempixel.com/640/480/cats/?37458', NULL, NULL),
(86, 23, 'https://lorempixel.com/640/480/cats/?85766', NULL, NULL),
(87, 23, 'https://lorempixel.com/640/480/cats/?58748', NULL, NULL),
(88, 23, 'https://lorempixel.com/640/480/cats/?35805', NULL, NULL),
(89, 24, 'https://lorempixel.com/640/480/cats/?53471', NULL, NULL),
(90, 24, 'https://lorempixel.com/640/480/cats/?23126', NULL, NULL),
(91, 24, 'https://lorempixel.com/640/480/cats/?11787', NULL, NULL),
(92, 24, 'https://lorempixel.com/640/480/cats/?60390', NULL, NULL),
(93, 24, 'https://lorempixel.com/640/480/cats/?19663', NULL, NULL),
(94, 25, 'https://lorempixel.com/640/480/cats/?33367', NULL, NULL),
(95, 25, 'https://lorempixel.com/640/480/cats/?98762', NULL, NULL),
(96, 25, 'https://lorempixel.com/640/480/cats/?87512', NULL, NULL),
(97, 25, 'https://lorempixel.com/640/480/cats/?61615', NULL, NULL),
(98, 26, 'https://lorempixel.com/640/480/cats/?11866', NULL, NULL),
(99, 26, 'https://lorempixel.com/640/480/cats/?53197', NULL, NULL),
(100, 26, 'https://lorempixel.com/640/480/cats/?28940', NULL, NULL),
(101, 26, 'https://lorempixel.com/640/480/cats/?24319', NULL, NULL),
(102, 26, 'https://lorempixel.com/640/480/cats/?96222', NULL, NULL),
(103, 27, 'https://lorempixel.com/640/480/cats/?51850', NULL, NULL),
(104, 27, 'https://lorempixel.com/640/480/cats/?76288', NULL, NULL),
(105, 27, 'https://lorempixel.com/640/480/cats/?61211', NULL, NULL),
(106, 27, 'https://lorempixel.com/640/480/cats/?27911', NULL, NULL),
(107, 28, 'https://lorempixel.com/640/480/cats/?20731', NULL, NULL),
(108, 28, 'https://lorempixel.com/640/480/cats/?51063', NULL, NULL),
(109, 28, 'https://lorempixel.com/640/480/cats/?82564', NULL, NULL),
(110, 29, 'https://lorempixel.com/640/480/cats/?89182', NULL, NULL),
(111, 29, 'https://lorempixel.com/640/480/cats/?59597', NULL, NULL),
(112, 29, 'https://lorempixel.com/640/480/cats/?97357', NULL, NULL),
(113, 30, 'https://lorempixel.com/640/480/cats/?23119', NULL, NULL),
(114, 30, 'https://lorempixel.com/640/480/cats/?47740', NULL, NULL),
(115, 30, 'https://lorempixel.com/640/480/cats/?35375', NULL, NULL),
(116, 31, 'https://lorempixel.com/640/480/cats/?85442', NULL, NULL),
(117, 31, 'https://lorempixel.com/640/480/cats/?75400', NULL, NULL),
(118, 31, 'https://lorempixel.com/640/480/cats/?92437', NULL, NULL),
(119, 32, 'https://cf.shopee.vn/file/4638eac3195681c4b3b96f00aeca0937', NULL, NULL),
(120, 32, 'https://img.mayflower.vn/2018/09/bo-hoa-ve-dep-dac-biet-89.jpg', NULL, NULL),
(121, 32, 'https://hoatuoihoamy.com/wp-content/uploads/2019/03/hoa-hong-trai-tim-dep-2.jpg', NULL, NULL),
(122, 33, 'https://lorempixel.com/640/480/cats/?66297', NULL, NULL),
(123, 33, 'https://lorempixel.com/640/480/cats/?76125', NULL, NULL),
(124, 33, 'https://lorempixel.com/640/480/cats/?48280', NULL, NULL),
(125, 34, 'https://lorempixel.com/640/480/cats/?10008', NULL, NULL),
(126, 34, 'https://lorempixel.com/640/480/cats/?56069', NULL, NULL),
(127, 34, 'https://lorempixel.com/640/480/cats/?33208', NULL, NULL),
(128, 34, 'https://lorempixel.com/640/480/cats/?50674', NULL, NULL),
(129, 35, 'https://lorempixel.com/640/480/cats/?30989', NULL, NULL),
(130, 35, 'https://lorempixel.com/640/480/cats/?67180', NULL, NULL),
(131, 35, 'https://lorempixel.com/640/480/cats/?62204', NULL, NULL),
(132, 35, 'https://lorempixel.com/640/480/cats/?94888', NULL, NULL),
(133, 35, 'https://lorempixel.com/640/480/cats/?40690', NULL, NULL),
(134, 36, 'https://lorempixel.com/640/480/cats/?72384', NULL, NULL),
(135, 36, 'https://lorempixel.com/640/480/cats/?47333', NULL, NULL),
(136, 36, 'https://lorempixel.com/640/480/cats/?34049', NULL, NULL),
(137, 36, 'https://lorempixel.com/640/480/cats/?23086', NULL, NULL),
(138, 36, 'https://lorempixel.com/640/480/cats/?53368', NULL, NULL),
(139, 37, 'https://lorempixel.com/640/480/cats/?97320', NULL, NULL),
(140, 37, 'https://lorempixel.com/640/480/cats/?15688', NULL, NULL),
(141, 37, 'https://lorempixel.com/640/480/cats/?19290', NULL, NULL),
(142, 37, 'https://lorempixel.com/640/480/cats/?14295', NULL, NULL),
(143, 37, 'https://lorempixel.com/640/480/cats/?90872', NULL, NULL),
(144, 38, 'https://lorempixel.com/640/480/cats/?96203', NULL, NULL),
(145, 38, 'https://lorempixel.com/640/480/cats/?59453', NULL, NULL),
(146, 38, 'https://lorempixel.com/640/480/cats/?66525', NULL, NULL),
(147, 38, 'https://lorempixel.com/640/480/cats/?77968', NULL, NULL),
(148, 39, 'https://lorempixel.com/640/480/cats/?42720', NULL, NULL),
(149, 39, 'https://lorempixel.com/640/480/cats/?61860', NULL, NULL),
(150, 39, 'https://lorempixel.com/640/480/cats/?56031', NULL, NULL),
(151, 40, 'https://lorempixel.com/640/480/cats/?43305', NULL, NULL),
(152, 40, 'https://lorempixel.com/640/480/cats/?77715', NULL, NULL),
(153, 40, 'https://lorempixel.com/640/480/cats/?96875', NULL, NULL),
(154, 40, 'https://lorempixel.com/640/480/cats/?79975', NULL, NULL),
(155, 41, 'https://lorempixel.com/640/480/cats/?65481', NULL, NULL),
(156, 41, 'https://lorempixel.com/640/480/cats/?77041', NULL, NULL),
(157, 41, 'https://lorempixel.com/640/480/cats/?79734', NULL, NULL),
(158, 42, 'https://lorempixel.com/640/480/cats/?42028', NULL, NULL),
(159, 42, 'https://lorempixel.com/640/480/cats/?97900', NULL, NULL),
(160, 42, 'https://lorempixel.com/640/480/cats/?32792', NULL, NULL),
(161, 42, 'https://lorempixel.com/640/480/cats/?96427', NULL, NULL),
(162, 43, 'https://lorempixel.com/640/480/cats/?18404', NULL, NULL),
(163, 43, 'https://lorempixel.com/640/480/cats/?30561', NULL, NULL),
(164, 43, 'https://lorempixel.com/640/480/cats/?82719', NULL, NULL),
(165, 43, 'https://lorempixel.com/640/480/cats/?54915', NULL, NULL),
(166, 43, 'https://lorempixel.com/640/480/cats/?59557', NULL, NULL),
(167, 44, 'https://lorempixel.com/640/480/cats/?13149', NULL, NULL),
(168, 44, 'https://lorempixel.com/640/480/cats/?62382', NULL, NULL),
(169, 44, 'https://lorempixel.com/640/480/cats/?65684', NULL, NULL),
(170, 44, 'https://lorempixel.com/640/480/cats/?63440', NULL, NULL),
(171, 45, 'https://lorempixel.com/640/480/cats/?70977', NULL, NULL),
(172, 45, 'https://lorempixel.com/640/480/cats/?64695', NULL, NULL),
(173, 45, 'https://lorempixel.com/640/480/cats/?98096', NULL, NULL),
(174, 45, 'https://lorempixel.com/640/480/cats/?99658', NULL, NULL),
(175, 45, 'https://lorempixel.com/640/480/cats/?28580', NULL, NULL),
(176, 46, 'https://lorempixel.com/640/480/cats/?41240', NULL, NULL),
(177, 46, 'https://lorempixel.com/640/480/cats/?26337', NULL, NULL),
(178, 46, 'https://lorempixel.com/640/480/cats/?93630', NULL, NULL),
(179, 46, 'https://lorempixel.com/640/480/cats/?84024', NULL, NULL),
(180, 47, 'https://lorempixel.com/640/480/cats/?99428', NULL, NULL),
(181, 47, 'https://lorempixel.com/640/480/cats/?26891', NULL, NULL),
(182, 47, 'https://lorempixel.com/640/480/cats/?81523', NULL, NULL),
(183, 47, 'https://lorempixel.com/640/480/cats/?85579', NULL, NULL),
(184, 47, 'https://lorempixel.com/640/480/cats/?91038', NULL, NULL),
(185, 48, 'https://lorempixel.com/640/480/cats/?82464', NULL, NULL),
(186, 48, 'https://lorempixel.com/640/480/cats/?89880', NULL, NULL),
(187, 48, 'https://lorempixel.com/640/480/cats/?96576', NULL, NULL),
(188, 49, 'https://lorempixel.com/640/480/cats/?57634', NULL, NULL),
(189, 49, 'https://lorempixel.com/640/480/cats/?56556', NULL, NULL),
(190, 49, 'https://lorempixel.com/640/480/cats/?93115', NULL, NULL),
(191, 49, 'https://lorempixel.com/640/480/cats/?13609', NULL, NULL),
(192, 50, 'https://lorempixel.com/640/480/cats/?98587', NULL, NULL),
(193, 50, 'https://lorempixel.com/640/480/cats/?52770', NULL, NULL),
(194, 50, 'https://lorempixel.com/640/480/cats/?66402', NULL, NULL),
(195, 51, 'https://lorempixel.com/640/480/cats/?85831', NULL, NULL),
(196, 51, 'https://lorempixel.com/640/480/cats/?76195', NULL, NULL),
(197, 51, 'https://lorempixel.com/640/480/cats/?72317', NULL, NULL),
(198, 52, 'https://lorempixel.com/640/480/cats/?19033', NULL, NULL),
(199, 52, 'https://lorempixel.com/640/480/cats/?87591', NULL, NULL),
(200, 52, 'https://lorempixel.com/640/480/cats/?60897', NULL, NULL),
(201, 52, 'https://lorempixel.com/640/480/cats/?54972', NULL, NULL),
(202, 53, 'https://lorempixel.com/640/480/cats/?69178', NULL, NULL),
(203, 53, 'https://lorempixel.com/640/480/cats/?29671', NULL, NULL),
(204, 53, 'https://lorempixel.com/640/480/cats/?91658', NULL, NULL),
(205, 54, 'https://lorempixel.com/640/480/cats/?76412', NULL, NULL),
(206, 54, 'https://lorempixel.com/640/480/cats/?24867', NULL, NULL),
(207, 54, 'https://lorempixel.com/640/480/cats/?54658', NULL, NULL),
(208, 55, 'https://lorempixel.com/640/480/cats/?54009', NULL, NULL),
(209, 55, 'https://lorempixel.com/640/480/cats/?41465', NULL, NULL),
(210, 55, 'https://lorempixel.com/640/480/cats/?51223', NULL, NULL),
(211, 55, 'https://lorempixel.com/640/480/cats/?90484', NULL, NULL),
(212, 56, 'https://lorempixel.com/640/480/cats/?67326', NULL, NULL),
(213, 56, 'https://lorempixel.com/640/480/cats/?61444', NULL, NULL),
(214, 56, 'https://lorempixel.com/640/480/cats/?69381', NULL, NULL),
(215, 57, 'https://lorempixel.com/640/480/cats/?59653', NULL, NULL),
(216, 57, 'https://lorempixel.com/640/480/cats/?77492', NULL, NULL),
(217, 57, 'https://lorempixel.com/640/480/cats/?29601', NULL, NULL),
(218, 57, 'https://lorempixel.com/640/480/cats/?33522', NULL, NULL),
(219, 57, 'https://lorempixel.com/640/480/cats/?96833', NULL, NULL),
(220, 58, 'https://lorempixel.com/640/480/cats/?31175', NULL, NULL),
(221, 58, 'https://lorempixel.com/640/480/cats/?87020', NULL, NULL),
(222, 58, 'https://lorempixel.com/640/480/cats/?29338', NULL, NULL),
(223, 58, 'https://lorempixel.com/640/480/cats/?97502', NULL, NULL),
(224, 58, 'https://lorempixel.com/640/480/cats/?17065', NULL, NULL),
(225, 59, 'https://lorempixel.com/640/480/cats/?36711', NULL, NULL),
(226, 59, 'https://lorempixel.com/640/480/cats/?23487', NULL, NULL),
(227, 59, 'https://lorempixel.com/640/480/cats/?52090', NULL, NULL),
(228, 59, 'https://lorempixel.com/640/480/cats/?25114', NULL, NULL),
(229, 60, 'https://lorempixel.com/640/480/cats/?94806', NULL, NULL),
(230, 60, 'https://lorempixel.com/640/480/cats/?65979', NULL, NULL),
(231, 60, 'https://lorempixel.com/640/480/cats/?16462', NULL, NULL),
(232, 60, 'https://lorempixel.com/640/480/cats/?58719', NULL, NULL),
(233, 60, 'https://lorempixel.com/640/480/cats/?38888', NULL, NULL),
(234, 61, 'https://lorempixel.com/640/480/cats/?43706', NULL, NULL),
(235, 61, 'https://lorempixel.com/640/480/cats/?49139', NULL, NULL),
(236, 61, 'https://lorempixel.com/640/480/cats/?72622', NULL, NULL),
(237, 62, 'https://lorempixel.com/640/480/cats/?91536', NULL, NULL),
(238, 62, 'https://lorempixel.com/640/480/cats/?27182', NULL, NULL),
(239, 62, 'https://lorempixel.com/640/480/cats/?39972', NULL, NULL),
(240, 62, 'https://lorempixel.com/640/480/cats/?97179', NULL, NULL),
(241, 63, 'https://lorempixel.com/640/480/cats/?95300', NULL, NULL),
(242, 63, 'https://lorempixel.com/640/480/cats/?73870', NULL, NULL),
(243, 63, 'https://lorempixel.com/640/480/cats/?76734', NULL, NULL),
(244, 63, 'https://lorempixel.com/640/480/cats/?52520', NULL, NULL),
(245, 63, 'https://lorempixel.com/640/480/cats/?71973', NULL, NULL),
(246, 64, 'https://lorempixel.com/640/480/cats/?71530', NULL, NULL),
(247, 64, 'https://lorempixel.com/640/480/cats/?64561', NULL, NULL),
(248, 64, 'https://lorempixel.com/640/480/cats/?13452', NULL, NULL),
(249, 65, 'https://lorempixel.com/640/480/cats/?15601', NULL, NULL),
(250, 65, 'https://lorempixel.com/640/480/cats/?87968', NULL, NULL),
(251, 65, 'https://lorempixel.com/640/480/cats/?88828', NULL, NULL),
(252, 65, 'https://lorempixel.com/640/480/cats/?89200', NULL, NULL),
(253, 66, 'https://lorempixel.com/640/480/cats/?51062', NULL, NULL),
(254, 66, 'https://lorempixel.com/640/480/cats/?92177', NULL, NULL),
(255, 66, 'https://lorempixel.com/640/480/cats/?48145', NULL, NULL),
(256, 67, 'https://lorempixel.com/640/480/cats/?29025', NULL, NULL),
(257, 67, 'https://lorempixel.com/640/480/cats/?37588', NULL, NULL),
(258, 67, 'https://lorempixel.com/640/480/cats/?47573', NULL, NULL),
(259, 68, 'https://lorempixel.com/640/480/cats/?62921', NULL, NULL),
(260, 68, 'https://lorempixel.com/640/480/cats/?42596', NULL, NULL),
(261, 68, 'https://lorempixel.com/640/480/cats/?24186', NULL, NULL),
(262, 68, 'https://lorempixel.com/640/480/cats/?15940', NULL, NULL),
(263, 69, 'https://lorempixel.com/640/480/cats/?17788', NULL, NULL),
(264, 69, 'https://lorempixel.com/640/480/cats/?10763', NULL, NULL),
(265, 69, 'https://lorempixel.com/640/480/cats/?83058', NULL, NULL),
(266, 69, 'https://lorempixel.com/640/480/cats/?95174', NULL, NULL),
(267, 69, 'https://lorempixel.com/640/480/cats/?86660', NULL, NULL),
(268, 70, 'https://lorempixel.com/640/480/cats/?91763', NULL, NULL),
(269, 70, 'https://lorempixel.com/640/480/cats/?94007', NULL, NULL),
(270, 70, 'https://lorempixel.com/640/480/cats/?28914', NULL, NULL),
(271, 71, 'https://lorempixel.com/640/480/cats/?56913', NULL, NULL),
(272, 71, 'https://lorempixel.com/640/480/cats/?83906', NULL, NULL),
(273, 71, 'https://lorempixel.com/640/480/cats/?67868', NULL, NULL),
(274, 72, 'https://lorempixel.com/640/480/cats/?22942', NULL, NULL),
(275, 72, 'https://lorempixel.com/640/480/cats/?72215', NULL, NULL),
(276, 72, 'https://lorempixel.com/640/480/cats/?17840', NULL, NULL),
(277, 73, 'https://lorempixel.com/640/480/cats/?49262', NULL, NULL),
(278, 73, 'https://lorempixel.com/640/480/cats/?83690', NULL, NULL),
(279, 73, 'https://lorempixel.com/640/480/cats/?80454', NULL, NULL),
(280, 73, 'https://lorempixel.com/640/480/cats/?93506', NULL, NULL),
(281, 74, 'https://lorempixel.com/640/480/cats/?60060', NULL, NULL),
(282, 74, 'https://lorempixel.com/640/480/cats/?76305', NULL, NULL),
(283, 74, 'https://lorempixel.com/640/480/cats/?26573', NULL, NULL),
(284, 74, 'https://lorempixel.com/640/480/cats/?41199', NULL, NULL),
(285, 74, 'https://lorempixel.com/640/480/cats/?92334', NULL, NULL),
(286, 75, 'https://lorempixel.com/640/480/cats/?50670', NULL, NULL),
(287, 75, 'https://lorempixel.com/640/480/cats/?64812', NULL, NULL),
(288, 75, 'https://lorempixel.com/640/480/cats/?78308', NULL, NULL),
(289, 76, 'https://lorempixel.com/640/480/cats/?62819', NULL, NULL),
(290, 76, 'https://lorempixel.com/640/480/cats/?83129', NULL, NULL),
(291, 76, 'https://lorempixel.com/640/480/cats/?32736', NULL, NULL),
(292, 76, 'https://lorempixel.com/640/480/cats/?55558', NULL, NULL),
(293, 77, 'https://lorempixel.com/640/480/cats/?70344', NULL, NULL),
(294, 77, 'https://lorempixel.com/640/480/cats/?89445', NULL, NULL),
(295, 77, 'https://lorempixel.com/640/480/cats/?77880', NULL, NULL),
(296, 77, 'https://lorempixel.com/640/480/cats/?28495', NULL, NULL),
(297, 78, 'https://lorempixel.com/640/480/cats/?49993', NULL, NULL),
(298, 78, 'https://lorempixel.com/640/480/cats/?88527', NULL, NULL),
(299, 78, 'https://lorempixel.com/640/480/cats/?26314', NULL, NULL),
(300, 79, 'https://lorempixel.com/640/480/cats/?32978', NULL, NULL),
(301, 79, 'https://lorempixel.com/640/480/cats/?28861', NULL, NULL),
(302, 79, 'https://lorempixel.com/640/480/cats/?22483', NULL, NULL),
(303, 79, 'https://lorempixel.com/640/480/cats/?22837', NULL, NULL),
(304, 80, 'https://lorempixel.com/640/480/cats/?36945', NULL, NULL),
(305, 80, 'https://lorempixel.com/640/480/cats/?78182', NULL, NULL),
(306, 80, 'https://lorempixel.com/640/480/cats/?35643', NULL, NULL),
(307, 80, 'https://lorempixel.com/640/480/cats/?56801', NULL, NULL),
(308, 81, 'https://lorempixel.com/640/480/cats/?35066', NULL, NULL),
(309, 81, 'https://lorempixel.com/640/480/cats/?56994', NULL, NULL),
(310, 81, 'https://lorempixel.com/640/480/cats/?72359', NULL, NULL),
(311, 81, 'https://lorempixel.com/640/480/cats/?75484', NULL, NULL),
(312, 81, 'https://lorempixel.com/640/480/cats/?36072', NULL, NULL),
(313, 82, 'https://lorempixel.com/640/480/cats/?69415', NULL, NULL),
(314, 82, 'https://lorempixel.com/640/480/cats/?32684', NULL, NULL),
(315, 82, 'https://lorempixel.com/640/480/cats/?83509', NULL, NULL),
(316, 82, 'https://lorempixel.com/640/480/cats/?68163', NULL, NULL),
(317, 83, 'https://lorempixel.com/640/480/cats/?34439', NULL, NULL),
(318, 83, 'https://lorempixel.com/640/480/cats/?12321', NULL, NULL),
(319, 83, 'https://lorempixel.com/640/480/cats/?99543', NULL, NULL),
(320, 84, 'https://lorempixel.com/640/480/cats/?83179', NULL, NULL),
(321, 84, 'https://lorempixel.com/640/480/cats/?37380', NULL, NULL),
(322, 84, 'https://lorempixel.com/640/480/cats/?84763', NULL, NULL),
(323, 85, 'https://lorempixel.com/640/480/cats/?61238', NULL, NULL),
(324, 85, 'https://lorempixel.com/640/480/cats/?63909', NULL, NULL),
(325, 85, 'https://lorempixel.com/640/480/cats/?77036', NULL, NULL),
(326, 85, 'https://lorempixel.com/640/480/cats/?33796', NULL, NULL),
(327, 85, 'https://lorempixel.com/640/480/cats/?58483', NULL, NULL),
(328, 86, 'https://lorempixel.com/640/480/cats/?10900', NULL, NULL),
(329, 86, 'https://lorempixel.com/640/480/cats/?98306', NULL, NULL),
(330, 86, 'https://lorempixel.com/640/480/cats/?52197', NULL, NULL),
(331, 86, 'https://lorempixel.com/640/480/cats/?95751', NULL, NULL),
(332, 87, 'https://lorempixel.com/640/480/cats/?41875', NULL, NULL),
(333, 87, 'https://lorempixel.com/640/480/cats/?41472', NULL, NULL),
(334, 87, 'https://lorempixel.com/640/480/cats/?84127', NULL, NULL),
(335, 87, 'https://lorempixel.com/640/480/cats/?34285', NULL, NULL),
(336, 88, 'https://lorempixel.com/640/480/cats/?39336', NULL, NULL),
(337, 88, 'https://lorempixel.com/640/480/cats/?64044', NULL, NULL),
(338, 88, 'https://lorempixel.com/640/480/cats/?22783', NULL, NULL),
(339, 89, 'https://lorempixel.com/640/480/cats/?29636', NULL, NULL),
(340, 89, 'https://lorempixel.com/640/480/cats/?43731', NULL, NULL),
(341, 89, 'https://lorempixel.com/640/480/cats/?19978', NULL, NULL),
(342, 89, 'https://lorempixel.com/640/480/cats/?88288', NULL, NULL),
(343, 89, 'https://lorempixel.com/640/480/cats/?83141', NULL, NULL),
(344, 90, 'https://lorempixel.com/640/480/cats/?73346', NULL, NULL),
(345, 90, 'https://lorempixel.com/640/480/cats/?96721', NULL, NULL),
(346, 90, 'https://lorempixel.com/640/480/cats/?76491', NULL, NULL),
(347, 90, 'https://lorempixel.com/640/480/cats/?41459', NULL, NULL),
(348, 90, 'https://lorempixel.com/640/480/cats/?21570', NULL, NULL),
(349, 91, 'https://lorempixel.com/640/480/cats/?28548', NULL, NULL),
(350, 91, 'https://lorempixel.com/640/480/cats/?67578', NULL, NULL),
(351, 91, 'https://lorempixel.com/640/480/cats/?28660', NULL, NULL),
(352, 91, 'https://lorempixel.com/640/480/cats/?63472', NULL, NULL),
(353, 92, 'https://lorempixel.com/640/480/cats/?30587', NULL, NULL),
(354, 92, 'https://lorempixel.com/640/480/cats/?79295', NULL, NULL),
(355, 92, 'https://lorempixel.com/640/480/cats/?75003', NULL, NULL),
(356, 92, 'https://lorempixel.com/640/480/cats/?84365', NULL, NULL),
(357, 93, 'https://lorempixel.com/640/480/cats/?69509', NULL, NULL),
(358, 93, 'https://lorempixel.com/640/480/cats/?83933', NULL, NULL),
(359, 93, 'https://lorempixel.com/640/480/cats/?19892', NULL, NULL),
(360, 93, 'https://lorempixel.com/640/480/cats/?41532', NULL, NULL),
(361, 94, 'https://lorempixel.com/640/480/cats/?67116', NULL, NULL),
(362, 94, 'https://lorempixel.com/640/480/cats/?36441', NULL, NULL),
(363, 94, 'https://lorempixel.com/640/480/cats/?16388', NULL, NULL),
(364, 94, 'https://lorempixel.com/640/480/cats/?30963', NULL, NULL),
(365, 95, 'https://lorempixel.com/640/480/cats/?85888', NULL, NULL),
(366, 95, 'https://lorempixel.com/640/480/cats/?22352', NULL, NULL),
(367, 95, 'https://lorempixel.com/640/480/cats/?42291', NULL, NULL),
(368, 95, 'https://lorempixel.com/640/480/cats/?91372', NULL, NULL),
(369, 96, 'https://lorempixel.com/640/480/cats/?59349', NULL, NULL),
(370, 96, 'https://lorempixel.com/640/480/cats/?83747', NULL, NULL),
(371, 96, 'https://lorempixel.com/640/480/cats/?32735', NULL, NULL),
(372, 97, 'https://lorempixel.com/640/480/cats/?87529', NULL, NULL),
(373, 97, 'https://lorempixel.com/640/480/cats/?42776', NULL, NULL),
(374, 97, 'https://lorempixel.com/640/480/cats/?24658', NULL, NULL),
(375, 97, 'https://lorempixel.com/640/480/cats/?36707', NULL, NULL),
(376, 97, 'https://lorempixel.com/640/480/cats/?74194', NULL, NULL),
(377, 98, 'https://lorempixel.com/640/480/cats/?77399', NULL, NULL),
(378, 98, 'https://lorempixel.com/640/480/cats/?61915', NULL, NULL),
(379, 98, 'https://lorempixel.com/640/480/cats/?50838', NULL, NULL),
(380, 98, 'https://lorempixel.com/640/480/cats/?23918', NULL, NULL),
(381, 98, 'https://lorempixel.com/640/480/cats/?25714', NULL, NULL),
(382, 99, 'https://lorempixel.com/640/480/cats/?92140', NULL, NULL),
(383, 99, 'https://lorempixel.com/640/480/cats/?82045', NULL, NULL),
(384, 99, 'https://lorempixel.com/640/480/cats/?35338', NULL, NULL),
(385, 99, 'https://lorempixel.com/640/480/cats/?10732', NULL, NULL),
(386, 99, 'https://lorempixel.com/640/480/cats/?28363', NULL, NULL),
(387, 100, 'https://lorempixel.com/640/480/cats/?70770', NULL, NULL),
(388, 100, 'https://lorempixel.com/640/480/cats/?38965', NULL, NULL),
(389, 100, 'https://lorempixel.com/640/480/cats/?15945', NULL, NULL),
(392, 104, 'images/galleries/pro_104/5c3ab409d5c66.png', '2019-01-12 20:44:09', '2019-01-12 20:44:09'),
(395, 104, 'images/galleries/pro_104/5c3adfaf21275.png', '2019-01-12 23:50:23', '2019-01-12 23:50:23'),
(397, 104, 'images/galleries/pro_104/5c3ae29f408fa.png', '2019-01-13 00:02:55', '2019-01-13 00:02:55'),
(398, 114, 'images/galleries/pro_114/5c4bcd5214459.jpeg', '2019-01-25 20:00:34', '2019-01-25 20:00:34'),
(399, 114, 'images/galleries/pro_114/5c4bcd5215c1a.jpeg', '2019-01-25 20:00:34', '2019-01-25 20:00:34'),
(400, 114, 'images/galleries/pro_114/5c4bcd521a3f9.jpeg', '2019-01-25 20:00:34', '2019-01-25 20:00:34'),
(401, 114, 'images/galleries/pro_114/5c4bcd521b1ee.jpeg', '2019-01-25 20:00:34', '2019-01-25 20:00:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', 'admin@gmail.com', NULL, 200, '$2y$10$KzdQl7i8NHXw9llWvkWV1eqXOyM7Ns6IpPsbYwLe5/F06h.JpVSxS', 'itISWu9O0Y0DxIiYU7t9W4ARsgpkrqrJ2FTGtDEVPMZuW9ChLciMtohAHNXQ', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`cate_name`);

--
-- Chỉ mục cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`invoice_id`,`product_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Chỉ mục cho bảng `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT cho bảng `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
