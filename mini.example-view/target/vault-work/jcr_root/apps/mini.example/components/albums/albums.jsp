<!-- JSP for including custom clientlibs in child components -->
<%@page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/libs/foundation/global.jsp"%>
<cq:setContentBundle />
<cq:includeClientLib css="mini.example.components.albums" />

<div class="playlist albums">
	<h4><fmt:message key="ALBUMS" /></h4>
	<ul class="album-list">
	</ul>
</div>

