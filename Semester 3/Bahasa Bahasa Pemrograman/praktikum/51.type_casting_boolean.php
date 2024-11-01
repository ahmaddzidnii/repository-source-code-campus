<?php
$angka_nol = 0;
$angka_int = 12;
$angka_float = 99.75;
$angka_float_kecil = 0.000001;
$array_kosong = array ();
$array_isi = array("a", "b", "c");
$null = null;
$object = new stdClass;
$resource = fopen("01.contoh_gettype.php", "r");

$angka_nol = (bool) $angka_nol;
var_dump($angka_nol);
echo "<br>";

$angka_int = (bool) $angka_int;
var_dump($angka_int);
echo "<br>";

$angka_float = (bool) $angka_float;
var_dump($angka_float);
echo "<br>";

$angka_float_kecil = (bool) $angka_float_kecil;
var_dump($angka_float_kecil);
echo "<br>";

$array_kosong = (bool) $array_kosong;
var_dump($array_kosong);
echo "<br>";

$array_isi = (bool) $array_isi;
var_dump($array_isi);
echo "<br>";

$null = (bool) $null;
var_dump($null);
echo "<br>";

$object = (bool) $object;
var_dump($object);
echo "<br>";

$resource = (bool) $resource;
var_dump($resource);
?>