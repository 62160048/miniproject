<?php
    $db_host = "localhost";
    $db_user = "root";
    $db_password = "";
    $db_name = "dbtest";

    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");

    // check connection error 
    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    } else {
        // connect success, do nothing
    }
    //get value from post
    $name = $_POST['goodsname'];
    $info = $_POST['info'];
  	$image = $_FILES['image']['name'];

    //set directory file image
  	$target = "images/".basename($image);
    $msg = "";
    if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
        $msg = "Image uploaded successfully";
    }else{
        $msg = "Failed to upload image";
    }

    $sql = "INSERT INTO goods (goodsName, info, image)
            VALUES('$name', '$info', '$image')";
    $result = mysqli_query( $mysqli, $sql);
    ?>


