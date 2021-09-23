<?php
	session_start();
    include_once('link.php');
    require_once('controller.php');
    $idArray = explode('&',$_SERVER["QUERY_STRING"]);
    foreach ($idArray as $index => $avPair){
        list($ignore, $value) = explode("=", $avPair);
        $id[$index] = $value;
    }
    if($id[0] == 'new'){
        $Detail = getAppNew($conn);
    }
    elseif($id[0] == 'topFree'){
        $Detail = getTopFree($conn);
    }
	elseif($id[0] == 'topPay'){
		$Detail = getTopMoney($conn);
	}
	elseif($id[0] == 'search'){
		$Detail = searchForWhat($conn,$_SESSION['key']);
	}
    else{
        $Detail = getAppByCategory($conn,$id[0]);
    }

?>
<div class='home-container'>
    <?php include('navigation.php') ?>
    <div class="index-container">
        <div class="column">
		<?php if(!isset($_GET['search'])){ ?>
            <div class='floor-1'>
                <div class='cate-title'>
                    <p><?php if($id[0] == 'topFree'){
                        echo 'Top free apps with more downloads';
                    }
					if($id['0'] == 'topPay'){
						echo 'Top apps with most buys';
					}
                    if($id[0] == 'new'){
                        echo 'New apps';
                    }; ?></p>
                </div>
                <div class="categories grid">
                <?php 
                echo $Detail;
                ?>
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