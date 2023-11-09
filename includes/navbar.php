<?php

// kalo sedang login: true
// kalo ga: false
function check_login_status()
{
	if (isset($_SESSION["user"])) {
		return true;
	}

	return false;
}
?>

<nav>
	<div class="logo-section">
		<a href="index.php">
			<img class="logo" src="assets/logo.png" alt="Logo">

		</a>
		<a class="website-name" href="index.php">
			<h1>Anime88</h1>
		</a>
	</div>

	<div class="right-section">

		<?php if (!check_login_status()) : ?>
			<a href="login.php">
				<button class="btn">Login</button>
			</a>
			<a href="register.php">
				<button class="btn btn-accent">Register</button>
			</a>
		<?php else : ?>
			<div class="user-info">
				<img class="user-icon" src="assets/icons/user.svg" alt="">

				<button class="user-action-button">
					<p class="user-username">
						<?= $_SESSION["user"]["username"] ?>
					</p>
					<svg class="more" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
						<path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z" />
					</svg>

				</button>

			</div>
			<!-- <a href="logout.php"> -->
			<!-- 	<button class="btn btn-accent">Log out</button> -->
			<!-- </a> -->
		<?php endif ?>
		<ul class="user-action-dropdown">
			<li>
				<a href="#">Profile</a>
			</li>
			<li>
				<a href="logout.php">Log out</a>
			</li>
		</ul>

	</div>
</nav>

<img id="change-theme" src="assets/icons/light.svg">
