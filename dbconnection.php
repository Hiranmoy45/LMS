<?php
$db_host = "localhost";
$db_user = "root";
$db_password ="";
$db_name = "sudipcha_hiranmoy";

// Create Connection
$conn = new mysqli($db_host, $db_user, $db_password, $db_name);

// check connection
if($conn->connect_error){
    die("connection failed");
}

// else{
//     echo"connected";
// }


?>