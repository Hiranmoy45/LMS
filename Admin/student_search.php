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

<div class="col-sm-9 mt-5 mx-3">
    <form action="" class="mt=3 form-inline d-print-none">
        <div class="form-group mr-3">
            <label for="checkid">Enter Email:</label>
            <input type="text" class="form-control ml-3" id="checkid" name="checkid">
        </div>
        <button type="submit" class="btn btn-danger">Search</button>
    </form>
    <?php
    if(isset($_GET['checkid'])){
    $stuid=mysqli_real_escape_string($conn,$_GET['checkid']);
         
         
     }
        $sql = "SELECT stu_email FROM student";
        $result = $conn->query($sql);
        $num=0;
        while($row = $result->fetch_assoc()){
            $num++;

            if(isset($_REQUEST['checkid']) && $_REQUEST['checkid'] == $row['stu_email']){
                $sql = "SELECT * FROM student WHERE stu_email = '{$_REQUEST['checkid']}'";
                $result = $conn->query($sql);
                $row = $result->fetch_assoc();
                if(($row['stu_email']) == $_REQUEST['checkid']){
                   $_SESSION['course_id'] = $row['stu_email'];
                   $_SESSION['course_name'] = $row['stu_name'];
                   ?>
                   <h3 class="mt-5 bg-dark text-white p-2">
                        Student List:
                   </h3>
                   <?php
                    $sql = "SELECT * FROM student WHERE stu_email ='{$_REQUEST['checkid']}'";
                    $result = $conn->query($sql);
                    echo '<table class="table">
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
                    <tbody>';
                    
                    while($row = $result->fetch_assoc()){
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
                }
               
                if(isset($_REQUEST['delete'])){
                    $sql = "DELETE FROM lesson WHERE lesson_id = {$_REQUEST['id']}";
                    if($conn->query($sql) == TRUE){
                        echo '<meta http-equiv="refresh" content="0;URL=?deleted"/>';
                    }else {
                        echo "Unable to Delete Data";
                    }
                }
            }
        
    ?>
</div>
<?php
if(isset($_POST['free'])){
    echo '<div class="alert alert-dark mt-4" role="alert">Course Not Found !</div>';
}
?>
<?php 
    if(isset($_SESSION['course_id'])){
        echo '<div>
                    <a href="./addLesson.php" class="btn btn-danger box"> 
                        <i class="fas fa-plus fa-2x"></i>
                    </a>
                </div>';
    }
?>



<?php
include('./admininclude/footer.php');
?>