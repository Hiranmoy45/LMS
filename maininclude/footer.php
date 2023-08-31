

    <!-- Footer Start -->
        <div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Quick Link</h4>

                    <a class="btn btn-link" href="aboutus">About Us</a>
                    <a class="btn btn-link" href="contact">Contact Us</a>
                    <a class="btn btn-link" href="courses">Course</a>
                    <a class="btn btn-link" href="Team">Our Team</a>
                 
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Contact</h4>
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Gangabag, English Bazar, Malda, West Bengal </p>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 9432849311</p>
                    <p class="mb-2"><i class="fa fa-envelope me-3"></i>sudip2205@gmail.com</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href="https://t.me/sudipchakraborty123" target="_blank"><i class="fab fa-telegram"></i></a>
                        <a class="btn btn-outline-light btn-social" href="https://www.facebook.com/Dr-Sudip-Chakraborty-110532871526143" target="_blank"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social" href="https://www.youtube.com/c/DrSudipChakraborty/featured" target="_blank"><i class="fab fa-youtube"></i></a>
                        <!--<a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>-->
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <a href="ImageGallery/imagegalary">
                    <h4 class="text-white mb-3">Gallery</h4></a>
                    <a href="./ImageGallery/imagegalary">
                    <div class="row g-2 pt-2">
                        <div class="col-4">
                            
                            <img class="img-fluid bg-light p-1" src="./ImageGallery/Images/1.jpg" >
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="./image/courseimg/Abstract%20Algebra.jpg" id ="kalo"  alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="./image/courseimg/Metric Space.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="./image/courseimg/Real Analysis Part 2.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="./image/courseimg/Linear Algebra.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="./ImageGallery/Images/1.jpg" alt="">
                        </div>
                    </div></a>
                </div>
            
                <!-- <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Newsletter</h4>
                    <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                    <div class="position-relative mx-auto" style="max-width: 400px;">
                        <input class="form-control border-0 w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                        <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                    </div>
                </div> -->
            </div>
        </div>
        <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        <!-- &copy; <a class="border-bottom" href="#">Your Site Name</a>, All Right Reserved. -->

                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        <!-- Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a><br><br> -->
                        <a href="#login" data-toggle="modal" data-target="#adminLoginModalCenter">Admin Login</a>
                    </div>
                     <div class="col-md-6 text-center text-md-end">
                        <div class="footer-menu">
                           
                           
                             <a href="Privacy_Policy">Privacy Policy</a>
                            <a href="Terms_and_condition">Terms & Conditions</a>
                            <a href="Refund_policy.php">Refund Policy</a>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


<!-- Start About Section -->

<!-- End About Section -->

<!-- Start Student Registration Modal -->



       


<!-- Start Admin Login Modal -->
<!-- Modal -->
<div class="modal fade" id="adminLoginModalCenter" tabindex="-1" aria-labelledby="adminLoginModalCenterLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="adminLoginModalCenterLabel">Admin Login</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <!-- Start Admin Login Form -->
        <form id="adminLoginForm">
            <div class="form-group">
                <i class="fas fa-envelope"></i>
                <label for="adminLogemail" class="pl-2 font-weight-bold">Email</label>
                <input type="email" class="form-control" placeholder="Email" name="adminLogemail" id="adminLogemail">
            </div>
            <div class="form-group">
                <i class="fas fa-key"></i>
                <label for="adminLogpass" class="pl-2 font-weight-bold">Password</label>
                <input type="password" class="form-control" placeholder="Password" name="adminLogpass" id="adminLogpass">
            </div>
        </form>


        <!-- End Admin Login Form -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="adminLoginbtn" onclick="checkAdminLogin()">Login</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>

        
      </div>
    </div>
  </div>
</div>
<!-- End Admin Login Modal -->

 <script>

function check_session_id()
{
    var session_id = "<?php echo $_SESSION['user_session_id']; ?>";

    fetch('check_login.php').then(function(response){

        return response.json();

    }).then(function(responseData){

        if(responseData.output == 'logout')
        {
            window.location.href = 'logout';
        }

    });
}

setInterval(function(){

    check_session_id();
    
}, 10000);

</script>

    

    <!-- Jquery and Bootstrap Javascript -->
    <script src="js/jquery.min.js"></script>   
    <script src="js/popper.min.js"></script> 
    <script src="js/bootstrap.min.js"></script>
    <!-- font awesome -->
    <script src="js/all.min.js"></script>
   

      <!-- Admin Ajax call javascript -->
      <script type="text/javascript" src="js/adminajaxrequest.js"></script>


      <!-- Elearning Template -->
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
<!-- my login form style -->
<script src="./Elearning/js/main.js"></script>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="./Elearning/lib/wow/wow.min.js"></script>
<script src="./Elearning/lib/wow/wow.js"></script>
<script src="./Elearning/lib/easing/easing.min.js"></script>
<script src="./Elearning/lib/waypoints/waypoints.min.js"></script>
<script src="./Elearning/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->




</body>
</html>