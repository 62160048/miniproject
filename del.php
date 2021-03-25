<?php
    $db_host = "localhost";
    $db_user = "root";
    $db_password = "";
    $db_name = "dbtest";

    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");

    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    } else {
        // connect success, do nothing
    }
    $id = $_POST['keyword'];
 
    $sql = "DELETE FROM  goods 
            WHERE goodsID = $id";
    $result = mysqli_query( $mysqli, $sql);
    ?>