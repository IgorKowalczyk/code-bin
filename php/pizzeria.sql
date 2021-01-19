SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `pizzeria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pizzeria`;

CREATE TABLE `klient` (
  `idKlient` int(11) NOT NULL,
  `Imie` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Ulica` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Numer` int(11) NOT NULL,
  `Miasto` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

INSERT INTO `klient` (`idKlient`, `Imie`, `Nazwisko`, `Ulica`, `Numer`, `Miasto`) VALUES
(1, 'Jan', 'Nowak', 'Główna', 20, 'Łódź'),
(2, 'Monika', 'Szymańska', 'Melodyjna', 12, 'Warszawa'),
(3, 'Piotr', 'Sychowski', 'Szkolna', 30, 'Warszawa'),
(4, 'Maciej', 'Nowicki', 'Sokoła', 7, 'Poznań'),
(5, 'Damian', 'Kolimowski', 'Bezdomna', 3, 'Wrocław'),
(6, 'Marcel', 'Nowakowski', 'Sokoła', 10, 'Poznań'),
(7, 'Jan', 'Kowalski', 'Miła', 20, 'Władysławowo'),
(8, 'Kacper', 'Śląski', 'Hetmańska', 12, 'Kraków'),
(9, 'Jarosław', 'Żak', 'Wawel', 27, 'Warszawa'),
(10, 'Ilona', 'Kasprzak', 'Banaha', 3, 'Gdańsk'),
(11, 'Maciej', 'Cioruń', 'Szkolna', 6, 'Łódź'),
(12, 'Michał', 'Borowski', 'Główna', 57, 'Andrespol'),
(13, 'Małgorzata', 'Kozłowska', 'Dąbrowska', 13, 'Warszawa'),
(14, 'Artur', 'Kalewski', 'Sztuki', 47, 'Łódź'),
(16, 'Igor', 'Kowalczyk', 'Łódzka', 15, 'Piotrków');

CREATE TABLE `kurier` (
  `idKurier` int(11) NOT NULL,
  `Imie` varchar(30) NOT NULL,
  `Nazwisko` varchar(30) NOT NULL,
  `Miasto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `kurier` (`idKurier`, `Imie`, `Nazwisko`, `Miasto`) VALUES
(1, 'Wiesław', 'Kostrzewa', 'Łódź'),
(2, 'Witold', 'Pawlak', 'Warszawa'),
(3, 'Wacław', 'Grzegorzewski', 'Kraków');


CREATE TABLE `pizza` (
  `idPizza` int(11) NOT NULL,
  `Pizza` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Rozmiar` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `Cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

INSERT INTO `pizza` (`idPizza`, `Pizza`, `Rozmiar`, `Cena`) VALUES
(1, 'Pepperoni', 'L', 15),
(2, 'Pepperoni', 'XL', 20),
(3, 'Pepperoni', 'XXL', 25),
(4, 'Margeritta', 'L', 15),
(5, 'Margeritta', 'XL', 20),
(6, 'Margeritta', 'XXL', 25);

CREATE TABLE `zamówienia` (
  `idPizza` int(11) NOT NULL,
  `idKlient` int(11) NOT NULL,
  `Data` date NOT NULL,
  `idZamowienia` int(11) NOT NULL,
  `Status` date DEFAULT NULL,
  `idKurier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

INSERT INTO `zamówienia` (`idPizza`, `idKlient`, `Data`, `idZamowienia`, `Status`, `idKurier`) VALUES
(4, 3, '2020-10-04', 1, '2020-10-05', 1),
(1, 3, '2020-10-04', 2, '2020-10-04', 2),
(1, 7, '2020-10-10', 3, '2020-10-10', 2),
(1, 4, '2020-10-10', 4, '2020-10-11', 3),
(2, 3, '2020-10-09', 5, '2020-10-10', 2),
(4, 3, '2020-10-10', 10, '2020-10-11', 3),
(3, 3, '2020-10-10', 11, '2020-10-12', 2),
(4, 7, '2020-11-02', 12, '2020-11-02', 3),
(4, 3, '2020-11-09', 13, '2020-11-09', 3),
(1, 3, '2020-11-23', 14, '2020-11-23', 2),
(1, 12, '2020-11-23', 15, '2020-11-23', 2),
(1, 12, '2020-12-06', 16, NULL, NULL),
(2, 7, '2020-12-06', 17, NULL, NULL),
(1, 7, '2020-12-07', 18, NULL, NULL);

ALTER TABLE `klient`
  ADD PRIMARY KEY (`idKlient`);
ALTER TABLE `kurier`
  ADD PRIMARY KEY (`idKurier`);
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`idPizza`);
ALTER TABLE `zamówienia`
  ADD PRIMARY KEY (`idZamowienia`),
  ADD KEY `idPizza` (`idPizza`),
  ADD KEY `idKlient` (`idKlient`),
  ADD KEY `idKurier` (`idKurier`);
ALTER TABLE `klient`
  MODIFY `idKlient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
ALTER TABLE `kurier`
  MODIFY `idKurier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `pizza`
  MODIFY `idPizza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
ALTER TABLE `zamówienia`
  MODIFY `idZamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
ALTER TABLE `zamówienia`
  ADD CONSTRAINT `idKlient` FOREIGN KEY (`idKlient`) REFERENCES `klient` (`idKlient`),
  ADD CONSTRAINT `idZamowienia` FOREIGN KEY (`idKlient`) REFERENCES `klient` (`idKlient`),
  ADD CONSTRAINT `zamówienia_ibfk_1` FOREIGN KEY (`idKlient`) REFERENCES `klient` (`idKlient`),
  ADD CONSTRAINT `zamówienia_ibfk_2` FOREIGN KEY (`idPizza`) REFERENCES `pizza` (`idPizza`),
  ADD CONSTRAINT `zamówienia_ibfk_3` FOREIGN KEY (`idKurier`) REFERENCES `kurier` (`idKurier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
