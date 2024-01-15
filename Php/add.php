<?php
include("conf.php");

    $name=$_REQUEST['name'];
    $contact=$_REQUEST['contact'];
    $user=$_REQUEST['user'];
    $password=$_REQUEST['password'];
    $city=$_REQUEST['city'];
    $image=$_REQUEST['image'];

    // $qur="SELECT * FROM conbook WHERE user=$user or contact=$contact";
    // $result = mysqli_query($conn,$qur);
    // if(mysqli_num_rows($result)== 0){
        $qur="INSERT INTO conbook VALUES(null,'$name','$contact','$user','$password','$city','$image')";
        $result=mysqli_query($conn,$qur);
        $a=array();
        while($row=mysqli_fetch_array($result)){
        $a[]=$row;    

        }
        echo json_encode($a);
    // }
?>