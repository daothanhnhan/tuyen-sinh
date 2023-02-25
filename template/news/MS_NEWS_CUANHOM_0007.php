<?php 
	// $khoa_id = $_GET['trang'];
	$de_tai_du_an = 1;
	$cong_bo_khoa_hoc = 1;
	$co_so_vat_chat = 1;
	$de_tai = $action->getDetail_New('news', array('khoa_id', 'de_tai_du_an'), array(&$khoa_id, &$de_tai_du_an), 'ii');//var_dump($de_tai);
	$cong_bo = $action->getDetail_New('news', array('khoa_id', 'cong_bo_khoa_hoc'), array(&$khoa_id, &$cong_bo_khoa_hoc), 'ii');
	$co_so = $action->getDetail_New('news', array('khoa_id', 'co_so_vat_chat'), array(&$khoa_id, &$co_so_vat_chat), 'ii');

	// $de_tai_lang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$de_tai['news_id'], &$lang), 'is');
	// $cong_bo_lang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$cong_bo['news_id'], &$lang), 'is');
	// $co_so_lang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$co_so['news_id'], &$lang), 'is');
?>
<style>

</style>
<div class="container">
	<div class="title-modul">
		<p class="title"><a><?= $lang=='vn' ? 'Nghiên cứu' : 'Study' ?></a></p>
		<div class="svg">
			<img src="/images/title.svg" alt="svg">
		</div>
	</div>

	<div class="nghien-cuu">
		<div class="row">
			<div class="col-md-4">
				<a href="/<?= $de_tai['friendly_url'] ?>" title="" class="aspect-box">
					<img src="/images/<?= $de_tai['news_img'] ?>" alt="tin tức" class="aspect-img">
				</a>
				<h3 class="widget-item-title">
					<a href="/<?= $de_tai['friendly_url'] ?>" tabindex="0"><?= $lang=='vn' ? 'Đề tài/ dự án nghiên cứu' : 'Research topic/project' ?></a>
				</h3>
			</div>
			<div class="col-md-4">
				<a href="/<?= $cong_bo['friendly_url'] ?>" title="" class="aspect-box">
					<img src="/images/<?= $cong_bo['news_img'] ?>" alt="tin tức" class="aspect-img">
				</a>
				<h3 class="widget-item-title">
					<a href="/<?= $cong_bo['friendly_url'] ?>" tabindex="0"><?= $lang=='vn' ? 'Công bố khoa học' : 'Scientific publication' ?></a>
				</h3>
			</div>
			<div class="col-md-4">
				<a href="/<?= $co_so['friendly_url'] ?>" title="" class="aspect-box">
					<img src="/images/<?= $co_so['news_img'] ?>" alt="tin tức" class="aspect-img">
				</a>
				<h3 class="widget-item-title">
					<a href="<?= $co_so['friendly_url'] ?>" tabindex="0"><?= $lang=='vn' ? 'Cơ sở vật chất' : 'Infrastructure' ?></a>
				</h3>
			</div>
		</div>
	</div>
</div>