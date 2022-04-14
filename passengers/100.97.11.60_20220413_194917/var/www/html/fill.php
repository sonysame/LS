<?php
include("auth_session.php");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Berylia Health & Safety</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <div class="form">
        <p>Please note, after submission you will be given a PDF file which you need to show at Berylia border</p>

        <form method="post" action="pdf.php">
            
            <input type="text" class="login-input" name="name" placeholder="Name"/>
            <input type="text" class="login-input" name="country" placeholder="Country"/>
            <input type="text" class="login-input" name="passport" placeholder="Passport"/>
            <input type="text" class="login-input" name="flightno" placeholder="Flight Number that you will arrive on?"/>
            <input type="text" class="login-input" name="bookingref" placeholder="COVID-19 Booking Reference"/>
            <input type="text" class="login-input" name="arrival" placeholder="Date of Arrival"/>
            <input type="hidden" name="template" value="blank"/>
            <input type="submit" value="Submit" name="submit" class="login-button"/>
        </form>
        <p><a href="logout.php">Logout</a></p>
    </div>
</body>
</html>
