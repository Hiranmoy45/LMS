<?php
    if(!isset($_SESSION)){
        session_start();
    }

    include('./admininclude/header.php');
    include('../dbconnection.php');

    if(isset($_SESSION['is_admin_login'])){
        $adminEmail = $_SESSION['adminLogEmail'];
    } else {
        echo "<script> location.href='../index.php'; </script>";
    }

    $adminEmail = $_SESSION['adminLogEmail'];
    if(isset($_REQUEST['adminPassUpdatebtn'])){
        $oldpassword = $_POST['adminoPass'];
     if(($_REQUEST['adminPass'] == "" || $_REQUEST['adminoPass'] == "")){
            // msg display if required field missing
            $passmsg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2" role="alert">Fill All Fields</div>';
        } else {
            $sql = "SELECT * FROM admin WHERE admin_email='$adminEmail'";
            $result = $conn->query($sql);
          $row  = mysqli_fetch_assoc($result);
            $opass = $row['admin_pass'];
            if(($oldpassword==$opass)){
                if($result->num_rows == 1){
                    $adminPass = $_REQUEST['adminPass'];
                    $sql = "UPDATE admin SET admin_pass = '$adminPass' WHERE admin_email = '$adminEmail'";
                    if($conn->query($sql) == TRUE){
                        // below msg display on form submit success
                        $passmsg = '<div class="alert alert-success col-sm-6 ml-5 mt-2" role="alert">Updated Successfully</div>';
                    } else {
                        // below msg display on form submit Failed
                        $passmsg = '<div class="alert alert-success col-sm-6 ml-5 mt-2" role="alert">Unable to Update</div>';
                    }
                }
            }else{
            $passmsg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2" role="alert">Old Password not Match!!</div>';

            }
          
        }

    }
?>

<div class="col-sm-9 mt-5">
    <div class="row">
        <div class="col-sm-6">
            <form action="" method="post" class="mt-5 mx-5">
                <div class="form-group">
                    <label for="inputEmail">Email</label>
                    <input type="email" class="form-control" id="inputEmail" name="inputEmail" value="<?php echo $adminEmail ?> " readonly>
                </div>
                <div class="form-group">
                    <label for="inputnewpassword">Old Password</label>
                    <input type="password" class="form-control" id="inputnewpassword" placeholder="Old Password" name="adminoPass">
                </div>
                <div class="form-group">
                    <label for="inputnewpassword">New Password</label>
                    <input type="password" class="form-control" id="inputnewpassword" placeholder="New Password" name="adminPass">
                </div>
                    <button type="submit" class="btn btn-danger mr-4 mt-4" name="adminPassUpdatebtn">Update</button>
                    <button type="reset" class="btn btn-secondary mt-4">Reset</button>
                    <?php if(isset($passmsg)) {echo $passmsg;}  ?>
                
            </form>
        </div>
    </div>

</div>

</div> <!-- div Row Close From Header -->
</div> <!-- div Row Conatiner-Fluid From Header -->

<?php
include('./admininclude/footer.php');
?>