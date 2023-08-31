<?php 

//check_login.php

include 'connection.php';

session_start();

$query = "
	SELECT user_session_id FROM student 
	WHERE stu_email = '".$_SESSION['email']."'
";

$result = $con->query($query);

foreach($result as $row)
{
    if($_SESSION['is_login']){
	if($_SESSION['user_session_id'] != $row['user_session_id'])
	{
		$data['output'] = 'logout';
	}
	else
	{
		$data['output'] = 'login';
	}
}
}

echo json_encode($data);

?>