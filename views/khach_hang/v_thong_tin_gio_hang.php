<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>


  <h1 style="text-align: center;"> Thông Tin Giỏ Hàng </h1>
  
    <div class="container">
        <div class="row">
            <div class="col-md-12">
              <?php
              
                  if($ttGioHang)
                  {
              ?>
                <form action="cap_nhat_gio_hang.php" method="POST">
                <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">sản phẩm</th>
      <th scope="col">Tên sản phẩm</th>
      <th scope="col">Số lượng</th>
    </tr>
  </thead>
  <tbody>
      <?php
        $i = 1;
        foreach($ttGioHang as $item){
      ?>
        <tr>
        <th scope="row"><?php echo $i ?></th>
        <td><img style="width: 70px;" src="images/san_pham/<?php echo $item->hinh ?>"/></td>
        <td><?php echo $item->tensp ?></td>
        <td><input type="number" value="<?php echo $item->so_luong ?>" name="sluong<?php echo $item->masp ?>" style="width: 70px; text-align: center;"/></td>
        </tr>
    <?php
        $i++;
            }
    ?>
    <tr>
        
        <td colspan="4">
            <input type="submit" value="Cập nhật" name="btnCapNhat" class="btn btn-info">
            <a href="xoa_gio_hang.php" class="btn btn-danger">Xóa giỏ hàng</a>
            <a href="." class="btn btn-primary">Tiếp tục mua hàng</a>
            <a href="them_thong_tin_khach_hang.php" class="btn btn-primary">Tiến hành đặt hàng</a>

        </td>     
        
        </tr>
        <tr>
        <td colspan="4">
           <i>Lưu ý: Để xóa 1 mặt hàng nhập số luong 0</i>
        </td>   
        </tr>
  </tbody>
</table>

                </form>
                <?php
                
          }else
          {

            echo 'Gio Hang Rong';
          }
                
                ?>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
  </body>
</html>