<?php
session_start();
if(!isset($_SESSION['nama']))
{
  die('Anda Belum Login');
}
if($_SESSION['level']!='admin')
{
  die("anda bukan admin");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>APPM</title>
  <style type="text/css">
            .back{
                background:url(../img/pexel.jpg);
                background-repeat:no-repeat;
                background-size:1500px;
            }
            </style>
  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top" class="back">
<nav class="navbar navbar-expand-lg navbar-light bg-info">
 <div class="container">
    <a class="navbar-brand text-white" href="admin.php">APPM</a>
 
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
 
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
 
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link text-white" href="admin.php">Dashboard<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="?url=verifikasi_pengaduan">Verifikasi Pengaduan</a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Data
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="?url=lihat_petugas">Data Petugas</a>
            <a class="dropdown-item" href="?url=lihat_masyarakat">Data Masyarakat</a>
            <a class="dropdown-item" href="?url=lihat_laporan">Data Laporan</a>
            <a class="dropdown-item" href="?url=lihat_tanggapan">Data Tanggapan</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Laporan
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="?url=preview_petugas">Laporan Petugas</a>
            <a class="dropdown-item" href="?url=preview_masyarakat">laporan Masyarakat</a>
            <a class="dropdown-item" href="?url=preview_pengaduan">laporan Pengaduan</a>
            <a class="dropdown-item" href="?url=preview_tanggapan">laporan Tanggapan</a>
          </div>
        </li>
      </ul>
      <ul class="navbar-nav ">
      <li class="nav">
        <a class="nav-link" href="masyarakat.php">
          <i class="fas fa-fw fa-user text-white "></i>
          <span class="text-uppercase text-white font-weight-bold"><?php echo $_SESSION['nama']?></span></a>
      </li>
      <li class="nav">
        <a class="nav-link" href="../logout.php">
          <i class="fas fa-fw fa-sign-out-alt text-white"></i>
          <span></span></a>
      </li>
      </ul>
    </div>
 <div>
</nav>
  <!-- Page Wrapper -->
  <div class="container">


          <div>
            <br>
        <h1 class="h4 text-white text-center mb-1">Aplikasi Pelaporan Pengaduan Masyarakat</h1>
        <div>
          <br>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        

          <!-- Page Heading -->
          <?php include 'halaman_admin.php'; ?>

       
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../js/sb-admin-2.min.js"></script>

</body>

</html>
