<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/styleloginregister.css"></a>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
	<title>Login||Quiz~Vault</title>
</head>

<body>
<?php
include 'mainconnection.php';
if (isset($_POST['sumbit'])) {
	$email = $_POST['email'];
	$password = $_POST['password'];
	$email_search = "select * from studentsregistrations where email='$email'";
	$query = mysqli_query($conquiz, $email_search);
	$email_count = mysqli_num_rows($query);
	if ($email_count) {
		$email_pass = mysqli_fetch_assoc($query);
		$db_pass = $email_pass['password'];
		$_SESSION['username'] = $email_pass['name'];
		if ($password == $db_pass ) {
			header('location:mainpage.php');
		} 
		else {
			?>
			<script>
				alert("Invalid Crendentials");
			</script>
			<?php
		}
	} else {
		?>
		<script>
			alert("Invalid Email");
		</script>
<?php
	}
}
?>
	<div class="wrapper">
		<div class="title-text">
			<div class="title-login">Login</div>
		</div>
		<div class="form-container">
			<div class="form-inner">
				<form action="login.php" method="POST"  class="login">
					<div class="field">
						<input id="email" type="email" placeholder="Email Address" name="email" required>
					</div>
					<div class="field">
						<input id="password" type="password" name="password" placeholder="Password" required>
					</div>
					<div class="field">
						<input type="submit" name="sumbit" placeholder="Login" value="Login">
					</div>
					<div class="signup-link">Not a Member? <a href="register.php">Signup Now</a></div>
				</form>
			</div>
		</div>
	</div>
</body>

</html>