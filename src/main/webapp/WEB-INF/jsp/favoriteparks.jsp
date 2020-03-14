<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="pageTitle" value="favoriteparks" />
<%@include file="common/header.jsp"%>

<c:forEach var="park" items="${favoriteParkList}">
	<div class="table">
		<p>${parks.parkName}</p>
		<img src="img/parks/${park.parkCode}.jpg" />
		<p>${park.description}</p>


		<div class="column">
			<h2 class="title">${parks.parkName}</h2>


			<div class="columns is-mobile">
				<div class="column">
					<p class="bd-notification is-info">


						<c:url var="dpu" value="detailsPage">
							<c:param name="parkCode" value="${parks.parkCode}" />
						</c:url>
						<a href="${dpu}"> <img
							src="img/parks/${fn:toLowerCase(parks.parkCode)}.jpg"
							alt="picture" width="65%" />
						</a>
					</p>
				</div>

			</div>
		</div>
		<a href="/homepage">
			<button class="Button">Return Home</button>
		</a>
</c:forEach>

<%@include file="common/footer.jsp"%>