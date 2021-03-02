<?php
require '../koneksi.php';

$nik=$_GET['nik'];

$sql=mysql_query("delete from masyarakat where nik='$nik' ");

if($sql)
{
    ?>
    <script type="text/javascript">
        alert ('Data Berhasil di hapus');
        window.location='admin.php?url=lihat_masyarakat';
    </script>
<?php
}
?>