<?php
require 'function.php';

// agar tidak bisa masuk secara pengetikan manual pada url
if (!isset($_GET['id'])) {
    header('location: index.php');
    exit();
}

$id = $_GET['id'];
if (hapus($id) > 0) {
    echo "<script>
        alert('data berhasil di Hapus');
        document.location.href = 'index.php';
     </script>";
} else {
    echo "<script>
        alert('data gagal di Hapus');
    </script>";
}

?>
