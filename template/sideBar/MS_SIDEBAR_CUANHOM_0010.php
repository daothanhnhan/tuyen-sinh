<style>
.banner-left {
	width: 100%;
}
</style>
<img src="/images/<?= $rowConfig['banner1'] ?>" alt="banner" class="banner-left hidden-xs sticky-banner">

<script>

    $(document).ready(function () {

        $(".sticky-banner").sticky({topSpacing:60});

    });

</script>