<html>
<head>
<title>Compojoom Development v1.0 Alpha</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row clearfix" style="margin: 20px">
		<div style="float:right;">
			<img src="logo.png" alt="Compojoom.com" class="img-responsive img-right" style="width: 200px;" />
		</div>
	</div>
	<div class="table-responsive">
		<table class="table table-striped table-hover">
		<tr>
			<td style="width: 200px;">Apache user:</td>
			<td><?php echo exec('whoami'); ?></td>
		</tr>
		<tr>
			<td>Version:</td>
			<td>1.0.0 Alpha</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td>Joomla 3.3:</td>
			<td><a href="/j33d">Development</a></td>
		</tr>
		<tr>
			<td>Joomla 3.3:</td>
			<td><a href="/j33_test">Test</a></td>
		</tr>
		<tr>
			<td>Joomla 2.5:</td>
			<td><a href="/j25d">Development</a></td>
		</tr>
		<tr>
			<td>Joomla 2.5:</td>
			<td><a href="/j25_test">Test</a></td>
		</tr>
		</table>
	</div>
	<div class="text-center">
		Copyright (C) 2014 - <?php echo date('Y'); ?> compojoom.com
	</div>
</div>
</body>
</html>
