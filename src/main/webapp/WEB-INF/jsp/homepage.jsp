<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="Home Page"/>
<%@include file="common/header.jsp" %>


<img src = "/img/weather/logo.jpg" />

<div id="grid">

			<c:forEach var="park" items="${parklist}">
				<div class="tile">
				<p> ${parks.parkName}</p>
				<img src = "img/parks/${park.parkCode}" + ".jpg"/>
				<p>${park.description}</p>			
				
				
					</div>
			</c:forEach>
</div>


<%@include file="common/footer.jsp" %>