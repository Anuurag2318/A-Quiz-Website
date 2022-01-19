<div class="grid">
            <?php
            session_start();
            $con = mysqli_connect('localhost', 'root');
            mysqli_select_db($con, 'quizdatabase');
            $selectquery = "select * from studentsscored where name='$_SESSION[username]'";
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
<?php

        // $query1 = "SELECT * FROM studentsscored WHERE quiz_attempted='Python'";
        // $result = mysqli_query($conquiz, $query1);
        // $quizname_count = mysqli_num_rows($result);
        // if ($quizname_count) {
        //     $finalresult = "update studentsscored SET `answercorrect`='$_SESSION[scorepyth]',`date`='$date',`time`='$time' WHERE quiz_attempted='Python'";
        //     $queryresult = mysqli_query($con, $finalresult);
        //     $_SESSION['scorepyth'] = 0;
        //     header("location:resultpagepyth.php");
        // } 
        // else 
        // {
            // $finalresult = "insert into studentsscored(name,quiz_attempted,answercorrect,date,time) values ('$_SESSION[username]','$quizname','$_SESSION[scorepyth]','$date','$time')";
            // $queryresult = mysqli_query($con, $finalresult);
            // $_SESSION['scorepyth'] = 0;
            // header("location:resultpagepyth.php");
        // }
// }
    //  else {
        // header("location:mainpyth.php?n=" . $next);
    // }
// }

?>