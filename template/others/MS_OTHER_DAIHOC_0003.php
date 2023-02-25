<?php 
	$gallery_state = 1;
	$gallery = $action->getDetail_New('newscat', array('khoa_id', 'gallery'), array(&$khoa_id, &$gallery_state), 'ii');
	$gallery_lang = $action->getDetail_New('newscat_languages', array('newscat_id', 'languages_code'), array(&$gallery['newscat_id'], &$lang), 'ii');
	if (empty($gallery)) {
		$gallery_list = array();
	} else {
		$gallery_list = $action->getList('news', 'newscat_id', $gallery['newscat_id'], 'news_id', 'desc', '', '3', '');
	}
?>
<style>

</style>
<div class="kham-pha-usth-bg">
	<div class="container">
		<div class="title-modul">
			<p class="title white"><a href="/<?= $gallery['friendly_url'] ?>"><?= $gallery_lang['lang_newscat_name'] ?></a></p>
			<div class="svg">
				<img src="/images/title.svg" alt="svg">
			</div>
		</div>

		<div class="kham-pha-usth">
			<div class="row">
				<div class="col-md-8">
					<?= $gallery['newscat_des'] ?>
				</div>
				<div class="col-md-4">
					<?php foreach ($gallery_list as $item) { 
						$rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang);
					?>
					<div class="box">
						<div class="row">
							<div class="col-xs-6">
								<a href="/<?= $item['friendly_url'] ?>">
									<img src="/images/<?= $item['news_img'] ?>" alt="tin tức">
								</a>
							</div>
							<div class="col-xs-6">
								<a href="/<?= $item['friendly_url'] ?>" class="title"><?= $rowLang['lang_news_name'] ?></a>
							</div>
						</div>
					</div>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
</div>
