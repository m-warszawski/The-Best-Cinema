-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Cze 2021, 08:45
-- Wersja serwera: 10.4.16-MariaDB
-- Wersja PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kino`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `administratorzy`
--

CREATE TABLE `administratorzy` (
  `ID` int(11) NOT NULL,
  `Login` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Haslo` text COLLATE utf8mb4_polish_ci NOT NULL,
  `E-mail` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `administratorzy`
--

INSERT INTO `administratorzy` (`ID`, `Login`, `Haslo`, `E-mail`) VALUES
(1, 'Michal', 'zaq1@WSX', 'michal.tl.krzkow@mail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `ID` int(11) NOT NULL,
  `Tytul` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Gatunek` varchar(10) COLLATE utf8mb4_polish_ci NOT NULL,
  `Czas` int(4) NOT NULL,
  `Wersja` varchar(10) COLLATE utf8mb4_polish_ci NOT NULL,
  `Data premiery` date NOT NULL,
  `Opis` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Zwiastun` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Widoczny` varchar(3) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `filmy`
--

INSERT INTO `filmy` (`ID`, `Tytul`, `Gatunek`, `Czas`, `Wersja`, `Data premiery`, `Opis`, `Zwiastun`, `Widoczny`) VALUES
(0, '25 lat niewinności. Sprawa Tomka Komendy', 'Dramat', 118, 'PL', '2020-09-18', 'Tomasz Komenda miał 23 lata, kiedy jego normalne życie zostało brutalnie przerwane. Z dnia na dzień został zatrzymany, wtrącony do więzienia i oskarżony o morderstwo. Kolejne ekspertyzy potwierdziły jego udział w zbrodni, a wszelkie dowody działały na jego niekorzyść. Przez blisko dwie dekady uwięzienia był bity, zastraszany, upokarzany i zdany tylko na siebie. W końcu, po 18 latach odsiadki, na jego drodze pojawili się prokuratorzy i policjant, którzy postanowili odkryć prawdę stojącą za zagadkową sprawą zatrzymanego. Historia Tomasza Komendy była tematem głośnego, wyróżnionego nagrodą MediaTory reportażu TVN Grzegorza Głuszaka. Według badań przeprowadzonych przez Wirtualną Polskę o sprawie niesłusznie osadzonego w więzieniu mężczyzny usłyszało aż 89% Polaków i do dziś uchodzi ona za jedną z najbardziej niechlubnych kart w dziejach polskiego sądownictwa. „25 lat niewinności. Sprawa Tomka Komendy” to poruszająca opowieść o niezłomności ludzkiego ducha, wytrwałości oraz sile, jaka tkwi w rodzinie. Pełna napięcia i mocnych, wyrazistych postaci historia, stworzona według najlepszych zachodnich wzorców. Pokazująca nieznane wątki i rzucająca nowe światło na wydarzenia, które doprowadziły do skazania i uniewinnienia Komendy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/p4CxbcejTTM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'NIE'),
(1, 'BANKSTERZY', 'Dramat, Th', 104, 'PL', '2020-10-16', 'Karolina (Katarzyna Zawadzka) pracuje w banku, jest energiczna, pewna siebie, przebojowa. Kiedy w jej ręce wpada najnowszy produkt walutowy – kredyt we frankach szwajcarskich, kobieta otrzymuje wielką szansę, żeby się wykazać. Mając pełne przyzwolenie szefa – Adama (Tomasz Karolak), bez skrupułów zaczyna namawiać klientów na najbardziej ryzykowne i niekorzystne inwestycje. Jan (Jan Frycz) jest szarą eminencją krajowej finansjery. W swoim telefonie ma kontakty do prezesów największych banków w Polsce. Jego cyniczne pomysły i decyzje, z dnia na dzień, wpływają na gospodarkę i losy setek tysięcy osób. Takich jak Artur (Rafał Zawierucha) – ambitny szef firmy IT, który, by rozwijać działalność, decyduje się na opcje walutowe. Jego wspólnikiem jest Mateusz (Antoni Królikowski), który marzy o niezależności, własnym lokum i upragnionej wyprowadzce od teściów. Choć młode małżeństwo pozostaje nieufne wobec proponowanych przez banki rozwiązań, to przyparte do muru daje się wciągnąć w finansową pułapkę. Wkrótce losy bohaterów po obu stronach barykady splotą się w pętli wstrząsających wydarzeń, których przebieg ujawni szokujący mechanizm manipulacji, żerujących na potrzebach i emocjach, ale też bezwzględną i bezduszną siłę systemu bankowego. A gdy skończą się wszystkie racjonalne rozwiązania, bohaterom pozostaną już tylko najbardziej dramatyczne wybory. „Banksterzy” to opowieść o systemie bankowym, o mechanizmach jego funkcjonowania, które nigdy nie ujrzały światła dziennego, generujących zdarzenia mające wpływ bezpośrednio lub pośrednio na życie codzienne milionów ludzi. To także rzecz o instytucji zaufania publicznego, która perfidnie, świadomie i konsekwentnie nadużywała tego zaufania w stosunku do swoich klientów, o totalnej bezsilności i inercji systemu nadzoru bankowego i struktur państwa, które winny dawać gwarancję stabilności i bezpieczeństwa także finansowego obywatelom, o bezwzględnych działaniach w imię partykularnych interesów zwalczających się ugrupowań politycznych. Ale nasza opowieść jest przede wszystkim o ludziach, ich namiętnościach, dążeniach, marzeniach i o pieniądzu który jest tu siłą sprawczą, wartością samą w sobie i środkiem do osiągnięcia celu. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/u6fLORobW4Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'TAK'),
(2, 'Czyściec', 'Dramat, Hi', 93, 'PL', '2020-10-23', 'Ludzie od najdawniejszych czasów zastanawiali się, co czeka ich po śmierci? I chociaż nikomu nie udało się zgłębić sedna tajemnicy, to na przestrzeni wieków pojawiały się osoby, które... wiedziały i widziały więcej. Fulla Horak, św. Faustyna Kowalska, bł. Ojciec Stanisław Papczyński i św. Ojciec Pio – to mistycy, którzy otrzymali łaskę bycia odwiedzanymi przez dusze czyśćcowe i którzy przez chwilę mogli oglądać sąd ostateczny, niebo, piekło i to co najbardziej tajemnicze – czyściec. Na podstawie ich niesamowitych doświadczeń powstał film Michała Kondrata „Czyściec”. Nowe dzieło twórcy docenionych w Polsce i za granicą obrazów „Miłość i Miłosierdzie” i „Dwie Korony” to poruszająca opowieść o duszach żyjących w ciałach oraz tych, które opuściły już ziemski świat. Próba znalezienia odpowiedzi na to, co czeka nas na końcu naszej, ludzkiej egzystencji. Zdjęcia do filmu realizowane były w Polsce, Francji, Włoszech i USA. W roli głównej wystąpiła Małgorzata Kożuchowska, której partnerują m.in.: Philippe Tłokiński, Kamila Kamińska, Marcin Kwaśny, Olga Bończyk, Henryk Gołębiewski, Ida Nowakowska i Maria Niklińska. Konsultantami filmu było grono wybitnych międzynarodowych teologów oraz naukowców, od lat badających stan świadomości człowieka w momencie śmierci ciała. Wśród nich znaleźli się: ojciec Marciano Moro, rektor Sanktuarium Notre-Dame de Montligeon – Don Paul Denizot, jeden z najbardziej rozpoznawalnych duszpasterzy akademickich w kraju – salezjanin Dominik Chmielewski, siostra Monika Chilicka, doktor Pasquale Bellanti, kustosz sanktuarium św. Stanisława Papczyńskiego w Górze Kalwarii – Wojciech Skóra oraz wyświęcony przez św. Jana Pawła II, sekretarz Międzynarodowego Stowarzyszenia Grup Modlitwy Ojca Pio – ojciec Carlo Maria Laborde. „Czyściec to film, który w uporządkowany sposób pomaga odpowiedzieć na najbardziej nurtujące pytania dotyczące życia po śmierci i tego czy możemy mieć na nie wpływ. Przypuszczam, że wiele osób po obejrzeniu filmu Czyściec zmieni swoje myślenie na ten temat” - mówi reżyser Michał Kondrat. W czasie wizyty u znajomych, Fulla Horak (Małgorzata Kożuchowska) poznaje kobietę, której niezachwiana wiara w Boga robi na wszystkich ogromne wrażenie. Spotkanie to odciska piętno na Fulli i zmusza ją do duchowych poszukiwań i powrotu do wartości, które odrzuciła przed laty. Pewnej nocy, pogrążona w modlitwie Fulla doświadcza objawienia. Ukazuje się jej Magdalena Zofia Barat – zmarła 70 lat wcześniej założycielka zgromadzenia Najświętszego Serca. To pierwsza z dusz Świętych Opiekunów, które będą nawiedzać mistyczkę. Kolejne, w tym Jana Bosko, Teresy od Dzieciątka Jezus czy Joanny d’Arc, odkryją przed kobietą niezwykłą wiedzę na temat nieba, piekła i czyśćca. Wszystkie te doświadczenia Fulla opisze w swojej książce „Piękna Pani” w rozdziale „Zaświaty”. A zawarta w niej mądrość wykroczy poza czas i przestrzeń, łącząc w jedno duchowe doświadczenia Fulli oraz objawienia świętego Ojca Pio, błogosławionego Ojca Stanisława Papczyńskiego i świętej Faustyny Kowalskiej. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/Geq65uxmVS8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'TAK'),
(3, 'Gniazdo', 'Dramat, Th', 107, 'Napisy PL', '2020-10-09', 'Rory dostaje propozycję pracy i namawia swoją żonę Allison na przeprowadzkę do Londynu, gdzie wreszcie ma szansę zarobić wielkie pieniądze i wieść luksusowe życie, o jakim zawsze marzył. Bez względu na koszty, wynajmuje imponującą posiadłość na przedmieściach, a kiedy upragniony prestiż i wysoka pozycja społeczna wydają się być na wyciągnięcie ręki, Rory idzie o krok dalej i łamie wszelkie zasady, podejmując coraz większe ryzyko. Bez skrupułów dążąc do swojego celu, wpada w spiralę kłamstw, a w pozornie idealnym życiu małżeńskim zaczynają pojawiać się rysy. Wielki dom obnaża wzajemnie skrywane tajemnice, a to, co na zewnątrz wydawało się prawdziwą sielanką, za zamkniętymi drzwiami okazuje się demaskować prawdziwe oblicza małżonków. ', 'https://www.youtube.com/watch?v=RHzkA9aX9qY&feature=youtu.be', 'TAK'),
(4, 'Greenland', 'Akcja, Sci', 120, 'Napisy PL', '2020-09-25', 'Naukowcy nie mają wątpliwości: Ziemia nie zdoła uniknąć zderzenia ze zbliżającą się do niej potężną kometą, a jego skutki będą katastrofalne. Wybitny inżynier John Garrity i jego rodzina są w grupie wybrańców, którym władze zaoferowały bezpieczne schronienie w położonym na odludziu tajnym bunkrze. Większość społeczeństwa nie otrzymuje takiej szansy. Podczas gdy fragmenty rozpadającej się komety niszczą miasta i zabijają tysiące ludzi, świat pogrąża się w chaosie. Wybuchają zamieszki, rozboje są na porządku dziennym, a służby tracą kontrolę nad sytuacją. W takich okolicznościach dotarcie na miejsce ewakuacji staje się śmiertelnie niebezpiecznym wyzwaniem. Moment decydującego uderzenia zbliża się nieubłaganie. John jest gotów na wszystko, by ocalić swoją żonę i kochanego syna. Najbliższe kilkanaście godzin zdecyduje o wszystkim. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/ku3oCtmU6jk\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'TAK'),
(5, 'Jak zostać gwiazdą', 'Komedia, D', 119, 'PL', '2020-10-02', 'Kontrowersyjny program telewizyjny „Music Race” poszukuje muzycznych talentów na terenie całej Polski. O tym, przed kim otworzą się wszystkie drzwi, a komu na głowie wyląduje kubeł zimnej wody, zdecyduje wyjątkowe jury: niegdyś popularny piosenkarz Olo (Maciej Zakościelny), królowa social mediów Ewa (Julia Kamińska) i grająca samą siebie pierwsza dama polskiego jazzu – Urszula Dudziak. Na castingu, który odbywa się w rodzinnej miejscowości Ola, dochodzi do awantury. Doprowadza do niej „Ostra” (Katarzyna Sawczuk) – zbuntowana nastolatka, oburzona arogancją jurora, który lekceważąco zachowuje się wobec matki dziewczyny (Anita Sokołowska). Skandal jest na rękę producentowi (Tomasz Karolak), który decyduje o zakwalifikowaniu „Ostrej” do dalszego etapu show. Wkrótce okaże się, że oprócz wybuchowego temperamentu, dziewczyna dysponuje także niesamowitym głosem. Sukces ma jednak swoją cenę, a popularność nie jest tak przyjemna, jak może się wydawać. Przed nastolatką prawdziwy pojedynek i próba charakteru – młodej gwieździe przyjdzie zmierzyć się z konkurentami na scenie i bezwzględnym światem show-biznesu, ale przede wszystkim z własnymi emocjami. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/VxgVbcUdgf4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'TAK'),
(6, 'Mulan', 'Przygodowy', 115, 'Dubbing PL', '2020-09-11', 'Aby obronić kraj przed najeźdźcami z północy, cesarz Chin wydaje dekret nakazujący rekrutację do armii jednego mężczyzny z każdej rodziny. Hua Mulan, najstarsza córka utytułowanego wojownika, decyduje się w tajemnicy wyruszyć na wojnę zamiast niedomagającego już ojca. Przebrana za mężczyznę Hua na każdym kroku poddawana jest próbom wymagającym od niej zmobilizowania wewnętrznej siły i wykorzystania pełni swoich możliwości. W wyniku tej wielkiej przygody dziewczyna staje się niezłomną wojowniczką oraz zdobywa szacunek wdzięcznego narodu i… dumnego ojca. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/2bxG-wKcRoo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'TAK'),
(7, 'Pinokio', 'Fantasy ', 125, 'Dubbing PL', '2020-10-09', 'Pewnego dnia w ręce poczciwego stolarza o imieniu Gepetto wpada kawałek drewna. Mężczyzna od samego początku czuje, że w tym z pozoru martwym przedmiocie kryje się jakaś magiczna siła. Postanawia wystrugać z niej postać chłopca. Niespodziewanie stworzona przez niego figurka ożywa – potrafi mówić, śmiać się, skakać i biegać. Gepetto nadaje mu imię: Pinokio i zaczyna troszczyć się o niego jak o własnego syna. Drewniany chłopczyk jest tak zafascynowany otaczającym go światem, który widzi po raz pierwszy na oczy, że przestaje słuchać dobrych rad opiekuna. Wiedziony ciekawością, Pinokio wyrusza w podróż pełną przygód, niebezpieczeństw i życiowych lekcji. Na swojej drodze spotyka magiczną wróżkę, olbrzymiego ślimaka, zwierzęta mówiące ludzkim głosem, a nawet zwiedza ogromny brzuch wieloryba. Jego śladami wyrusza zaniepokojony Gepetto. Ta wyprawa na zawsze odmieni ich życie. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/MDl7VFm_GDo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'TAK'),
(8, 'Raz, jeszcze raz', 'Komedia ', 95, 'PL', '2020-10-16', 'Film Raz jeszcze raz to atrakcyjna dla szerokiej publiczności komedia pomyłek, z dużą dawką humoru oraz akcji. Jednocześnie, jest to sentymentalna opowieść o grupie przyjaciół, którzy dorastali w latach 90-tych w Trójmieście, stawiając wspólnie pierwsze kroki w dorosłość. W filmie została opowiedziana historia chłopaków z Sopotu, którzy 20 lat temu byli zgraną paczką, mieli zespół muzyczny i kończyli szkołę średnią. W wyniku splotu różnych okoliczności, paczka rozpadła się, a każdy z nich poszedł w swoją stronę. Bohaterów poznajemy gdy mają po 40 lat, mieszkają w różnych miastach, wykonują różne zawody. Ich codzienność przerywa niespodziewana wizyta tajemniczej kobiety, która okazuje się być narzeczoną jednego z członków dawnej paczki. Zaprasza bohaterów na wieczór kawalerski – niespodziankę, dla swojego narzeczonego. Mimo wątpliwości, chłopaki przyjeżdżają do rodzinnego Sopotu, aby dowiedzieć się, że ich kolega… nie żyje. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/OlGTY7-6C7M\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'TAK'),
(9, 'Saint Maud', 'Horror', 83, 'Napisy PL', '2020-10-23', 'Kolejny horrorowy triumf od studia A24 („Midsommar. W biały dzień”, „Dziedzictwo. Hereditary” i „To przychodzi po zmroku”) w diabelnie wizjonerskiej opowieści o opętaniu i zbawieniu. Maud jest młodą dziewczyną, która przyjeżdża do luksusowej posiadłości Amandy – byłej tancerki, która w ostatnich miesiącach życia korzysta z niego bez skrupułów. Dziewczyna przekonana o swojej ważniejszej misji, niż tylko opieka nad konającą Amandą, postanawia ocalić jej grzeszną duszę, co wkrótce zamienia się w niebezpieczną obsesję... ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/JFIujcRw6Cs\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'TAK'),
(10, 'Scooby-Doo!', 'Przygodowy', 94, 'Dubbing PL', '2020-07-24', 'W pierwszej kinowej animacji ze Scooby-Doo w roli głównej poznamy nowe wątki, dotyczące pochodzenia uroczego psiaka. Zobaczymy też najbardziej zawiłe śledztwo w historii Tajemniczej Spółki. SCOOBY-DOO! pokazuje początki wieloletniej przyjaźni Scooby’ego i Kudłatego. Dowiemy się, jak wspólnie z Fredem, Velmą i Daphne założyli oni słynną Tajemniczą Spółkę. Teraz, po setkach śledztw i przygód, Scooby i jego gang stają w obliczu największego i najtrudniejszego wyzwania. Ktoś chce uwolnić psa z zaświatów, Cerbera. Młodzi detektywi starają się powstrzymać globalną „apsokalipsę”. Jednocześnie odkrywają sekrety z przeszłości Scooby’ego i poznają jego przeznaczenie – wspanialsze, niż ktokolwiek sobie wyobrażał. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/6pjPUheuCX0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'TAK');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia_zmian`
--

CREATE TABLE `historia_zmian` (
  `ID` int(11) NOT NULL,
  `Akcja` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `Login_admina` varchar(10) COLLATE utf8mb4_polish_ci NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `ID` int(11) NOT NULL,
  `Tytul` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Miejsca` text COLLATE utf8mb4_polish_ci NOT NULL,
  `ID_uzytkownika` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `rezerwacje`
--

INSERT INTO `rezerwacje` (`ID`, `Tytul`, `Miejsca`, `ID_uzytkownika`) VALUES
(160, 'Scooby-Doo!', '286,285,284,', 0),
(195, 'BANKSTERZY', '286,266,', 1),
(196, 'BANKSTERZY', '286,266,', 1),
(197, 'BANKSTERZY', '293,296,', 1),
(198, 'BANKSTERZY', '298,299,', 1),
(199, 'BANKSTERZY', '283,269,', 1),
(200, 'BANKSTERZY', '297,', 1),
(203, '25 lat niewinności. Sprawa Tomka Komendy', '275,274,', 1),
(204, '25 lat niewinności. Sprawa Tomka Komendy', '245,', 1),
(205, '25 lat niewinności. Sprawa Tomka Komendy', '296,', 1),
(206, '25 lat niewinności. Sprawa Tomka Komendy', '298,297,', 1),
(207, '25 lat niewinności. Sprawa Tomka Komendy', '272,273,', 1),
(208, '25 lat niewinności. Sprawa Tomka Komendy', '295,', 1),
(209, '25 lat niewinności. Sprawa Tomka Komendy', '266,', 1),
(211, 'BANKSTERZY', '209,208,', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `ID` int(11) NOT NULL,
  `Imie` varchar(12) COLLATE utf8mb4_polish_ci NOT NULL,
  `Nazwisko` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `E-mail` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `Telefon` int(11) NOT NULL,
  `Haslo` char(32) COLLATE utf8mb4_polish_ci NOT NULL,
  `Aktywne` varchar(3) COLLATE utf8mb4_polish_ci NOT NULL,
  `Kod` varchar(8) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`ID`, `Imie`, `Nazwisko`, `E-mail`, `Telefon`, `Haslo`, `Aktywne`, `Kod`) VALUES
(1, 'Jan', 'Kowalski', 'michal@onet.pl', -2122, 'zaq1@WSX', 'TAK', ''),
(28, 'Adam', 'Antek', 'antoni@cyc.pl', 123456789, '9e38e8d688743e0d07d669a1fcbcd35b', 'TAK', 'xd2TWpTY'),
(29, 'Karol', 'sasasas', 'saska@ola.pl', 123456798, '4522e2862db97aa454c98a9adeaa4041', 'TAK', 'QZ87rExV');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `administratorzy`
--
ALTER TABLE `administratorzy`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `historia_zmian`
--
ALTER TABLE `historia_zmian`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `administratorzy`
--
ALTER TABLE `administratorzy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `historia_zmian`
--
ALTER TABLE `historia_zmian`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
