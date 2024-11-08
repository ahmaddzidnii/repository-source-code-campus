<?php
    class Produk {
        public $merek = "Sony";
    }

    class Televisi extends Produk {
        public $merek = "Panasonic";
        public $merekProduk = parent::merek;
    }

    $produk01 = new Televisi();
    echo $produk01->merek;
?>
