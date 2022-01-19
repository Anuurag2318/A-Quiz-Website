<?php
include 'mainconnection.php';
session_start();
$query="SELECT * FROM cssquestions";
$total_questions=mysqli_num_rows(mysqli_query($conquiz,$query));
$number=$_GET['n'];
$ques_number="SELECT * FROM cssquestions WHERE qid=$number";
$result=mysqli_query($conquiz,$ques_number);
$question=mysqli_fetch_assoc($result);
$ans_options="SELECT * FROM cssanswers WHERE ans_options=$number";
$choices=mysqli_query($conquiz,$ans_options);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>|CSS|</title>
    <script src="https://kit.fontawesome.com/31f62b2c33.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/styleque.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="main-div">
        <div class="inner-div">
            <form action="markscss.php" method="post" id="form">
            <header>
                <div class="title">CSS</div>
            </header>
            <h2 class="question">
                    <?php echo $question['question']?>
                </h2>
                <ul>
            <?php while($rows=mysqli_fetch_assoc($choices))
            {?>
            
                    <li>
                    <input type="radio" name="choice" value="<?php echo $rows['ans_id']?>"id="ans1" class="answer">
                    <label for="ans1" id="option1"> <?php echo $rows['answer']?></label>
                    </li>
                </ul>
            <?php }?>
        <input type="hidden" name="quiz_attempted" value="Css">
        <input type="hidden" name="number" value="<?php echo $number;?>">
        <input type="submit" id="sumbit" value="SUMBIT" name="sumbit">
        </form>
        </div>
    </div>
</body>
</html>
