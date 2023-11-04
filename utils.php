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
