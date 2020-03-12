<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<c:set var="pageTitle" value="Home Page"/>
<%@include file="common/header.jsp" %>

<c:forEach var="parks" items="${allParks}">


<c:url var="dpu" value="detailsPage">
<c:param name="parkCode" value="${parks.parkCode}"/>
</c:url>
<a href="${dpu}">

	<img src="img/parks/${fn:toLowerCase(parks.parkCode)}.jpg" alt="picture" width="25%" />
	</a>

	<div class="tile">
		<p>${parks.parkName}</p>
		<p>${parks.parkDescription}</p>


	</div>
</c:forEach>



<%@include file="common/footer.jsp" %>