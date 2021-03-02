<?php
require '../koneksi.php';

$id=$_GET['id'];

$sql=mysql_query("delete from petugas where id_petugas='$id'");

if($sql)
{
    ?>
    <script type="text/javascript">
        alert ('Data Berhasil di hapus');
        window.location='admin.php?url=lihat_petugas';
    </script>
<?php
}
?>