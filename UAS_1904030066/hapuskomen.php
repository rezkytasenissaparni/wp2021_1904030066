<?php 
    include 'koneksi.php';

    $id = $_GET['id'];
    
    $ambilData = mysqli_query($koneksi, "DELETE  FROM tbl_komentar WHERE id='$id'");
    header("location:komentar.php?");
 ?>