<?php 
	$tin_tuc_state = 1;
	$su_kien_state = 1;
	$tin_tuc = $action->getDetail_New('newscat', array('khoa_id', 'tin_tuc'), array(&$khoa_id, &$tin_tuc_state), 'ii');
	$su_kien = $action->getDetail_New('newscat', array('khoa_id', 'su_kien'), array(&$khoa_id, &$su_kien_state), 'ii');

	if (!empty($tin_tuc)) {
		$list_tin_tuc = $action->getList('news', 'newscat_id', $tin_tuc['newscat_id'], 'news_id', 'desc', '', '4', '');//var_dump($list_tin_tuc);
		$list_tin_tuc_0 = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$list_tin_tuc[0]['news_id'], &$lang), 'is');
		// var_dump($list_tin_tuc_0);
	} else {
		$list_tin_tuc = array();
	}

	if (!empty($su_kien)) {
		$list_su_kien = $action->getList('news', 'newscat_id', $su_kien['newscat_id'], 'news_id', 'desc', '', '4', '');
		// $list_su_kien_0 = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$list_su_kien[0]['news_id'], &$lang), 'is');
	} else {
		$list_su_kien = array();
	}
	
	
?>
<style>

</style>
<div class="container tin-tuc-su-kien">
	<div class="row">
		<div class="col-md-6 box-left">
			<h2><a href="/<?= $tin_tuc['friendly_url'] ?>"><?= $lang=='vn' ? 'Tin tức' : 'News' ?></a></h2>
			<img src="/images/titlel.svg" alt="svg" class="svg">
			<div class="row box-1">
				<div class="col-md-6">
					<a href="/<?= $list_tin_tuc[0]['friendly_url'] ?>">
						<img src="/images/<?= $list_tin_tuc[0]['news_img'] ?>" alt="tin tức" class="img-main">
					</a>
				</div>
				<div class="col-md-6">
					<h3>
						<a href="/<?= $list_tin_tuc[0]['friendly_url'] ?>" title=""><?= $list_tin_tuc_0['lang_news_name'] ?></a>
					</h3>
					<p><?= $list_tin_tuc_0['lang_news_des'] ?></p>
				</div>
			</div>

			<?php 
			unset($list_tin_tuc[0]);
			foreach ($list_tin_tuc as $item) {
				$rowLang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$item['news_id'], &$lang), 'is');
			?>
			<div class="row box-2">
				<div class="col-md-3 col-xs-4">
					<a href="/<?= $item['friendly_url'] ?>">
						<img src="/images/<?= $item['news_img'] ?>" alt="tin tức">
					</a>
				</div>
				<div class="col-md-9 col-xs-8">
					<h3><a href="/<?= $item['friendly_url'] ?>" title="tin tức"><?= $rowLang['lang_news_name'] ?></a></h3>
				</div>
			</div>
			<?php } ?>
		</div>
		<div class="col-md-6 box-right">
			<h2><a href="/<?= $su_kien['friendly_url'] ?>"><?= $lang=='vn' ? 'Sự kiện' : 'Event' ?></a></h2>
			<img src="/images/titlel.svg" alt="svg" class="svg">

			<a href="/<?= $list_su_kien[0]['friendly_url'] ?>">
				<img src="/images/<?= $list_su_kien[0]['news_img'] ?>" alt="tin tức" class="img-main">
			</a>

			<?php 
			unset($list_su_kien[0]);
			foreach ($list_su_kien as $item) { 
				$rowLang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$item['news_id'], &$lang), 'is');
			?>
			<div class="row box-2">
				<div class="col-md-2 col-xs-3">
					<div class="datebox">
						<p class="month">Tháng <?= date('m' ,strtotime($item['news_created_date'])) ?></p>
						<p class="day"><?= date('d' ,strtotime($item['news_created_date'])) ?></p>
					</div>
				</div>
				<div class="col-md-10 col-xs-9">
					<h3 class="widget-item-title">
						<a href="/<?= $item['friendly_url'] ?>" title="tin tức"><?= $rowLang['lang_news_name'] ?></a>
					</h3>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
</div>