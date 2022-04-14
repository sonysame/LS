<?php include('header.php');?>
<?=$msg?>
<div class='container cont' style="min-height: 700px">
<ol class="breadcrumb">
				<li><a href="/">Home</a></li>
				<li><a class='active' >Register</a></li>
				
	</ol>
<form name='_register' method='POST'>
    <div class ='row'>
        <div class ='col-sm-6'>
        <label for='txtNick'> NickName:</label><input type = 'text'  class="form-control" placeholder='NickName' name = 'txtNick'>
        </div>
        <div class ='col-sm-6'>
            <label for='txtName'> First Name:</label><input type = 'text'  class="form-control" placeholder='First Name' name = 'txtFname'>
        </div>
        <div class ='col-sm-6'>
            <label for='txtSname'>Second Name:</label><input type = 'text'  class="form-control" name = 'txtSname' placeholder='Second Name'>
        </div>
        <div class ='col-sm-6'>
            <label for='txtBirthState'>State of birth</label><input type = 'ext'  class="form-control" name = 'txtBirthState'  placeholder='State of birth'>
        </div>
        <div class ='col-sm-6'>
            <label for=''>Birth's date</label> <input type = 'text'  class="form-control" name = 'txtBirthDate' placeholder='Date of Birth'>
        </div>
        <div class ='col-sm-4'>
            <label for=''>Living Place</label><input type = 'text'  class="form-control" name = 'txtLivingPlace' placeholder='Living place'>
        </div>  
        <div class ='col-sm-8'>
            <label for=''>Living address</label><input type = 'text'  class="form-control" name = 'txtLivingAddr' placeholder='Living Address'>
        </div>      
        <div class ='col-sm-12'>
    <label for=''>Email</label><input type = 'text'  class="form-control" name = 'txtEmail' placeholder='email'>
        </div>
    <div class ='col-sm-6'>
        <label for=''>Password</label><input type = 'password'  class="form-control" name = 'txtPassword' placeholder='your password'>
    </div>
    <div class ='col-sm-6'>
        <label for=''>Repeat Password</label><input type = 'password'  class="form-control" name = 'txt2Password' placeholder='check your password'><br>
    </div>
    <div class ='col-sm-2'>
        <input type = 'submit'  class=" btn btn-action" value='register'>
</div>
</div>
</form>
</div>



<?php include('footer.php'); ?>