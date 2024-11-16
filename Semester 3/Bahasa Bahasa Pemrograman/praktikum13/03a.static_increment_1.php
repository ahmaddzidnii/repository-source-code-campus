<?php
    class Product {
        private static $totalProduk = 0;

        public function __construct() {
          self::$totalProduk++;
          echo "class Product dibuat, total produk = ".self::$totalProduk."<br>";
        }
    }

    $produkA = new Product();
    $produkB = new Product();
    $produkC = new Product();
    $produkD = new Product();
?>