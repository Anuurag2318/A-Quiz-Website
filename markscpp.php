<?php
include 'mainconnection.php';
$con=mysqli_connect('localhost','root');
mysqli_select_db($con,'quizdatabase');
session_start();
?>

<?php

if (!isset($_SESSION['scorecpp'])) {
    $_SESSION['scorecpp'] = 0;
}
if ($_POST) {
    $query = "SELECT * FROM cppquestions";
    $total_questions = mysqli_num_rows(mysqli_query($conquiz, $query));
    $number = $_POST['number'];
    $quizname = $_POST['quiz_attempted'];
    $selected_choice = $_POST['choice'];
    $next = $number + 1;
    $query="SELECT * FROM cppanswers WHERE ans_options=$number AND is_correct=1";
    $result=mysqli_query($conquiz,$query);
    $rows=mysqli_fetch_assoc($result);
    $correct_choice=$rows['ans_id'];
    date_default_timezone_set('Asia/Kolkata');
    $date=date('d/m/Y');
    $time=date('h:i:s A');
    if($selected_choice==$correct_choice){
        $_SESSION['scorecpp']++;
    }
    if ($number == $total_questions) {
                $finalresult = "insert into studentsscored(name,quiz_attempted,answercorrect,date,time) values ('$_SESSION[username]','$quizname','$_SESSION[scorecpp]','$date','$time')";
                $queryresult = mysqli_query($con, $finalresult);
                header("location:resultpagecpp.php");
            }
        else {
            header("location:maincpp.php?n=" . $next);
        }
        
}
?>