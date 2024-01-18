<?php
include("conf.php");

$qur="SELECT * FROM conbook";
$result=mysqli_query($conn,$qur);

$arr=array();
while($row=mysqli_fetch_array($result)){
    $arr[]=$row;
}
echo json_encode($arr);

?>