<?php

include("header.php");
?>

<div class='container cont'>
  


<table class="table">
  <thead>
    <tr>
      
      <th scope="col">User</th>
      <th scope="col">Preferred data</th>
      <th scope="col">Message</th>
    </tr>
  </thead>
  <tbody>
    
    <?php
    if (!(empty($data))) {
        foreach ($data as $dato) {
            print("<tr><td>".$dato['uid']."</td><td>".$dato['str_data']."</td>
          </td><td>".$dato['testo']."</td><td><a href='/admin/appointments/confirm?id=".$dato['id']."'><img src='/img/ok.svg' witdth=30px height=30px></a></td>
          <td><a href='/admin/appointments/delete?id=".$dato['id']."'><img src='/img/x.png' witdth=30px height=30px></a></td></tr>");
        }
    }
    print("</tbody></table>");

    ?>
</div>

<?php include('footer.php'); ?>