<?php
include("header.php");
?>

<div class="container" style="min-height: 700px">
<ol class="breadcrumb">
			<li><a href="/">Home</a></li>
			<li class="active">Search results</li>
		</ol>


<?php
if (isset($msg)) echo "<h1>".$msg."</h1>";
if (!(empty($data))) {
    
    
    foreach ($data as $dato) {
        
        echo "<p><a href='/news?id=".$dato['id']."'><h3>".$dato['titolo']."</h3></a></p><p><h4>".$dato['intro']."</h4></p>";
    }
}
?>
</div>
<?php include('footer.php'); ?>