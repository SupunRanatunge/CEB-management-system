<?php
include ('db_connect.php');
?>

<!DOCTYPE html>
<html>
<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=int], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
        display: block;
        float: none;
    }
    .cancelbtn {
        width: 100%;
    }
}
</style>
<body>

<h2>Login Form</h2>

<form action="login.php">


  <div class="container">
    <label><b>User ID</b></label>
    <input type="int" placeholder="Enter User ID" name="id" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
      <form action="#" name="citizen" method="post" required>
          <input type="radio" name="citizen" value="customer" required>Customer
          <input type="radio" name="citizen" value="employee" required>Employee<br>
      </form>
      <button type="submit">Login</button>
    <input type="checkbox" checked="checked"> Remember me
</div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn"><a href="index.php">Cancel</a></button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
<?php

$user_id = $_POST["id"];
$password = $_POST["psw"];
$citizen = $_POST["citizen"];

$query1 = "select * from customer_credentials where ID==='$user_id' and password==='$password'";
$query2 = "select * from employee_credentials where ID==='$user_id' and password==='$password'";

if ($citizen==='customer'){
    if(!mysqli_query($connection,$query1)){
        die("Your password is incorrect");
    }



}
?>

</body>
</html>
