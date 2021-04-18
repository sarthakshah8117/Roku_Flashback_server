-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 18, 2021 at 02:48 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
CREATE TABLE IF NOT EXISTS `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio`
--

DROP TABLE IF EXISTS `tbl_audio`;
CREATE TABLE IF NOT EXISTS `tbl_audio` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `song_format` varchar(100) NOT NULL,
  `song_name` varchar(100) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_audio`
--

INSERT INTO `tbl_audio` (`id`, `song_format`, `song_name`, `thumbnail`) VALUES
(1, 'blue.mp3', 'Blue', 'blue.jpg'),
(2, 'country_road.mp3', 'Country Road', 'country_road.jpg'),
(3, 'sunshine.mp3', 'Sunshine', 'sunshine.jpg'),
(4, 'rocky.mp3', 'Rocky', 'rocky.jpg'),
(5, 'loveagain.mp3', 'Loveagain', 'loveagain.jpg'),
(6, 'K_World.mp3', 'K world', 'K_World.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_name` (`cast_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(30, '	Robert Forster'),
(11, 'Al Pacino'),
(8, 'Beau Bridges'),
(37, 'Bill Murray'),
(32, 'Brian Blessed'),
(26, 'Burt Lancaster'),
(36, 'Charles Aznavour'),
(6, 'Charles Bronson'),
(38, 'Chevy Chase'),
(14, 'Cristina Ferrare'),
(24, 'Helen Hunt'),
(3, 'Jackie Chan'),
(42, 'Jane Curtin'),
(7, 'Jason Robards'),
(19, 'John Carradine'),
(13, 'John Wayne'),
(22, 'Kareem Abdul-Jabbar'),
(20, 'Kathryn Kirkpatrick'),
(45, 'Keanu Reeves'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(33, 'Lee Marvin'),
(1, 'Lee Van Cleef'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(28, 'Richard Burton'),
(27, 'Richard Pyros'),
(46, 'Robert Kaylor'),
(5, 'Robert Morse'),
(21, 'Robert Redford'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(10, 'Scott Weinger'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'USA'),
(2, 'USA'),
(3, 'USA'),
(4, 'USA'),
(5, 'Mexico'),
(6, 'UK'),
(7, 'UK'),
(8, 'USA'),
(9, 'UK'),
(10, 'UK'),
(11, 'USA'),
(12, 'UK'),
(13, 'USA'),
(14, 'UK'),
(15, 'UK'),
(16, 'USA'),
(17, 'USA'),
(18, 'UK'),
(19, 'USA'),
(20, 'UK'),
(21, 'UK'),
(22, 'USA'),
(23, 'UK'),
(24, 'UK'),
(25, 'USA'),
(26, 'UK'),
(27, 'USA'),
(28, 'USA'),
(29, 'UK'),
(30, 'UK'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D\'Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

DROP TABLE IF EXISTS `tbl_director`;
CREATE TABLE IF NOT EXISTS `tbl_director` (
  `director_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `director_name` varchar(250) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'Lewis Gilbert'),
