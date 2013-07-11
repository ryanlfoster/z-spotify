<!-- JSP for including custom clientlibs in child components -->
<%@page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/libs/foundation/global.jsp"%>
<div id="ft">
	<cq:includeClientLib css="mini.example.components.footer" />
	<img alt="Spotify" class="logo-ft" src="https://d2c87l0yth4zbw.cloudfront.net/i/_global/logo.png">
</div>