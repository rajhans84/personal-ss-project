<!DOCTYPE html>
<!--[if IE 8]><html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]>
<!-->
<html class="no-js" lang="$ContentLocale">
<!--<![endif]-->

<head>
	<!-- Basic Page Needs
  ================================================== -->
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title $SiteConfig.Tagline</title>
	$MetaTags(false)
	<meta charset="utf-8">
	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


	<!-- CSS
  ================================================== -->
  <% require themedCSS('base') %>
  <% require themedCSS('skeleton') %>
  <% require themedCSS('layout') %>
  <% require themedCSS('font-awesome') %>
  <% require themedCSS('retina') %>
  <% require themedCSS('owl.carousel') %>
  <% require themedCSS('owl.transitions') %>
	


	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.png">
	<link rel="apple-touch-icon" href="$ThemeDir/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="$ThemeDir/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="$ThemeDir/images/apple-touch-icon-114x114.png">

  <% require themedJavascript('modernizr.custom') %>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAvpnlHRidMIU374bKM5-sx8ruc01OvDjI"></script>

</head>

<body class="royal_preloader">
	<% include Header %>
	<!-- Primary Page Layout
	================================================== -->
	$Layout
	
	<% include Footer %>
</body>

</html>