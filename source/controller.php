<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

error_reporting(E_ALL);
ini_set('display_errors', 1);
require("./vendor/autoload.php"); 
require("connect.php");
$email = "";
$name = "";
$errors = array();
$success = array();
$_SESSION['recovery'] = 0;
$Recommend = getRecommend($conn);
$appGame = getApp($conn,'Game');
$appMusic = getApp($conn,'Music');
$appSocial = getApp($conn,'Social');

//if user signup button
if(isset($_POST['btn-sign-up-submit'])){
    $firstName = $_POST['firstname-surname'];
    $lastname = $_POST['lastname'];
    $email =  $_POST['email'];
    $password =  $_POST['password'];
    $hash = password_hash($password, PASSWORD_DEFAULT);
    $rpassword =  $_POST['regist-password'];
    $year = $_POST['year'];
    $month = $_POST['month'];
    $day = $_POST['day'];
    $date = $year."-".$month."-".$day;
    $gender = $_POST['gender'];
    $role = 'user';
    $money = 0;
    $verify = 0 ;
    $token = rand(100000,999999);
    $token_expired = date("U") + 600;
    if(strlen($password) <8){
        $errors['lengthError'] = 'Password must more than 8 character';
    }
    if(!empty($email)){
        if (!(filter_var($email, FILTER_VALIDATE_EMAIL))) {
            $errors['invalidEmail'] = "Invalid email format";
        }
    }
    if($password !== $rpassword){
        $errors['password'] = "Confirm password not matched!";
    }
    $email_check = $conn->prepare("SELECT * FROM user WHERE email = ?");
    $email_check->bind_param('s',$email);
    $email_check->execute();
    $result = $email_check->get_result();
    if(mysqli_num_rows($result) > 0){
        $errors['email'] = "Email that you have entered is already exist!";
    }
    if(count($errors) === 0){
        $sql = $conn->prepare("INSERT INTO user (first_name,last_name,email,password, birthday,gender, role,money, verify,token,token_expired) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?,?,?)");
        $sql->bind_param('sssssssssss', $firstName,$lastname, $email, $hash, $date, $gender, $role, $money,$verify,$token,$token_expired);
        if($sql->execute()){
            $success['success'] = "Creating account successfully, <a href='signIn.php'>click here to go to Sign In now</a>";
            header('Refresh: 5; URL=signIn.php');
        }
    }
}


if(isset($_POST['btn-sign-in'])){
    $email = $_POST['sign-in-email'];
    $password = $_POST['sign-in-password'];
    if(!empty($email)){
        if (!(filter_var($email, FILTER_VALIDATE_EMAIL))) {
            $errors['invalidEmail'] = "Invalid email format";
        }
    }
    if(!empty($password)){
        if(strlen($password) <8){
            $errors['lengPassError'] = "Password length must be more than 8";
        }
    }
    if(count($errors) === 0){
        $userInfo = getUserLoginInfomation($conn,$email);
        if($userInfo->num_rows >0){
            $userInfo = $userInfo->fetch_assoc();
            if(password_verify($password,$userInfo['password'])){
                if($userInfo['verify'] == 1){
                    $_SESSION["id"] = $userInfo["id"];
                    $_SESSION["email"] = $userInfo["email"];
                    $_SESSION["password"] = $userInfo["password"];
                    $_SESSION["firstname"] = $userInfo["first_name"];
                    $_SESSION["lastname"] = $userInfo["last_name"];
                    $_SESSION["birthday"] = $userInfo["birthday"];
                    $_SESSION['verify'] = $userInfo['verify'];
                    $_SESSION['role'] = $userInfo['role'];
					$_SESSION['gender'] = $userInfo['gender'];
                    $_SESSION['money'] = $userInfo['money'];
                    $_SESSION['login'] = "1";
					if(!isset($_SESSION['wantCharge'])){
						$success['loginSuccess'] = "Login success, you will be head to home page after three seconds";
						header('Refresh: 3; URL=index.php');
					}
					else{
						$success['loginSuccess'] = "Login success, you will be head to charge money page after three seconds";
						header('Refresh: 3; URL=index.php');
					}
                }
                else{
                    $_SESSION["notVerify"] = "1";
                    $errors['notVerify'] = "Your account are not verify,<a href='verify.php'>click here to go to verify now</a>";
                    header('Location: verify.php');
                }
            }
            else{
                $errors['wrongPass'] = "Wrong password";
            }
        }
        else{
            $errors['canFind'] = "Can't find you";
        }
    }
}

