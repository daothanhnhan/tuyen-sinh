<?php //include DIR_CHARACTERISTICS."MS_CHARACTERISTICS_CUANHOM_0001.php";?>
<style>

</style>
<footer class="site-footer" itemscope itemtype="https://schema.org/WPFooter">
    <div class="container">
        <div class="wrap row">
            <section class="widget widget_text col-md-3" id="text-2">
                <div class="widget-wrap">
                    <div class="textwidget">
                        <p><img alt="logo" class="alignnone size-full wp-image-104" height="140" src="/images/logo-footer.png" width="280"></p>
                        <ul>
                            <li>
                                <strong><?= $lang=='vn' ? 'Địa chỉ' : 'Address' ?></strong> <?= $rowConfig['content_home1'] ?></li>
                            <li><strong><?= $lang=='vn' ? 'Điện thoại' : 'Phone' ?></strong> <?= $rowConfig['content_home3'] ?></li>
                            <li><strong>Email</strong> <?= $rowConfig['content_home2'] ?></li>
                            <!-- <li><strong>Liên hệ quản trị website</strong> webmaster@usth.edu.vn</li> -->
                        </ul>
                    </div>
                </div>
            </section>
            <section class="widget widget_text col-md-3" id="text-5">
                <div class="widget-wrap">
                    <div class="textwidget">
                        <ol>
                            <li>
                                <a href=""><?= $lang=='vn' ? 'Giới thiệu' : 'About Us' ?></a>
                            </li>
                            <li>
                                <a href="/nghien-cuu"><?= $lang=='vn' ? 'Nghiên cứu' : 'Research' ?></a>
                            </li>
                            <li>
                                <a href="/hop-tac-quoc-te"><?= $lang=='vn' ? 'Hợp tác quốc tế' : 'International cooperation' ?></a>
                            </li>
                            <li>
                                <a href="/sinh-vien"><?= $lang=='vn' ? 'Sinh viên' : 'Student Affairs' ?></a>
                            </li>
                        </ol>
                    </div>
                </div>
            </section>
            <section class="widget widget_text col-md-3" id="text-3">
                <div class="widget-wrap">
                    <div class="widget-title widgettitle">
                        <?= $lang=='vn' ? 'Đào tạo' : 'Training' ?>
                    </div>
                    <div class="textwidget">
                        <ul>
                            <li>
                                <a href=""><?= $lang=='vn' ? 'Đại học' : 'Bachelor' ?></a>
                            </li>
                            <li>
                                <a href=""><?= $lang=='vn' ? 'Thạc sĩ' : 'Master' ?></a>
                            </li>
                            <li>
                                <a href=""><?= $lang=='vn' ? 'Tiến sĩ' : 'PhD' ?></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
            <section class="widget widget_text col-md-3" id="text-4">
                <div class="widget-wrap">
                    <div class="widget-title widgettitle">
                        <a href="https://tuyensinh.usth.edu.vn/"><?= $lang=='vn' ? 'Tuyển sinh' : 'Admission' ?></a>
                    </div>
                    <div class="textwidget">
                        <ul>
                            <li>
                                <a href=""><?= $lang=='vn' ? 'Đại học' : 'Bachelor' ?></a>
                            </li>
                            <li>
                                <a href=""><?= $lang=='vn' ? 'Thạc sĩ' : 'Master' ?></a>
                            </li>
                            <li>
                                <a href=""><?= $lang=='vn' ? 'Tiến sĩ' : 'PhD' ?></a>
                            </li>
                        </ul>
                    </div>
                    <div class="textwidget social">
                        <p>
                            <a href="">
                                <img alt="" class="alignnone size-full wp-image-156" height="150" src="/images/f-facebook.png" width="150">
                            </a> 
                            <a href="">
                                <img alt="" class="alignnone size-full wp-image-157" height="150" src="/images/f-instagram.png" width="150">
                            </a> 
                            <a href="">
                                <img alt="" class="alignnone size-full wp-image-159" height="150" src="/images/f-twitter.png" width="150">
                            </a> 
                            <a href="">
                                <img alt="" class="alignnone size-full wp-image-158" height="150" src="/images/f-pinterest.png" width="150">
                            </a>
                        </p>
                    </div>
                </div>
            </section>
            <section class="widget widget_text hidden" id="text-12">
                <div class="widget-wrap">
                    <div class="textwidget">
                        <p>
                            <a href="https://www.facebook.com/usth.edu.vn">
                                <img alt="" class="alignnone size-full wp-image-156" height="150" src="https://usth.edu.vn/wp-content/uploads/2021/11/f-facebook.png" width="150">
                            </a> 
                            <a href="https://www.instagram.com/usth_official/">
                                <img alt="" class="alignnone size-full wp-image-157" height="150" src="https://usth.edu.vn/wp-content/uploads/2021/11/f-instagram.png" width="150">
                            </a> 
                            <a href="https://twitter.com/usth_channel">
                                <img alt="" class="alignnone size-full wp-image-159" height="150" src="https://usth.edu.vn/wp-content/uploads/2021/11/f-twitter.png" width="150">
                            </a> 
                            <a href="https://www.linkedin.com/in/usth-edu-vn/">
                                <img alt="" class="alignnone size-full wp-image-158" height="150" src="https://usth.edu.vn/wp-content/uploads/2021/11/f-pinterest.png" width="150">
                            </a>
                        </p>
                    </div>
                </div>
            </section>
        </div>
    </div>
    
</footer>
<div class="content-after-footer section">
    <div class="wrap container">
        <ul>
            <li>©2021 <strong>usth.edu.vn</strong>. All Rights reserved</li>
        </ul>
    </div>
</div>

<style>
#scroll-top {
  display: none; /* Hidden by default */
  position: fixed; /* Fixed/sticky position */
  bottom: 120px; /* Place the button at the bottom of the page */
  right: 10px; /* Place the button 30px from the right */
  z-index: 99; /* Make sure it does not overlap */
  border: none; /* Remove borders */
  outline: none; /* Remove outline */
  /*background-color: red;*/ /* Set a background color */
  color: white; /* Text color */
  cursor: pointer; /* Add a mouse pointer on hover */
  /*padding: 15px;*/ /* Some padding */
  /*border-radius: 10px;*/ /* Rounded corners */
  font-size: 18px; /* Increase font size */
}

#scroll-top:hover {
  /*background-color: #555;*/ /* Add a dark-grey background on hover */
}
</style>

<!-- <button onclick="topFunction()" id="scroll-top" title="Go to top">Top</button> -->
<img src="/images/Scroll-to-top-button.png" alt="Go to top" onclick="topFunction()" id="scroll-top" width="60">


<script>
//Get the button:
mybutton = document.getElementById("scroll-top");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  //document.body.scrollTop = 0; // For Safari
  //document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
  $("html, body").animate({ scrollTop: 0 }, "slow");
  return false;
}
</script>