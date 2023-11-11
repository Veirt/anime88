<?php

function sanitize_file_name(string $name)
{
    // https://stackoverflow.com/questions/2021624/string-sanitizer-for-filename
    // Ubah semua karakter non-alphanumeric menjadi dash atau -
    return preg_replace('/[^a-z0-9]+/', '-', strtolower($name));
}

function redirect(string $url)
{
    echo "<script>window.location = '$url';</script>";
}


function user_authorization(string $role)
{
    require("session_start.php");

    if (!isset($_SESSION) || !isset($_SESSION["user"])) {
        header("Location: index.php");
        exit;
    }

    $user = $_SESSION["user"];
    if ($user["role"] !== $role) {
        header("Location: index.php");
        exit;
    }
}

function redirect_if_logged_in()
{
    require("session_start.php");

    if (isset($_SESSION["user"])) {
        header("Location: index.php");
        exit;
    }
}

/*
  Type: success, error, warning
*/
function create_message(string $content, string $type)
{
    require("session_start.php");

    $_SESSION["message"] = ["content" => $content, "type" => $type];
}

function show_message()
{
    require("session_start.php");

    if (isset($_SESSION["message"])) {
        $message_type = $_SESSION["message"]["type"];
        echo " <div class='message $message_type'>";
        echo $_SESSION["message"]["content"];
        unset($_SESSION["message"]);
        echo "</div>";
    };
}

// ambil genre berdasarkan id yang diberikan di parameter.
function get_genre(int $id)
{
    require("connection.php");

    $query = "SELECT genre.name AS genres FROM anime
    JOIN anime_genre ON anime.id = anime_genre.id_anime
    JOIN genre ON anime_genre.id_genre = genre.id
    WHERE anime.id = ?";
    $stmt = $connection->prepare($query);
    $stmt->bind_param("i", $id);

    $stmt->execute();
    $result = $stmt->get_result();
    $stmt->close();

    // get all result and join them with comma
    $genres = array();
    while ($row = $result->fetch_assoc()) {
        array_push($genres, $row["genres"]);
    }

    return $genres;
}
