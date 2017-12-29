<?php
/**
 * Created by PhpStorm.
 * User: supun
 * Date: 12/28/2017
 * Time: 10:39 PM
 */

$dbhost = 'localhost';
$dbuser = 'Zupun';
$dbpass = 'shitHappens';
$dbname = 'cebms';
$connection = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);

if(!$connection){
    die('connection is not set');
}
?>