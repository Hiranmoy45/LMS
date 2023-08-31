<!-- Start include header -->
<?php
 $page_title="Dr.Sudip Chakraborty - Largest B.Sc Mathematics learning platform";
 $meta_description="This platform is created for mathematics honours students. In this Platform, all the lectures are based on CBCS syllabus of different universities of India.The Lectures are mainly delivered in Bengali. All the lectures are here focused to built strong concepts on mathematics. ";
 $meta_keywords="Sudip Chakraborty, Sudip sir, Mahtematics, iit jam , Gate, csir net , Msc Entrance, College Exam , Math honours, bse mathematics by sudip sir, sudip sir math, iit jam mathematics by sudip sir , sudip sir website,maths in bengali , Bengali math, Bengali Bsc Mathematics,
 Real Analysis,Linear Algebra, Abstract Algebra, Classical Algebra, Metric Space, ODE, Differential Equation, Set ,relation , Mapping , Set relation mapping , Real Analysis By sudip sir,Linear Algebra by sudip sir, Abstract Algebra by sudip sir, Classical Algebra by sudip sir, Metric Space by sudip sir, ODE, Differential Equation sudip sir, Set sudip sir,relation by sudip sir, Mapping by sudip sir , Set relation mapping by sudip sir ";
include('./dbconnection.php');
include('./maininclude/header.php');

?>
<!-- End include header -->

   
     <section class="homeh" id="homeh">

        <div class="contenth">
        <!-- <h2><?php if(isset($_SESSION['is_login'])){
                $msg=$_SESSION['username'];
                echo "Welcome $msg ";}?> </h2> -->
                
            <h3 class="mb-0" style ="font-family: 'Poppins', sans-serif;
    margin:0; padding:0;
    box-sizing: border-box;
    text-decoration: none;
    outline: none; border:none;
    text-transform: capitalize;font-size: 200%;
    overflow-x: hidden;">Courses For <span class="auto-input"></span></h3>
                 <p style="font-family: 'Poppins', sans-serif;text-align: justify;">If you feel the math , learn the math, apply in real life you must come to this platform. The unique feature of this platform is that it gives importance to everyone.</p>
       
            <h3 class="mb-0" style ="font-family: 'Poppins', sans-serif;
    margin:0; padding:0;text-align: justify;
    box-sizing: border-box;
    text-decoration: none;
    outline: none; border:none;
    text-transform: capitalize;font-size: 200%;
    overflow-x: hidden;">Because You Deserve  <span class="">Excellence</span></h3>
  
           
<a href="<?php if(isset($_SESSION['is_login'])){echo "courses.php";}else{ echo "login-user.php";}?>" class="btnh size">Get Started</a>

<div class="card sir" style="width: 50%; height:5%; margin-left:200%; background-color:#C7EDE6; margin-top:10px; margin-bottom:0px; ">
  <div class="card-body"> 
    <h5 class="card-title" style="color:#007bff;font-family: 'Poppins', sans-serif; color:black; ">Dr. Sudip Chakraborty </h5>
    <p class="card-text" style="color:#fff;font-family: 'Poppins', sans-serif;color:black;">Assistant Professor</p>
    <a href="aboutus" class="btnh" style="font-size:1rem;">Details</a>
  </div>
  
</div>
<?php
    $sql = "SELECT * FROM upcomingevent";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
 
