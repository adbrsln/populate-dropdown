<?php
    include 'include/db.php';
    $id = mysqli_real_escape_string($db,$_GET["parent"]);
    $result = mysqli_query($db,"SELECT * FROM daerah WHERE idNegeri = $id");
    while($row3 = mysqli_fetch_assoc($result))
        echo '<option value="'. $row3['id'].'">'. $row3['nama'].'</option>';
?>