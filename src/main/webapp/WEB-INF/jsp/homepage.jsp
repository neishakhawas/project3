<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="Home Page"/>
<%@include file="common/header.jsp" %>


<img src = "/img/weather/logo.jpg" />


<c:url var="homePage" value="homePage" />
<form action = "${homePage}" method = "GET">

</form>
		
		<div id="grid">

			<c:forEach var="park" items="${parkslist}">
				<div class="tile">
				<p> ${park.parkName}</p>
				<img src = "img/parks/${park.parkCode}" + ".jpg"/>
				<p>${park.description}</p>			
				
				
					</div>
			</c:forEach>
</div>


<%@include file="common/footer.jsp" %>