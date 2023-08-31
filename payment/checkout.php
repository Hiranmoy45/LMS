<?php

include('config.php');
//db connection
$conn = mysqli_connect($host, $username, $password, $dbname);

if(!isset($_SESSION['stuLogEmail'])){
    echo "<script> location.href='../login.php'; </script>";
} else {
    // Paytm Connectivity
    header("Pragma: no-cache");
	header("Cache-Control: no-cache");
	header("Expires: 0");
    $stuEmail = $_SESSION['stuLogEmail'];
    $sql = "SELECT * FROM student WHERE stu_email = '$stuEmail'";
     $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $stuName = $row["stu_name"];
     $_SESSION['stuLogName'] = $stuName;

    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="GENERATOR" content="Evrsoft First Page">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@700&display=swap" rel="stylesheet"> 
    <!-- custome css -->
    <link rel="stylesheet" href="../css/style.css">
    <title>Checkout</title>
    <style>
        .razorpay-payment-button{
           
            display:none;
        }
        .hiru{
            margin-left:35%;
            width:30%;
        }
        @media screen and (min-width: 0px) and (max-width:700px) {
             .hiru{
                
                 margin-left: 5%;
            width: 91%;
             }
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-sm-6 offset-sm-3 jumbotron">
                <h3 class="mb-5">Welcome to Payment Page</h3>
                <form method="post" action="">
                    <!--<div class="form-group row">-->
                    <!--    <label for="ORDER_ID" class="col-sm-4 col-form-label">ORDER ID</label>-->
                    <!--    <div class="col-sm-8">-->
                    <!--        <input id="ORDER_ID" class="form-control" tabindex="1" maxlength="20" size="20" name="ORDER_ID" autocomplete="off" value="<?php echo  "ORDS" . rand(10000,99999999)?>" readonly>-->
                    <!--    </div>-->
                    <!--</div>-->
                    <div class="form-group row">
                        <label for="id_Course" class="col-sm-4 col-form-label">Course Name</label>
                        <div class="col-sm-8">
                            <input title="id_Course" class="form-control" tabindex="10" type="text" name="id_Course" value="<?php echo $_SESSION['course_name']?>" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="CUST_ID" class="col-sm-4 col-form-label">Student Name</label>
                        <div class="col-sm-8">
                            <input id="CUST_ID" class="form-control" tabindex="2" maxlength="12" size="12" name="CUST_ID" autocomplete="off" value="<?php echo $_SESSION['stuLogName']?>" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="CUST_ID" class="col-sm-4 col-form-label">Student Email</label>
                        <div class="col-sm-8">
                            <input id="CUST_ID" class="form-control" tabindex="2" maxlength="12" size="12" name="CUST_ID" autocomplete="off" value="<?php if(isset($stuEmail)){ echo $stuEmail; }?>" readonly>
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label for="TXN_AMOUNT" class="col-sm-4 col-form-label">Amount</label>
                        <div class="col-sm-8">
                            <input title="TXN_AMOUNT" class="form-control" tabindex="10" type="text" name="TXN_AMOUNT" value="<?php echo $_SESSION['amt']?>" readonly>
                        </div>
                        
                    </div>

                   
                    
                    
                    <div class="form-group row">
                         <!--<label for="INDUSTRY_TYPE_ID" class="col-sm-4 col-form-label">INDUSTRY TYPE ID</label> -->
                        <div class="col-sm-8">
                            <input type="hidden" id="INDUSTRY_TYPE_ID" class="form-control" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <!-- <label for="CHANNEL_ID" class="col-sm-4 col-form-label">Channel ID</label> -->
                        <div class="col-sm-8">
                            <input type="hidden" id="CHANNEL_ID" class="form-control" tabindex="4" maxlength="12" size="12" name="CHANNEL_ID" autocomplete="off" value="WEB" readonly>
                        </div>
                    </div>
                    <!--<div class="text-center">-->
                    <!--    <input value="Checkout" type="submit" class="btn btn-primary"	onclick="">-->
                    <!--    <a href="../courses.php" class="btn btn-secondary">Cancel</a-->
                    <!--</div>-->
                </form>
                <!--<small class="form-text text-muted">Note: Complete Payment by Clicking Pay Now  Button</small>-->
            </div>
        </div>
    </div>




</body>
</html>

<?php 
}
 
?>