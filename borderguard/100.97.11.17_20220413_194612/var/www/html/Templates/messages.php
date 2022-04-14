<?php
include('header.php');
?>

<div class ='container' style='min-height: 600px'>
<ol class="breadcrumb">
				<li><a href="/">Home</a></li>
				<li><a class='active'>Messages</a></li>
				
	</ol>
    <?php
    if ($code) {
        echo $code;
    } else {
        echo "<h2>No Messages</h2>";
    }?>
</div>
<?php include('footer.php'); ?>