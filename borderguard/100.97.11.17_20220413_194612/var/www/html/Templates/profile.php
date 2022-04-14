<?php
include('header.php');

?>


<div class='container cont'>
<ol class="breadcrumb">
				<li><a href="/">Home</a></li>
				<li><a class='active' >profile</a></li>
				
	</ol>
<div class='row'>
    <form method='POST' >
    <div class="col-sm-6" style="padding-bottom:6px">  
    <label for='Fname'>First Name</label><input type='text' name='Fname' required  class='form-control' value="<?=$user_data['fname']?>">
    </div>
    <div class="col-sm-6" style="padding-bottom:6px">
        <label for='Sname'>Second Name</label><input type='text' name='Sname'  required class='form-control'value="<?=$user_data['sname']?>">
    </div>   
    <div class="col-sm-6" style="padding-bottom:6px"> 
        <label for='BirthState'>State of Birth</label><input type='text' name='BirthState' required  class='form-control'value="<?=$user_data['birthState']?>">
    </div>
    <div class="col-sm-6" style="padding-bottom:6px">    
        <label for='BirthDate'>Date of Birth</label><input type='text' name='BirthDate' required  class='form-control'value='<?=$user_data['birthDate']?>'>
    </div>    
    <div class="col-sm-4" style="padding-bottom:6px">
        <label for='LivingPlace'>Living Place</label><input type='text' name='LivingPlace' required  class='form-control'value="<?=$user_data['livingPlace']?>">
    </div>
    <div class="col-sm-8" style="padding-bottom:6px">
        <label for='LivingAddr'>Living Address</label><input type='text' name='LivingAddr' required  class='form-control'value="<?=$user_data['livingAddr']?>">
    </div>
    <div class="col-sm-12" style="padding-bottom:6px">    
        <label for='Email'>Email</label><input type='text' name='Email' required class='form-control'value="<?=$user_data['email']?>">
    </div>
    <div class="col-sm-4" style="padding-bottom:6px">
        <input type='submit' name ='submit' value='update Profile' class='btn btn-action'>
    </div>
    </form>
</div>
<div class='row'>
  <form method='POST' name='_updatePwd'>
    <div class="col-sm-3" style="padding-bottom:6px">  
  
        <label for='old_pwd'>Old Password</label><input type='password' name='old_pwd' class='form-control' >
    </div>
    <div class="col-sm-3" style="padding-bottom:6px">  
  <label for='new_pwd'>New Password</label><input type='password' name='new_pwd' class='form-control'>
</div>
<div class="col-sm-3" style="padding-bottom:6px">
    <label for='Sname'>Repeat</label><input type='password' name='r_new_pwd' class='form-control'>
</div>  

<div class="col-sm-3" style="padding-bottom:6px">
    <input type='submit' name ='change_pwd' value='update Profile' class='btn btn-action'>
</div>



</div>
<div class='container' style="padding-top: 10px;">
<table class="table">
  
    <tbody>
        <?php

        if (!(empty($messages))) {
            foreach ($messages as $msg) {
                print("<tr><td><strong>From:</strong></td><td>".$msg['uid_src']."</td><td align='right'><a href=\"/profile/delete?id=".$msg['id']."\"><img src='/img/x.png' width=25px, height=25px></a></td><tr>
                <tr><td colspan=3>".$msg['message']."</td></tr>");
            }
        }
        ?>
        </tbody>
    </table>
</div>
<script>
function dosubmit(){
    
        var pwd =  document.forms[1].new_pwd.value;
        console.log(pwd);
        var pwd1 = document.forms[1].r_new_pwd.value;
        console.log(pwd1);
        if(pwd==pwd1) { document.forms[1].submit();
        return true;
        }
        
            alert("Password mismatch");
            document.forms[1].new_pwd.focus();
            return false;

        
    
}
    </script>
</div>
<?php include('footer.php'); ?>
