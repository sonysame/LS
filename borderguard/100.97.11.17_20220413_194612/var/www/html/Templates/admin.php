<?php
@session_start();
include('header.php');



if ($_SESSION['isAdmin']==false) {

    //header("Location:index.php");
    echo "<script>window.location.href=\"/\";</script>";
}

?>
<header>
<script src="https://code.berylia.org/jquery/v3.5.1/jquery-3.5.1.js"></script>
</header>
<script>
   
$('#cmd').on('click', function() {
    $.ajax({
        url : 'run.php'
    }).done(function(data) {
        console.log(data);
    });
});
    </script>
<div class='container cont' >
<ol class="breadcrumb">
				<li><a href="/">Home</a></li>
				<li><a class='active' href="/admin">Admin</a></li>
				
	</ol>
<div class='row'>
<div class="col-sm-4">
    <a href='/admin/news/add'><input type='button' class ='btn btn-action form-control' value='Add News'></a>
</div>
<div class="col-sm-4" style="padding-bottom:10px">
<a href='/admin/news/remove'><input type='button' class ='btn btn-action form-control' value='delete News'></a>
</div>

<div class="col-sm-4">
<a href='/admin/messages'><input type='button' class ='btn btn-action form-control' value='Check Messages'></a>
</div>
</div>
<div class='row'>
<div class="col-sm-4">
<a href='/news'><input type='button' class ='btn btn-action form-control' value='List News'></a>
</div>
<div class="col-sm-4">
<a href='/admin/logs'><input type='button' class ='btn btn-action form-control' value='Logs'></a>
</div>
<div class="col-sm-4">
<a href='/admin/users'><input type='button' class ='btn btn-action form-control' value='Manage Users'></a>
</div>
</div>

<div class='row'>
<div class="col-sm-4" style="padding-top: 10px;">
<a href='/admin/appointments'><input type='button' class ='btn btn-action form-control' value='List Appointments'></a>
</div>
</div>
<div class='row' style="padding-top: 10px">
    <div class ='col-sm-8'>
    
        <input type='text' class="form-control" id='cmd'>
    </div>
    <div class='col-sm-4'> <head>
<script src="https://code.berylia.org/jquery/v1.12.4/jquery-1.12.4.min.js"></script>

</head>
<button>Execute Command</button>
    
    </div>
    <div id="result"></div>
</div>

        

</div>
<script>
//$(document).ready(function() {
    $("button").click(function() {
        let value = document.querySelector("#cmd").value;
        
        $.get("script.php?code="+value, function(data, status) {
            document.querySelector('#result').innerHTML=data;
            
        });
    });
//});
</script>
<?php include('footer.php'); ?>