<?php

session_start();
$conquiz=mysqli_connect('localhost','root');
mysqli_select_db($conquiz,'quizdatabase');
?>
<?php
include 'mainconnection.php';
if(isset($_POST['register']))
{
$name=$_POST['name'];
$email=$_POST['email'];
$password=$_POST['password'];
// $bcrpytpass=password_hash($password,PASSWORD_BCRYPT);
$emailquery="select * from studentsregistrations where email='$email'";
$query=mysqli_query($conquiz,$emailquery);
$emailcount=mysqli_num_rows($query);
date_default_timezone_set('Asia/Kolkata');
$date=date('d/m/Y');
$time=date('h:i:s A');
if($emailcount>0)
{
	?>
	<script>
alert("Email already exists");
location.replace('register.php');
</script>
	<?php
}
else
{
	$insertquery="insert into studentsregistrations(name,email,password,date,time) values('$name','$email','$password','$date','$time')";
	$res=mysqli_query($conquiz,$insertquery);
	?>
	<script>
		alert("Registered Successfully!!");
	</script>
	<?php

}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" conquiztent="IE=edge">
    <meta name="viewport" conquiztent="width=device-width, initial-scale=1.0">
    <title>|Successfully Registered|</title>
    <link rel="stylesheet" href="css/thankuregi.css"></a>
</head>
<body>
    <div class="container">
    <div class="maindiv">
        <h1>Registered Successfully:)</h1>
        <!-- <br>
        <br>
        <br> -->
        <a class="btn" href="login.php">Login</a>
    </div>
    </div>
</body>
</html>