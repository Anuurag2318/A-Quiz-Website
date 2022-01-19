<?php
session_start();
$con=mysqli_connect('localhost','root');
mysqli_select_db($con,'quizdatabase');
$selectquery = "select * from studentsscored where name='$_SESSION[username]' AND quiz_attempted='Css'";
$query = mysqli_query($con, $selectquery);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/resultpage.css"></a>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
    <title>|Score Card|</title>
</head>
<body>
<div class="main_div">
        <div class="inner-div">
        <h1 class="question">Score Card</h1>
        <h3>Bravo! <span class="showname_quiz"><?php echo $_SESSION['username'];?></span>, You have completed the <span class="showname_quiz">CSS</span> quiz successfully with a score of</h3>
        <div id="ShowScore" class="ScoreArea">
        <?php 
        $scorecss=$_SESSION['scorecss'];
        $_SESSION['scorecss'] = 0;
        echo $scorecss;
        $scorecss=0;
        // while ($res = mysqli_fetch_array($query)) {
        //     echo $res['answercorrect']; 
        // }?>/10
        <br>
        <a href="mainpage.php" id="Exit">DASHBOARD</a>
        </div>
        <h1>Correct Answers</h1>
        <div class="showquestion">
        <?php
        for($i=1;$i<=10;$i++){
        $q="SELECT * FROM cssquestions where qid=$i";
        $query=mysqli_query($con,$q);
        $ans_options="SELECT * FROM cssanswers WHERE ans_options=$i AND is_correct=1";
        $ans_correct=mysqli_query($con,$ans_options);   
        $ans_correct_rows=mysqli_fetch_array($ans_correct);    
        while($rows=mysqli_fetch_array($query)){
        ?>
        <div class="questionshow"><?php echo $rows['question'];?></div>
        <br>
        <br>
        <div class="answershow">Answer: <?php echo $ans_correct_rows['answer'];?></div>
        <br>
        <br>
        <?php
        }
        }
        ?>
        </div>
        </div>
    </div>
</body>
</html>