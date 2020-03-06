-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 06, 2020 at 05:19 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `christmas_market`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `Name` varchar(24) DEFAULT NULL,
  `City` varchar(14) DEFAULT NULL,
  `StartDate` varchar(10) DEFAULT NULL,
  `EndDate` varchar(10) DEFAULT NULL,
  `Location` varchar(55) DEFAULT NULL,
  `Budget` varchar(6) DEFAULT NULL,
  `Picture` varchar(94) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`Name`, `City`, `StartDate`, `EndDate`, `Location`, `Budget`, `Picture`) VALUES
('Hamburg Dom Festival', 'Hamburg', '11/9/2019', '12/9/2019', 'Heiligengeistfeld Square', 'Middle', 'https://dl.airtable.com/.attachments/fc0c875ecebd11f811f6861dbad7df94/a1624dc3/hamburgdom.jpg'),
('Hanukkah', 'Berlin', '12/2/2019', '12/10/2019', 'Brandenburg ', 'Low', 'https://dl.airtable.com/.attachments/84fa1f60a5224e455472fe1376f4c130/6c6e3484/berlinhaka.jpg'),
('ChocolART Festival', 'Tubingen', '12/5/2019', '12/9/2019', 'Tubingen Central Market', 'Low', 'https://dl.airtable.com/.attachments/ff5954f25731e163de991cd32e443516/91f933f4/chocolatefe.jpg'),
('Stollen Festival', 'Dresden', '12/3/2019', '12/3/2019', 'Dresden Old Town', 'Low', 'https://dl.airtable.com/.attachments/c924b828419ca0b67e2e2e08f62ffd76/86bcb85f/4stollen.jpg'),
('Tollwood Winter Festival', 'Munich', '11/26/2019', '12/31/2019', 'Theresienwiese', 'Middle', 'https://dl.airtable.com/.attachments/b612e472038a18ad05360b05a419dfa5/8ce6605a/5tollywood.jpg'),
('Christmas market', 'Various cities', '11/27/2019', '12/24/2019', 'Main squares and shopping malls in various cities', 'Middle', 'https://dl.airtable.com/.attachments/1b22fe0c640297e573f907bf27cc43ae/8a1d6f61/6market.jpg'),
('Krampuslauf', 'Various cities', '12/5/2019', '12/6/2019', 'Main streets', 'Low', 'https://dl.airtable.com/.attachments/8d0f299998edb4ff9d0ef6e33e33546e/6401ad90/7kanpusi.jpg'),
('Christmas Garden', 'Berlin', '11/15/2019', '1/5/2020', 'Botanischer Garten und Botanisches Museum Berlin-Dahlem', 'Middle', 'https://dl.airtable.com/.attachments/7b82dd76091f90628a6dce9d7ea4afe9/85a281c5/8garden.jpg'),
('Circus Krone', 'Munich', '12/25/2019', '1/31/2020', 'Zirkus-Krone-Strasse 1-6, Munich', 'High', 'https://dl.airtable.com/.attachments/c15cf872971306071c98933e800bbede/ab87ec9c/9circus.jpg'),
('Silvester', 'Berlin', '12/31/2019', '1/1/2020', 'Brandenburg Gate', 'Low', 'https://dl.airtable.com/.attachments/febf5a121eb0ac4433302a055c25c568/44916608/10fireworks.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
