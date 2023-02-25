<?php 
	$guong_mat = $action->getList('guong_mat', '', '', 'id', 'asc', '', '', '');
?>
<style>

</style>
<div class="container margin-top-1">
	<div class="title-modul">
		<p class="title"><a><?= $lang=='vn' ? 'Gương mặt USTH' : 'USTH\'s face' ?></a></p>
		<div class="svg">
			<img src="/images/title.svg" alt="svg">
		</div>
	</div>

	<div class="guong-mat">
		<div class="row">
			<?php foreach ($guong_mat as $item) { ?>
			<div class="col-md-3">
				<img src="/images/<?= $item['image'] ?>" alt="gương mặt">
				<a href="" title=""><?= $item['name'] ?></a>
				<p><?= $item['position'] ?></p>
			</div>
			<?php } ?>
		</div>
	</div>
</div>