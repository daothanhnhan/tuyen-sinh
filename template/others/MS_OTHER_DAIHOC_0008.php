<?php 
	$so_70 = $action->getDetail_New('page_languages', array('page_id', 'languages_code'), array(58, $lang), 'is');
	$so_20 = $action->getDetail_New('page_languages', array('page_id', 'languages_code'), array(59, $lang), 'is');
	$so_167 = $action->getDetail_New('page_languages', array('page_id', 'languages_code'), array(60, $lang), 'is');
	$so_30 = $action->getDetail_New('page_languages', array('page_id', 'languages_code'), array(61, $lang), 'is');
?>
<style>

</style>
<div class="cac-con-so">
	<div class="container">
		<div class="title-modul">
			<p class="title white"><a><?= $lang=='vn' ? 'Các con số nổi bật' : 'Outstanding numbers' ?></a></p>
			<div class="svg">
				<img src="/images/title.svg" alt="svg">
			</div>
		</div>

		<div class="box-main">
			<div class="row">
				<div class="col-md-3">
					<div class="box">
						<p><strong><?= $so_70['lang_page_name'] ?></strong></p>
						<p class="text"><?= $so_70['lang_page_des'] ?></p>
						<div class="box-img">
							<img src="/images/n1.jpg" alt="các con số">
						</div>
						
					</div>
				</div>
				<div class="col-md-3">
					<div class="box">
						<p><strong><?= $so_20['lang_page_name'] ?></strong></p>
						<p class="text"><?= $so_20['lang_page_des'] ?></p>
						<div class="box-img">
							<img src="/images/n2.jpg" alt="các con số">
						</div>
						
					</div>
				</div>
				<div class="col-md-3">
					<div class="box">
						<p><strong><?= $so_167['lang_page_name'] ?></strong></p>
						<p class="text"><?= $so_167['lang_page_des'] ?></p>
						<div class="box-img">
							<img src="/images/n3.jpg" alt="các con số">
						</div>
						
					</div>
				</div>
				<div class="col-md-3">
					<div class="box">
						<p><strong><?= $so_30['lang_page_name'] ?></strong></p>
						<p class="text"><?= $so_30['lang_page_des'] ?></p>
						<div class="box-img">
							<img src="/images/n4.jpg" alt="các con số">
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>