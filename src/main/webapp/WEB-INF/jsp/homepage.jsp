<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="Home Page" />
<%@include file="common/header.jsp"%>




<div id="grid">

	<c:forEach var="park" items="${parklist}">
		<section class="section">
			<div class="container">
				
				<h2 class="title">${parks.parkName}</h2>

				<p class="content">${parks.parkDescription}</p>

			</div>
		</section>
	</c:forEach>



	<%@include file="common/footer.jsp"%>