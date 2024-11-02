<?php 
$genap =0;

echo "Bilangan genap :";
for ($i = 11; $i < 30; $i++) {
    if ($i % 2 == 0) {
        echo $i . ",";
        $genap++;
    }
}
echo "cacah bilangan genap : $genap";