(2, 'George Seaton'),
(3, 'Philip Leacock'),
(4, 'Tom Moore'),
(5, 'Juan López Moctezuma'),
(6, 'Norman Tokar'),
(7, 'Robert F. Slatzer'),
(8, 'Denis Villeneuve '),
(9, 'Andrew V. McLaglen'),
(10, 'Tom Gries'),
(11, ' Jim Abrahams'),
(12, ' Lewis Teague'),
(13, 'Robert Clouse '),
(14, ' Samuel Fuller'),
(15, ' Stuart Rosenberg'),
(16, 'J. Lee Thompson'),
(17, 'Harold Ramis'),
(18, 'Murray Mintz '),
(19, 'William Friedkin'),
(20, 'Jules Dassin'),
(21, ' Ron Clements'),
(22, 'Ivan Reitman'),
(23, ' Lana Wachowski'),
(24, 'Jan de Bont'),
(25, 'Chris Buck'),
(26, ' Stuart Rosenberg'),
(27, 'Jules Dassin'),
(28, 'Robert F. Slatzer'),
(29, 'George Seaton'),
(30, ' Samuel Fuller');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Drama'),
(2, 'Disaster film'),
(3, 'Historical'),
(4, 'Comedy'),
(5, 'Mystery'),
(6, 'Comedy'),
(7, 'Western'),
(8, 'Horror'),
(9, ' Biography'),
(10, ' Drama '),
(11, 'Comedy'),
(12, ' Horror'),
(13, 'Action'),
(14, 'Drama'),
(15, 'Drama'),
(16, 'Action'),
(17, 'Comedy'),
(18, 'Drama'),
(19, 'Drama'),
(20, 'Drama'),
(21, 'Animation'),
(22, 'Action'),
(23, 'Action'),
(24, 'Action'),
(25, 'Animation'),
(26, 'Drama'),
(27, 'Drama'),
(28, 'Animation'),
(29, 'Comedy'),
(30, 'Animation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(250) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'English'),
(2, 'English'),
(3, 'English'),
(4, 'English'),
(5, 'English'),
(6, 'English'),
(7, 'English'),
(8, 'English'),
(9, 'Spanish'),
(10, 'Irish'),
(11, 'English'),
(12, 'English'),
(13, 'English'),
(14, 'English'),
(15, 'English'),
(16, 'English'),
(17, 'English'),
(18, 'English'),
(19, 'English'),
(20, 'English'),
(21, 'English'),
(22, 'English'),
(23, 'English'),
(24, 'English'),
(25, 'English'),
(26, 'English'),
(27, 'English'),
(28, 'English'),
(29, 'English'),
(30, 'English'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'The Adventurers.jpg', 'The Adventurers', '1970', ' 2h 51min', 'The wealthy playboy son of an assassinated South American diplomat discovers that his father was really murdered on orders of the corrupt president of the country.', 'The Adventurers.mp4', '16 April 1970'),
(2, 'Airport.jpg', 'Airport', '1970', '2h 17min', 'A bomber on board an airplane, an airport almost closed by snow, and various personal problems of the people involved.', 'Airport.mp4', '24 April 1970'),
(3, 'And God Created Woman.jpg', 'And God Created Woman', '1988', '1h 40min', 'Aspiring and incarcerated rock singer, Robin Shea (Rebecca De Mornay) seduces prison guard Billy Moran (Vincent Spano).', 'And God Created Woman.mp4', '4 March 1988'),
(4, 'Maybe Baby.jpg', 'Maybe Baby', '1988', '1h 28min', 'For a happily married man, life changes completely and he finds himself in distress when his wife decides to have a baby after several years of marriage.', 'Maybe Baby.mp4', '5 December 1988'),
(5, 'Mary.jpg', 'Mary, Mary, Bloody Mary', '1978', '1h 41min', 'A female bisexual artist turns out to be a vampire. ', 'Mary.mp4', '9 November 1978'),
(6, 'Boatniks.jpg', 'The Boatniks', '1970', '1h 39min', 'Newly assigned to duty in the coast guard at Newport Beach, a young ensign finds himself involved in romantic complications, as well as with jewel thieves, whose antics contribute to moments of hysteria and hilarity.', 'Boatniks.mp4', ' 8 July 1970'),
(7, 'Barquero.jpg', 'Barquero', '1970', '1h 55m', 'At a river crossing, a stand-off between a gang of outlaws and local townsfolk ensues when the ferry barge operator refuses to ferry the gang across the river.', 'Barquero.mp4', ' 28 June 1970'),
(8, 'Bigfoot.jpg', 'Bigfoot', '1970', '1h 24min', 'Bigfoot kidnaps some women and some bikers decide to go on a rescue mission to save them.', 'Bigfoot.mp4', ' 21 October 1970'),
(9, 'Chisum.jpg', 'Chisum', '1970', '1h 51min', 'Cattle baron John Chisum joins forces with Billy the Kid and Pat Garrett to fight the Lincoln County land war.', 'Chisum.mp4', ' 23 July 1970'),
(10, 'Fools.jpg', 'Fools', '1971', '1h 32m', 'An aging actor finds himself falling for the beautiful, and much younger, wife of an attorney.', 'Fools.mp4', ' 3 December 1971'),
(11, 'Airplane!.jpg', 'Airplane!', '1980', ' 1h 28min', 'A man afraid to fly must ensure that a plane lands safely after the pilots become sick.', 'Airplane!.mp4', '7 August 1980'),
(12, 'Alligator.jpg', 'Alligator', '1980', '1h 57m', 'A baby alligator is flushed down a Chicago toilet and survives by eating discarded laboratory rats injected with growth hormones. The small reptile grows gigantic, escapes the city sewers, and goes on a rampage.', 'Alligator.mp4', '14 November 1980'),
(13, 'Battle.jpg', 'Battle Creek Brawl', '1980', '1h 35min', 'A young Asian-American martial artist is forced to participate in a brutal formal street-fighting competition.', 'Battle.mp4', ' 29 August 1980'),
(14, 'Big.jpg', 'The Big Red One', '1980', '1h 46m', 'A hardened sergeant and the four core members of his infantry unit try to survive World War II as they move from battle to battle throughout Europe.', 'Big.mp4', ' 2 October 1980'),
(15, 'Brubaker.jpg', 'Brubaker', '1980', '2h 16m', 'The new warden of a small prison farm in Arkansas tries to clean it up of corruption after initially posing as an inmate.', 'Brubaker.mp4', '11 September 1980'),
(16, 'Cabo.jpg', 'Cabo Blanco', '1981', '1h 47m', 'In 1948, an assortment of shady characters are searching for Nazi loot, sunken off the coast of Peru.', 'Cabo.mp4', ' 1 February 1981'),
(17, 'Caddyshack.jpg', 'Caddyshack', '1980', '2h 1m', 'An exclusive golf course has to deal with a brash new member and a destructive dancing gopher.', 'Caddyshack.mp4', ' 14 August 1980'),
(18, 'Carny.jpg', 'Carny', '1980', '1h 30m', 'Tired of her dull job as a waitress, Donna decides to join two carnival hustlers and see what life in their field is like.', 'Carny.mp4', '23 May 1980'),
(19, 'Cruising.jpg', 'Cruising', '1980', '1h 31m', 'A police detective goes undercover in the underground S&M gay subculture of New York City to catch a serial killer who is preying on gay men.', 'Cruising.mp4', ' 11 September 1980'),
(20, 'Circle.jpg', 'Circle of Two', '1981', '2h 7m', 'The story of the impossible love between a schoolgirl and a sixty-year-old painter.', 'Circle.mp4', ' 7 May 1981'),
(21, 'Aladdin.jpg', 'Aladdin', '1993', '2h 2m', 'A kindhearted street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power to make their deepest wishes come true.', 'Aladdin.mp4', ' 17 November 1993'),
(22, 'Ghostbusters.jpg', 'Ghostbusters', '1984', '1h 45min', 'Three former parapsychology professors set up shop as a unique ghost removal service.', 'Ghostbusters.mp4', '7 December 1984'),
(23, 'Matrix.jpg', 'The Matrix', '1999', '1h 31m', 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth.', 'Matrix.mp4', ' 11 June 1999'),
(24, 'Twister.jpg', 'Twister', '1996', '1h 31m', 'Bill and Jo Harding, advanced storm chasers on the brink of divorce, must join together to create an advanced weather alert system by putting themselves in the cross-hairs of extremely violent tornadoes.', 'Twister.mp4', '  26 July 1996'),
(25, 'Tarzan.jpg', 'Tarzan', '1999', '1h 31m', 'A man raised by gorillas must decide where he really belongs when he discovers he is a human.', 'Tarzan.mp4', ' 22 October 1999'),
(26, 'Hocus.jpg', 'Hocus Pocus', '1993', '2h 31m', 'A curious youngster moves to Salem, where he struggles to fit in before awakening a trio of diabolical witches that were executed in the 17th century.', 'Hocus.mp4', ' 29 October 1993'),
(27, 'Addams.jpg', 'The Addams Family', '1991', '1h 11m', 'Con artists plan to fleece an eccentric family using an accomplice who claims to be their long-lost uncle.', 'Addams.mp4', ' 13 December 1991 '),
(28, 'Lion.jpg', 'The Lion King ', '1994', '1h 21m', 'Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.', 'Lion.mp4', ' 7 October 1994'),
(29, 'Ernest.jpg', 'Ernest Goes to Camp', '1987', '1h 31m', 'Ernest, a lovable loser who works as a summer camp handyman and dreams of becoming a guidance councilor, must find a way to inspire a group of juvenile delinquents as well as stop a shady strip mining company from closing the camp.\n', 'Ernest.mp4', '25 September 1987'),
(30, 'Witches.jpg', 'The Witches', '1990', '1h 35m', 'A young boy stumbles onto a witch convention and must stop them, even after he has been turned into a mouse.', 'Witches.mp4', '25 May 1990');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
CREATE TABLE IF NOT EXISTS `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_country`
--

DROP TABLE IF EXISTS `tbl_mov_country`;
CREATE TABLE IF NOT EXISTS `tbl_mov_country` (
  `mov_country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_director`
--

DROP TABLE IF EXISTS `tbl_mov_director`;
CREATE TABLE IF NOT EXISTS `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_lang`
--

DROP TABLE IF EXISTS `tbl_mov_lang`;
CREATE TABLE IF NOT EXISTS `tbl_mov_lang` (
  `mov_lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_studio`
--

DROP TABLE IF EXISTS `tbl_mov_studio`;
CREATE TABLE IF NOT EXISTS `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

DROP TABLE IF EXISTS `tbl_music`;
CREATE TABLE IF NOT EXISTS `tbl_music` (
  `music_id` int(10) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(100) NOT NULL,
  `music_singer` varchar(100) NOT NULL,
  `music_song` varchar(500) NOT NULL,
  PRIMARY KEY (`music_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_name`, `music_singer`, `music_song`) VALUES
(1, 'Blue', 'Eiffel 65', 'blue.mp4'),
(2, 'Sunshine', 'Jason Mraz', 'sunshine.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

DROP TABLE IF EXISTS `tbl_shows`;
CREATE TABLE IF NOT EXISTS `tbl_shows` (
  `shows_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shows_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `shows_title` varchar(125) NOT NULL,
  `shows_year` varchar(5) NOT NULL,
  `shows_runtime` varchar(25) NOT NULL,
  `shows_storyline` text NOT NULL,
  `shows_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `shows_release` varchar(125) NOT NULL,
  PRIMARY KEY (`shows_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`shows_id`, `shows_cover`, `shows_title`, `shows_year`, `shows_runtime`, `shows_storyline`, `shows_trailer`, `shows_release`) VALUES
(1, 'Cheers.jpg', 'Cheers', '1982–', '22min', 'The regulars of the Boston bar \"Cheers\" share their experiences and lives with each other while drinking or working at the bar where everybody knows your name.', 'Cheers.mp4', '1982–1993'),
(3, 'Muppet.jpg', 'The Muppet Show', '1976', '30min', 'Kermit the Frog and his fellow Muppets put on a vaudeville show at their theatre, bringing in a famous celebrity to help out for each episode.', 'Logan.mp4', '1976'),
(4, 'MacGyver.jpg', 'MacGyver', '1985-', '45min', 'The adventures of a secret Agent armed with almost infinite scientific resourcefulness.', 'MacGyver.mp4', '1985-1992'),
(5, 'Happy.jpg', 'Happy Days', '1974–', '30min', 'The Cunningham family live through the 1950s with help and guidance from the lovable and almost superhuman greaser, Fonzie.', 'Happy.mp4', '1974–1984'),
(6, 'Knight.jpg', 'Knight Rider ', '1986', '30min', 'A lone crimefighter battles the forces of evil with the help of a virtually indestructible and artificially intelligent supercar.', 'Knight.mp4', '1986'),
(7, 'mash.jpg', 'M*A*S*H', '1972', '25min', 'The staff of an Army hospital in the Korean War find that laughter is the best way to deal with their situation.', 'mash.mp4', '1972'),
(8, 'Company.jpg', 'Three Company', '1984', '30min', 'The misadventures of two women and one man living in one apartment and their neighbors.', 'Company.mp4', '1984'),
(9, 'Team.jpg', 'The A-Team', '1983', '1h', 'Four Vietnam vets, framed for a crime they didnt commit, help the innocent while on the run from the military.', 'Team.mp4', '1983'),
(10, 'Golden.jpg', 'The Golden Girls', '1985', '32min', 'Four previously married women live together in Miami, sharing their various experiences together and enjoying themselves despite hard times.', 'Golden.mp4', '1985'),
(11, 'Family.jpg', 'Family Ties ', '1982', '30min', 'Chronicles liberal ex-hippies Steven and Elyse Keaton, their conservative son Alex, daughters Mallory and Jennifer, and later, youngest child Andrew.', 'Family.mp4', '1982'),
(12, 'Quantum.jpg', 'Quantum Leap', '1989', '1h', 'During a government experiment into time travel, a scientist finds himself trapped in the past, \"leaping\" into the bodies of different people on a regular basis and sorting out their problems whilst trying to get back home to his own time.', 'Quantum.mp4', '1989'),
(13, 'Mork.jpg', 'Mork & Mindy', '1978', '30min', 'A wacky alien comes to Earth to study its residents and the life of the human woman he boards with is never the same.', 'Mork.mp4', '1978'),
(14, 'Jetsons.jpg', 'The Jetsons', '1962', '25min', 'The misadventures of a futuristic family.', 'Jetsons.mp4', '1962'),
(15, 'Night.jpg', 'Night Court ', '1984', '30min', 'An eccentric fun-loving judge presides over an urban night court and all the silliness going on there.', 'Night.mp4', '1984'),
(16, 'Tom.jpg', 'The Tom and Jerry Comedy Show', '1982', '45min', 'It is about a cat whos chasing a mouse.', 'Tom.mp4', '1982'),
(17, 'CHiPs.jpg', 'CHiPs', '1977', '30min', 'The adventures of two California Highway Patrol motorcycle officers.', 'CHiPs.mp4', '1977'),
(18, 'Simpsons.jpg', 'The Simpsons', '1989', '30min', 'The satiric adventures of a working-class family in the misfit city of Springfield.', 'Simpsons.mp4', '1989'),
(19, 'Angels.jpg', 'Charlie Angels', '1976', '31min', 'A wealthy mystery man named Charlie runs a detective agency via a speakerphone and his personal assistant, John Bosley. His detectives are three beautiful women, who end up in a variety of difficult situations.', 'Angels.mp4', '1976'),
(20, 'Inspector.jpg', 'Inspector Gadget', '1983', '45min', 'A bumbling bionic police inspector stumbles about on his cases, while his niece and dog secretly do the real investigative work.', 'Inspector.mp4', '1983'),
(21, 'Smurfs.jpg', 'Smurfs', '1981', '30min', 'The Smurfs are tiny blue creatures that live in mushroom houses in a peaceful forest. They repeatedly try to outwit Gargamel, an evil sorcerer, his apprentice, Scruple, and his mangy cat, Azrael.', 'Smurfs.mp4', '1981');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

DROP TABLE IF EXISTS `tbl_studio`;
CREATE TABLE IF NOT EXISTS `tbl_studio` (
  `studio_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(125) NOT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'AVCO Embassy Pictures'),
(2, 'Ross Hunter Productions'),
(3, 'Vestron Pictures'),
(4, 'Von Zerneck-Sertner Films'),
(5, 'Cinema Management Inc.'),
(6, 'Walt Disney Productions'),
(7, '	United Artists'),
(8, ' Ellman Film Enterprises'),
(9, ' Warner Bros.'),
(10, ' Translor Films '),
(11, 'Paramount Pictures'),
(12, ' Alligator'),
(13, 'Golden Harvest Company'),
(14, ' Lorimar Productions'),
(15, 'Twentieth Century Fox'),
(16, ' Arco Films'),
(17, 'Orion Pictures'),
(18, 'Warner Bros.'),
(19, ' Lorimar Film Entertainment'),
(20, 'Film Consortium of Canada'),
(21, 'Walt Disney Pictures'),
(22, 'Paramount Pictures'),
(23, 'Warner Bros.'),
(24, 'Universal Pictures'),
(25, 'Warner Bros'),
(26, ' Lorimar Productions'),
(27, 'Twentieth Century Fox'),
(28, ' Arco Films'),
(29, 'Orion Pictures'),
(30, 'Warner Bros.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_admin` tinyint(4) DEFAULT NULL,
  `user_access` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_admin`, `user_access`) VALUES
(1, 'trevor', 'user1', 'password', 't@t.com', '2019-02-01 19:07:35', '::1', 1, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
