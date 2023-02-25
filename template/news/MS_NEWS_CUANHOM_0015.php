<?php   
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];//echo 'tuan';die;                    
        $rowCatLang = $action_news->getNewsCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_news->getNewsCatDetail_byId($rowCatLang[$nameColIdNewsCat_newsCatLanguage],$lang);
        if (newsCatPageHasSub) {
            $rows = $action_news->getNewsList_byMultiLevel_orderNewsId_search($rowCat[$nameColId_newsCat],'desc',$trang,8,$slug);
        } else {
            $rows = $action_news->getNewsCat_byNewsCatIdParentHighest($rowCat[$nameColId_newsCat],'desc');//var_dump($rows);die;
        }        
    }
    else $rows = $action->getList($nameTable_news,'','',$nameColId_news,'desc',$trang,8,'tin-tuc'); 
    // var_dump($rows);die;
?>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_CUANHOM_0002.php";?>
<div class="gb-page-blog_cuanhom">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <div class="row">
                    <?php 
                    $d = 0;
                    foreach ($rows['data'] as $item) {
                        $d++;
                        $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang); 
                    ?>
                    <div class="col-sm-6">
                        <div class="gb-news-blog_cuanhom-item">
                            <div class="gb-news-blog_cuanhom-item-img">
                                <a href="/<?= $item['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive"></a>
                                <div class="caption caption-large">
                                    <time class="the-date"><?= substr($item['news_created_date'], 0, 10) ?></time>
                                </div>
                            </div>
                            <div class="gb-news-blog_cuanhom-item-text">
                                <div class="gb-news-blog_cuanhom-item-title">
                                    <h3><a href="/<?= $item['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a></h3>
                                </div>
                                <div class="gb-news-blog_cuanhom-item-text-des">
                                    <p><?= $rowLang['lang_news_des'] ?></p>
                                </div>
                            </div>
                            <div class="gb-news-blog_cuanhom-item-button">
                                <a href="/<?= $item['friendly_url'] ?>">
                                    <button type="button" class="btn gb-btn-readmore">ĐỌC TIẾP</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    <?php 
                    if ($d%2==0) {
                        echo '<hr style="width:100%;border:0;" />';
                    }
                    } ?>
                </div>
                <div><?= $rows['paging'] ?></div>
            </div>
            <div class="col-sm-4">
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_CUANHOM_0001.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_CUANHOM_0002.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_CUANHOM_0010.php";?>
            </div>
        </div>
    </div>
</div>