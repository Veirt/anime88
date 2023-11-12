<?php

$host = isset($_ENV["DB_HOST"]) ? $_ENV["DB_HOST"] : "localhost";
$user = isset($_ENV["DB_USER"]) ? $_ENV["DB_USER"] : "root";
$password = isset($_ENV["DB_PASSWORD"]) ? $_ENV["DB_PASSWORD"] : "";
$database = "anime88";

$connection = mysqli_connect($host, $user, $password, $database);
mysqli_set_charset($connection, 'utf8');

if (!$connection) {
    echo "Error when connecting mysql database: " . mysqli_connect_error();
}
