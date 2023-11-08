<?php


$quote_file = file_get_contents("./quote.json");
$quotes = json_decode($quote_file, true);

// pick random
$random_quote = $quotes[array_rand($quotes, 1)];

// return the random quote wit  json format
header("Content-Type: application/json");
echo json_encode($random_quote);
