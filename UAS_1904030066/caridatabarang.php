<?php 
    include 'koneksi.php';
    if(isset($_GET['cari'])){
        $cari = $_GET['cari'];
        echo "<b>Hasil pencarian : ".$cari."</b>";
    }

    header("location:databarang.php");
?>