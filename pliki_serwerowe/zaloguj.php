<?php
session_start();

function input($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    if (isset($_POST["login"]) && isset($_POST["password"])) {
        // POBRANIE DANYCH Z FORMULARZA
        $login = input($_POST["login"]);
        $haslo = input($_POST["password"]);

        include '../_hasla.php';

        $com = mysqli_connect($hostname, $username, $password);
        mysqli_select_db($com, $dbname);
        mysqli_set_charset($com, "utf8");
        $zapytanie = "SELECT * FROM `uzytkownicy` WHERE `E-mail` = '$login' and `Aktywne`='TAK'";
        $result = mysqli_query($com, $zapytanie);
        $count = mysqli_num_rows($result);

        // WERYFIKACJA HASŁA
        $szyfr = $imie =  $nazwisko = $telefon = $ID = "";
        if ($result) {
            while ($row = mysqli_fetch_array($result)) {
                $szyfr = $row["Haslo"];
                $imie = $row["Imie"];
                $nazwisko = $row["Nazwisko"];
                $telefon = $row["Telefon"];
                $ID = $row['ID'];
            }
        }

        $weryf = false;
        $podane = md5($haslo);
        if ($podane == $szyfr) {
            $weryf = true;
        }

        // USTANOWIENIE SESJI
        if (($count == 1) && ($weryf == true)) {
            $_SESSION['klient'] = true;
            $_SESSION['nazwa'] = $imie . ' ' . $nazwisko;
            $_SESSION['numer'] = $telefon;
            $_SESSION['id'] = $ID;

            if (isset($_SESSION['nazwa']) && isset($_SESSION['id'])) {
                header("location: ../index.php");
            }
        } else {
            header("location: ../logowanie.php?log=0");
        }
        mysqli_close($com);
    } else {
        header("location: ../index.php");
    }
} else {
    header("location: ../index.php");
}
