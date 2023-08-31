<?php

require('config.php');
session_start();
//db connection
$conn = mysqli_connect($host, $username, $password, $dbname);

require('razorpay-php/Razorpay.php');
use Razorpay\Api\Api;
use Razorpay\Api\Errors\SignatureVerificationError;

$success = true;

$error = "Payment Failed";

if (empty($_POST['razorpay_payment_id']) === false)
{
    $api = new Api($keyId, $keySecret);

    try
    {
        // Please note that the razorpay order ID must
        // come from a trusted source (session here, but
        // could be database or something else)
        $attributes = array(
            'razorpay_order_id' => $_SESSION['razorpay_order_id'],
            'razorpay_payment_id' => $_POST['razorpay_payment_id'],
            'razorpay_signature' => $_POST['razorpay_signature']
        );

        $api->utility->verifyPaymentSignature($attributes);
    }
    catch(SignatureVerificationError $e)
    {
        $success = false;
        $error = 'Razorpay Error : ' . $e->getMessage();
    }
}

if ($success === true)
{
    $razorpay_order_id = $_SESSION['razorpay_order_id'];
    $razorpay_payment_id = $_POST['razorpay_payment_id'];
    $email = $_SESSION['CUST_ID'];
    $price = $_SESSION['TXN_AMOUNT'];
    $courseId = $_SESSION['id_Course'];
    $studentname=$_SESSION['stuLogName'];
    date_default_timezone_set('Australia/Melbourne');
    $date = date('Y-m-d');
    $sql = "INSERT INTO `courseorder` ( `order_id`,`stu_name`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`,`permission`) VALUES ( '$razorpay_payment_id','$studentname', '$email', '$courseId', 'success', 'Yes', '$price', '$date','1');";
    if(mysqli_query($conn, $sql)){
            $subject = "Payment Successfully";
            $message = "Dear $studentname, thankyou for buying Course ";
            $sender = "From: admin@sudipchakraborty.in";
            mail($email, $subject, $message, $sender);
    }
    ?>

    <script>
    location.replace("../student/myCourse.php");
</script>
    <?php
}
else
{
    $html = "<p>Your payment failed</p>
             <p>{$error}</p>";
}

echo $html;
?>