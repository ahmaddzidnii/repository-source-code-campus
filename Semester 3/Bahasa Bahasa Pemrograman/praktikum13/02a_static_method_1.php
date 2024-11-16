<?php
    class Produk {
        public static $totalProduk = 100;

        public static function cekProduk(){
            return "Total Produk ada 100";
        }
    }

    echo Produk::cekProduk();
?>