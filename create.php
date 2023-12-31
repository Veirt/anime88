<?php require("utils.php") ?>
<?php user_authorization("admin") ?>

<?php
require("connection.php");

if (isset($_POST["create"])) {
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

	if (!check_valid_anime_name($name)) {
		create_message("Nama anime sudah ada.", "error");
		redirect("create.php");
		exit;
	}

	if ($status === "Upcoming") {
		$currentYear = date("Y");
		$currentMonth = date("m");
		$last_month_of_season = $GLOBALS["season_month"][$season][2];

		// validasi tahun duluan.
		if ($year < $currentYear) {
			create_message("Tahun untuk anime Upcoming harus di masa depan.", "error");
			redirect("update.php?id=$edit_id");
			exit;
		}

		// validasi tahun dan bulan ketika tahunnya sama
		if ($last_month_of_season <= $currentMonth && $year <= $currentYear) {
			create_message("Tahun untuk anime Upcoming harus di masa depan.", "error");
			redirect("update.php?id=$edit_id");
			exit;
		}
	}


	if ($status === "Finished") {
		$currentYear = date("Y");
		$currentMonth = date("m");
		$first_month_of_season = $GLOBALS["season_month"][$season][0];

		// validasi tahun duluan.
		if ($year > $currentYear) {
			create_message("Tahun untuk anime Finished harus di masa lalu.", "error");
			redirect("update.php?id=$edit_id");
			exit;
		}

		if ($year == $currentYear && $first_month_of_season > $currentMonth) {
			create_message("Tahun untuk anime Finished harus di masa lalu.", "error");
			redirect("update.php?id=$edit_id");
			exit;
		}
	}


	if (!isset($_POST["genre"])) {
		create_message("Silakan pilih genre minimal satu.", "error");
		redirect("create.php");
		exit;
	}


	if (getimagesize($temp) === false) {
		create_message("File yang Anda upload bukan gambar.", "error");
		redirect("create.php");
		exit;
	}

	$TEN_MB_SIZE = 10000000;
	if ($_FILES["poster"]["size"] > $TEN_MB_SIZE) {
		create_message("Size image terlalu besar!", "error");
		redirect("create.php");
		exit;
	}

	if (!move_uploaded_file($temp, "assets/poster/$target_file_name")) {
		create_message("Gagal mengupload gambar.", "error");
		redirect("create.php");
		exit;
	}


	$query = "INSERT INTO anime (name, synopsis, episodes, status, season, year, studio, poster) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	$result = mysqli_execute_query($connection, $query, [$name, $synopsis, $episodes, $status, $season, $year, $studio, $target_file_name]);

	if ($result === false) {
		create_message("Gagal menambahkan anime.", "error");
		redirect("create.php");
		exit;
	}


	$id_anime = $connection->insert_id;
	$genres = $_POST["genre"];

	foreach ($genres as $genre) {
		$query = "INSERT INTO anime_genre (id_anime, id_genre) VALUES (?, ?)";
		mysqli_execute_query($connection, $query, [$id_anime, $genre]);
	}

	echo "<script>alert('Berhasil menambahkan anime!');</script>";
	redirect("dashboard.php");
}

?>

<!DOCTYPE html>
<html lang="en">

<?php $title = "Anime88 - Create" ?>
<?php include("includes/head.php") ?>

<body>
	<?php $sidebar_active = "create" ?>
	<?php include("includes/sidebar.php") ?>

	<main class="dashboard dashboard-form">
		<div style="width: 100%;">
			<?php include("includes/navbar.php") ?>
		</div>

		<form class="form" action="" method="post" enctype="multipart/form-data">
			<?php show_message() ?>

			<label for="anime-name">Nama Anime</label>
			<input required class="form-input" type="text" name="anime-name" id="anime-name">

			<label for="synopsis">Sinopsis</label>
			<textarea required class="form-input" type="text" name="synopsis" id="synopsis"></textarea>

			<label for="episodes">Jumlah Episode</label>
			<input required class="form-input" type="number" name="episodes" id="episodes">

			<label>Genre</label>
			<div class="checkbox-group">
				<?php
				$query = "SELECT * FROM genre ORDER BY name ASC";
				$result = mysqli_execute_query($connection, $query);
				while ($row = $result->fetch_assoc()) {
					$genre = $row["name"];
					$id = $row["id"];
				?>
					<input class='form-checkbox-chips' type='checkbox' name='genre[]' value='<?= $id ?>' id="<?= $id ?>">
					<label for='<?= $id ?>'><?= $genre ?></label>

				<?php } ?>

			</div>

			<label for="status">Status</label>
			<select required class="form-input" name="status" id="status">
				<option hidden selected value="">Pilih Status</option>
				<option value="Airing">Airing</option>
				<option value="Finished">Finished</option>
				<option value="Upcoming">Upcoming</option>
			</select>

			<div class="input-group">
				<div>
					<label for="season">Season</label>
					<select required class="form-input" name="season" id="season">
						<option hidden selected value="">Pilih Season</option>
						<option value="Winter">Winter</option>
						<option value="Spring">Spring</option>
						<option value="Summer">Summer</option>
						<option value="Fall">Fall</option>
					</select>
				</div>
				<div>
					<label for="year">Tahun</label>
					<input required class="form-input" name="year" id="year" type="number" min="1917" max="2099" step="1" />
				</div>

			</div>


			<label for="studio">Studio</label>
			<input required class="form-input" type="text" name="studio" id="studio">

			<label for="poster">Poster</label>
			<input required class="form-input" type="file" accept="image/*" name="poster" id="poster" onchange="previewPoster(this)">
			<div style="visibility: hidden;" class="preview-wrapper">
				<img id="poster-preview" class="preview" src="">
			</div>

			<div class="form-submit">
				<input name="create" class="btn" type="submit" value="Create">
			</div>

		</form>

	</main>

	<script src="assets/js/validateSeasonYear.js"></script>
</body>

</html>
