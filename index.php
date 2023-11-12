<?php require("session_start.php") ?>
<?php require("utils.php") ?>
<!DOCTYPE html>
<html lang="en">

<?php $title = "Anime88 - Landing Page" ?>
<?php include("includes/head.php") ?>

<body>
	<?php include("includes/navbar.php") ?>

	<main>
		<section class="search-section">
			<div class="search-bar">
				<form action="">
					<input type="text" placeholder="Search..." name="search">
					<button type="submit">
						<svg xmlns="http://www.w3.org/2000/svg" width="32px" height="32px" viewBox="0 0 24 24">
							<path d="M20.031,20.79c0.46,0.46,1.17-0.25,0.71-0.7l-3.75-3.76c1.27-1.41,2.04-3.27,2.04-5.31
                    c0-4.39-3.57-7.96-7.96-7.96s-7.96,3.57-7.96,7.96c0,4.39,3.57,7.96,7.96,7.96c1.98,0,3.81-0.73,5.21-1.94L20.031,20.79z
                    M4.11,11.02c0-3.84,3.13-6.96,6.96-6.96c3.84,0,6.96,3.12,6.96,6.96c0,3.84-3.12,6.96-6.96,6.96C7.24,17.98,4.11,14.86,4.11,11.02
                    z" />
						</svg>
					</button>

				</form>
			</div>
		</section>
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


		<section class="anime-section">
			<div class="anime-header">
				<h1>Top Anime</h1>
				<a href="#">View All</a>
			</div>

			<div class="anime-list">
				<?php
				require("connection.php");
				$query = "SELECT *, AVG(rating) AS avg FROM anime JOIN reviews ON anime.id = reviews.id_anime ORDER BY avg DESC LIMIT 4";
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
					<a href="#">View All</a>
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
