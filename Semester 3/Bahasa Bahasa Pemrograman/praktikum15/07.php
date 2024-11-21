<?php
    abstract class Produk {
        abstract public function cekHarga($jumlah);
    }

    class Televisi extends Produk{
        public function cekHarga($jumlah){
            return 3000000 * $jumlah;
        }
    }

    $produk01 = new Televisi();
    echo $produk01->cekHarga(2);
?>