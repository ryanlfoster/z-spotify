<!-- JSP for including custom clientlibs in child components -->
<%@page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/libs/foundation/global.jsp"%>

<div id="hd">
	<cq:includeClientLib css="mini.example.components.header" />	
	<img alt="Spotify" class="logo" src="https://d2c87l0yth4zbw.cloudfront.net/i/_global/logo.png">
	<div class="language">
		<h6>Language</h6>
		<ul class="lang hide">
			<li><a href="/content/mini.example/en/home-page.html">English</a></li>
			<li><a href="/content/mini.example/de/home-page.html">German</a></li>
			<li><a href="/content/mini.example/fr/home-page.html">French</a></li>
		</ul>
	</div>
</div>
