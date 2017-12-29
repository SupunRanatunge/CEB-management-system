<?php
/**
 * Created by PhpStorm.
 * User: supun
 * Date: 12/28/2017
 * Time: 3:03 PM
 */

include ('db_connect.php');


$ID = $_POST['id'];
$branch_ID = $_POST['branch_id'];
$name = $_POST['name'];
$address = $_POST['address'];
$account_no = $_POST['account_no'];
$email = $_POST['email'];
$telephone = $_POST['telephone'];
$connection_type = $_POST['connection_type'];
$password = $_POST['password'];
$confirm_password = $_POST['confirm_password'];


$query1 = "INSERT INTO customer VALUES ($ID,$branch_ID,'$name','$address',$account_no,'$email',$telephone)";

if($password === $confirm_password){
    if(!mysqli_query($connection,$query1)){
        die('error inserting new record');

    }else{
        echo('successfully inserted');
    }

}


?>