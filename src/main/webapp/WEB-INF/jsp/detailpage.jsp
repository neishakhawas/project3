<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="Home Page"/>
<%@include file="common/header.jsp" %>

<!--  Get park image, name, state, elevation, trail mileage, campsites, annnual visitors, climate
inspiration quote, inspirational quote source, park description, entry fee, number of aniaml species -->

<div id="park-detail">
	<img src="<c:url value="/images/product-images/"${park.parkCode} + ".jpg" />
	<div class="product-description">
		<h3>"${park.parkName}"</h3>
		
		<p>${park.description}<p>
		<p>${park.state} , ${park.elevationInFeet}, ${park.milesOfTrail}, ${park.numberOfCampsites}, ${park.climate}, ${park.yearFounded}</p>
		<p>${park.inspirationalQuote}, ${park.inspirationalQuoteSource}</p>


<a href = "/homepage">
		<button class = "Button"> Return Home</button>
			</a>
	</div>
</div>




<%@include file="common/footer.jsp" %>