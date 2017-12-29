<?php
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
                <li><a href="#">Add Employee</a></li>
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
        <form action="addCustomer.php" method="post">
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
            Address:
            <input type="text" placeholder="No 221B/Baker street/London" name="address"><br><br>
            Telephone:
            <input type="int" placeholder="xxxxxxxxxx" name="telephone"><br><br>
            Account No:
            <input type="int" placeholder="xxxxxxxx" name="account_no"><br><br>
            Connection Type:
            <select name="connection_type">
                <option value="domestic">Domestic</option>
                <option value="government">Government</option>
                <option value="industrial">Industrial</option>
                <option value="religious">Religious</option>
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
$query2 = "INSERT INTO domestic VALUES ($ID)";
$query3 = "INSERT INTO government VALUES ($ID)";
$query4 = "INSERT INTO industrial VALUES ($ID)";
$query5 = "INSERT INTO religious VALUES ($ID)";
$query6 = "INSERT INTO customer_credentials VALUES ($ID,'$password')";

if($password === $confirm_password){
    if(!mysqli_query($connection,$query1)){
        die('error inserting new record');

    }else{

        echo "<script>alert('record inserted successfully');</script>";
        mysqli_query($connection,$query6);
        if($connection_type==='domestic'){
            mysqli_query($connection,$query2);
        }elseif ($connection_type==='government'){
            mysqli_query($connection,$query3);
        }elseif ($connection_type==='industrial'){
            mysqli_query($connection,$query4);
        }elseif ($connection_type==='religious') {
            mysqli_query($connection, $query5);
        }
    }

}else{
    echo "<script>alert('Passwords don\'t match');</script>";

}



?>

</body>
</html>