<?php
function input($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    if (isset($_POST["imie"]) && isset($_POST["nazwisko"]) && isset($_POST["login"]) && isset($_POST["numer"]) && isset($_POST["password"]) && isset($_POST["powtorka"])) {
        $czy = 1;

        // SPRAWDZENIE CZY HASŁA SĄ TAKIE SAME
        if ($_POST["password"] == $_POST["powtorka"]) {
            $czy = 1;
        } else {
            $czy = 0;
            header("location: ../rejestracja.php?inf=1");
        }

        // POBRANIE WARTOŚCI Z FORMULARZA
        $imie = input($_POST["imie"]);
        $nazwisko = input($_POST["nazwisko"]);
        $login = input($_POST["login"]);
        $numer = input($_POST["numer"]);
        $haslo = input($_POST["password"]);

        include '../_hasla.php';

        // SPRAWDZENIE CZY PODANY MAIL JEST JUŻ ZAJĘTY
        $com = mysqli_connect($hostname, $username, $password);
        mysqli_select_db($com, $dbname);
        mysqli_set_charset($com, "utf8");

        $query = "SELECT * FROM `uzytkownicy` WHERE `E-mail` = '$login'";
        $result = mysqli_query($com, $query);
        $count = mysqli_num_rows($result);

        if ($count >= 1) {
            $czy = 0;
            header("location: ../rejestracja.php?inf=2");
        } else {
            $czy = 1;
        }

        // KOD AKTYWACJI
        function randomPassword()
        {
            $alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
            $pass = array(); //remember to declare $pass as an array
            $alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
            for ($i = 0; $i < 8; $i++) {
                $n = rand(0, $alphaLength);
                $pass[] = $alphabet[$n];
            }
            return implode("", $pass); //turn the array into a string
        }

        // DODANIE USERA
        if ($czy == 1) {
            $kod =  randomPassword();
            $szyfr = md5($haslo);
            $zapytanie = "INSERT INTO `uzytkownicy`(`Imie`, `Nazwisko`, `E-mail`, `Telefon`, `Haslo`, `Aktywne`, `Kod`) VALUES ('$imie','$nazwisko','$login','$numer','$szyfr','NIE', '$kod')";
            $result = mysqli_query($com, $zapytanie);
            $last_id = mysqli_insert_id($com);

            // WYSŁANIE MAILA AKTYWACYJNEGO
            if ($result == 1) {
                $to = $login;
                $name = $imie;
                $link = $adres_strony . "/aktywacja_konta.php?kod=" . $kod;

                include 'wyslij_wiadomosc.php';
                echo $body;
                if ($send == 1) {
                    header("location: ../info.php?rej=1");
                } else {
                    header("location: ../rejestracja.php?inf=3");
                }
            } else {
                header("location: ../rejestracja.php?inf=3");
            }
        }
        mysqli_close($com);
    } else {
        header("location: ../index.php");
    }
} else {
    header("location: ../index.php");
}
