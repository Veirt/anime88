<?php require("session_start.php") ?>
<!DOCTYPE html>
<html lang="en">

<?php $title = "Anime88 - Login" ?>
<?php include("includes/head.php") ?>

<body>
	<?php include("includes/navbar.php") ?>

	<main>
		<form class="form auth" action="" method="post">
			<div class="section-title">Login</div>
			<?php if (isset($_SESSION["message"])) { ?>
				<div class="message <?= $_SESSION['message']['type'] ?>">
					<?= $_SESSION["message"]["content"]; ?>
					<?php unset($_SESSION["message"]) ?>
				</div>
			<?php } ?>
			<label for="username">Username</label>
			<input value="<?= isset($_SESSION['username']) ? $_SESSION['username'] : '' ?>" required placeholder="Enter your username" class="form-input" type="text" name="username" id="username">

			<label for="password">Password</label>
			<input required placeholder="Enter your password" class="form-input" type="password" name="password" id="password">

			<div class="input-group">
				<div style="display: flex; flex-direction: row; align-items: center;">
					<input type="checkbox" name="remember-username" class="form-checkbox">
					<p>Remember my username</p>
				</div>
			</div>
			<input class="btn" type="submit" name="login" value="Login">
		</form>
	</main>


</body>

</html>

<?php
require("connection.php");
require("utils.php");

if (isset($_POST["login"])) {
	$username = $_POST["username"];
	$password = $_POST["password"];
	$remember_username = isset($_POST["remember-username"]);

	$query = "SELECT * FROM users WHERE username = ?";
	$stmt = $connection->prepare($query);
	$stmt->bind_param("s", $username);

	$stmt->execute();
	$result = $stmt->get_result();
	$row = mysqli_fetch_assoc($result); // bakal return NULL kalo ga ada username yang sesuai
	$stmt->close();

	// jika username tidak ada/salah password
	if ($row == NULL || !password_verify($password, $row['password'])) {
		create_message("Username atau password salah!", "error");
		redirect("login.php");
		exit;
	}

	if ($remember_username) {
		$_SESSION["username"] = $username;
	} else {
		unset($_SESSION["username"]);
	}

	$_SESSION["user"] = [
		"id" => $row['id'],
		"username" => $row['username'],
		"role" => $row['role']
	];

	redirect("index.php");
	exit;
}

?>
