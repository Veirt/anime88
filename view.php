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
    $result = mysqli_execute_query($connection, $query, [$id]);

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
    $result = mysqli_execute_query($connection, $query, [$id]);
    $avg_rating = $result->fetch_assoc()["avg"];

    if ($avg_rating == 0) {
        return "-";
    } else {
        return $avg_rating;
    }
}

function get_user_counts(int $id)
{
    require("connection.php");

    $query = "SELECT COUNT(*) AS count FROM reviews WHERE id_anime = ?";
    $result = mysqli_execute_query($connection, $query, [$id]);

    return $result->fetch_assoc()["count"];
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
                <?php if (check_role("admin")) { ?>
                    <div style="align-self: flex-end;">
                        <!-- TODO: update. Arahin ke update.php?id=...-->
                        <a href="update.php?id=<?= $id ?>" class="btn btn-green">Update</a>
                        <!-- TODO: Delete. Arahin ke delete.php?id=...-->
                        <a href="delete.php?id=<?= $id ?>" class="btn btn-red" onclick="return confirm('Are you sure you want to delete this anime?')">Delete</a>
                    </div>
                <?php } ?>

                <div class="anime-desc">
                    <h1><?= $row['name'] ?></h1>
                    <p>
                        <?= $row['synopsis'] ?>
                    </p>
                </div>
                <!-- TODO: tambahin lagi selain avg rating. bagusin lagi select option nya. -->
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
