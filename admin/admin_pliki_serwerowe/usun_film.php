<?php
$id = $_REQUEST["id"];

include '../_hasla.php';

//----------Pobranie tytułu
$com = mysqli_connect($hostname, $username, $password);
mysqli_select_db($com, $dbname);
mysqli_set_charset($com, "utf8");
$query = "SELECT * FROM filmy WHERE ID = $id";
$result = mysqli_query($com, $query);

$tytul = "";
if ($result) {
    while ($row = mysqli_fetch_array($result)) {
        $tytul = $row["Tytul"];
    }
}

//----------Usunięcie filmu
$com = mysqli_connect($hostname, $username, $password);
mysqli_select_db($com, $dbname);
mysqli_set_charset($com, "utf8");

$query = "DELETE FROM `filmy` WHERE `ID`='$id'";
$result = mysqli_query($com, $query);

header("Location: ../filmy.php?rez=" . $result);

mysqli_close($com);
?>
