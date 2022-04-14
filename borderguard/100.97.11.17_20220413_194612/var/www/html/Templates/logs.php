<?php
include('header.php');
//var_dump($datas);
?>
<div class="container">

<a href='/admin/logs?page=<?=$prev?>'><<</a>
<a href='/admin/logs?page=<?=$next?>'>>></a>
        
 <table class ='table' style="border: 1px solid black;">
        <thead>
            <tr>
                <th scope='col'>#</th>
                <th scope='col'>IP</th>
                <th scope='col'>METHOD</th>
                <th scope='col'>CODE</th>
                <th scope='col'>URL</th>
            </tr>
        </thead>
        
            <?php
            
            if (!(empty($data))) {
                foreach ($data as $d) {
                    print("<tr>");
                    print("<td>".$d['IP']."</td>");
                    print("<td>".$d['REQMETHOD']."</td>");
                    print("<td>".$d['REQSTATUS']."</td>");
                    print("<td>".$d['REQTIME']."</td>");
                    print("<td>".$d['REQPATH']."</td>");
                    print("</tr>");
                }
            } else {
                print("<h3>No Logs found</h3>");
            }
            ?>
        
    </table>
        </div>



<?php include('footer.php'); ?>
