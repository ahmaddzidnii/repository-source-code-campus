<?php 
    include_once "config.php";
    $result = mysqli_query($mysqli, "SELECT * FROM users ORDER BY id DESC");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Homepage</title>
</head>
<body>
    <a style="display: block;" href="add.php">Add new user</a>
    <br/>
    <table width="80%" border="1">
        <tr>
            <th>NAME</th>
            <th>MOBILE</th>
            <th>EMAIL</th>
            <th>UPDATE</th>
        </tr>
        <?php
            while($user_data = mysqli_fetch_array($result)) {
                echo "<tr>";
                echo "<td>".$user_data['name']."</td>";
                echo "<td>".$user_data['mobile']."</td>";
                echo "<td>".$user_data['email']."</td>";
                echo "<td><a href='edit.php?id=$user_data[id]'>Edit</a> | <a href='delete.php?id=$user_data[id]'>Delete</a></td></tr>";
            }
        ?>
    </table>
</body>
</html>