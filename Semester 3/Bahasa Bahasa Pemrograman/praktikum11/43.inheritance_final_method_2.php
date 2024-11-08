<?php
    class Produk {
        final public function hello(){
            return "Ini dari Produk";
        }
    }

    $produk01 = new Produk(null,null,null);
    echo $produk01->hello();
?>