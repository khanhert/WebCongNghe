<?php

include('controllers/c_gio_hang.php');
include('models/m_san_pham.php');
$c_gio_hang=new C_gio_hang();
$gio_hang=$c_gio_hang->layGioHang();
$m_mon_an=new M_San_Pham();

if($gio_hang)
{
    foreach($gio_hang as $key=>$value)
    {
        $ma_mon='sluong'.$key;
        if(isset($_POST[$ma_mon])){
            $so_luong=$_POST[$ma_mon];
            if($so_luong!=$value){
                $ma_mon=$m_mon_an->Doc_san_pham_theo_ma_san_pham($key);
                $c_gio_hang->CapNhatGioHang($key,$so_luong,$ma_mon->don_gia);
            }
        }
    }
    
    header('location:thong_tin_gio_hang.php');
}
?>