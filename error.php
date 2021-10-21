<!doctype html>
<html lang="pl">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>CINEMA - Błąd</title>
    <?php include 'komponenty/logo.php'; ?>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" rel="stylesheet" crossorigin="anonymous">
    <style>
        <?php include 'style/main.css'; ?><?php include 'style/info.css'; ?>
    </style>
</head>

<body>
    <div id="root" class="container-fluid">
        <!-- NAGŁÓWEK -->
        <?php include 'komponenty/header.php'; ?>
        <!-- MAIN CONTENT -->
        <div class="tytulowy">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h3 class="tytul">BŁĄD </h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="main">
            <div class="container">

                <div class="row">
                    <div class="col-sm-12 d-flex justify-content-center">
                        <?php
                        if (isset($_SERVER['REDIRECT_STATUS'])) {
                            $status = $_SERVER['REDIRECT_STATUS'];
                            $codes = array(
                                403 => array('403 Forbidden', 'Serwer odmówił spełnienia żądania.'),
                                404 => array('404 Not Found', 'Żądany dokument / plik nie został znaleziony na tym serwerze.'),
                                405 => array('405 Method Not Allowed', 'Metoda określona w wierszu żądania nie jest dozwolona dla określonego zasobu.'),
                                408 => array('408 Request Timeout', 'Twoja przeglądarka nie wysłała żądania w czasie dozwolonym przez serwer.'),
                                500 => array('500 Internal Server Error', 'Żądanie nie powiodło się z powodu nieoczekiwanego stanu napotkanego przez serwer.'),
                                502 => array('502 Bad Gateway', 'Serwer otrzymał nieprawidłową odpowiedź z serwera nadrzędnego podczas próby spełnienia żądania.'),
                                504 => array('504 Gateway Timeout', 'Serwer nadrzędny nie wysłał żądania w czasie dozwolonym przez serwer.'),
                            );

                            $kod = $codes[$status][0];
                            $opis = $codes[$status][1];
                            if ($kod == false || strlen($status) != 3) {
                                $message = 'Please supply a valid status code.';
                            }                      
                            echo '<div class="alert alert-info" role="alert">
                                <h4 class="alert-heading">Nie udało się dokonać rezerwacji !</h4> 
                                <hr>
                                <p class="mb-0 pp">Sprawdź czy poprawnie uzupełniłeś formularz lub spróbuj ponownie za chwilę.</p>
                            </div>';                          
                        }
                        else{
                            echo '<div class="alert alert-info" role="alert">
                            <h4 class="alert-heading">Niestety wystąpił nieoczekiwany błąd!</h4> 
                            <hr>
                            <p class="mb-0 pp">Sprawdź czy adres URL jest poprawny lub spróbuj ponownie za chwilę.</p>
                        </div>';     
                        }
                        ?>                        
                    </div>
                </div>

            </div>
        </div>
        <!-- STOPKA -->
        <?php include 'komponenty/footer.php'; ?>
    </div>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>

</html>