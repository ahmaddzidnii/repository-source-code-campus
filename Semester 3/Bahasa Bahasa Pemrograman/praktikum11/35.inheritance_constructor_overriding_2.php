<?php
    class Product {
        public $jenis;
        public $merek;
        public $stok;

        public function __construct($jenis, $merek, $stok) {
            $this->jenis = $jenis;
            $this->merek = $merek;
            $this->stok = $stok;
        }
    }

    class Televisi extends Product {

    }

    $produk01 = new Televisi("Televisi", "Samsung", 20);

    echo "<pre>";
    print_r($produk01);
    echo "</pre>";
?>