if(isset($_POST['emailVerify'])){
    $email = $_POST['verifyEmail'];
    $email_check = $conn->prepare("SELECT * FROM user WHERE email = ?");
    $email_check->bind_param('s',$email);
    $email_check->execute();
    $result = $email_check->get_result();
    if(mysqli_num_rows($result) == 0){
        $errors['email'] = "Your email not exist, try again";
    }
	$result = $result->fetch_assoc();
	if($result['verify'] == 1){
		$errors['almost'] = 'Your account was verified';
	}
    if(count($errors) === 0){
        $userInfo = getUserLoginInfomation($conn,$email);
        $userInfo = $userInfo->fetch_assoc();
        if($userInfo['token_expired'] <= date("U")){
            $token = rand(100000,999999);
            $token_expired = date("U");
            $sql = $conn->prepare("UPDATE user SET token = ?, token_expired = ? WHERE email = ?");
            $sql->bind_param('sss', $token, $token_expired, $userInfo['email']);
            $sql->execute();
            $mail = new PHPMailer(true);
            try{
                $mail->isSMTP();                                            // Send using SMTP
                $mail->Host       = 'smtp.gmail.com';                       // Set the SMTP server to send through
                $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
                $mail->Username   = 'tdtuggplay@gmail.com';                  // SMTP username
                $mail->Password   = 'Bedevelovebug';                     // SMTP password
                $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
                $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
        
                //Recipients
                $mail->setFrom('tdtuggplay@gmail.com', 'Bedevelovebug');
                $fullName = $userInfo['first_name'] . " " . $userInfo['last_name'];
                $mail->addAddress($userInfo['email'], utf8_decode($fullName));
                $mail->isHTML(true);                                  
                $mail->Subject = 'Reset your password';
                $mail->Body    = "This is your OTP code for Verify account<br>
                            <h5>".$token."</h5>";
                $mail->AltBody = "This is your OTP code for Verify account<br>
                <h5>".$token."</h5>";
                $mail->send();
                $_SESSION['email'] = $userInfo['email'];
            }
            catch (Exception $e) {
                $errors['sendMailError'] =  "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
            }
        }
        if($userInfo['token_expired'] > date("U")){
            $mail = new PHPMailer(true);
            try{
                $mail->isSMTP();                                            // Send using SMTP
                $mail->Host       = 'smtp.gmail.com';                       // Set the SMTP server to send through
                $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
                $mail->Username   = 'tdtuggplay@gmail.com';                  // SMTP username
                $mail->Password   = 'Bedevelovebug';                     // SMTP password
                $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
                $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
        
                //Recipients
                $mail->setFrom('tdtuggplay@gmail.com', 'Bedevelovebug');
                $fullName = $userInfo['first_name'] . " " . $userInfo['last_name'];
                $mail->addAddress($userInfo['email'], utf8_decode($fullName));
                $mail->isHTML(true);                                  
                $mail->Subject = 'Reset your password';
                $mail->Body    = "This is your OTP code for Verify account<br>
                            <h5>".$userInfo['token']."</h5>";
                $mail->AltBody = "This is your OTP code for Verify account<br>
                <h5>".$userInfo['token']."</h5>";
                $mail->send();
                $_SESSION['email'] = $userInfo['email'];
            }
            catch (Exception $e) {
                $errors['sendMailError'] =  "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
            }
        }
    }
}

if(isset($_POST['submitOTP'])){
    $OTP = $_POST['verifyCode'];
    $email = $_SESSION['email'];
    $userInfo = getUserLoginInfomation($conn,$email);
    $userInfo = $userInfo->fetch_assoc();
    if($OTP != $userInfo['token']){
        $errors['OTPNotMatch'] = 'You code is not match or expired, try again or resend the code';
    }   
    if(count($errors) == 0){
        $verify = 1;
        $sql = $conn->prepare("UPDATE user SET verify = ? WHERE email = ?");
        $sql->bind_param('ss', $verify, $email);
        $sql->execute();
        $success['verifySuccess'] = 'Verify your account are successfully, you will go to sign in after five seconds';
        header('Refresh: 4; URL=index.php');
    }
}

