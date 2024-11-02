<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Menampilkan hasil form individu</title>
</head>
<body>
    <h1>Pemrosesan Form</h1>
    <form action="proses.php" method="post">

        <p>Nama: 
            <input type="text" name="nama">
        </p>
        <p>Password: 
            <input type="password" name="password">
        </p>
        <input type="submit" name="submit" value="Proses Data">
    </form>
</body>
</html>