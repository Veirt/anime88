<?php require("session_start.php") ?>
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
					<button type="submit"><i class="fa fa-search"></i></button>
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
				<div class="anime">
					<a href="#">
						<img class="anime-poster" src="https://m.media-amazon.com/images/M/MV5BMmI5NmFlZjItOTBhOC00NGI0LWIyNDAtODJhOTJjZDEyMTYyXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg" alt="">
					</a>
					<a href="#">
						<h2 class="anime-title">Fullmetal Alchemist: Brotherhood</h2>
					</a>
				</div>
			</div>
		</section>

		<section class="anime-section">
			<div class="anime-header">
				<h1>Seasonal Anime</h1>
				<a href="#">View All</a>
			</div>
			<div class="anime-list">

				<div class="anime">
					<a href="#">
						<img class="anime-poster" src="https://m.media-amazon.com/images/M/MV5BOGRlOGI3MjMtNTc2NS00ZWJmLThhYjAtYTkyZTUwYTMwZjk3XkEyXkFqcGdeQXVyMzgxODM4NjM@._V1_FMjpg_UX1000_.jpg" alt="">
					</a>
					<a href="#">
						<h2 class="anime-title">16 Bit Sensation</h2>
					</a>
				</div>

			</div>
		</section>

	</main>
</body>

</html>