echo '<div class="events">
<h1></h1>
<h1>Upcoming Events..</h1>
<marquee behavior="" bgcolor="white" width="100%" height="40px" direction="forwards" style="border-radius:10px;">
<center>
<a href="notification.php"style="color:red;  font-size: 2rem;"> '.$row['event_name'].'<a href="notification.php">New</a></a>
</center>
</marquee>
</div>';
?>

        </div>
       
    
        <div class="imageh">
            <img src="./images/Website Logo (1).png" alt="">
        </div>
    
    </section>
    
            
    <!-- Carousel End -->
    
    <!-- Courses Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Courses</h6>
                <h1 class="mb-5">Popular Courses</h1>
            </div>
            <div class="row g-4 justify-content-center"  style="border-radius:25px;">
                        <?php
                            $sql = "SELECT * FROM course LIMIT 3";
                            $result = $conn->query($sql);
                            if($result->num_rows > 0){
                                while($row = $result->fetch_assoc()){
                                    $course_id = $row['course_id'];
                                    echo '<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                    <a href="coursedetails.php?course_id='.$course_id.'">
                                            
                                                <div class="course-item bg-light"  style="border-radius:25px;">
                                                    <div align="center" class="position-relative overflow-hidden">
                                                        <img style="width: 399px;height: 250px; padding-left:4px; padding-right:4px; padding-top:4px; border-radius: 25px;background: black;" src="'. str_replace('..','.', $row['course_img']).'" class="img-fluid" alt="Guitar" />
                                                        <div class="w-10 d-fl\ex justify-content-center positon-absolute bottom-0 start-0">
                                                        <a class="flex-shrink\-0 bt btn-s btn-primary px-" style="border-radius: 0 30px 30px 0;" href="coursedetails.php?course_id='.$course_id.'"></a>                                                    
                                                    </div>
                                                        
                                                    </div>
                                                    <div class="text-center p-4 pb-0" style="margin-bottom: 20px;">
                                                        <h3 class="mb-0">Price: <small><del>&#8377 '.$row['course_original_price'].'</del></small> <span class="font-weight-bolder">&#8377 '.$row['course_price'].'</span></h3>
                                                        <div class="mb-3"></div>
                                                        <h5 class="mb-4">'.$row['course_name'].'</h5>
                                                        <p class="card-text content" style="text-align: justify;">'.$row['course_desc'].'</p> 
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
                            
                               echo '<div class="course-info" style="padding-top:65px;"> <a  href="student/watchcourse.php?course_id='.$course_id.'"> <button class="btn continebtn" style="right:17%;">Watch Now</button>  
                                                                 </a>
                                </div>                           
                            </div>                        
                         </div>';
                        }else {
                             echo '<div class="course-info" style="padding-top:65px;"> <a  href="contact"> <button class="btn continebtn btn-danger" style="cursor: not-allowed;background-color:red;">Blocked</button>  
                              </a>
                                </div>                           
                            </div>                        
                         </div>';       
                        }
     }else{
                                        echo '<div class="course-info" style="padding-top:65px;"> <a  href="coursedetails.php?course_id='.$course_id.'"> <button class="btn continebtn">Get Subscription</button>  
                                                                 </a>
                                </div>                           
                            </div>                        
                         </div>';
     }
                                       }else{
                                        echo '<div class="course-info" style="padding-top:65px;"> <a  href="coursedetails.php?course_id='.$course_id.'"> <button class="btn continebtn">Get Subscription</button>  
                                                                 </a>
                                </div>                           
                            </div>                        
                         </div>';
     }
            }
        }


    ?>
            </div>
            <div class="row g-4 justify-content-center" style="margin-top: 20px;">
                        <?php
                            $sql = "SELECT * FROM course LIMIT 3, 3";
                            $result = $conn->query($sql);
                            if($result->num_rows > 0){
                                while($row = $result->fetch_assoc()){
                                    $course_id = $row['course_id'];
                                    echo '<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                    <a href="coursedetails.php?course_id='.$course_id.'">
                                            
                                                <div class="course-item bg-light"  style="border-radius:25px;">
                                                    <div align="center" class="position-relative overflow-hidden">
                                                        <img style="width: 399px;height: 250px; padding-left:4px; padding-right:4px; padding-top:4px; border-radius: 25px;background: rgba(1, 0, 0, 0.2);"" src="'. str_replace('..','.', $row['course_img']).'" class="img-fluid" alt="Guitar" />
                                                        <div class="w-10 d-fl\ex justify-content-center positon-absolute bottom-0 start-0">
                                                        <a class="flex-shrink\-0 bt btn-s btn-primary px-" style="border-radius: 0 30px 30px 0;" href="coursedetails.php?course_id='.$course_id.'"></a>                                                    
                                                    </div>
                                                    </div>
                                                    <div class="text-center p-4 pb-0" style="margin-bottom: 20px;">
                                                        <h3 class="mb-0">Price: <small><del>&#8377 '.$row['course_original_price'].'</del></small> <span class="font-weight-bolder">&#8377 '.$row['course_price'].'</span></h3>
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

                               echo '<div class="course-info" style="padding-top:65px;"> <a  href="student/watchcourse.php?course_id='.$course_id.'"> <button class="btn continebtn" style="right:17%;">Watch Now</button>  
                                                                 </a>
                                </div>                           
                            </div>                        
                         </div>';
                        }else {
                             echo '<div class="course-info" style="padding-top:65px;"> <a  href="contact"> <button class="btn continebtn btn-danger"style="cursor: not-allowed;background-color:red;">Blocked</button>  
                                                                 </a>
                                </div>                           
                            </div>                        
                         </div>';
                        }
     }else{
                                        echo '<div class="course-info" style="padding-top:65px;"> <a  href="coursedetails.php?course_id='.$course_id.'"> <button class="btn continebtn">Get Subscription</button>  
                                                                 </a>
                                </div>                           
                            </div>                        
                         </div>';
     }
                                       }else{
                                        echo '<div class="course-info" style="padding-top:65px;"> <a  href="coursedetails.php?course_id='.$course_id.'"> <button class="btn continebtn">Get Subscription</button>  
                                                                 </a>
                                </div>                           
                            </div>                        
                         </div>';
     }
            }
        }


    ?>
            </div>

                <!-- End Most Popular Course !st Card Deck -->
            <!-- <div class="text-center m-2">
                <a class="btn btn-danger btn-sm" href="courses.php">View All Course</a>
            </div> -->
            <!-- Free courses -->
           
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Courses</h6>
                <h1 class="mb-5">Free Courses & Videos</h1>
            </div>
            <div class="row g-4 justify-content-center" style="margin-top: 20px;">
                        <?php
                            $sql = "SELECT * FROM freecourse LIMIT 0, 3";
                            $result = $conn->query($sql);
                            if($result->num_rows > 0){
                                while($row = $result->fetch_assoc()){
                                    $course_id = $row['course_id'];
                                    echo '<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                    <a href="javascript:void(0);">
                                            
                                                <div class="course-item bg-light"  style="border-radius:25px;">
                                                    <div align="center" class="position-relative overflow-hidden">
                                                        <img style="width: 399px;height: 250px; padding-left:4px; padding-right:4px; padding-top:4px; border-radius: 25px;background: rgba(1, 0, 0, 0.2);"" src="'. str_replace('..','.', $row['course_img']).'" class="img-fluid" alt="Sudip Sir" />
                                                        <div class="w-10 d-fl\ex justify-content-center positon-absolute bottom-0 start-0">
                                                        <a class="flex-shrink\-0 bt btn-s btn-primary px-" style="border-radius: 0 30px 30px 0;" href="javascript:void(0);"></a>                                                    
                                                    </div>
                                                    </div>
                                                    <div class="text-center p-4 pb-0" style="margin-bottom: 20px;">
                                                    
                                                        <h3 class="mb-0">Price: <small><del>Paid </del></small> <span class="font-weight-bolder">Free Course</span></h3>
                                                        <div class="mb-3"></div>
                                                        <h5 class="mb-4">'.$row['course_name'].'</h5>
                                                        <p class="card-text content"style="text-align: justify;">'.$row['course_desc'].'</p>
                                                   
<button onclick="readMore(this)" class="btn mobileoff">Read More</button>
                                                    </div>
                                                    <div class="d-flex border-top">
                                                    </div>
                                                    <div class="d-flex border-top">
                                                    </div>
                                                    <div class="course-info" style="padding-top:65px;"><a  href="student/watchFreeCourse?course_id='.$course_id.'"> <button class="btn continebtn">Watch Now</button> </a> </div>
                                                </div>
                                            
                                            </a>
                                            </div>';
                                }
                            }
                        ?>
            </div>
        </div>
    </div>
    <!-- Courses End -->
    

    <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
      <script>
var typed = new Typed(".auto-input",{
    strings: ["BSC MATHEMATICS","IIT JAM","Msc Entrance","Gate","csir net","TIFR"],
    typeSpeed: 100,
    backSpeed: 100,
    loop: true
})
      </script>
   
<!-- Start include Footer -->
<?php
include('./maininclude/footer.php');
?>
<!-- End include Footer -->