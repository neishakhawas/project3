
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>



<c:set var="pageTitle" value="Park Details" />
<%@include file="common/header.jsp"%>

<!--  Get park image, name, state, elevation, trail mileage, campsites, annnual visitors, climate
inspiration quote, inspirational quote source, park description, entry fee, number of aniaml species -->
<form action="/" method="POST">
	<select name="tempChoice" id="tempChoice">
		<option value="F">Farenheit</option>
		<option value="C">Celsius</option>
	</select>
	<button type="submit" name="Submit"></button>
</form>

<div id="park-detail">

	<div class="product-description">



		<section class="hero is-success">
			<div class="hero-body">
				<div class="container">
					<h1 class="title">${park.parkName}</h1>

				</div>
			</div>
		</section>

		<img
			src="<c:url value="/img/parks/${fn:toLowerCase(park.parkCode)}.jpg" />" />

<article class="message">
  <div class="message-header">
    <p>Description</p>
    <button class="delete" aria-label="delete"></button>
  </div>
  <div class="message-body is-half">
${park.parkDescription}  </div>
</article>
		<p class="content is-one-third"></p>

		<div>

			<ul class="list is-hoverable">
				<li class="list-item">State: ${park.state}</li>

				<li class="list-item">Acreage: ${park.acreage}</li>
				<li class="list-item">Elevation: ${park.elevationInFeet} ft</li>
				<li class="list-item">Trail Mileage: ${park.milesOfTrail}</li>
				<li class="list-item">Number of Campsites:
					${park.numberOfCampsites}</li>
				<li class="list-item">${park.climate}</li>
				<li class="list-item">${park.yearFounded}</li>
				<li class="list-item">${park.entryFee}</li>
				<li class="list-item">${park.numberOfAnimalSpecies}</li>
				<li class="list-item">${park.inspirationalQuote}-${park.inspirationalQuoteSource}</li>
				<li class="list-item">Trail Mileage: ${park.milesOfTrail}</li>
				<li class="list-item">Number of Camp sites:
					${park.numberOfCampsites}</li>
				<li class="list-item">Climate: ${park.climate}</li>
				<li class="list-item">Park founded in: ${park.yearFounded}</li>
				<li class="list-item">Number of Animal Species:
					${park.numberOfAnimalSpecies}</li>
				<li class="list-item">Annual Visitor Count:
					${park.annualVisitorCount}</li>
				<li class="list-item">${park.inspirationalQuote}-${park.inspirationalQuoteSource}</li>
				<li class="list-item">Entry fee: ${park.entryFee}</li>
				
			</ul>
		</div>







	</div>
</div>




<%@include file="common/footer.jsp"%>