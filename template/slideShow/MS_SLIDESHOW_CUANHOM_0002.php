<?php 
    $slide = $action->getList_1('slide', 'khoa_id', $khoa_id, 'id', 'asc', '', '', '');//var_dump($slide);
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<link rel="stylesheet" href="/plugin/animsition/css/animate.css">
<div class="gb-slideshow_cuanhom">
    <div class="gb-slideshow_cuanhom-slide owl-carousel owl-theme">
         <?php
            foreach ($slide as $item) {
                ?> 
        <div class="item">
            <img src="/images/<?= $item['image']?>" alt="slideshow" class="img-responsive">
        </div>
        <?php                            
          }
        ?>  
    </div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-slideshow_cuanhom-slide').owlCarousel({
            loop:true,
            margin:0,
            navSpeed:500,
            nav:true,
            dots: false,
            autoplay: true,
            rewind: true,
            navText:[],
            items:1
        });
    });
</script>