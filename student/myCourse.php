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
?>
<!-- Header Start -->
<div class="container-fluid bg-primary py-5 mb-5 page-header">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center">
                    <h1 class="display-3 text-white animated slideInDown">My Courses</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a class="text-white" href="../index">Home</a></li>
                            <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">My Courses</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->




<div class="container mt-5 ml-4">
    <div class="row">
        <div class="jumbotron">
        <h4 class="text-center">All Course</h4>
        <?php
            if(isset($stuLogEmail)){
                $sql = "SELECT co.order_id, c.course_id, c.course_name, c.course_duration, c.course_desc, c.course_img, c.course_author, c.course_original_price, c.course_price FROM courseorder AS co JOIN course AS c ON c.course_id = co.course_id WHERE co.stu_email = '$stuLogEmail'";
                $result = $conn->query($sql);
                if($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()){
                        $course_id=$row['course_id'];
                         $email_search = " select * from courseorder where stu_email='$stuLogEmail' and course_id='$course_id' ";
                                $query= mysqli_query($conn,$email_search);
                     $cor_id = mysqli_fetch_assoc($query);
                        $permission =$cor_id['permission'];
                        if($permission==1){
                        
                        
                        ?>
                        <div class="bg-light mb-3" style="width:100%;height: auto; border-radius: 25px;background: rgba(1, 0, 0, 0.2);">
                            <h5 class="card-header" ><?php echo $row['course_name']; ?></h5>
                            <div class="row">
                                <div class="col-sm-3">
                                    <img src="<?php echo $row['course_img']; ?>" class="card-img-top mt-4"  alt="pic">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <div class="card-body">
                                        <p class="card-title"><?php echo $row['course_desc']; ?></p>
                                        <small class="card-text">Duration : <?php echo $row['course_duration']; ?> </small><br/>
                                        <small class="card-text">Instructor : <?php echo $row['course_author']; ?> </small><br/>
                                        <!-- <p class="card-text d-inline">Price: <small><del>&#8377 <?php echo $row['course_original_price'];?></del></small> -->
                                        <!-- <span class="font-weight-bolder">&#8377 <?php echo $row['course_price']; ?><span></p> -->
                                        <a href="watchcourse.php?course_id=<?php echo $row['course_id'] ?>" class="btn btn-primary mt-5 float-right">Watch Course</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php
                        } else{
                            ?>
                              <div class="bg-light mb-3" style="width:100%;height: auto; border-radius: 25px;background: rgba(1, 0, 0, 0.2);">
                            <h5 class="card-header" ><?php echo $row['course_name']; ?></h5>
                            <div class="row">
                                <div class="col-sm-3">
                                    <img src="<?php echo $row['course_img']; ?>" class="card-img-top mt-4"  alt="pic">
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <div class="card-body">
                                        <p class="card-title"><?php echo $row['course_desc']; ?></p>
                                        <small class="card-text">Duration : <?php echo $row['course_duration']; ?> </small><br/>
                                        <small class="card-text">Instructor : <?php echo $row['course_author']; ?> </small><br/>
                                        <!-- <p class="card-text d-inline">Price: <small><del>&#8377 <?php echo $row['course_original_price'];?></del></small> -->
                                        <!-- <span class="font-weight-bolder">&#8377 <?php echo $row['course_price']; ?><span></p> -->
                                        <a href="javascript:void(0)" class="btn btn-danger mt-5 float-right"style="cursor: not-allowed;">Blocked</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                            <?php
                        }
                    }
                }else{
                    echo "No data Available!!";
                }
            }
            ?>
        <hr/>
		<div>
		<a href="../courses" class="btn btn-danger box"> 
			  <span>Add More Courses</span>
                        <i class="fas fa-plus fa-2x"></i>
						
                    </a>
                </div>
        </div>
    </div>
</div>

</div> <!-- close row div from header file -->


                   
<?php 
include('./stuInclude/footer.php');
?>