<?php
/**
 * Created by PhpStorm.
 * User: supun
 * Date: 12/30/2017
 * Time: 12:24 AM
 */

include('db_connect.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ceylon Electricity Board</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {

            margin-bottom: 0;
            border-radius: 0;
        }
        .navbar-body {

            padding-top: 30px;
            padding-left: 500px;
            padding-bottom: 200px;
        }

        /* Add a gray background color and some padding to the footer */
        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }

        .carousel-inner img {
            width: 100%; /* Set width to 100% */
            margin: auto;
            min-height:200px;
        }

        /* Hide the carousel text when the screen is less than 600 pixels wide */
        @media (max-width: 600px) {
            .carousel-caption {
                display: none;
            }
        }
    </style>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Logo</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.php">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="addCustomer.php">Add Customer</a></li>
                <li><a href="viewCustomer.php">View Customer</a></li>
                <li><a href="addEmployee.php">Add Employee</a></li>
                <li><a href="#">View Employee</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
    </div>
</nav>
<nav class="navbar" >
    <div class="navbar-body">
        <form action="addEmployee.php" method="post">
            ID:
            <input type="int" placeholder="xxxx" name="id" >
            <br><br>
            Branch ID    :
            <input type="int" placeholder="xxxx" name="branch_id" >
            <br><br>
            Name    :
            <input type="text" placeholder="Zupun" name="name" ><br><br>
            Email:
            <input type="text" placeholder="supun@gmail.com" name="email"><br><br>

            Telephone:
            <input type="int" placeholder="xxxxxxxxxx" name="telephone"><br><br>

            Post:
            <select name="post">
                <option value="manager">Manager</option>
                <option value="cashier">Cashier</option>
                <option value="meter_reader">Meter Reader</option>
                
            </select><br><br>
            Password:
            <input type="text" placeholder="xxxxxxxx" name="password"><br><br>
            Confirm Password:
            <input type="text" placeholder="xxxxxxxx" name="confirm_password"><br><br>

            <input type="submit" name="submitted" value="Submit">
        </form>
    </div>
</nav>
<?php
//taking customer details entered at the browser
$ID = $_POST['id'];
$branch_ID = $_POST['branch_id'];
$name = $_POST['name'];


$email = $_POST['email'];
$telephone = $_POST['telephone'];
$post = $_POST['post'];
$password = $_POST['password'];
$confirm_password = $_POST['confirm_password'];

//queries
$query1 = "INSERT INTO employee VALUES ($ID,$branch_ID,'$name','$email',$telephone)";
$query2 = "INSERT INTO meter_reader VALUES ($ID)";
$query3 = "INSERT INTO cashier VALUES ($ID)";
$query4 = "INSERT INTO manager VALUES ($ID)";

$query5 = "INSERT INTO employee_credentials VALUES ($ID,'$password')";


if($password === $confirm_password){
    if(!mysqli_query($connection,$query1)){
        die('error inserting new record');

    }else{

        echo "<script>alert('record inserted successfully');</script>";
        mysqli_query($connection,$query5);
        if($post==='meter_reader'){
            mysqli_query($connection,$query2);
        }elseif ($connection_type==='cashier'){
            mysqli_query($connection,$query3);
        }elseif ($connection_type==='manager'){
            mysqli_query($connection,$query4);
        }
    }

}else{
    echo "<script>alert('Passwords don\'t match');</script>";

}



?>

</body>
</html>