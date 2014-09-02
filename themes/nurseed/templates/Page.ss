<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/styles.css">
	<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/chosen.css">
	<link rel="stylesheet" type="text/css" href="{$ThemeDir}/css/slick.css">

	<script type="text/javascript" src="//use.typekit.net/yde2yfb.js"></script>
	<script type="text/javascript">try{Typekit.load();}catch(e){console.log(e)}</script>
	<script src="{$ThemeDir}/js/html5shiv.min.js"></script>
	<script src="{$ThemeDir}/js/respond.min.js"></script>
	<script src="{$ThemeDir}/js/jquery-1.11.0.min.js"></script>
	<script src="{$ThemeDir}/js/chosen.jquery.min.js"></script>
	<script src="{$ThemeDir}/js/slick.min.js"></script>
	<script src="{$ThemeDir}/js/script.js"></script>

</head>
<body>
	
	<% include Header %>

	<% include Navigation %>

	$Layout


	<% include Footer %>

</body>
</html>
