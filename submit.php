<?php
include('database.inc.php');
$msg="";
$emails="sudip2205@gmail.com";

if(isset($_POST['name']) && isset($_POST['email']) && isset($_POST['mobile']) && isset($_POST['comment'])){
	$name=mysqli_real_escape_string($con,$_POST['name']);
	$email=mysqli_real_escape_string($con,$_POST['email']);
	$mobile=mysqli_real_escape_string($con,$_POST['mobile']);
	$comment=mysqli_real_escape_string($con,$_POST['comment']);
	
	mysqli_query($con,"insert into contact_us(name,email,mobile,comment) values('$name','$email','$mobile','$comment')");
	$msg="Thank you!";	
	$htmls="Name : $name , Email: $email,  Mobile : $mobile, Comment : $comment";
	$subject = "Contact you";
           $sender = "From: contact@sudipchakraborty.in";

	if(mail($emails,$subject,$htmls, $sender)){
		echo "Mail send .";
	}	
	echo $msg;
}
?>