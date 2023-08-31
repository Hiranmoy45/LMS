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
    <p class="bg-dark text-white p-2">List of Students</p>
    <?php 
        $sql = "SELECT * FROM student";
        $result = $conn->query($sql);
        if($result->num_rows > 0) {
    ?>
    <table class="table">
        <thead>
             <tr>
                <th scope="col">Student No</th>
                <th scope="col">Name</th>
                <th scope="col">Mobile</th>
                <th scope="col">Email</th>
                <th scope="col">Free Access</th>
                <th scope="col">Access Course</th>
                <th scope="col">Edit</th>
                <th scope="col">Delete</th>
                <th scope="col">Control user</th>
                <th scope="col">Email Verification</th>
            </tr>
        </thead>
        <tbody>
        <?php 
        $num=0;
        while($row = $result->fetch_assoc()){
             $num++;
        echo '<tr>';
        echo '<th scope="row">'.$num.'</th>';
        echo '<td>'.$row['stu_name'].'</td>';
        echo '<td>'.$row['stu_mobile'].'</td>';
        echo '<td>'.$row['stu_email'].'</td>';
        echo '<td>';
        ?>
   <a href="./f_add?stu_id=<?php echo $row['stu_id'];?>">
      
   <i class="fas fa-plus fa-2x"></i>

   </a>
    <?php
    echo '</td>';
       echo '<td>';
        ?>
   <a href="./f_view?stu_id=<?php echo $row['stu_id'];?>" class="btn btn-secondary">
      
<i class="fa fa-eye" aria-hidden="true"></i>

   </a>
    <?php
    echo '</td>';
        echo '<td>';
        echo '
            <form action="editstudent.php" method="POST" class="d-inline">
                <input type="hidden" name="id" value='.$row["stu_id"].'>
                <button type="submit" class="btn btn-info mr-3" name="view" value="view">
                    <i class="fas fa-pen"></i>
                </button>
            </form>
            <td>
                     <a  class="delete-confirm btn btn-secondary" href="students.php?id='.$row["stu_id"].'"><i class="fas fa-trash"></i></a>
            
                </td>';
             echo '<td>'
               
                ?>
               <?php
               
$hiru=$row['BU'];
          if($hiru==1){
             ?>
              <a href='?userid=<?php echo $row["stu_id"]; ?>&type=deactive' class="btn btn-success deactive">Active</a>
              <?php
              
          }else{
                  ?>
              <a href='?userid=<?php echo $row["stu_id"]; ?>&type=active' class="btn btn-danger deactive">Deactive</a>
              <?php
             
          }
                
               echo '</td>';
                  echo '<td>'
                ?>
               <?php
$hiru=$row['status'];
          if($hiru=="verified"){
             ?>
              <a href="javascript:void(0)" class="btn btn-success" style="cursor: not-allowed;">Verified</a>
              <?php
              
          }else{
                  ?>
              <a href='?stuid=<?php echo $row["stu_id"]; ?>&type=verified' class="btn btn-danger deactive">Notverified</a>
              <?php
             
          }
                
               echo '</td>

            </tr>';
            } ?>
        </tbody>
    </table>
    <?php  } else {
        echo "0 Result";
    } 
   
    
    ?>
</div>
</div>
<!-- div Row Close From Header -->
<!--<div>-->
<!--    <a href="./addnewstudent.php" class="btn btn-danger box">-->
<!--        <i class="fas fa-plus fa-2x"></i>-->
<!--    </a>-->
<!--</div>-->
<form class="d-print-none">
                                        <input type="submit" class="btn btn-danger" value="Print" onclick="window.print()">
                                    </form>
</div>

<!-- div Conatiner-fluid close from header -->
<?php
if(isset($_GET['id'])){
    $delete_id =$_GET['id'];
 
    $sql = "DELETE FROM student WHERE stu_id ='$delete_id'";
    $result = $conn->query($sql);
    if($conn->query($sql) == TRUE){
        echo '<meta http-equiv="refresh" content="0;URL=?deleted" />';
    } else {
        echo "Unable to Delete Data";
    }
}

if(isset($_GET['userid'])){
    $userid=mysqli_real_escape_string($conn,$_GET['userid']);
    $type=mysqli_real_escape_string($conn,$_GET['type']);
    if($type=='active'){
        $status=1;
    }else{
        $status=0;
    }
    mysqli_query($conn,"update student set BU='$status' where stu_id='$userid'");
     echo '<meta http-equiv="refresh" content="0;URL=?status_Updated" />';
}

if(isset($_GET['stuid'])){
    $stuid=mysqli_real_escape_string($conn,$_GET['stuid']);
    $type=mysqli_real_escape_string($conn,$_GET['type']);
    if($type=='verified'){
        $status=verified;
    }else{
        $status=notverified;
    }
    mysqli_query($conn,"update student set status='$status' where stu_id='$stuid'");
     echo '<meta http-equiv="refresh" content="0;URL=?status_Updated" />';
}
    ?>

<?php
include('./admininclude/footer.php');
?>