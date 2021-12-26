<?php 
  //cek halaman yang dituju
array_key_exists('page', $_GET) ? $page = $_GET['page'] : $page = 'index';
?> 
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
  <!-- Mobile Specific Meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Favicon -->
  <link rel="shortcut icon" href="style/img/ikhlas.png" />
  <!-- Author Meta -->
  <meta name="author" content="colorlib" />
  <!-- Meta Description -->
  <meta name="description" content="" />
  <!-- Meta Keyword -->
  <meta name="keywords" content="" />
  <!-- meta character set -->
  <meta charset="UTF-8" />
  <!-- Site Title -->
  <title>Ekstrakurikuler MAN 2 PADANGSIDIMPUAN</title>

  <link href="https://fonts.googleapis.com/css?family=Playfair+Display:900|Roboto:400,400i,500,700" rel="stylesheet" />
  <!--CSS=============================================-->
    <link rel="stylesheet" href="style/css/linearicons.css" />
    <link rel="stylesheet" href="style/css/font-awesome.min.css" />
    <link rel="stylesheet" href="style/css/bootstrap.css" />
    <link rel="stylesheet" href="style/css/magnific-popup.css" />
    <link rel="stylesheet" href="style/css/owl.carousel.css" />
    <link rel="stylesheet" href="style/css/nice-select.css">
    <link rel="stylesheet" href="style/css/hexagons.min.css" />
    <link rel="stylesheet" href="style/https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css" />
    <link rel="stylesheet" href="style/css/main.css" />

<link rel="stylesheet" type="text/css" href="style/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style/login/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="style/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="style/login/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="style/login/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="style/login/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="style/login/css/util.css">
<link rel="stylesheet" type="text/css" href="style/login/css/main.css">


</head>

<body>

    <?php
      if ($page == "index"){
        include "views/home.php";
      }
      if ($page == "jadwal"){
        include "views/jadwal.php";
      }
      if ($page == "pendaftaran"){
        include "views/pendaftaran.php";
      }
      if ($page == "login"){
        include "views/login.php";
      }
    ?>
  <!-- ================ Start Blog Post Area ================= -->

  <!-- ================ End Blog Post Area ================= -->
  <!-- ================ Start Header Area ================= -->
  <header class="default-header">
    <nav class="navbar navbar-expand-lg  navbar-light">
      <div class="container">
        <a class="navbar-brand" href="#">
          <!--<img src="style/img/logo.png" alt="" />-->
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="lnr lnr-menu"></span>
      </button>

      <div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li><a href="index.php?page=index">Beranda</a></li>
          <li><a href="index.php?page=pendaftaran">Pendaftaran</a></li>
          <li><a href="index.php?page=jadwal">Jadwal</a></li>
          <li><a href="index.php?page=login">Login</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>
<!-- ================ End Header Area ================= -->
<!-- ================ start footer Area ================= -->
<footer class="footer-area section-gap">
  <div class="container">
   <div class="row">
    <div class="col-lg-6 col-md-6 single-footer-widget">
      <h4>Ekskul Pendidikan Karakter</h4>
      <?php
        include 'class/koneksi.php';
        $data = mysqli_query($koneksi,"select * from ekstrakurikuler where jenis_ekskul = 'Ekstrakurikuler Pendidikan Karakter'");
        while($d = mysqli_fetch_array($data)){
      ?>
        <li style="color: white;"><?php echo $d['nama_ekskul']; ?></li>
      <?php
        }
      ?>
    </div>
    <div class="col-lg-6 col-md-6 single-footer-widget">
      <h4>Ekskul Pengembangan dan Minat (PBM)</h4>
      <?php
        include 'class/koneksi.php';
        $data = mysqli_query($koneksi,"select * from ekstrakurikuler where jenis_ekskul = 'Ekstrakurikuler Pengembangan Bakat dan Minat (PBM)'");
        while($d = mysqli_fetch_array($data)){
      ?>
        <li style="color: white;"><?php echo $d['nama_ekskul']; ?></li>
      <?php
        }
      ?>
    </div>
  </div>
  <div class="footer-bottom row align-items-center">
    <p class="footer-text m-0 col-lg-8 col-md-12">
      <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
      Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
    </p>
  </div>
</div>
</footer>
<!-- ================ End footer Area ================= -->
<script src="style/js/vendor/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
crossorigin="anonymous"></script>
<script src="style/js/vendor/bootstrap.min.js"></script>
<script type="style/text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
<script src="style/js/jquery.ajaxchimp.min.js"></script>
<script src="style/js/jquery.magnific-popup.min.js"></script>
<script src="style/js/parallax.min.js"></script>
<script src="style/js/owl.carousel.min.js"></script>
<script src="style/js/jquery.sticky.js"></script>
<script src="style/js/hexagons.min.js"></script>
<script src="style/js/jquery.counterup.min.js"></script>
<script src="style/js/waypoints.min.js"></script>
<script src="style/js/jquery.nice-select.min.js"></script>
<script src="style/js/main.js"></script>

</body>
</html>