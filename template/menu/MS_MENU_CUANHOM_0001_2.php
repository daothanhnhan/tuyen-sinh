<nav class="gb-main-menu_cuanhom" >
    <div class="container1">
        <nav class="main-navigation uni-menu-text_cuanhom">
            <div class="cssmenu">
                
                <?php 
                    // $list_menu = $menu->getListMainMenu_byOrderASC();
                    // $menu->showMenu_byMultiLevel_mainMenuTraiCam($list_menu,0,$lang,0);

                    $main_menu = $menu->main_menu(166, $lang);
                    $menu->show_menu1($main_menu, $lang);
                ?>
            </div>
        </nav>
    </div>
</nav>

<script src="/plugin/sticky/jquery.sticky.js"></script>
<script>
    $(document).ready(function () {
        var headerHeight = $('.gb-main-menu_cuanhom').outerHeight();

        $('.slide-section').click(function () {
            var linkHref = $(this).attr('href');
            $('html, body').animate({
                scrollTop: $(linkHref).offset().top - headerHeight
            }, 1000);
            e.preventDefault();
        });

        $(".sticky-menu").sticky({topSpacing:0});
    });
</script>