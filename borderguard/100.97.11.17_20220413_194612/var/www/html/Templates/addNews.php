<?php
include('header.php');
?>

<script type="text/javascript">
  tinymce.init({
    selector: '#_news'
  });
  </script>

<div class='container' style='min-height: 600px'>.		<ol class="breadcrumb">
				<li><a href="/">Home</a></li>
				<li><a class='active'>Add news</a></li>
				
	</ol>
<form method='POST' enctype="multipart/form-data">

<p><h2><?=$msg?></h2></p>
<label for='txtTitle'>Title:</label>
<input type='text' class='form-control' name='txtTitle'>
<label for='txtFileName'>Filename:</label>
<input type='file' class='form-control' name='txtFileName'>
<input type='hidden' name='pos' value='../public/img'>
    <label for='txtIntro'>Intro:</label>
    <textarea name='txtIntro' class='form-control'></textarea>
    
    <label for='txtNews'>Text:</label>
    <textarea name='txtNews' class='form-control' id="_news"></textarea>
    <br>
    <input type='submit' name='submit' value='Insert News' class='btn'>


</form>
</div>


<?php include('footer.php'); ?>