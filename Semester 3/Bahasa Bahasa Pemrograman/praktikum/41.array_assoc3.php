<?php
    $assoc = array (
        "satu" => 10000,
        "dua" => "Duniailkom",
        4 => "Belajar PHP",
        1000 => "Jadi programmer",
    );
    
    $assoc["baru"] = "Data baru";
    $assoc[99] = "Sembilan puluh sembilan";

    $assoc[] = "Ini akan pakai index berapa?";
    $assoc[] = 123456;

    echo "<pre>";
    print_r($assoc);
    echo "</pre>";
?>