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
    if (!isset($_SESSION)) session_start();

    if (!isset($_SESSION) || !isset($_SESSION["user"])) {
        header("Location: index.php");
        echo "test";
        exit;
    }

    $user = $_SESSION["user"];
    if ($user["role"] !== $role) {
        header("Location: index.php");
        exit;
    }
}

/*
  Type: success, error, warning
*/
function create_message(string $content, string $type)
{
    if (!isset($_SESSION)) session_start();

    $_SESSION["message"] = ["content" => $content, "type" => $type];
}
