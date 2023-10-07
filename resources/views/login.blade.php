<!-- Menghubungkan view dengan template utama  -->
@extends('main')

@section('content')
<!-- <div class="w3_login"> -->
  <h3></h3>
  <div class="w3_login_module">
    <div class="module form-module">
      <div class="toggle"><i class="fa fa-times fa-pencil"></i>
      <div class="tooltip">Click Me</div>
      </div>
      <div class="form">
      <h2>Login to your account</h2>
      <form id="form-login">
        <input type="text" name="email" placeholder="Email" required=" ">
        <input type="password" name="password" placeholder="Password" required=" ">
        <button type="button" class="btn btn-primary" onclick="login()">Login</button>
      </form>
      </div>
      <div class="form">
      <h2>Create an account</h2>
      <form>
        <input type="text" name="username" placeholder="Username" required=" ">
        <input type="password" name="password" placeholder="Password" required=" ">
        <input type="email" name="email" placeholder="Email Address" required=" ">
        <input type="text" name="phone" placeholder="Phone Number" required=" ">
        <button type="button" class="btn btn-primary" onclick="register()">Register</button>
      </form>
      </div>
      <!-- <div class="cta"><a href="#">Forgot your password?</a></div> -->
    </div>
  <!-- </div> -->
  <script>
    $('.toggle').click(function(){
      // Switches the Icon
      $(this).children('i').toggleClass('fa-pencil');
      // Switches the forms  
      $('.form').animate({
      height: "toggle",
      'padding-top': 'toggle',
      'padding-bottom': 'toggle',
      opacity: "toggle"
      }, "slow");
    });

    function login(){
      $.ajax({
        url: '{{ route("api-login") }}',
        method: 'POST',
        data: $('#form-login').serialize(),
        dataType: 'JSON',
        success: function(response) {
          console.log('res', response);
          const role_id = response.data.role_id;
          let routeUrl = "{{ route('home') }}";
          if (role_id === 1) {
            window.location.href = routeUrl;
          }else{
            routeUrl = "{{ route('user') }}";
            window.location.href = routeUrl;
          }
        },
        error: function(xhr, status, error) {
            // Handle any errors that occur during the AJAX request
            console.error(xhr.responseText);
        }
      });
    }
  </script>
</div>
<!-- //login -->
@endsection