<?php
    class Produk {
        public function hello(){
            return "Ini dari Produk";
        }
    }

    class Televisi extends Produk {
        public function hello(){
            return "Ini dari Televisi";
        }

        public function helloProduk(){
            return parent::hello();
        }
    }

    $produk01 = new Televisi();
    echo $produk01->helloProduk();
?>