-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 25 Mar 2020, 15:43
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `gablota`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawcze`
--

CREATE TABLE `dostawcze` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_uzytkownika` int(10) UNSIGNED DEFAULT NULL,
  `Marka` varchar(30) NOT NULL,
  `Model` varchar(20) NOT NULL,
  `Rok_produkcji` int(4) NOT NULL,
  `Przebieg` int(7) UNSIGNED NOT NULL,
  `Typ` varchar(20) NOT NULL,
  `Pojemnosc` int(5) NOT NULL,
  `Stan` varchar(10) DEFAULT NULL,
  `Skrzynia` varchar(7) NOT NULL,
  `Moc` int(4) NOT NULL,
  `Naped` varchar(3) NOT NULL,
  `Paliwo` varchar(13) NOT NULL,
  `Kraj` varchar(20) DEFAULT NULL,
  `Lokalizacja` varchar(30) NOT NULL,
  `Ladownosc` int(6) UNSIGNED DEFAULT NULL,
  `Cena` int(10) UNSIGNED NOT NULL,
  `Opis` text DEFAULT NULL,
  `Data_dodania` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `dostawcze`
--

INSERT INTO `dostawcze` (`id`, `id_uzytkownika`, `Marka`, `Model`, `Rok_produkcji`, `Przebieg`, `Typ`, `Pojemnosc`, `Stan`, `Skrzynia`, `Moc`, `Naped`, `Paliwo`, `Kraj`, `Lokalizacja`, `Ladownosc`, `Cena`, `Opis`, `Data_dodania`) VALUES
(1, 4, 'Fiat', 'Ducato', 2017, 230000, 'Bus', 1999, 'Używane', 'Manual', 150, 'RWD', 'Diesel', 'Francja', 'Waszawa', 1700, 45000, 'Proin in sem rutrum, blandit ipsum ut, pretium ligula. Phasellus consequat diam at nulla mollis, at elementum est sagittis. Aenean id dictum sapien, a scelerisque neque. Curabitur a convallis ante, eu euismod eros. Nam ante magna, fringilla ac imperdiet ac, tincidunt sed quam. Suspendisse ac faucibus enim. Suspendisse potenti. Nunc rhoncus quis mi vitae venenatis. Donec lacinia convallis pretium. Maecenas sit amet rhoncus lorem. Cras sagittis eros quam, vel gravida nulla scelerisque ultricies. Nam dignissim pulvinar est, ut cursus magna pulvinar a. Nunc sapien urna, fringilla nec malesuada in, pharetra condimentum lectus. Etiam maximus posuere accumsan. Morbi tempor, nisi eu accumsan varius, nulla felis porta mi, ut bibendum sem odio ut dui.', '2020-03-25 14:34:09'),
(2, 2, 'Mercedes', 'Vito', 2014, 350000, 'Bus', 2999, NULL, 'Automat', 190, 'AWD', 'Benzyna', 'Polska', 'Białystok', 900, 60000, 'Nullam porttitor ligula non justo venenatis hendrerit. Integer a scelerisque augue. Etiam accumsan leo elit, ac volutpat ante viverra quis. Nullam in varius ex. Mauris in iaculis ipsum, vitae sollicitudin diam. Nullam imperdiet ligula mi, sit amet commodo metus efficitur eu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris et vestibulum felis. Fusce at lacus a diam volutpat gravida. Donec euismod dignissim nisi, ut pulvinar ante varius ac', '2020-03-25 14:34:09'),
(3, 3, 'Volvo', 'FH420', 2015, 430200, 'TIR', 8978, 'Używane', 'Automat', 420, 'RWD', 'Diesel', NULL, 'Wrocław', NULL, 420000, NULL, '2020-03-25 14:34:09');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `motocykle`
--

