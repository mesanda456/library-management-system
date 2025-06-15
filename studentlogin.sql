-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2025 at 03:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `picture` varchar(250) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `Added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `picture`, `title`, `author`, `genre`, `isbn`, `Added_on`) VALUES
(38, 'uploads/b2.jpeg', 'To Kill a Mockingbird', 'Harper Lee', 'Fiction, Historical', '9780060935467', '2024-11-20 04:04:07'),
(39, 'uploads/b3.jpeg', 'The Old Man and the Sea', 'Ernest Hemingway', 'Fiction, Adventure', '9780684830490', '2024-11-19 18:12:16'),
(40, 'uploads/b4.jpeg', 'The Giver', 'Lois Lowry', 'Dystopian, Young Adult', '9780544336261', '2024-11-19 18:12:52'),
(42, 'uploads/b6.jpeg', 'Animal Farm', 'George Orwell', 'Political Satire, Fiction', '9780451526342', '2024-11-19 18:13:46'),
(44, 'uploads/b9.jpeg', 'Of Mice and Men', 'John Steinbeck', 'Fiction, Traged', '9780140177398', '2024-11-19 20:58:33'),
(46, 'uploads/b14.jpeg', 'Little Women', 'Louisa May Alcott', 'Fiction, Classic', '978014751401', '2024-11-19 20:54:01'),
(47, 'uploads/b13.jpeg', 'The Wind in the Willows', 'Kenneth Grahame', 'Children\'s Fiction, Classic', '9780451530141', '2024-11-19 18:51:23'),
(48, 'uploads/b11.jpeg', 'Anne of Green Gables', 'L.M. Montgomery', 'Fiction, Classic', '9780553213133', '2024-11-19 19:51:45'),
(49, 'uploads/b12.jpeg', ' The Secret Garden', 'Frances Hodgson Burnett', 'Children\'s Fiction, Classic', '9780064401883', '2024-11-19 19:53:13'),
(51, 'uploads/b8.jpeg', 'Matilda', 'Ronald Dahl', 'Children\'s Fiction', '9780142410370', '2024-11-19 21:07:58'),
(53, 'uploads/b14.jpeg', 'ffffffffffffffff', 'mmmmmmmmmmm', 'llllllll', '12546', '2024-12-05 12:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_name`, `email`, `message`) VALUES
(10, 'shasani', 'sha@gmail.com', 'Good job'),
(11, 'Tharushi', 'Tharu@gmail.com', 'Well done'),
(12, 'Nethmi', 'neth@gmail.com', 'Nice'),
(13, 'usha test', 'u@gmail.com', 'hdjfhdjfhdf');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `f_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `f_Name`, `L_Name`, `username`, `email`, `contact`, `password`) VALUES
(19, 'shasani', 'Nisansala', 'shasani', 'sha@gmail.com', '0752041657', 'Sh@242003'),
(20, 'chamika', 'Heshani', 'Chami', 'chami@gmail,com', '0720357717', 'Ch@mi2003'),
(21, 'Dilmi', 'Ishara', 'Dilmi', 'dil@gmail.com', '0752413961', 'Dil#2002'),
(22, 'Mesnda', 'Sethumika', 'Mesanda', 'Mes@gmail.com', '0764846394', 'Me#222003'),
(23, 'Nigeeth', 'Maleesha', 'Nigi', 'kamkanamlage394@gmail.com', '0764846394', 'Nigi@062003'),
(24, 'Yashara', 'Sadunika', 'Yashara', 'yash@gmail.com', '0720357718', 'Ya@sg452'),
(26, 'Nethmi', 'Chehani', 'Nethmi', 'neth@gmail.com', '0750884115', 'Net#01202'),
(27, 'Tharushi', 'Devindi', 'Tharushi', 'Tharu@gmail.com', '0752314589', 'Th@r12546'),
(28, 'usha', 'nir', 'usha', 'u@gmail.com', '3748734873', 'Admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
