<?php include 'admin_pliki_serwerowe/sprawdzanie_sesji.php'; ?>
<!doctype html>
<html lang="pl">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php include 'admin_komponenty/head.php'; ?>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" rel="stylesheet" crossorigin="anonymous">
    <style>
        <?php include 'admin_style/main.css'; ?><?php include 'admin_style/klienci.css'; ?>
    </style>
</head>

<body>
    <div id="root" class="container-fluid">
        <!-- NAGŁÓWEK -->
        <?php include 'admin_komponenty/header.php'; ?>
        <!-- MENU -->
        <?php include 'admin_komponenty/nav.php'; ?>
        <!-- MAIN CONTENT -->
        <div class="tytulowy">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h3 class="tytul">--- REZERWACJE ---</h3>
                    </div>
                </div>
            </div>
            <?php
            if (isset($_REQUEST["rez"])) {
                $rez = $_REQUEST["rez"];
                if ($rez == 1) {
                    echo '<div class="container hh">
                            <div class="alert alert-info alert-dismissible fade show" role="alert">
                                <strong>Pomyślnie anulowano rezerwację!</strong> Miejsca zostały zwolnione.
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        </div>';
                } else {
                    echo '<div class="container hh">
                            <div class="alert alert-info alert-dismissible fade show" role="alert">
                                <strong>Nie udało się anulować rezerwacji!</strong> Spróbuj ponownie.
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                             </div>
                        </div>';
                }
            }
            ?>
        </div>
        <div class="main">
            <div class="container" id="rezerwacje">
                <?php
                include '_hasla.php';

                $com = mysqli_connect($hostname, $username, $password);
                mysqli_select_db($com, $dbname);
                mysqli_set_charset($com, "utf8");

                $query = "SELECT * FROM rezerwacje";
                $result = mysqli_query($com, $query);

                if ($result) {
                    while ($row = mysqli_fetch_array($result)) {
                        echo ' <div class="row wiersz">
                                    <div class="col col-sm-10">
                                        <p>FILM: <span class="bold">'  . $row["Tytul"] . '</span></p>                                       
                                        <p>MIEJSCA: <span class="bold">' . $row["Miejsca"] . '</span></p>
                                    </div>
                                    <div class="col col-sm-2">
                                        <a href="admin_pliki_serwerowe/usun_rezerwacje.php?id=' . $row["ID"]  . '">                     
                                            <button class="btn btn-danger">USUN</button> 
                                        </a>
                                        <a href="drukuj.php?id=' . $row["ID"]  . '&tytul=' . $row["Tytul"] . '&miejsca=' . $row["Miejsca"] . '">                     
                                        <button class="btn btn-secondary">DRUKUJ</button> 
                                        </a>                      
                                        </a>
                                        <a href="edytcja.php?id=' . $row["ID"] . '">                                         
                                            <button onclick="edycja()" class="btn btn-success">EDYTUJ</button> 
                                        </a>
                                    </div>
                                </div>';
                    };
                }
                ?>
            </div>
        </div>

        <!-- STOPKA -->
        <?php include 'admin_komponenty/footer.php'; ?>
    </div>
    <script>
        function edycja() {
            console.log("dasd")
        }
    </script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src=" https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>

</html>