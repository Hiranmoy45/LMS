<?php
 $page_title="Dr.Sudip Chakraborty - India's largest learning platform";
 $meta_description="this is description ";
 $meta_keywords="this is keywords";
include('./dbconnection.php');
include('./maininclude/header.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Our Team</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet" />
    <!-- Stylesheet -->
    <link rel="stylesheet" href="team.css" />
    <!-- unicons -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.5/css/unicons.css">


</head>

<body id="ourteambody">
    <div class="container-fluid bg-primary py-5 mb-5 page-header">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center">
                    <h1 class="display-3 text-white animated slideInDown">Our Team</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                            <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Our Team</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <section>
        <!-- <div class="row">
            <h1><span style="font-style:italic">Our</span> Team</h1>
        </div> -->
        <div class="row">
            <!-- Column 1-->
            <div class="column">
                <div class="card_ourteam">
                    <div class="img-container">
                        <img src="./images/Website Logo (1).png" />
                    </div>
                    <h3>Dr. Sudip Chakraborty</h3>
                    <p>Teacher</p>
                    <div class="icons">
                        <a target="_blank"
                            href="https://https://www.facebook.com/Maths-with-Dr-Sudip-Chakraborty-110532871526143">
                            <i class="uil uil-facebook-f"></i>
                        </a>
                        <a target="_blank" href="https://wa.me/919432849311">
                            <i class="uil uil-whatsapp"></i>
                        </a>
                        <a target="_blank" href="https://instagram.com/sudip2205">
                            <i class="uil uil-instagram"></i>
                        </a>
                        <a target="_blank" href="tel:+919432849311">
                            <i class="uil uil-phone"></i>
                        </a>
                        <a target="_blank" href="mailto:sudip2205@gmail.com">
                            <i class="uil uil-envelope"></i>
                        </a>
                    </div>
                </div>
            </div>
            <!-- Column 2-->
            <div class="column">
                <div class="card_ourteam">
                    <div class="img-container">
                        <img src="./images/hiranmoy.png" />
                    </div>
                    <h3>Hiranmoy Mandal</h3>
                    <p>Full Stack Developer</p>
                    <div class="icons">
                        <a target="_blank" href="https://facebook.com/hiranmoy.mandal.3781">
                            <i class="uil uil-facebook-f"></i>
                        </a>
                        <a target="_blank" href="https://wa.me/916297534924">
                            <i class="uil uil-whatsapp"></i>
                        </a>
                        <a target="_blank" href="tel:+916297534924">
                            <i class="uil uil-phone"></i>
                        </a>
                        <a target="_blank" href="mailto:hiranmoy@sudipchakraborty.in">
                            <i class="uil uil-envelope"></i>
                        </a>
                    </div>
                </div>
            </div>
            <!-- Column 3-->
            <div class="column">
                <div class="card_ourteam">
                    <div class="img-container">
                        <img src="./images/mohitur.png" />
                    </div>
                    <h3>Mohd Mohitur Rahaman</h3>
                    <p>Creative Designer</p>
                    <div class="icons">
                        <a target="_blank" href="https://facebook.com/mohitur02">
                            <i class="uil uil-facebook-f"></i>
                        </a>
                        <a target="_blank" href="https://wa.me/918617027551">
                            <i class="uil uil-whatsapp"></i>
                        </a>
                        <a target="_blank" href="https://instagram.com/mohitur02">
                            <i class="uil uil-instagram"></i>
                        </a>
                        <a target="_blank" href="tel:+918617027551">
                            <i class="uil uil-phone"></i>
                        </a>
                        <a target="_blank" href="mailto:mohitur@sudipchakraborty.in">
                            <i class="uil uil-envelope"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>

</html>
<?php
include('./maininclude/footer.php');

?>