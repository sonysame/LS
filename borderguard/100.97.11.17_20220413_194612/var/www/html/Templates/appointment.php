<?php
include('header.php');
?>
<div class='container '>
<ol class="breadcrumb">
			<li><a href="/">Home</a></li>
			<li class="active">Get an appointment</li>
	
</ol>
    <p><H2>the appointment's date indicated below is only <strong>indicative</strong>. You will receive a confirmation email with the appointment time.
    The Berylian Armed Force BorderGuard control's office reserve the right to change timetables based on business needs. </h2></p>
</div>
<div class='container' style='min-height:600px'>
<div class="row">
    <div class="col-sm-12">
        <?=$msg?>
    </div>
</div>
    <form name='_contact' id='contact' method="POST" >
        <p><label for='uid'>Username</label><input type='text' disabled value='<?php echo $_SESSION['UID'];?>' class='form-control' name='uid'></p>
    
    <label for='motivation'>What do you need?</label><textarea name="motivation" class='form-control' rows=10 ></textarea><br>
    <label for='data'>Appointment's date</label>
    <input name="data" type="text" class='form-control' placeholder="gg-mm-aaaa">
    <br>
    <input name="button" type="button" value="send it" class='btn btn-action' onclick="doSubmit();">
    </form>
</div>

<script>
    function doSubmit(){
        var data1 = document.forms[0].data.value;
        
        

        var regEx = /^\d{2}-\d{2}-\d{4}$/;
        if(!data1.match(regEx)) {
            alert("Invalid date format");
            return false;  // Invalid format
        }
        else{
            document.forms[0].submit();
        }
      
    }
    </script>
<?php include('footer.php'); ?>
