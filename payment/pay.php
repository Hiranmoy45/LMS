<?php
require('config.php');
require('razorpay-php/Razorpay.php');
session_start();
if(!isset($_SESSION['stuLogEmail'])){
  echo "<script> location.href='../login-user.php'; </script>";
}
  

// Create the Razorpay Order

use Razorpay\Api\Api;

$api = new Api($keyId, $keySecret);

//
// We create an razorpay order using orders api
// Docs: https://docs.razorpay.com/docs/orders
//
// $price = $_POST['TXN_AMOUNT'];
// $_SESSION['TXN_AMOUNT'] = $price;
//  $courseId = $_POST['id_Course'];
//  $_SESSION['id_Course'] = $courseId;
// $email = $_POST['CUST_ID'];
// $_SESSION['CUST_ID'] = $email;
//

$course_name = $_SESSION['course_name'];
$price = $_SESSION['amt'];
$_SESSION['TXN_AMOUNT'] = $price;
$courseId = $_SESSION['course_id'];
$_SESSION['id_Course'] = $courseId;
$email = $_SESSION['stuLogEmail'];
$_SESSION['CUST_ID'] = $email;
// $contactno = $_POST['contactno'];
$orderData = [
    'receipt'         => 3456,
    'amount'          => $price * 100, // 2000 rupees in paise
    'currency'        => 'INR',
    'payment_capture' => 1 // auto capture
];

$razorpayOrder = $api->order->create($orderData);

$razorpayOrderId = $razorpayOrder['id'];

$_SESSION['razorpay_order_id'] = $razorpayOrderId;

$displayAmount = $amount = $orderData['amount'];

if ($displayCurrency !== 'INR')
{
    $url = "https://api.fixer.io/latest?symbols=$displayCurrency&base=INR";
    $exchange = json_decode(file_get_contents($url), true);

    $displayAmount = $exchange['rates'][$displayCurrency] * $amount / 100;
}

$data = [
    "key"               => $keyId,
    "amount"            => $amount,
    "name"              => "Dr.Sudip Chakraborty",
    "description"       => $course_name,
    "image"             => "https://sudipchakraborty.sgp1.digitaloceanspaces.com/user/images/Website%20Logo%20%281%29.png",
    "prefill"           => [
    // "name"              => $customername,
    "email"             => $email,
    // "contact"           => $contactno,
    ],
    "notes"             => [
    "address"           => "Hello World",
    "merchant_order_id" => "12312321",
    ],
    "theme"             => [
    "color"             => "red"
    ],
    "order_id"          => $razorpayOrderId,
];

if ($displayCurrency !== 'INR')
{
    $data['display_currency']  = $displayCurrency;
    $data['display_amount']    = $displayAmount;
}

$json = json_encode($data);
require("./checkout.php")
?>


<form action="verify.php" method="POST">
  <script
    src="https://checkout.razorpay.com/v1/checkout.js"
    data-key="<?php echo $data['key']?>"
    data-amount="<?php echo $data['amount']?>"
    data-currency="INR"
    data-name="<?php echo $data['name']?>"
    data-image="<?php echo $data['image']?>"
    data-description="<?php echo $data['description']?>"
    data-prefill.name="<?php echo $data['prefill']['name']?>"
    data-prefill.email="<?php echo $data['prefill']['email']?>"
    data-prefill.contact="<?php echo $data['prefill']['contact']?>"
    data-notes.shopping_order_id="3456"
    data-order_id="<?php echo $data['order_id']?>"
    <?php if ($displayCurrency !== 'INR') { ?> data-display_amount="<?php echo $data['display_amount']?>" <?php } ?>
    <?php if ($displayCurrency !== 'INR') { ?> data-display_currency="<?php echo $data['display_currency']?>" <?php } ?>
  >
  </script>
    <button class="btn btn-primary hiru">Pay Now</button>
  
  <!-- Any extra fields to be submitted with the form but not sent to Razorpay -->
  <input type="hidden" name="shopping_order_id" value="marbo">
</form>