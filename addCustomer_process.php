<?php
/**
 * Created by PhpStorm.
 * User: supun
 * Date: 12/28/2017
 * Time: 3:03 PM
 */

$dbhost = 'localhost';
$dbuser = 'Zupun';
$dbpass = 'shitHappens';
$dbname = 'cebms';
$connection = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);


$ID = $_POST['id'];
$branch_ID = $_POST['branch_id'];
$name = $_POST['name'];
$email = $_POST['email'];
$address = $_POST['address'];
$telephone = $_POST['telephone'];
$account_no = $_POST['account_no'];

$query1 = 'insert into customer values($ID,$branch_ID,$name,$email,$address,$telephone)';


mysqli_query($connection,$query1);


?>