<!-- JSP for including custom clientlibs in child components -->
<%@page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="/libs/foundation/global.jsp"%>
<cq:setContentBundle />

<cq:includeClientLib css="mini.example.components.search" />
<h1><fmt:message key="SEARCH" /></h1>
<span class="albums-tab"><fmt:message key="TAB-ALBUMS" /></span>
<span class="tracks-tab"><fmt:message key="TAB-TRACKS" /></span>
<form>
    <input type="text" class="search-albums hide" value="<fmt:message key="SEARCH-ALBUMS" />">
</form>
<form>
    <input type="text" class="search-tracks" value="<fmt:message key="SEARCH-TRACKS" />">
</form>
<div class="content hide">
    <div class="row results-albums hide">
        
    </div>
    <div class="row results-tracks">
        
    </div>
</div>
<cq:includeClientLib js="mini.example.components.search" />
	

