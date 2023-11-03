<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Anime88 - Create</title>
	<link rel="stylesheet" href="assets/style.css">
</head>
<body>
	<?php require("includes/navbar.php") ?>

	<main>
		<form class="form" action="" method="post">
			<label for="anime-name">Nama Anime</label>
			<input required class="form-input" type="text" name="anime-name" id="anime-name">

			<label for="synopsis">Sinopsis</label>
			<textarea requried class="form-input" type="text" name="synopsis" id="synopsis"> </textarea>

			<label for="episode">Jumlah Episode</label>
			<input required class="form-input" type="number" name="episode" id="episode">

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
					<select class="form-input" name="status" id="status">
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
				<input class="btn" type="submit" value="Create">
			</div>
			
		</form>
	</main>
</body>
</html>