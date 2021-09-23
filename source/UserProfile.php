<?php 
session_start();
if(!(isset($_SESSION['login']))){
  header('Location: index.php');
}
require_once('controller.php'); 
include_once('navigation.php'); 
include_once('link.php');

$idArray = explode('&',$_SERVER["QUERY_STRING"]);
foreach ($idArray as $index => $avPair){
    list($ignore, $value) = explode("=", $avPair);
    $id[$index] = $value;
}

?>
<head>
  <title><?php echo $_SESSION['firstname'] ." ". $_SESSION['lastname']?></title>
</head>
<?php if(!isset($_GET['search'])){ ?>
<div class="container">
    <div class="main-body">
    
          <!-- Breadcrumb -->
          <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="UserProfile.php?field=user">USER PROFILE</a></li>
              <li class="breadcrumb-item"><a href="UserProfile.php?field=payment">PAYMENT</a></li>
              <li class="breadcrumb-item"><a href="UserProfile.php?field=history">APP DOWNLOADED</a></li>
			  
              <?php if($_SESSION['role'] == 'admin'){ ?>
                <li class="breadcrumb-item"><a href="UserProfile.php?field=Createpayment">CREATE PAYMENT CARD</a></li>
              <?php }?>
            </ol>
          </nav>
          <!-- /Breadcrumb -->
			  <?php if($id[0] == 'Createpayment'){ ?>
			<form method='Post'>
				<select class="form-select" name='selectCard' aria-label="Default select example">
				  <option selected>DENOMINATIONS</option>
				  <option value="20">20.000</option>
				  <option value="50">50.000</option>
				  <option value="100">100.000</option>
				  <option value="200">200.000</option>
				  <option value="500">500.000</option>
				</select>
				<button class='btn btn-primary'type='submit' name='createCard'>CREATE PAYMENT CARD</button>
			</form>
            <div class="container table-responsive py-5"> 
              <table class="table table-bordered table-hover">
                <thead class="">
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">CARD SERI</th>
                    <th scope="col">MONEY</th>
                    <th scope="col">EXPIRED</th>
					<th scope="col">STATUS</th>
                  </tr>
                </thead>
                <tbody>
                <?php if(isset($_SESSION['loadCard'])){
				echo getCardDetail($conn);
				}
				else{
					echo getCardDetail($conn);
				}?>
                </tbody>
              </table>
            </div>

          <?php } ?>
		  <?php if($id[0] == 'history'){ ?>
		  <div class="container table-responsive py-5"> 
              <table class="table table-bordered table-hover">
                <thead class="">
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">APP NAME</th>
                    <th scope="col">DATE DOWNLOAD</th>
					<th scope="col">COST</th>
                  </tr>
                </thead>
                <tbody>
                <?php if(isset($_SESSION['loadCard'])){
				echo getDownHistory($conn,$_SESSION['id']);
				}
				else{
					echo getDownHistory($conn,$_SESSION['id']);
				}?>
                </tbody>
              </table>
            </div>
		  <?php } ?>
          <?php if($id[0] == 'payment'){ ?>
			<form method='Post'>
				<button class='btn btn-primary' name='chargeMoney'>CHARGE MONEY</button>
			</form>
			<?php if(count($errors) == 1){ ?>
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
					<?php                             
						foreach($errors as $showerror){
							echo $showerror;
						} ?>
				</div>
			<?php } ?>
			<?php if(isset($_POST['chargeMoney'])){?>
				<form method='POST'>
					<div class="form-group">
						<label for="card-seri"><h5>Seri of card<h5></label>
						<input type="text" class="form-control form-control-lg" name='card-seri' id="card-seri">
					</div>
					<button class='btn btn-success' name='submitCard'>Charge</button>
				</form>
			<?php } ?>
            <div class="table-responsive py-3"> 
              <table class="table table-bordered table-hover">
				<?php 				
				if(empty(getPaymentDetail($conn,$_SESSION['id']))){ ?>
				<thead class="">
                  <tr>
                    <th scope="col">You have not make any charge yet</th>
                  </tr>
                </thead>
				<?php }else{?>
                <thead class="">
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">CARD SERI</th>
                    <th scope="col">MONEY</th>
                    <th scope="col">DATE PAY</th>
                  </tr>
                </thead>
                <tbody>
                <?php if(isset($_SESSION['loadCard'])){
					echo getPaymentDetail($conn,$_SESSION['id']);
				}
				else{
					echo getPaymentDetail($conn,$_SESSION['id']);
				}?>
                </tbody>
				<?php } ?>
              </table>
            </div>

          <?php }
          if($id[0] == 'user'){ ?>    
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">
                      <h4><?php echo $_SESSION['firstname'] ." ". $_SESSION['lastname']?></h4>
					  <form method='POST'>
                      <button class="btn btn-primary">Upload new avatar</button>
						<button class="btn btn-outline-primary" type='submit' name='editProfile'>Edit profile</button>
					  </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Full Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo $_SESSION['firstname'] ." ". $_SESSION['lastname']?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <?php echo $_SESSION['email']?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Day of birth</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $_SESSION['birthday']?>
                    </div>
                  </div>
				  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Gender</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $_SESSION['gender']?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Role</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $_SESSION['role']?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Present cash</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $_SESSION['money']?>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
    </div>
	<?php }else { ?>
	<div class='home-container'>
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
	</div>
	<?php } ?>








