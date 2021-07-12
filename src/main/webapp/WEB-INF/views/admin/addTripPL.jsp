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
                <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Dodaj
                    wycieczkę</h1>
            </div>
        </div>
    </div>
</div>


<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <form name="addTravel" method="post" action='<c:url value="/addNewTrip"/>'>
        <div class="row">

                <div class="col">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Dodaj nową wycieczkę</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">

                            <div class="form-group">

                                <input name="name" type="text" class="form-control" id="tripName"
                                       placeholder="Wpisz...">
                            </div>

                            <hr/>
                            <h4>Miejsce wyjazdu:</h4>

                            <div class="row">

                                <div class="form-group col-md-4">
                                    <label for="chooseContinentFrom">Wybierz kontynent:</label>
                                    <select class="form-control" id="chooseContinentFrom">
                                        <option value="">Choose continent</option>
                                        <c:forEach items="${continentList}" var="continent">
                                            <option value="${continent.id}">${continent.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="chooseCountryFrom">Wybierz państwo:</label>

                                    <select class="form-control" id="chooseCountryFrom">
                                        <option value="">Choose country</option>
                                        <c:forEach items="${countryList}" var="country">
                                            <option value="${country.id}">${country.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="chooseCityFrom">Wybierz miasto:</label>
                                    <select name="fromAirport" class="form-control" id="chooseCityFrom">
                                        <option value="">Choose city</option>
                                        <c:forEach items="${airportList}" var="airport">
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
                                        <c:forEach items="${continentList}" var="continent">
                                            <option value="${continent.id}">${continent.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="chooseCountryDestination">Wybierz państwo:</label>
                                    <select class="form-control" id="chooseCountryDestination">
                                        <option value="">Choose country</option>
                                        <c:forEach items="${countryList}" var="country">
                                            <option value="${country.id}">${country.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="chooseCityDestination">Wybierz miasto:</label>
                                    <select name="toAirport" class="form-control" id="chooseCityDestination">
                                        <option value="">Choose city</option>
                                        <c:forEach items="${airportList}" var="airport">
                                            <option value="${airport.id}">${airport.cityEntity.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="chooseHotel">Wybierz hotel:</label>
                                <select name="hotelEntity" class="form-control" id="chooseHotel">
                                    <option value="">Choose hotel</option>
                                    <c:forEach items="${hotelList}" var="hotel">
                                        <option value="${hotel.id}" >${hotel.name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <hr/>
                            <h4>Data:</h4>

                            <div class="row">

                                <div class="form-group col-md-6">
                                    <label for="dateOfDeparture">Wybierz datę wyjazdu:</label>
                                    <div class="input-group date" data-provide="datepicker">
                                        <input name="fromDate" type="text" class="form-control" id="dateOfDeparture">
                                        <div class="input-group-addon">
                                            <span class="glyphicon glyphicon-th"></span>
                                        </div>
                                    </div>

                                </div>

                                <div class="form-group col-md-6">
                                    <label for="dateOfReturn">Wybierz datę powrotu:</label>
                                    <div class="input-group date" data-provide="datepicker">
                                        <input name="toDate" type="text" class="form-control" id="dateOfReturn">
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
                                       placeholder="Wpisz...">
                            </div>

                            <br>
                            <div class="row">
                                <div class="form-group col-md-2">
                                    <label class="form-group" for="chooseFoodType">Wybierz typ wyżywienia:</label>
                                </div>
                                <div class="form-group col-md-10">
                                    <select name="type" class="form-control" id="chooseFoodType">
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
                                           placeholder="Wpisz...">
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="kidPrice">Cena za dziecko:</label>
                                    <input name="costForChild" type="text" class="form-control" id="kidPrice"
                                           placeholder="Wpisz...">
                                </div>
                            </div>

                            <hr/>
                            <div class="row">
                                <div class="col-md-3">
                                    <h4>Czy promowana:</h4>
                                </div>
                                <div class="form-check col-md-3">
                                    <input class="form-check-input" type="radio" name="promoted" id="isPromoted"
                                           value="2">
                                    <label class="form-check-label" for="isPromoted">
                                        Tak
                                    </label></div>
                                <div class="form-check col-md-3">
                                    <input class="form-check-input" type="radio" name="promoted" id="isNotPromoted"
                                           value="1" checked>
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
                                           placeholder="Wpisz...">
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="kidRoom">Dla dzieci:</label>
                                    <input name="maxChild" type="text" class="form-control" id="kidRoom"
                                           placeholder="Wpisz...">
                                </div>
                            </div>

                            <div class="col-md-12 text-center">
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Zapisz</button>
                            </div>

                        </div>
                    </div>
                </div>



        </div>
        </form>
    </div>
</section>

<!-- Content End -->


<%@include file="../dynamic/footer.jspf" %>

<%@include file="../dynamic/js.jspf" %>

</body>

</html>