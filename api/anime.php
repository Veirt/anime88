<?php

require("../utils.php");
require("../connection.php");

// TODO: filter berdasarkan genre. bisa multiple genre
// TODO: sorting berdasarkan avg rating, name

$name = isset($_GET["name"]) ? $_GET["name"] : "";
$sort = isset($_GET["sort"]) ? $_GET["sort"] : "asc";

// Validate sort
if ($sort != "asc" && $sort != "desc") {
    $sort = "asc";
}

$query = "SELECT * FROM anime WHERE LOWER(name) LIKE ? ORDER BY name $sort";
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
