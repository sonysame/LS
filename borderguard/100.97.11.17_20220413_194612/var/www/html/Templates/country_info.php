<?php
include('header.php');
?>
<script>
    function change(fname){
        
        window.location="/country-info?file="+fname;       
    }
    </script>

<div class='container style='min-height:700px'>
<div class='row'>
    <div class='col-sm-10'><?php
    try {
        if (file_exists($filename)) {
            include($filename);
        } else {
            print("<h2>NO INPUT FILE</h2>");
        }
    } catch (Exception $e) {
        print($e->getMessage());
    }

?>
</div>
    <div class='col-sm-2'>
        <?php
            $files=array_diff(scandir('../countries'), array('.','..'));
            foreach ($files as $file) {
                $d="<input type='button' class='btn btn-action form-control' onclick=\"change('$file');\" value='".str_replace(".txt", "", $file)."'>";
                print($d);
            }
        ?>
    </div>
   
</div>
        </div>
        <?php include('footer.php'); ?>