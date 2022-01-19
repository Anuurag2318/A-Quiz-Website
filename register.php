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
    <title>SignUp||Quiz~Vault</title>
</head>
<body>
    <div class="wrapper">
        <div class="title-text">
            <div class="title-login">Sign Up</div>
        </div>
        <div class="form-container">
            <div class="form-inner">
                <form action="thankuregi.php" method="POST" class="login">
                <div class="field">
                    <input id="name" type="text" name="name" placeholder="Full Name" required>
                </div>
                <div class="field">
                    <input type="email" id="email" name="email"placeholder="Email Address" required>
                </div>
                <div class="field">
                    <input id="password" type="password" placeholder="Password" name="password" required>
                </div>
                <div class="field">
                    <input type="submit" placeholder="Register" name="register" value="SignUp">
                </div>
                <div class="signup-link">Already a Member? <a href="login.php">Login</a></div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>