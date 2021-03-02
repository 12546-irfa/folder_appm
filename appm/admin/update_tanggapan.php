<?php
require '../koneksi.php';

$pengaduan=$_POST['id_pengaduan'];
$tgl=$_POST['tgl_tanggapan'];
$tanggapan=$_POST['tanggapan'];
$petugas=$_POST['id_petugas'];
$id=$_POST['id_tanggapan'];

$sql=mysql_query("update tanggapan set id_pengaduan='$pengaduan', tgl_tanggapan='$tgl', tanggapan='$tanggapan', id_petugas='$petugas' where id_tanggapan='$id'");

if ($sql)
{
?>
<script type="text/javascript">
    alert ('Data Berhasil Di Ubah');
    window.location='admin.php?url=lihat_tanggapan';
</script>
<?php
}
?>