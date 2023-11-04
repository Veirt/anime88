<?php
require("connection.php");
require("utils.php");

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


	if (getimagesize($temp) === false) {
		echo "<script>alert('File yang Anda upload bukan gambar.');</script>";
		redirect("create.php");
		exit;
	}

	$TEN_MB_SIZE = 10000000;
	if ($_FILES["poster"]["size"] > $TEN_MB_SIZE) {
		echo "<script>alert('Size image terlalu besar!');</script>";
		redirect("create.php");
		exit;
	}

	if (!move_uploaded_file($temp, "assets/poster/$target_file_name")) {
		echo "<script>alert('Gagal upload gambar!');</script>";
		redirect("create.php");
		exit;
	}

	$query = "INSERT INTO anime (name, synopsis, episodes, status, season, year, studio, poster) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	$stmt = $connection->prepare($query);
	$stmt->bind_param("ssisssss", $name, $synopsis, $episodes, $status, $season, $year, $studio, $target_file_name);

	if (!$stmt->execute()) {
		$stmt->close();
		echo "<script>alert('Gagal menambahkan anime!');</script>";
		redirect("create.php");
	}

	$stmt->close();

	$id_anime = $connection->insert_id;
	$genres = $_POST["genre"];

	foreach ($genres as $genre) {
		$query = "INSERT INTO anime_genre (id_anime, id_genre) VALUES (?, ?)";
		$stmt = $connection->prepare($query);
		$stmt->bind_param("ii", $id_anime, $genre);
		$stmt->execute();
		$stmt->close();
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
	<?php require("includes/navbar.php") ?>

	<main>
		<form class="form" action="" method="post" enctype="multipart/form-data">
			<label for="anime-name">Nama Anime</label>
			<input required class="form-input" type="text" name="anime-name" id="anime-name">

			<label for="synopsis">Sinopsis</label>
			<textarea requried class="form-input" type="text" name="synopsis" id="synopsis"> </textarea>

			<label for="episodes">Jumlah Episode</label>
			<input required class="form-input" type="number" name="episodes" id="episodes">

			<div class="checkbox-group">
				<?php
				$query = "SELECT * FROM genre";
				$result = $connection->query($query);
				while ($row = $result->fetch_assoc()) {
					$genre = $row["name"];
					$id = $row["id"];
				?>
					<input class='form-checkbox' type='checkbox' name='genre[]' value='<?= $id ?>' id="<?= $id ?>">
					<label for='<?= $id ?>'><?= $genre ?></label>
				<?php } ?>

			</div>

			<label for="status">Status</label>
			<select class="form-input" name="status" id="status">
				<option hidden selected value="">Pilih Status</option>
				<option value="Airing">Airing</option>
				<option value="Finished">Finished</option>
				<option value="Upcoming">Upcoming</option>
			</select>

			<div class="input-group">
				<div>
					<label for="season">Season</label>
					<select class="form-input" name="season" id="season">
						<option hidden selected value="">Pilih Season</option>
						<option value="Winter">Winter</option>
						<option value="Spring">Spring</option>
						<option value="Summer">Summer</option>
						<option value="Fall">Fall</option>
					</select>
				</div>

				<div>
					<label for="year">Tahun</label>
					<input class="form-input" name="year" id="year" type="number" min="1900" max="2099" step="1" />
				</div>

			</div>


			<label for="studio">Studio</label>
			<input class="form-input" type="text" name="studio" id="studio">

			<label for="poster">Poster</label>
			<input class="form-input" type="file" name="poster" id="poster">

			<div class="form-submit">
				<input name="create" class="btn" type="submit" value="Create">
			</div>

		</form>
	</main>

</body>

</html>
