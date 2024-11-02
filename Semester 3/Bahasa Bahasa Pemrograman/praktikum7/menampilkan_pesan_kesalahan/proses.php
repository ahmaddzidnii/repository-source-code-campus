<?php
    if(!isset($_POST["submit"])) {
        header("Location: index.php");
    }

    $nama = trim($_POST['nama']);
    $email = trim($_POST['email']);

    if(empty($nama)){
        $pesan = urlencode("Nama wajib diisi!");
        header("Location: index.php?pesan=$pesan");
        die();
    } 

    if(empty($email)){
        $pesan = urlencode("Email wajib diisi!");
        header("Location: index.php?pesan=$pesan");
        die();
    }
?> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Belajar PHP</title>
</head>
<body>
    <h1>Halaman Proses</h1>
        <?php
            echo "Nama: $nama <br>";
            echo "Email: $email <br>";
            if(isset($_POST['belajar'])){
                echo "Belajar: ".$_POST['belajar']."<br>";
            }
        ?>
</body>
</html>