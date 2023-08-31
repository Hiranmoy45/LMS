<!-- Start include header -->
<?php
include('./dbconnection.php');
 if(isset($_GET['course_id'])){
    $course_id = $_GET['course_id'];
    $sql = "SELECT * FROM course WHERE course_id = '$course_id'";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc(); 
    $page_title=$row['course_name'];
    $meta_description=$row['course_desc'];
    $meta_keywords=$row['course_key'];   
}

include('./maininclude/header.php');
?>
<!-- End include header -->

    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
        <?php
    if(isset($_GET['course_id'])){
        $course_id = $_GET['course_id'];
        $_SESSION['course_id'] = $course_id;
        $sql = "SELECT * FROM course WHERE course_id = '$course_id'";
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();    
    }
    $amount =$row['course_price'];
    $_SESSION['amt'] =$amount;
      $course_name=$row['course_name'];
      $_SESSION['course_name']=$course_name;
?>  

            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                    <h6 class="section-title bg-white text-start text-primary pe-3">Course</h6>
                    <h1 class="mb-4"> <?php echo $row['course_name'] ?></h1>
                    <p class="mb-4"><?php echo $row['course_desc'] ?></p>
                    <!-- <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p> -->
                    <div class="row gy-2 gx-4 mb-4">
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Duration: <?php echo $row['course_duration'] ?></p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Price: <small><del>&#8377 <?php echo $row['course_original_price'] ?></del></small> <span class="font-weight-bolder">&#8377 <?php echo $row['course_price'] ?></span></p>
                        </div>
                        <!-- <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>International Certificate</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Skilled Instructors</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Online Classes</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>International Certificate</p>
                        </div> -->
                    </div>
                    <!-- <a class="btn btn-primary py-3 px-5 mt-2" href="">Read More</a> -->
                    <form action="payment/pay" method="post">
                        <input type="hidden" name="id" value="<?php echo $row['course_price'] ?>">
                        <input type="hidden" name="ids" value="<?php echo $row['course_id'] ?>">
                        <button type="submit" class="btn btn-primary py-3 px-5 mt-2" name="buy">Buy Now</button>
                    </form>
                    
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="img-fluid position-absolute w-100 h-71" src="<?php echo str_replace('..','.', $row['course_img'])  ?>" alt="" style="object-fit: cover;">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->

    <div class="container">
        <div class="row">
        <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th scope="col">Lesson No.</th>
                        <th scope="col">Lesson Name</th>
                    </tr>
                </thead>
                <tbody>
                <?php 
                    $sql = "SELECT * FROM lesson";
                    $result = $conn->query($sql);
                    if($result->num_rows > 0){
                        $num = 0;
                        while($row = $result->fetch_assoc()){
                            if($course_id == $row['course_id']){
                                    $num++;
                                echo '<tr>
                                            <th scope="row">'.$num.'</th>
                                            <td>'.$row['lesson_name'].'</td>
                                        </tr>';
                            }
                        }
                    }
                ?>
                </tbody>
            </table>
        </div>
    </div>

<!-- Start include Footer -->
<?php
include('./maininclude/footer.php');
?>
<!-- End include Footer -->