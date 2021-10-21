<div class="container">
    <div class="row naglowek">
        <div class="col-sm-11">
            <a class="logo" href="index.php">
                <h1>THE BEST CINEMA</h1>
            </a>
        </div>
        <div class="col-sm-1 d-flex align-items-center justify-content-center">
            <?php
            if (isset($_SESSION['nazwa'])) {
                echo '
                <a class="us d-flex align-items-center justify-content-center" href="profil.php">  
                        <p class="us">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-square" viewBox="0 0 16 16">
                                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12z"/>
                            </svg> 
                            <i class="odstep">' . $_SESSION['nazwa'] . '</i>
                        </p>                
                    </a>';
            } else {
                echo '<a class="lin d-flex align-items-center justify-content-center" href="logowanie.php">
                        <p class="lin">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-door-open-fill" viewBox="0 0 16 16">
                                <path d="M1.5 15a.5.5 0 0 0 0 1h13a.5.5 0 0 0 0-1H13V2.5A1.5 1.5 0 0 0 11.5 1H11V.5a.5.5 0 0 0-.57-.495l-7 1A.5.5 0 0 0 3 1.5V15H1.5zM11 2h.5a.5.5 0 0 1 .5.5V15h-1V2zm-2.5 8c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"/>
                             </svg>  LOGOWANIE
                        </p>
                    </a>';
            } ?>
        </div>
    </div>
</div>