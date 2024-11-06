<?php
    class Produk {
        public $jenis;
        public $merek;
        public $stok;

        // public function __construct($a, $b, $c) {
        //     $this->jenis = $a;
        //     $this->merek = $b;
        //     $this->stok = $c;
        // }
    }

    $produk01 = new Produk("Televisi", "Samsung", 20);
    $produk02 = new Produk("Mesin cuci","LG", 10);

    print_r($produk01);
    echo "<br/>";
    print_r($produk02);
?>