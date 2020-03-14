<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="pageTitle" value="favoriteparks" />
<%@include file="common/header.jsp"%>


<table class = "table is-bordered is-hoverable">
<thead>
<tr>
<th> Park</th>
<th> Survey Count</th>
</tr>
</thead>
<tbody>
<c:forEach var="park" items="${favorite}">
<tr>
<td>${park.parkName}</td>
<td> ${park.surveyCount }</td>
</tr>
</c:forEach>

</tbody>
</table>
	
	
		
		

			
		

<%@include file="common/footer.jsp"%>