<?php
if(!isset($_SESSION)){
    session_start();
}

include('./admininclude/header.php');
include('../dbconnection.php');

if(isset($_SESSION['is_admin_login'])){
    $adminEmail = $_SESSION['adminLogEmail'];
} else {
    echo "<script> location.href='../index.php'; </script>";
}
if(isset($_GET['stu_id'])){
    $stuid=mysqli_real_escape_string($conn,$_GET['stu_id']);
    $sql = "SELECT * FROM student WHERE stu_id=$stuid";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $stu_email=$row['stu_email'];
    $stu_name=$row['stu_name'];
    $amount="0";

}

if(isset($_REQUEST['newStuSubmitBtn'])){
    // Checking For Empty Field
    if(($_REQUEST['course_id'] == "")){
       $msg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2">Fill All Fields</div>';
    } else {
        $course_id = $_REQUEST['course_id']; 
        $sqls = "SELECT * FROM courseorder WHERE stu_email='$stu_email'and course_id='$course_id'";
        $result = $conn->query($sqls);
        if($result->num_rows > 0) {
            $msg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2">Already Exist.</div>';
        }else{
           
 $date = date('Y-m-d');
      


        // $sql = "INSERT INTO courseorder (stu_email,course_id,amount) 
        //  VALUES ('$stu_email', '$stu_name', '$stu_occ')";
         $sql = "INSERT INTO `courseorder` (`order_id`, `stu_name`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`,`permission`) VALUES ('FREESTUDENT', '$stu_name', '$stu_email', '$course_id', 'success', 'YES', '$amount', '$date','1')";

         if($conn->query($sql) == TRUE) {
            $msg = '<div class="alert alert-success col-sm-6 ml-5 mt-2">Student free Added Succesfully</div>';
         } else {
            $msg = '<div class="alert alert-danger col-sm-6 ml-5 mt-2">Unable to Free Access</div>';
         }
        }
    }

}



?>

<div class="col-sm-6 mt-5 mx-3 jumbotron">
    <h3 class="text-center">Free Access</h3>
    <form action="" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="course_id">course id</label>
            <input type="text" class="form-control" id="course_id" name="course_id">
        </div>
        <div class="form-group">
            <label for="stu_email">Email</label>
            <input type="text" class="form-control" id="stu_email" name="stu_email" value="<?php echo $row['stu_email'];?>" readonly>
        </div>
        
        <div class="form-group">
            <label for="amount">Amount</label>
            <input type="text" class="form-control" id="amount" name="amount" value="<?php echo $amount;?>">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-danger" id="newStuSubmitBtn" name="newStuSubmitBtn">Submit</button>
            <a href="students.php" class="btn btn-secondary">Close</a>
        </div>
        <?php if(isset($msg)) {echo $msg;} ?>
    </form>
</div>
</div> <!-- div row close from header -->
</div> <!-- div conatiner-fluid close from headder -->


<?php
include('./admininclude/footer.php');
?>