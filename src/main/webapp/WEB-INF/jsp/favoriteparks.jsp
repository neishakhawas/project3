<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="favoriteparks" />
<%@include file="common/header.jsp"%>


<%-- <c:forEach var="park" items="${favoriteList}">

	<div class="columns">
		<div class="column is-success">
			<p class="bd-notification is-info">${park.parkName }</p>
			<div class="columns is-mobile">
				<div class="column">
					<p class="bd-notification is-info">
						<img src="/img/parks/${park.imgName}.jpg">
					</p>
				</div>
				<div class="column is-half">
					<p class="bd-notification is-info">${park.description}</p>
				</div>
			</div>
		</div>
	</div>


</c:forEach> --%>

<%@include file="common/footer.jsp"%>