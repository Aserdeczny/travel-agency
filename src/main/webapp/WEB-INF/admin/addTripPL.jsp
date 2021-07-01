<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date" xmlns:jsp="http://java.sun.com/JSP/Page"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<!--'<c:url value=""/>' -->


<!-- DO WYCIĘCIA: HEAD, NAV -->

<!DOCTYPE html>
<html lang="en">

<head>
  <title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

  <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
  <link rel="stylesheet" href="css/animate.css">

  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">

  <link rel="stylesheet" href="css/aos.css">

  <link rel="stylesheet" href="css/ionicons.min.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="css/jquery.timepicker.css">


  <link rel="stylesheet" href="css/flaticon.css">
  <link rel="stylesheet" href="css/icomoon.css">
  <link rel="stylesheet" href="css/style.css">
</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html">dirEngine.</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
          <li class="nav-item"><a href="tour.html" class="nav-link">Tour</a></li>
          <li class="nav-item"><a href="hotel.html" class="nav-link">Hotels</a></li>
          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
          <li class="nav-item active"><a href="contact.html" class="nav-link">Contact</a></li>
          <li class="nav-item cta"><a href="contact.html" class="nav-link"><span>Add listing</span></a></li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- END nav -->


  <!-- Content -->

  <div class="hero-wrap js-fullheight" style="background-image: url('/resources/css/images/bg_2.jpg');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
        data-scrollax-parent="true">
        <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
          <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a
                href="index.html">Admin</a></span>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Dodaj wycieczkę</h1>
        </div>
      </div>
    </div>
  </div>



  <section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
      <div class="row">

        <div class="col">
          <div class="x_panel">
            <div class="x_title">
              <h2>Dodaj nową wycieczkę</h2>
              <div class="clearfix"></div>
            </div>
            <div class="x_content">

              <div class="form-group">
                <label for="tripName">Nazwa wycieczki:</label>
                <input type="text" class="form-control" id="tripName" placeholder="Wpisz...">
              </div>

              <hr />
              <h4>Miejsce wyjazdu:</h4>

              <div class="row">

                <div class="form-group col-md-4">
                  <label for="chooseContinentFrom">Wybierz kontynent:</label>
                  <select class="form-control" id="chooseContinentFrom">
                    <option>Opcje...</option>
                  </select>
                </div>

                <div class="form-group col-md-4">
                  <label for="chooseCountryFrom">Wybierz państwo:</label>
                  <select class="form-control" id="chooseCountryFrom">
                    <option>Opcje...</option>
                  </select>
                </div>

                <div class="form-group col-md-4">
                  <label for="chooseCityFrom">Wybierz miasto:</label>
                  <select class="form-control" id="chooseCityFrom">
                    <option>Opcje...</option>
                  </select>
                </div>
              </div>

              <hr />
              <h4>Choose destination:</h4>

              <div class="row">

                <div class="form-group col-md-4">
                  <label for="chooseContinentDestination">Wybierz kontynent:</label>
                  <select class="form-control" id="chooseContinentDestination">
                    <option>Opcje...</option>
                  </select>
                </div>

                <div class="form-group col-md-4">
                  <label for="chooseCountryDestination">Wybierz państwo:</label>
                  <select class="form-control" id="chooseCountryDestination">
                    <option>Opcje...</option>
                  </select>
                </div>

                <div class="form-group col-md-4">
                  <label for="chooseCityDestination">Wybierz miasto:</label>
                  <select class="form-control" id="chooseCityDestination">
                    <option>Opcje...</option>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label for="chooseHotel">Wybierz hotel:</label>
                <select class="form-control" id="chooseHotel">
                  <option>Opcje...</option>
                </select>
              </div>

              <hr />
              <h4>Data:</h4>

              <div class="row">

                <div class="form-group col-md-6">
                  <label for="dateOfDeparture">Wybierz datę wyjazdu:</label>
                  <div class="input-group date" data-provide="datepicker">
                    <input type="text" class="form-control" id="dateOfDeparture">
                    <div class="input-group-addon">
                      <span class="glyphicon glyphicon-th"></span>
                    </div>
                  </div>

                </div>

                <div class="form-group col-md-6">
                  <label for="dateOfReturn">Wybierz datę powrotu:</label>
                  <div class="input-group date" data-provide="datepicker">
                    <input type="text" class="form-control" id="dateOfReturn">
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
                <input type="text" class="form-control" id="howManyDays" placeholder="Wpisz...">
              </div>

              <br>
              <div class="row">
                <div class="form-group col-md-2">
                  <label class="form-group" for="chooseFoodType">Wybierz typ wyżywienia:</label>
                </div>
                <div class="form-group col-md-10">
                  <select class="form-control" id="chooseFoodType">
                    <option>Opcje...(BB, HB, FB, AI)</option>
                  </select>
                </div>
              </div>



              <h4>Cena:</h4>
              <br>
              <div class="row">

                <div class="form-group col-md-6">
                  <label for="adultPrice">Cena za dorosłego:</label>
                  <input type="text" class="form-control" id="adultPrice" placeholder="Wpisz...">
                </div>

                <div class="form-group col-md-6">
                  <label for="kidPrice">Cena za dziecko:</label>
                  <input type="text" class="form-control" id="kidPrice" placeholder="Wpisz...">
                </div>
              </div>

              <hr />
              <div class="row">
                <div class="col-md-3">
                  <h4>Czy promowana:</h4>
                </div>
                <div class="form-check col-md-3">
                  <input class="form-check-input" type="radio" name="isPromoted" id="isPromoted" value="option1"
                    checked>
                  <label class="form-check-label" for="isPromoted">
                    Tak
                  </label></div>
                <div class="form-check col-md-3">
                  <input class="form-check-input" type="radio" name="isNotPromoted" id="isNotPromoted" value="option1"
                    checked>
                  <label class="form-check-label" for="isNotPromoted">
                    Nie
                  </label>
                </div>
              </div>

              <hr />
              <h4>Ilość miejsc:</h4>

              <div class="row">

                <div class="form-group col-md-6">
                  <label for="adultRoom">Dla dorosłych:</label>
                  <input type="text" class="form-control" id="adultRoom" placeholder="Wpisz...">
                </div>

                <div class="form-group col-md-6">
                  <label for="kidRoom">Dla dzieci:</label>
                  <input type="text" class="form-control" id="kidRoom" placeholder="Wpisz...">
                </div>
              </div>

              <div class="col-md-12 text-center">
                <button type="submit" class="btn btn-primary btn-lg btn-block">Zapisz</button>
              </div>

            </div>
          </div>
        </div>



      </div>
    </div>
  </section>

  <!-- Content End -->



  <!-- DO WYCIĘCIA: FOOTER, SCRIPTS -->

  <footer class="ftco-footer ftco-bg-dark ftco-section">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md">
          <div class="ftco-footer-widget mb-4">
            <h2 class="ftco-heading-2">dirEngine</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the
              blind texts.</p>
            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
              <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
              <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
              <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
            </ul>
          </div>
        </div>
        <div class="col-md">
          <div class="ftco-footer-widget mb-4 ml-md-5">
            <h2 class="ftco-heading-2">Information</h2>
            <ul class="list-unstyled">
              <li><a href="#" class="py-2 d-block">About</a></li>
              <li><a href="#" class="py-2 d-block">Service</a></li>
              <li><a href="#" class="py-2 d-block">Terms and Conditions</a></li>
              <li><a href="#" class="py-2 d-block">Become a partner</a></li>
              <li><a href="#" class="py-2 d-block">Best Price Guarantee</a></li>
              <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md">
          <div class="ftco-footer-widget mb-4">
            <h2 class="ftco-heading-2">Customer Support</h2>
            <ul class="list-unstyled">
              <li><a href="#" class="py-2 d-block">FAQ</a></li>
              <li><a href="#" class="py-2 d-block">Payment Option</a></li>
              <li><a href="#" class="py-2 d-block">Booking Tips</a></li>
              <li><a href="#" class="py-2 d-block">How it works</a></li>
              <li><a href="#" class="py-2 d-block">Contact Us</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md">
          <div class="ftco-footer-widget mb-4">
            <h2 class="ftco-heading-2">Have a Questions?</h2>
            <div class="block-23 mb-3">
              <ul>
                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San
                    Francisco, California, USA</span></li>
                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                <li><a href="#"><span class="icon icon-envelope"></span><span
                      class="text">info@yourdomain.com</span></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 text-center">

          <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>
              document.write(new Date().getFullYear());
            </script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by
            <a href="https://colorlib.com" target="_blank">Colorlib</a>.Downloaded from <a href="https://themeslab.org/"
              target="_blank">Themeslab</a>.Downloaded from <a href="https://themeslab.org/"
              target="_blank">Themeslab</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          </p>
        </div>
      </div>
    </div>
  </footer>



  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
      <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
        stroke="#F96D00" /></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false">
  </script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>

</body>

</html>