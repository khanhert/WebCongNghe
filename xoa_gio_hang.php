<?php

include('controllers/c_gio_hang.php');
include('models/m_san_pham.php');
$c_gio_hang=new C_gio_hang();
$gio_hang=$c_gio_hang->xoaGioHang();
    
    header('location:thong_tin_gio_hang.php');

?>