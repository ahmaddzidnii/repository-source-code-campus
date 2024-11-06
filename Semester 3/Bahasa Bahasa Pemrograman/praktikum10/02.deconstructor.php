<?php
    class Product {

        public function __construct(){
            echo "Constructor dijalankan... <br/>";
        }

        public function __destruct(){
            echo "Destructor dijalankan... <br/>";
        }
    }

    $product01 = new Product();
    $product02 = new Product();
?>