<?php

include_once('./models/database.php');
//include('./controllers/c_gio_hang.php');
class M_KhachHang extends database{
 
     function them_khach_hang($hoten,$diachi,$email,$sodienthoai){

            $database =new database();
            $chuoiSQL='INSERT INTO users (`tenkh`, `diachi`, `email`, `sdt`) VALUES (?,?,?,?)';
            $database->setQuery($chuoiSQL);
            $database->execute(array($hoten,$diachi,$email,$sodienthoai));
            return $database->getLastId();
     }
    
     function them_hoa_don($makh,$ngayban)
     {
         $database=new database();
         $chuoiSQL='INSERT INTO hoadon (`makh`, `ngayban`) VALUES (?,?) ';
         $database->setQuery($chuoiSQL);
         $database->execute(array($makh,$ngayban));
         return $database->getLastId();
     }
     
     function them_ct_hoa_don($mahoadon,$ttGH)
    {
        $database =new database();
        foreach($ttGH as $item)
        {
            $chuoiSQL='INSERT INTO `chitiethoadon`(`mahoadon`, `masp`, `soluong`, `dongia`, `thanh_tien`) VALUES (?,?,?,?,?)';
            $database->setQuery($chuoiSQL);
            $database->execute(array($mahoadon,$item->masp,$item->so_luong,$item->gia,$item->so_luong*$item->gia));
            
        }
        return true;
    }
}

?>