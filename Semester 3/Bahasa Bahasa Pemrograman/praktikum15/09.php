<?php
    abstract class Produk {
        abstract public function cekHarga();
    }

    class Televisi extends Produk{
        protected function cekHarga(){
            return 3000000;
        }
    }

    $produk01 = new Televisi();
?>