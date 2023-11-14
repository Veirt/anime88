<?php
require("utils.php");
user_authorization("admin");
require("connection.php");

if (isset($_GET["edit"])) {
    $edit_id = $_GET["edit"];
    $query = "SELECT * FROM anime WHERE id = ?";
    $result = mysqli_execute_query($connection, $query, [$edit_id]);
    $anime_data = $result->fetch_assoc();

    if (!$anime_data) {
        echo "Anime not found";
        exit;
    }

    if (isset($_POST["update"])) {
        $name = $_POST["anime-name"];
        $synopsis = $_POST["synopsis"];
        $episodes = $_POST["episodes"];
        $status = $_POST["status"];
        $season = $_POST["season"];
        $year = $_POST["year"];
        $studio = $_POST["studio"];

        $original_file_name = $_FILES["poster"]["name"];
        $file_extension = pathinfo($original_file_name, PATHINFO_EXTENSION);
        $temp = $_FILES["poster"]["tmp_name"];
        $target_file_name = sanitize_file_name("$name") . ".$file_extension";

        if (move_uploaded_file($temp, "assets/poster/$target_file_name")) {
            $query = "UPDATE anime SET name=?, synopsis=?, episodes=?, status=?, season=?, year=?, studio=?, poster=? WHERE id=?";
            $result = mysqli_execute_query($connection, $query, [$name, $synopsis, $episodes, $status, $season, $year, $studio, $target_file_name, $edit_id]);

            if ($result !== false) {
                echo "<script>alert('Berhasil memperbarui anime!');</script>";
                redirect("dashboard.php");
            } else {
                echo "Gagal memperbarui anime";
            }
        } else {
            echo "Gagal mengupload gambar";
        }
    }
} else {
    echo "Parameter 'edit' not provided";
}
?>

<!DOCTYPE html>
<html lang="en">

<?php $title = "Anime88 - Update" ?>
<?php include("includes/head.php") ?>

<body>
    <?php $sidebar_active = "update" ?>
    <?php include("includes/sidebar.php") ?>

    <main class="dashboard dashboard-form">
        <div style="width: 100%;">
            <?php include("includes/navbar.php") ?>
        </div>

        <form class="form" action="" method="post" enctype="multipart/form-data">
            <?php if (isset($_SESSION["message"])) { ?>
                <div class="message <?= $_SESSION['message']['type'] ?>">
                    <?= $_SESSION["message"]["content"]; ?>
                    <?php unset($_SESSION["message"]) ?>
                </div>
            <?php } ?>

            <?php if (isset($anime_data)) { ?>
                <input type="hidden" name="anime_id" value="<?= $anime_data["id"] ?>">
            <?php } ?>

            <label for="anime-name">Nama Anime</label>
            <input required class="form-input" type="text" name="anime-name" id="anime-name" value="<?= isset($anime_data) ? $anime_data["name"] : '' ?>">

            <label for="synopsis">Sinopsis</label>
            <textarea required class="form-input" type="text" name="synopsis" id="synopsis"><?= isset($anime_data) ? $anime_data["synopsis"] : '' ?></textarea>

            <label for="episodes">Jumlah Episode</label>
            <input required class="form-input" type="number" name="episodes" id="episodes" value="<?= isset($anime_data) ? $anime_data["episodes"] : '' ?>">

            <label>Genre</label>
            <div class="checkbox-group">
                <?php
                $query = "SELECT * FROM genre ORDER BY name ASC";
                $result = mysqli_execute_query($connection, $query);
                $selected_genres = [];

                // Fetch existing genres for the anime
                $query = "SELECT id_genre FROM anime_genre WHERE id_anime = ?";
                $genre_result = mysqli_execute_query($connection, $query, [$edit_id]);

                while ($genre_row = $genre_result->fetch_assoc()) {
                    $selected_genres[] = $genre_row['id_genre'];
                }

                while ($row = $result->fetch_assoc()) {
                    $genre = $row["name"];
                    $id = $row["id"];
                ?>
                    <input class='form-checkbox-chips' type='checkbox' name='genre[]' value='<?= $id ?>' id="<?= $id ?>" <?= in_array($id, $selected_genres) ? 'checked' : '' ?>>
                    <label for='<?= $id ?>'><?= $genre ?></label>
                <?php } ?>
            </div>

            <label for="status">Status</label>
            <select required class="form-input" name="status" id="status">
                <option hidden value="">Pilih Status</option>
                <option value="Airing" <?= isset($anime_data) && $anime_data["status"] == "Airing" ? 'selected' : '' ?>>Airing</option>
                <option value="Finished" <?= isset($anime_data) && $anime_data["status"] == "Finished" ? 'selected' : '' ?>>Finished</option>
                <option value="Upcoming" <?= isset($anime_data) && $anime_data["status"] == "Upcoming" ? 'selected' : '' ?>>Upcoming</option>
            </select>

            <div class="input-group">
                <div>
                    <label for="season">Season</label>
                    <select required class="form-input" name="season" id="season">
                        <option hidden value="">Pilih Season</option>
                        <option value="Winter" <?= isset($anime_data) && $anime_data["season"] == "Winter" ? 'selected' : '' ?>>Winter</option>
                        <option value="Spring" <?= isset($anime_data) && $anime_data["season"] == "Spring" ? 'selected' : '' ?>>Spring</option>
                        <option value="Summer" <?= isset($anime_data) && $anime_data["season"] == "Summer" ? 'selected' : '' ?>>Summer</option>
                        <option value="Fall" <?= isset($anime_data) && $anime_data["season"] == "Fall" ? 'selected' : '' ?>>Fall</option>
                    </select>
                </div>

                <div>
                    <label for="year">Tahun</label>
                    <input required class="form-input" name="year" id="year" type="number" min="1900" max="2099" step="1" value="<?= isset($anime_data) ? $anime_data["year"] : '' ?>" />
                </div>
            </div>

            <label for="studio">Studio</label>
            <input required class="form-input" type="text" name="studio" id="studio" value="<?= isset($anime_data) ? $anime_data["studio"] : '' ?>">

            <label for="poster">Poster</label>
            <input class="form-input" type="file" accept="image/*" name="poster" id="poster" onchange="previewPoster(this)">
            <div style="visibility: hidden;" class="preview-wrapper">
                <img id="poster-preview" class="preview" src="<?= isset($anime_data) ? 'assets/poster/' . $anime_data["poster"] : '' ?>">
            </div>

            <div class="form-submit">
                <input name="update" class="btn" type="submit" value="Update">
            </div>
        </form>
    </main>

</body>

</html>