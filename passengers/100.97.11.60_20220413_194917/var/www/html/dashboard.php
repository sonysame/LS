<?php
//include auth_session.php file on all user panel pages
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
        <p>Welcome, <?php echo $_SESSION['username']; ?>!</p>
        <p>Before arriving in the Berylia, you must normally fill out a passenger locator form online.</p>
        <h1>What you'll require</h1>
        <p>To complete the form, you'll need the following items:</p>
        <ul>
            <li>Moment you arrive at the Berylia border, your passport information or the travel document you'll be using</li>
            <li>You'll need your booking reference numbers for any COVID-19 exams you'll need to do once you've arrived in the Berylia.</li>
            <li>If you need one, the invoice number for your quarantine hotel reservation</li>
            <li>Should declare whether or not you have been vaccinated and where you have been vaccinated</li>
        </ul>
        <p><a href="fill.php">Start</a></p>
        <p><a href="history.php">History</a></p>
        <?php if ($_SESSION['roles'] === 'admin') echo '<p><a href="manage.php">Manage</a></p>' ; ?>
        <p><a href="logout.php">Logout</a></p>
    </div>
</body>
</html>