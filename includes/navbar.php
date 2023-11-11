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
				<svg class="user-icon" xmlns="http://www.w3.org/2000/svg" width="32px" height="32px" viewBox="0 0 24 24">
					<g>
						<path d="M17.438,21.937H6.562c-1.378,0-2.5-1.122-2.5-2.5v-0.827c0-3.969,3.561-7.198,7.938-7.198
                    s7.938,3.229,7.938,7.198v0.827C19.938,20.815,18.817,21.937,17.438,21.937z M12,12.412c-3.826,0-6.938,2.78-6.938,6.198v0.827
                    c0,0.827,0.673,1.5,1.5,1.5h10.877c0.827,0,1.5-0.673,1.5-1.5v-0.827C18.938,15.192,15.826,12.412,12,12.412z" />
						<path d="M12,9.911c-2.164,0-3.923-1.76-3.923-3.924S9.836,2.063,12,2.063s3.923,1.76,3.923,3.923
                    S14.164,9.911,12,9.911z M12,3.063c-1.612,0-2.923,1.312-2.923,2.923c0,1.612,1.312,2.924,2.923,2.924s2.923-1.312,2.923-2.924
                    C14.923,4.375,13.612,3.063,12,3.063z" />
					</g>
				</svg>


				<button class="user-action-button">
					<p class="user-username">
						<?= $_SESSION["user"]["username"] ?>
					</p>
					<svg class="more" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
						<path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z" />
					</svg>

				</button>

			</div>
		<?php endif ?>
		<ul class="user-action-dropdown">
			<?php if (check_role("admin")) { ?>
				<li>
					<a href="dashboard.php">Dashboard</a>
				</li>
			<?php } else { ?>
				<li>
					<a href="profile.php">Profile</a>
				</li>
			<?php } ?>
			<li>
				<a href="logout.php">Log out</a>
			</li>
		</ul>

	</div>
</nav>

<img id="change-theme" src="assets/icons/light.svg">
