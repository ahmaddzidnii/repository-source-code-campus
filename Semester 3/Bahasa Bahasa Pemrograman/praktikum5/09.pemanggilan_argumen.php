<?php 
    function salam($waktu, $nama){
        echo "<p> Selamat $waktu, $nama</p>";
    }

    salam("Pagi", null);
    salam("","Joko");
?>