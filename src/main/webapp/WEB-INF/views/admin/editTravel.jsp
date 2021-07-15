<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<!--'<c:url value=""/>' -->

<%@include file="../dynamic/head.jspf" %>

<body>

<%@include file="../dynamic/nav.jspf" %>

<!-- Content -->

<div class="hero-wrap js-fullheight" style="background-image: url('/resources/images/bg_2.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
             data-scrollax-parent="true">
            <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
                <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span
                        class="mr-2"><a
                        href="index.html">Admin</a></span>
                <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Edycja wycieczki</h1>
            </div>
        </div>
    </div>
</div>


<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <form name="addTravel" method="post" action='<c:url value="/editTravel/${travel.id}"/>'>
        <div class="row">

                <div class="col">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Edytuj wycieczke</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">

                            <div class="form-group">

                                <input name="name" type="text" class="form-control" id="tripName"
                                value="${travel.name}">
                            </div>

                            <hr/>
                            <h4>Miejsce wyjazdu:</h4>

                            <div class="row">

                                <div class="form-group col-md-4">
                                    <label for="chooseContinentFrom">Wybierz kontynent:</label>
                                    <select class="form-control" id="chooseContinentFrom">
                                        <option value="">Choose continent</option>
                                    </select>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="chooseCountryFrom">Wybierz państwo:</label>

                                    <select class="form-control" id="chooseCountryFrom">
                                        <option value="">Choose country</option>
                                    </select>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="chooseCityFrom">Wybierz miasto:</label>
                                    <select name="fromAirport" class="form-control" id="chooseCityFrom">
                                        <option value="${travel.fromAirport.id}">${travel.fromAirport.cityEntity.name}</option>
                                        <c:forEach items="${airports}" var="airport">
                                            <option value="${airport.id}">${airport.cityEntity.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>

                            <hr/>
                            <h4>Choose destination:</h4>

                            <div class="row">

                                <div class="form-group col-md-4">
                                    <label for="chooseContinentDestination">Wybierz kontynent:</label>
                                    <select class="form-control" id="chooseContinentDestination">
                                        <option value="">Choose continent</option>
                                    </select>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="chooseCountryDestination">Wybierz państwo:</label>
                                    <select class="form-control" id="chooseCountryDestination">
                                        <option value="">Choose country</option>
                                    </select>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="chooseCityDestination">Wybierz miasto:</label>
                                    <select name="toAirport" class="form-control" id="chooseCityDestination">
                                        <option value="${travel.toAirport.id}">${travel.toAirport.cityEntity.name}</option>
                                        <c:forEach items="${airports}" var="airport">
                                            <option value="${airport.id}">${airport.cityEntity.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="chooseHotel">Wybierz hotel:</label>
                                <select name="hotelEntity" class="form-control" id="chooseHotel">
                                    <option value="${travel.hotelEntity.id}">${travel.hotelEntity.name}</option>
                                    <c:forEach items="${hotels}" var="hotel">
                                        <option value="${hotel.id}" >${hotel.name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <hr/>
                            <h4>Data:</h4>

                            <div class="row">

                                <div class="form-group col-md-6">
                                    <label for="dateOfDeparture">Wybierz datę wyjazdu:</label>
                                    <div class="input-group date" data-provide="datepicker" data-date-format="yyyy-mm-dd">
                                        <input name="fromDate" type="text" class="form-control" id="dateOfDeparture" value="${travel.fromDate}">
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-th"></span>
                                        </div>
                                    </div>

                                </div>

                                <div class="form-group col-md-6">
                                    <label for="dateOfReturn">Wybierz datę powrotu:</label>
                                    <div class="input-group date" data-provide="datepicker" data-date-format="yyyy-mm-dd">
                                        <input name="toDate" type="text" class="form-control" id="dateOfReturn" value="${travel.toDate}">
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-th"></span>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <div class="form-group">
                                <label for="howManyDays" class="col-form-label">
                                    <h6>Ilość dni:</h6>
                                </label>
                                <input name="days" type="text" class="form-control" id="howManyDays"
                                       value="${travel.days}">
                            </div>

                            <br>
                            <div class="row">
                                <div class="form-group col-md-2">
                                    <label class="form-group" for="chooseFoodType">Wybierz typ wyżywienia:</label>
                                </div>
                                <div class="form-group col-md-10">
                                    <select name="type" class="form-control" id="chooseFoodType">
                                        <option>${travel.type}</option>
                                        <option>BB</option>
                                        <option>HB</option>
                                        <option>FB</option>
                                        <option>AI</option>
                                    </select>
                                </div>
                            </div>


                            <h4>Cena:</h4>
                            <br>
                            <div class="row">

                                <div class="form-group col-md-6">
                                    <label for="adultPrice">Cena za dorosłego:</label>
                                    <input name="cost" type="text" class="form-control" id="adultPrice"
                                           value="${travel.cost}">
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="kidPrice">Cena za dziecko:</label>
                                    <input name="costForChild" type="text" class="form-control" id="kidPrice"
                                           value="${travel.costForChild}">
                                </div>
                            </div>

                            <hr/>
                            <div class="row">
                                <div class="col-md-3">
                                    <h4>Czy promowana:</h4>
                                </div>
                                <div class="form-check col-md-3">
                                    <input class="form-check-input" type="radio" name="promoted" id="isPromoted"
                                           value="2" <c:if test="${travel.promoted eq '2'}">checked</c:if>>
                                    <label class="form-check-label" for="isPromoted">
                                        Tak
                                    </label></div>
                                <div class="form-check col-md-3">
                                    <input class="form-check-input" type="radio" name="promoted" id="isNotPromoted"
                                           value="1" <c:if test="${travel.promoted eq '1'}">checked</c:if>>
                                    <label class="form-check-label" for="isNotPromoted">
                                        Nie
                                    </label>
                                </div>
                            </div>


                            <hr/>
                            <h4>Ilość miejsc:</h4>

                            <div class="row">

                                <div class="form-group col-md-6">
                                    <label for="adultRoom">Dla dorosłych:</label>
                                    <input name="maxAdult" type="text" class="form-control" id="adultRoom"
                                          value="${travel.maxAdult}" >
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="kidRoom">Dla dzieci:</label>
                                    <input name="maxChild" type="text" class="form-control" id="kidRoom"
                                           value="${travel.maxChild}" }>
                                </div>
                            </div>

                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Zapisz zmieny</button>
                            </div>

                        </div>
                    </div>
                </div>

        </div>
        </form>
    </div>
</section>

<!-- Content End -->


</script>
<%@include file="../dynamic/footer.jspf" %>

<%@include file="../dynamic/js.jspf" %>

</body>

</html>