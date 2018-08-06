-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2018 at 11:14 AM
-- Server version: 5.6.33-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bookstore`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `Author` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `Author`) VALUES
(1, 'Mary Shelly'),
(2, 'Erich Segal'),
(3, 'Harper Lee'),
(4, 'Agatha Christie'),
(5, 'Henrik Ibsen'),
(6, 'Stieg Larsson'),
(7, 'Stephen King'),
(8, 'John Green & Rodrigo Corral'),
(9, 'F. Scott Fitzgerald'),
(10, 'Nicholas Sparks'),
(11, 'Dan Brown'),
(12, 'Bram Stoker'),
(13, 'Margaret Mitchell'),
(14, 'William Shakespeare'),
(15, 'Lionel Shriver'),
(16, 'Dashiell Hammett'),
(17, 'William Peter Blatty');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(10) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `author_id` int(10) DEFAULT NULL,
  `Description` text,
  `genre_id` int(10) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `Title`, `author_id`, `Description`, `genre_id`, `image`) VALUES
(1, 'Frankenstein', 1, 'Frankenstein; or, The Modern Prometheus is a novel written by English author Mary Shelley that tells the story of Victor Frankenstein, a young scientist who creates a grotesque but sapient creature in an unorthodox scientific experiment.', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNuZdE-aF-a5rOlFj89YQrgAorbZ1BFk1WxocriuAE5IE13Uo-'),
(2, 'Love Story', 2, 'Love Story is a 1970 romance novel by American writer Erich Segal. The book\'s origins lay in a screenplay that Segal wrote, and that was subsequently approved for production by Paramount Pictures.', 4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr-30gye2p1AtYvDCDHi5ej0j6J7DQ9XjcS1lcRDY0QNJIWEa-'),
(3, 'To Kill a Mockingbird', 3, 'To Kill a Mockingbird is a novel by Harper Lee published in 1960. It was immediately successful, winning the Pulitzer Prize, and has become a classic of modern American literature.', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuoHLZQnxJL2RiibtoZ7-A-5hr41irzEuf2Py0htnmQgbsLa-OJA'),
(4, 'Death on the Nile', 4, 'Death on the Nile is a book of detective fiction by Agatha Christie and first published in the UK by the Collins Crime Club on 1 November 1937 and in the US by Dodd, Mead and Company the following year.', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGNUkhFN7iR8siNJfKk7NTuxJhWkKOkCFWCIrJNk22NDH3sBbonw'),
(5, 'A Doll\'s House', 5, 'A Doll\'s House is a three-act play written by Norway\'s Henrik Ibsen. It premiered at the Royal Theatre in Copenhagen, Denmark, on 21 December 1879, having been published earlier that month. The play is set in a Norwegian town circa 1879.', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSx783Yp6cdH5eh5TtUohNeV3utdFzvROSNdA9lAFit_YOnqeSEQ'),
(6, 'The Girl with the Dragon Tattoo', 6, 'The Girl with the Dragon Tattoo is a psychological thriller novel by the late Swedish author and journalist Stieg Larsson, which was published posthumously in 2005 to become an international bestseller. It is the first book of the Millennium series.', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwRobe18_NDQTWvRscdg9figXsrpRH3CJSkkFcH7r-_XPkwJRT'),
(7, 'The Shining', 7, 'The Shining is a horror novel by American author Stephen King. Published in 1977, it is King\'s third published novel and first hardback bestseller: the success of the book firmly established King as a preeminent author in the horror genre.', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlucVxnll7apc729d74C-iXKuMjZb8ynYwIxXIPsxSTxaPYkwV'),
(8, 'The Fault in Our Stars', 8, 'The Fault in Our Stars, published in January 2012, is the sixth novel by author John Green. The title is inspired by Act 1, Scene 2 of Shakespeare\'s play Julius Caesar, in which the nobleman Cassius says to Brutus: \"The fault, dear Brutus, is not in our stars, / But in ourselves, that we are underlings.\"...', 4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFw5UUpZZcOIs7x7HJpobT0-AsB-ike62jbDottRvKDU9IJ5UGVw'),
(9, 'It', 7, 'It is a 1986 horror novel by American author Stephen King. It was his 22nd book, and his 18th novel written under his own name', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF0WEDCYSFR3X25L6oVI93jzsoiAPihfavd8Kts1i-MbtkW-Najw'),
(10, 'Murder on the Orient Express', 4, 'Murder on the Orient Express is a detective novel by Agatha Christie featuring the Belgian detective Hercule Poirot. It was first published in the United Kingdom by the Collins Crime Club on 1 January 1934.', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbqi_kjOWuGDaynscH51R54-t0ILyJcmE4ZuoD6ZlU9s2BF_ugIA'),
(11, 'The Great Gatsby', 9, 'The Great Gatsby is a 1925 novel written by American author F. Scott Fitzgerald that follows a cast of characters living in the fictional town of West and East Egg on prosperous Long Island in the summer of 1922.', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWxHf-i3sL2-EPf7UEk9-X-tWAYfR3CFO-jiRkb13O0kxxvIWK5w'),
(12, 'The Notebook', 10, 'The Notebook is a 1996 romantic novel by American novelist Nicholas Sparks, The novel was later adapted into a popular film of the same name, in 2004. The Indian Bollywood film, Zindagi Tere Naam, starring Mithun Chakraborty, is also based on it.', 4, 'https://images-na.ssl-images-amazon.com/images/I/51-vX-Ra9SL._SX322_BO1,204,203,200_.jpg'),
(13, 'The Da Vinci Code', 11, 'The Da Vinci Code is a 2003 mystery thriller novel by Dan Brown. It follows \"symbologist\" Robert Langdon and cryptologist Sophie Neveu after a murder in the Louvre Museum in Paris causes them to become involved in a battle between the Priory of Sion and Opus Dei over the possibility of Jesus Christ having been a companion to Mary Magdalene.\r\n\r\n', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCqWnPc2ZJxFR8PqhXQGwA2qqFYvgfLBsS6aKqAJqLFiv9K8Im'),
(14, 'Dracula', 12, 'Dracula is an 1897 Gothic horror novel by Irish author Bram Stoker. It introduced Count Dracula, and established many conventions of subsequent vampire fantasy.', 2, 'https://images-na.ssl-images-amazon.com/images/I/51F49MFtd8L.jpg'),
(15, 'Gone with the Wind', 13, 'Gone with the Wind is a novel by American writer Margaret Mitchell, first published in 1936. The story is set in Clayton County and Atlanta, both in Georgia, during the American Civil War and Reconstruction Era.', 4, 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Gone_with_the_Wind_cover.jpg/220px-Gone_with_the_Wind_cover.jpg'),
(16, 'Romeo and Juliet', 14, 'Romeo and Juliet is a tragedy written by William Shakespeare early in his career about two young star-crossed lovers whose deaths ultimately reconcile their feuding families.', 4, 'https://images-na.ssl-images-amazon.com/images/I/51djczUCogL._SX331_BO1,204,203,200_.jpg'),
(17, 'We Need to Talk About Kevin', 15, 'We Need to Talk About Kevin is a 2003 novel by Lionel Shriver, published by Serpent\'s Tail, about a fictional school massacre.\r\n\r\n', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS24Rl3HCECR44ZVkQOh_f9s7zfX4Z26G5b14iQOFAwRRvozw2sMQ'),
(18, 'The Maltese Falcon', 16, 'The Maltese Falcon is a 1930 detective novel by Dashiell Hammett, originally serialized in the magazine Black Mask beginning with the September 1929 issue. The story has been adapted several times for the cinema.', 3, 'https://images.penguinrandomhouse.com/cover/9780307767516'),
(19, 'The Exorcist', 17, 'The Exorcist is a 1971 novel by American writer William Peter Blatty. The book details the demonic possession of twelve-year-old Regan MacNeil, the daughter of a famous actress, and the two priests who attempt to exorcise the demon.', 2, 'https://images-na.ssl-images-amazon.com/images/I/41WBSlB6IoL._SX331_BO1,204,203,200_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(10) NOT NULL,
  `Genre` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `Genre`) VALUES
(1, 'Drama'),
(2, 'Horror'),
(3, 'Mystery'),
(4, 'Romance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `Genre` (`genre_id`),
  ADD KEY `books_ibfk_2` (`author_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
