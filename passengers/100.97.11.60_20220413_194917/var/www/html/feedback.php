<?php
require('db.php');
if (isset($_POST['feedback'])) {
    $DLURL = "http://" . $_SERVER['SERVER_NAME'];
    $name = $_REQUEST['name'];
    $feedback = $_REQUEST['feedback'];
 
    $create_datetime = date("Y-m-d H:i:s");
    $query = "INSERT into `feedback` (name, feedback, create_datetime) VALUES ('$name', '$feedback', '$create_datetime');";
    $result = mysqli_query($con, $query);
    header("Location: $DLURL");
}
?>