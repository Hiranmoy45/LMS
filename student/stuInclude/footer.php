
<!-- Footer Start -->
<div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Quick Link</h4>
                    <a class="btn btn-link" href="../aboutus">About Us</a>
                    <a class="btn btn-link" href="../contact">Contact Us</a>
                    <a class="btn btn-link" href="../courses">Course</a>
                    
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-white mb-3">Contact</h4>
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Gangabag, English Bazar, Malda, West Bengal</p>
                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 9432849311</p>
                    <p class="mb-2"><i class="fa fa-envelope me-3"></i>sudip2205@gmail.com</p>
                    <div class="d-flex pt-2">
                    <a class="btn btn-outline-light btn-social" href="https://t.me/sudipchakraborty123"><i class="fab fa-telegram" target="_blank"></i></a>
                        <a class="btn btn-outline-light btn-social" href="https://www.facebook.com/Dr-Sudip-Chakraborty-110532871526143" target="_blank"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social" href="https://www.youtube.com/c/DrSudipChakraborty/featured" target="_blank"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
               <a href="../ImageGallery/imagegalary">
                      
                    <h4 class="text-white mb-3">Gallery</h4></a>
                    <a href="../ImageGallery/imagegalary">
                    <div class="row g-2 pt-2">
                       <div class="col-4">
                            
                            <img class="img-fluid bg-light p-1" src="../ImageGallery/Images/1.jpg" >
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="../ImageGallery/Images/Screenshot (12).png" id ="kalo"  alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="../ImageGallery/Images/Screenshot (13).png" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="../ImageGallery/Images/Screenshot (14).png" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="../ImageGallery/Images/Screenshot (15).png" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid bg-light p-1" src="../ImageGallery/Images/1.jpg" alt="">
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
                        &copy; <a class="border-bottom" href="../index">Dr.Sudip Chakraborty</a>, All Right Reserved.

                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        Designed By <a class="border-bottom" href="">Hiranmoy Mandal</a><br><br>
                        <!-- Distributed By <a class="border-bottom" href="">Hiranmoy</a> -->
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                        <div class="footer-menu">
                            <a href="../Privacy_Policy">Privacy Policy</a>
                            <a href="../Terms_and_condition">Terms & Conditions</a>

                            <a href="../Refund_policy">Refund Policy</a>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->
 <script>

function check_session_id()
{
    var session_id = "<?php echo $_SESSION['user_session_id']; ?>";

    fetch('../check_login.php').then(function(response){

        return response.json();

    }).then(function(responseData){

        if(responseData.output == 'logout')
        {
            window.location.href = '../logout.php';
        }

    });
}

setInterval(function(){

    check_session_id();
    
}, 10000);

</script>
        <!-- Jquery and Bootstrap Javascript -->
        <script src="../js/jquery.min.js"></script>   
    <script src="../js/popper.min.js"></script> 
    <script src="../js/bootstrap.min.js"></script>
    <!-- font awesome -->
    <script src="../js/all.min.js"></script>
    <!-- Student Ajax call javascript -->
    <script type="text/javascript" src="../js/ajaxrequest.js"></script>

      <!-- Admin Ajax call javascript -->
      <script type="text/javascript" src="../js/adminajaxrequest.js"></script>
    <!-- custome Javascript -->
    <script type="text/javascript" src="../js/custom.js"></script>

      <!-- Elearning Template -->
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="../Elearning/lib/wow/wow.min.js"></script>
<script src="../Elearning/lib/easing/easing.min.js"></script>
<script src="../Elearning/lib/waypoints/waypoints.min.js"></script>
<script src="../Elearning/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="../Elearning/js/main.js"></script>
</body>
</html>