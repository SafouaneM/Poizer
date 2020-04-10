-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2020 at 05:09 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Don\'t smile at me', 1, 2, 'assets/images/artwork/dontsmile.jpg'),
(2, 'When we all fall asleep where do we go', 1, 2, 'assets/images/artwork/sleepwhere2.jpg'),
(3, 'El dorado', 4, 12, 'assets/images/artwork/shakira.JFIF'),
(4, 'Anime collection', 2, 3, 'assets/images/artwork/aka.jpg'),
(5, 'Greatest hits ', 5, 13, 'assets/images/artwork/bob.jpg'),
(6, 'Oral Fixation', 4, 12, 'assets/images/artwork/shakira2.jpg'),
(7, 'ASTROWORLD', 3, 4, 'assets/images/artwork/astro.jpg'),
(8, 'lofi hip hop ', 6, 3, 'assets/images/artwork/lofi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Billie Eilish'),
(2, 'Aka'),
(3, 'Travis Scott'),
(4, 'Shakira'),
(5, 'Bob Marley'),
(6, 'ChilledCow');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Clasical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country'),
(11, 'Disco'),
(12, 'Latin'),
(13, 'Reggae');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(8, 'playlissttt', 'Safou', '2020-04-09 00:00:00'),
(9, 'My real playlist', 'Safou', '2020-04-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(1, 8, 1, 1),
(2, 23, 1, 2),
(4, 1, 0, 0),
(9, 1, 9, 1),
(12, 12, 9, 4),
(13, 3, 9, 5),
(14, 35, 9, 6),
(15, 34, 9, 7),
(17, 3, 8, 1),
(20, 13, 9, 8);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Love Dramatic', 2, 4, 2, '4:23', 'assets/music/kaguya-sama-love-is-war-op-full-love-dramatic-masayuki-suzuki-eng-sub.mp3', 1, 24),
(2, 'Brave Shine', 2, 4, 2, '3:54', 'assets/music/aimer-brave-shine-full-fatestay-night-unlimited-blade-works-2015-op.mp3', 2, 18),
(3, 'COPYCAT', 1, 1, 2, '3:17', 'assets/music/billie-eilish-copycat-audio.mp3', 1, 12),
(4, 'Bellyache', 1, 1, 2, '3:30', 'assets/music/billie-eilish-bellyache.mp3', 2, 3),
(5, 'Hostage', 1, 1, 2, '3:49', 'assets/music/billie-eilish-hostage-audio.mp3', 3, 4),
(6, 'I dont wanna be you anymore', 1, 1, 2, '3:23', 'assets/music/billie-eilish-idontwannabeyouanymore-audio.mp3', 4, 5),
(7, 'My boy', 1, 1, 2, '2:50', 'assets/music/billie-eilish-my-boy-audio.mp3', 5, 2),
(8, 'Party favor', 1, 1, 2, '3:23', 'assets/music/billie-eilish-party-favor-audio.mp3', 6, 7),
(9, 'Watch', 1, 1, 2, '2:56', 'assets/music/billie-eilish-watch-audio.mp3', 7, 3),
(10, 'Ocean eyes', 1, 1, 2, '3:20', 'assets/music/billie-eilish-ocean-eyes-official-audio-lyrics-in-description.mp3', 8, 3),
(11, '8', 1, 2, 2, '2:53', 'assets/music/8.mp3', 1, 8),
(12, 'all the good girls go to hell', 1, 2, 2, '2:48', 'assets/music/all-the-good-girls-go-to-hell.mp3', 2, 4),
(13, 'bad guy', 1, 2, 2, '3:14', 'assets/music/bad-guy.mp3', 3, 12),
(14, 'bury a friend', 1, 2, 2, '3:13', 'assets/music/bury-a-friend.mp3', 4, 2),
(15, 'ilomilo', 1, 2, 2, '2:36', 'assets/music/ilomilo.mp3', 5, 1),
(16, 'i love you', 1, 2, 2, '4:51', 'assets/music/i-love-you.mp3', 6, 4),
(17, 'listen before i go', 1, 2, 2, '4:02', 'assets/music/listen-before-i-go.mp3', 7, 3),
(18, 'my strange addiction', 1, 2, 2, '2:59', 'assets/music/my-strange-addiction.mp3', 8, 3),
(19, 'when the partys over', 1, 2, 2, '3:16', 'assets/music/when-the-partys-over.mp3', 9, 1),
(20, 'wish you were gay', 1, 2, 2, '3:41', 'assets/music/wish-you-were-gay.mp3', 10, 1),
(21, 'xanny', 1, 2, 2, '4:03', 'assets/music/xanny.mp3', 11, 3),
(22, 'you should see me in a crown', 1, 2, 2, '3:00', 'assets/music/you-should-see-me-in-a-crown.mp3', 12, 2),
(23, 'goodbye', 1, 2, 2, '1:59', 'assets/music/goodbye.mp3', 13, 6),
(24, 'No Woman, No Cry', 5, 5, 13, '7:04', 'assets/music/02-no-woman-no-cry-bob-marley-legend.mp3', 1, 7),
(25, 'Could You Be Loved', 5, 5, 13, '3:55', 'assets/music/03-could-you-be-loved-bob-marley-legend.mp3', 2, 5),
(26, 'Three Little Birds', 5, 5, 13, '2:58', 'assets/music/04-three-little-birds-bob-marley-legend.mp3', 3, 7),
(27, 'Get Up Stand Up', 5, 5, 13, '3:16', 'assets/music/06-get-up-stand-up-bob-marley-legend.mp3', 4, 4),
(28, 'Haikyuu!!! (Imagination)', 2, 4, 3, '2:59', 'assets/music/haikyuu-opening-1-full-lyrics-eng-and-romaji-subtitles.mp3', 3, 8),
(29, 'Haikyuu!! (Mashi Mashi ED 5)', 2, 4, 3, '4:04', 'assets/music/nico-touches-the-wall-mashi-mashi-lyrics.mp3', 4, 12),
(30, 'Bleach (ORANGE-RANGE OP 1)', 2, 4, 3, '4:15', 'assets/music/bleach-opening-1-full.mp3', 5, 13),
(31, 'Dr.Stone (Sangenshoku OP 2) ', 2, 4, 3, '3:25', 'assets/music/dr-stone-op-opening-2-full-sangenshoku-by-pelican-fanclub.mp3', 6, 7),
(32, '70cm', 2, 4, 3, '3:52', 'assets/music/rottengraffty-70cmmusic-video.mp3', 7, 11),
(33, 'Boku No Hero Acedemia (Odd Future OP 4)', 2, 4, 3, '3:47', 'assets/music/uverworld-odd-future-i-keep-my-ideals-version.mp3', 8, 12),
(34, 'Again (Full Metal Alchemist Brotherhood OP 1)', 2, 4, 3, '1:29', 'assets/music/fullmetal-alchemist-brotherhood-opening-1-again-creditless.mp3', 9, 10),
(35, 'Don\'t bother', 4, 6, 1, '4:19', 'assets/music/shakira-cd-oral-fixation-vol-2-05-dont-bother.mp3', 1, 10),
(36, 'La tortura', 4, 6, 12, '3:33', 'assets/music/shakira-cd-oral-fixation-vol-2-13-la-tortura-alternate-version.mp3', 2, 3),
(37, 'Hips don\'t lie', 4, 6, 12, '3:40', 'assets/music/shakira-cd-oral-fixation-vol-2-03-hips-dont-lie.mp3', 3, 2),
(38, 'Trap', 4, 3, 12, '3:21', 'assets/music/shakira-trap-audio-ft-maluma.mp3', 1, 3),
(39, 'Me Enamoré', 4, 3, 12, '3:52', 'assets/music/shakira-me-enamore-official-video.mp3', 2, 2),
(40, 'Chantaje', 4, 3, 12, '3:19', 'assets/music/shakira-chantaje-official-video-ft-maluma.mp3', 3, 6),
(41, 'Perro Fiel', 4, 3, 12, '3:16', 'assets/music/shakira-perro-fiel-audio-ft-nicky-jam.mp3', 4, 5),
(42, 'BUTTERFLY EFFECT', 3, 7, 4, '3:32', 'assets/music/travis-scott-butterfly-effect-official-music-video.mp3', 1, 3),
(43, 'NO BYSTANDERS', 3, 7, 4, '3:39', 'assets/music/travis-scott-no-bystanders-audio.mp3', 2, 3),
(44, 'STARGAZING', 3, 7, 4, '4:32', 'assets/music/travis-scott-stargazing-audio.mp3', 3, 2),
(45, 'STOP TRYING TO BE GOD', 3, 7, 4, '4:36', 'assets/music/travis-scott-stop-trying-to-be-god.mp3', 4, 1),
(46, 'YOSEMITE', 3, 7, 4, '4:31', 'assets/music/travis-scott-yosemite.mp3', 5, 3),
(47, 'idealism - last time', 6, 8, 2, '2:52', 'assets/music/idealism-last-time.mp3', 1, 1),
(48, 'Rainy Forest', 6, 8, 2, '2:00', 'assets/music/rainy-forest.mp3', 2, 1),
(49, 'idealism - another perspective', 6, 8, 2, '2:47', 'assets/music/kudasai-dream-of-her.mp3', 3, 1),
(50, 'kudasai - dream of her', 6, 8, 2, '3:37', 'assets/music/idealism-another-perspective.mp3', 4, 1),
(51, 'Pokémon Diamond and Pearl: Lake Theme ', 6, 8, 2, '4:43', 'assets/music/pokemon-diamond-and-pearl-lake-theme-lofi-remix.mp3', 5, 2),
(52, 'Pokémon Sun and Moon: Lillie\'s Theme [Lofi Remix]', 6, 8, 2, '5:12', 'assets/music/pokemon-sun-and-moon-lillies-theme-lofi-remix.mp3', 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'Safou', 'Safouane', 'Messa', 'Saf@gmail.com', '701f33b8d1366cde9cb3822256a62c01', '2020-04-07 00:00:00', 'assets/images/profile-pics/avatar_blue.png'),
(2, 'Mario', 'Mario', 'Mariomario', 'Mario@gmail.com', 'e9da82f4c252e7f1745ae88f2624fc07', '2020-04-07 00:00:00', 'assets/images/profile-pics/avatar_blue.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
