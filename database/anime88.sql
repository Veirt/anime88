-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 09, 2023 at 11:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anime88`
--

-- --------------------------------------------------------

--
-- Table structure for table `anime`
--

CREATE TABLE `anime` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `episodes` int(11) NOT NULL,
  `status` enum('Airing','Finished','Upcoming') NOT NULL,
  `season` enum('Winter','Spring','Summer','Fall') NOT NULL,
  `year` year(4) NOT NULL,
  `studio` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `anime`
--

INSERT INTO `anime` (`id`, `name`, `synopsis`, `episodes`, `status`, `season`, `year`, `studio`, `poster`) VALUES
(1, 'Vinland Saga', 'Young Thorfinn grew up listening to the stories of old sailors that had traveled the ocean and reached the place of legend, Vinland. It\'s said to be warm and fertile, a place where there would be no need for fighting—not at all like the frozen village in Iceland where he was born, and certainly not like his current life as a mercenary. War is his home now. Though his father once told him, \"You have no enemies, nobody does. There is nobody who it\'s okay to hurt,\" as he grew, Thorfinn knew that nothing was further from the truth. The war between England and the Danes grows worse with each passing year. Death has become commonplace, and the viking mercenaries are loving every moment of it. Allying with either side will cause a massive swing in the balance of power, and the vikings are happy to make names for themselves and take any spoils they earn along the way. Among the chaos, Thorfinn must take his revenge and kill Askeladd, the man who murdered his father. The only paradise for the vikings, it seems, is the era of war and death that rages on.', 23, 'Finished', 'Summer', '2019', 'WIT Studio', 'vinland-saga.png');

-- --------------------------------------------------------

--
-- Table structure for table `anime_genre`
--

CREATE TABLE `anime_genre` (
  `id_anime` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `anime_genre`
--

INSERT INTO `anime_genre` (`id_anime`, `id_genre`) VALUES
(1, 1),
(1, 2),
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`, `details`) VALUES
(1, 'Action', ''),
(2, 'Adventure', ''),
(3, 'Comedy', ''),
(4, 'Mystery', ''),
(5, 'Drama', ''),
(6, 'Mythology', ''),
(7, 'Fantasy', ''),
(8, 'Historical', ''),
(9, 'Horror', ''),
(10, 'Mecha', ''),
(11, 'Music', ''),
(12, 'Parody', ''),
(13, 'Romance', ''),
(14, 'School', ''),
(15, 'Sci-Fi', ''),
(16, 'Sports', ''),
(17, 'Super Power', ''),
(18, 'Harem', ''),
(19, 'Slice of Life', ''),
(20, 'Supernatural', ''),
(21, 'Military', ''),
(22, 'Psychological', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id_user` int(11) NOT NULL,
  `id_anime` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id_user`, `id_anime`, `rating`, `comment`) VALUES
(1, 1, 10, 'ntapz');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'vei', '$2y$10$Khwl2o6ivjWjKZtLPcbnWOY1nOX1kPGVeA2P2nRGca7FLZYqfIwli', 'user'),
(2, 'test', '$2y$10$8e8PcZ8fhRIQiteK1xK.meD3FHMUkcijfJ5LqrhHfsZ8plXUbubB.', 'user'),
(3, 'user', '$2y$10$q8qdX3PkiQx5IbDAdmsGzOEamQ3MlkqLBODFpuIybjmZjLlDsIKGS', 'user'),
(4, 'admin', '$2y$10$Py/EWVcW6TKUGoGtZqzE/uHg4098ohjdhoR/7XKYeF0tATp8AYHCG', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anime_genre`
--
ALTER TABLE `anime_genre`
  ADD KEY `id_anime` (`id_anime`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_anime` (`id_anime`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anime_genre`
--
ALTER TABLE `anime_genre`
  ADD CONSTRAINT `anime_genre_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `anime_genre_ibfk_3` FOREIGN KEY (`id_anime`) REFERENCES `anime` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`id_anime`) REFERENCES `anime` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
