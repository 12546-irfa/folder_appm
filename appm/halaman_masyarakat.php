<?php
if (isset($_GET['url']))
{
    $url=$_GET['url'];

    switch($url)
    {
        case 'tulis_pengaduan';
        include 'tulis_pengaduan.php';
        break;
        
        case 'lihat_pengaduan';
        include 'lihat_pengaduan.php';
        break;

        case 'detail_pengaduan';
        include 'detail_pengaduan.php';
        break;

        case 'lihat_tanggapan';
        include 'lihat_tanggapan.php';
        break;
    }
}
else
{
    ?>
    <html>
        <head>
            <style type="text/css">
           .isi {
    position: relative;
    font-family: 'roboto';
    color: white;
    text-align:center;
    text-shadow:2px 2px #202330;
}
.isi h1{
    margin-bottom: 10px;
}
.isi h2{
    margin-bottom: 20px;
}
.isi h3{
    margin-top: 20px;
}

            </style>
        </head>
        <body>
        <div class="isi">
    <h1>Selamat Datang</h1>
    <h2>Aplikasi Pelaporan Pengaduan Masyarakat</h2>
    <p>Aplikasi untuk melaporkan segala kejadian yang ada di masyarakat.</p>
    <p>Aplikasi ini juga di buat untuk mengajukan kebutuhan serta</p>
    <p>fasilitas yang ada di sekitar Desa Nambo.</p>
    <h3>Nambo, Klapanunggal - Bogor</h3>
    </div>
        </body>
    </html>

<?php    
}
?>