<?php 
    include 'koneksi.php';
if (isset($_POST['tambah'])){
    $id = $_POST['id'];
    $username = $_POST['username'];
    $email = $_POST['email'];
    $komentar = $_POST['komentar'];

    $sql = "INSERT INTO tbl_komentar (id, username, email, komentar) VALUES ( '$id', '$username', '$email', '$komentar' )";
    $query=mysqli_query($koneksi,$sql);
}
header("location:komentar.php");
?>