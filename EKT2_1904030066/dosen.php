<?php
date_default_timezone_get('Asia/Jakarta');

require 'function.php';
$dosen = query('SELECT * FROM tabel_dosen');

if (isset($_POST['search'])) {
    $dosen = search($_POST['kata_kunci']);
}
?>



<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="tema/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="tema/fontawesome/css/all.min.css">

    <!-- Title -->
    <title>CRUD</title>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="#">SIPEMABA || KAMPUS KITA</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
                <div class="text-white">
                    <?php echo date('l, d-m-y'); ?>
                </div>
            </div>
        </div>
    </nav>

    <!-- Side Bar -->
    <div class="row">
        <!-- Menu -->
        <div class="col-md-2 mt-2 pr-3 pt-4 bg-secondary">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link text-white" aria-current="page" href="#"><i class="fas fa-tachometer-alt"></i>
                        Dashboard</a>
                    <hr class="bg-dark">
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="index.php"><i class="fas fa-users"></i> Calon Mahasiswa</a>
                    <hr>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="tambah.php"><i class="fas fa-user-edit"></i> Input Camaba</a>
                    <hr>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="dosen.php"><i class="fas fa-chalkboard-teacher"></i> Daftar Dosen</a>
                    <hr>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#"><i class="fas fa-calendar-alt"></i> Jadwal Kuliah</a>
                    <hr>
                </li>
            </ul>
        </div>

        <!-- Konten -->
        <div class="col-md-10 p-5 pt-4">
            <h3><i class="fas fa-users"></i> Dosen Fakultas Teknik
                <hr>

                <!-- Pencarian Data -->
                <form action="" method="POST">
                    <input type="text" id="kata_kunci" size="35" name="kata_kunci" placeholder="Masukan Keyword" autocomplete="off">
                    <button type="submit" class="btn btn-primary" name="search">Cari</button>
                    <br>
                    <hr>
                </form>
            </h3>

            <table class="table table-striped">
                <thead>
                    <tr class="text-center">
                        <th scope="col">No</th>
                        <th scope="col">NIDN</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Email</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <?php if (empty($dosen)): ?>
                    <tr>
                        <td colspan="5" class="alert alert-danger text-center" role="alert">
                            <p>
                                <b>Data Dosen tidak ditemukan</b>
                            </p>
                        </td>
                    </tr>
                    <?php endif; ?>
                <tbody>
                    <?php $no = 1; ?>
                    <?php foreach ($dosen as $dsn): ?>
                    <tr class="text-center">
                        <th scope="row"><?php echo $no; ?></th>
                        <td><?php echo $dsn['nidn']; ?></td>
                        <td><?php echo $dsn['nama']; ?></td>
                        <td><?php echo $dsn['email']; ?></td>
                        <td><a href="dtldosen.php?id=<?= $dsn[
                            'nidn'
                        ] ?>" class="btn btn-warning" role="button">Detail</a></td>
                    </tr>
                    <?php $no++; ?>
                  <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>


    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script> -->

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>