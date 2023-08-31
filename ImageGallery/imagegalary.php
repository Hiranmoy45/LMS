<?php
session_start();
include('../dbconnection.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dr.Sudip Chakraborty</title>
     <!-- Bootstrap 4.5 CSS CDN Link -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
  integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<!-- Font Awesome 4.7 CDN Link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
  integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<!-- Plugins CDN Link -->
<link rel="stylesheet" href="css/lightbox.min.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.default.css">

<!-- Own CSS File's Link -->
<link rel="stylesheet" href="css/home1.css">
<link rel="stylesheet" href="css/responsive-style.css">
</head>
<body>
   
    <!-- Gallery Section -->
  <section class="gallery" id="gallery">
    <div class="container">
      <div class="row">
        <div class="section-head col-sm-12">
          <h4><span>Image</span> Gallery</h4>
          <p><br class="d-lg-block d-none"></p>
        </div>
      </div>
      <div class="filterbox">
        <div class="filter-tabs">
          <div class="filter-sort">
            <div class="navigation pb-4">
              <a href="javascript:void(0)" data-filter="all" class="gallery-button active">All</a>
              <a href="../index" class="gallery-button">Home</a>
              <a href="../aboutus" class="gallery-button">About Us</a>
              <a href="../contact" class="gallery-button">contact</a>
              <!-- <a href="javascript:void(0)" data-filter="1" class="gallery-button">1st SEM</a>
              <a href="javascript:void(0)" data-filter="2" class="gallery-button">2nd SEM</a>
              <a href="javascript:void(0)" data-filter="3" class="gallery-button">3rd SEM</a>
              <a href="javascript:void(0)" data-filter="4" class="gallery-button">4th SEM</a>
              <a href="javascript:void(0)" data-filter="5" class="gallery-button">5th Sem</a>
              <a href="javascript:void(0)" data-filter="6" class="gallery-button">6th Sem</a> -->
            </div>
          </div>
        </div>

        <div class="main-wrap wrap-inner">
          <div id="content">
            <div class="main-full" id="main">
              <ol class="content">



              
<?php
                $sql = "SELECT * FROM photo";
                $result = $conn->query($sql);
                if($result->num_rows > 0){
                    while($row = $result->fetch_assoc()){
    $_SESSION['photoPath'] = str_replace('..','.', $row['photoPath']);

          echo  '<li class="team shot-thumbnail Animation Illustration '.$row['sem'].'">
                  <div class="multi-shot">
                    <div class="dribbble-img">
                      <a class="dribbble-link">
                        <picture>
                          <img alt="images-1" src="'.str_replace('..','.', $row['photoPath']).'">
                        </picture>
                      </a>
                      <a class="dribbble-over" href="'.str_replace('..','.', $row['photoPath']).'" data-lightbox="mygallery"
                        data-title="sudip coaching for mathematics"></a>
                    </div>
                  </div>
                </li>';
                    }
                  }
                
                  ?>

              </ol>
            </div>
          </div>
        </div>

      </div>
    </div> 
  </section>
  <!-- Gallery Section Exit -->
  <!-- jQuery CDN Link -->
  <script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>

  <!-- Bootstrap 4.5 JavaScript CDN Link -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">
  </script>

  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous">
  </script>

  <!-- Plugins CDN Link -->
  <script src="js/lightbox-plus-jquery.min.js"></script>
  <script src="js/owl.carousel.js"></script>

  <!-- Own JavaScript File Link -->
  <script src="js/home1.js"></script>
</body>
</html>