CREATE TABLE `motocykle` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_uzytkownika` int(10) UNSIGNED DEFAULT NULL,
  `Marka` varchar(30) NOT NULL,
  `Model` varchar(20) NOT NULL,
  `Rok_produkcji` int(4) UNSIGNED NOT NULL,
  `Przebieg` int(7) UNSIGNED NOT NULL,
  `Typ` varchar(20) NOT NULL,
  `Pojemnosc` int(5) UNSIGNED NOT NULL,
  `Stan` varchar(10) DEFAULT NULL,
  `Skrzynia` varchar(7) NOT NULL,
  `Moc` int(4) UNSIGNED NOT NULL,
  `Prawo_jazdy` varchar(3) DEFAULT NULL,
  `Naped` varchar(12) DEFAULT NULL,
  `Kraj` varchar(20) DEFAULT NULL,
  `Lokalizacja` varchar(30) NOT NULL,
  `Miejsca` int(1) UNSIGNED DEFAULT NULL,
  `Cena` int(10) UNSIGNED NOT NULL,
  `Opis` text DEFAULT NULL,
  `Data_dodania` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `motocykle`
--

INSERT INTO `motocykle` (`id`, `id_uzytkownika`, `Marka`, `Model`, `Rok_produkcji`, `Przebieg`, `Typ`, `Pojemnosc`, `Stan`, `Skrzynia`, `Moc`, `Prawo_jazdy`, `Naped`, `Kraj`, `Lokalizacja`, `Miejsca`, `Cena`, `Opis`, `Data_dodania`) VALUES
(1, 1, 'KTM', 'Duke 125', 2017, 5400, 'Skuter', 124, 'Używane', 'Manual', 15, 'B', 'Łańcuch', 'Polska', 'Białystok', 1, 12000, 'Nam magna nisl, pretium elementum velit non, tempus suscipit quam. Ut eget consequat metus. Duis suscipit dapibus enim a tempus. Suspendisse cursus, est sed imperdiet vulputate, nisi felis dapibus tellus, lobortis pharetra odio quam quis quam. Donec at tortor vulputate, posuere tellus non, lacinia nisl. Proin eleifend massa a rutrum aliquet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed eget urna eget est dignissim tempor. Maecenas eu volutpat quam. Suspendisse potenti. Aenean nec convallis nulla. Quisque facilisis suscipit magna eu blandit. Etiam et gravida risus. Phasellus mollis, leo vitae iaculis maximus, ligula nisi dictum urna, sit amet congue elit orci eleifend turpis. Curabitur quis nibh nec neque tincidunt fermentum sit amet in turpis.', '2020-03-25 14:27:23'),
(2, 4, 'Romet', 'Skuter 50', 2005, 23000, 'Skuter', 49, NULL, 'Automat', 3, 'AM', 'Pasek', NULL, 'Warszawa', 2, 1500, NULL, '2020-03-25 14:27:23'),
(3, 3, 'Ducati', 'Panigale V4', 2018, 10, 'Motor', 1199, 'Nowy', 'Manual', 230, 'A', 'Łańcuch', 'Polska', 'Warszawa', NULL, 230000, 'Proin in sem rutrum, blandit ipsum ut, pretium ligula. Phasellus consequat diam at nulla mollis, at elementum est sagittis. Aenean id dictum sapien, a scelerisque neque. Curabitur a convallis ante, eu euismod eros. Nam ante magna, fringilla ac imperdiet ac, tincidunt sed quam. Suspendisse ac faucibus enim. Suspendisse potenti. Nunc rhoncus quis mi vitae venenatis. Donec lacinia convallis pretium. Maecenas sit amet rhoncus lorem. Cras sagittis eros quam, vel gravida nulla scelerisque ultricies. Nam dignissim pulvinar est, ut cursus magna pulvinar a. Nunc sapien urna, fringilla nec malesuada in, pharetra condimentum lectus. Etiam maximus posuere accumsan. Morbi tempor, nisi eu accumsan varius, nulla felis porta mi, ut bibendum sem odio ut dui.', '2020-03-25 14:27:23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osobowe`
--