if(isset($_POST['resendOTP'])){
    $userInfo = getUserLoginInfomation($conn,$_SESSION['email']);
    $userInfo = $userInfo->fetch_assoc();
    if($userInfo['token_expired'] <= date("U")){
        $token = rand(100000,999999);
        $token_expired = date("U");
        $sql = $conn->prepare("UPDATE user SET token = ?, token_expired = ? WHERE email = ?");
        $sql->bind_param('sss', $token, $token_expired, $userInfo['email']);
        $sql->execute();
        $mail = new PHPMailer(true);
        try{
            $mail->isSMTP();                                            // Send using SMTP
            $mail->Host       = 'smtp.gmail.com';                       // Set the SMTP server to send through
            $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
            $mail->Username   = 'tdtuggplay@gmail.com';                  // SMTP username
            $mail->Password   = 'Bedevelovebug';                     // SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
            $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
    
            //Recipients
            $mail->setFrom('tdtuggplay@gmail.com', 'Bedevelovebug');
            $fullName = $userInfo['first_name'] . " " . $userInfo['last_name'];
            $mail->addAddress($userInfo['email'], utf8_decode($fullName));
            $mail->isHTML(true);                                  
            $mail->Subject = 'Reset your password';
            $mail->Body    = "This is your OTP code for Verify account<br>
                        <h5>".$token."</h5>";
            $mail->AltBody = "This is your OTP code for Verify account<br>
            <h5>".$token."</h5>";
            $mail->send();
            $_SESSION['email'] = $userInfo['email'];
        }
        catch (Exception $e) {
            $errors['sendMailError'] =  "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }
    if($userInfo['token_expired'] > date("U")){
        $mail = new PHPMailer(true);
        try{
            $mail->isSMTP();                                            // Send using SMTP
            $mail->Host       = 'smtp.gmail.com';                       // Set the SMTP server to send through
            $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
            $mail->Username   = 'tdtuggplay@gmail.com';                  // SMTP username
            $mail->Password   = 'Bedevelovebug';                     // SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
            $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
    
            //Recipients
            $mail->setFrom('tdtuggplay@gmail.com', 'Bedevelovebug');
            $fullName = $userInfo['first_name'] . " " . $userInfo['last_name'];
            $mail->addAddress($userInfo['email'], utf8_decode($fullName));
            $mail->isHTML(true);                                  
            $mail->Subject = 'Reset your password';
            $mail->Body    = "This is your OTP code for Verify account<br>
                        <h5>".$userInfo['token']."</h5>";
            $mail->AltBody = "This is your OTP code for Verify account<br>
            <h5>".$userInfo['token']."</h5>";
            $mail->send();
            $_SESSION['email'] = $userInfo['email'];
        }
        catch (Exception $e) {
            $errors['sendMailError'] =  "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }
}

if(isset($_POST['forgotOTP'])){
    $OTP = $_POST['forgotVerify'];
    $email = $_SESSION['email'];
    $userInfo = getUserLoginInfomation($conn,$email);
    $userInfo = $userInfo->fetch_assoc();
    if($OTP != $userInfo['token']){
        $errors['OTPNotMatch'] = 'You code is not match or expired, try again or resend the code';
    }   
    if(count($errors) == 0){
        $_SESSION['recovery'] = 1;
    }
}

if(isset($_POST['submitRecover'])){
    $password = $_POST['recoverPass'];
    $Repass = $_POST['veriRecover'];
    $hash = password_hash($password, PASSWORD_DEFAULT);
    if(strlen($password) <8){
        $errors['lengthError'] = 'Password must more than 8 character';
    }
    if($password != $Repass){
        $errors['notMatch'] = 'Your verify password and password does not match, check and try again';
    }
    if(count($errors) == 0){
        $sql = $conn->prepare("UPDATE user SET password = ? WHERE email = ?");
        $sql->bind_param('ss', $hash, $email);
        $sql->execute();
        $success['recoverSuccess'] = 'Recover password successfully, you will go to home page after five seconds';
        header('Refresh: 5; URL=signIn.php');
    }

    
}

if(isset($_POST['createCard'])){
	$denom = $_POST['selectCard']."000";
	$seri = 'MO'.rand(10,99).'-'.substr(date("U"),4);
	$timestamp = time();
	$date = strtotime("+365 day", $timestamp);
	$expired = date('Y-m-d', $date);
	$status = 'Not charged yet';
	$sql = $conn->prepare("INSERT INTO card_cash (expired,seri,money,status) VALUES (?, ?, ?, ?)");
    $sql->bind_param('ssss', $expired,$seri,$denom,$status);
    if($sql->execute()){
		$_SESSION['loadCard'] = "yes";
	}
}

if(isset($_POST['submitCard'])){
	$result = null;
	$seri = $_POST['card-seri'];
	$card_check = $conn->prepare("SELECT * FROM card_cash WHERE seri = ?");
    $card_check->bind_param('s',$seri);
    $card_check->execute();
    $result = $card_check->get_result();
    if(mysqli_num_rows($result) == 0){
        $errors['email'] = "The seri you entered isn't exist,please check again";
    }
	$result = $result->fetch_assoc();
	if($result['status'] == 'Charged'){
		$errors['Charged'] = "The seri you entered is charged,please check again";
	}
	if(count($errors) == 0){
		$datePay = date('Y-m-d');
		$sta1 = $conn->prepare("INSERT INTO payment (user_id,card_seri,money,date_pay) VALUES (?, ?, ?, ?)");
		$sta1->bind_param('ssss',$_SESSION['id'],$seri,$result['money'],$datePay);
		$sta1->execute();
		$sta2 = $conn->prepare("UPDATE user SET money = ? WHERE id = ?");
		$sta2->bind_param('ss',$result['money'],$_SESSION['id']);
		$sta2->execute();
		$status = 'Charged';
		$sql = $conn->prepare("UPDATE card_cash SET status = ? WHERE seri = ?");
		$sql->bind_param('ss',$status,$seri);
		if($sql->execute()){
			$_SESSION['money'] = $_SESSION['money'] + $result['money'];
			$_SESSION['loadPayment'] = 'yes';
		}
	}
}

?>
