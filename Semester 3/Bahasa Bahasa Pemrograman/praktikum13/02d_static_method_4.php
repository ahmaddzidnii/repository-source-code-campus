<?php
    class Produk {
        private static $totalProduk = 100;

        public static function cekProduk(){
            return "Total Produk ada " .self::$totalProduk;
        }
    }

    class Blender extends Produk {
        
    }

    echo Blender::cekProduk();
?>