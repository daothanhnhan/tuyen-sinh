<?php
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('menu',array('menu_name'), $_GET['search'],$trang,20,$_GET['page']);
        $rows = $rows['data'];
    }else{
        $khoa_id = 0;
        if (isset($_GET['khoa_id'])) {
            $khoa_id = $_GET['khoa_id'];
        }
        $rows = $action->getList('menu','khoa_id',$khoa_id,'menu_sort_order','asc','','','sua-trinh-don');//var_dump($rows);
        //$rows = $showCategoriesTable
    }

    $parent = 0;
    if (isset($_GET['parent'])) {
        $parent = $_GET['parent'];
    }
?>
    <div class="boxPageContent">
        <div class="searchBox">
            <form action="">
                <input type="hidden" name="page" value="trinh-don">
                <button type="submit" class="btnSearchBox" >Tìm kiếm</button>
                <input type="text" class="txtSearchBox" name="search" />                                    
            </form>
        </div>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Tiêu đề</th>
                    <th>Người tạo</th>
                    <!-- <th>Ngày cập nhật</th> -->
                    <th>Trạng thái</th>
                </tr>
            </thead>
            <tbody>
                <?php $action->showCategoriesTable($rows, 'menu_parent', $parent, 'sua-trinh-don', 'menu_id', 'menu_name', 'state', 0) ?>
            </tbody>
        </table>

        <div class="paging"><?= $rows['paging']?></div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Phát Triển Thương Hiệu Cafe Link Việt Nam</p>