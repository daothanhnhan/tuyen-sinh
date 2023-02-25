<?php 
	$thong_tin = $action->getList('news', 'newscat_id', '100', 'news_id', 'desc', '', '3', '');
	$thong_tin_cat = $action->getDetail('newscat', 'newscat_id', 100);
	$thong_tin_cat_lang = $action->getDetail_New('newscat_languages', array('newscat_id', 'languages_code'), array(&$thong_tin_cat['newscat_id'], &$lang), 'is');//var_dump($thong_tin_cat_lang);
?>
<style>

</style>
<div class="container">
	<div class="title-modul">
		<p class="title"><a href="/<?= $thong_tin_cat['friendly_url'] ?>"><?= $thong_tin_cat_lang['lang_newscat_name'] ?></a></p>
		<div class="svg">
			<img src="/images/title.svg" alt="svg">
		</div>
	</div>
	<div class="thong-tin-tuyen-sinh">
		<div class="row">
			<?php 
			foreach ($thong_tin as $item) { 
				$rowLang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$item['news_id'], &$lang), 'is');
			?>
			<div class="col-md-4">
				<div class="box">
					<a href="/<?= $item['friendly_url'] ?>">
						<img src="/images/<?= $item['news_img'] ?>" alt="Tin tức">
					</a>
					<div class="info">
						<p><a href="/<?= $item['friendly_url'] ?>" class="title"><?= $rowLang['lang_news_name'] ?></a></p>
						<p class="des"><?= $rowLang['lang_news_des'] ?> </p>
					</div>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
</div>