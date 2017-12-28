<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<meta name="description" content="">
		<meta name="author" content="">

		<!-- Title -->
		<title>Simple Minds</title>

		<meta name="csrf-token" content="{{ csrf_token() }}">

		<!-- Vendor CSS -->
		

		

		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/themify-icons/themify-icons.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/animate.css/animate.min.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/jscrollpane/jquery.jscrollpane.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/waves/waves.min.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/chartist/chartist.min.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/switchery/dist/switchery.min.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/morris/morris.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/jvectormap/jquery-jvectormap-2.0.3.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/DataTables/css/dataTables.bootstrap4.min.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/DataTables/Responsive/css/responsive.bootstrap4.min.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/DataTables/Buttons/css/buttons.dataTables.min.css">
		<link rel="stylesheet" href="{{asset('public/admin/vendor')}}/DataTables/Buttons/css/buttons.bootstrap4.min.css">

		<!-- Simple Minds CSS -->
		<link rel="stylesheet" href="{{asset('public/admin/css/core.css')}}">

		@section('header')


		@endsection






		<!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body class="large-sidebar fixed-sidebar fixed-header">


	@section('sidebar')
		@show
		<!-- sidebar start -->
		@include('admin.includes.adminsidebar')
		<!-- sidebar ends -->



	@section('headermenu')
		@show
		@include('admin.includes.adminheadermenu')


	
	@yield('content')


	@section('footer')
		@show
		@include('admin.includes.adminfooter')

	</body>
	</html>