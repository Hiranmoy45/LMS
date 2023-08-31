<?php
if(!isset($_SESSION)){
    session_start();
}


include_once('../dbconnection.php');

if(isset($_SESSION['is_login'])){
    $stuEmail = $_SESSION['stuLogEmail'];
} else {
    echo "<script> location.href='../login-user.php'; </script>";
}

if(isset($_GET['course_id'])){
    $course_id = $_GET['course_id'];  
       $sql = "SELECT * FROM freelesson WHERE course_id = '$course_id'";
       $result = $conn->query($sql);
     $row = $result->fetch_assoc();
    
 ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/video.css">
    <title>video</title>
</head>

<body>
    <h3 class="heading"><?php echo $row['course_name']; ?></h3>
    <div class="container">
        <div class="main-video-container">
            <video src="<?php echo $row['lesson_link']; ?>" loop controls autoplay
                class="main-video"></video>
            <h3 class="main-vid-title"><?php echo $row['lesson_name']; ?></h3>
        </div>


        <div class="video-list-container">
        <div class="list active">
                <video src="<?php echo $row['lesson_link']; ?>"
                    class="list-video" loop controls></video>
                <h3 class="list-title">
                    <?php echo $row['lesson_name']; ?>
                </h3>
            </div>

            <?php
                        
                            if($result->num_rows > 0){
                                while($row = $result->fetch_assoc()){
                                    ?>
            <div class="list">
                <video src="<?php echo $row['lesson_link']; ?>"
                    class="list-video" loop controls></video>
                <h3 class="list-title">
                    <?php echo $row['lesson_name']; ?>
                </h3>
            </div>


            <?php
        }
                            }else{
                                echo "<script> location.href='NoData'; </script>";
                            }
                       
                        }
                 ?>

        </div>
 </div>
  <script>

function check_session_id()
{
    var session_id = "<?php echo $_SESSION['user_session_id']; ?>";

    fetch('../check_login.php').then(function(response){

        return response.json();

    }).then(function(responseData){

        if(responseData.output == 'logout')
        {
            window.location.href = '../logout.php';
        }

    });
}

setInterval(function(){

    check_session_id();
    
}, 10000);

</script>
        <script>
            let videoList = document.querySelectorAll('.video-list-container .list');

            videoList.forEach(vid => {
                vid.onclick = () => {
                    videoList.forEach(remove => { remove.classList.remove('active') });
                    vid.classList.add('active');
                    let src = vid.querySelector('.list-video').src;
                    let title = vid.querySelector('.list-title').innerHTML;
                    document.querySelector('.main-video-container .main-video').src = src;
                    document.querySelector('.main-video-container .main-video').play();
                    document.querySelector('.main-video-container .main-vid-title').innerHTML = title;
                };
            });
        </script>
</body>

</html>