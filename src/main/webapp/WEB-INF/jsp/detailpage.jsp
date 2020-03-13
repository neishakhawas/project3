
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>



<c:set var="pageTitle" value="Park Details" />
<%@include file="common/header.jsp"%>



<div id="park-detail">

	<div class="park-description">


		<br>
		<section class="hero is-success">
			<div class="hero-body">
				<div class="container">
					<h1 class="title">${park.parkName}</h1>

				</div>
			</div>
		</section>


		<img
			src="<c:url value="/img/parks/${fn:toLowerCase(park.parkCode)}.jpg" />" />


		<form action="#" method="GET">
			<select name="tempChoice" id="tempChoice">
				<option value="F">Farenheit</option>
				<option value="C">Celsius</option>
			</select>
			<button type="submit" name="Submit"></button>
		</form>

		<div>
			<table class="table is-bordered is-striped is-narrow is-hoverable">
				<thead>
					<tr>
						<th>Day</th>
						<th>Forecast</th>
						<th>Low</th>
						<th>High</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="i" items="${weather}">

						<tr>
							<td>${i.day}</td>
							<td><img
								src="<c:url value="/img/weather/${i.imgName}.png"/>"
								width="10%" /></td>
							<td>${i.low}</td>
							<td>${i.high}</td>
					</c:forEach>
				</tbody>
			</table>
		</div>
						<%-- <td><img src="<c:url value="/img/weather/${i.imgName}.png"/>"width="10%" /></td>
						</tr>
							<tr>
							<td>Day: ${i.day} - ${i.forecast}</td>
							</tr>
							<tr>
							<td>Low: ${i.low} </td>
							</tr>
							<tr>
							<td>High: ${i.high} </td>
							</tr>
					</tbody>
				</table>
			</div>

		</c:forEach>
 --%>


		<article class="message is-success">
			<div class="message-header is-half">
				<p>Description</p>

			</div>
			<div class="message-body is-half">${park.parkDescription}</div>
		</article>


		<div>
			<table
				class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">
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
						<td>${park.inspirationalQuote}</td>

						<td>-${park.inspirationalQuoteSource}</td>
					</tr>


				</tbody>
			</table>

		</div>







	</div>
</div>



<%@include file="common/footer.jsp"%>