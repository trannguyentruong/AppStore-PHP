<?php
  session_start();
  if(isset($_SESSION['login'])){
    header('location: index.php');
  }
  require_once('controller.php');
  include_once('link.php');
?>
<!DOCTYPE html>
<html>
<head>
  <title>Sign In Google Play</title>
</head>
<div class="global-container">
	<div class="card login-form">
	<div class="card-body">
		<h3 class="card-title text-center">Log in to Bedevelovebug</h3>
		<div class="card-text">
			<?php if(count($errors) == 1){ ?>
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
					<?php                             
						foreach($errors as $showerror){
							echo $showerror;
						} ?>
				</div>
			<?php } ?>
			<?php if(count($success) == 1){ ?>
				<div class="alert-success">
					<?php                             
						foreach($success as $showsuccess){
							echo $showsuccess;
						} ?>
				</div>
			<?php } ?>
			<form class='sign-in-form' method='POST'>
				<div class="form-group">
					<label for="sign-email">Email address</label>
					<input type="email" class="form-control form-control-sm" name='sign-in-email' id="sign-email" aria-describedby="emailHelp">
				</div>
				<div class="form-group">
					<label for="sign-password">Password</label>
					<input type="password" class="form-control form-control-sm" name='sign-in-password' id="sign-password">
				</div>
				<button type="submit" name='btn-sign-in' class="btn btn-primary btn-block">Sign in</button>
				
				<div class="sign-up">
					<a href="forgotPassword.php">Forgot password?</a><br>
					Don't have an account? <a href="signUp.php">Sign up</a>
				</div>
			</form>
		</div>
	</div>
</div>
</div>
