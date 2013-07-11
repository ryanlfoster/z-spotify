<!-- JSP for including custom clientlibs in child components -->
<%@page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@include file="/libs/foundation/global.jsp" %>
<%@taglib prefix="cq" uri="http://www.day.com/taglibs/cq/1.0" %>
<cq:defineObjects/>
<cq:setContentBundle />


<cq:include path="hdpar" resourceType="foundation/components/parsys"/>

