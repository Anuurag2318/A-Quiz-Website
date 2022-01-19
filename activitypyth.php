<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/31f62b2c33.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/stylemain.css">
    <link rel="stylesheet" href="css/navigation.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <title>|Activity|</title>
</head>

<body>
    <section class="header">
        <nav>
            <img class="image" src="img\QuizVaultLogo.jpeg" width="260" height="110">
            <div class="navlinks">
                <ul>
                    <li><a href="mainpage.php" class="btn"><i class="fa fa-home"></i>Home</a></li>
                    <li><a href="activity.php" class="btn"><i class="fa fa-clock-o"></i>Activity</a></li>
                    <li><a href="Homepage.php" class="btn"><i class="fa fa-sign-out"></i>Logout</a></li>
                </ul>
            </div>
        </nav>
    </section>
    <section>
    <?php
        session_start();
        $con = mysqli_connect('localhost', 'root');
        mysqli_select_db($con, 'quizdatabase');
        $query1 = "select * from studentsscored where name='$_SESSION[username]' and quiz_attempted='Python'";
        $result = mysqli_query($con, $query1);
        $quizname_count = mysqli_num_rows($result);
        if ($quizname_count) {
    ?>
        <div class="grid">
            <?php
            $selectquery = "select * from studentsscored where name='$_SESSION[username]' and quiz_attempted='Python'";
            $query = mysqli_query($con, $selectquery);
            while ($res = mysqli_fetch_array($query)) {
            ?>
                <div class="grid1">
                    <div class="<?php echo $res['quiz_attempted']; ?>img">
                    </div>
                    <h1><?php echo $res['quiz_attempted']; ?></h1>
                    <h3>Date:<?php echo $res['date'];?></h3>
                    <h3>Time:<?php echo $res['time'];?></h3>
                    <h3>Score:<?php echo $res['answercorrect']; ?></h3>
                </div>
            <?php } ?>
        </div>
        <?php }
    else
    {
        ?>
        <div class="notplayed">You haven't played any Python Quiz</div>
        <div class="notplayed">Click Here to Play a Quiz</div>
        <div class="notplayed"><a href="startPythquiz.php"><input type="submit" value="Play"></a></div>
        <?php
    }   
    ?>
</body>
</html>