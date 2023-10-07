<!DOCTYPE html>
<html>
<head>
  <title>IWI STORE</title>
  <!-- for-mobile-apps -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Tomo Studio, Belajar bikin web,workshop batch 1" />
  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
      function hideURLbar(){ window.scrollTo(0,1); } </script>
  <!-- //for-mobile-apps -->
  <link rel="stylesheet" href="{{ asset ('css/bootstrap.css') }}" type="text/css" edia="all" />
  <link rel="stylesheet" href="{{ asset ('css/style.css') }}" type="text/css" edia="all" />
  <!-- font-awesome icons -->
  <link rel="stylesheet" href="{{ asset ('css/font-awesome.css') }}" type="text/css" edia="all" />
  <!-- //font-awesome icons -->
  <!-- //js -->
  <!-- js -->
  <script src="{{ asset ('js/jquery-1.11.1.min.js') }}"></script>
  <link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
  <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
  <!-- start-smoth-scrolling -->
  <script src="{{ asset ('js/move-top.js') }}"></script>
	<script src="{{ asset ('js/easing.js') }}"></script>
  <script type="text/javascript">
    jQuery(document).ready(function($) {
      $(".scroll").click(function(event){		
        event.preventDefault();
        $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
      });
    });
  </script>
  <!-- start-smoth-scrolling -->
</head>
<body>
	@include('header')
	<!-- bagian judul halaman blog -->
	<!-- <h3>@yield('title')</h3> -->

	<!-- bagian konten blog -->
	@yield('content')

	<!-- ini bagian footer -->
	@include('footer')
	<!--//MENU-JS-->
</body>
</html>
