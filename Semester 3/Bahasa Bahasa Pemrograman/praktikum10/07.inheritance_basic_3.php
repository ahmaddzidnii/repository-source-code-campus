<?php
class Product {
    public $merek = "Sharp";
    public $stok = 50;
    public function cekStok() {
        return "Sisa stok: " . $this->stok;
    }
}

class Televisi extends Product {
    public $jenis = "Televisi";
    public function cekStokTelevisi() {
        return $this->jenis . ", " . $this->merek . ", " . $this->cekStok();
    }
}

class TelevisiLCD extends Televisi {
    public $tipe = "LCD";
    public function cekStokTelevisiLCD() {
        return $this->tipe . " " . $this->cekStokTelevisi();
    }
}

$produk01 = new TelevisiLCD();
echo $produk01->merek;                 
echo "<br>";
echo $produk01->jenis;                 
echo "<br>";
echo $produk01->tipe;                  
echo "<br>";
echo $produk01->cekStokTelevisiLCD();  
