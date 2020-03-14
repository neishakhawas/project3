<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="Home Page"/>
<%@include file="common/header.jsp" %>
<c:forEach var = "park" items = "${favoriteParkList}" >
<div class="tile">
				<p> ${parks.parkName}</p>
				<img src = "img/parks/${park.parkCode}.jpg"/>
				<p>${park.description}</p>	

</div>
</c:forEach>



<a href = "/homepage">
		<button class = "Button"> Return Home</button>
			</a>


<%@include file="common/footer.jsp" %>