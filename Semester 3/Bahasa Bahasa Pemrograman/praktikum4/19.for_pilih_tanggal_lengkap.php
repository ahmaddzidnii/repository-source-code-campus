<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Belajar PHP</title>
</head>
<body>
 Pilih Tanggal :
  <select name="tgl" id="tgl">
    <?php
        for ($i=1; $i <= 31; $i++) { 
          echo "<option value=$i>$i</option>";
        }
    ?>
  </select>
 Plih Bulan :
  <select name="bln" id="bln">
    <?php
        for ($i=1; $i <= 12; $i++) { 
          echo "<option value=$i>$i</option>";
        }
    ?>
  </select>
  Pilih Tahun :
  <select name="thn" id="thn">
    <?php
        for ($i=1980; $i <= 2025; $i++) { 
          echo "<option value=$i>$i</option>";
        }
    ?>
</body>
</html>