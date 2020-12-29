<?php

/**
 * Database `pizzeria`
 */

/* `pizzeria`.`klient` */
$klient = array(
  array('idKlient' => '1','Imie' => 'Jan','Nazwisko' => 'Nowak','Ulica' => 'Główna','Numer' => '20','Miasto' => 'Łódź'),
  array('idKlient' => '2','Imie' => 'Monika','Nazwisko' => 'Szymańska','Ulica' => 'Melodyjna','Numer' => '12','Miasto' => 'Warszawa'),
  array('idKlient' => '3','Imie' => 'Piotr','Nazwisko' => 'Sychowski','Ulica' => 'Szkolna','Numer' => '30','Miasto' => 'Warszawa'),
  array('idKlient' => '4','Imie' => 'Maciej','Nazwisko' => 'Nowicki','Ulica' => 'Sokoła','Numer' => '7','Miasto' => 'Poznań'),
  array('idKlient' => '5','Imie' => 'Damian','Nazwisko' => 'Kolimowski','Ulica' => 'Bezdomna','Numer' => '3','Miasto' => 'Wrocław'),
  array('idKlient' => '6','Imie' => 'Marcel','Nazwisko' => 'Nowakowski','Ulica' => 'Sokoła','Numer' => '10','Miasto' => 'Poznań'),
  array('idKlient' => '7','Imie' => 'Jan','Nazwisko' => 'Kowalski','Ulica' => 'Miła','Numer' => '20','Miasto' => 'Władysławowo'),
  array('idKlient' => '8','Imie' => 'Kacper','Nazwisko' => 'Śląski','Ulica' => 'Hetmańska','Numer' => '12','Miasto' => 'Kraków'),
  array('idKlient' => '9','Imie' => 'Jarosław','Nazwisko' => 'Żak','Ulica' => 'Wawel','Numer' => '27','Miasto' => 'Warszawa'),
  array('idKlient' => '10','Imie' => 'Ilona','Nazwisko' => 'Kasprzak','Ulica' => 'Banaha','Numer' => '3','Miasto' => 'Gdańsk'),
  array('idKlient' => '11','Imie' => 'Maciej','Nazwisko' => 'Cioruń','Ulica' => 'Szkolna','Numer' => '6','Miasto' => 'Łódź'),
  array('idKlient' => '12','Imie' => 'Michał','Nazwisko' => 'Borowski','Ulica' => 'Główna','Numer' => '57','Miasto' => 'Andrespol'),
  array('idKlient' => '13','Imie' => 'Małgorzata','Nazwisko' => 'Kozłowska','Ulica' => 'Dąbrowska','Numer' => '13','Miasto' => 'Warszawa'),
  array('idKlient' => '14','Imie' => 'Artur','Nazwisko' => 'Kalewski','Ulica' => 'Sztuki','Numer' => '47','Miasto' => 'Łódź')
);

/* `pizzeria`.`pizza` */
$pizza = array(
  array('idPizza' => '1','Pizza' => 'Pepperoni','Rozmiar' => 'L','Cena' => '15'),
  array('idPizza' => '2','Pizza' => 'Pepperoni','Rozmiar' => 'XL','Cena' => '20'),
  array('idPizza' => '3','Pizza' => 'Pepperoni','Rozmiar' => 'XXL','Cena' => '25'),
  array('idPizza' => '4','Pizza' => 'Margeritta','Rozmiar' => 'L','Cena' => '15'),
  array('idPizza' => '5','Pizza' => 'Margeritta','Rozmiar' => 'XL','Cena' => '20'),
  array('idPizza' => '6','Pizza' => 'Margeritta','Rozmiar' => 'XXL','Cena' => '25')
);

/* `pizzeria`.`zamówienia` */
$zamówienia = array(
  array('idPizza' => '4','idKlient' => '3','Data' => '2020-10-04','idZamowienia' => '1','Status' => '2020-10-05'),
  array('idPizza' => '1','idKlient' => '3','Data' => '2020-10-04','idZamowienia' => '2','Status' => '2020-10-04'),
  array('idPizza' => '1','idKlient' => '7','Data' => '2020-10-10','idZamowienia' => '3','Status' => '2020-10-10'),
  array('idPizza' => '1','idKlient' => '4','Data' => '2020-10-10','idZamowienia' => '4','Status' => '2020-10-11'),
  array('idPizza' => '2','idKlient' => '3','Data' => '2020-10-09','idZamowienia' => '5','Status' => '2020-10-10'),
  array('idPizza' => '4','idKlient' => '3','Data' => '2020-10-10','idZamowienia' => '10','Status' => '2020-10-11'),
  array('idPizza' => '3','idKlient' => '3','Data' => '2020-10-10','idZamowienia' => '11','Status' => '2020-10-12'),
  array('idPizza' => '4','idKlient' => '7','Data' => '2020-11-02','idZamowienia' => '12','Status' => '2020-11-02'),
  array('idPizza' => '4','idKlient' => '3','Data' => '2020-11-09','idZamowienia' => '13','Status' => '2020-11-09'),
  array('idPizza' => '1','idKlient' => '3','Data' => '2020-11-23','idZamowienia' => '14','Status' => '2020-11-23'),
  array('idPizza' => '1','idKlient' => '12','Data' => '2020-11-23','idZamowienia' => '15','Status' => '2020-11-23'),
  array('idPizza' => '1','idKlient' => '12','Data' => '2020-12-06','idZamowienia' => '16','Status' => NULL),
  array('idPizza' => '2','idKlient' => '7','Data' => '2020-12-06','idZamowienia' => '17','Status' => NULL),
  array('idPizza' => '1','idKlient' => '7','Data' => '2020-12-07','idZamowienia' => '18','Status' => NULL)
);
