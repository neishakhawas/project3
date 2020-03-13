<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="pageTitle" value="Home Page" />
<%@include file="common/header.jsp"%>


	<div class="container">
		<br>
		<div class="control">
			<div class="form">
				<form:form action="survey" method="POST" style="form" ModelAttribute="survey">
					<label class="label">Enter Your Email Address:</label> <input
						class="input is-success" style="width: 20em" type="email"
						name="email" value="Email">
						<form:errors path="email" cssClass="error" />
					<br><br>
					<div class="select is-success">
						<label class="label ">Select Your Activity Level:</label><select
							name="activitylevel" id="activitylevel">
							<option value="1">Inactive</option>
							<option value="2">Sedentary</option>
							<option value="3">Active</option>
							<option value="4">Extremely Active</option>
						</select>
					</div>
					<br> <br> <br>
					<div class="select is-success">
						<label class="label">Select Your State:</label> <select
							name="state" id="state">
							<option value="AL">Alabama</option>
							<option value="AK">Alaska</option>
							<option value="AZ">Arizona</option>
							<option value="AR">Arkansas</option>
							<option value="CA">California</option>
							<option value="CO">Colorado</option>
							<option value="CT">Connecticut</option>
							<option value="DE">Delaware</option>
							<option value="DC">District Of Columbia</option>
							<option value="FL">Florida</option>
							<option value="GA">Georgia</option>
							<option value="HI">Hawaii</option>
							<option value="ID">Idaho</option>
							<option value="IL">Illinois</option>
							<option value="IN">Indiana</option>
							<option value="IA">Iowa</option>
							<option value="KS">Kansas</option>
							<option value="KY">Kentucky</option>
							<option value="LA">Louisiana</option>
							<option value="ME">Maine</option>
							<option value="MD">Maryland</option>
							<option value="MA">Massachusetts</option>
							<option value="MI">Michigan</option>
							<option value="MN">Minnesota</option>
							<option value="MS">Mississippi</option>
							<option value="MO">Missouri</option>
							<option value="MT">Montana</option>
							<option value="NE">Nebraska</option>
							<option value="NV">Nevada</option>
							<option value="NH">New Hampshire</option>
							<option value="NJ">New Jersey</option>
							<option value="NM">New Mexico</option>
							<option value="NY">New York</option>
							<option value="NC">North Carolina</option>
							<option value="ND">North Dakota</option>
							<option value="OH">Ohio</option>
							<option value="OK">Oklahoma</option>
							<option value="OR">Oregon</option>
							<option value="PA">Pennsylvania</option>
							<option value="RI">Rhode Island</option>
							<option value="SC">South Carolina</option>
							<option value="SD">South Dakota</option>
							<option value="TN">Tennessee</option>
							<option value="TX">Texas</option>
							<option value="UT">Utah</option>
							<option value="VT">Vermont</option>
							<option value="VA">Virginia</option>
							<option value="WA">Washington</option>
							<option value="WV">West Virginia</option>
							<option value="WI">Wisconsin</option>
							<option value="WY">Wyoming</option>
						</select>
					</div>
					<br> <br> <br>
					<div class="select is-success">
						<label class="label">Select Your Favorite Park:</label> <select
							name="parkCode" id="parkCode" placeholder="Park Name">
							<option value="CVNP">Cuyahoga Valley National Park</option>
							<option value="ENP">Everglades National Park</option>
							<option value="GCNP">Grand Canyon National Park</option>
							<option value="GNP">Glacier National Park</option>
							<option value="GSMNP">Great Smoky Mountains National Park</option>
							<option value="GTNP">Grand Teton National Park</option>
							<option value="MRNP">Mount Rainier Natioanl Park</option>
							<option value="RMNP">Rocky Mountain National Park</option>
							<option value="YNP">Yellowstone National Park</option>
							<option value="YNP2">Yosemite National Park</option>
						</select>
					</div>

					<!-- local date<input type = "date" name = "date" value = new > -->


					<br> <br><br> <input class="button is-medium is-success is-rounded" type="submit"
						value="Submit Review" />

				</form:form>
			</div>
		</div>
	</div>




<%@include file="common/footer.jsp"%>