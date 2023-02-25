<style>

</style>
<select name="" class="select-menu-mb hidden-md hidden-lg" onchange="chon_menu(this.value)">
	<option value="#">Danh mục</option>
	<?php 
	    // $list_menu = $menu->getListMainMenu_byOrderASC();
	    // $menu->showMenu_byMultiLevel_mainMenuTraiCam($list_menu,0,$lang,0);
	    if ($_GET['page'] == 'khoa') {
	        $khoa_id = $_GET['trang'];
	        $menu_parent = 0;
	        $menu_id = $action->getDetail_New('menu', array('menu_parent', 'khoa_id'), array(&$menu_parent, &$khoa_id), 'ii')['menu_id'];
	    } else {
	        $menu_parent = 0;
	        $menu_id = $action->getDetail_New('menu', array('menu_parent', 'khoa_id'), array(&$menu_parent, &$khoa_id), 'ii')['menu_id'];
	    }

	    $main_menu = $menu->main_menu($menu_id, $lang);
	    $menu->show_menu_sub_mb($main_menu, $lang);
	?>
</select>

<script>
	function chon_menu (link) {
		window.location.href = link;
	}
</script>
