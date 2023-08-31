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
$sql = "SELECT * FROM course";
$result = $conn->query($sql);
$totalcourse = $result->num_rows;

$sql = "SELECT * FROM student";
$result = $conn->query($sql);
$totalstu = $result->num_rows;

$sql = "SELECT * FROM courseorder";
$result = $conn->query($sql);
$totalsold = $result->num_rows;
?>


        <div class="col-sm-9 mt-5">
            <div class="row mx-5 text-center">
                <div class="col-sm-4 mt-5">
                    <div class="card text-white bg-danger mb-3" style="max-width:18rem;">
                        <div class="card-header">Courses</div>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <?php echo $totalcourse; ?>
                                </h4>  
                                <a href="courses.php" class="btn text-white">View</a> 
                            </div>
                    </div>
                </div>
                <div class="col-sm-4 mt-5">
                    <div class="card text-white bg-success mb-3" style="max-width:18rem;">
                        <div class="card-header">Student</div>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <?php echo $totalstu; ?>
                                </h4>  
                                <a href="students.php" class="btn text-white">View</a> 
                            </div>
                    </div>
                </div>
                <div class="col-sm-4 mt-5">
                    <div class="card text-white bg-info mb-3" style="max-width:18rem;">
                        <div class="card-header">Sold</div>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <?php echo $totalsold; ?>
                                </h4>  
                                <a href="sellReport.php" class="btn text-white">View</a> 
                            </div>
                    </div>
                </div>
            </div>
            <div class="mx-5 mt-5 text-center">
            <!-- Table -->
                <p class="bg-dark text-white p-2">Courses Ordered</p>
                <?php
                $sql = "SELECT * FROM courseorder";
                $result = $conn->query($sql);
                if($result->num_rows > 0){
                    echo '
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Order ID</th>
                                <th scope="col">Course ID</th>
                                <th scope="col">Name</th>
                                <th scope="col">Student Email</th>
                                <th scope="col">Order Date</th>
                                <th scope="col">Amount</th>
                                <th scope="col">Action</th>
                                <th scope="col">Status</th>
                            </tr>
                        </thead>
                        <tbody>';
                        while($row = $result->fetch_assoc()){
                            echo '<tr>';
                            echo '<th scope="row">'.$row["order_id"].'</th>';
                            echo '<td>'.$row["course_id"].'</td>';
                            echo '<td>'.$row["stu_name"].'</td>';
                            echo '<td>'.$row["stu_email"].'</td>';
                            echo '<td>'.$row["order_date"].'</td>';
                            echo '<td>'.$row["amount"].'</td>';
                            echo '<td><a  class="delete-confirm" href="adminDashboard.php?id='.$row["co_id"].'"><i class="fas fa-trash"></i></a></td>';
                                echo '<td>'
                ?>
               <?php
$hiru=$row['permission'];
          if($hiru==1){
             ?>
              <a href='?userid=<?php echo $row["co_id"]; ?>&type=deactive' class="btn btn-success deactive">Active</a>
              <?php
              
          }else{
                  ?>
              <a href='?userid=<?php echo $row["co_id"]; ?>&type=active' class="btn btn-danger deactive">Deactive</a>
              <?php
             
          }
                
               echo '</td>

            </tr>';
            } ?>
            <?php
                        echo '</tbody>
                    </table>';
                } else {
                    echo "0 Result";
                }
               
                ?>
                 <form class="d-print-none">
                                        <input type="submit" class="btn btn-danger" value="Print" onclick="window.print()">
                                    </form>
            </div>
        </div>
    </div>
</div>

</div> <!-- Div Row Close From Header -->
</div> <!-- Div Conatiner-fluid Close From Header -->

<?php
if(isset($_GET['id'])){
    $delete_id =$_GET['id'];
 
    $sql = "DELETE FROM courseorder WHERE co_id ='$delete_id'";
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
     echo '<meta http-equiv="refresh" content="0;URL=?status_Updated" />';
}
    ?>

<?php
include('./admininclude/footer.php');
?>