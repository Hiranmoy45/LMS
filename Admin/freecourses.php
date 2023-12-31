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
    <p class="bg-dark text-white p-2">List of Free Courses</p>
    <?php 
        $sql = "SELECT * FROM freecourse";
        $result = $conn->query($sql);
        if($result->num_rows > 0) {
    ?>
    <table class="table">
        <thead>
             <tr>
                <th scope="col">Course ID</th>
                <th scope="col">Name</th>
                <th scope="col">Author</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
        <?php 
        while($row = $result->fetch_assoc()){
        echo '<tr>';
        echo '<th scope="row">'.$row['course_id'].'</th>';
        echo '<td>'.$row['course_name'].'</td>';
        echo '<td>'.$row['course_author'].'</td>';
        echo '<td>';
        echo '
            <form action="editfreecourse.php" method="POST" class="d-inline">
                <input type="hidden" name="id" value='.$row["course_id"].'>
                <button type="submit" class="btn btn-info mr-3" name="view" value="view">
                                    <i class="fas fa-pen"></i>
                </button> </form>
           <a  class="delete-confirm btn btn-secondary" href="freecourses.php?id='.$row["course_id"].'"><i class="fas fa-trash"></i></a>
                </td>
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
<div>
    <a href="./addfreeCourse.php" class="btn btn-danger box">
        <i class="fas fa-plus fa-2x"></i>
    </a>
</div>
</div>
<!-- div Conatiner-fluid close from header -->
<?php
if(isset($_GET['id'])){
    $delete_id =$_GET['id'];
 
    $sql = "DELETE FROM freecourse WHERE course_id ='$delete_id'";
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