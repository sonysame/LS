<?php
include('header.php');
?>
<style>

    .ux{
        padding: 5px;
        border: 1px solid lightgray;
    }
    .admin{
        background: #ffffdd;
    }
    .container{
        padding: 10px;
    }
</style>
<div class='container cont' >
    Users List:
    <?php
    print("<table width=100%>");
    foreach ($data as $dato) {
        print("<tr><td class='ux ".($dato['admin_mode'] ? 'admin' : '')."'>".$dato['nickname']."</td><td class='ux'>".$dato['email']."</td><td class='ux'><a href='/admin/users?id=".$dato['id']."&cmd=1'>delete</a></td>
        <td class='ux'><a href='/admin/users?id=".$dato['id']."&cmd=2'>reset</a>
        </td><td class='ux'><a href='/admin/users?id=".$dato['id']."&cmd=3
        '>Admin</a></td></tr>");
    }
    print("</table>")
    ?>
        
</div>
</div>
<?php include('footer.php'); ?>
