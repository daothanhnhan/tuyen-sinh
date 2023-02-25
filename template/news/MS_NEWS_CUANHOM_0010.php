<?php 
	$hoat_dong = $action->getList('news', 'newscat_id', '91', 'news_id', 'desc', '', '8', '');
    $hoat_dong_cat = $action->getDetail_New('newscat_languages', array('newscat_id', 'languages_code'), array('91', $lang), 'is');
?>
<style>

</style>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="container margin-top-1">
	<div class="title-modul">
		<p class="title"><a><?= $hoat_dong_cat['lang_newscat_name'] ?></a></p>
		<div class="svg">
			<img src="/images/title.svg" alt="svg">
		</div>
	</div>

	<div class="hoat-dong">
		<div class="gb-hoat-dong owl-carousel owl-theme">
            <?php 
            foreach ($hoat_dong as $item) { 
                $rowLang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array(&$item['news_id'], &$lang), 'is');
            ?>
            <div class="item">
            	<a href="/<?= $item['friendly_url'] ?>" title="" class="aspect-box">
            		<img src="/images/<?= $item['news_img'] ?>" alt="tin tức" class="aspect-img">
            	</a>
                <div class="box-info">
                	<a href="/<?= $item['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a>
                	<p><?= $rowLang['lang_news_des'] ?></p>
                </div>

            </div>
            <?php } ?>
            
        </div>
	</div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-hoat-dong').owlCarousel({
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
                    items:3
                }
            }
        });
    });
</script>