<?php
   session_start();
   unset($_SESSION['klient']);
   unset($_SESSION['nazwa']);
   unset($_SESSION['numer']);
   unset($_SESSION['ID']);
   session_destroy();
   header("location: ../index.php");
?>