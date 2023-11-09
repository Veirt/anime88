<?php require("session_start.php") ?>
<?php require("utils.php") ?>
<?php require("connection.php") ?>


<?php

if (!isset($_GET["id"])) {
    create_message("Cara pengaksesan view salah!", "error");
    $title = "Anime88 - Error";
} else {
    $id = $_GET["id"];

    $query = "SELECT * FROM anime WHERE id = ?";
    $stmt = $connection->prepare($query);
    $stmt->bind_param("i", $id);

    $stmt->execute();
    $result = $stmt->get_result();
    $stmt->close();

    if (mysqli_num_rows($result) < 1) {
        create_message("Anime dengan id $id tidak ada.", "error");
        $title = "Anime88 - Error";
    } else {
        $row = $result->fetch_assoc();

        $anime_name = $row['name'];
        $poster_path = $row['poster'];
        $title = "Anime88 - $anime_name";
    }
}



?>


<!DOCTYPE html>
<html lang="en">

<?php $title = $title ?>
<?php include("includes/head.php") ?>

<?php

function get_avg_rating(int $id)
{
    require("connection.php");

    $query = "SELECT ROUND(AVG(rating), 2) AS avg FROM anime JOIN reviews ON anime.id = reviews.id_anime WHERE anime.id = ?";
    $stmt = $connection->prepare($query);
    $stmt->bind_param("i", $id);

    $stmt->execute();
    $result = $stmt->get_result();
    $stmt->close();

    if (mysqli_num_rows($result) == 0) {
        return "-";
    } else {
        return $result->fetch_assoc()["avg"];
    }
}

function get_user_counts(int $id)
{
    require("connection.php");

    $query = "SELECT COUNT(*) AS count FROM reviews WHERE id_anime = ?";
    $stmt = $connection->prepare($query);
    $stmt->bind_param("i", $id);

    $stmt->execute();
    $result = $stmt->get_result();
    $stmt->close();
    return $result->fetch_assoc()["count"];
}

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

?>

<body>
    <?php include("includes/navbar.php") ?>
    <main>
        <?php
        if (isset($_SESSION["message"])) {
            show_message();
            exit();
        }
        ?>

        <section class="preview-anime">
            <div class="poster-anime">
                <img src="assets/poster/<?= $poster_path ?>" alt="#">
            </div>

            <div class="anime-content">
                <div class="anime-desc">
                    <h1><?= $row['name'] ?></h1>
                    <p>
                        <?= $row['synopsis'] ?>
                    </p>
                </div>
                <div class="anime-stat">
                    <div class="anime-rank">
                        <h3>Score</h3>
                        <h1><?= get_avg_rating($id) ?></h1>
                        <div>
                            <p><?= get_user_counts($id) ?> users</p>
                        </div>
                    </div>
                    <div>
                        <select class="rating-option" name="rating" id="rate">
                            <option selected="selected" value="0">Select</option>
                            <option value="10">(10)</option>
                            <option value="9">(9)</option>
                            <option value="8">(8)</option>
                            <option value="7">(7)</option>
                            <option value="6">(6)</option>
                            <option value="5">(5)</option>
                            <option value="4">(4)</option>
                            <option value="3">(3)</option>
                            <option value="2">(2)</option>
                            <option value="1">(1)</option>
                        </select>
                    </div>
                </div>
            </div>
        </section>

        <section class="anime-info">
            <div class="more-info">
                <div class="info-row">
                    <div class="genre-info-wrapper">
                        <?php foreach (get_genre($id) as $genre) : ?>
                            <div class="genre-chip"><?= $genre ?></div>
                        <?php endforeach ?>
                    </div>
                </div>

                <div class="info-row">
                    <h3>Episodes</h3>
                    <p><?= $row['episodes'] ?></p>
                </div>

                <div class="info-row">
                    <h3>Status</h3>
                    <p><?= $row['status'] ?></p>
                </div>

                <div class="info-row">
                    <h3>Season</h3>
                    <p><?= $row['season'] . " " . $row['year'] ?></p>
                </div>

                <div class="info-row">
                    <h3>Studio </h3>
                    <p><?= $row['studio'] ?></p>
                </div>
            </div>
        </section>

    </main>

</body>


</html>
