<?php
    class Produk {
        public $jenis ="";
        public $merek ="";

        public function pesanProduk(){
            return $jenis." dipesan...";
        }
    }

    $produk01 = new Produk();
    $produk01->jenis ="Televisi";
    $produk01->merek ="Samsung";

    echo $produk01->pesanProduk();
?>