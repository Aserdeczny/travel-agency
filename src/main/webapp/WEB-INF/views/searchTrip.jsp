<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<%@ page contentType="text/html; charset=UTF-8" %>

<!--'<c:url value=""/>' -->

<%@include file="dynamic/head.jspf"%>

<body>

<%@include file="dynamic/nav.jspf"%>

	<div class="hero-wrap js-fullheight" style="background-image: url(<c:url value="/resources/images/bg_5.jpg"/>)">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
					<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Wyszukaj
						wycieczkę</h1>
				</div>
			</div>
		</div>
	</div>


	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row">
				<div class="col sidebar">
					<div class="sidebar-wrap bg-light ftco-animate">
						<h3 class="heading mb-4">Znajdź wycieczkę</h3>
						<form action="#">
							<div class="fields">

								<!-- Daty -->
								<div class="form-group">
									<input type="text" id="checkin_date" class="form-control" placeholder="Data od">
								</div>
								<div class="form-group">
									<input type="text" id="checkin_date" class="form-control" placeholder="Data do">
								</div>

								<!-- Cena - zakres -->
								<div class="form-group">
									<label for="exampleFormControlSelect1">Wybierz zakres cenowy</label>
									<div class="range-slider">
										<span>
											<input type="range" value="500" min="0" max="50000" step="100"
												oninput="this.nextElementSibling.value = this.value">
											<output id="chooseMinPrice" type="number" min="0" max="120000">500</output>
											-
											<input type="range" value="10000" min="0" max="50000" step="100"
												oninput="this.nextElementSibling.value = this.value">
											<output id="chooseMaxPrice" type="number" min="0"
												max="120000">10000</output>
										</span>
										</svg>
									</div>
								</div>

								<!-- Skąd -->
								<div class="form-group">
									<div class="select-wrap one-third">
										<div class="icon"><span class="ion-ios-arrow-down"></span></div>
										<label for="exampleFormControlSelect1">Wybierz miejsce wyjazdu -> lotnisko
										</label>
										<select name="" id="airportFrom" class="form-control"
											placeholder="Wybierz lotnisko">
											<option value="">Opcje</option>
										</select>
									</div>
								</div>

								<!-- Dokąd -->
								<div class="form-group">
									<div class="select-wrap one-third">
										<div class="icon"><span class="ion-ios-arrow-down"></span></div>
										<label for="exampleFormControlSelect1">Wybierz państwo</label>
										<select name="" id="chooseCountry" class="form-control"
											placeholder="WYbierz państwo">
											<option value="">Opcje</optiosn>
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="select-wrap one-third">
										<div class="icon"><span class="ion-ios-arrow-down"></span></div>
										<label for="exampleFormControlSelect1">Wybierz miasto</label>
										<select name="" id="chooseCity" class="form-control"
											placeholder="Wybierz miasto">
											<option value="">Opcje</option>
										</select>
									</div>
								</div>

								<!-- Ilość osób: dorośli i dzieci razem? -->
								<label for="customRange3" class="form-label">Wybierz ilość osób</label>
								<input type="range" value="4" class="form-range" min="1" max="20" step="1"
									id="chooseHowManyPeople" oninput="this.nextElementSibling.value = this.value">
								<output>4</output>

								<!-- Typ wyżywienia -->
								<div class="form-group">
									<div class="select-wrap one-third">
										<div class="icon"><span class="ion-ios-arrow-down"></span></div>
										<label for="exampleFormControlSelect1">Wybierz typ wyżywienia </label>
										<select name="" id="typeOfFooding" class="form-control"
											placeholder="Wybierz typ wyżywienia">
											<option value="">Opcje</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<input type="submit" value="Wyszukaj" class="btn btn-primary py-3 px-5">
								</div>
							</div>
						</form>
					</div>
				</div> <!-- .col-md-8 -->
			</div>
		</div>
	</section> <!-- .section -->

<%@include file="dynamic/footer.jspf"%>

<%@include file="dynamic/js.jspf"%>

</body>

</html>