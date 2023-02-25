<?php 
    function uploadPicture($src, $img_name, $img_temp){

        $src = $src.$img_name;//echo $src;

        if (!@getimagesize($src)){

            if (move_uploaded_file($img_temp, $src)) {

                return true;

            }

        }

    }

    

    function noi_ve_khoa ($khoa_id) {
        global $conn_vn;
        if (isset($_POST['add_trademark'])) {
            $src= "../images/";
            // $src = "uploads/";

            $image = '';
            if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

                uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
                $image = $_FILES['image']['name'];

            }

            $name = mysqli_real_escape_string($conn_vn, $_POST['name']);
            $note = mysqli_real_escape_string($conn_vn, $_POST['note']);
            $position = mysqli_real_escape_string($conn_vn, $_POST['position']);

            $sql = "INSERT INTO noi_ve_khoa (name, image, note, position, khoa_id) VALUES ('$name', '$image', '$note', '$position', '$khoa_id')";
            $result = mysqli_query($conn_vn, $sql);
            if ($result) {
                echo '<script type="text/javascript">alert(\'Bạn đã thêm được một Nói về khoa.\');window.location.href="index.php?page=noi-ve-khoa&khoa_id='.$khoa_id.'"</script>';
            } else {
                echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
            }
            
        }
    }

    noi_ve_khoa($_GET['khoa_id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin Nói về khoa<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=noi-ve-khoa&khoa_id=<?= $_GET['khoa_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" required/>
            <p class="titleRightNCP">Vị trí</p>
            <input type="text" class="txtNCP1" name="position" required/>
            <p class="titleRightNCP">Nội dung</p>
            <textarea name="note" class="txtNCP1" required=""></textarea>
            <p class="titleRightNCP">Ảnh thương hiệu</p>
            <input type="file" class="txtNCP1" name="image" required/>
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Phát Triển Thương Hiệu Cafe Link Việt Nam</p>