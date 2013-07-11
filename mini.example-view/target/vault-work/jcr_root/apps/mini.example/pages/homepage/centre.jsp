<%@page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@include file="/libs/foundation/global.jsp" %>		
<div id="bd">
    <div class="row main">
        <div class="col25">
            <img src="https://d2c87l0yth4zbw.cloudfront.net/i/signup/spotify-logo-for-music.png" alt="spotify">
           
            <cq:include path="leftpar" resourceType="foundation/components/parsys"/>
        </div>
        <div class="col50">
            
            <cq:include path="par" resourceType="foundation/components/parsys"/>
          
        </div>
        <div class="col25 last">
            <img src="https://d2c87l0yth4zbw.cloudfront.net/i/signup/spotify-logo-for-music.png" alt="spotify">
           
            <cq:include path="rightpar" resourceType="foundation/components/parsys"/>
        </div>
    </div>
</div>