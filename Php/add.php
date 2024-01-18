<?php
include("conf.php");

$name = $_REQUEST['name'];
$contact = $_REQUEST['contact'];
$user = $_REQUEST['user'];
$password = $_REQUEST['password'];
$city = $_REQUEST['city'];
$image = $_REQUEST['image'];

$dest = "images/" . rand(0, 10000) . ".jpg";
$image = base64_encode($image);
file_put_contents($dest, $image);

$qur = "INSERT INTO conbook VALUES(null,'$name','$contact','$user','$password','$city','$dest')";
$result = mysqli_query($conn, $qur);

if ($result) {
    echo "done";
    $a = array();
        $a['res'] = "done";
    echo json_encode($a);
}
else echo "not done";
