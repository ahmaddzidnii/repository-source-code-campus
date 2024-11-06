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
    $product01 = null;

    echo "Program selesai <br/>";
?>