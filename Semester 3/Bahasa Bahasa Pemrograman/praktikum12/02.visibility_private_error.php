<?php 
    class Produk {
        private $merek;

        private function hello(){
            return "Ini adalah Produk";
        }
    }


    $produk01 = new Produk();

    $produk01->merek = "Asus";

    echo $produk01->merek;

    echo $produk01->hello();
?>