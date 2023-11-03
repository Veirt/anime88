<?php

$host = "localhost";
$user = "root";
$password = "";
$database = "anime";

$connection = mysqli_connect($host, $user, $password, $database);

if (!$connection) {
    echo "Error when connecting mysql database: " . mysqli_connect_error();
}
