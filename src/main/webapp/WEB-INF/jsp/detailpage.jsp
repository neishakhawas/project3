<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="Home Page"/>
<%@include file="common/header.jsp" %>

<!--  Get park image, name, state, elevation, trail mileage, campsites, annnual visitors, climate
inspiration quote, inspirational quote source, park description, entry fee, number of aniaml species -->

<div id="park-detail">

<c:url var="imageurl" value= "/images/product-images/${park.parkCode}.jpg"/>

	<img src="${imageurl}"/>
	
	<div class="product-description">
		<h3>"${park.parkName}"</h3>
		
		<p>${park.description}</p>
		<p>State: ${park.state}</p>
		<p>Elevation: ${park.elevationInFeet} ft</p>
		<p>Trail Mileage: ${park.milesOfTrail} </p>
		<p>Number of Campsites: ${park.numberOfCampsites}</p>
		<p>${park.climate}</p>
		<p>${park.yearFounded}</p>
		<p>${park.inspirationalQuote}  - ${park.inspirationalQuoteSource}</p>


<a href = "/homepage">
		<button class = "Button"> Return Home</button>
			</a>
	</div>
</div>




<%@include file="common/footer.jsp" %>