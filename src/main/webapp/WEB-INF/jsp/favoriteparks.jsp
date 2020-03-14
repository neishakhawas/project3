<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="pageTitle" value="favoriteparks" />
<%@include file="common/header.jsp"%>

<c:forEach var="park" items="${favoriteList}">
	
		<p>${park.parkname}</p>
		<img src="img/parks/${park.parkcode}.jpg" />
		

			
		
</c:forEach>

<%@include file="common/footer.jsp"%>