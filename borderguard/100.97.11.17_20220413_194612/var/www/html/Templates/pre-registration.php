<?php
include('header.php');
?>

<script>
    function formSubmit() {
        
    if (document._register.fname.value == "") {
      alert("Please fill all required fields");
      document._register.fname.focus();
      return false;
    }
    else if (document._register.sname.value == "") {
      alert("Please fill all required fields");
      document._register.sname.focus();
      return false;
    }
    else if (document._register.mail.value == "") {
      alert("Please fill all required fields");
      document._register.mail.focus();

      return false;
    }
    else if (document._register.mobile.value == "") {
      alert("Please fill all required fields");
      document._register.mobile.focus();
      return false;
    }
    else if (document._register.gpuci.value.length!=38) {
      alert("GreenPass Unique Certificate Identifier not valid");
      document._register.gpuci.focus();
      return false;
    }
    else if (document._register.date.value == "") {
      alert("Please fill all required fields");
      document._register.date.focus();
      return false;
    }
    // Se è stato inserito un nome verrà effettuato il submit
    document.forms[0].submit();
    return true;
  }
  </script>


	<div class="container cont">

<ol class="breadcrumb">
    <li><a href="/">Home</a></li>
    <li class="active">Pre-registration</li>
</ol>

<div class="row">
    
    <!-- Article main content -->
    <article class="col-sm-9 maincontent">
        <header class="page-header">
            <h1 class="page-title">Pre-Registration</h1>
        </header>
   
        
        <div class="col-ld-3">
            <div class="panel panel-default">
                <div class="panel-body">
                  <div class='row'>
                        <div class='col-sm-12'>
                            <p>Due to <strong>Covid-19</strong> pandemic Berylian government decided to enforce sanitary checks to all incoming travellers.</p>
                            <p>in order to simplify and speed up the checks, Ministry of Defence deploy a service for all Berylian military personnel where you can register and get an appointment to carry out a <strong>health</strong> test .
                             You will obtain an alphanumeric code to provide to the personnel of the healthcare offices in order to carry out the sanitary checks.</p>
    
                            
</div>
                  </div>
                  <div class='row'>
                  
                        <form name='_register' method='POST'>

                            <div class='col-sm-6'><label for='txtName'> First Name:</label><input type = 'text'  class="form-control" placeholder='First Name' name = 'txtFname' id='fname'></div>
                            <div class='col-sm-6'><label for='txtSname'>Second Name:</label><input type = 'text'  class="form-control" name = 'txtSname' placeholder='Second Name' id='sname'></div>
</div>
<div class='row'>
                            <div class='col-sm-12'><label for='txtEmail'>Email:</label><input type='text' class='form-control' name='txtEmail' placeholder = 'email' id='mail'></div>
</div>
<div class='row'>
                            <div class='col-sm-6'><label for='txtMobile'>Mobile Phone</label><input type='text' class ='form-control' name ='txtMobile' placeholder='mobile-phone' id='mobile'></div>
                            <div class ='col-sm-6'><label for =txtDate'>Date of Access:</label><input type='text' class ='form-control' name ='txtDOA' placeholder='MM/DD/YYYY' id='date'></div>
</div>
<div class='row'>
                            <div class='col-sm-12'><label for ='txtUCI'>Green Pass code:</label> <input type='text' class ='form-control' name ='txtUCI' placeholder='Green Pass Unique Certificate Identifier' id='gpuci'><br></div>
                            
</div>
<div class='row'>
                            <div class='col-sm-2'><input type = 'button'  class="btn btn-primary" value='register' onclick="formSubmit();" ></div>
                          </form>
                   </div>
                </div>
            </div>
        </div>
        </div>
        </div>


    </article>
</div>


<?php include('footer.php'); ?>