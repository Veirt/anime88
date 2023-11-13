<?php
require("session_start.php");
require("utils.php");
require("connection.php");
user_authorization("admin");

if (!isset($_GET["id"])) {
    create_message("Akses Invalid!", "error");
    redirect("read.php");
    exit;
}

$id = $_GET["id"];


$query = "DELETE FROM anime WHERE id = ?";
$result = mysqli_execute_query($connection, $query, [$id]);

if ($result) {
    create_message("Anime berhasil dihapus.", "success");
} else {
    create_message("Anime gagal dihapus.", "error");
}


redirect("read.php");
?>
