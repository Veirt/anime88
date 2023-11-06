<?php
require("connection.php");
require("utils.php");

function check_valid_username(mysqli $connection, string $username)
{
	$query = "SELECT * FROM users WHERE username = ?";
	$stmt = $connection->prepare($query);
	$stmt->bind_param("s", $username);

	$stmt->execute();
	$result = $stmt->get_result();
	$stmt->close();

	return mysqli_num_rows($result) < 1;
}

if (isset($_POST["register"])) {
	$username = $_POST["username"];
	$password = $_POST["password"];

	if (!check_valid_username($connection, $username)) {
		echo "<script>alert('Username telah digunakan!')</script>";
		redirect("register.php");
		exit;
	}

	$hashed_password = password_hash($password, PASSWORD_DEFAULT);

	$query = "INSERT INTO users (username, password) VALUES (?, ?)";
	$stmt = $connection->prepare($query);
	$stmt->bind_param("ss", $username, $hashed_password);

	if ($stmt->execute()) {
		$stmt->close();
		echo "<script>alert('Register berhasil!')</script>";
		redirect("login.php");
	} else {
		$stmt->close();
		echo "<script>alert('Register gagal.')</script>";
		redirect("register.php");
	}
}

?>


<!DOCTYPE html>
<html lang="en">

<?php $title = "Anime88 - Register" ?>
<?php include("includes/head.php") ?>

<body>
	<?php include("includes/navbar.php") ?>

	<main>
		<form class="form auth" action="" method="post">
			<div class="section-title">Register</div>
			<label for="username">Username</label>
			<input required placeholder="Enter your username" class="form-input" type="text" name="username"
				id="username">

			<label for="password">Password</label>
			<input required placeholder="Enter your password" class="form-input" type="password" name="password"
				id="password">

			<input style="margin-top: 30px;" class="btn" type="submit" name="register" value="Register">
		</form>
	</main>


</body>

</html>