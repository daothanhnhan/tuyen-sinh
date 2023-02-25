<?php 
	$huong_nghiep = $action->getDetail('newscat', 'newscat_id', 92);
	$thuc_tap = $action->getDetail('newscat', 'newscat_id', 93);
	$co_hoi = $action->getDetail('newscat', 'newscat_id', 94);

	$huong_nghiep_lang = $action->getDetail_New('newscat_languages', array('newscat_id', 'languages_code'), array(92, $lang), 'is');
	$thuc_tap_lang = $action->getDetail_New('newscat_languages', array('newscat_id', 'languages_code'), array(93, $lang), 'is');
	$co_hoi_lang = $action->getDetail_New('newscat_languages', array('newscat_id', 'languages_code'), array(94, $lang), 'is');
?>
<style>

</style>
<div class="huong-nghiep-bg">
	<div class="container">
		<div class="title-modul">
			<p class="title"><a><?= $lang=='vn' ? 'Hướng ngiệp' : 'Vocational guidance' ?></a></p>
			<div class="svg">
				<img src="/images/title.svg" alt="svg">
			</div>
		</div>

		<div class="huong-nghiep">
			<div class="row">
				<div class="col-md-4">
					<div class="box">
						<a href="/<?= $huong_nghiep['friendly_url'] ?>" title="">
							<img src="/images/<?= $huong_nghiep['newscat_img'] ?>" alt="hướng nghiệp">
						</a>
						
						<div class="box-title">
							<a href="/<?= $huong_nghiep['friendly_url'] ?>" title=""><?= $huong_nghiep_lang['lang_newscat_name'] ?></a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box">
						<a href="/<?= $thuc_tap['friendly_url'] ?>" title="">
							<img src="/images/<?= $thuc_tap['newscat_img'] ?>" alt="hướng nghiệp">
						</a>
						
						<div class="box-title">
							<a href="/<?= $thuc_tap['friendly_url'] ?>" title=""><?= $thuc_tap_lang['lang_newscat_name'] ?></a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box">
						<a href="/<?= $co_hoi['friendly_url'] ?>" title="">
							<img src="/images/<?= $co_hoi['newscat_img'] ?>" alt="hướng nghiệp">
						</a>
						
						<div class="box-title">
							<a href="/<?= $co_hoi['friendly_url'] ?>" title=""><?= $co_hoi_lang['lang_newscat_name'] ?></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
