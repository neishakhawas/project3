
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

	<div class="park-description">



		<section class="hero is-success">
			<div class="hero-body">
				<div class="container">
					<h1 class="title">${park.parkName}</h1>

				</div>
			</div>
		</section>


		<img
			src="<c:url value="/img/parks/${fn:toLowerCase(park.parkCode)}.jpg" />" />




		<p>Day: ${i.day} - ${i.forecast } Low: ${i.low} High: ${i.high}</p>



		<c:forEach var="i" items="${weather } ">
			<img src="<c:url value="/img/weather/${i.forecast}.png"/>" />
		</c:forEach>
		<article class="message is-success">
			<div class="message-header is-half">
				<p>Description</p>

			</div>
			<div class="message-body is-half">${park.parkDescription}</div>
		</article>
		<p class="content is-one-third"></p>

		<div>
			<table class="table">
				<tbody>
					<tr>
						<td>State:</td>
						<td>${park.state}</td>
					</tr>
					<tr>
						<td>Acreage:</td>
						<td>${park.acreage}</td>
					</tr>
					<tr>
						<td>Elevation:</td>
						<td>${park.elevationInFeet}ft</td>
					</tr>
					<tr>
						<td>Trail Mileage:</td>
						<td>${park.milesOfTrail}</td>
					</tr>
					<tr>
						<td>Number of Campsites:</td>
						<td>${park.numberOfCampsites}</td>
					</tr>
					<tr>
						<td>Climate:</td>
						<td>${park.climate}</td>
					</tr>
					<tr>
						<td>Year Founded:</td>
						<td>${park.yearFounded}</td>
					</tr>
					<tr>
						<td>Entry Fee:</td>
						<td>${park.entryFee}</td>
					</tr>
					<tr>
						<td>Number of Animal Species:</td>
						<td>${park.numberOfAnimalSpecies}</td>
					</tr>
					<tr>
						<td>Trail Mileage:</td>
						<td>${park.milesOfTrail}</td>
					</tr>
					<tr>
						<td>Number of Camp sites:</td>
						<td>${park.numberOfCampsites}</td>
					</tr>
					<tr>
						<td>Climate:</td>
						<td>${park.climate}</td>
					</tr>
					<tr>
						<td>Park founded in:</td>
						<td>${park.yearFounded}</td>
					</tr>
					<tr>
						<td>Number of Animal Species:</td>
						<td>${park.numberOfAnimalSpecies}</td>
					</tr>
					<tr>
						<td>Annual Visitor Count:</td>
						<td>${park.annualVisitorCount}</td>
					</tr>
					<tr>
						<td>${park.inspirationalQuote}-</td>
						<td>${park.inspirationalQuoteSource}</td>
					</tr>


				</tbody>
			</table>

		</div>







	</div>
</div>




<%@include file="common/footer.jsp"%>