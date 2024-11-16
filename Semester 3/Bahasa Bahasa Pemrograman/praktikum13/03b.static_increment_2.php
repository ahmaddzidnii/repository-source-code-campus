<?php
    class Product {
        private  $totalProduk = 0;

        public function __construct() {
          $this->totalProduk++;
          echo "class Product dibuat, total produk = ".$this->totalProduk."<br>";
        }
    }

    $produkA = new Product();
    $produkB = new Product();
    $produkC = new Product();
    $produkD = new Product();
?>