<?php
require '../koneksi.php';

$nama=$_POST['nama'];
$user=$_POST['username'];
$pass=$_POST['password'];
$telp=$_POST['telp'];
$nik=$_POST['nik'];

$sql=mysql_query("update masyarakat set nama='$nama', username='$user', password='$pass', telp='$telp' where nik='$nik'");

if ($sql)
{
?>
<script type="text/javascript">
    alert ('Data Berhasil Di Ubah');
    window.location='admin.php?url=lihat_masyarakat';
</script>
<?php
}
?>