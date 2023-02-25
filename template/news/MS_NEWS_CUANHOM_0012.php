<?php 
	$cau_lac_bo = $action->getList('news', 'newscat_id', '95', 'news_id', 'desc', '', '', '');
	$cau_lac_bo_cat = $action->getDetail('newscat', 'newscat_id', 95);
?>
<style>

</style>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="cau-lac-bo">
	<div class="container">
		<div class="title-modul">
			<p class="title white"><a><?= $lang=='vn' ? 'Câu lạc bộ sinh viên' : 'Student Club' ?></a></p>
			<div class="svg">
				<img src="/images/title.svg" alt="svg">
			</div>
		</div>
	</div>

	<div class="container">
		<div class="main">
			<div class="gb-cau-lac-bo owl-carousel owl-theme">
				<?php 
				foreach ($cau_lac_bo as $item) { 
					$rowLang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$item['news_id'], &$lang), 'is');
				?>
		        <div class="item">
		        	<a href="/<?= $item['friendly_url'] ?>" title="" class="aspect-box">
		        		<img src="/images/<?= $item['news_img'] ?>" alt="tin tức" class="aspect-img">
		        	</a>
		        	<a href="/<?= $item['friendly_url'] ?>" title="" class="title"><?= $rowLang['lang_news_name'] ?></a>
		        </div>
		        <?php } ?>
		    </div>
		</div>

		<div class="xem-chi-tiet">
			<a href="/<?= $cau_lac_bo_cat['friendly_url'] ?>"><?= $lang=='vn' ? 'Xem chi tiết' : 'See details' ?></a>
		</div>
	</div>
	
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-cau-lac-bo').owlCarousel({
            loop:true,
            autoplay: true,
            responsiveClass:true,
            nav:true,
            navText:[],
            dots:false,
            margin:20,
            responsive:{
                0:{
                    items:1
                },
                768:{
                    items:4
                }
            }
        });
    });
</script>