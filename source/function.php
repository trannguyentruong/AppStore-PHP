<?php
    function getApp($conn,$whatApp){
        $inner = "";
        $whatApp = mysqli_real_escape_string($conn,$whatApp);
        $sql = mysqli_query($conn,"SELECT * FROM app WHERE category = '$whatApp' LIMIT 6");
        $appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($row = mysqli_fetch_array($sql)){ 
                $id = $row["id"];
                $app_name = $row["app_name"];
                $dir_name = "img/$app_name";
                $images = glob($dir_name."/*.png");
                foreach($images as $image){ 
                    $png = $image ;
                }
                $inner .= '
                <div class="app ">
                        <a href="appInfo.php?id='.$id.'">
                            <div>
                                <div class="fill">
                                    <img class="center-block" src="'.$png.'">
                                </div>
                                <div class="text-center">
                                    <p>'.$app_name.'</p>
                                </div>
                            </div>
                        </a>
                    </div>';
            }
        }
        return $inner;
    }

    function getAppCompany($conn,$whatApp,$id){
        $inner = "";
        $whatApp = mysqli_real_escape_string($conn,$whatApp);
        $id = mysqli_real_escape_string($conn,$id);
        $sql = mysqli_query($conn,"SELECT * FROM app WHERE category = '$whatApp' and not id = $id LIMIT 2");
        $appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($result = mysqli_fetch_array($sql)){ 
                $id = $result["id"];
                $app_name = $result["app_name"];
                $dir_name = "img/$app_name";
                $images = glob($dir_name."/*.png");
                foreach($images as $image){ 
                    $png = $image ;
                }
                $inner .= '
                <a href= "appInfo.php?id='.$id.'">
                    <div class="recommend-img d-flex">
                        <img class="text-left" src="'.$png.'">
                        <div class="text-center">
                            <p class="p-responsive app-title">'.$app_name.'</p>
                        </div>
                    </div>
                </a>';
            }
        }   
        return $inner;
    }

    function getAppSimilar($conn,$whatApp,$id){
        $inner = "";
        $whatApp = mysqli_real_escape_string($conn,$whatApp);
        $id = mysqli_real_escape_string($conn,$id);
        $sql = mysqli_query($conn,"SELECT * FROM app WHERE category = '$whatApp' and not id = '$id' LIMIT 2");
        $appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($result = mysqli_fetch_array($sql)){ 
                $id = $result["id"];
                $app_name = $result["app_name"];
                $dir_name = "img/$app_name";
                $images = glob($dir_name."/*.png");
                foreach($images as $image){ 
                    $png = $image ;
                }
                $inner .= '
                <a href= "appInfo.php?id='.$id.'">
                    <div class="recommend-img d-flex">
                        <img class="text-left" src="'.$png.'">
                        <div class="text-center">
                            <p class="p-responsive app-title">'.$app_name.'</p>
                        </div>
                    </div>
                </a>';
            }
        }
        return $inner;
    }

    function getRecommend($conn){
        global $conn;
        $inner = "";
        $sql = mysqli_query($conn,"SELECT * FROM app ORDER BY date_update DESC LIMIT 6");
        $appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($row = mysqli_fetch_array($sql)){ 
                $id = $row["id"];
                $app_name = $row["app_name"];
                $dir_name = "img/$app_name";
                $images = glob($dir_name."/*.png");
                foreach($images as $image){ 
                    $png = $image ;
                }
                
                $inner .= '
                <div class="app ">
                    <a href="appInfo.php?id='.$id.'">
                        <div>
                            <div class="fill">
                                <img class="center-block" src="'.$png.'">
                            </div>
                            <div class="text-center">
                                <p class="p-responsive">'.$app_name.'</p>
                            </div>
                        </div>
                    </a>
                </div>';
            }
        }
        return $inner;
    }

    function getAllCategory($conn){
        global $conn;
        $sql = mysqli_query($conn,"SELECT category from app GROUP BY category");
        $inner = "";
        $appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($row = mysqli_fetch_array($sql)){   
                $inner .= '
                <a class="getcate dropdown-item" href="appCate.php?cate='.$row['category'].'" >'.$row['category'].'</a>';
            }
        }
        return $inner;
    }

    function getAppByCategory($conn,$cate){
        global $conn;
        $inner = "";
        $cate = mysqli_real_escape_string($conn,$cate);
        $sql = mysqli_query($conn,"SELECT * FROM app where category = '$cate'");
        $appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($row = mysqli_fetch_array($sql)){ 
                $id = $row["id"];
                $app_name = $row["app_name"];
                $dir_name = "img/$app_name";
                $images = glob($dir_name."/*.png");
                foreach($images as $image){ 
                    $png = $image ;
                }      
                $inner .= '
                <div class="app ">
                    <a href="appInfo.php?id='.$id.'">
                        <div>
                            <div class="fill">
                                <img class="center-block" src="'.$png.'">
                            </div>
                            <div class="text-center">
                                <p class="p-responsive">'.$app_name.'</p>
                            </div>
                        </div>
                    </a>
                </div>';
            }
        }
        return $inner;
    }

    function getAppNew($conn){
        global $conn;
        $inner = "";
        $sql = mysqli_query($conn,"SELECT * FROM app ORDER BY date_added DESC");
        $appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($row = mysqli_fetch_array($sql)){ 
                $id = $row["id"];
                $app_name = $row["app_name"];
                $dir_name = "img/$app_name";
                $images = glob($dir_name."/*.png");
                foreach($images as $image){ 
                    $png = $image ;
                }
                
                $inner .= '
                <div class="app ">
                    <a href="appInfo.php?id='.$id.'">
                        <div>
                            <div class="fill">
                                <img class="center-block" src="'.$png.'">
                            </div>
                            <div class="text-center">
                                <p class="p-responsive">'.$app_name.'</p>
                            </div>
                        </div>
                    </a>
                </div>';
            }
        }
        return $inner;
    }
	
	    function getTopFree($conn){
        global $conn;
        $inner = "";
		$price = 0;
		$price = mysqli_real_escape_string($conn,$price);
        $sql = mysqli_query($conn,"SELECT * FROM app WHERE app_price = '$price' ORDER BY downloaded DESC");
        $appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($row = mysqli_fetch_array($sql)){ 
                $id = $row["id"];
                $app_name = $row["app_name"];
                $dir_name = "img/$app_name";
                $images = glob($dir_name."/*.png");
                foreach($images as $image){ 
                    $png = $image ;
                }
                
                $inner .= '
                <div class="app ">
                    <a href="appInfo.php?id='.$id.'">
                        <div>
                            <div class="fill">
                                <img class="center-block" src="'.$png.'">
                            </div>
                            <div class="text-center">
                                <p class="p-responsive">'.$app_name.'</p>
                            </div>
                        </div>
                    </a>
                </div>';
            }
        }
        return $inner;
    }

	function getTopMoney($conn){
        global $conn;
        $inner = "";
		$price = 0;
		$price = mysqli_real_escape_string($conn,$price);
        $sql = mysqli_query($conn,"SELECT * FROM app WHERE app_price > '$price' ORDER BY downloaded DESC");
        $appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($row = mysqli_fetch_array($sql)){ 
                $id = $row["id"];
                $app_name = $row["app_name"];
                $dir_name = "img/$app_name";
                $images = glob($dir_name."/*.png");
                foreach($images as $image){ 
                    $png = $image ;
                }
                
                $inner .= '
                <div class="app ">
                    <a href="appInfo.php?id='.$id.'">
                        <div>
                            <div class="fill">
                                <img class="center-block" src="'.$png.'">
                            </div>
                            <div class="text-center">
                                <p class="p-responsive">'.$app_name.'</p>
                            </div>
                        </div>
                    </a>
                </div>';
            }
        }
        return $inner;
    }

    function getAppDetail($conn,$id){
        $sql =  $conn->prepare("SELECT * FROM app WHERE id = ?");
        $sql->bind_param("s", $id);
        $result = null;
        if($sql->execute()){
            $result = $sql->get_result();
        }
        if($result->num_rows >0){
            $result = $result->fetch_assoc();
        }
        return $result;
    }

    function getDetailImage($conn,$id){
        $sql =  $conn->prepare("SELECT * FROM app WHERE id = ?");
        $sql->bind_param("s", $id);
        $result = null;
        if($sql->execute()){
            $result = $sql->get_result();
        }
        if($result->num_rows >0){
            $result = $result->fetch_assoc();
        }
        $inner = "";
        $dir_name = "img/".$result['app_name']."/Detail/";
        $images = glob($dir_name."/*.{jpg,png,bmp}",GLOB_BRACE);
        foreach($images as $image) {
            $inner.= '                
            <button class="detail-img-zoom" onclick="zoomIn()">
            <img class="detail-img" id="detail-image" src="'.$image.'">
            <div onclick="zoomOut()" id="myModal" class="modal">
                <img class="pic-content" id="zoomImg">
            </div>
        </button>';
        }
        return $inner;
    }

    function getUserLoginInfomation($conn,$userInfo){
        $sql =  $conn->prepare("SELECT * FROM user WHERE email = ?");
        $sql->bind_param("s", $userInfo);
        $result = null;
        if($sql->execute()){
            $result = $sql->get_result();
        }
        return $result;
    }

    function getPaymentDetail($conn,$userID){
        $inner = "";
        $userID = mysqli_real_escape_string($conn,$userID);
        $sql = mysqli_query($conn,"SELECT * FROM payment WHERE user_id = '$userID'");
        $appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($row = mysqli_fetch_array($sql)){ 
                $id = $row["id"];
                
                $inner .= '
                <tr>
                    <th scope="row">'.$id.'</th>
                    <td>'.$row['card_seri'].'</td>
                    <td>'.$row['money'].'</td>
                    <td>'.$row['date_pay'].'</td>
                </tr>';
            }
        }
        return $inner;
    }

    function getCardDetail($conn){
        $inner = "";
        $sql = mysqli_query($conn,"SELECT * FROM card_cash");
        $appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($row = mysqli_fetch_array($sql)){ 
                $id = $row["id"];
                $inner .= '
                <tr>
                    <th scope="row">'.$id.'</th>
                    <td>'.$row['seri'].'</td>
                    <td>'.$row['money'].'</td>
                    <td>'.$row['expired'].'</td>
					<td>'.$row['status'].'</td>
                </tr>';
            }
        }
        return $inner;
    }
	
	function searchForWhat($conn,$key){
		$key = mysqli_real_escape_string($conn,$key);
		$sql = mysqli_query($conn,"SELECT * FROM app WHERE category like '%".$key."%' or app_name like '%".$key."%' or subcategory like '%".$key."%'");
		$inner = "";
		$appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($row = mysqli_fetch_array($sql)){ 
                $id = $row["id"];
                $app_name = $row["app_name"];
                $dir_name = "img/$app_name";
                $images = glob($dir_name."/*.png");
                foreach($images as $image){ 
                    $png = $image ;
                }
                
                $inner .= '
                <div class="app ">
                    <a href="appInfo.php?id='.$id.'">
                        <div>
                            <div class="fill">
                                <img class="center-block" src="'.$png.'">
                            </div>
                            <div class="text-center">
                                <p class="p-responsive">'.$app_name.'</p>
                            </div>
                        </div>
                    </a>
                </div>';
            }
        }
        return $inner;
    }
	
	
	function getDownHistory($conn,$userID){
        $inner = "";
        $userID = mysqli_real_escape_string($conn,$userID);
        $sql = mysqli_query($conn,"SELECT * FROM downloaded WHERE user_id = '$userID'");
        $appCount = mysqli_num_rows($sql); 
        if ($appCount > 0) {
            while($row = mysqli_fetch_array($sql)){ 
                $id = $row["id"];
                
                $inner .= '
                <tr>
                    <th scope="row">'.$id.'</th>
                    <td>'.$row['app_name'].'</td>
                    <td>'.$row['date_down'].'</td>
					<td>'.$row['cost'].'</td>
                </tr>';
            }
        }
        return $inner;
    }
	
	function getDownloadedApp($conn,$id){
        $sql =  $conn->prepare("SELECT * FROM downloaded WHERE user_id = ?");
        $sql->bind_param("s", $id);
        $result = null;
        if($sql->execute()){
            $result = $sql->get_result();
        }
        return $result;
    }
	
	
?>