<?php
class Product {
    public $sku;
    public $stok;
}

class Televisi extends Product {
    public $ukuranLayar;
}

class MesinCuci extends Product {
    public $kapasitas;
}

class Speaker extends Product {
    public $konfigurasi;
}

$produk01 = new Televisi();
$produk02 = new MesinCuci();
$produk03 = new Speaker();
