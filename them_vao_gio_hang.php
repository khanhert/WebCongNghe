<?php
include "controllers/c_gio_hang.php";

$masp = $_POST['masp'];
$dongia = $_POST['dongia'];
$soluong = $_POST['soluong']*1;

$c_gio_hang = new C_gio_hang();
$c_gio_hang->themGioHang($masp,$soluong,$dongia);
header("location:thong_tin_gio_hang.php");

?>