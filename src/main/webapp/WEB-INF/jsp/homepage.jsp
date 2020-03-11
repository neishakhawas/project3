<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="Home Page"/>
<%@include file="common/header.jsp" %>



			<c:forEach var="parks" items="${allParks}">
				<div class="tile">
				<p> ${parks.parkName}</p>
				<p>${parks.parkDescription}</p>			
				
				
					</div>
			</c:forEach>



<%@include file="common/footer.jsp" %>