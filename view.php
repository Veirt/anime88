<?php require("session_start.php") ?>
<?php require("utils.php") ?>
<?php require("connection.php") ?>


<?php
// Function untuk ngecek apakah user udah pernah ngereview anime ini atau belum.
function check_already_reviewed(int $anime_id, int $user_id)
{
    require("connection.php");

    $query = "SELECT * FROM reviews WHERE id_anime = ? AND id_user = ?";
    $result = mysqli_execute_query($connection, $query, [$anime_id, $user_id]);

    // kalo hasilnya lebih dari 0, berarti sudah review.
    if (mysqli_num_rows($result) > 0) {
        return true;
    }
    return false;
}
?>

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

        $anime_id = $row['id'];
        $anime_name = $row['name'];
        $poster_path = $row['poster'];
        $title = "Anime88 - $anime_name";
    }
}

if (isset($_POST["review"])) {
    $rating = $_POST["rating"];
    $comment = $_POST["comment"];
    $user_id = $_SESSION["user"]["id"];

    if (check_already_reviewed($anime_id, $_SESSION["user"]["id"])) {
        // UPDATE
        $query = "UPDATE reviews SET rating = ?, comment = ? WHERE id_anime = ? AND id_user = ?";
        $result = mysqli_execute_query($connection, $query, [$rating, $comment, $anime_id, $user_id]);

        if (!$result) {
            create_message("Gagal mengupdate review.", "error");
            redirect("view.php?id=$anime_id");
        } else {
            create_message("Berhasil mengupdate review.", "success");
            redirect("view.php?id=$anime_id");
        }
    } else {
        // INSERT
        $query = "INSERT INTO reviews (id_user, id_anime, rating, comment) VALUES (?, ?, ?, ?)";
        $result = mysqli_execute_query($connection, $query, [$user_id, $anime_id, $rating, $comment]);
        if (!$result) {
            create_message("Gagal menambah review.", "error");
            redirect("view.php?id=$anime_id");
        } else {
            create_message("Berhasil menambah review.", "success");
            redirect("view.php?id=$anime_id");
        }
    }
    exit();
}

