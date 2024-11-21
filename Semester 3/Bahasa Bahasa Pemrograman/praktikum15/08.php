<?php
    abstract class Produk {
        abstract public function cekHarga($jumlah);
    }

    class Televisi extends Produk{
        public function cekHarga(){
            return 3000000;
        }
    }

    $produk01 = new Televisi();
?>