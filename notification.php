<?php
 $page_title="Dr.Sudip Chakraborty - India's largest learning platform";
 $meta_description="this is description ";
 $meta_keywords="this is keywords";
include('./dbconnection.php');
include('./maininclude/header.php');

?>
    <!-- Header Start -->
    <div class="container-fluid bg-primary py-5 mb-5 page-header">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center">
                    <h1 class="display-3 text-white animated slideInDown">Notification</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                            <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Notification</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->

    
        <section class="notification-section">
            <?php
    $sql = "SELECT * FROM upcomingevent";
    $result = $conn->query($sql);
    if($result->num_rows > 0){
         while($row = $result->fetch_assoc()){

             
            echo '<div class="noti-area">

                <div class="upper-d">
                    <span><span class="noti-date">'.$row['upcoming_date'].':</span><span><img class="new-icon" src="image/new.svg"
                                alt=""></span><span class="subject-noti">'.$row['event_name'].' </span></span>
                </div>
                <div class="lower-d">
                    <span>'.$row['event_desc'].'</span>
                </div>
            </div>';
         }
    }
    ?>
                  </section>


<?php
include('./maininclude/footer.php');
?>