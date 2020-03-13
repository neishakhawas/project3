
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="pageTitle" value="Home Page" />
<%@include file="common/header.jsp"%>

<c:forEach var="parks" items="${allParks}">

	<c:url var="dpu" value="detailPage">
		<c:param name="parkCode" value="${parks.parkCode}" />
	</c:url>

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
			<div class="column">
				<p class="bd-notification is-info"></p>
				<p class="content">${parks.parkDescription}</p>
				

			</div>
		</div>
	</div>

</c:forEach>

<%@include file="common/footer.jsp"%>