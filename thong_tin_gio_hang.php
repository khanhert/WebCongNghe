<?php
include "controllers/c_gio_hang.php";
$c_gio_hang = new C_gio_hang();
$ttGioHang = $c_gio_hang->thong_tin_gio_hang();

include "views/khach_hang/v_thong_tin_gio_hang.php";

?>