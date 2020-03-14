<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<<<<<<< HEAD
<c:set var="pageTitle" value="favoriteparks" />
<%@include file="common/header.jsp"%>


<c:forEach var="park" items="${favorite}">
	<!-- set parks into table and each table row will be a link back to the park detail page  -->
	<p>${park.parkName }</p>

<c:url var="dpu" value="detailspage">
		<c:param name="parkCode" value="${parks.parkCode}" />
	</c:url>
=======
<c:set var="pageTitle" value="Home Page"/>
<%@include file="common/header.jsp" %>
<c:forEach var = "park" items = "${favoriteParkList}" >
<div class="tile">
				<p> ${parks.parkName}</p>
				<img src = "img/parks/${park.parkCode}.jpg"/>
				<p>${park.description}</p>	
>>>>>>> 426c6eac4949f6dbd88c18aa1de499200dbe8288

	<div class="column">
		<h2 class="title">${parks.parkName}</h2>


		<div class="columns is-mobile">
			<div class="column">
				<p class="bd-notification is-info">

<<<<<<< HEAD
					<c:url var="dpu" value="detailsPage">
						<c:param name="parkCode" value="${parks.parkCode}" />
					</c:url>
					<a href="${dpu}"> <img
						src="img/parks/${fn:toLowerCase(parks.parkCode)}.jpg"
						alt="picture" width="65%" /> </a> 
				</p>
			</div>
			
		</div>
	</div>
=======
<a href = "/homepage">
		<button class = "Button"> Return Home</button>
			</a>
>>>>>>> 426c6eac4949f6dbd88c18aa1de499200dbe8288

</c:forEach>

<%@include file="common/footer.jsp"%>