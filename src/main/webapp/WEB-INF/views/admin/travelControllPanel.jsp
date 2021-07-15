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
                <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Modyfikacja Wycieczek</h1>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <c:forEach items="${travelList}" var="travel">
            <div class="row" id="travelRow">
                <div class="col-3" style="margin-bottom: 15px">
                    <img src='<c:url value="../resources/images/destination-3.jpg"/>' class="img-thumbnail" width="250"
                         height="250">
                </div>
                <div class="col-9">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">From</th>
                            <th scope="col">To</th>
                            <th scope="col">From date</th>
                            <th scope="col">To date</th>

                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">${travel.name}</th>
                            <td>${travel.fromAirport.name}</td>
                            <td>${travel.toAirport.name}</td>
                            <td>${travel.fromDate}</td>
                            <td>${travel.toDate}</td>

                        </tr>
                        </tbody>
                    </table>

                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th scope="col">Hotel</th>
                            <th scope="col">Type</th>
                            <th scope="col">Days</th>
                            <th scope="col">Max adults</th>
                            <th scope="col">Max children</th>
                            <th scope="col">Adult price</th>
                            <th scope="col">Children price</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">${travel.hotelEntity.name}</th>
                            <td>${travel.type}</td>
                            <td>${travel.days}</td>
                            <td>${travel.maxAdult}</td>
                            <td>${travel.maxChild}</td>
                            <td>${travel.cost}</td>
                            <td>${travel.costForChild}</td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="row">
                        <div class="col">
                            <c:if test="${travel.promoted eq '2'}">
                            <a><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-patch-check" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M10.354 6.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7 8.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                <path d="m10.273 2.513-.921-.944.715-.698.622.637.89-.011a2.89 2.89 0 0 1 2.924 2.924l-.01.89.636.622a2.89 2.89 0 0 1 0 4.134l-.637.622.011.89a2.89 2.89 0 0 1-2.924 2.924l-.89-.01-.622.636a2.89 2.89 0 0 1-4.134 0l-.622-.637-.89.011a2.89 2.89 0 0 1-2.924-2.924l.01-.89-.636-.622a2.89 2.89 0 0 1 0-4.134l.637-.622-.011-.89a2.89 2.89 0 0 1 2.924-2.924l.89.01.622-.636a2.89 2.89 0 0 1 4.134 0l-.715.698a1.89 1.89 0 0 0-2.704 0l-.92.944-1.32-.016a1.89 1.89 0 0 0-1.911 1.912l.016 1.318-.944.921a1.89 1.89 0 0 0 0 2.704l.944.92-.016 1.32a1.89 1.89 0 0 0 1.912 1.911l1.318-.016.921.944a1.89 1.89 0 0 0 2.704 0l.92-.944 1.32.016a1.89 1.89 0 0 0 1.911-1.912l-.016-1.318.944-.921a1.89 1.89 0 0 0 0-2.704l-.944-.92.016-1.32a1.89 1.89 0 0 0-1.912-1.911l-1.318.016z"/>
                            </svg></a></c:if>
                        </div>
                    <div class="col text-right"><a href='<c:url value="editTravel/${travel.id}"/>'>
                            <button type="submit" class="btn btn-warning"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                            </svg></button>
                    </a>
                    </div>
                    <div class="col text-right">
                        <form method="post" action='<c:url value="deleteTravel/${travel.id}"/>'>
                            <button type="submit" class="btn btn-danger"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-trash2" viewBox="0 0 16 16">
                                <path d="M14 3a.702.702 0 0 1-.037.225l-1.684 10.104A2 2 0 0 1 10.305 15H5.694a2 2 0 0 1-1.973-1.671L2.037 3.225A.703.703 0 0 1 2 3c0-1.105 2.686-2 6-2s6 .895 6 2zM3.215 4.207l1.493 8.957a1 1 0 0 0 .986.836h4.612a1 1 0 0 0 .986-.836l1.493-8.957C11.69 4.689 9.954 5 8 5c-1.954 0-3.69-.311-4.785-.793z"/>
                            </svg></button>
                        </form>
                    </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>

<!-- Content End -->


<%@include file="../dynamic/footer.jspf" %>

<%@include file="../dynamic/js.jspf" %>

</body>

</html>