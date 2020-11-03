-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 21, 2020 at 09:07 PM
-- Server version: 5.7.24-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `funko_pop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Action Figure'),
(2, 'Dorbz Ridez'),
(3, 'Funko Branded'),
(4, 'Funko Soda'),
(5, 'Mystery Minis'),
(6, 'Pocket Pop'),
(7, 'Pop'),
(8, 'Pop Cereal'),
(9, 'Pop Delux'),
(10, 'Pop Keychain'),
(11, 'Pop Pez'),
(12, 'Pop Rides'),
(13, 'Pop Tees'),
(14, 'Rock Candy'),
(15, 'Vinyl'),
(16, 'Vynl'),
(17, 'Pop Pocket'),
(18, 'Pop Moments'),
(19, 'Pop Town'),
(20, 'Funko Accessories-Other');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category_id`, `category_name`) VALUES
(1, 'Animation'),
(2, 'Heroes'),
(3, 'Movies'),
(4, 'Music'),
(5, 'Other'),
(6, 'Sports'),
(7, 'Television'),
(8, 'Video Games');

-- --------------------------------------------------------

--
-- Table structure for table `exclusive`
--

CREATE TABLE `exclusive` (
  `exclusive_id` int(11) NOT NULL,
  `store_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exclusive`
--

INSERT INTO `exclusive` (`exclusive_id`, `store_name`) VALUES
(1, 'Barnes & Noble'),
(2, 'Books a Million'),
(3, 'Box Lunch'),
(4, 'Emerald City Comic Con'),
(5, 'Entertainment Earth'),
(6, 'Funko Shop'),
(7, 'FYE'),
(8, 'Gamestop'),
(9, 'Hot Topic'),
(10, 'Keurig Dr. Pepper'),
(11, 'Mama Mio'),
(12, 'NY Comic Con'),
(13, 'Pop in A Box'),
(14, 'Sandiego Comic Con'),
(15, 'Target'),
(16, 'Walgreens'),
(17, 'Walmart'),
(18, 'Wonder Con'),
(19, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `figure`
--

CREATE TABLE `figure` (
  `figure_number` int(11) NOT NULL,
  `figure_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `exclusive_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `figure`
--

INSERT INTO `figure` (`figure_number`, `figure_id`, `name`, `year`, `company`, `brand_id`, `category_id`, `exclusive_id`) VALUES
(1, 1, 'Greg Junko', 2015, '21 Jump Street', 7, 3, 19),
(2, 2, 'Ickis', 2017, 'AAAHHH!!! Real Monsters', 7, 7, 12),
(3, 3, 'Chester Cheetah (t-shirt)', 2020, 'AD ICONS', 7, 5, 15),
(4, 3, 'Smokey Bear', 2019, 'AD ICONS', 7, 5, 15),
(5, 3, 'Chester Cheetah (Glows in the Dark)', 2020, 'Ad ICONS', 7, 5, 15),
(6, 3, 'LiL Sweet', 2020, 'AD ICONS', 7, 5, 10),
(7, 3, 'Morton Salt Girl', 2019, 'AD ICONS', 7, 5, 19),
(8, 3, 'BAZOOKA JOE', 2018, 'AD ICONS', 7, 5, 15),
(9, 3, 'Big Boy', 2018, 'AD ICONS', 7, 5, 19),
(10, 3, 'Twinkie The Kid(Modern)', 2018, 'AD ICONS', 7, 5, 19),
(11, 3, 'Kool Aid Man', 2019, 'AD ICONS', 7, 5, 19),
(12, 3, 'Frankenberry', 2020, 'AD ICONS', 7, 5, 19),
(13, 3, 'Count Chocoula', 2020, 'AD ICONS', 7, 5, 19),
(14, 4, 'Aladdin(W/ABU)', 2017, 'Aladdin', 2, 3, 3),
(15, 5, 'Xenomorph Funkos', 2019, 'Alien', 5, 3, 7),
(16, 6, 'Bluto (Toga Party)', 2020, 'Animal House', 7, 6, 19),
(17, 6, 'Bluto', 2020, 'Animal House', 7, 6, 19),
(18, 7, 'Austin Powers (Red Suit)', 2018, 'Austin Powers', 7, 3, 8),
(19, 8, 'Hulk', 2019, 'Avengers', 7, 3, 19),
(20, 9, 'Marty Mcfly', 2019, 'Back to The Future', 7, 3, 9),
(21, 10, 'Beetlejuice', 2018, 'Beetlejuice', 7, 3, 9),
(22, 10, 'Lydia Deetz (Red Dress)', 2018, 'Beetlejuice', 7, 3, 9),
(23, 11, 'Zoltar(6 inch)', 2019, 'Big', 7, 3, 19),
(24, 11, 'Josh Baskin with Tuxedo', 2019, 'Big', 7, 3, 19),
(25, 12, 'Scuba Sam', 2019, 'Big Daddy', 7, 3, 19),
(26, 13, 'Billy Madison in Bath', 2019, 'Billy Madison', 7, 3, 19),
(27, 13, 'Penguin with Cocktail', 2019, 'Billy Madison', 7, 3, 19),
(28, 13, 'Danny Mcgrath', 2019, 'Billy Madison', 7, 3, 19),
(29, 13, 'Billy Madison', 2019, 'Billy Madison', 7, 3, 19),
(30, 14, 'Gopher(Flocked)', 2019, 'Caddyshack', 7, 3, 15),
(31, 14, 'Judge Smails(W/Hat)', 2019, 'Caddyshack', 7, 3, 15),
(32, 15, 'Marilyn(Black&White)', 2020, 'Celebrities', 7, 5, 5),
(33, 15, 'Stephen King', 2019, 'Celebrities', 7, 5, 1),
(34, 15, 'Stan Lee(Patina)', 2019, 'Celebrities', 7, 5, 19),
(35, 16, 'Cousin Eddie', 2015, 'Christmas Vacation', 7, 3, 19),
(36, 17, 'Good Guy Chucky', 2019, 'Chucky', 7, 5, 9),
(37, 17, 'Chucky on Cart', 2018, 'Chucky', 7, 5, 9),
(38, 18, 'Alex Delarge-(Masked)(Masked)', 2016, 'Clockwork Orange', 7, 5, 9),
(39, 19, 'Conan OBrien(K-Pop)', 2018, 'Conan OBrien', 7, 7, 8),
(40, 19, 'Conan OBrien(Lederhosen)', 2018, 'Conan OBrien', 7, 7, 8),
(41, 20, 'Cuphead(Soulless)(On Fire)', 2018, 'Cuphead', 7, 8, 9),
(42, 21, 'Daria', 2019, 'Daria', 7, 7, 12),
(43, 22, 'The Joker(Death of The Family)(Glows in The Dark)', 2020, 'DC Comics', 7, 2, 9),
(44, 22, 'Poison Ivy', 2020, 'DC Comics', 7, 2, 19),
(45, 22, 'Batman(The Joker is Wild)', 2019, 'DC Comics', 7, 2, 5),
(46, 22, 'Batman The Merciless(Blue, Metallic)', 2019, 'DC Comics', 7, 2, 9),
(47, 23, 'Venompool', 2018, 'Deadpool', 7, 2, 11),
(48, 23, 'Deadpool(Gamer)(Yellow)', 2019, 'Deadpool', 7, 2, 8),
(49, 23, 'Deadpool(Inverse)', 2018, 'Deadpool', 7, 2, 3),
(50, 23, 'Deadlpool(In Suit and Tie)', 2016, 'Deadpool', 7, 2, 19),
(51, 24, 'John MCclane(shirtless)', 2018, 'Die Hard', 7, 3, 15),
(52, 25, 'Narwhal Funko', 2018, 'Elf', 8, 3, 3),
(53, 25, 'Buddy The Elf Funko', 2018, 'Elf', 8, 3, 15),
(54, 26, 'Nuka-Girl', 2020, 'Fallout', 17, 8, 8),
(55, 26, 'Nuka-Girl Funko', 2020, 'Fallout', 8, 8, 8),
(56, 27, 'Grindelwald and Thestral', 2018, 'Fantastic Beasts', 18, 3, 9),
(57, 28, 'Felix The Cat', 2018, 'Felix The Cat', 7, 1, 19),
(58, 29, 'Nightmare Freddy', 2017, 'Five Nights at Freddys', 5, 8, 19),
(59, 29, 'Bonnie The Rabbit-(Glow,Orange)', 2017, 'Five Nights at Freddys', 7, 8, 1),
(60, 29, 'Bon Bon', 2017, 'Five Nights at Freddys', 7, 8, 8),
(61, 29, 'Twisted Freddy', 2018, 'Five Nights at Freddys', 5, 8, 19),
(62, 29, 'Little Joe', 2018, 'Five Nights at Freddys', 5, 8, 19),
(63, 30, 'Forrest Gump', 2019, 'Forrest Gump', 7, 3, 15),
(64, 31, 'Adam Bomb(Glow)(Chase)', 2018, 'Garbage Pail Kids', 7, 5, 19),
(65, 32, 'Vito Corleone', 2017, 'The Godfather', 7, 3, 19),
(66, 33, '2 Pack-The Green Hornet and Kato', 2019, 'Green Hornet', 7, 7, 1),
(67, 34, 'Gumby', 2019, 'Gumby', 7, 7, 19),
(68, 35, 'Michael Myers', 2019, 'Halloween', 7, 3, 9),
(69, 35, 'Michael Myers(Blood Splatter)', 2018, 'Halloween', 7, 3, 7),
(70, 36, 'Yogi Bear', 2018, 'Hanna Barbera', 11, 1, 19),
(71, 36, 'Wally Gator', 2016, 'Hanna Barbera', 7, 1, 19),
(72, 36, 'Snagglepuss', 2016, 'Hanna Barbera', 7, 1, 19),
(73, 36, 'Ricochet Rabbit', 2015, 'Hanna Barbera', 7, 1, 19),
(74, 36, 'Squiddly Diddly', 2015, 'Hanna Barbera', 7, 1, 19),
(75, 37, 'Chubbs', 2019, 'Happy Gilmore', 7, 3, 19),
(76, 37, 'Happy Gilmore', 2019, 'Happy Gilemore', 7, 3, 19),
(77, 38, 'Fawkes', 2019, 'Harry Potter', 7, 3, 19),
(78, 38, 'Ron Weasley', 2017, 'Harry Potter', 7, 3, 19),
(79, 39, 'Strawberry Gerald', 2018, 'Hey Arnold', 7, 7, 8),
(80, 40, 'Cthulhu Funkos', 2018, 'HP Lovecraft', 8, 5, 2),
(81, 41, 'Ice Cube with Impala(6inch)', 2019, 'Ice Cube', 12, 4, 19),
(82, 41, 'Ice Cube', 2019, 'Ice Cube', 7, 4, 19),
(83, 42, 'Demonic Pennywise & Funhouse', 2019, 'IT', 19, 3, 19),
(84, 42, 'Pennywise', 2019, 'IT', 5, 3, 9),
(85, 42, 'Pennywise(Wrought Iron in Head)', 2018, 'IT', 7, 3, 7),
(86, 42, 'Pennywise Deadlights', 2019, 'IT', 7, 3, 9),
(87, 42, 'George Denbrough(Holding Boat)', 2018, 'IT', 7, 3, 19),
(88, 43, 'Jeepers Creepers', 2019, 'Jeepers Creepers', 7, 3, 7),
(89, 44, 'Kurt Cobain', 2017, 'Kurt Cobain', 7, 4, 9),
(90, 45, 'Loki', 2018, 'Marvel', 7, 3, 19),
(91, 45, 'Star-Lord-(Chrome Gold)', 2018, 'Marvel', 7, 3, 3),
(92, 46, 'Human Torch', 2019, 'Marvel Comics', 7, 2, 9),
(93, 46, 'Marvel Group Tee', 2019, 'Marvel Comics', 13, 2, 15),
(94, 46, 'Beast', 2019, 'Marvel Comics', 11, 2, 19),
(95, 46, 'Hulk(Holiday)', 2018, 'Marvel Comics', 7, 2, 19),
(96, 46, 'Silk', 2018, 'Marvel Comics', 7, 2, 16),
(97, 46, 'Miles Morales(Gamer)', 2019, 'Marvel Comics', 7, 2, 8),
(98, 46, 'Spider-Hulk(6inch)', 2018, 'Marvel Comics', 7, 2, 16),
(99, 46, 'Miles Morales', 2018, 'Marvel Comics', 7, 2, 19),
(100, 47, 'He-Man(Slime Pit)', 2020, 'Masters of The Universe', 7, 1, 4),
(101, 48, 'Megaman-(8-Bit)', 2017, 'Mega Man', 20, 8, 8),
(102, 49, 'Mickey Mouse', 2019, 'Mickey Mouse', 7, 1, 19),
(103, 50, 'Bernie Brewer', 2019, 'MLB', 7, 6, 19),
(104, 51, 'Liu Kang', 2019, 'Mortal Kombat', 7, 3, 19),
(105, 52, 'Mister Rogers(A Beautiful Day in The Neighborhood)', 2019, 'Mr. Rogers', 7, 7, 19),
(106, 53, 'Eddie Munster', 2015, 'Munsters', 7, 7, 19),
(107, 54, 'Pedro', 2015, 'Napoleon Dynamite', 7, 7, 19),
(108, 55, 'Notorious B.I.G.', 2018, 'Notorious B.I.G.', 7, 3, 19),
(109, 55, 'Notorious B.I.G. with Champagne', 2019, 'Notorious B.I.G.', 7, 3, 9),
(110, 56, 'Lance Bass', 2019, 'NSYNC', 7, 3, 19),
(111, 57, 'Pee-Wee Herman', 2018, 'Pee-Wee Herman', 7, 7, 19),
(112, 58, 'Skipper', 2015, 'Penguins of Madagascar', 7, 3, 19),
(113, 59, 'Frosty Franklin with Post Office', 2019, 'Peppermint Lane', 19, 5, 8),
(114, 59, 'Santa Claus', 2019, 'Peppermint Lane', 7, 5, 19),
(115, 60, 'Lord Zedd', 2018, 'Power Rangers', 7, 7, 19),
(116, 60, 'Power Rangers Funkos', 2019, 'Power Rangers', 8, 7, 4),
(117, 61, 'Alan Dutch Schaefer', 2020, 'Predator', 7, 3, 8),
(118, 61, 'Predator', 2020, 'Predator', 7, 3, 8),
(119, 62, 'John F. Kennedy', 2019, 'Public Domain', 7, 5, 19),
(120, 62, 'Jimmy Carter', 2019, 'Public Domain', 7, 5, 19),
(121, 63, 'Space Suit Morty(Metallic)', 2020, 'Rick and Morty', 1, 1, 17),
(122, 63, 'Space Suit Morty with Snake', 2019, 'Rick and Morty', 7, 1, 19),
(123, 63, 'Death Crystal Morty', 2019, 'Rick and Morty', 7, 1, 19),
(124, 63, 'Teddy Rick', 2019, 'Rick and Morty', 7, 1, 19),
(125, 63, 'Gamer Rick', 2020, 'Rick and Morty', 7, 1, 8),
(126, 63, 'Morty with Laptop', 2020, 'Rick and Morty', 7, 1, 8),
(127, 63, 'Snowball Funkos', 2012, 'Rick and Morty', 3, 1, 9),
(128, 64, 'Rocko Funkos', 2019, 'Rockos Modern Life', 8, 1, 9),
(129, 65, 'Juliet', 2019, 'Romeo and Juliet', 7, 3, 19),
(130, 65, 'Romeo', 2019, 'Romeo and Juliet', 7, 3, 19),
(131, 66, 'The Sandlot-2 Pack-Wendy/Squints', 2018, 'Sandlot', 7, 3, 15),
(132, 67, 'Grape Sour Patch Kid', 2020, 'Sour Patch Kids', 7, 5, 19),
(133, 68, 'Racer X', 2019, 'Speed Racer', 7, 1, 19),
(134, 68, 'Speed Racer with Mach 5', 2019, 'Speed Racer', 12, 1, 19),
(135, 68, 'Speed Racer', 2019, 'Speed Racer', 7, 1, 19),
(136, 69, 'Boba Fett', 2020, 'Star Wars', 7, 3, 4),
(137, 69, 'Offworld Jawa', 2019, 'Star Wars', 7, 3, 19),
(138, 69, 'Darth Maul', 2013, 'Star Wars', 7, 3, 19),
(139, 69, 'Boba Fett', 2020, 'Star Wars', 7, 3, 15),
(140, 70, 'Robin', 2019, 'Stranger Things', 7, 7, 19),
(141, 71, 'Shere Khan(W/Group)', 2018, 'TaleSpin', 7, 1, 8),
(142, 72, 'Michelangelo with Surfboard', 2020, 'Teenage Mutant Ninja Turtles', 7, 1, 14),
(143, 73, 'Rev-9 Endoskeleton', 2019, 'Terminator', 7, 3, 19),
(144, 73, 'T-800', 2019, 'Terminator', 7, 3, 19),
(145, 74, 'Wednesday Addams', 2019, 'The Addams Family', 7, 7, 19),
(146, 74, 'Pugsley Addams', 2019, 'The Addams Family', 7, 7, 19),
(147, 74, 'Uncle Fester', 2019, 'The Addams Family', 7, 7, 16),
(148, 75, 'Bobby Brady', 2018, 'The Brady Bunch', 7, 7, 19),
(149, 76, 'Sam Emerson', 2018, 'The Lost Boys', 7, 3, 19),
(150, 77, 'Behemoth', 2016, 'The Nightmare Before Christmas', 7, 3, 12),
(151, 77, 'Jack Skellington Funkos', 2019, 'The Nightmare Before Christmas', 8, 3, 9),
(152, 78, 'Michael Scott', 2020, 'The Office', 7, 7, 19),
(153, 78, 'Stanley Hudson', 2020, 'The Office', 7, 7, 19),
(154, 78, 'Jim Halpert(Chase)', 2019, 'The Office', 7, 7, 19),
(155, 78, 'Kevin Malone', 2019, 'The Office', 7, 7, 19),
(156, 78, 'Dwight Schrute', 2020, 'The Office', 7, 7, 19),
(157, 78, 'Meredith', 2020, 'The Office', 7, 7, 19),
(158, 78, 'Kelly Kappor', 2020, 'The Office', 7, 7, 19),
(159, 78, 'Michael Klump', 2020, 'The Office', 7, 7, 8),
(160, 78, 'Dwight Schrute as Recyclops', 2020, 'The Office', 7, 7, 14),
(161, 78, 'Angela Martin', 2020, 'The Office', 7, 7, 8),
(162, 78, 'Dwight Schrute', 2020, 'The Office', 7, 7, 6),
(163, 78, 'Stanley Hudson', 2020, 'The Office', 7, 7, 8),
(164, 78, 'Dwight Schrute as Recyclops', 2020, 'The Office', 7, 7, 4),
(165, 79, 'Sting', 2019, 'The Police', 7, 4, 19),
(166, 79, 'Andy Summers', 2019, 'The Police', 7, 4, 19),
(167, 80, 'The Grandy Twins', 2018, 'The Shining', 15, 3, 15),
(168, 81, 'Hannibal Lecter(Bloody)', 2019, 'The Silence of The Lambs', 7, 3, 19),
(169, 82, 'Gamer Bart', 2020, 'The Simpsons', 7, 1, 8),
(170, 82, 'Fly Boy Bart', 2019, 'The Simpsons', 7, 1, 19),
(171, 83, 'Peter', 2020, 'To All The Boys', 7, 3, 19),
(172, 84, 'Jessie', 2019, 'Toy Story', 7, 3, 19),
(173, 84, 'Sheriff Woody', 2019, 'Toy Story', 7, 3, 19),
(174, 85, 'Bobby Boucher', 2019, 'Waterboy', 7, 3, 19),
(175, 85, 'Bobby Boucher', 2019, 'Waterboy', 7, 3, 15),
(176, 86, 'Andre The Giant(6 inch)', 2019, 'WWE', 7, 6, 16),
(177, 86, 'Razor Ramon', 2017, 'WWE', 7, 6, 19),
(178, 86, 'Bret Hart', 2019, 'WWE', 7, 6, 19),
(179, 86, 'Undertaker', 2019, 'WWE', 7, 6, 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_id`),
  ADD KEY `category_name` (`category_name`) USING BTREE;

--
-- Indexes for table `exclusive`
--
ALTER TABLE `exclusive`
  ADD PRIMARY KEY (`exclusive_id`);

--
-- Indexes for table `figure`
--
ALTER TABLE `figure`
  ADD PRIMARY KEY (`figure_number`),
  ADD KEY `name` (`name`) USING BTREE,
  ADD KEY `category_id` (`category_id`),
  ADD KEY `exclusive_id` (`exclusive_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `figure`
--
ALTER TABLE `figure`
  MODIFY `figure_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `figure`
--
ALTER TABLE `figure`
  ADD CONSTRAINT `figure_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`Category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `figure_ibfk_2` FOREIGN KEY (`exclusive_id`) REFERENCES `exclusive` (`exclusive_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `figure_ibfk_3` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
