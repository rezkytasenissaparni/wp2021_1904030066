<?php 
    include 'koneksi.php';
if (isset($_POST['tambah'])){
    $id = $_POST['id'];
    $gambar= $_POST['gambar'];
    $nama_barang= $_POST['nama_barang'];
    $merek= $_POST['merek'];
    $harga= $_POST['harga'];
    $stock_barang= $_POST['stock_barang'];

    $sql = ("UPDATE tbl_barang SET gambar='$gambar', nama_barang='$nama_barang', merek='$merek', harga='$harga', stock_barang='$stock_barang' WHERE id='$id'");
    $query=mysqli_query($koneksi,$sql);
}
header("location:databarang.php?");
?>