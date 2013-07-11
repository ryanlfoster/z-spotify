<%@page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@include file="/libs/foundation/global.jsp" %>

<body>
	
	<div class="page">

		<cq:include script="header.jsp" />
		<cq:include script="centre.jsp" />
		<cq:include script="footer.jsp" />

	</div>
	<cq:includeClientLib js="mini.example.global" />
	<cq:includeClientLib js="mini.example.pages.homepage" />
</body>
