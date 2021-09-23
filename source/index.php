<?php
    session_start();
    require_once('controller.php');
    include_once('link.php');
?>
<head>
    <title>Bedevelovebug</title>
</head>
<div class='home-container'>
    <?php include('navigation.php') ?>
    <div class="index-container">
        <div class="column">
		<?php if(!isset($_GET['search'])){ ?>
            <div class='floor-1'>
                <div class='cate-title d-flex justify-content-space-between text-center more'>
                    <p>Newest and Update</p>
                    <a href='appCate.php?cate=new'><span class='more-span'>More <span><i class="fa fa-plus"></i></a>
                </div>
                <div class="categories grid">
                    <?php echo $Recommend ?>
                </div>
            </div>
            <div class='floor-1'>
                <div class='cate-title d-flex justify-content-space-between text-center more'>
                    <p>Game</p>
                    <a href='appCate.php?cate=Game'><span class='more-span'>More <span><i class="fa fa-plus"></i></a>
                </div>
                <div class="categories grid">
                    <?php echo $appGame; ?>
                </div>
            </div>
            <div class='floor-1'>
                <div class='cate-title d-flex justify-content-space-between text-center more'>
                    <p>Social</p>
                    <a href='appCate.php?cate=Social'><span class='more-span'>More <span><i class="fa fa-plus"></i></a>
                </div>
                <div class="categories grid">
                    <?php echo $appSocial; ?>
                </div>
            </div>
			<?php }else { ?>
			<div class='floor-1'>
                <div class='cate-title d-flex justify-content-space-between text-center more'>
                    <p>Result of <?php echo $_GET['search'];?></p>
                </div>
                <div class="categories grid">
                    <?php echo searchForWhat($conn,$_GET['search']); ?>
                </div>
            </div>
			<?php } ?>
        </div>
    </div>
</div>
