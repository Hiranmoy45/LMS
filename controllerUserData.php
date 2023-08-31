<?php 
include('./maininclude/header.php');
require "connection.php";
$email = "";
$name = "";
$mobile = "";
$errors = array();

//if user signup button
if(isset($_POST['signup'])){
    $name = mysqli_real_escape_string($con, $_POST['name']);
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $password = mysqli_real_escape_string($con, $_POST['password']);
    $cpassword = mysqli_real_escape_string($con, $_POST['cpassword']);
    $mobile = mysqli_real_escape_string($con, $_POST['mobile']);
    if($password !== $cpassword){
        $errors['password'] = "Confirm password not matched!";
    }
    $email_check = "SELECT * FROM student WHERE stu_email = '$email'";
    $res = mysqli_query($con, $email_check);
    if(mysqli_num_rows($res) > 0){
        $errors['email'] = "Email that you have entered is already exist!";
    }
    if(count($errors) === 0){
        $encpass = password_hash($password, PASSWORD_BCRYPT);
        $code = rand(999999, 111111);
        $status = "notverified";
        $img_folder = './image/stu/user.png';
$insert_data = "INSERT INTO `student` (`stu_name`, `stu_email`, `stu_mobile`, `stu_pass`, `stu_occ`, `stu_img`, `code`, `status`,`BU`,`user_session_id`) VALUES ('$name', '$email', '$mobile', '$encpass','', '$img_folder', '$code', '$status','1','')";
$insertquery =  
$data_check = mysqli_query($con, $insert_data);
        if($data_check){
            $subject = "Email Verification Code";
            $message = "Your verification code is $code";
            $sender = "From: admin@sudipchakraborty.in";
            if(mail($email, $subject, $message, $sender)){
                $info = "We've sent a verification code to your email.In case if you don't see any email then please check your spam folder. - $email";
                $_SESSION['info'] = $info;
                $_SESSION['email'] = $email;
                $_SESSION['password'] = $password;
                
                ?>
                  <script>
                        location.replace("user-otp");
                    </script>
               
                <?php
                exit();
            }else{
                $errors['otp-error'] = "Failed while sending code!";
            }
        }else{
            $errors['db-error'] = "Failed while inserting data into database!";
        }
    }

}
    //if user click verification code submit button
    if(isset($_POST['check'])){
        $_SESSION['info'] = "";
        $otp_code = mysqli_real_escape_string($con, $_POST['otp']);
        $check_code = "SELECT * FROM student WHERE code = $otp_code";
        $code_res = mysqli_query($con, $check_code);
        if(mysqli_num_rows($code_res) > 0){
            $fetch_data = mysqli_fetch_assoc($code_res);
            $fetch_code = $fetch_data['code'];
            $email = $fetch_data['stu_email'];
            $code = 0;
            $status = 'verified';
            $update_otp = "UPDATE student SET code = $code, status = '$status' WHERE code = $fetch_code";
            $update_res = mysqli_query($con, $update_otp);
            if($update_res){
                 
                $_SESSION['name'] = $name;
                $_SESSION['email'] = $email;
               
                  $_SESSION['username'] = $username;
                  $_SESSION['is_login'] =true;
                  $_SESSION['stuLogEmail'] = $email;
                ?>
                 <script>
                    
                        location.replace("index");

                    </script>
               
                <?php
                exit();
            }else{
                $errors['otp-error'] = "Failed while updating code!";
            }
        }else{
            $errors['otp-error'] = "You've entered incorrect code!";
        }
    }

    //if user click login button
    if(isset($_POST['login'])){
        $email = mysqli_real_escape_string($con, $_POST['email']);
        $password = mysqli_real_escape_string($con, $_POST['password']);
        $check_email = "SELECT * FROM student WHERE stu_email = '$email'";
        $res = mysqli_query($con, $check_email);
        if(mysqli_num_rows($res)>0){
            $fetch = mysqli_fetch_assoc($res);
            $fetch_pass = $fetch['stu_pass'];
            if(password_verify($password, $fetch_pass)){
                $_SESSION['email'] = $email;
                $status = $fetch['status'];
                $username=$fetch['stu_name'];
                $BU=$fetch['BU'];
                if($status == 'verified'){
                    if($BU==1){
                        session_start();
                    session_regenerate_id();

                    $user_session_id = session_id();
                    
                                
                    $sql = "UPDATE `student` SET `user_session_id`='$user_session_id' WHERE `stu_email` = '$email'";
                    $con->query($sql);
                    

                    $_SESSION['user_session_id'] = $user_session_id;
                        
                  $_SESSION['email'] = $email;
                  $_SESSION['password'] = $password;
                  $_SESSION['username'] = $username;
                  $_SESSION['is_login'] =true;
                  $_SESSION['stuLogEmail'] = $email;

                  ?>
                  <script>
                   location.replace("index");
                  </script>
              
               <?php
                    }else{
                                        $errors['email'] = "You are blocked by the Admin";

                    }
                }else{
                    $info = "It's look like you haven't still verify your email - $email";
                    $_SESSION['info'] = $info;
                    $errors['email']="It's look like you haven't still verify your email - $email";
                    
                }
            }else{
                $errors['email'] = "Incorrect email or password!";
            }
        }else{
            $errors['email'] = "It's look like you're not yet a member! Click on the bottom link to signup.";
        }
    }

    //if user click continue button in forgot password form
    if(isset($_POST['check-email'])){
        $email = mysqli_real_escape_string($con, $_POST['email']);
        $check_email = "SELECT * FROM student WHERE stu_email='$email'";
        $run_sql = mysqli_query($con, $check_email);
        if(mysqli_num_rows($run_sql) > 0){
            $code = rand(999999, 111111);
            $insert_code = "UPDATE student SET code = $code WHERE stu_email = '$email'";
            $run_query =  mysqli_query($con, $insert_code);
            if($run_query){
                $subject = "Password Reset Code";
                $message = "Your password reset code is $code";
                $sender = "From: admin@sudipchakraborty.in";
                if(mail($email, $subject, $message, $sender)){
                    $info = "We've sent a passwrod reset otp to your email. In case if you don't see any email then please check your spam folder - $email";
                    $_SESSION['info'] = $info;
                    $_SESSION['email'] = $email;
                    ?>
                    <script>
                     location.replace("reset-code");
                    </script>
                
                 <?php
                  
                    exit();
                }else{
                    $errors['otp-error'] = "Failed while sending code!";
                }
            }else{
                $errors['db-error'] = "Something went wrong!";
            }
        }else{
            $errors['email'] = "This email address does not exist!";
        }
    }

    //if user click check reset otp button
    if(isset($_POST['check-reset-otp'])){
        $_SESSION['info'] = "";
        $otp_code = mysqli_real_escape_string($con, $_POST['otp']);
        $check_code = "SELECT * FROM student WHERE code = $otp_code";
        $code_res = mysqli_query($con, $check_code);
        if(mysqli_num_rows($code_res) > 0){
            $fetch_data = mysqli_fetch_assoc($code_res);
            $email = $fetch_data['stu_email'];
            $_SESSION['email'] = $email;
            $info = "Please create a new password that you don't use on any other site.";
            $_SESSION['info'] = $info;
            ?>
            <script>
             location.replace("new-password");
            </script>
        
         <?php
            
            exit();
        }else{
            $errors['otp-error'] = "You've entered incorrect code!";
        }
    }

    //if user click change password button
    if(isset($_POST['change-password'])){
        $_SESSION['info'] = "";
        $password = mysqli_real_escape_string($con, $_POST['password']);
        $cpassword = mysqli_real_escape_string($con, $_POST['cpassword']);
        if($password !== $cpassword){
            $errors['password'] = "Confirm password not matched!";
        }else{
            $code = 0;
            $email = $_SESSION['email']; //getting this email using session
            $encpass = password_hash($password, PASSWORD_BCRYPT);
            $update_pass = "UPDATE student SET code = $code, stu_pass = '$encpass' WHERE stu_email = '$email'";
            $run_query = mysqli_query($con, $update_pass);
            if($run_query){
                $info = "Your password changed. Now you can login with your new password.";
                $_SESSION['info'] = $info;
                ?>
                <script>
                 location.replace("password-changed");
                </script>
            
             <?php
                
            }else{
                $errors['db-error'] = "Failed to change your password!";
            }
        }
    }
    
   //if login now button click
    if(isset($_POST['login-now'])){
        ?>
        <script>
         location.replace("login-user");
        </script>
    
     <?php
       
    }
?>