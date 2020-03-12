<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="Home Page" />
<%@include file="common/header.jsp"%>

<!--  Get park image, name, state, elevation, trail mileage, campsites, annnual visitors, climate
inspiration quote, inspirational quote source, park description, entry fee, number of aniaml species -->

<div id="park-detail">
<<<<<<< HEAD
	<img src="<c:url value="/images/product-images/"${park.parkCode} + ".jpg" />



	<form action="/" method="POST">
		<select name="tempChoice" id="tempChoice">
			<option value="F">Farenheit</option>
			<option value="C">Celsius</option>
		</select>
		<button type="submit" name="Submit"></button>
	</form>

=======
	
>>>>>>> 575960d3d977e3638ed3d843cecad17abd12f979
	<div class="product-description">
		
		<h3>"${park.parkName}"</h3>
<<<<<<< HEAD

		<p>${park.description}</p>
=======
		
		<p>${park.parkDescription}</p>
>>>>>>> 575960d3d977e3638ed3d843cecad17abd12f979
		<p>State: ${park.state}</p>
		<p>Elevation: ${park.elevationInFeet} ft</p>
		<p>Trail Mileage: ${park.milesOfTrail}</p>
		<p>Number of Campsites: ${park.numberOfCampsites}</p>
		<p>${park.climate}</p>
		<p>${park.yearFounded}</p>
		<p>${park.entryFee}</p>
		<p>${park.numberOfAnimalSpecies}</p>
		<p>${park.inspirationalQuote}- ${park.inspirationalQuoteSource}</p>


		<a href="/homepage">
			<button class="Button">Return Home</button>
		</a>
	</div>
</div>




<%@include file="common/footer.jsp"%>