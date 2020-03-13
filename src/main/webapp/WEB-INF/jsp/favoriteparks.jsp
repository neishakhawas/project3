<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="favoriteparks"/>
<%@include file="common/header.jsp" %>


<c:forEach var = "park" items = "${favorite}">

<div class="tile">
				<p> ${park.parkName}</p>
				<img src = "img/parks/${park.parkCode}.jpg"/>
				<p>${park.surveyCount}</p>	

</div>
</c:forEach>





<%@include file="common/footer.jsp" %>