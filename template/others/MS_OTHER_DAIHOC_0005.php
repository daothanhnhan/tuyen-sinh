<?php 
    // var_dump($khoa_id);
    $doi_tac = $action->getList_1('doi_tac', 'khoa_id', $khoa_id, 'id', 'asc', '', '', '');
?>
<style>

</style>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="container margin-top-1">
	<div class="title-modul">
		<p class="title"><a><?= $lang=='vn' ? 'Đối tác' : 'Partner' ?></a></p>
		<div class="svg">
			<img src="/images/title.svg" alt="svg">
		</div>
	</div>

	<div class="doi-tac">
		<div class="gb-doi-tac owl-carousel owl-theme">
            <?php foreach ($doi_tac as $item) { ?>
            <div class="item">
                <img src="/images/<?= $item['image'] ?>" alt="đối tác">
            </div>
            <?php } ?>
            
        </div>
	</div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-doi-tac').owlCarousel({
            loop:true,
            autoplay: true,
            responsiveClass:true,
            nav:true,
            navText:[],
            dots:false,
            margin:0,
            responsive:{
                0:{
                    items:2
                },
                768:{
                    items:5
                }
            }
        });
    });
</script>