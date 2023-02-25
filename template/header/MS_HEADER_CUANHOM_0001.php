<?php 
    $ten_truong = explode("\r\n", $rowConfig_lang['lang_content_home5']);
?>
<!--MENU MOBILE-->

<?php include_once DIR_MENU."MS_MENU_CUANHOM_0002.php"; ?>

<!-- End menu mobile-->



<!--MENU DESTOP-->
<style>
.flag {
    float: right;
    padding-top: 10px;
}
</style>
<header>

    <div class="header-top-1">
        <div class="container">
            <div class="flag">
                <img src="/images/vi.svg" alt="flag" onclick="lang_vn()">
                <img src="/images/en.svg" alt="flag" onclick="lang_en()">
            </div>
            <?php include_once DIR_SEARCH."MS_SEARCH_CUANHOM_0002.php"; ?>
            <div class="box-right">
                <ul>
                    <li><a href=""><?= $lang=='vn' ? 'Thời khóa biểu' : 'Schedule' ?></a></li>
                    <li><a href=""><?= $lang=='vn' ? 'Tuyển dụng' : 'Recruitment' ?></a></li>
                    <li><a href="/lien-he/0"><?= $lang=='vn' ? 'Liên hệ' : 'Contact' ?></a></li>
                </ul>

            </div>

        </div>
    </div>

    <div class="header-top-2 hidden-xs hidden-sm">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-xs-4">
                    <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="logo"></a>
                </div>
                <div class="col-md-10 col-xs-8">
                    <?php if (!isset($_GET['page']) || $khoa_id == 0) { ?>
                    <section id="text-7" class="truong-dai-hoc">
                        <div class="widget-wrap">           
                            <div class="textwidget">
                                <?php foreach ($ten_truong as $ten) { ?>
                                <p><?= $ten ?></p>
                                <?php } ?>
                            </div>
                        </div>
                    </section>
                    <section id="image-upload-widget-4" class="info-contact">
                        <div class="widget-wrap">
                            <div class="mainposts">
                                <a href="" class="alignleft">
                                    <img src="/images/h-register.png" alt="h-register">
                                </a>
                                <div class="box">
                                    <p class="title">
                                        <a href=""><?= $lang=='vn' ? 'Nộp hồ sơ' : 'Apply' ?></a>
                                    </p>
                                    <a href="" class="readmore">Online</a>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="image-upload-widget-3" class="info-contact">
                        <div class="widget-wrap">
                            <div class="mainposts">
                                <a href="tel: <?= $rowConfig['content_home3'] ?> " class="alignleft">
                                    <img src="/images/h-phone.png" alt="h-phone">
                                </a>
                                <div class="box">
                                    <p class="title">
                                        <a href="tel: <?= $rowConfig['content_home3'] ?> ">Hotline</a>
                                    </p>
                                    <a href="tel: <?= $rowConfig['content_home3'] ?> " class="readmore"><?= $rowConfig['content_home3'] ?></a>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="image-upload-widget-2" class="info-contact">
                        <div class="widget-wrap">
                            <div class="mainposts">
                                <a href="mailto:<?= $rowConfig['content_home2'] ?>" class="alignleft">
                                    <img src="/images/h-email.png" alt="h-email">
                                </a>
                                <div class="box">
                                    <p class="title">
                                        <a href="mailto:<?= $rowConfig['content_home2'] ?>">Email</a>
                                    </p>
                                    <a href="mailto:<?= $rowConfig['content_home2'] ?>" class="readmore"><?= $rowConfig['content_home2'] ?></a>
                                </div>
                            </div>
                        </div>
                    </section>
                    <?php } else { ?>
                        <div class="menu-main-level-2">
                        <?php include DIR_MENU."MS_MENU_CUANHOM_0001_2.php";?>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>

    <div class="header-top-2 hidden-md hidden-lg">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-xs-4">
                    <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="logo"></a>
                </div>
                <div class="col-md-10 col-xs-8">
                    
                    <section id="text-7" class="truong-dai-hoc">
                        <div class="widget-wrap">           
                            <div class="textwidget">
                                <?php foreach ($ten_truong as $ten) { ?>
                                <p><?= $ten ?></p>
                                <?php } ?>
                            </div>
                        </div>
                    </section>
                    
                </div>
            </div>
        </div>
    </div>

    <div class="gb-header-cuanhom">

        <div class="container container-mobile hidden">

            <div class="gb-top-header_cuanhom">

                <div class="row" style="margin: 0;">

                    <div class="col-md-6 col-sm-6">

                        <div class="gb-top-header_cuanhom-left">

                            <!-- <ul>

                                <li><a href="">Đăng nhập</a></li>

                                <li><a href="">Đăng ký</a></li>

                            </ul> -->
                            <p class="hidden-xs"><?= $rowConfig['web_name'] ?></p>
                            <p class="hidden-sm hidden-md hidden-lg" style="height: 40px;margin-top: 15px;"><?= $rowConfig['content_home3'] ?></p>

                        </div>

                    </div>

                    <div class="col-md-6 col-sm-6">

                        <div class="gb-top-header_cuanhom-right">

                            <ul>

                                <li><i class="fa fa-envelope-o" aria-hidden="true"></i><?= $rowConfig['content_home2'] ?></li>

                                <li><i class="fa fa-phone" aria-hidden="true"></i><?= $rowConfig['content_home3'] ?></li>

                            </ul>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <!-- <div class="gb-header-between_cuanhom">

            <div class="container container-mobile">

                <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="logo" class="img-responsive"></a>

            </div>

        </div> -->
<div style="background: #FE8F00;" class="sticky-menu">
        <div class="container hidden-xs">

            <div class="gb-header-bottom_cuanhom">

                <div class="row">

                    <div class="col-md-12">

                        <?php 
                            if (isset($_GET['page'])) {
                                //include DIR_MENU."MS_MENU_CUANHOM_0001.php";
                                include DIR_MENU."MS_MENU_CUANHOM_0001_1.php";
                            } else {
                                include DIR_MENU."MS_MENU_CUANHOM_0001.php";
                            }
                        ?>
                    </div>

                    <div class="col-md-4">

                        <?php //include DIR_SEARCH."MS_SEARCH_CUANHOM_0002.php";?>

                    </div>

                </div>

            </div>

        </div>
</div>
    </div>

</header>



<script src="/plugin/sticky/jquery.sticky.js"></script>

<script>

    $(document).ready(function () {

        $(".sticky-menu").sticky({topSpacing:0});

    });

</script>

