<?php

if(!isset($_SESSION)){
    session_start();
}

include_once('../dbconnection.php');


// Admin Login Verification
if(!isset($_SESSION['is_admin_login'])){
    if(isset($_POST['checkLogemail']) && isset($_POST['adminLogEmail']) && isset($_POST['adminLogPass'])){
        $adminLogEmail = mysqli_real_escape_string($conn, $_POST['adminLogEmail']);
    $adminLogPass = mysqli_real_escape_string($conn, $_POST['adminLogPass']);
        
        
        
        //     $check_email = "SELECT * FROM admin WHERE admin_email = '$adminLogEmail'";
        // $res = mysqli_query($con, $check_email);
        
        //   if(mysqli_num_rows($res)>0){
        //     $fetch = mysqli_fetch_assoc($res);
        //     $fetch_pass = $fetch['admin_pass'];
        //     if($fetch_pass==$adminLogPass){
        //          $_SESSION['is_admin_login'] = true;
        //  $_SESSION['adminLogEmail'] = $adminLogEmail;
        //  echo json_encode($res);
             
             
        //     }else{
        //         $errors['email'] = "Incorrect email or password!";
        //     }
        // }else{
        //     $errors['email'] = "It's look like you're not yet a Admin! ";
        // }
        
        

        $sql = "SELECT admin_email, admin_pass FROM admin WHERE admin_email = '".$adminLogEmail."' AND admin_pass= '".$adminLogPass."'";

        $result = $conn->query($sql); 
        $row = $result->num_rows;

        if($row == 1){
            $_SESSION['is_admin_login'] = true;
            $_SESSION['adminLogEmail'] = $adminLogEmail;
            echo json_encode($row);
        } else if($row == 0){
            
echo '<script>alert("Welcome to Geeks for Geeks")</script>';
        }
    }
}

?>