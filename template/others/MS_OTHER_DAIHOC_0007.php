<?php 
	$khoa = $action->getDetail('khoa', 'id', $khoa_id);//var_dump($khoa);

	$list_nhan_su = $action->getList('nhan_su', 'khoa_id', $khoa_id, 'id', 'asc', '', '', '');
?>
<style>

</style>
<div class="nhan-su-bg">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<img src="/images/anh-ged-555x370.jpg" alt="trường">
			</div>
			<div>
				<p><?= $khoa['name'] ?></p>
			</div>
		</div>
	</div>
</div>

<div class="nhan-su">
	<div class="container">
		<div>
			<h1>Đội ngũ cán bộ, giảng viên</h1>
			<img src="/images/titlel.svg" alt="svg" class="svg">
		</div>
		<div class="row">
			<?php foreach ($list_nhan_su as $item) { ?>
			<div class="col-md-3">
				<img src="/images/<?= $item['image'] ?>" alt="Nhân sự" class="img-nhan-su">
				<p class="name"><?= $item['name'] ?></p>
				<p class="position"><?= $item['position'] ?></p>
			</div>
			<?php } ?>
		</div>
	</div>
</div>