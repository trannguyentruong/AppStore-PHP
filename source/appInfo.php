<?php 
session_start();
require_once('controller.php');
include_once('link.php');
$idArray = explode('&',$_SERVER["QUERY_STRING"]);
foreach ($idArray as $index => $avPair){
    list($ignore, $value) = explode("=", $avPair);
    $id[$index] = $value;
}
$Detail = getAppDetail($conn,$id[0]);
?>
<head>
    <title><?php echo $Detail['app_name'];?></title>
</head>
<div class='home-container'>
    <?php include('navigation.php'); ?>
	<?php if(!isset($_GET['search'])){ ?>
    <div class='app-container'>
        <div class='app-info'>
            <div class='app-info-header'>
                <div class='app-img'>
                <?php 
                $dir_name = "img/".$Detail['app_name']."";
                $images = glob($dir_name."/*.png");
                    foreach($images as $image){ 
                        $png = $image ;
                    }
                echo '<img src="'.$png.'"'?>>
                </div>
                <div class='app-database'>
                    <p class='text-responsive'><?php echo $app_name = $Detail['app_name']?></p>
                    <div class='app-company'><?php echo $Detail['developer']?></div>
                    <div class='app-star'></div>
                    <div class='app-detail d-flex justify-content-between'>
                        <span class='app-text-detail'><?php echo $Detail['app_name']?></span>
						<?php 
						$dir_name = "img/$app_name";
						$images = glob($dir_name."/*.png");
						foreach($images as $image){ 
							$png = $image ;
						}
						$_SESSION['download_files'] = array();
						$uid = uniqid();
						$_SESSION['download_files'][$uid] = $png;
						$_SESSION['file'] = $app_name;
						$_SESSION['price'] = $Detail['app_price'];
						?>
						<?php if($Detail['app_price'] == 0 ){ ?>
                        <a href="download.php?fileId=<?= $uid ?>" type="button" class="btn btn-primary col-lg-5" name='download'>Download</a>
						<?php }else{ ?>
						<a href="download.php?fileId=<?= $uid ?>" type="button" class="btn btn-primary col-lg-5" name='download'><?php echo $Detail['app_price'] ?></a>
						<?php }?>
                    </div>
                </div>
            </div>
            <div class='app-info-body'>
                <?php 
                    $images = getDetailImage($conn,$id[0]);
                    echo $images;
                ?>
            </div>
        </div>
        <div class='app-recommend'>
            <div class='app-recommend-1'>
                <?php if(!empty(getAppCompany($conn,$Detail['developer'],$Detail['id']))){ ?>
                <div>
                    <p class="text-responsive">More by <?php echo $Detail['developer'];?></p>
                </div>
                <?php echo getAppCompany($conn,$Detail['developer'],$Detail['id']);
            };?>
            </div>

            <div class='app-recommend-1'>
            <?php if(!empty(getAppSimilar($conn, $Detail['category'],$Detail['id']))){ ?>
                <div class='d-flex justify-content-space-between text-center more'>
                    <p class="text-responsive">About <?php echo $Detail['category'];?></p>
                    <a href='appCate.php?cate=<?php echo $Detail['category'];?>'><span>More<span><i class="fa fa-chevron-right"></i><i class="fa fa-chevron-right"></i></a>
                </div>
                <?php echo getAppSimilar($conn, $Detail['category'],$Detail['id']);
            };?>
            </div>
        </div>
    </div>
	<?php }else { ?>
	<div class="index-container">
        <div class="column">
			<div class='floor-1'>
                <div class='cate-title d-flex justify-content-space-between text-center more'>
                    <p>Result of <?php echo $_GET['search'];?></p>
                </div>
                <div class="categories grid">
                    <?php echo searchForWhat($conn,$_GET['search']); ?>
                </div>
            </div>
		</div>
	</div>
	<?php } ?>
</div>