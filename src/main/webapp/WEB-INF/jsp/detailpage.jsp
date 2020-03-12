<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>


<c:set var="pageTitle" value="Home Page"/>
<%@include file="common/header.jsp" %>

<!--  Get park image, name, state, elevation, trail mileage, campsites, annnual visitors, climate
inspiration quote, inspirational quote source, park description, entry fee, number of aniaml species -->

<div id="park-detail">
	
	<div class="product-description">
	<img src="<c:url value="/img/parks/${fn:toLowerCase(park.parkCode)}.jpg" />" />
	
		
		<h3>${park.parkName}</h3>
		
		<p>${park.parkDescription}</p>
		<p>State: ${park.state}</p>
		<p>Acreage: ${park.acreage}</p>
		<p>Elevation: ${park.elevationInFeet} ft</p>
		<p>Trail Mileage: ${park.milesOfTrail} </p>
		<p>Number of Camp sites: ${park.numberOfCampsites}</p>
		<p>Climate: ${park.climate}</p>
		<p>Park founded in: ${park.yearFounded}</p>
		<p>Number of Animal Species: ${park.numberOfAnimalSpecies}</p>
		<p>Annual Visitor Count: ${park.annualVisitorCount} </p>
		
		<p>${park.inspirationalQuote}  - ${park.inspirationalQuoteSource}</p>
		<p>Entry fee: ${park.entryFee}</p>
		
		<c:forEach var="i" items="${weather}">
		<p> Day: ${i.day} - ${i.forecast } Low: ${i.low} High: ${i.high}</p>
		
		<img src="<c:url value="/img/weather/${fn:replace(i.forecast,' ', '')}.png"/>"/>
	</c:forEach>

<a href = "/homepage">
		<button class = "Button"> Return Home</button>
			</a>
	</div>
</div>




<%@include file="common/footer.jsp" %>