<?php
    $rows = $acc->getList("doi_tac","khoa_id",$_GET['khoa_id'],"id","asc",$trang, 20, "doi-tac");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-doi-tac&khoa_id=<?= $_GET['khoa_id'] ?>">Thêm đối tác</a></h1>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <!-- <th>Tên thương hiệu</th> -->
                    <th>Ảnh</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <!-- <td><?= $row['name']?></td> -->
                            <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td>
                            <td style="float: none;"><a href="index.php?page=xoa-doi-tac&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-doi-tac&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Phát Triển Thương Hiệu Cafe Link Việt Nam</p>             