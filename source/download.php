<?php
	session_start();
	require('controller.php');
	$veri = getDownloadedApp($conn,$_SESSION['id']);
	$verif = $veri->fetch_assoc();
	if(!(isset($_SESSION['login']))){
		die('Please <a href="signIn.php">Sign in</a> first');
	}
	if(strcmp($_SESSION['file'],$verif['app_name']) == 1){
		die('You almost download this app return to <a href="index.php">Home page</a>');
	}
	if(empty($_SESSION['download_files'])) {
        die('Nothing to download');
    }
	if($_SESSION['price'] > $_SESSION['money']){
		die('You dont have enough money to buy this app,<a href="UserProfile.php?field=payment">charge money here</a>');
	}

    if (empty($_GET['fileId'])) {
        die('Wrong file id');
    }
	$id = $_GET['fileId'];
    
	$filePath = $_SESSION['download_files'][$id]; 
	if(!file_exists($filePath)){ // file does not exist
    die('file not found');
} else {
	$date = date('Y-m-d');
	$money = $_SESSION['money'] - $_SESSION['price'];
	$sql = $conn->prepare("INSERT INTO downloaded(user_id,app_name,date_down,cost) VALUES(?,?,?,?)");
	$sql->bind_param('ssss',$_SESSION['id'],$_SESSION['file'],$date,$_SESSION['price']);
	$sql->execute();
	$sta2 = $conn->prepare("UPDATE user SET money = ? WHERE id = ?");
	$sta2->bind_param('ss',$money,$_SESSION['id']);
	$sta2->execute();
	$_SESSION['money'] = $money;
    header("Cache-Control: public");
    header("Content-Description: File Transfer");
    header("Content-Disposition: attachment; filename=$filePath");
    header("Content-Type: application/zip");
    header("Content-Transfer-Encoding: binary");

    // read the file from disk
    readfile($file);
}
?>