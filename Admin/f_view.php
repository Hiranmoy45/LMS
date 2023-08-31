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

?>

<div class="col-sm-9 mt-5">
<!-- Table -->
    <?php 
    if(isset($_GET['stu_id'])){
    $stuid=mysqli_real_escape_string($conn,$_GET['stu_id']);
    $sql = "SELECT * FROM student WHERE stu_id=$stuid";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    $stu_email=$row['stu_email'];
    $stu_name=$row['stu_name'];
    $amount="0";
    
    

}
    ?>
        <p class="bg-dark text-white p-2"><?php echo $stu_name;?> List of Courses </p>

    <?php
    
    $view="SELECT * FROM courseorder WHERE stu_email='$stu_email'";
    $result=$conn->query($view);
   

    
        if($result->num_rows > 0) {
    ?>
    <table class="table">
        <thead>
             <tr>
                <th scope="col">Course ID</th>
                <th scope="col">Name</th>
                <th scope="col">Author</th>
                <th scope="col">Status</th>
            </tr>
        </thead>
        <tbody>
        <?php 
        while($rowv = $result->fetch_assoc()){
                $course_ids=$rowv['course_id'];

            $sqls = "SELECT * FROM course WHERE course_id =$course_ids";
        $results = $conn->query($sqls);
        while($row = $results->fetch_assoc()){
        echo '<tr>';
        echo '<th scope="row">'.$course_ids.'</th>';
        echo '<td>'.$row['course_name'].'</td>';
        echo '<td>'.$row['course_author'].'</td>';
        
      echo '<td>'
                ?>
               <?php
$hiru=$rowv['permission'];
          if($hiru==1){
             ?>
              <a href='?userid=<?php echo $rowv["co_id"]; ?>&type=deactive' class="btn btn-success deactive">Active</a>
              <?php
              
          }else{
                  ?>
              <a href='?userid=<?php echo $rowv["co_id"]; ?>&type=active' class="btn btn-danger deactive">Deactive</a>
              <?php
             
          }
                
               echo '</td>
            </tr>';
            }
            }?>
        </tbody>
    </table>
    <?php  
        
        } else {
        echo "0 Result";
    } 
    if(isset($_REQUEST['delete'])){
    $sql = "DELETE FROM course WHERE course_id = {$_REQUEST['id']}";
    if($conn->query($sql) == TRUE){
        echo '<meta http-equiv="refresh" content="0;URL=?deleted"/>';
    }else {
        echo "Unable to Delete Data";
    }
    }
    
    
    
    
    ?>
</div>
</div>
<!-- div Row Close From Header -->
<div>
    <a href="./addCourse.php" class="btn btn-danger box">
        <i class="fas fa-plus fa-2x"></i>
    </a>
</div>
</div>
<!-- div Conatiner-fluid close from header -->
<?php
if(isset($_GET['id'])){
    $delete_id =$_GET['id'];
 
    $sql = "DELETE FROM course WHERE course_id ='$delete_id'";
    $result = $conn->query($sql);
    if($conn->query($sql) == TRUE){
        echo '<meta http-equiv="refresh" content="0;URL=?deleted" />';
    } else {
        echo "Unable to Delete Data";
    }
}

    ?>
    <?php
    if(isset($_GET['userid'])){
    $userid=mysqli_real_escape_string($conn,$_GET['userid']);
    $type=mysqli_real_escape_string($conn,$_GET['type']);
    if($type=='active'){
        $status=1;
    }else{
        $status=0;
    }
    mysqli_query($conn,"update courseorder set permission='$status' where co_id='$userid'");
     echo '<meta http-equiv="refresh" content="0;URL=./students" />';
}
    ?>

<?php
include('./admininclude/footer.php');
?>