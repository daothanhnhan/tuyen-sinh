<?php 
	$moi_nhat = $action->getList('news', 'newscat_id', '97', 'news_id', 'desc', '', '5', '');
	$moi_nhat_0 = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array($moi_nhat[0]['news_id'], $lang), 'is');
?>
<style>

</style>
<div class="container margin-top-1">
	<div class="title-modul">
		<p class="title"><a><?= $lang=='vn' ? 'Tin tức mới nhất' : 'Latest news' ?></a></p>
		<div class="svg">
			<img src="/images/title.svg" alt="svg">
		</div>
	</div>

	<div class="tin-moi-nhat">
		<div class="row">
			<div class="col-md-6 box-left">
				<a href="/<?= $moi_nhat[0]['friendly_url'] ?>">
					<img src="/images/<?= $moi_nhat[0]['news_img'] ?>" alt="tin tức">
				</a>
				<a href="/<?= $moi_nhat[0]['friendly_url'] ?>"><?= $moi_nhat_0['lang_news_name'] ?></a>
				<p class="time"><i class="fa fa-calendar-o"></i> <?= date('d/m/Y', strtotime($moi_nhat[0]['news_created_date'])) ?></p>
			</div>
			<div class="col-md-6 box-right">
				<?php 
				unset($moi_nhat[0]);
				foreach ($moi_nhat as $item) { 
					$rowLang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$item['news_id'], &$lang), 'is');
				?>
				<div class="row">
					<div class="col-md-4 col-xs-4">
						<a href="/<?= $item['friendly_url'] ?>" title="">
							<img src="/images/<?= $item['news_img'] ?>" alt="tin tức">
						</a>
					</div>
					<div class="col-md-8 col-xs-8">
						<a href="/<?= $item['friendly_url'] ?>" title="">
							<?= $rowLang['lang_news_name'] ?>
						</a>
						<p class="time"><i class="fa fa-calendar-o"></i> <?= date('d/m/Y', strtotime($item['news_created_date'])) ?></p>
					</div>
				</div>
				<?php } ?>
			</div>
		</div>
	</div>
</div>