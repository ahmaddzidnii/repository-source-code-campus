<?php 
    $angka_float = 99.75;
    $string_kosong = "";
    $string_nol = "0";
    $string_spasi = " ";
    $string_angka = "99 ekor kucing";
    $string_kata = "belajar PHP";
    $bool_true = true;
    $bool_false = false;
    $array_kosong = array();
    $array_isi = array("s","b","c");
    $null = null;
    $object = new stdClass();

    $angka_float = (int) $angka_float;
    var_dump($angka_float);
    echo "<br/>";

    $string_kosong = (int) $string_kosong;
    var_dump($string_kosong);
    echo "<br/>";

    $string_nol = (int) $string_nol;
    var_dump($string_nol);
    echo "<br/>";

    $string_spasi = (int) $string_spasi;
    var_dump($string_spasi);
    echo "<br/>";

    $string_angka = (int) $string_angka;
    var_dump($string_angka);
    echo "<br/>";

    $string_kata = (int) $string_kata;
    var_dump($string_kata);
    echo "<br/>";

    $bool_true = (int) $bool_true;
    var_dump($bool_true);
    echo "<br/>";

    $bool_false = (int) $bool_false;
    var_dump($bool_false);
    echo "<br/>";

    $array_kosong = (int) $array_kosong;
    var_dump($array_kosong);
    echo "<br/>";

    $array_isi = (int) $array_isi;
    var_dump($array_isi);
    echo "<br/>";

    $null = (int) $null;
    var_dump($null);
    echo "<br/>";

    $object = (int) $object;
    var_dump($object);
?>