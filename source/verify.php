<?php
	session_start();
    if(isset($_SESSION['login'])){
        header('Location: index.php');
    }
    if(!isset($_SESSION['notVerify'])){
      header('Location: index.php');
    }
    require_once('controller.php');
    include_once('link.php');
?>
<head>
  <title>Verify Account</title>
</head>	
<?php if((isset($_POST['emailVerify']) or isset($_POST['resendOTP'])) and count($errors) === 0){ ?>
<div class="container">
  <!-- Instructions -->
  <div class="row">
    <div class="alert alert-success col-md-12" role="alert" id="notes">
      <h4>NOTES</h4>
      <ul>
        <li>We were send an email with verify OTP to your email. Enter that OTP below to verify.</li>
        <li>If somehow, you did not recieve the verification email then 
          <form method='POST'>
            <button type='submit' name='resendOTP'>resend the verification email</button>
          </form>
        </li>
      </ul>
    </div>
  </div>
  <?php if(count($errors) == 1){?>
    <div class="row">
    <div class="alert alert-danger col-md-12" role="alert" id="notes">
      <h4>ERROR</h4>
        <div class="alert-danger">
            <?php                             
              foreach($errors as $showerror){
                echo $showerror;
              } ?>
        </div>
    </div>
  </div>
    <?php } ?>
    <?php if(count($success) == 1){?>
    <div class="row">
    <div class="alert alert-success col-md-12" role="alert" id="notes">
      <h4>ERROR</h4>
        <div>
            <?php                             
              foreach($errors as $showerror){
                echo $showerror;
              } ?>
        </div>
    </div>
  </div>
    <?php } ?>
  <!-- Verification Entry Jumbotron -->
  <div class="row">
    <div class="col-md-12">
      <div class="jumbotron text-center">
        <h2>Enter the verification code</h2>
        <form method="post">
          <div class="col-md-9 col-sm-12">
            <div class="form-group form-group-lg">
              <input type="text" class="form-control col-md-6 col-sm-6 col-sm-offset-2" name="verifyCode" required>
              <button class="btn btn-primary btn-lg col-md-2 col-sm-2" type="submit" name='submitOTP'>Verify</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php }else{ ?>
    <div class="container">
    <div class="row">
    <div class="alert alert-success col-md-12" role="alert" id="notes">
        <h4>NOTES</h4>
        <ul>
            <li>Enter your email for verification Bedevelovebug account.</li>
        </ul>
        </div>
    </div>
    <?php if(count($errors) == 1){?>
    <div class="row">
    <div class="alert alert-danger col-md-12" role="alert" id="notes">
      <h4>ERROR</h4>
        <div class="alert-danger">
            <?php                             
              foreach($errors as $showerror){
                echo $showerror;
              } ?>
        </div>
    </div>
  </div>
    <?php } ?>
        <div class="row">
            <div class="col-md-12">
            <div class="jumbotron text-center">
                <h2>Enter your email</h2>
                <form method="post">
                <div class="col-md-9 col-sm-12">
                    <div class="form-group form-group-lg">
                    <input type="text" class="form-control col-md-6 col-sm-6 col-sm-offset-2" name="verifyEmail">
                    <button class="form-control btn btn-primary btn-lg col-md-2 col-sm-2" type="submit"  name='emailVerify'>Submit</button>
                    </div>
                </div>
                </form>
            </div>
            </div>
        </div>
    </div>
<?php } ?>
