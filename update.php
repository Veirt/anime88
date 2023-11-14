<?php
require("utils.php");
user_authorization("admin");
require("connection.php");

if (!isset($_GET["id"])) {
    create_message("Cara pengaksesan update salah!", "error");
}

if (isset($_GET["id"])) {
    $edit_id = $_GET["id"];
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

        if (!check_valid_anime_name($name) && $name != $anime_data["name"]) {
            create_message("Nama anime sudah ada.", "error");
            redirect("update.php?id=$edit_id");
            exit;
        }

        if (!isset($_POST["genre"])) {
            create_message("Silakan pilih genre minimal satu.", "error");
            redirect("update.php?id=$edit_id");
            exit;
        }

        // Handle ketika admin upload poster baru
        if ($original_file_name != "") {

            // Validasi image
            if (getimagesize($temp) === false) {
                create_message("File yang Anda upload bukan gambar.", "error");
                redirect("update.php?id=$edit_id");
                exit;
            }

            $TEN_MB_SIZE = 10000000;
            if ($_FILES["poster"]["size"] > $TEN_MB_SIZE) {
                create_message("Size image terlalu besar!", "error");
                redirect("update.php?id=$edit_id");
                exit;
            }

            // Hapus image lama jika ada
            if ($anime_data["poster"] != "" && file_exists("assets/poster/" . $anime_data["poster"])) {
                unlink("assets/poster/" . $anime_data["poster"]);
            }




            // Move the new image to the target directory
            if (!move_uploaded_file($temp, "assets/poster/$target_file_name")) {
                create_message("Gagal mengupload gambar.", "error");
                redirect("update.php?id=$edit_id");
                exit;
            }
        } else {
            // Jika admin tidak mengupload poster baru, maka gunakan poster lama
            $target_file_name = $anime_data["poster"];
        }


        $query = "UPDATE anime SET name=?, synopsis=?, episodes=?, status=?, season=?, year=?, studio=?, poster=? WHERE id=?";
        $result = mysqli_execute_query($connection, $query, [$name, $synopsis, $episodes, $status, $season, $year, $studio, $target_file_name, $edit_id]);

        // update genre juga
        $query = "DELETE FROM anime_genre WHERE id_anime = ?";
        $result = mysqli_execute_query($connection, $query, [$edit_id]);

        $query = "INSERT INTO anime_genre (id_anime, id_genre) VALUES (?, ?)";
        foreach ($_POST["genre"] as $genre_id) {
            $result = mysqli_execute_query($connection, $query, [$edit_id, $genre_id]);
        }


        if ($result !== false) {
            echo "<script>alert('Berhasil memperbarui anime!');</script>";
            redirect("view.php?id=$edit_id");
        } else {
            create_message("Gagal memperbarui anime", "error");
            redirect("update.php?id=$edit_id");
        }

        exit();
    }
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
            <?php
            if (isset($_SESSION["message"])) {
                $message_type = $_SESSION["message"]["type"];
                echo " <div class='message $message_type'>";
                echo $_SESSION["message"]["content"];
                echo "</div>";

                // hapus message dari session. biar ga muncul terus.
                unset($_SESSION["message"]);
            };
            ?>

            <?php if (isset($anime_data)) { ?>
                <input type="hidden" name="anime_id" value="<?= $anime_data["id"] ?>">
            <?php } ?>

            <label for="anime-name">Nama Anime</label>
            <input required class="form-input" type="text" name="anime-name" id="anime-name" value="<?= isset($anime_data) ? $anime_data["name"] : '' ?>">

            <label for="synopsis">Sinopsis</label>
            <textarea required class="form-input" type="text" rows="15" name="synopsis" id="synopsis"><?= isset($anime_data) ? $anime_data["synopsis"] : '' ?></textarea>

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
                    <input required class="form-input" name="year" id="year" type="number" min="1917" max="2099" step="1" value="<?= isset($anime_data) ? $anime_data["year"] : '' ?>" />
                </div>
            </div>

            <label for="studio">Studio</label>
            <input required class="form-input" type="text" name="studio" id="studio" value="<?= isset($anime_data) ? $anime_data["studio"] : '' ?>">

            <label for="poster">Poster</label>
            <input class="form-input" type="file" accept="image/*" name="poster" id="poster" onchange="previewPoster(this)">
            <div class="preview-wrapper">
                <img id="poster-preview" class="preview" src="<?= isset($anime_data) ? 'assets/poster/' . $anime_data["poster"] : '' ?>">
            </div>

            <div class="form-submit">
                <input name="update" class="btn" type="submit" value="Update">
            </div>
        </form>
    </main>

</body>

</html>
