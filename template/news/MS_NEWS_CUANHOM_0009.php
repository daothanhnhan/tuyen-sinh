<?php 
	// $khoa_id = $_GET['trang'];
	$dai_hoc_state = 1;
	$thac_si_state = 1;
	$tien_si_state = 1;
	$dai_hoc = $action->getDetail_New('newscat', array('khoa_id', 'dai_hoc'), array(&$khoa_id, &$dai_hoc_state), 'ii');
	$thac_si = $action->getDetail_New('newscat', array('khoa_id', 'thac_si'), array(&$khoa_id, &$thac_si_state), 'ii');
	$tien_si = $action->getDetail_New('newscat', array('khoa_id', 'tien_si'), array(&$khoa_id, &$tien_si_state), 'ii');

	$dai_hoc_lang = $action->getDetail_New('newscat_languages', array('newscat_id', 'languages_code'), array(&$dai_hoc['newscat_id'], &$lang), 'is');
	$thac_si_lang = $action->getDetail_New('newscat_languages', array('newscat_id', 'languages_code'), array(&$thac_si['newscat_id'], &$lang), 'is');
	$tien_si_lang = $action->getDetail_New('newscat_languages', array('newscat_id', 'languages_code'), array(&$tien_si['newscat_id'], &$lang), 'is');
?>
<style>

</style>
<div class="container chuong-trinh-dao-tao">
	<p class="title"><a><?= $lang=='vn' ? 'Chương trình đào tạo' : 'Education program' ?></a></p>
	<div class="svg">
		<img src="/images/title.svg" alt="svg">
	</div>
	<!-- <p class="des"></p> -->
	
	
	<div class="box-in">
		<div class="box-left">
			<div class="main">
				<a href="/<?= $dai_hoc['friendly_url'] ?>" title="">
					<img src="/images/<?= $dai_hoc['newscat_img'] ?>" alt="tin tức">
				</a>
				<div class="sub">
					<p class="title">
						<a href="/<?= $dai_hoc['friendly_url'] ?>">
							<span><?= $lang=='vn' ? 'Đại học' : 'University' ?></span>
						</a>
					</p>
					<a href="/<?= $dai_hoc['friendly_url'] ?>" class="readmore"><?= $dai_hoc_lang['lang_newscat_des'] ?></a>
				</div>
			</div>
		</div>
		<div class="box-right">
			<div class="main">
				<a href="/<?= $thac_si['friendly_url'] ?>" title="">
					<img src="/images/<?= $thac_si['newscat_img'] ?>" alt="tin tức">
				</a>
				<div class="sub">
					<p class="title">
						<a href="/<?= $thac_si['friendly_url'] ?>">
							<span><?= $lang=='vn' ? 'Thạc sĩ' : 'Master' ?></span>
						</a>
					</p>
					<a href="/<?= $thac_si['friendly_url'] ?>" class="readmore"><?= $thac_si_lang['lang_newscat_des'] ?></a>
				</div>
			</div>
			<div class="main">
				<a href="/<?= $tien_si['friendly_url'] ?>" title="">
					<img src="/images/<?= $tien_si['newscat_img'] ?>" alt="tin tức">
				</a>
				<div class="sub">
					<p class="title">
						<a href="/<?= $tien_si['friendly_url'] ?>">
							<span><?= $lang=='vn' ? 'Tiến sĩ' : 'Doctor' ?></span>
						</a>
					</p>
					<a href="/<?= $tien_si['friendly_url'] ?>" class="readmore"><?= $tien_si_lang['lang_newscat_des'] ?></a>
				</div>
			</div>
		</div>
	</div>
	
</div>