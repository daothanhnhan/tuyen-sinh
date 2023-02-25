<?php 
    $noi_ve_khoa = $action->getList('noi_ve_khoa', 'khoa_id', $khoa_id, 'id', 'asc', '', '', '');
?>
<style>

</style>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="noi-ve-khoa-bg">
    <div class="container">
        <div class="title-modul">
            <p class="title"><a><?= $lang=='vn' ? 'Sinh viên nói về khoa' : 'Students talk about faculty' ?></a></p>
            <div class="svg">
                <img src="/images/title.svg" alt="svg">
            </div>
        </div>

        <div class="noi-ve-khoa">
            <div class="gb-sinh-vien-noi-ve-khoa owl-carousel owl-theme">
                <?php foreach ($noi_ve_khoa as $item) { ?>
                <div class="row">
                    <div class="col-md-5 box-left">
                        <img src="/images/<?= $item['image'] ?>" alt="sinh viên">
                    </div>
                    <div class="col-md-7 box-right">
                        <div class="box-1">
                            <?= $item['note'] ?>
                        </div>
                        <h3><?= $item['name'] ?></h3>
                        <p><?= $item['position'] ?></p>
                    </div>

                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>


<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-sinh-vien-noi-ve-khoa').owlCarousel({
            loop:true,
            autoplay: true,
            responsiveClass:true,
            nav:true,
            navText:[],
            dots:false,
            margin:0,
            responsive:{
                0:{
                    items:1
                },
                768:{
                    items:1
                }
            }
        });
    });
</script>