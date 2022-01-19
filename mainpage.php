<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("location:Homepage.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/navigation.css"></a>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/31f62b2c33.js" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/stylemain.css">
    <title>|Dashboard|</title>
</head>

<body>
    <section class="header">
        <nav>
            <img class="image" src="img\QuizVaultLogo.jpeg" width="260" height="110">
            <div class="navlinks">
                <ul>
                    <li><a href="activity.php" class="btn"><i class="fa fa-clock-o"></i>Activity</a></li>
                    <li><a href="Homepage.php" class="btn"><i class="fa fa-sign-out"></i>Logout</a></li>
                </ul>
            </div>
        </nav>
    </section>
    <section>
        <br>
        <br>
        <div class="myname">
            <h1>Welcome, <?php echo $_SESSION['username']; ?></h1>
        </div>
        <div class="grid">
            <div class="grid1">
                <div class="Pythonimg">
                </div>
                <h1 class="python">Python</h1>
                <a href="startPythquiz.php"><input type="submit" value="Play" name="sumbit" class="python"></a>
            </div>
            <div class="grid2">
                <div class="C-Programmingimg">
                </div>
                <h1 class="cprog">C-Programming</h1>
                <a href="startCquiz.php"><input type="submit" value="Play" name="sumbit" class="cprog"></a>
            </div>
            <div class="grid3">
                <div class="JavaScriptimg">
                </div>
                <h1 class="JS">JavaScript</h1>
                <a href="startJavaScriptquiz.php"><input type="submit" value="Play" name="sumbit" class="JS"></a>
            </div>
            <div class="grid4">
                <div class="Javaimg">
                </div>
                <h1 class="javascpt">Java</h1>
                <a href="startJavaquiz.php"><input type="submit" value="Play" name="sumbit" class="javascpt"></a>
            </div>
            <div class="grid5">
                <div class="Cppimg">
                </div>
                <h1 class="Cpp">Cpp</h1>
                <a href="startCpp.php"><input type="submit" value="Play" name="sumbit" class="Cpp"></a>
            </div>
            <div class="grid6">
                <div class="Htmlimg">
                </div>
                <h1 class="Html">HTML</h1>
                <a href="startHtml.php"><input type="submit" value="Play" name="sumbit" class="Html"></a>
            </div>

            <div class="grid7">
                <div class="Cssimg">
                </div>
                <h1 class="Css">CSS</h1>
                <a href="startCss.php"><input type="submit" value="Play" name="sumbit" class="Css"></a>
            </div>
            <div class="grid8">
                <div class="Phpimg">
                </div>
                <h1 class="Php">PHP</h1>
                <a href="startPhp.php"><input type="submit" value="Play" name="sumbit" class="Php"></a>
            </div>
            <div class="grid9">
                <div class="Dbmsimg">
                </div>
                <h1 class="Dbms">DBMS</h1>
                <a href="startDbms.php"><input type="submit" value="Play" name="sumbit" class="Dbms"></a>
            </div>

        </div>
        </div>
    </section>
    <footer>
        <section class="footer">
            <h4>About Us</h4>
            <p>Hello! Thank you for visiting our website. We hope you liked it :)
            </p>
        </section>
    </footer>
</body>

</html>
