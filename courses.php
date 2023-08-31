<!-- Start include header -->
<?php
include('./dbconnection.php');
include('./maininclude/header.php');
?>
<!-- End include header -->

    <!-- Header Start -->
    <div class="container-fluid bg-primary py-5 mb-5 page-header">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center">
                    <h1 class="display-3 text-white animated slideInDown">Courses</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                            <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Courses</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->


<!-- Start All Course -->
<div class="container mt-5">
    <h1 class="text-center">All Course</h1>
    <div class="row mt-4">
    <?php
        $sql = "SELECT * FROM course";
        $result = $conn->query($sql);
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $course_id = $row['course_id'];
                $x=$row['course_original_price'];
                $y=$row['course_price'];
                $percentage=100-(($y*100)/$x);
                if($percentage>0){
                    $per=$percentage;
                    $off="&#37; off";
                }else{
                    $per="";
                    $off="";
                }
              

                echo '<div class="col-sm-4 mb-4 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <a href="coursedetails.php?course_id='.$course_id.'">
                        
                            <div class="course-item bg-light"  style="border-radius:25px;">
                                <div align="center"  class="position-relative overflow-hidden">
                                    <img style="width: 399px;height: 250px; padding-left:4px; padding-right:4px; padding-top:4px; border-radius: 25px;background: rgba(1, 0, 0, 0.2);" src="'. str_replace('..','.', $row['course_img']).'" class="img-fluid" alt="Guitar" />
                                    <div class="w-10 d-fl\ex justify-content-center positon-absolute bottom-0 start-0">
                                    <a class="flex-shrink\-0 bt btn-s btn-primary px-" style="border-radius: 0 30px 30px 0;" href="coursedetails.php?course_id='.$course_id.'"></a>                                                    
                                </div>
                                    
                                </div>
                                <div class="text-center p-4 pb-0" style="margin-bottom: 20px;">
                                    <h3 class="mb-0">Price: <small><del>&#8377 '.$row['course_original_price'].'</del></small> <span class="font-weight-bolder">&#8377 '.$y.'</span></h3>
                                    <div class="mb-3"></div>
                                    <h5 class="mb-4">'.$row['course_name'].'</h5>
                                    <p class="card-text content"style="text-align: justify;">'.$row['course_desc'].'</p>    
                                     <button onclick="readMore(this)" class="btn mobileoff">Read More</button>
                                         
                                </div>
                                
                        
                                <div class="d-flex border-top">
                                </div>';
                                        ?>
                                        <?php
                                       if(isset($_SESSION['is_login'])){
                                           $stuEmail=$_SESSION['stuLogEmail'];
    
     $email_search = " select * from courseorder where stu_email='$stuEmail' and course_id='$course_id' ";
                                $query= mysqli_query($conn,$email_search);
    $cor_id = mysqli_fetch_assoc($query);

     if($query->num_rows > 0){
    $permission =$cor_id['permission'];
                        if($permission==1){
                               echo '<div class="course-info" style="padding-top:65px;"> <a  href="student/watchcourse.php?course_id='.$course_id.'"> <button class="btn continebtn"style="right:25%";>Watch Now</button>  
                                                                 </a>
                                </div>                           
                            </div>                        
                         </div>';
                        }else{
                             echo '<div class="course-info" style="padding-top:65px;"> <a  href="contact"> <button class="btn continebtn btn-danger"style="cursor: not-allowed;background-color:red;right:25%">Blocked</button>  
                                                                 </a>
                                </div>                           
                            </div>                        
                         </div>';
                        }
     }else{
                                        echo '<div class="course-info" style="padding-top:65px;"> <a  href="coursedetails.php?course_id='.$course_id.'"> <button class="btn continebtn" style="right:25%;">Enroll</button>  
                                                                 </a>
                                </div>                           
                            </div>                        
                         </div>';
     }
                                       }else{
                                        echo '<div class="course-info" style="padding-top:65px;"> <a  href="coursedetails.php?course_id='.$course_id.'"> <button class="btn continebtn"style="right:25%;">Enroll</button>  
                                                                 </a>
                                </div>                           
                            </div>                        
                         </div>';
     }
            }
        }


    ?>

    </div>
</div>
<!-- End All Course -->


<!-- Start include Footer -->
<?php
include('./maininclude/footer.php');
?>
<!-- End include Footer -->

