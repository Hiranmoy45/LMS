<?php
 $page_title="Dr.Sudip Chakraborty - India's largest learning platform";
 $meta_description="this is description ";
 $meta_keywords="this is keywords";
include('./admininclude/header.php');
include('../dbconnection.php');

?>
  

    
        <section class="notification-section" style="width:80%;">
                   <p class="bg-dark text-white p-2">List of Notification</p>
            <?php
    $sql = "SELECT * FROM upcomingevent";
    $result = $conn->query($sql);

    if($result->num_rows > 0){
         while($row = $result->fetch_assoc()){

             
            echo '<div class="noti-area">

                <div class="upper-d">
                    <span><span class="noti-date">'.$row['upcoming_date'].':</span><span><img class="new-icon" src="../image/new.svg"
                                alt=""></span><span class="subject-noti">'.$row['event_name'].' </span></span>
                </div>
                <div class="lower-d">
                    <span>'.$row['event_desc'].'</span>
                </div>
                <a  class="delete-confirm btn btn-secondary" href="eventshow.php?id='.$row["id"].'"><i class="fas fa-trash"></i></a>
            </div>';
         }
    }else{
        echo "No Data Found";
    }
    ?>
                  </section>
                  <div>
    <a href="./addevent" class="btn btn-danger box">
        <i class="fas fa-plus fa-2x"></i>
    </a>
</div>
<?php
if(isset($_GET['id'])){
    $delete_id =$_GET['id'];
 
    $sql = "DELETE FROM upcomingevent WHERE id ='$delete_id'";
    $result = $conn->query($sql);
    if($conn->query($sql) == TRUE){
        echo '<meta http-equiv="refresh" content="0;URL=?deleted" />';
    } else {
        echo "Unable to Delete Data";
    }
}

    ?>

<?php
include('./admininclude/footer.php');
?>