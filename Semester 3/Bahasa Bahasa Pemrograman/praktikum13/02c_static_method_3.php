<?php
    class Produk {
        private static $totalProduk = 100;

        public static function cekProduk(){
            return "Total Produk ada " .Produk::$totalProduk;
        }
    }

    echo Produk::cekProduk();
?>