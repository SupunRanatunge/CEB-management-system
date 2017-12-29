<?php
/**
 * Created by PhpStorm.
 * User: supun
 * Date: 12/29/2017
 * Time: 11:42 PM
 */
include ('db_connect.php');

$query7 = "select * from customer";
$result = mysqli_query($connection,$query7);

?>
<table border="2">
    <thead>
    <tr>
        <th>ID</th>
        <th>Branch ID</th>
        <th>Name</th>
        <th>Address</th>
        <th>Account No.</th>
        <th>Email</th>
        <th>Contact No.</th>
    </tr>
    </thead>
    <tbody>
    <?php
    if( mysqli_num_rows( $result )==0 ){
        echo '<tr><td colspan="7">No Rows Returned</td></tr>';
    }else{
        while( $row = mysqli_fetch_assoc( $result ) ){
            echo "<tr><td>{$row['ID']}</td><td>{$row['branch_ID']}</td><td>{$row['name']}</td><td>{$row['address']}</td></td>{$row['account_Number']}</td></td>{$row['email']}</td></td>{$row['contact_No']}</td></tr>\n";
        }
    }
    ?>
    </tbody>
</table>
