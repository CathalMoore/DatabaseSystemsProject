-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2015 at 03:33 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `ammo`
--

CREATE TABLE IF NOT EXISTS `ammo` (
  `weapon_type` varchar(32) NOT NULL,
  `quantity` int(4) DEFAULT NULL,
  `dam_mod` int(2) DEFAULT NULL,
  `cond_mod` int(2) DEFAULT NULL,
  `price` int(3) DEFAULT NULL,
  `weight` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO ammo (weapon_type, quantity, dam_mod, cond_mod, price, weight)
VALUES ("10mm Pistol", 10, 20, 20, 15, 0.01),
VALUES ("10mm Pistol", 10, 20, 20, 15, 0.01),
;

-- --------------------------------------------------------

--
-- Table structure for table `apparel`
--

CREATE TABLE IF NOT EXISTS `apparel` (
`apparel_id` int(3) NOT NULL,
  `apparel_name` varchar(32) DEFAULT NULL,
  `apparel_condition` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apparel_stats`
--

CREATE TABLE IF NOT EXISTS `apparel_stats` (
  `apparel_name` varchar(32) NOT NULL,
  `DT` int(2) DEFAULT NULL,
  `weight` int(1) DEFAULT NULL,
  `price` int(3) DEFAULT NULL,
  `apparel_type` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `char_name` varchar(32) NOT NULL,
  `stregth` int(1) DEFAULT NULL,
  `perception` int(1) DEFAULT NULL,
  `endurance` int(1) DEFAULT NULL,
  `charisma` int(1) DEFAULT NULL,
  `intelligence` int(1) DEFAULT NULL,
  `agility` int(1) DEFAULT NULL,
  `luck` int(1) DEFAULT NULL,
  `equipped_weapon` int(3) DEFAULT NULL,
  `equipped_hat` int(3) DEFAULT NULL,
  `equipped_armour` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE IF NOT EXISTS `weapons` (
`weapon_id` int(3) NOT NULL,
  `weapon_condition` int(2) DEFAULT NULL,
  `weapon_name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weapon_stats`
--

CREATE TABLE IF NOT EXISTS `weapon_stats` (
  `weapon_name` varchar(32) NOT NULL,
  `weapon_type` varchar(32) DEFAULT NULL,
  `damage` int(2) DEFAULT NULL,
  `weight` int(1) DEFAULT NULL,
  `price` int(3) DEFAULT NULL,
  `clip_size` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ammo`
--
ALTER TABLE `ammo`
 ADD PRIMARY KEY (`weapon_type`);

--
-- Indexes for table `apparel`
--
ALTER TABLE `apparel`
 ADD PRIMARY KEY (`apparel_id`);

--
-- Indexes for table `apparel_stats`
--
ALTER TABLE `apparel_stats`
 ADD PRIMARY KEY (`apparel_name`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
 ADD PRIMARY KEY (`char_name`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
 ADD PRIMARY KEY (`weapon_id`);

--
-- Indexes for table `weapon_stats`
--
ALTER TABLE `weapon_stats`
 ADD PRIMARY KEY (`weapon_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apparel`
--
ALTER TABLE `apparel`
MODIFY `apparel_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `weapons`
--
ALTER TABLE `weapons`
MODIFY `weapon_id` int(3) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
