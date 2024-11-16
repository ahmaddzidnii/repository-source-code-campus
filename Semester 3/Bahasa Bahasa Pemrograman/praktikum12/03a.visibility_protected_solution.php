<?php 
    class Produk {
        protected $merek = "Asus";

        protected function hello(){
            return "Ini adalah Produk";
        }
    }

    class Laptop extends Produk {
        public function helloLaptop(){
            return $this->hello()." Laptop ".$this->merek;
        }
    }

    $produk01 = new Laptop();
    echo $produk01->helloLaptop();
?>