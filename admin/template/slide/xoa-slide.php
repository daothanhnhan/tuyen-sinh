<?php 
	$id = $_GET['id'];
	$sql = "SELECT * FROM slide WHERE id = $id";echo $sql;
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$khoa_id = $row['khoa_id'];var_dump($khoa_id);

	$sql = "DELETE FROM slide WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=slide&khoa_id='.$khoa_id);
?>