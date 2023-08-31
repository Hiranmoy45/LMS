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

if(isset($_REQUEST['courseSubmitBtn'])){
    // Checking For Empty Field
    if(($_REQUEST['course_name'] == "")){
       $msg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2">Fill All Fields</div>';
    } else {
        $course_name = $_REQUEST['course_name'];
       
      
        $course_image = $_FILES['course_img']['name'];
        $course_image_temp = $_FILES['course_img']['tmp_name'];
       $img_path = 'Images/'.$course_image;
        $img_folder = '../ImageGallery/Images/'.$course_image;
        move_uploaded_file($course_image_temp, $img_folder);

        $sql = "INSERT INTO `photo` (`id`, `sem`, `photoPath`) VALUES (NULL, '$course_name', '$img_path')";

         if($conn->query($sql) == TRUE) {
            $msg = '<div class="alert alert-success col-sm-6 ml-5 mt-2">Image Added Succesfully</div>';
         } else {
            $msg = '<div class="alert alert-danger col-sm-6 ml-5 mt-2">Unable to Add Image</div>';
         }
    }

}



?>

<div class="col-sm-6 mx-3 jumbotron">
    <h3 class="text-center">Add New Image</h3>
    <form action="" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="course_name">Semester No</label>
            <input type="text" class="form-control" id="course_name" name="course_name">
        </div>
       
        <div class="form-group">
            <label for="course_img"> Image</label>
            <input type="file" class="form-control-file" id="course_img" name="course_img">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-danger" id="courseSubmitBtn" name="courseSubmitBtn">Submit</button>
            <a href="courses.php" class="btn btn-secondary">Close</a>
        </div>
        <?php if(isset($msg)) {echo $msg;} ?>
    </form>
</div>
</div> <!-- div row close from header -->
</div> <!-- div conatiner-fluid close from headder -->


<?php
include('./admininclude/footer.php');
?>