<?php
$angka_nol = 0;
$angka_int = 12;
$angka_float = 99.75;
$bool_true = true;
$bool_false = false;
$array_isi = array("a", "b", "c");
$null = null;
$object = new stdClass;
$resource = fopen("01.contoh_gettype.php", "r");

$angka_nol = (string) $angka_nol;
var_dump($angka_nol);
echo "<br>";

$angka_int = (string) $angka_int;
var_dump($angka_int);
echo "<br>";

$angka_float = (string) $angka_float;
var_dump($angka_float);
echo "<br>";

$bool_true = (string) $bool_true;
var_dump($bool_true);
echo "<br>";

$bool_false = (string) $bool_false;
var_dump($bool_false);
echo "<br>";

$array_isi = (string) $array_isi;
var_dump($array_isi);
echo "<br>";

$null = (string) $null;
var_dump($null); 
echo "<br>";

$resource = (string) $resource;
var_dump($resource);
echo "<br>";

$object = (string) $object;
var_dump($object);
?>
