
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<c:set var="pageTitle" value="Home Page" />
<%@include file="common/header.jsp"%>

<c:forEach var="parks" items="${allParks}">



	<div class="column">
		<h2 class="title">${parks.parkName}</h2>


		<div class="columns is-mobile">
			<div class="column">
				<p class="bd-notification is-info">
				<c:url var="parkDetailPage" value="/parkdetail">
					<img src="img/parks/${fn:toLowerCase(parks.parkCode)}.jpg"
						alt="picture" width="45%" /></c:url>
				</p>
			</div>
			<div class="column">
				<p class="bd-notification is-info"><p class="content">${parks.parkDescription}</p></p>


			</div>
		</div>
	</div>

</c:forEach>




<%@include file="common/footer.jsp"%>