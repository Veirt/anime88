<?php

require("../utils.php");
require("../connection.php");

// TODO: filter berdasarkan genre. bisa multiple genre

$name = isset($_GET["name"]) ? $_GET["name"] : "";

// sort by Name ASC secara default
$key = isset($_GET["key"]) ? $_GET["key"] : "name";
$order = isset($_GET["order"]) ? $_GET["order"] : "asc";

// Validasi order. Kalo ditaroh selain asc/desc dijadikan asc
if ($order != "asc" && $order != "desc") {
    $order = "asc";
}

$valid_keys = ["name", "avg_rating"]; // Add other valid columns as needed
$key = in_array($key, $valid_keys) ? $key : "name";

// Sanitize season dan yearnya.
$season = isset($_GET["season"]) ? mysqli_real_escape_string($connection, $_GET["season"]) : "";
$year = isset($_GET["year"]) ? mysqli_real_escape_string($connection, $_GET["year"]) : "";

$filters = "";
if (!empty($season)) {
    $filters .= " AND season = '$season'";
}
if (!empty($year)) {
    $filters .= " AND year = '$year'";
}


// Build the WHERE clause for additional filters
$additionalFilters = "";
if (!empty($season)) {
    $additionalFilters .= " AND season = '$season'";
}
if (!empty($year)) {
    $additionalFilters .= " AND year = '$year'";
}



$query = "SELECT *, AVG(rating) AS avg_rating FROM anime LEFT JOIN reviews ON anime.id = reviews.id_anime WHERE LOWER(name) LIKE ? $filters GROUP BY anime.id ORDER BY $key $order";
$result = mysqli_execute_query($connection, $query, ["%$name%"],);

while ($row = mysqli_fetch_assoc($result)) { ?>
    <?php $url = "view.php?id=" . $row['id']; ?>

    <div class="anime anime-smaller">
        <a href="<?= $url ?>">
            <img class="anime-poster anime-poster-smaller" src="assets/poster/<?= $row['poster'] ?>" alt="">
        </a>
        <a href="<?= $url ?>">
            <h2 class="anime-title"><?= $row['name'] ?></h2>
        </a>
        <p class="anime-airing"><?= $row['season'] ?> <?= $row['year'] ?> · <?= $row['status'] ?></p>
        <div class="genre-info-wrapper">
            <?php foreach (get_genre($row['id']) as $genre) : ?>
                <div class="genre-chip genre-chip-smaller"><?= $genre ?></div>
            <?php endforeach ?>
        </div>
    </div>
<?php } ?>
