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

$previous_poster = mysqli_execute_query($connection, "SELECT poster FROM anime WHERE id = ?", [$_GET["id"]]);
$previous_poster_result = mysqli_fetch_assoc($previous_poster)["poster"];

$id = $_GET["id"];

$query = "DELETE FROM anime WHERE id = ?";
$result = mysqli_execute_query($connection, $query, [$id]);

if ($result) {
    // hapus juga posternya
    unlink("./assets/poster/" . $previous_poster_result);
    create_message("Anime berhasil dihapus.", "success");
} else {
    create_message("Anime gagal dihapus.", "error");
}


redirect("read.php");
