<!-- JSP for including custom clientlibs in child components -->
<%@page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/libs/foundation/global.jsp"%>
<cq:setContentBundle />
<cq:includeClientLib css="mini.example.components.tracks" />
	
<div class="playlist">
	<h4><fmt:message key="TRACKS" /></h4>
	<ul class="track-list">
		
	</ul>
</div>


