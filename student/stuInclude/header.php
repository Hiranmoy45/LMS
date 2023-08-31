<?php
include('../dbconnection.php');
if(!isset($_SESSION)){
    session_start();
}

if(isset($_SESSION['is_login'])){
    $stuLogEmail = $_SESSION['stuLogEmail'];
} 
// else {
//     echo "<script> location.href='../index.php'; </script>";
// }
if(isset($stuLogEmail)){
    $sql = "SELECT stu_img FROM student WHERE stu_email = '$stuLogEmail'";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $stu_img = $row['stu_img'];
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap css -->
    <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
    <!-- font awesome css -->
    <!-- <link rel="stylesheet" href="css/all.min.css"> -->
    <!-- Google Fonts -->
    <!-- <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@700&display=swap" rel="stylesheet">  -->
    <!-- custome css -->
    <!-- <link rel="stylesheet" href="css/style.css"> -->
    <title>Profile</title>

    <!-- Elearning Teplete Script -->
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="../Elearning/lib/animate/animate.min.css" rel="stylesheet">
<link href="../Elearning/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link href="../Elearning/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="../Elearning/css/style.css" rel="stylesheet">
</head>
<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
        <a href="index.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
     <h2 class="m-0 text-primary" style="font-size:20px;"><i class="fa fa-book me-3"></i>Dr.  Sudip Chakraborty</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="../index.php" class="nav-item nav-link active">Home</a>
                <a href="studentProfile.php" class="nav-item nav-link <?php if(PAGE == 'profile') { echo 'active';} ?>">
                    <!-- <i class="fas fa-user"></i> -->
                    Profile <span class="sr-only">(current)</span>
                </a>
                <a href="myCourse.php" class="nav-item nav-link">
                    <!-- <i class="fab fa-accessible-icon"></i> -->
                    My Courses
                </a>
                <!-- <a href="stufeedback.php" class="nav-item nav-link">
                            <i class="fab fa-accessible-icon"></i>
                            Feedback
                        </a> -->
                <a href="studentChangePass.php" class="nav-item nav-link">
                            <!-- <i class="fas fa-key"></i> -->
                            Change Password
                        </a>
                        <a href="../logout.php" class="nav-item nav-link">
                            <!-- <i class="fas fa-sign-out-alt"></i> -->
                            Logout
                        </a>
                <a href="../index.php" class="nav-item nav-link active" style="padding: 0;"> <img style="margin-top: 10px; width: 50px;" src="<?php echo ".$stu_img" ?>" alt="studentimage" class="img-thumbnail rounded-circle"></a>
                  <!-- <div class="nav-item dropdown">
                     <a href="index.php" class="nav-item nav-link active dropdown-toogle" data-bs-toggle="dropdown" style="padding: 0;"> <img style="margin-top: 10px; width: 50px;" src="<?php echo $stu_img ?>" alt="studentimage" class="img-thumbnail rounded-circle"></a>

                    <div class="dropdown-menu fade-down m-0">
                        <a href="team.html" class="dropdown-item">Our Team</a>
                        <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                        <a href="404.html" class="dropdown-item">404 Page</a>
                    </div>
                </div> -->
            </div> 
            
        </div>
    </nav>
    <!-- Navbar End -->























<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Profile</title> -->
    <!-- Bootstrap css -->
    <!-- <link rel="stylesheet" href="../css/bootstrap.min.css"> -->
    <!-- font awesome css -->
    <!-- <link rel="stylesheet" href="../css/all.min.css"> -->
    <!-- Google Fonts -->
    <!-- <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@700&display=swap" rel="stylesheet">  -->
    <!-- custome css -->
    <!-- <link rel="stylesheet" href="../css/stustyle.css">    -->

</head>
<body>
<!-- Top Navbar -->
<!-- <nav class="navbar navbar-dark fixed-top fiex-md-nowrap p-0 shadow" style="background-color: #225470;">
    <a href="../index.php" class="navbar-brand col-sm-3 col-md-2 mr-0">Quikly Learner <small class="text-white">Student Area</small></a>
</nav> -->

<!-- Side Bar -->
<!-- <div class="container-fluid mb-5" style="margin-top:40px;">
    <div class="row">
        <nav class="col-sm-2 bg-light sidebar py-5 d-print-none">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item mb-3">
                        <img src="<?php echo $stu_img ?>" alt="studentimage" class="img-thumbnail rounded-circle">
                    </li>
                    <li class="nav-item">
                        <a href="studentProfile.php" class="nav-link <?php if(PAGE == 'profile') { echo 'active';} ?>">
                            <i class="fas fa-user"></i>
                            Profile <span class="sr-only">(current)</span>
                        </a>
                    </li>  
                    <li class="nav-item">
                        <a href="myCourse.php" class="nav-link">
                            <i class="fab fa-accessible-icon"></i>
                            Courses
                        </a>
                    </li> 
                    <li class="nav-item">
                        <a href="stufeedback.php" class="nav-link">
                            <i class="fab fa-accessible-icon"></i>
                            Feedback
                        </a>
                    </li>  
                    <li class="nav-item">
                        <a href="studentChangePass.php" class="nav-link">
                            <i class="fas fa-key"></i>
                            Change Password
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="../logout.php" class="nav-link">
                            <i class="fas fa-sign-out-alt"></i>
                            Logout
                        </a>
                    </li>                
                </ul>
            </div>
        </nav> -->