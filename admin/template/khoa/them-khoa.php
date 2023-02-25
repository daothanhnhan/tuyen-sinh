<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function khoa () {
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
			$gallery = mysqli_real_escape_string($conn_vn, $_POST['gallery']);

			$sql = "INSERT INTO khoa (name, gallery) VALUES ('$name', '$gallery')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				$khoa_id = mysqli_insert_id($conn_vn);
				// main
				$sql = "INSERT INTO menu (menu_name, menu_sort_order, menu_type_id, menu_url, productcat_id, newscat_id, product_id, page_id, news_id, state, menu_parent, servicecat_id, service_id, state_menuHeader, khoa_id) VAlUES ('$name', '0', '1', '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '$khoa_id')";
				$result = mysqli_query($conn_vn, $sql);
				// vn
				$menu_id = mysqli_insert_id($conn_vn);
				$sql = "INSERT INTO menu_languages (languages_code, lang_menu_name, edit_state, urlFriendly_menu, menu_id) VALUES ('vn', '$name', '0', '', '$menu_id')";
				$result = mysqli_query($conn_vn, $sql);
				// en
				$sql = "INSERT INTO menu_languages (languages_code, lang_menu_name, edit_state, urlFriendly_menu, menu_id) VALUES ('en', '$name', '0', '', '$menu_id')";
				$result = mysqli_query($conn_vn, $sql);

				echo '<script type="text/javascript">alert(\'Bạn đã thêm được một khoa.\');window.location.href="index.php?page=khoa"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	khoa();

	////////////////////////
	// $name = "Nghiên cứu";
	// $sql = "INSERT INTO menu (menu_name, menu_sort_order, menu_type_id, menu_url, productcat_id, newscat_id, product_id, page_id, news_id, state, menu_parent, servicecat_id, service_id, state_menuHeader, khoa_id) VAlUES ('$name', '0', '1', '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '3')";
	// $result = mysqli_query($conn_vn, $sql);
	// // vn
	// $menu_id = mysqli_insert_id($conn_vn);
	// $sql = "INSERT INTO menu_languages (languages_code, lang_menu_name, edit_state, urlFriendly_menu, menu_id) VALUES ('vn', '$name', '0', '', '$menu_id')";
	// $result = mysqli_query($conn_vn, $sql);
	// // en
	// $sql = "INSERT INTO menu_languages (languages_code, lang_menu_name, edit_state, urlFriendly_menu, menu_id) VALUES ('en', '$name', '0', '', '$menu_id')";
	// $result = mysqli_query($conn_vn, $sql);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin khoa<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=khoa">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên khoa</p>
            <input type="text" class="txtNCP1" name="name" required/>
            <p class="titleRightNCP">Video Gallery</p>
            <textarea name="gallery" class="txtNCP1"></textarea>
            <!-- <p class="titleRightNCP">Ảnh thương hiệu</p>
            <input type="file" class="txtNCP1" name="image" required/> -->
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Phát Triển Thương Hiệu Cafe Link Việt Nam</p>