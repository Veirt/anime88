<?php
@session_start();

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

	<div>
		<button id="toggle-dark">toggle</button>

		<?php if (!check_login_status()) : ?>
			<a href="login.php">
				<button class="btn">Login</button>
			</a>
			<a href="register.php">
				<button class="btn btn-accent">Register</button>
			</a>
		<?php else : ?>
			<a href="logout.php">
				<button class="btn btn-accent">Log out</button>
			</a>
		<?php endif ?>

	</div>
</nav>