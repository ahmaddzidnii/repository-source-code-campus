<?php
    abstract class Produk {
        abstract public function cekHarga();
    }

    class Televisi extends Produk{

    }


    $produk01 = new Televisi();
?>