CREATE TABLE `osobowe` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_uzytkownika` int(10) UNSIGNED NOT NULL,
  `Marka` varchar(30) NOT NULL,
  `Model` varchar(20) NOT NULL,
  `Rok_produkcji` int(4) NOT NULL,
  `Przebieg` int(7) UNSIGNED NOT NULL,
  `Nadwozie` varchar(20) NOT NULL,
  `Pojemnosc` int(5) NOT NULL,
  `Stan` varchar(10) DEFAULT NULL,
  `Skrzynia` varchar(7) NOT NULL,
  `Moc` int(4) NOT NULL,
  `Naped` varchar(3) NOT NULL,
  `Paliwo` varchar(13) NOT NULL,
  `Kraj` varchar(20) DEFAULT NULL,
  `Lokalizacja` varchar(30) NOT NULL,
  `Miejsca` int(1) UNSIGNED DEFAULT NULL,
  `Cena` int(10) UNSIGNED NOT NULL,
  `Opis` text DEFAULT NULL,
  `Data_dodania` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `osobowe`
--

INSERT INTO `osobowe` (`id`, `id_uzytkownika`, `Marka`, `Model`, `Rok_produkcji`, `Przebieg`, `Nadwozie`, `Pojemnosc`, `Stan`, `Skrzynia`, `Moc`, `Naped`, `Paliwo`, `Kraj`, `Lokalizacja`, `Miejsca`, `Cena`, `Opis`, `Data_dodania`) VALUES
(1, 1, 'VW', 'Scirocco', 2013, 102465, 'Coupe', 1998, 'Używane', 'Automat', 140, 'FWD', 'Diesel', 'Polska', 'Białystok', 4, 35000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc in elementum augue. Donec blandit fringilla nulla, ac porta tortor congue non. Phasellus blandit lacinia hendrerit. Mauris luctus ac odio eget tincidunt. Suspendisse sit amet molestie neque. Phasellus bibendum porta magna, bibendum mollis erat rutrum sit amet. Aliquam luctus eros risus.', '2020-03-25 14:16:51'),
(2, 3, 'Opel', 'Astra', 1995, 342100, 'Sedan', 1399, 'Używane', 'Manual', 75, 'FWD', 'Benzyna + LPG', 'Niemcy', 'Białystok', 5, 3400, NULL, '2020-03-25 14:16:51'),
(3, 2, 'Audi', 'RS6', 2020, 5, 'Kombi', 3998, 'Nowe', 'Automat', 560, 'AWD', 'Benzyna', 'Polska', 'Warszawa', 5, 340000, 'Nullam porttitor ligula non justo venenatis hendrerit. Integer a scelerisque augue. Etiam accumsan leo elit, ac volutpat ante viverra quis. Nullam in varius ex. Mauris in iaculis ipsum, vitae sollicitudin diam. Nullam imperdiet ligula mi, sit amet commodo metus efficitur eu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris et vestibulum felis. Fusce at lacus a diam volutpat gravida. Donec euismod dignissim nisi, ut pulvinar ante varius ac.', '2020-03-25 14:16:51'),
(4, 4, 'Fiat', 'Punto 1.2', 1993, 234000, 'Hatchback', 1194, NULL, 'Manual', 57, 'RWD', 'Benzyna', NULL, 'Warszawa', NULL, 700, 'Nam magna nisl, pretium elementum velit non, tempus suscipit quam. Ut eget consequat metus. Duis suscipit dapibus enim a tempus. Suspendisse cursus, est sed imperdiet vulputate, nisi felis dapibus tellus, lobortis pharetra odio quam quis quam. Donec at tortor vulputate, posuere tellus non, lacinia nisl. Proin eleifend massa a rutrum aliquet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed eget urna eget est dignissim tempor. Maecenas eu volutpat quam. Suspendisse potenti. Aenean nec convallis nulla. Quisque facilisis suscipit magna eu blandit. Etiam et gravida risus. Phasellus mollis, leo vitae iaculis maximus, ligula nisi dictum urna, sit amet congue elit orci eleifend turpis. Curabitur quis nibh nec neque tincidunt fermentum sit amet in turpis.', '2020-03-25 14:18:25');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `Imie` varchar(30) NOT NULL,
  `Nazwisko` varchar(50) NOT NULL,
  `Telefon` varchar(11) NOT NULL,
  `Miejscowosc` varchar(50) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Haslo` char(64) NOT NULL COMMENT 'SHA256'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `Imie`, `Nazwisko`, `Telefon`, `Miejscowosc`, `Email`, `Haslo`) VALUES
(1, 'Daniel', 'Chodkowski', '315625784', 'Białystok', 'danielch@email.com', 'haslo1'),
(2, 'Adam', 'Nowak', '621598147', NULL, 'Anowak@email.com', 'haslo2'),
(3, 'Jan', 'Kowalski', '357159852', 'Warszawa', 'Jkowal@email.com', 'haslo3'),
(4, 'Anna', 'Bukowska', '654219547', NULL, 'abuk@email.com', 'haslo4');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dostawcze`
--
ALTER TABLE `dostawcze`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dostawcze_iduzytkownika` (`id_uzytkownika`);

--
-- Indeksy dla tabeli `motocykle`
--
ALTER TABLE `motocykle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_motocykle_iduzytkownika` (`id_uzytkownika`);

--
-- Indeksy dla tabeli `osobowe`
--
ALTER TABLE `osobowe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_osobowe_iduzytkownika` (`id_uzytkownika`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dostawcze`
--
ALTER TABLE `dostawcze`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `motocykle`
--
ALTER TABLE `motocykle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `osobowe`
--
ALTER TABLE `osobowe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `dostawcze`
--
ALTER TABLE `dostawcze`
  ADD CONSTRAINT `fk_dostawcze_iduzytkownika` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `motocykle`
--
ALTER TABLE `motocykle`
  ADD CONSTRAINT `fk_motocykle_iduzytkownika` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `osobowe`
--
ALTER TABLE `osobowe`
  ADD CONSTRAINT `fk_osobowe_iduzytkownika` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
