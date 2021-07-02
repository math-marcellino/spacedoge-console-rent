<nav class="navbar navbar-expand-lg nav-color navbar-dark fixed-top">
  <a class="navbar-brand" href="#">
      <img src="{{asset('images/uas_logo_final.png')}}" width="70" height="70" alt="">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse navbar-dark" style="width: 40%; border-radius: 10px;" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
              <a class="nav-link" style="padding: 10px;" href="">Home</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" style="padding: 10px" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Category
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="console/playstation">Playstation</a>
                <a class="dropdown-item" href="console/nintendo">Nintendo</a>
                <a class="dropdown-item" href="console/xbox">Xbox</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" style="padding: 10px" href="order">Your Order</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" style="padding: 10px" href="about_us">About Us</a>
          </li>
      </ul>
      <ul class="navbar-nav navbar-right">
        @if (!session()->has('user'))
          <li class="nav-item">
            <a class="nav-link" style="padding: 10px" href="/login">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" style="padding: 10px" href="/signup">Sign Up</a>
          </li>
        @endif
        @if (session()->has('user'))
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" style="padding: 10px" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Welcome, {{session('user')->first_name}}!
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" style="padding: 10px" href="/logout"><i class="fa fa-sign-out-alt"></i> Logout</a>
            </div>
          </li>
        @endif
      </ul>
  </div>
</nav>