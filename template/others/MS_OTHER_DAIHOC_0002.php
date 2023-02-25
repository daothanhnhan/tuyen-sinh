<?php 
	$so_90 = $action->getDetail_New('page_languages', array('page_id', 'languages_code'), array(54, &$lang), 'is');
	$so_97 = $action->getDetail_New('page_languages', array('page_id', 'languages_code'), array(55, &$lang), 'is');
	$so_30 = $action->getDetail_New('page_languages', array('page_id', 'languages_code'), array(56, &$lang), 'is');
	$so_60 = $action->getDetail_New('page_languages', array('page_id', 'languages_code'), array(57, &$lang), 'is');
?>
<style>

</style>
<div class="container nhung-con-so hidden-xs hidden-sm">
	<div class="row">
		<div class="col-md-4">
			<div class="box-left">
				<img src="/images/<?= $rowConfig['web_logo'] ?>" alt="Trường">
				<p class="text-1"><?= $lang=='vn' ? 'Những' : '' ?></p>
				<p class="text-2"><?= $lang=='vn' ? 'CON SỐ' : 'KEY' ?></p>
				<p class="text-3"><?= $lang=='vn' ? 'NỔI BẬT' : 'NUMBERS' ?></p>
			</div>
		</div>
		<div class="col-md-8">
			<div class="box-right">
				<div class="col-md-4">
					<img src="/images/pic1.jpg" alt="Con số">
					<div class="box-img">
						<img src="/images/pichv1.jpg" alt="Con số">
						<div class="box">
							<p class="title"><?= $so_90['lang_page_name'] ?></p>
							<div class="noidung"><?= $so_90['lang_page_des'] ?></div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box-img">
						<img src="/images/pichv2.jpg" alt="Con số">
						<div class="box">
							<p class="title"><?= $so_97['lang_page_name'] ?></p>
							<div class="noidung"><?= $so_97['lang_page_des'] ?></div>
						</div>
					</div>
					<img src="/images/pic3.jpg" alt="Con số">
					<div class="box-img">
						<img src="/images/pic4hv.jpg" alt="Con số">
						<div class="box">
							<p class="title"><?= $so_30['lang_page_name'] ?></p>
							<div class="noidung"><?= $so_30['lang_page_des'] ?></div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<img src="/images/pic2.jpg" alt="Con số">
					<div class="box-img">
						<img src="/images/pichv3.jpg" alt="Con số">
						<div class="box">
							<p class="title"><?= $so_60['lang_page_name'] ?></p>
							<div class="noidung"><?= $so_60['lang_page_des'] ?></div>
						</div>
					</div>
					<img src="/images/pci4.jpg" alt="Con số">
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container nhung-con-so-mb hidden-md hidden-lg">
	<div class="title-modul">
		<img src="/images/<?= $rowConfig['web_logo'] ?>" alt="logo" class="logo-nhung-con-so">
		<p class="title"><a><?= $lang=='vn' ? 'Những con số nổi bật' : 'Outstanding numbers' ?></a></p>
		<div class="svg">
			<img src="/images/title.svg" alt="svg">
		</div>
	</div>

	<div class="list-box">
		<div class="row">
			<div class="col-xs-4">
				<span><?= $so_90['lang_page_name'] ?></span>
			</div>
			<div class="col-xs-8">
				<?= $so_90['lang_page_des'] ?>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-4">
				<span><?= $so_97['lang_page_name'] ?></span>
			</div>
			<div class="col-xs-8">
				 <?= $so_97['lang_page_des'] ?>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-4">
				<span><?= $so_30['lang_page_name'] ?></span>
			</div>
			<div class="col-xs-8">
				 <?= $so_30['lang_page_des'] ?>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-4">
				<span><?= $so_60['lang_page_name'] ?></span>
			</div>
			<div class="col-xs-8">
				 <?= $so_60['lang_page_des'] ?>
			</div>
		</div>
	</div>
</div>