<?php
session_start();
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-M1ET2EQZX1"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap css -->
    <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
    <!-- font awesome css -->
    <!-- <link rel="stylesheet" href="css/all.min.css"> -->
    <!-- Google Fonts -->
    <!-- <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@700&display=swap" rel="stylesheet">  -->
    <!-- custome css -->
     <link rel="stylesheet" href="css/style.css"> 
    <title><?php if(isset($page_title)){echo "$page_title";}else{echo "Sudip Chakraborty";}?> </title>
   
    <meta name="description" content="<?php if(isset($meta_description)){echo "$meta_description";}?>">
    <meta name="keywords" content="<?php if(isset($meta_keywords)){echo "$meta_keywords";}?>">
   
    <!-- Elearning Teplete Script -->
        <!-- TITLE ICON -->
        <link href="https://sudipchakraborty.sgp1.digitaloceanspaces.com/user/images/Website%20Logo%20%281%29.png" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="./Elearning/lib/animate/animate.min.css" rel="stylesheet">
<link href="./Elearning/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link href="./Elearning/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="./Elearning/css/style.css" rel="stylesheet">
<link href="./Elearning/css/style1.css" rel="stylesheet">
<link href="./Elearning/css/notification.css" rel="stylesheet">



      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
      <!-- Login form style -->
      <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
    

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
        <a href="index.php" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0" style="font-size:20px;color:#007bff;"><i class="fa fa-book me-3" style="color:#007bff;"></i>Dr.  Sudip Chakraborty</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index" class="nav-item nav-link active">Home</a>
                     <a href="courses" class="nav-item nav-link">Courses</a>
                <a href="aboutus" class="nav-item nav-link">About</a>
           
                <!-- <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="team.html" class="dropdown-item">Our Team</a>
                        <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                        <a href="404.html" class="dropdown-item">404 Page</a>
                    </div>
                </div> -->
                <a href="contact" class="nav-item nav-link">Contact</a>

                <?php
                  if(isset($_SESSION['is_login'])){
                    echo '
                    <a class="nav-item nav-link" href="student/studentProfile">My Profile</a>
                    <a class="nav-item nav-link" href="logout">Logout</a>';
                  } else {
                    echo '
                    <a class="nav-item nav-link" href="signup-user" >Signup</a>';
                  }
                ?>
            </div>
            <div>
            <?php
                  if(isset($_SESSION['is_login'])){
                    echo '';
                  } else {
                    echo '
                    <a class="btn btn-primary py-4 px-lg-5 d-non d-lg-block" href="login-user.php"  data-target="#stuLoginModalCenter" style="background:#007bff;">Login <i class="fa fa-arrow-right ms-3"></i></a>';
                  }
                ?>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->




