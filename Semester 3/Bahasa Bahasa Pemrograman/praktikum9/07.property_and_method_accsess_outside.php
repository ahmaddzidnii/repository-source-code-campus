<?php
    class Produk {
        public $sku = "001";
        public $merek = "Samsung";
        public $harga = 4000000;

        public function pesanProduk(){
            return "Produk dipesan...";
        }
    }

    $mesinCuci = new Produk();
    $mesinCuci->sku = "002";
    $mesinCuci->merek = "LG";
    $mesinCuci->harga = 1500000;

    echo $mesinCuci->sku;
    echo "<br/>";
    echo $mesinCuci->merek;
    echo "<br/>";
    echo $mesinCuci->harga;
    echo "<br/>";
    echo $mesinCuci->pesanProduk();
?>