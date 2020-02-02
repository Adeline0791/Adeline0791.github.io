-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2020 at 08:47 AM
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
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `City` varchar(20) NOT NULL,
  `State` varchar(22) NOT NULL,
  `Date` varchar(51) NOT NULL,
  `Location` varchar(296) NOT NULL,
  `Time` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`City`, `State`, `Date`, `Location`, `Time`) VALUES
('Aachen', 'Nordrhein-Westfalen', 'Nov 23-Dec 23', 'Aachen Town Hall', '11am-9pm'),
('Augsburg', 'Bavaria', 'Nov 26-Dec 24', 'City hall', '10am-8pm (Sun-Thu), 10am-9.30pm (Fri-Sat)'),
('Baden-Baden', 'Baden-Württemberg', 'Nov 26-Dec 30', 'Lichtentaller Allee', '11am-9pm daily'),
('Berlin', 'Berlin', 'Nov 23-Dec 31', 'Various locations', '11am-10pm (some markets open at 10am, while one or two begin at 2pm)'),
('Bielefeld', 'Nordrhein-Westfalen', 'Nov 26-Dec 30', 'Jahnplatz', '11am-9pm (Sun-Thu), 11am-10pm (Fri-Sat)'),
('Bochum', 'Nordrhein-Westfalen', 'Nov 22-Dec 23', 'Dr Ruer-Platz Square', '11am-10pm daily'),
('Bonn', 'Nordrhein-Westfalen', 'Nov 23-Dec 23', 'Münsterplatz, Bottlerplatz Windeckstrasse, Friedensplatz and Vivatsgasse', '11am-9pm daily'),
('Braunschweig', 'Sachsen-Anhalt', 'Nov 28-Dec 29', 'Platz der Deutschen Einheit', '10am-9pm (Mon-Sat); 11am-9pm (Sun)'),
('Bremen', 'Bremen', 'Nov 26-Dec 23', 'Town Hall', '10am-8.30pm (Mon-Thurs); 10am-9pm (Fri-Sat); 11am-8.30pm (Sundays)'),
('Chemnitz', 'Freistaat Sachsen', 'Nov 30-Dec 23', 'Markt, Neumarkt, Rosenhof, Jakobikirchplatz and Innere Klosterstraße', '10am-8pm daily'),
('Cologne', 'Nordrhein-Westfalen', 'Nov 26-Dec 23', 'Cathedral Christmas Market, Angels\'Christmas Market, Harbour Christmas Market, Old Market Christmas, Village of St Nicholas, Christmas Market in the Stadtgarten and the Gay and Lesbian Christmas Market', '11am-9pm (Sun-Wed); 11am-10pm (Thurs-Fri); 10am-10pm (Sat)'),
('Dortmund', 'Nordrhein-Westfalen', 'Nov 22-Dec 30', 'Dortmunder Weihnachtsmarkt', '10am-9pm (Mon-Thurs); 10am-10pm (Fri-Sat); 12pm-9pm Sundays'),
('Dresden', 'Sachsen-Anhalt', 'Nov 28-Dec 24', 'Altmarkt Square', '10am-9pm'),
('Duisburg', 'Nordrhein-Westfalen', 'Nov 22-Dec 30', 'Königstrasse', 'TBC'),
('Dusseldorf', 'Nordrhein-Westfalen', 'Nov 22-Dec 30', 'Marktplatz, Heinrich-Heine-Platz, Flinger Straße, Stadtbrückchen, Schadowplatz, Jan-Wellem-Platz, Schadowstraße', '11am-8pm (Sun-Thurs); 11am-9pm (Fri-Sat)'),
('Erfurt', 'Thüringen', 'Nov 28-Dec 22', 'Domplatz (Cathedral Square)', '10am-8pm (Sun-Wed); 10am-9pm (Thur-Fri); 10am-10pm (Sat)'),
('Essen', 'Nordrhein-Westfalen', 'Nov 22-Dec 23', 'Flachsmarkt market square', '11am-9pm (Sun-Thurs); 11am-10pm (Fri-Sat)'),
('Frankfurt', 'Hesse', 'Nov 26-Dec 22', 'Römerberg square, Paulsplatz and Mainkai quay', '10am-9pm (Mon-Sat); 11am-9pm (Sun)'),
('Freiburg im Breisgau', 'Baden-Württemberg', 'Nov 22-Dec 23', 'Rathausplatz, Franziskanerstraße, Unterlindenplatz and Kartoffelmarkt', '10am-8.30pm (Mon-Sat), 11.30am-7.30pm (Sun)'),
('Hagen', 'Nordrhein-Westfalen', 'TBC', 'Friedrich-Ebert-Platz on the Hohenzollernstraße and the Passage Volkspark to Volkspark, ending at the Adolf-Nassau-Platz or Theaterplatz', 'TBC'),
('Halle', 'Freistaat Sachsen', 'Nov 27-Dec 23', 'Marktplatz', 'TBC'),
('Hamburg', 'Hamburg', 'Nov 26-Dec 30', 'Various locations', '11am-8pm'),
('Hanover', 'Freistaat Sachsen', 'Nov 28-Dec 22', 'Market Church, Ballhofplatz', '11am-9pm'),
('Heidelberg', 'Baden-Württemberg', 'Nov 26-Dec 22', 'Kornmarkt, Marktplatz, Universitätsplatz, Anatomiegarten and the Bismarckplatz', '11am-9pm (Sun-Fri); 10am-9pm (Sat)'),
('Jena', 'Thüringen', 'Nov 26-Dec 23', 'Market Square', '10am-9pm daily'),
('Karlsruhe', 'Baden-Württemberg', 'Nov 27-Dec 23', 'Friedrichsplatz', '10am-9pm (Sun-Thu); 11am-10pm (Fri-Sat)'),
('Kassel', 'Hesse', 'Nov 26-Dec 30', 'Königsplatz and Friedrichsplatz squares', '11am-8pm daily'),
('Kiel', 'Schleswig-Holstein', 'Nov 27-Dec 23', 'Rathausplatz, Holstenstraße, Asmus-Bremer-Platz and Alte Markt', '10am-8pm (Mon-Sat), 11am-8pm (Sun)'),
('Konstanz', 'Baden-Württemberg', 'Nov 29-Dec 22', 'the heart of the old town, on to the boats and shores of Lake Constance', '11am-8pm (Sun-Thur); 11am-9.30pm (Fri-Sat)'),
('Leipzig', 'Sachsen-Anhalt', 'Nov 27-Dec 23', 'Old Town Hall', '10am-9pm (Sun-Thurs); 10am-10pm (Fri-Sat)'),
('Lubeck', 'Schleswig-Holstein', 'Nov 26-Dec 30', 'St Mary’s Church', '11am-9pm (Sun-Thurs); 11am-10pm (Fri-Sat)'),
('Magdeburg', 'Sachsen-Anhalt', 'Nov 26-Dec 23', 'Town Hall', '11am-10pm (Mon-Thu); 11am-11pm (Fri-Sat); 11am-9pm (Sun)'),
('Mainz', 'Rheinland-Pfalz', 'Nov 29-Dec 23', 'Market Square at St Martin’s Cathedral', '11am-8.30pm (Sun-Thu); 11am-9pm (Fri-Sat)'),
('Mannheim', 'Baden-Württemberg', 'Nov 28-Dec 23', 'Town centre, by the Wasserturn', '11am-9pm daily'),
('Munich', 'Bavaria', 'Nov 27-Dec 24', 'Marienplatz, Neuhauser Strasse, Theresienwiese, Sendlinger Tor, Wittelsbacherplatz, Castle Blutenburg', '11am-8pm (approx; times vary per location)'),
('Münster', 'Nordrhein-Westfalen', 'Nov 26-Dec 23', 'Courtyard of the town hall (Rathaus-Innenhof), the Lichtermarkt St. Lamberti at the foot of the impressive Lamberti Church, the Kiepenkerlsmarkt around the Kiepenkerl Memorial, the Aegidii Market in front of the Aegidii Church and the Gibelhüüskesmarkt in front of the historic Überwasser Church.', '11am-8pm (Sun-Thurs); 11am-9pm (Fri-Sat)'),
('Nuremberg', 'Bavaria', 'Nov 30-Dec 24', 'Hauptmarkt', '10am-9pm'),
('Oberhausen', 'Nordrhein-Westfalen', 'Market Square: Nov 21-Dec 23; CentrO: Nov 16-Dec 23', 'Market Square, CentrO', 'Market Square: 12pm-8pm; CentrO: 11am-10pm (Mon-Fri), 10am-10pm (Sat), 11am-9pm (Sun)'),
('Oldenburg', 'Niedersachsen', 'Nov 27-Dec 22', 'Town hall, Schlossplatz', '11am-8.30pm (Sun-Thu); 11am-9.30pm (Fri-Sat)'),
('Osnabrück', 'Niedersachsen', 'Nov 26-Dec 22', 'Cathedral St Peter', '12pm-9pm (Sun-Thu); 12pm-10pm (Fri-Sat)'),
('Rostock', 'Mecklenburg-Vorpommern', 'Nov 26-Dec 22', 'Neuer Markt', '10am-8.30pm (Mon-Thu); 10am-9.30pm (Sat); 11am-8.30pm (Sun)'),
('Rothenburg', 'Bavaria', 'Nov 30-Dec 23', 'Marktplatz', '11am-7pm (Mon-Thu), 11am-8pm (Fri-Sun)'),
('Saarbrücken', 'Saarland', 'Nov 26-Dec 23', 'St Johanner Markt Square, Bahnhofstrasse', '12pm-9pm daily'),
('Stuttgart', 'Baden-Württemberg', 'Nov 28-Dec 23', 'Various locations; see map', '10am-9pm (Mon-Thurs); 10am-10pm (Fri-Sat); 11am-9pm Sundays'),
('Wiesbaden', 'Hesse', 'Nov 27-Dec 23', 'Schlossplatz', '10.30am-9pm (Mon-Thu); 10.30am-9.30pm (Sat); 12pm-9pm (Sun)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`City`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
