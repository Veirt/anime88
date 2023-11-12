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
    $result = mysqli_execute_query($connection, $query, ["$id"]);

    // get all result and join them with comma
    $genres = array();
    while ($row = $result->fetch_assoc()) {
        array_push($genres, $row["genres"]);
    }

    return $genres;
}

// hitung season sekarang.
// Winter season (1st quarter) from January to March.
// Spring season (2nd quarter) from April to June.
// Summer season (3rd quarter) from July from September.
// Fall season (4th quarter) from October to December.
function get_current_season()
{
    $season_month = [
        "Winter" => [1, 2, 3],
        "Spring" => [4, 5, 6],
        "Summer" => [7, 8, 9],
        "Fall" => [10, 11, 12],
    ];

    $month = date("m");

    foreach ($season_month as $season => $months) {
        if (in_array($month, $months)) {
            return $season;
        }
    }
}

function check_role(string $role)
{
    require("session_start.php");

    // kalau belum ada session user, artinya guest (belum login)
    if (!isset($_SESSION["user"])) {
        return false;
    }

    // cocokkin role user yang sedang login dengan role yang diminta di parameter.
    return $_SESSION["user"]["role"] == $role;
}
