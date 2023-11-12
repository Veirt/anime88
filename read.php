<?php require("utils.php") ?>
<?php user_authorization("admin") ?>

<!DOCTYPE html>
<html lang="en">

<?php $title = "Anime88 - Create" ?>
<?php include("includes/head.php") ?>

<body>
	<?php $sidebar_active = "read" ?>
	<?php include("includes/sidebar.php") ?>

	<main class="dashboard">
		<div style="width: 100%;">
			<?php include("includes/navbar.php") ?>
		</div>

		<section class="anime-list">
			<?php
			require("connection.php");
			$query = "SELECT * FROM anime";
			$result = mysqli_execute_query($connection, $query);

			while ($row = mysqli_fetch_assoc($result)) { ?>
				<?php $url = "view.php?id=" . $row['id']; ?>

				<div class="anime anime-smaller">
					<a href="<?= $url ?>">
						<img class="anime-poster anime-poster-smaller" src="assets/poster/<?= $row['poster'] ?>" alt="">
					</a>
					<a href="<?= $url ?>">
						<h2 class="anime-title"><?= $row['name'] ?></h2>
					</a>
					<p class="anime-airing"><?= $row['season'] ?> <?= $row['year'] ?> · <?= $row['status'] ?></p>
					<div class="genre-info-wrapper">
						<?php foreach (get_genre($row['id']) as $genre) : ?>
							<div class="genre-chip genre-chip-smaller"><?= $genre ?></div>
						<?php endforeach ?>
					</div>
				</div>

			<?php } ?>
		</section>
	</main>

</body>

</html>
