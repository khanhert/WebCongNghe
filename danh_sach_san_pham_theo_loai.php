<?php

include('./controllers/c_san_pham.php');
$dsl=new San_Pham();
$dsl->danh_sach_san_pham_theo_loai();
?>