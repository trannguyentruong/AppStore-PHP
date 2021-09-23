<nav class="nav-ngang navbar navbar-expand-sm navbar-dark">
    <div class='row width-100'>
      <div onclick='location.href="index.php"'class='bedevelovebug col-sm col-lg-3 col-md-5 d-none d-lg-block'><h3>Bedevelovebug</h3></div>
      <form class='col-sm col-lg-9 col-sm-6 col-md-7 col-sm-12' method='GET'>
          <div class='input-group'>
            <input type="text" name='search' id = "search" class="form-control rounded-3 input-lg" placeholder="Searching for something">
            <div class="input-group-append">
              <button type="submit" class="form-control btn btn-primary" name='searchBtn' value='searching'><i class="fa fa-search"></i></button>
            </div>
          </div>
      </form>
    </div>
</nav>

<nav class="navbar-2 navbar navbar-expand-md navbar-light">
  <button type="button" class="navbar-toggler bg-light" data-toggle="collapse" data-target="#nav">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-between" id="nav">
    <ul class="navbar-nav">
      <li class="nav-item" >
        <a class="nav-link font-weight-bold px-3" href="index.php">HOME</a>
      </li>
      <li class="nav-item" >
        <?php if(isset($_SESSION['login'])) {?>
        <form>
          <a class="nav-link font-weight-bold px-3" href='UserProfile.php?field=user'>PROFILE</a>
        </form>
        <?php } else{ ?>
        <a class="nav-link font-weight-bold px-3" href="signIn.php">SIGN IN</a>
        <?php } ?>
      </li>
      <li class="nav-item">
        <?php if(isset($_SESSION['login'])) {?>
          <a class="nav-link font-weight-bold px-3" href="logOut.php">LOG OUT</a>
        <?php } else{ ?>
          <a class="nav-link font-weight-bold px-3" href="signUp.php">SIGN UP</a>
        <?php } ?>
      </li>
      <li class="nav-item">
        <a class="nav-link font-weight-bold px-3" href="appCate.php?cate=new" value='New Release'>NEW RELEASE</a>
      </li>
      <li class="nav-item">
        <a class="nav-link font-weight-bold px-3" href="appCate.php?cate=topFree" value='New Release'>TOP FREE APPS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link font-weight-bold px-3" href="appCate.php?cate=topPay" value='New Release'>TOP PAY APPS</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link font-weight-bold px-3 dropdown-toggle" id="navbarDropdown"  href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >CATEGORIES</a>
        <div class="dropdown-menu myMenu" labelledby="navbarDropdown">
          <?php    
          if (!empty(getAllCategory($conn))) {
            $res = getAllCategory($conn);
          }
          echo $res;
              ?>
        </div>
      </li>
    </ul>
  </div>
</nav>