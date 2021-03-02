
<?php
if (isset($_GET['url']))
{
    $url=$_GET['url'];

    switch($url)
    {
        case 'verifikasi_pengaduan';
        include 'verifikasi_pengaduan.php';
        break;

        case 'detail_pengaduan';
        include 'detail_pengaduan.php';
        break;

        case 'halaman_tanggapan';
        include 'halaman_tanggapan.php';
        break;

        case 'lihat_petugas';
        include 'lihat_petugas.php';
        break;

        case 'tambah_petugas';
        include 'tambah_petugas.php';
        break;

        case 'edit_petugas';
        include 'edit_petugas.php';
        break;

        case 'lihat_masyarakat';
        include 'lihat_masyarakat.php';
        break;

        case 'preview_masyarakat';
        include 'preview_masyarakat.php';
        break;

        case 'preview_petugas';
        include 'preview_petugas.php';
        break;

        case 'preview_pengaduan';
        include 'preview_pengaduan.php';
        break;

        case 'preview_tanggapan';
        include 'preview_tanggapan.php';
        break;

        case 'lihat_laporan';
        include 'lihat_laporan.php';
        break;

        case 'edit_tanggapan';
        include 'edit_tanggapan.php';
        break;

        case 'lihat_tanggapan';
        include 'lihat_tanggapan.php';
        break;

        case 'edit_masyarakat';
        include 'edit_masyarakat.php';
        break;
    }
}
else
{
    ?>
    <?php

require '../koneksi.php';
$sql=mysql_query("select * from pengaduan where status='proses'");
if ($cek=mysql_num_rows($sql))
{
?>
<br>
<br>
<div class="col-xl-6 col-md-6 mb-4">
<div class="card border-left-info shadow h-100 py-2">
<div class="card-body">
<div class="row no-gutters align-items-center">
  <div class="col mr-2">
    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Laporan Pengaduan : </div>
    <div class="h5 mb-0 font-weight-bold text-gray-800">Ada <?php echo $cek; ?> Laporan Yang Harus Ditanggapi</div>
  </div>
  <div class="col-auto">
    <i class="fas fa-comment fa-4x text-gray-300"></i>
    <span class="badge badge-danger badge-counter"><?php echo $cek; ?><span>
  </div>
</div>
</div>
</div>
</div>



<?php
}}
?>

