<?php 
    include 'koneksi.php';
if (isset($_POST['tambah'])){
    $id = $_POST['id'];
    $gambar = $_POST['gambar'];
    $nama_barang= $_POST['nama_barang'];
    $merek = $_POST['merek'];
    $harga = $_POST['harga'];
    $stock_barang = $_POST['stock_barang'];

    $sql = "INSERT INTO tbl_barang (id, gambar, nama_barang, merek, harga, stock_barang) VALUES ( '$id', '$gambar', '$nama_barang', '$merek', '$harga', '$stock_barang' )";
    $query=mysqli_query($koneksi,$sql);
}
header("location:databarang.php");
?>