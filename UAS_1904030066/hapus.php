<?php 
    include 'koneksi.php';

    $id = $_GET['id'];
    
    $ambilData = mysqli_query($koneksi, "DELETE  FROM tbl_barang WHERE id='$id'");
    header("location:databarang.php?");
 ?>