if (isset($_POST["review-delete"])) {
    $query = "DELETE FROM reviews WHERE id_anime = ? AND id_user = ?";
    $result = mysqli_execute_query($connection, $query, [$anime_id, $_SESSION["user"]["id"]]);
    if (!$result) {
        create_message("Gagal menghapus review.", "error");
        redirect("view.php?id=$anime_id");
    } else {
        create_message("Berhasil menghapus review.", "success");
        redirect("view.php?id=$anime_id");
    }
    exit();
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

function get_user_rated_count(int $id)
{
    require("connection.php");

    $query = "SELECT COUNT(*) AS count FROM reviews WHERE id_anime = ?";
    $result = mysqli_execute_query($connection, $query, [$id]);

    return $result->fetch_assoc()["count"];
}

function get_anime_ranking(int $id)
{
    require("connection.php");

    // DENSE_RANK() adalah function dari mysql
    // buat ambil ranking intinya
    $query = "SELECT anime.id, 
    AVG(rating) AS avg, 
    DENSE_RANK() OVER(ORDER BY avg DESC) AS ranking 
    FROM anime JOIN reviews ON anime.id = reviews.id_anime
    GROUP BY anime.id";
    $result = mysqli_execute_query($connection, $query);

    // kalo ada, return ranking nya
    while ($row = mysqli_fetch_assoc($result)) {
        if ($row["id"] == $id) {
            return $row["ranking"];
        }
    }

    // kalo ga ada kasih -
    return "-";
}

?>

<body>
    <?php include("includes/navbar.php") ?>
    <div style="width: 90%; margin: 10px auto">
        <?php show_message(); ?>
    </div>
    <main>

        <section class="preview-anime">
            <div class="anime-info">
                <img class="poster-anime" src="assets/poster/<?= $poster_path ?>" alt="#">

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
                <?php if (check_role("admin")) { ?>
                    <div class="more-info">
                        <h2 style="margin-bottom: 10px">Actions</h2>
                        <div style="display: flex;  align-self: flex-start; gap: 15px">
                            <a href="update.php?id=<?= $id ?>" class="btn btn-green">Update</a>
                            <a href="delete.php?id=<?= $id ?>" class="btn btn-red" onclick="return confirm('Are you sure you want to delete this anime?')">Delete</a>
                        </div>

                    </div>
                <?php } ?>
            </div>

            <div class="anime-content">
                <div class="anime-desc">
                    <h1><?= $row['name'] ?></h1>
                    <p>
                        <?= $row['synopsis'] ?>
                    </p>
                </div>
                <div class="anime-stat">
                    <div class="anime-stat-item anime-stat-score">
                        <h3>Score</h3>
                        <h3><?= get_avg_rating($id) ?></h3>
                    </div>

                    <div class="anime-stat-item anime-stat-ranking">
                        <h3>Ranking</h3>
                        <h3><?= get_anime_ranking($id) ?></h3>
                    </div>

                    <div class="anime-stat-item anime-stat-users">
                        <h3>Rated</h3>
                        <h4><?= get_user_rated_count($id) ?> User(s)</h4>
                    </div>


                </div>

                <?php
                // <> '' artinya comment nya tidak kosong
                $query = "SELECT * FROM reviews JOIN users ON reviews.id_user = users.id WHERE id_anime = ? AND comment <> ''";
                $result = mysqli_execute_query($connection, $query, [$id]);
                ?>
                <h3 class="section-title">Reviews</h3>
                <div class="reviews">
                    <?php

                    if (mysqli_num_rows($result) == 0) {
                        echo "Belum ada review.";
                    }

                    while ($row = mysqli_fetch_assoc($result)) { ?>
                        <div class="review-entry">
                            <div class="review-rating">
                                <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="24px" height="24px" viewBox="0 0 24 24">
                                    <path d="M16.598,20.574c-0.238,0-0.478-0.058-0.699-0.174l-3.666-1.927c-0.146-0.076-0.319-0.076-0.465,0
                L8.102,20.4c-0.51,0.269-1.116,0.224-1.58-0.114c-0.465-0.338-0.694-0.9-0.597-1.467l0.7-4.082c0.028-0.162-0.026-0.328-0.144-0.442
                l-2.966-2.891c-0.412-0.401-0.557-0.991-0.379-1.538c0.178-0.547,0.642-0.938,1.211-1.021L8.446,8.25
                C8.608,8.226,8.75,8.124,8.822,7.976l1.833-3.714C10.91,3.746,11.425,3.426,12,3.426s1.09,0.32,1.345,0.836l1.833,3.714
                c0.073,0.148,0.214,0.25,0.376,0.274l4.098,0.595c0.569,0.083,1.033,0.474,1.211,1.021c0.178,0.547,0.032,1.136-0.379,1.538
                l-2.965,2.891c-0.118,0.115-0.172,0.28-0.144,0.442l0.7,4.082c0.097,0.567-0.131,1.129-0.597,1.467
                C17.215,20.477,16.908,20.574,16.598,20.574z M12.698,17.588l3.666,1.927c0.173,0.091,0.37,0.077,0.526-0.038
                c0.158-0.115,0.232-0.297,0.199-0.489l-0.7-4.082c-0.083-0.487,0.078-0.983,0.432-1.328l2.965-2.89
                c0.14-0.136,0.187-0.328,0.127-0.513c-0.061-0.186-0.211-0.312-0.404-0.341l-4.098-0.595c-0.489-0.071-0.912-0.378-1.13-0.821
                l-1.832-3.713c-0.173-0.349-0.725-0.349-0.897,0L9.719,8.418c-0.218,0.443-0.64,0.75-1.129,0.821L4.491,9.834
                c-0.192,0.028-0.343,0.155-0.404,0.341c-0.06,0.185-0.013,0.376,0.127,0.513l2.965,2.891c0.354,0.344,0.515,0.84,0.431,1.327
                l-0.7,4.082c-0.033,0.192,0.042,0.375,0.199,0.489c0.157,0.115,0.353,0.129,0.527,0.038l3.665-1.927
                C11.739,17.357,12.261,17.357,12.698,17.588L12.698,17.588z" />
                                </svg>
                                <p><?= $row['rating'] ?></p>
                            </div>

                            <div>
                                <div class="review-username">
                                    <?= $row['username'] ?>
                                </div>
                                <div class="review-content">
                                    <?= $row['comment'] ?>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>

                <div style="margin-top: 15px">
                    <?php if (check_role("user")) { ?>
                        <?php if (check_already_reviewed($id, $_SESSION["user"]["id"])) { ?>
                            <button id="open-modal" class="btn btn-blue">Edit review</button>
                        <?php } else { ?>
                            <button id="open-modal" class="btn btn-green">Add review</button>
                        <?php } ?>
                    <?php } ?>
                </div>
            </div>
        </section>

    </main>

    <div id="review-modal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <?php
            $query = "SELECT * FROM reviews WHERE id_anime = ? AND id_user = ?";
            $result = mysqli_execute_query($connection, $query, [$anime_id, $_SESSION["user"]["id"]]);

            $row = mysqli_fetch_assoc($result);


            ?>
            <span class="close">&times;</span>
            <form style="width: 90%" class="form" action="" method="POST">
                <h2><?= $anime_name ?></h2>
                <label for="rating">Rating</label>
                <input value="<?= isset($row) ? $row['rating'] : '' ?>" required class="form-input" type="number" min="1" max="10" name="rating" id="rating">

                <label for="comment">Komentar</label>
                <textarea class="form-input" type="text" name="comment" rows="10" id="comment"><?= isset($row) ? $row['comment'] : '' ?></textarea>

                <div style="display: flex; justify-content: center; gap: 10px">
                    <button style="margin-top: 15px" name="review" class="btn btn-green" type="submit">Submit</button>
                    <?php if (check_already_reviewed($anime_id, $_SESSION["user"]["id"])) { ?>
                        <button style="margin-top: 15px" name="review-delete" class="btn btn-red" type="submit">Delete</button>
                    <?php } ?>
                </div>
            </form>
        </div>

    </div>

</body>

</html>
