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

if(isset($_REQUEST['newStuSubmitBtn'])){
    // Checking For Empty Field
    if(($_REQUEST['Event_name'] == "") || ($_REQUEST['Event_desc'] == "") || ($_REQUEST['upcoming_date'] == "")){
       $msg = '<div class="alert alert-warning col-sm-6 ml-5 mt-2">Fill All Fields</div>';
    } else {
        $event_name = $_REQUEST['Event_name'];
        $event_desc = $_REQUEST['Event_desc'];
        $upcoming_date = $_REQUEST['upcoming_date'];
    
        $sql = "INSERT INTO upcomingevent (event_name,event_desc,upcoming_date) 
         VALUES ('$event_name','$event_desc', '$upcoming_date')";
        //   $sql = "UPDATE upcomingevent SET event_name = '$event_name', upcoming_date= '$upcoming_date' WHERE id = '1'";
        

         if($conn->query($sql) == TRUE) {
            $msg = '<div class="alert alert-success col-sm-6 ml-5 mt-2">Upcoming event Updated Succesfully</div>';
         } else {
            $msg = '<div class="alert alert-danger col-sm-6 ml-5 mt-2">Unable to Update Upcoming Event</div>';
         }
    }

}



?>

<div class="col-sm-6 mt-5 mx-3 jumbotron">
    <h3 class="text-center">Add New Notification</h3>
    <form action="" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="Event_name">Upcoming Event Name</label>
            <input type="text" class="form-control" id="Event_name" name="Event_name" value="">
        </div>
        <div class="form-group">
            <label for="Event_desc">Event Description</label>
            <input type="text" class="form-control" id="Event_desc" name="Event_desc" value="">
        </div>
       
        <div class="form-group">
            <label for="upcoming_date">Today Date:</label>  
            <input type="date" class="form-control" id="upcoming_date" name="upcoming_date">        
        </div>
              
               <div class="text-center">
            <button type="submit" class="btn btn-danger" id="newStuSubmitBtn" name="newStuSubmitBtn">Submit</button>
            <a href="eventshow.php" class="btn btn-secondary">Close</a>
        </div>
        <?php if(isset($msg)) {echo $msg;} ?>
    </form>
</div>
</div> <!-- div row close from header -->
</div> <!-- div conatiner-fluid close from headder -->


<?php
include('./admininclude/footer.php');
?>