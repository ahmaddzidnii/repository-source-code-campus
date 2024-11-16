<?php
class Produk {
    private static $totalProduk = 100;
    
    public static function cekProduk() {
        return "Total Produk ada ".self::$totalProduk;
    }
}

class Blender extends Produk {
    public function cekBlender() {
        return self::cekProduk(). ', termasuk 3 jenis Blender <br>';
    }
}

class HairDryer extends Produk {
    public function cekHairDryer() {
        return parent::cekProduk(). ', termasuk 5 jenis Hair Dryer <br>';
    }
}

class Mixer extends Produk {
    public function cekMixer() {
        return Produk::cekProduk(). ', termasuk 2 jenis Mixer <br>';
    }
}

$produk01 = new Blender();
echo $produk01->cekBlender();

$produk02 = new HairDryer();
echo $produk02->cekHairDryer();

$produk03 = new Mixer();
echo $produk03->cekMixer();
?>