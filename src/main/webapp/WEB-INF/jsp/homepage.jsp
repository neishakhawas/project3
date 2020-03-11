<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="Home Page"/>
<%@include file="common/header.jsp" %>


<img src = "/img/weather/logo.jpg" />



<form action = "greeting" method = "POST" style = "background-color: hotpink">
<input type = "text" name = "username" value = "username">
<select name="tempChoice" id="tempChoice">
		<option value="F">Farenheit</option>
		<option value="C">Celsius</option>
		</select></form>
		
		<div id="grid">

			<c:forEach var="park" items="${parklist}">
				<div class="tile  ${product.remainingStock <= 0 ? 'sold-out' : ''} ">
					<c:choose>
						<c:when test="${product.remainingStock <= 0}">
							<span class="banner"> Sold Out</span>
						</c:when>

						<c:when test="${product.topSeller}">
							<span class="banner top-seller"> Top Seller! </span>

						</c:when>

					</c:choose>
					<!-- Link to the Detail page using the product id (e.g. products/detail?id=1) -->
					<a class="product-image" href="products/detail?id=${product.id}">
						<img
						src="<c:url value="/images/product-images/${product.imageName}" />" />
					</a>
					<div class="details">
						<p class="name">"${product.name}"</p>

						<!-- .filled will make the star solid -->
						<div class="rating">

							<c:forEach begin="1" end="5" var="i">


								<span class="${ i <= product.averageRating ?  'filled' : '' }">
									&#9734; </span>
							</c:forEach>
						</div>

		<c:if
							test="${product.remainingStock > 0 && product.remainingStock <= 5}">

							<span class="product-alert">"${product.remainingStock}"</span>
						</c:if>


						<p class="price">

							<fmt:formatNumber value="${product.price}" type="CURRENCY" />

						</p>
					</div>
				</div>

			</c:forEach>


		</div>



		






<%@include file="common/footer.jsp" %>