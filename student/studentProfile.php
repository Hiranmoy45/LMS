<?php
if(!isset($_SESSION)){
    session_start();
}

include('./stuInclude/header.php');
include_once('../dbconnection.php');

if(isset($_SESSION['is_login'])){
    $stuEmail = $_SESSION['stuLogEmail'];
} else {
    echo "<script> location.href='../index.php'; </script>";
}
$sql = "SELECT * FROM student WHERE stu_email = '$stuEmail'";
$result = $conn->query($sql);
if($result->num_rows == 1){
    $row = $result->fetch_assoc();
    $stuId = $row["stu_id"];
    $stuName = $row["stu_name"];
    $stuOcc = $row["stu_occ"];
    $stuImg = $row["stu_img"];
}

if(isset($_REQUEST['updateStuNameBtn'])){
    if(($_REQUEST['stuName'] == "")){
        // msg display if required field missing
        $passmsg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2" role="alert">Fill All Fields</div>';
    } else {
        $stuName = $_REQUEST["stuName"];
        $stuOcc = $_REQUEST["stuOcc"];
        $stu_image = $_FILES["stuImg"]['name'];
        $stu_image_temp = $_FILES['stuImg']['tmp_name'];
        $img_folders = './image/stu/'.$stu_image;
        $img_folder = '../image/stu/'.$stu_image;
        move_uploaded_file($stu_image_temp, $img_folder);

            $sql = "UPDATE student SET stu_name = '$stuName', stu_occ = '$stuOcc', stu_img = '$img_folders' WHERE stu_email = '$stuEmail'";
            if($conn->query($sql) == TRUE){
                // below msg display on form submit success
                $passmsg = '<div class="alert alert-success col-sm-6 ml-5 mt-2" role="alert">Updated Successfully . Please refresh page!!</div>';
                 echo '<meta http-equiv="refresh" content="0;" />';
            } else {
                // below msg display on form submit Failed
                $passmsg = '<div class="alert alert-success col-sm-6 ml-5 mt-2" role="alert">Unable to Update</div>';
            }
        }
    }

?>

<div class="page-content page-container" id="page-content">
    <div class="padding">
        <div class="row container d-flex justify-content-center">
        
            <div class="col-xl-12 col-md-12">
                <div class="card user-card-full">
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="row m-l-0 m-r-0">
                            <div class="col-sm-4 bg-c-lite-green user-profile">
                                <div class="card-block text-center text-white">
                                    <div class="m-b-25"> <img src="<?php echo ".$stuImg"?>" class="img-thumbnail rounded-circle" alt="User-Profile-Image"> </div>
                                    <h6 class="f-w-600" style="text-transform: uppercase; "><?php if(isset($stuName)) { echo $stuName;} ?></h6>
                                    <!-- <p>Web Designer</p>  -->
                                    <i class=" mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16"></i>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="card-block">
                                    <h6 class="m-b-20 p-b-5 b-b-default f-w-600">Information</h6>
                                    
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Student ID</p>
                                            <input type="text" class="form-control text-muted f-w-400" id="stuId" name="stuId" value="<?php if(isset($stuId)) { echo $stuId;} ?>" readonly>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Goal</p>                                            
                                            <input type="text" class="form-control text-muted f-w-400" id="stuOcc" name="stuOcc" value="<?php if(isset($stuOcc)) { echo $stuOcc;} ?>">
                                        </div>
                                    </div>
                                    <div class="row">
                                    <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Student Name</p>
                                            <input type="text" class="form-control text-muted f-w-400" id="stuName" name="stuName" value="<?php if(isset($stuName)) { echo $stuName;} ?>">
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Email</p>
                                            
                                            <input type="email" class="form-control text-muted f-w-400" id="stuEmail" name="stuEmail" value="<?php echo $stuEmail ?>" readonly>
                                        </div>
                                    </div>
                                    <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600">Upload Profile Image</h6>
                                                                        <div class="row">
                                        <div class="col-sm-6">
                                            <p class="m-b-10 f-w-600">Upload Image</p>                                        
                                            <input type="file" class="form-control-file text-muted f-w-400" id="stuImg" name="stuImg">
                                        </div>
                                        <h6>upto 3mb</h6>
                                        <div class="col-sm-6">
                                            <div class="">
                                            <button type="submit" class="btn btn-primary w-100 py-3" name="updateStuNameBtn">Update</button>
                                        <?php if(isset($passmsg)) {echo $passmsg;} ?>
                                            </div>
                                        </div>
                                    </div>
                                    <ul class="social-link list-unstyled m-t-40 m-b-10">
                                        <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="facebook" data-abc="true"><i class="mdi mdi-facebook feather icon-facebook facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="twitter" data-abc="true"><i class="mdi mdi-twitter feather icon-twitter twitter" aria-hidden="true"></i></a></li>
                                        <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="instagram" data-abc="true"><i class="mdi mdi-instagram feather icon-instagram instagram" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        
        </div>
    </div>
</div>








 <!-- div row close from header -->

<?php 
include('./stuInclude/footer.php');
?>

