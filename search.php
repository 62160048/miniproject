<?php
    $db_host = "localhost";
    $db_user = "root";
    $db_password = "";
    $db_name = "dbtest";

    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");

    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    } else {}

    $key = $_POST['keyword'];


    $sql = "SELECT *
        FROM goods 
        WHERE goodsName LIKE '%$key%' OR info LIKE '%$key%'";
        $result = $mysqli->query($sql);
  
    $arr = array();
    if ($result->num_rows > 0){
        while($row = $result->fetch_object())
        {
            $arr[] = $row;
        }
    } else {
        // echo "Not found.";
    }
    echo json_encode($arr);

    ?>