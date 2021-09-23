-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 16, 2021 lúc 03:21 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id16802488_bedevelovebug`
--
CREATE DATABASE IF NOT EXISTS `id16802488_bedevelovebug` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id16802488_bedevelovebug`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `app`
--

CREATE TABLE `app` (
  `id` int(11) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `date_added` date NOT NULL,
  `date_update` date NOT NULL,
  `developer` varchar(255) NOT NULL,
  `version` varchar(20) NOT NULL,
  `downloaded` varchar(255) NOT NULL,
  `app_price` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `app`
--

INSERT INTO `app` (`id`, `app_name`, `details`, `category`, `subcategory`, `date_added`, `date_update`, `developer`, `version`, `downloaded`, `app_price`) VALUES
(1, 'Two Dots', 'Join two brave dots as they traverse the arctic tundra, navigate fiery jungles, and plunge the ocean depths in the #1 hit game in over 100 countries.', 'Game', 'Puzzle', '2014-11-12', '2021-05-10', 'PlayDots', '6.24.0', 'More than 10.000.000 downloads', 0),
(2, 'Piffle', 'Discover Piffle a cute arcade puzzle game full of adorable characters and...cats!\r\nPut your cat onesie on, quest through colorful worlds, stop the nefarious Doc Block and craft adorable Piffle balls to collect.', 'Game', 'Arcade', '2018-10-04', '2021-04-28', 'HIPSTER WHALE', '3.600.18656', 'More than 1.000.000 downloads', 0),
(4, 'CapCut', 'From today, \"Viamaker\" Officially renamed to \"CapCut\"! CapCut is a free all-in-one video editing app that helps you create incredible videos.Cut, reverse and change speed: getting it just right is easier than ever，Posting only your wonderful moments.', 'Video', 'Watch and edit videos', '2020-01-11', '2020-07-16', 'Bytedance Pte. Ltd.', '5.4.58.5.4', 'More than 7.000.000 downloads', 0),
(5, 'Facebook', 'Keeping up with friends is faster and easier than ever. Share updates and photos, engage with friends and Pages, and stay connected to communities important to you.', 'Social', '', '2020-03-01', '2021-02-27', 'Facebook', '8.0.2.287', 'More than 900.000.000 downloads', 0),
(6, 'Instagram', 'Connect with friends, share what you’re up to, or see what\'s new from others all over the world. Explore our community where you can feel free to be yourself and share everything from your daily moments to life\'s highlights.', 'Social', '', '2020-10-24', '2021-02-06', 'Instagram', '9.7.24.87', 'More than 700.000.000 downloads', 0),
(7, 'Loóna', 'loóna is the first app that lets you quickly disconnect from a long stressful day and get in the right mood for sleep.', 'Life', 'Health and Fitness', '2020-02-11', '2021-03-29', 'Loona Inc', '2.4.6.5.69', 'More than 1.000.000 downloads', 0),
(8, 'Messenger', 'Be together whenever, with our free* all-in-one communication app, complete with unlimited text, voice, video calling and group video chat features. Easily sync your messages and contacts to your Android phone and connect with anyone, anywhere.', 'Social', 'Communication', '2020-09-16', '2021-01-13', 'Facebook', '1.3.7.571', 'More than 600.000.000 downloads', 0),
(9, 'Momo', 'MoMo is proud to be the number 1 e-wallet in Vietnam with more than 23 million trusted users. With MoMo Wallet, you can safely pay and transfer money on mobile anytime, anywhere. In particular, immediately give a gift package of 500,000 VND to customers who download for the first time, enter the code HELLOMOMO and link the bank with MoMo Wallet.\r\n', 'Finance', '', '2020-05-08', '2021-01-24', 'HM_SERVICE JSC', '3.97.3.10', 'More than 10.000.000 downloads', 0),
(10, 'NhacCuaTui', 'NhacCuaTui is a music application that offers you both online and offline streaming with a wide variety of songs under all genres. Just enjoy the copyrighted music, watch lyrics, and create personal playlists. Download now!', 'Music', '', '2020-06-28', '2021-02-04', 'NCT Corporation', '7.5.3.697', 'More than 8.000.000 downloads', 0),
(11, 'Shoppee', 'Welcome to SHOPEE - the destination for all your shopping, selling and entertainment needs. The app is continuously improved to give you the most enjoyable shopping experience.\r\n', 'Shopping', '', '2020-01-09', '2021-04-21', 'Shopee', '9.58.403', 'More than 5.000.000 downloads', 0),
(12, 'SoundCloud', 'SoundCloud is more than a streaming service, it’s an open global community for anyone to upload any sound for immediate discovery.', 'Music', '', '2020-05-01', '2021-02-18', 'SoundCloud', '3.1.3.8.29', 'More than 42.000.000 downloads', 0),
(13, 'Spotify', 'With Spotify, you can listen to music and play millions of songs and podcasts for free. Stream music and podcasts you love and find music - or your next favorite song - from all over the world.', 'Music', '', '2020-07-31', '2021-03-06', 'Spotify Ltd', '4.21.970', 'More than 120.000.000 downloads', 0),
(14, 'TikTok', 'TikTok is THE destination for mobile videos. On TikTok, short-form videos are exciting, spontaneous, and genuine. Whether you’re a sports fanatic, a pet enthusiast, or just looking for a laugh, there’s something for everyone on TikTok.', 'Video', 'Watch and edit videos', '2020-07-23', '2021-05-05', 'TikTok Pte. Ltd.', '8.5.37.43', 'More than 550.000.000 downloads', 0),
(15, 'Twitter', 'Retweet, chime in on a thread, go viral, or just scroll through the Twitter timeline to stay on top of what everyone’s talking about. Twitter is your go-to social media app and the new media source for what\'s happening in the world, straight from the accounts of the influential people who affect your world day-to-day.', 'Social', '', '2020-02-10', '2021-03-28', 'Twitter, Inc.', '7.5.1.8.32', 'More than 800.000.000 downloads', 0),
(16, 'Youtube', 'Get the official YouTube app on Android phones and tablets. See what the world is watching -- from the hottest music videos to what’s popular in gaming, fashion, beauty, news, learning and more. Subscribe to channels you love, create content of your own, share with friends, and watch on any device.', 'Video', 'Watch and edit videos', '2020-08-15', '2021-02-23', 'Google LLC', '8.8.1.6.34', 'More than 800.000.000 downloads', 0),
(17, 'Youtube Music', 'YouTube Music is a music streaming service developed by YouTube, a subsidiary of Google. It provides a tailored interface for the service oriented towards music streaming, allowing users to browse through songs and music videos on YouTube based on genres, playlists, and recommendations.', 'Music', '', '2020-09-26', '2021-02-23', 'Google LLC', '7.0.33.73', 'More than 100.000.000 downloads', 0),
(18, 'Zing Mp3', 'Zing MP3 is the leading free music player in Vietnam. With a massive high-quality music store from http://mp3.zing.vn you will have the best music experience on your mobile device.\r\n', 'Music', '', '2021-01-07', '2021-05-16', 'Zalo Group', '1.70.0.74', 'More than 17.000.000 downloads', 0),
(19, '7-Eleven TH', '7 Eleven TH is a mobile application that supports online purchases from the 7 Eleven global convenience store system with many preferential programs for customers. Using 7 Eleven TH brings many conveniences such as paying via e-wallet service, constantly updating monthly promotions, buying and exchanging points....', 'Life', '', '2020-04-07', '2021-03-02', 'CP ALL PUBLIC COMPANY LIMITED', '7.80.67', 'More than 19.000.000 downloads', 0),
(20, '2048', '2048 is a puzzle game created by Gabriele Cirulli, a 19-year-old Italian web developer, in March 2014. The object of the game is to slide numbered squares on a square grid to combine them and create a square of value 2048[2]. This can be seen as a block sliding puzzle game and is very similar to the Threes app! released a month earlier.', 'Game', 'Riddle', '2020-01-26', '2021-03-13', 'Androbaby', '4.16.354', 'More than 30.000.000 downloads', 0),
(21, 'All Football', 'All Football provides users with the latest worldwide football news. You can also get personalized content based on the teams you support like Real Madrid, FC Barcelona, Manchester, Chelsea, Liverpool, Crystal Palace, Everton, Dortmund and your favorite players like Ronaldo, Lionel Messi, Neymar, Mbappe... With this football newspaper reading app you won\'t miss any news about your favorite team or your favorite soccer star.', 'Sport', '', '2020-09-12', '2021-05-07', 'Footballdog Inc.', '7.1.73.81', 'More than 81.000.000 downloads', 0),
(22, 'Chrome', 'Google Chrome browser supports surfing the web, listening to music, watching movies, playing web games effectively, without worrying about lag with stable internet connection, currently leading in the TOP of the most used web browsers today. , with the competition, Chrome is constantly updating versions with many new features, optimizing performance.Google Chrome works on almost any device, with the PC version it is compatible with most systems.', 'Browser', '', '2020-12-31', '2021-03-03', 'Google LLC', '9.1.6.318', 'More than 33.000.000 downloads', 0),
(23, 'Color Zen', 'Color Zen is a new kind of puzzle game for phones and tablets. One that invites you to put on your headphones, relax, and find your way through an abstract world of colors and shapes. There is no score.', 'Game', 'Riddle', '2020-04-09', '2021-03-26', 'Secret Potion', '4.9.0.7.93', 'More than 46.000.000 downloads', 0),
(24, 'Premier League', 'Many people believe that the Spanish league is the best in the world . It is true that players the size of Messi, Cristiano, Benzema, Modric, Bale or Suárez play there but the championship with the most spectacle and surprises is surely the English league, the Premier League. ', 'Sport', '', '2020-04-24', '2021-02-10', 'Premier League Ltd', '7.20.257', 'More than 61.000.000 downloads', 0),
(25, 'Tiki', 'An application that works in tandem with the popular e-commerce site Tiki.vn. This Tiki mobile app was born to improve the shopping experience for customers through: analyzing customer preferences, habits, interested and favorite product lines, wallet Tiki coupons (discount codes) , e-wallets (ZaloPay, MoMo), shipping…', 'Shopping', '', '2020-07-02', '2021-01-20', 'Tiki Mobile Team', '5.4.6.5.37', 'More than 10.000.000 downloads', 0),
(26, 'Lazada', 'Lazada App is Vietnams No. 1 online shopping application for mobile phones of Lazada. Currently in the age of information technology, buying and selling online has become a trend of the times. Coming to the Lazada application, you will be able to shop with millions of rich and diverse products and attractive prices. Especially now that Lazada mostly only launches discount codes for Lazada App.', 'Shopping', '', '2020-08-21', '2021-02-19', 'Lazada Mobile', '1.3.12.49', 'More than 16.000.000 downloads', 0),
(27, 'Gojek', 'Gojek is a technology ride-hailing application with the same features as other applications (Grab, Uber, Vato...) with the main functions of booking a car, delivery, food delivery and integrated online payment function line. Gojek cooperates with thousands of driver partners, restaurant partners and other partners to provide its customers with a comfortable experience on each service.', 'Travel', '', '2020-05-16', '2021-02-03', 'PT. Aplikasi Karya Anak Bangsa', '9.6.33.64', 'More than 9.000.000 downloads', 0),
(28, 'Hangman', 'Hangman is the classic word guessing game, you will guess the secret word by flipping the letters one by one. Initially, you only know the number of letters in a word, if you guess the secret letter correctly, the word will appear in the crossword.', 'Game', 'Riddle', '2020-02-19', '2021-02-13', 'Senior Games', '8.0.9.80', 'More than 69.000.000 downloads', 0),
(29, 'VieOn', 'VieON is an application for watching TV on Android developed by VTVcab that gives users copyrighted digital entertainment content on many different platforms, with VieON you can enjoy live football matches. high scores of major tournaments and lots of blockbuster movies, TV gameshows as well as watching TV online conveniently. ', 'Video', '', '2020-08-22', '2021-03-06', 'VIEON CORPORATION', '7.0.47.33', 'More than 79.000.000 downloads', 0),
(30, 'Learn English Grammar', 'LearnEnglish Grammar (UK Edition) for iOS provides users of iPhone, iPad or iPod Touch devices with a professional and completely free English grammar learning program. LearnEnglish Grammar is the leading interactive English grammar practice app, designed to help improve the accuracy of learners English knowledge. ', 'Education', 'English', '2020-12-02', '2021-02-09', 'Visual App', '5.8.12.02', 'More than 47.000.000 downloads', 0),
(31, 'Mental Math Master', 'Mental Math Master is an educational game for Android phones, tablets, and TVs. \"Mental Math Master APK\" is a file you can install directly on Android devices without using CH Play, without logging in to your Google account.', 'Education', 'Math', '2020-09-18', '2021-02-14', '5daysweekend', '5.6.7.369', 'More than 32.000.000 downloads', 0),
(32, 'Now', 'Now.vn is an application to order on-demand services including ordering food for delivery, shopping for groceries, hourly maid service, laundry and delivery anytime, anywhere... Now.vn is deployed in different locations. In major cities of Vietnam such as Ho Chi Minh City, Hanoi and Da Nang, customers will be served as soon as possible within 1-2 hours when receiving information. ', 'Food', 'Delivery', '2020-06-16', '2021-02-01', 'Foody Corp', '2.8.48.51', 'More than 16.000.000 downloads', 0),
(33, 'Sendo', 'Sendo is one of the most popular online shopping applications today, you can instantly buy your favorite products no matter what you are doing or wherever you just need a mobile device with a connection. internet without having to spend time going to the place. Sendo is in the top of Google best applications to help customers feel secure in online shopping with hundreds of thousands of products that fully meet the needs of life. ', 'Shopping', '', '2020-04-30', '2021-03-05', 'Sendo Technology JSC', '8.0.25.76', 'More than 13.000.000 downloads', 0),
(34, 'Fahasa', 'Fahasa for Android is the exclusive application of Ho Chi Minh City book publishing joint stock company. This online sales application is a huge bookstore, providing users with hundreds of thousands of books and stories of different genres, for all audiences and ages.', 'Shopping', '', '2020-05-06', '2021-05-16', 'Fahasa', '1.9.9.709', 'More than 7.000.000 downloads', 0),
(35, 'Toilet Time', 'Toilet Time is a super fun and unique game for gamers with a \"crazy\" personality. Your challenge is to solve funny, humorous puzzles around what happens in the toilet. What do you usually do to \"kill\" short breaks like taking a break, waiting for the bus or even even sitting on the toilet? Toilet Time is a set of humorous minigames revolving around cleaning.Toilet Time is a collection of unique minigames.', 'Game', 'Tactic', '2020-02-07', '2021-03-04', 'Tapps Games', '8.8.61.57', 'More than 74.000.000 downloads', 0),
(36, 'Unblock', 'This Unblock puzzle has lot of logic that will make you feel on top of your mind with most of logical puzzles designed for everyone.From easy block puzzles to difficult ones there is a new challenge in every level. Unique levels to open up your blocked thoughts with cool variations, one of the best IQ puzzles that you will ever play. Not only to kill time but also to boost up your logic skills.', 'Game', 'Riddle', '2020-06-12', '2021-01-25', 'Playzio', '5.7.11.60', 'More than 35.000.000 downloads', 0),
(37, 'Lyfoes', 'Do you enjoy classic logic games? Here is the best puzzle game for all ages.\r\n Lyfoes Funny Lab - Logical Puzzle Game  is a physics puzzle game with an amazing interactive world.\r\nLyfoes are funny creatures who live in a science funny lab. You need to put all the creatures of the same color in a row. Drag rows of Lyfoes vertically or horizontally.', 'Game', 'Riddle', '2020-07-17', '2021-04-29', 'IBNPlay', '3.2.41.35', 'More than 44.000.000 downloads', 0),
(38, 'Untangle', 'Free game full of fun for train your memory and brain skills, game rather not for kids! You already found dots puzzle you need!\r\nWhenever you are in travel or weather is bad, you can always kill some time, and improve your mind with this skill game. Untie whole net to solve levels! Tangled stuff is waiting for you.', 'Game', 'Riddle', '2020-04-26', '2021-02-11', 'CLNTgames', '4.02.5.32', 'More than 20.000.000 downloads', 0),
(39, 'ULTRAFLOW', 'ULTRAFLOW 2 is an entertaining trivia game that combines air hockey and mini-golf games, in one chill and minimalist experience. No score, no timer, the challenge is just your ingenuity. Just throw the ball at the goal! This is the official sequel to ULTRAFLOW. ', 'Game', 'Riddle', '2020-12-07', '2021-03-27', 'Ultrateam', '4.1.13.19', 'More than 33.000.000 downloads', 0),
(40, 'Hexio', 'Hex.io is a fun new io game in the world of hexagons! Hex.io is one of the best IO games. Draw a hexagon to take up the largest area. This io game is a modern twist of the famous hexagon game! Download free game Hex: Hex adventure online! Capture blocks by surrounding an area with a game HEX.', 'Game', 'Riddle', '2020-04-24', '2021-02-06', 'Logisk', '1.2.10.81', 'More than 66.000.000 downloads', 0),
(41, 'Oculux', 'Oculux is a relaxing, minimalistic and beautiful puzzle game that offers hundreds of handcrafted levels to immerse you in. A poetic meditation music will accompany you in an enjoyable experience. How to play: Move the sphere by swiping your finger in the direction you want to move. Avoid traps and use different puzzle mechanics to collect all the diamonds with as few moves as possible.', 'Game', 'Riddle', '2020-12-19', '2021-03-17', 'Logisk', '2.7.27.10', 'More than 9.000.000 downloads', 0),
(42, 'VinID', 'VinID is an electronic wallet application, a point card for the store system of Vingroup. VinID application for Android offers many promotions and attractive utilities. Download the VinID app for Android to start shopping and spending on your own. Installing and using VinID on Android, users will easily know the number of points they have, manage them as well as know the exact number of points to be refunded quickly, simply and much more conveniently.', 'Life', '', '2020-07-11', '2021-04-27', 'Vingroup Joint Stock Company', '2.6.8.056', 'More than 39.000.000 downloads', 0),
(43, 'VNPT PAY', 'VNPT PAY for Android is a new e-wallet application of VNPT group and licensed by the State Bank of Vietnam. VNPT PAY application for Android will help you quickly pay at stores quickly, conveniently and securely. Download VNPT PAY application for Android for easy, civilized and safest cashless payment. ', 'Finance', '', '2020-08-13', '2021-04-21', 'VNPT MEDIA', '2.6.80.56', 'More than 1.000.000 downloads', 0),
(44, 'ViettelPay', 'Viettel Payment, also known as Viettel Online Payment (VTPay) - Is an online payment gateway provided by Viettel, allowing users to pay for services faster and safer than ever. You can make payments via VTPay anytime, anywhere, even on holidays and New Years Day. With just a few steps, you can quickly pay for mobile subscriptions, television, Internet, Homephone... ', 'Finance', '', '2020-01-08', '2021-03-15', 'VIETTEL DIGITAL SERVICES', '6.2.5.602', 'More than 61.000.000 downloads', 0),
(45, 'Opera', 'Opera 76 is a great web browser that supports many features that set it apart from other normal browsers such as integrating VPN service into the browser, convenient ad blocking and much more.', 'Browser', '', '2020-09-28', '2021-04-05', 'Opera', '5.8.9.8.27', 'More than 15.000.000 downloads', 0),
(46, 'UEFA Europa League', 'UEFA Europa League is the official app of the annual Champions League football tournament organized by the European Football Federation (UEFA). This entertainment app brings you the latest news, live broadcasts, highlights of next day events and much more...', 'Sport', '', '2020-12-17', '2021-03-31', 'UEFA', '1.8.9.311', 'More than 74.000.000 downloads', 0),
(47, 'UEFA.tv', 'Download UEFA.tv and register for free to access great live and on-demand video coverage from across UEFA’s competitions.\r\nFans can sign-up to enjoy live match streaming of UEFA’s Youth, Women’s and Futsal competitions*, match re-runs, magazine shows, live UEFA draw coverage and much more.', 'Sport', '', '2020-07-28', '2021-05-16', 'UEFA', '6.9.72.63', 'More than 86.000.000 downloads', 0),
(48, 'LaLiga Sports TV', 'LaLiga Sports TV is a free and live sports video viewing application for Android, through LaLiga Sports TV, you will have a multi-dimensional and complete view of sports events such as football, tennis, golf, basketball. , badminton, volleyball... at the Spanish national championships.', 'Sport', '', '2020-12-10', '2021-05-15', 'La Liga Nacional', '9.9.36.81', 'More than 13.000.000 downloads', 0),
(69, 'Agoda', 'Agoda will be an indispensable application if you are an active person and love to travel. With this application, it is no longer difficult to book cheap hotels, everyone can access this service by installing Agoda for Android. As you know, Agoda.com is a website that specializes in providing cheap travel and booking services around the world. With Agoda app for Android smart hotel booking will be even smarter.', 'Life', 'Travel and Locals', '2020-10-27', '2021-03-08', 'agoda.com', '1.7.8.08', 'More than 59.000.000 downloads', 0),
(70, 'Airbnb', 'Airbnb provides users with more than 600,000 places, hotels, motels in more than 34,000 big and small cities around the world. Utilities are a huge data warehouse about places to stay, travel and discover that anyone who is passionate about travel cannot ignore.', 'Life\r\n', 'Travel and Locals', '2020-03-08', '2021-05-06', 'Airbnb', '2.8.42.24', 'More than 72.000.000 downloads', 0),
(71, 'AirVisual', 'AirVisual for iOS is a completely free air quality measurement application, meaning there are no annoying ads or paid IAP packages that require users to buy with real money. All information about air quality in major cities around the world will be in one application. AirVisual for iOS will provide real-time air quality warnings and weather data, covering more than 6,000 cities globally. ', 'Weather', '', '2020-06-05', '2021-02-26', 'IQAir AG', '8.0.3.570', 'More than 84.000.000 downloads', 0),
(72, 'Candy Crush', 'Candy Crush Saga is a sweet candy puzzle game with gameplay similar to the classic diamond puzzle game Bejeweled. However, the difference between these two games here is that instead of finding and arranging adjacent diamonds, you will use eye-catching sweet candies. The players task is to arrange the candies of the same color vertically or horizontally. Then, you will score points and enjoy the delicious taste of those candies. ', 'Game', '', '2020-12-02', '2021-05-14', 'King', '2.3.8.2.01', 'More than 93.000.000 downloads', 0),
(73, 'Cookpad', 'Cookpad is considered as a social network for housewives, where you can find tens of thousands of delicious easy-to-make dishes with many attractive features (chat, kitchen friends, cooking diary...) Cooking becomes extremely simple and brings a lot of fun every day. Through Cookpad, users can create their own cooking mini-blog. Easily record your home cooking as a safe and beautiful online gourmet notebook.', 'Life', 'Food', '2020-09-24', '2021-01-03', 'Cookpad Inc (UK)', '3.6.5.7.83', 'More than 40.000.000 downloads', 7000),
(74, 'COVID-19', 'COVID-19 is a free application developed by the cooperation between Advanced International Joint Stock Company (AIC Group) and Electronic Health Administration - Ministry of Health, Viet Nam. It provides ultimate guidances for preventing and fighting against respiratory diseases caused by a new strain of coronavirus (officially named COVID-19).', 'Medical', '', '2020-01-07', '2021-05-16', 'Electronic Health Administration', '8.49.5.62', 'More than 44.000.000 downloads', 0),
(75, 'COVIDWISE', 'OVIDWISE is the official COVID-19 exposure notification app for the Commonwealth of Virginia’s Department of Health (VDH). The app was developed in partnership with SpringML using a Bluetooth Low Energy (BLE) API framework created through a unique collaboration between Apple and Google.', 'Health', '', '2020-01-14', '2021-05-15', 'VDH', '1.2.0.292', 'More than 72.000.000 downloads', 0),
(76, 'COVIDKE', 'COVID AIKnowledgeEnable or COVIDKE for short is specifically designed to help physicians, healthcare professionals and the general public make better-informed decisions for their patients, their families, and themselves. COVIDKE is available for all mobile platforms and desktop browsers.', 'Medical', '', '2020-05-07', '2021-05-04', 'Real Time Medical Inc.', '8.1.12.16', 'More than 38.000.000 downloads', 0),
(77, 'Daymood', 'Record your day with five emotions. You can record feelings of joy, sadness, anger, irritability, or fear.\r\nEach emotion can also record the intensity from 1 to 100. Just press the emoji just as you feel it.\r\nYou can record not only feelings but also what happened at that time. Record what emotions and things you have experienced.', 'Life', '', '2020-11-02', '2021-01-15', 'Daymood', '4.7.6.626', 'More than 96.000.000 downloads', 10000),
(78, 'Emolog', 'Record my daily emotions in my very own treasure chest, Emolog!\r\nCollect your precious emotions one by one - sadness, happiness, love, excitement, and more!\r\nEmolog will help you to understand and love yourself even more!', 'Life', '', '2020-05-17', '2021-04-11', 'Emolog', '8.8.33.87', 'More than 16.000.000 downloads', 5000),
(79, 'Foodie', 'Foodie is a professional and artistic food photography camera application. Foodie app is a product of SNOW - a company specializing in developing beautiful selfie photography applications such as SNOW, B612... On Instagram or Facebook, users often see delicious and artistic food photos. Usually, they are processed by photo filters in familiar photo editing programs such as PhotoWonder, Camera360 or FotoRus... ', 'Photography', '', '2020-12-05', '2021-03-03', 'SNOW, Inc.', '6.4.0.1.12', 'More than 71.000.000 downloads', 0),
(80, 'Gardenate', 'All the information you need to \"grow your own\" and enjoy your successful vegetable garden. Record your planting information and keep it synchronized across all your phones! The \"Grow Now\" calendar lists the vegetables and herbs you can grow each month and adapts to your preferred planting date - ideal if you use a greenhouse or cloche. ', 'Life', '', '2020-07-19', '2021-04-06', 'Hutchinson Software Pty Ltd', '9.0.4.7.43', 'More than 50.000.000 downloads', 15000),
(81, 'Hocus', 'hocus. is celebrating 5th year;\r\nLet artificial intelligence design new levels for you. You can even get help from her if you get stuck.\r\nHocus. is a minimal perspective illusion puzzle based on M.C. Escher drawings and impossible shapes.', 'Game', 'Riddle', '2020-06-27', '2021-04-02', 'gamebra.in', '6.7.60.77', 'More than 58.000.000 downloads', 3500),
(82, 'iCheck', 'iCheck is a barcode scanning application, scanning QR codes to check the quality of products released on Google Play. The iCheck application for Android will help you check the barcodes of all the items on the market to protect your rights and health. Download the iCheck application for Android to determine the origin and quality of products.', 'Life', '', '2020-07-04', '2021-03-22', 'iCheck Corporation', '7.1.6.5.65', 'More than 70.000.000 downloads', 0),
(83, 'JobsGO', 'JobsGO is a popular application for applying for jobs online on mobile phones today. JobsGO brings you thousands of suitable jobs and helps you send your CV to employers easily and quickly. 5 highlights of the JobsGO . application 1. The system actively finds and suggests jobs to you When downloading the application, register for a JobsGO account and complete a personal profile', 'Enterprise', '', '2020-09-22', '2021-03-21', 'JobsGO', '7.5.8.3.68', 'More than 7.000.000 downloads', 0),
(84, 'McDonalds', 'just tap “install” to receive exclusive McDonalds deals, coupons, offers and more! Its as simple as that! Bring the App to a nearby participating McDonalds and redeem your next meal deal. Mobile order your favorite McDonalds meal, pay through the App, and then come pick it up or get it delivered to your door!', 'Food', '', '2020-09-11', '2021-03-17', 'McDonalds Apps', '9.6.10.25', 'More than 69.000.000 downloads', 0),
(85, 'MicroTracker', 'Help validate the effects of microdosing (taking small doses) with various over-the-counter health supplements such as Lion Mane, Ashwaganda, L-creatine, B vitamins, etc. to measure the actual changes on your mood and wellbeing. The app provides an easy to use mechanism to track your progress following a well-defined clinical protocol in conjunction with your health professional.', 'Health', 'Fitness', '2020-03-09', '2021-05-01', 'Microdosing Tracker', '2.2.3.9.51', 'More than 47.000.000 downloads', 18000),
(86, 'MOODA', 'Accumulate your feelings day by day. The easiest and most lovely way to record my feelings. Come out of my heart, face-to-face time with me. Try to record today feelings. The feelings you dont want to leave must be forgotten. shake. Sort them by feelings and collect them. Feelings that you want to share, share them.', 'Life', '', '2020-12-13', '2021-03-17', 'OLIVESTONE', '4.1.7.3.23', 'More than 27.000.000 downloads', 0),
(87, 'NAUTIDE', 'All the information you need to know to plan activities at sea in a simple and practical app. More than 10,000 coastal stations around the world. TIDES Daily tide charts and tidal coefficient. High tides and low tides. Tides height. Monthly tide table. SURF Height and direction of the swell, wave period, hourly surf table. FISH ACTIVITY Hourly activity chart and solunar periods with the best fishing moments of every day.', 'Weather', '', '2020-03-07', '2021-03-05', 'Igoox', '3.14.8.95', 'More than 14.000.000 downloads', 10000),
(88, 'NCOVI', 'NCOVI is the official application of the Ministry of Health and the Ministry of Information and Communications to support people nationwide to make voluntary medical declarations, contributing to the prevention and control of acute pneumonia caused by a new strain of Corona virus. out. This is also the official channel for state agencies to send recommendations to the people about the epidemic situation.', 'Medical', '', '2020-06-26', '2021-03-30', 'Ministry of Information and Communications', '8.3.3.37', 'More than 61.000.000 downloads', 0),
(89, 'Pinterest', 'Are you looking for creative ideas? Whether you need to plan your next vacation, search for home design ideas, fashion and fitness tips or discover new recipes, lifestyle suggestions… all available on social media Pinterest. Great ideas all come from here! Pinterest focuses mainly on images with great ideas behind them. You can easily search for ideas by topic, pin each story and update every day.', 'Life', '', '2020-12-10', '2021-05-09', 'Pinterest', '5.8.5.0.85', 'More than 80.000.000 downloads', 0),
(90, 'Polarr', 'Polarr Photo Editor is photo editing software designed for both professionals and novices alike. The interface of the Polarr photo editing application allows users to perform basic and advanced editing operations easily, use filters immediately, apply layer masks. complex and edit many other things. Polarr Photo Editor helps you create impressive artistic photos that are easy to share with everyone.', 'Photography', '', '2020-12-13', '2021-05-01', 'Polarr', '5.5.29.94', 'More than 76.000.000 downloads', 20000),
(91, 'SideChef', 'SideChef makes learning to cook accessible, easy, and fun at all skill levels by giving you step-by-step pictures, instructions, and voice commands. It also makes every step easily shareable, from browsing recipes to buying ingredients to celebrating the last meal. own creations. SideChef is lovingly built by a team that believes cooking can be for everyone. ', 'Food', '', '2020-09-13', '2021-01-19', 'SideChef', '6.7.0.4.47', 'More than 39.000.000 downloads', 0),
(92, 'Skype', 'Skype is the world most popular calling and chat software with very good call quality based on VOIP (Internet Calling Protocol) technology and platform. Skype software is not only good thanks to its voice feature but also very good for Video Call, Chat, SMS messaging, data sharing... Download Skype is a great alternative to Yahoo Messenger, MSN. ..', 'Social', 'Communication', '2020-08-17', '2021-02-02', 'Skype', '4.8.7.587', 'More than 74.000.000 downloads', 0),
(93, 'Snapseed', 'Snapseed is a selfie photography application that provides support tools for photo editing, such as cropping photos to standard ratio or free cropping, easily rotating photos 90 degrees, straightening or rotating arbitrarily. Adjust the perspective along the vertical and horizontal axes, then fill the white area after rotation. With filters, Snapseed lets you select precise areas and individually enhance that area in seconds, thanks to Nik Software groundbreaking U Point technology. ', 'Photography', '', '2020-09-25', '2021-02-12', 'Google LLC', '5.3.55.57', 'More than 63.000.000 downloads', 0),
(94, 'Tasty', 'Tasty is a free cooking learning application with more than 3,000 different recipes, the application has specific video tutorials, making it easier for you to learn. You will not have to worry about what to eat today. Highlights More than 3000 recipes for you. There is a video tutorial to do it. Smart, fast search engine. Create your own menu list. Mark your favorites easily.', 'Food', '', '2020-09-14', '2021-03-18', 'BuzzFeed', '5.5.0.0.01', 'More than 55.000.000 downloads', 5000),
(95, 'Tide Charts', 'Finally, a beautiful and simple way to watch the tides on your mobile device! In addition to worldwide tidal estimates, you can view current moon data, weather forecasts and radar making your next outdoor adventure as easy to plan as possible. By default, the app will choose the station closest to you, but choosing another is as easy as viewing a map of your current location.', 'Weather', '', '2020-08-25', '2021-04-25', '7th Gear', '6.6.25.46', 'More than 11.000.000 downloads', 0),
(96, 'Today Weather', 'Today Weather is a beautiful & simple-to-use weather app that provides the world most accurate local weather forecasts. Enjoy reliable and accurate weather forecasting with more than 10 data sources: National Weather Service (weather.gov), Accuweather.com, Here.com, Dark Sky, Foreca.com, Weather.gc.ca, Weatherbit.io, Open Weather Map, Yr.no, Smhi.se...', 'Weather', '', '2020-05-05', '2021-01-25', 'todayweather.co', '6.7.8.76', 'More than 62.000.000 downloads', 0),
(97, 'TopCV', 'TopCV is the leading HR Recruitment Platform in Vietnam with more than 20,000+ jobs updated continuously every day. Especially using the TopCV app, you will immediately have a professional and unique CV. At the same time, reputable Employers (selected by TopCV) will actively invite you to apply for the hottest jobs, saving time & being safer when looking for jobs.', 'Enterprise', '', '2020-07-02', '2021-05-11', 'TopCV', '6.3.23.49', 'More than 82.000.000 downloads', 0),
(98, 'Traveloka', 'Traveloka is the leading hotel booking service, hunting cheap airline tickets in Southeast Asia. Significantly saves time, effort and cost for users. With a wide hotel network, and countless tourist destinations, from high-class hotels, leading resorts, to modern Hostels and Homestays, you can freely choose. How to use is extremely simple, just search, book a hotel room and pay Special features of Traveloka booking service: ', 'Life', 'Travel and Local', '2020-06-01', '2021-04-13', 'Traveloka', '4.12.0.98', 'More than 19.000.000 downloads', 0),
(99, 'trivago', 'With the Trivago app, users can easily find hotels for their vacation or business trip, discover great last minute deals or attractive weekends. With 1 million hotels to choose from and hundreds of booking sites worldwide to compare, planning your trip has never been easier with Trivago!', 'Life', 'Travel and Local', '2020-06-12', '2021-02-12', 'trivago', '3.3.6.5.02', 'More than 16.000.000 downloads', 0),
(100, 'Viber Messenger', 'Viber is a free messaging application that helps you connect with people around the world via the Internet (using WiFi or a data plan). Just install Viber for your phone, you can enjoy sending free messages, video calling each other without losing any money. Viber lets you express your emotions with cool stickers and emojis, and share your photos and videos.', 'Life', 'Communication', '2020-01-24', '2021-03-17', 'Viber Media S.à r.l.', '5.4.5.1.91', 'More than 24.000.000 downloads', 0),
(101, 'VietCheck', 'VietCheck is the first application to scan barcodes, QR Codes and decode images in Vietnam. Help check the origin of products, detect counterfeit goods, counterfeit goods quickly. VietCheck supports both the two most popular platforms today, iOS and Android. How to use VietCheck software is quite simple, just point the device camera towards the Code, so that the entire image must be in the frame.', 'Tools', '', '2020-06-24', '2021-04-02', 'Mã Hóa Việt Nam', '8.6.58.12', 'More than 9.000.000 downloads', 0),
(102, 'VietnamWorks', 'VietnamWorks is the leading and oldest online job search website in Vietnam. The number of jobs that the company posts every year is up to nearly 60,000 different jobs, this is also a huge number that no job search website can ever surpass. .Provide detailed information about companies that are hiring, as well as jobs that need people. Thereby creating professionalism for the site as well as giving job seekers confidence, certainty and peace of mind. ', 'Enterprise', '', '2020-02-22', '2021-02-21', 'Navigos Group', '6.2.52.56', 'More than 7.000.000 downloads', 0),
(103, 'VSCO', 'VSCO is one of the most \"divine\" image processing applications available today with the ability to turn an ordinary photo into a masterpiece in the blink of an eye. VSCO provides users with a lot of sample presets, diverse filters, advanced photo editing tools and a powerful collection of effects, so it is suitable for both amateurs and professional photographers.', 'Photography', '', '2020-10-30', '2021-05-06', 'VSCO', '6.7.9.534', 'More than 93.000.000 downloads', 0),
(104, 'Wattpad', 'Wattpad, founded in 2006, is an app that allows users to discover and share the stories they love. More than 40 million users worldwide have come to Wattpad as a means of entertainment, satisfying their own interests. Wattpad stories are divided into series (series) where members immerse themselves in the story and provide their own commentary. This new app gives users access to over 175 million stories uploaded to Wattpad.', 'Book', '', '2020-05-02', '2021-05-11', 'Wattpad.com', '7.6.89.11', 'More than 35.000.000 downloads', 8000),
(105, 'WhatsApp', 'WhatsApp is a simple, private, multi-featured, multi-platform online chat and messaging application that helps you stay in touch with your friends and have interesting conversations.Free chat, secure, messages are encrypted end-to-end so no one can read them except the sender and receiver, Support group chat, Send unlimited photos, videos, documents hare location, share contacts in contacts', 'Life', 'Communication', '2020-09-12', '2021-04-06', 'WhatsApp LLC', '4.9.2.8.16', 'More than 100.000.000 downloads', 0),
(106, 'aRacer Smart', 'aRacer Smart app support RC/RS Super and RCMini5 ecu, Provide Monitor Pro/Monitor Lite two type to monitor real time engine data. Engine parameters adjust: Fuel Base, Fuel Adj., Fuel Acc.,Spark Angle, Idle RPM, RPM Limit, VVA Control, Dec Fuel Cut, Auto Tune, WB O2 CL, Quick Shift, Speed Gain, Coolant Fan, TPS Learn.', 'Tools', '', '2020-06-17', '2021-02-20', 'aRacer SpeedTek', '1.7.6.215', 'More than 54.000.000 downloads', 376000),
(107, 'Bắn Ruồi', 'Your planet is being attacked by evil flies. You will play as a fighter to destroy these obnoxious flies to bring peace to people. This is a completely free game that will definitely bring you moments of entertainment and thrill as a warrior protecting the earth.', 'Game', '', '2020-08-29', '2021-03-21', 'ONESOFT', '3.7.9.5.33', 'More than 67.000.000 downloads', 12000),
(108, 'ProCam X', 'ProCam X will turn your phone into professional camera wanna be,\r\n with full control over exposure, focus, white balance, ISO and another features like a professional camera, which can bring your mobile photography to the next level. Take the best capture of your photo and even record your video in high resolution.', 'Photography', '', '2020-08-24', '2021-03-16', 'Imagi Mobile', '8.6.4.9.44', 'More than 11.000.000 downloads', 29000),
(109, 'CloudPlayer', 'CloudPlayer for Android is an innovative music player application that allows you to experience music regardless of whether the data is stored on your device or on cloud services. CloudPlayer runs on devices with OS 4.1 and up and is free to use.', 'Music', '', '2020-12-28', '2021-01-06', 'doubleTwist', '6.29.2.83', 'More than 81.000.000 downloads', 36000),
(110, 'Count to Ten', 'Learn how to count to ten in 25 different languages while playing this quick and fun game! Race against the clock as you identify the displayed numbers and speed through each language. Compete against yourself and beat your own high scores for each of the languages over time. With support for accurate text to speech pronunciation by native speakers, as well as phonetic expressions displayed underneath each number,', 'Education', '', '2020-12-20', '2021-04-30', 'BidBox', '5.7.3.0.04', 'More than 39.000.000 downloads', 22000),
(111, 'CryptoTab Browser Pro', 'Surf the web with the Pro version of the world first browser with mining.  We added new features so you would have everything for comfortable and safe browsing.  You will have an unlimited number of bitcoin transfers per day with the lowest minimum withdrawal amount. No limits, no restrictions. And that is not all! You can activate the Cloud Boost feature and mine many times faster than before.', 'Life', 'Communicatio', '2020-12-11', '2021-02-06', 'CryptoCompany OU', '7.6.9.3.10', 'More than 22.000.000 downloads', 11000),
(112, 'DroidCamX', 'Droidcam Client helps users to use their Android mobile phone as a webcam or microphone on their computer by connecting the computer to the phone to receive webcam signals sent from the mobile device. With Droidcam Client, you can quickly connect your phone to your computer to use it as a webcam for chat programs or for security monitoring. ', 'Tools', '', '2020-04-23', '2021-01-17', 'Dev47Apps', '3.4.8.38', 'More than 30.000.000 downloads', 23000),
(113, 'Fantastsoft', 'Sales summary application of the company cashiers in real time. Displays sales by cashier, payment method and cashier number. ', 'Tools', '', '2020-07-04', '2021-01-13', 'Fantastsoft Sistemas', '2.91.7.47', 'More than 16.000.000 downloads', 92000),
(114, 'Frizzy KWGT', 'This is not a standalone application. Fuzzy widgets require the KWGT PRO app (not the free version of this app)', 'Tools', '', '2020-03-02', '2021-04-08', 'RajArya', '2.6.0.121', 'More than 18.000.000 downloads', 126000),
(115, 'Instant Boost GO', 'Instant Boost GO is a powerful and efficient offline booster with in-built Instant booster which helps in playing heavy games while saving more battery and cools down CPU\r\nNo need of special knowledge, anyone can use it.', 'Tools', '', '2020-03-03', '2021-02-09', 'Trilokia Inc.', '8.5.7.037', 'More than 22.000.000 downloads', 47000),
(116, 'Letters', 'Download Letters, the #1 abc alphabet tracing and handwriting app, and watch your toddler evolve with this fun, intuitive, and educational game for pre-schoolers.\r\n\r\nAn app recommended and used by parents, teachers, and occupational therapists. Loved & played by more than 2 million toddlers and used at over 5,000 preschools and kindergartens to teach handwriting to kids!', 'Education', '', '2020-04-10', '2021-02-09', 'Popenchuk Roman', '5.07.0.83', 'More than 66.000.000 downloads', 14000),
(117, 'MX Player Pro', 'Max Player is one of the best HD video player for android tablet and android phone. Max player downloading has no confinement relating to Sound, Video, Controls, Playback,\r\nRecord,Source or any attribute.HD quality video player lets you to enjoy better quality\r\nvideos with Smoothness.max player application allow you to resize your watching video\r\nbased on your selection.Playback high-quality videos including: HD, full HD, 1080p and\r\n4K video,Fast & Smoothly.', 'Video', 'Watch and edit videos', '2020-05-09', '2021-03-11', 'MX Media', '2.3.2.173 ', 'More than 55.000.000 downloads', 7000),
(118, 'My Wordbank', 'My Wordbank App comes to you as your UNIQUE and PERSONALISED vocabulary expansion and English PROFICIENCY investment. Operates off-line. No Ads. My Wordbank addresses the GAP between CONVERSATIONAL ENGLISH and INSTITUTION ASSESSMENT PROFICIENCY. PROVIDES a CENTRAL DATA CAPTURING; APPLICATION; TEST YOURSELF and RETRIEVAL system that grows your Personalised ARTICULATION.', 'Education', '', '2020-04-20', '2021-02-14', 'Think And Create', '9.1.6.8.65', 'More than 85.000.000 downloads', 8000),
(119, 'Navigation Pro', 'Displays Google Navigation instructions from the phone on your Samsung watch. Great for driving, cycling and public transport.\r\nFeatures autostart with navigation, voice output, customisable vibration, 102 languages, options for themes, speedometer and much more!\r\nIt requires the free companion app \"Navigation Pro\" from Samsung Galaxy Apps.', 'Tools', '', '2020-04-12', '2021-01-22', 'Smartwatch Studios', '8.03.1.77', 'More than 20.000.000 downloads', 5000),
(120, 'Rugo', 'The Rugo icons are extremely detailed at 192x192 resolution having a crumple paper and dirt effect all over it. A dark shadow gives an popup look to the overall icon back. Since each icon is different the details like icon colors, dust and crumples have been manually added to ensure that the grunge effect does not compromise the visibility and readability of the icons.', 'Tools', '', '2020-12-13', '2021-03-22', 'GSeth', '3.8.20.6', 'More than 90.000.000 downloads', 10000),
(121, 'SD Maid Pro', 'SD Maid is a file manager that helps you keep your device clean and organized!\r\nThis app unlocks the \"Pro\" status in the free version of SD Maid, activating all the extra features.\r\nThis is not a standalone application. You still need to install the free version of SD Maid.\r\nI do not mind a quick email if you have a question.', 'Tools', '', '2020-02-06', '2021-03-23', 'darken', '9.4.8.274', 'More than 61.000.000 downloads', 7000),
(122, 'Simplo', 'Simplo is a full theme / icon pack for various launchers. The icons are soft in colors and sharp. Extra care has been taken to put in details where ever possible. The wallpapers included are a mix and match of all color combos and suitable for all taste. All the wallpapers are designed from scratch and will be totally unique to the pack.', 'Tools', '', '2020-12-17', '2021-03-05', 'GSeth', '10.3.0.55', 'More than 31.000.000 downloads', 6000),
(123, 'TNMaker Pro', 'TNMaker will turn your phone into a simple multiple-choice marking tool\r\nImagine your 1 hour marking will now be completed in minutes\r\nInstead of having to punch holes, many hours compared to the answer, now all you need to do is use a smartphone and manipulate like taking a photo in a few seconds.', 'Education', '', '2020-12-11', '2021-02-07', 'TN Team', '8.30.2.63', 'More than 16.000.000 downloads', 12000),
(124, 'TouchRetouch', 'TouchRetouch is brought to you by ADVA Soft — a developer of Handy Photo. We are doing our utmost to create apps that would positively affect your photo-editing experience. Visit ADVA Soft website at www.adva-soft.com to learn more about the company and the apps it develops.\r\nFor any assistance with TouchRetouch, contact ADVA Soft Support at touchretouch@adva-soft.com.We welcome all your inquiries, comments, or suggestions about the app.', 'Photography', '', '2020-08-19', '2021-04-29', 'ADVA Soft', '8.5.4.0.22', 'More than 26.000.000 downloads', 6000),
(125, 'Vibion', 'Vibion is a full theme / icon pack for various launchers. Each icon is crispy and sharp at the highest resolution currently possible. Extra care has been taken to put as much as details as possible and being a shapeless design the icon pack gives a complete unique look and feel to your device.', 'Tools', '', '2020-08-01', '2021-04-08', 'GSeth', '4.4.19.31', 'More than 64.000.000 downloads', 18000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `app_rating`
--

CREATE TABLE `app_rating` (
  `rating_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating_number` int(11) NOT NULL,
  `comment` text NOT NULL,
  `create` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `card_cash`
--

CREATE TABLE `card_cash` (
  `id` int(11) NOT NULL,
  `expired` varchar(255) NOT NULL,
  `seri` varchar(255) NOT NULL,
  `money` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `card_cash`
--

INSERT INTO `card_cash` (`id`, `expired`, `seri`, `money`, `status`) VALUES
(69, '2022-05-16', 'MO23-155973', '20000', 'Charged'),
(70, '2022-05-16', 'MO94-156013', '50000', 'Charged'),
(71, '2022-05-16', 'MO19-156016', '100000', 'Charged'),
(72, '2022-05-16', 'MO36-156020', '500000', 'Not charged yet'),
(73, '2022-05-16', 'MO51-157209', '200000', 'Not charged yet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `downloaded`
--

CREATE TABLE `downloaded` (
  `id` int(11) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_down` date DEFAULT NULL,
  `cost` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `downloaded`
--

INSERT INTO `downloaded` (`id`, `app_name`, `user_id`, `date_down`, `cost`) VALUES
(2, 'Daymood', 69, '2021-05-16', '10000'),
(3, 'UEFA.tv', 73, '2021-05-16', '0'),
(4, 'Polarr', 69, '2021-05-16', '20000'),
(5, 'Bắn Ruồi', 73, '2021-05-16', '12000'),
(7, 'Hocus', 73, '2021-05-16', '3500'),
(8, 'Hocus', 73, '2021-05-16', '3500');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `evalute`
--

CREATE TABLE `evalute` (
  `star` int(1) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date_eva` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `evalute`
--

INSERT INTO `evalute` (`star`, `comment`, `date_eva`, `user_id`, `app_id`) VALUES
(4, 'Ứng dụng này thật tuyệt vời, không thể tin được', '2021-04-19', 1, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_seri` varchar(255) NOT NULL,
  `date_pay` date NOT NULL,
  `money` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `card_seri`, `date_pay`, `money`) VALUES
(69, 73, 'MO23-155973', '2021-05-16', '20000'),
(70, 69, 'MO94-156013', '2021-05-16', '50000'),
(71, 69, 'MO19-156016', '2021-05-16', '100000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `gender` char(1) NOT NULL,
  `role` varchar(30) NOT NULL,
  `money` int(11) DEFAULT NULL,
  `verify` int(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `token_expired` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `birthday`, `gender`, `role`, `money`, `verify`, `token`, `token_expired`) VALUES
(69, 'Trường', 'Trần', 'trannguyentruong2001@gmail.com', '$2y$10$CmSaPVnMDzMaXy910BXeue9gGFT/IImqyIqhhMJLkGaKuGYgk5rZy', '2001-09-29', 'M', 'admin', 50000, 1, '896522', '1620983990'),
(70, 'Luân', 'Nguyễn', 'nhanluan1412@gmail.com', '$2y$10$ff7jbJ5e9mkzIdtROxddvuKAHkbyUMiQ2idfzAVBeYfyuvLSYQIqC', '2000-03-13', 'M', 'user', 0, 1, '623326', '1621154045'),
(71, 'Lê', 'Huy', 'lehaquanghuy502@gmail.com', '$2y$10$C8CDvgTUUy/e.C2is8uwa.AlXYtDC3Ieg6S2AlVJ9DCb55/N.56Nq', '2001-07-18', 'M', 'user', 0, 0, '409267', '1621151392'),
(72, 'Dy', 'Lan', 'duyluanncd@gmail.com', '$2y$10$gQhYyqD3s/.KUXXSYPhF3upky7u/fDJGdPg3CIrAsdXv6J6nphRme', '2002-01-01', 'M', 'user', 0, 1, '371787', '1621173455'),
(73, 'Ken', 'Kaneki', 'ngocque06122001@gmail.com', '$2y$10$RXnUyYBL2b.l4M2bGZ3mqemwcq5LljNVXKVz3JriLXBrHL5hIlesm', '2001-12-06', 'M', 'user', 1000, 1, '341832', '1621155416');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `app_rating`
--
ALTER TABLE `app_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Chỉ mục cho bảng `card_cash`
--
ALTER TABLE `card_cash`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `downloaded`
--
ALTER TABLE `downloaded`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `evalute`
--
ALTER TABLE `evalute`
  ADD UNIQUE KEY `user_id` (`user_id`,`app_id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `app`
--
ALTER TABLE `app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT cho bảng `app_rating`
--
ALTER TABLE `app_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `card_cash`
--
ALTER TABLE `card_cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `downloaded`
--
ALTER TABLE `downloaded`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
