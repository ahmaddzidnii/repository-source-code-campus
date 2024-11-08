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

    $produk01 = new Product("Televisi", "Samsung", 20);

    echo "<pre>";
    print_r($produk01);
    echo "</pre>";
?>