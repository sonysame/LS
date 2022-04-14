<?php
//include auth_session.php file on all user panel pages
include("auth_session.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>History</title>
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="https://code.berylia.org/bootstrap/v4.6.0/css/bootstrap.min.css">
    <script src="https://code.berylia.org/jquery/v3.5.1/jquery-3.5.1.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
    <style>
        .wrapper{
            width: 600px;
            margin: 0 auto;
        }
        table tr td:last-child{
            width: 120px;
        }
    </style>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();   
        });
    </script>
</head>
<body>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="mt-5 mb-3 clearfix">
                        <h2 class="pull-left">History</h2>
                        <p><a href="logout.php">Logout</a></p>
                        <!-- <a href="create.php" class="btn btn-success pull-right"><i class="fa fa-plus"></i> Add New Employee</a> -->
                    </div>
                    <?php
                    // Include config file
                    require_once "db.php";
                    include "config.php";
                    $username = $_SESSION["username"];
                    
                    // Attempt select query execution
                    $sql = "SELECT * FROM pdf WHERE username='$username'";
                    if($result = mysqli_query($con, $sql)){
                        if(mysqli_num_rows($result) > 0){
                            echo '<table class="table table-bordered table-striped">';
                                echo "<thead>";
                                    echo "<tr>";
                                        echo "<th>#</th>";
                                        echo "<th>Name</th>";
                                        echo "<th>Country</th>";
                                        echo "<th>passport</th>";
                                        echo "<th>Flight Number</th>";
                                        echo "<th>PDF link</th>";
                                    echo "</tr>";
                                echo "</thead>";
                                echo "<tbody>";
                                while($row = mysqli_fetch_array($result)){
                                    echo "<tr>";
                                        echo "<td>" . $row['id'] . "</td>";
                                        echo "<td>" . $row['name'] . "</td>";
                                        echo "<td>" . $row['country'] . "</td>";
                                        echo "<td>" . $row['passport'] . "</td>";
                                        echo "<td>" . $row['flightno'] . "</td>";
                                        echo "<td>";
                                            echo '<a href="'. $DLURL.$row['apphash'] .'.pdf" title="link" data-toggle="tooltip"><span class="fa fa-link"></span></a>';
                                        echo "</td>";
                                    echo "</tr>";
                                }
                                echo "</tbody>";                            
                            echo "</table>";
                            // Free result set
                            mysqli_free_result($result);
                        } else{
                            echo '<div class="alert alert-danger"><em>No records were found.</em></div>';
                        }
                    } else{
                        echo "Oops! Something went wrong. Please try again later.";
                    }
 
                    // Close connection
                    mysqli_close($con);
                    ?>
                </div>
            </div>        
        </div>
    </div>
</body>
</html>