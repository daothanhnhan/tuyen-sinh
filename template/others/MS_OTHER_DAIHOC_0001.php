<?php 
	$han_nop = $action->getDetail_New('page_languages', array('page_id', 'languages_code'), array(53, &$lang), 'is');//var_dump($han_nop)
?>
<style>

</style>
<div class="countdown-bg">
	<div class="container">
		<div class="title-modul">
			<p class="title"><a><?= $han_nop['lang_page_name'] ?></a></p>
			<div class="svg">
				<img src="/images/title.svg" alt="svg">
			</div>
		</div>

		<div class="countdown">
			<span>
				<p class="so" id="ngay">00</p>
				<p><?= $lang=='vn' ? 'Ngày' : 'Days' ?></p>
			</span>
			<span>
				<p class="so" id="gio">00</p>
				<p><?= $lang=='vn' ? 'Giờ' : 'Hours' ?></p>
			</span>
			<span>
				<p class="so" id="phut">00</p>
				<p><?= $lang=='vn' ? 'Phút' : 'Minutes' ?></p>
			</span>
			<span>
				<p class="so" id="giay">00</p>
				<p><?= $lang=='vn' ? 'Giây' : 'Seconds' ?></p>
			</span>
		</div>

		<div class="xem-them-count-down">
			<a href=""><?= $lang=='vn' ? 'Xem thêm' : 'See more' ?> </a>
		</div>
	</div>
</div>


<script>
// Set the date we're counting down to
var countDownDate = new Date("<?= date('M d, Y', strtotime($rowConfig['content_home9'])) ?> 23:59:59").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();

  // Find the distance between now and the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  // document.getElementById("demo").innerHTML = days + "d " + hours + "h "
  // + minutes + "m " + seconds + "s ";
  document.getElementById("ngay").innerHTML = days;
  document.getElementById("gio").innerHTML = hours;
  document.getElementById("phut").innerHTML = minutes;
  document.getElementById("giay").innerHTML = seconds;

  // If the count down is finished, write some text
  if (distance < 0) {
    clearInterval(x);
    // document.getElementById("demo").innerHTML = "EXPIRED";
  }
}, 1000);
</script>