<?php
abstract class Product {
    abstract public function cekMerek();
}

class Televisi extends Product{
    public function cekMerek(){
        return "Polytron";
    }
}

class MesinCuci extends Product{
    public function cekMerek(){
        return "Electrolux";
    }
}

class LemariEs extends Product{
    public function cekMerek(){
        return "Sharp";
    }
}

$produk01 = new Televisi();
$produk02 = new MesinCuci();
$produk03 = new LemariEs();

echo $produk01->cekMerek() . "<br>";
echo $produk02->cekMerek() . "<br>"; 
echo $produk03->cekMerek() . "<br>";   