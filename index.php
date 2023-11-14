<?php require("session_start.php") ?>
<?php require("utils.php") ?>
<!DOCTYPE html>
<html lang="en">

<?php $title = "Anime88 - Landing Page" ?>
<?php include("includes/head.php") ?>

<body>
	<?php include("includes/navbar.php") ?>

	<main>
		<form class="search-filter" action="anime.php">
			<input type="text" placeholder="Search..." name="name" class="search-bar form-input">
			<button class="search-button" type="submit">
				<svg class="icon" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="24" height="24" viewBox="0 0 50 50">
					<path d="M 21 3 C 11.621094 3 4 10.621094 4 20 C 4 29.378906 11.621094 37 21 37 C 24.710938 37 28.140625 35.804688 30.9375 33.78125 L 44.09375 46.90625 L 46.90625 44.09375 L 33.90625 31.0625 C 36.460938 28.085938 38 24.222656 38 20 C 38 10.621094 30.378906 3 21 3 Z M 21 5 C 29.296875 5 36 11.703125 36 20 C 36 28.296875 29.296875 35 21 35 C 12.703125 35 6 28.296875 6 20 C 6 11.703125 12.703125 5 21 5 Z"></path>
				</svg>
			</button>
		</form>

		<section class="genre">
			<div class="genre-item">
				<img src="assets/highlights/action.avif" alt="">
				<h2>Action</h2>
			</div>

			<div class="genre-item">
				<img src="assets/highlights/comedy.avif" alt="">
				<h2>Comedy</h2>
			</div>

			<div class="genre-item">
				<img src="assets/highlights/romance.avif" alt="">
				<h2>Romance</h2>
			</div>

			<div class="genre-item">
				<img src="assets/highlights/fantasy.avif" alt="">
				<h2>Fantasy</h2>
			</div>

			<div class="genre-item">
				<img src="assets/highlights/horror.avif" alt="">
				<h2>Horror</h2>
			</div>

			<div class="genre-item">
				<img src="assets/highlights/sports.avif" alt="">
				<h2>Sports</h2>
			</div>
		</section>

		<h1 class="section-title">Quote</h1>

		<section class="quote">
			<div class="quote-content">
			</div>
			<div class="quote-author">
			</div>
		</section>

		<!-- TODO: view all akan mengarah ke anime.php sesuai dengan section-->
		<section class="anime-section">
			<div class="anime-header">
				<h1>Top Anime</h1>
				<a href="anime.php?key=avg_rating&order=desc">View All</a>
			</div>

			<div class="anime-list">
				<?php
				require("connection.php");
				$query = "SELECT *, AVG(rating) AS avg FROM anime JOIN reviews ON anime.id = reviews.id_anime GROUP BY anime.id ORDER BY avg DESC LIMIT 4";
				$result = mysqli_execute_query($connection, $query);

				while ($row = mysqli_fetch_assoc($result)) { ?>
					<?php $url = "view.php?id=" . $row['id']; ?>
					<div class="anime">
						<a href="<?= $url ?>">
							<img class="anime-poster" src="assets/poster/<?= $row['poster'] ?>" alt="">
						</a>
						<a href="<?= $url ?>">
							<h2 class="anime-title"><?= $row['name'] ?></h2>
						</a>
					</div>
				<?php } ?>
			</div>
		</section>

		<?php
		require("connection.php");
		$current_season = get_current_season();
		$query = "SELECT * FROM anime WHERE season = ? AND year = DATE_FORMAT(NOW(), '%Y') LIMIT 4";
		$result = mysqli_execute_query($connection, $query, [$current_season]);
		?>

		<!-- Disini dicek dulu, kalo ada seasonal anime, tunjukkan sekalian satu section (termasuk title-nya) -->
		<!-- Jadi kalo misal ga ada seasonal anime, ga bakal ditunjukkan Seasonal Anime, tapi kosong isinya. -->
		<?php if (mysqli_num_rows($result) > 0) { ?>
			<section class="anime-section">
				<div class="anime-header">
					<h1>Seasonal Anime</h1>
					<a href="anime.php?season=<?= get_current_season() ?>&year=<?= date('Y') ?>">View All</a>
				</div>
				<div class="anime-list">
					<?php

					while ($row = mysqli_fetch_assoc($result)) { ?>
						<?php $url = "view.php?id=" . $row['id']; ?>
						<div class="anime">
							<a href="<?= $url ?>">
								<img class="anime-poster" src="assets/poster/<?= $row['poster'] ?>" alt="">
							</a>
							<a href="<?= $url ?>">
								<h2 class="anime-title"><?= $row['name'] ?></h2>
							</a>
						</div>
					<?php } ?>
				</div>
			</section>
		<?php } ?>
	</main>
</body>

</html>
