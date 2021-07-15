<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<%@ page contentType="text/html; charset=UTF-8" %>

<!--'<c:url value=""/>' -->

<%@include file="dynamic/head.jspf"%>

<body>

<%@include file="dynamic/nav.jspf"%>

	<div class="hero-wrap js-fullheight" style="background-image: url(<c:url value="/resources/images/bg_1.jpg"/>)">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
				data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
					<h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>Odkrywaj
							<br></strong> niesamowite miejsca</h1>
					<p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Najlepsze hotele, niepowtarzalne
						historie, wakacje dla całej rodziny</p>
					<div class="block-17 my-4">
						<form action="" method="post" class="d-block d-flex">
							<div class="fields d-block d-flex">
								<div class="textfield-search one-third">
									<select name="" id="chooseContinent" class="form-control"
										placeholder="Wybierz kontynent:">
										<option value="">Opcje...</option>
									</select>
								</div>
								<div class="select-wrap one-third">
									<div class="icon"><span class="ion-ios-arrow-down"></span></div>
									<select name="" id="" class="form-control" placeholder="WYbierz kraj:">
										<option value="">Opcje...</option>
									</select>
								</div>
							</div>
							<input type="submit" class="search-submit btn btn-primary" value="Wyszukaj">
						</form>
					</div>
					<p>Lub wybierz jeden z najpopularniejszych kierunków:</p>
					<p class="browse d-md-flex">
						<c:forEach items="${listOfContinents}" var="continent">
						<span class="d-flex justify-content-md-center align-items-md-center"><a href='<c:url value="/travels/${continent.name}"/> '>
								<img
									src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE4LjEuMSwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgMTkuMTgzIDE5LjE4MyIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgMTkuMTgzIDE5LjE4MzsiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KPGc+DQoJPGc+DQoJCTxjaXJjbGUgY3g9IjkuNTkiIGN5PSIwLjY0NSIgcj0iMC42NDUiLz4NCgkJPGNpcmNsZSBjeD0iOS41OSIgY3k9IjE2Ljc1MyIgcj0iMC42NDQiLz4NCgkJPGNpcmNsZSBjeD0iMS41MzciIGN5PSI4LjY5OCIgcj0iMC42NDQiLz4NCgkJPGNpcmNsZSBjeD0iMTcuNjQ1IiBjeT0iOC42OTkiIHI9IjAuNjQ1Ii8+DQoJCTxjaXJjbGUgY3g9IjIuMjE3IiBjeT0iNS40NTkiIHI9IjAuNjQ1Ii8+DQoJCTxjaXJjbGUgY3g9IjE2Ljk2NCIgY3k9IjExLjk0IiByPSIwLjY0MyIvPg0KCQk8Y2lyY2xlIGN4PSIzLjg4NiIgY3k9IjMuMDE0IiByPSIwLjY0NSIvPg0KCQk8Y2lyY2xlIGN4PSIxNS4yOTciIGN5PSIxNC4zODMiIHI9IjAuNjQ0Ii8+DQoJCTxjaXJjbGUgY3g9IjYuMzk5IiBjeT0iMS4zMDMiIHI9IjAuNjQzIi8+DQoJCTxjaXJjbGUgY3g9IjEyLjc4MiIgY3k9IjE2LjA5NCIgcj0iMC42NDUiLz4NCgkJPGNpcmNsZSBjeD0iMTIuODYzIiBjeT0iMS4zMzkiIHI9IjAuNjQ0Ii8+DQoJCTxjaXJjbGUgY3g9IjYuMzIiIGN5PSIxNi4wNTgiIHI9IjAuNjQ1Ii8+DQoJCTxjaXJjbGUgY3g9IjE1LjIxMiIgY3k9IjIuOTMiIHI9IjAuNjQ1Ii8+DQoJCTxjaXJjbGUgY3g9IjMuOTcyIiBjeT0iMTQuNDY4IiByPSIwLjY0NSIvPg0KCQk8Y2lyY2xlIGN4PSIxNi45NSIgY3k9IjUuNDI0IiByPSIwLjY0NCIvPg0KCQk8Y2lyY2xlIGN4PSIyLjIzNSIgY3k9IjExLjk3MyIgcj0iMC42NDUiLz4NCgkJPHBhdGggZD0iTTExLjIxOSwxNS4zOThjMS4yMDItMC4yOTcsMi4zMDctMC45MDgsMy4yMDQtMS44MDZjMi42ODItMi42ODEsMi42ODItNy4wNCwwLTkuNzJDMTMuMTI4LDIuNTc1LDExLjQwMiwxLjg2LDkuNTY1LDEuODYNCgkJCWMtMS44MzUsMC0zLjU2MiwwLjcxNS00Ljg1OSwyLjAxM2MtMS4yOTksMS4yOTgtMi4wMTUsMy4wMjQtMi4wMTUsNC44NnMwLjcxNSwzLjU2MiwyLjAxNSw0Ljg1OWMwLjg5NiwwLjg5NywyLDEuNTA3LDMuMiwxLjgwNg0KCQkJbC0wLjU4NCwyLjc4NWgtMy4wNXYxaDEwLjYxOHYtMWgtMy4wODVMMTEuMjE5LDE1LjM5OHogTTExLjA0OCwxNC41OGwtMC4xMjMtMC41ODVjMC4yNTQtMC4wNjMsMC41MDYtMC4xMzIsMC43NDYtMC4yMzENCgkJCWwwLjI0MSwwLjU0N0MxMS42MzUsMTQuNDI3LDExLjM0LDE0LjUwNSwxMS4wNDgsMTQuNTh6IE0xMC4wNzcsOC44NDZjMC0wLjAwMywwLjAwMS0wLjAwNiwwLjAwMS0wLjAxaDQuNTIyDQoJCQljLTAuMDAzLDAuMTM4LTAuMDA5LDAuMjc1LTAuMDIxLDAuNDA5Yy0wLjAwMiwwLjAyMi0wLjAwNywwLjA0NC0wLjAxMSwwLjA2NmMtMC4wMTgsMC4xNDgtMC4wMzcsMC4yOTMtMC4wNjYsMC40MzcNCgkJCWMtMC4wMDEsMC4wMDQtMC4wMDIsMC4wMDctMC4wMDMsMC4wMWMtMC4wNjQsMC4zMTYtMC4xNiwwLjYyMy0wLjI4MywwLjkxNUwxMC4wNzcsOC44NDZ6IE0xNC4xMjgsMTAuODU3DQoJCQljLTAuMjM1LDAuNTA0LTAuNTQ5LDAuOTYzLTAuOTMxLDEuMzU5TDEwLjAyOCw5LjA1TDE0LjEyOCwxMC44NTd6IE0xMC4wNzksOC42MjljMC0wLjAwNC0wLjAwMS0wLjAwNy0wLjAwMS0wLjAxMWw0LjEzOC0xLjgyNA0KCQkJYzAuMTE4LDAuMjgyLDAuMjEsMC41NzcsMC4yNzUsMC44ODNjMC4wMDMsMC4wMTYsMC4wMDgsMC4wMjksMC4wMTEsMC4wNDRjMC4wMjgsMC4xMzQsMC4wNDYsMC4yNywwLjA2MywwLjQwNw0KCQkJYzAuMDA0LDAuMDMxLDAuMDEyLDAuMDYzLDAuMDE1LDAuMDk2YzAuMDEzLDAuMTMzLDAuMDE5LDAuMjcsMC4wMjEsMC40MDZoLTQuNTIyVjguNjI5eiBNMTAuMDI4LDguNDE1bDMuMTY5LTMuMTY5DQoJCQljMC4zODIsMC4zOTgsMC42OTUsMC44NTcsMC45MzEsMS4zNjFMMTAuMDI4LDguNDE1eiBNOS44NzgsOC4yNzJsMS44MS00LjEwM2MwLjUwNSwwLjIzNiwwLjk2MywwLjU1MSwxLjM2MSwwLjkzMkw5Ljg3OCw4LjI3MnoNCgkJCSBNMTMuMDUxLDEyLjM2NWMtMC4zOTcsMC4zOC0wLjg1NiwwLjY5NS0xLjM2MSwwLjkzMUw5Ljk0Nyw5LjM0NUw5LjkyNiw5LjIzOUwxMy4wNTEsMTIuMzY1eiBNMTEuNTAzLDEzLjM4NA0KCQkJYy0wLjIxMiwwLjA4OS0wLjQzOCwwLjE0Ni0wLjY2NCwwLjIwNmwtMC42ODQtMy4yNjNMMTEuNTAzLDEzLjM4NHogTTEyLjA5NywxNC4yMjFsLTAuMjQtMC41NDYNCgkJCWMwLjU0MS0wLjI1MSwxLjA0NC0wLjU5MywxLjQ4NS0xLjAxOGwwLjQyMiwwLjQyMkMxMy4yNjksMTMuNTYsMTIuNzA1LDEzLjkzOSwxMi4wOTcsMTQuMjIxeiBNMTMuOTEsMTIuOTMzbC0wLjQyMy0wLjQyMg0KCQkJYzAuNDI3LTAuNDQxLDAuNzY3LTAuOTQzLDEuMDE5LTEuNDg3bDAuNTQzLDAuMjRDMTQuNzczLDExLjg2NiwxNC4zOTYsMTIuNDMyLDEzLjkxLDEyLjkzM3ogTTE1LjEzNiwxMS4wNzZsLTAuNTQtMC4yMzgNCgkJCWMwLjEzNS0wLjMyNCwwLjIzNi0wLjY2MSwwLjMwOC0xLjAwN2MwLDAsMCwwLDAtMC4wMDFjMC4wMzItMC4xNTcsMC4wNTUtMC4zMTYsMC4wNzQtMC40NzVjMC4wMDItMC4wMjMsMC4wMDctMC4wNDcsMC4wMDktMC4wNjkNCgkJCWMwLjAxNi0wLjE0OSwwLjAyMS0wLjMsMC4wMjMtMC40NTFoMC41OTNDMTUuNTkzLDkuNiwxNS40MzYsMTAuMzYxLDE1LjEzNiwxMS4wNzZ6IE0xNS42MDQsOC42MjloLTAuNTkzDQoJCQljLTAuMDAzLTAuMTUtMC4wMDktMC4zLTAuMDIzLTAuNDQ5Yy0wLjAwMy0wLjAzMS0wLjAwOS0wLjA2Mi0wLjAxMy0wLjA5MmMtMC4wMi0wLjE1MS0wLjAzOS0wLjMwMi0wLjA2OS0wLjQ1MQ0KCQkJYy0wLjAwMy0wLjAxLTAuMDA2LTAuMDItMC4wMDgtMC4wM2MtMC4wNy0wLjMzNy0wLjE3Mi0wLjY2Ni0wLjMwNS0wLjk4MWwwLjU0My0wLjIzOUMxNS40MzYsNy4xMDUsMTUuNTkzLDcuODY0LDE1LjYwNCw4LjYyOXoNCgkJCSBNMTUuMDQ5LDYuMjAxTDE0LjUwNyw2LjQ0Yy0wLjI1Mi0wLjU0Mi0wLjU5NC0xLjA0NC0xLjAyLTEuNDg2bDAuNDIzLTAuNDIyQzE0LjM5NSw1LjAzNCwxNC43NzMsNS42LDE1LjA0OSw2LjIwMXoNCgkJCSBNMTMuNzY0LDQuMzg2bC0wLjQyMiwwLjQyMmMtMC40NDItMC40MjYtMC45NDQtMC43NjctMS40ODctMS4wMmwwLjIzOS0wLjU0NkMxMi43MDUsMy41MjQsMTMuMjY5LDMuOTA3LDEzLjc2NCw0LjM4NnoNCgkJCSBNOS42NjcsMi42ODljMC43ODIsMC4wMTQsMS41NDEsMC4xNzEsMi4yNDIsMC40NjZMMTEuNjcsMy43MDFjLTAuMzEzLTAuMTMyLTAuNjQtMC4yMzEtMC45NzYtMC4zMDENCgkJCWMtMC4wMTItMC4wMDMtMC4wMjItMC4wMDctMC4wMzUtMC4wMDljLTAuMTQ2LTAuMDMtMC4yOTQtMC4wNS0wLjQ0NC0wLjA2OGMtMC4wMzMtMC4wMDQtMC4wNjUtMC4wMTItMC4wOTktMC4wMTUNCgkJCWMtMC4xNS0wLjAxNi0wLjMwMS0wLjAyMi0wLjQ1LTAuMDI0TDkuNjY3LDIuNjg5TDkuNjY3LDIuNjg5eiBNOS42NjcsMy42OThDOS44MDUsMy43LDkuOTQsMy43MDMsMTAuMDc0LDMuNzE5DQoJCQljMC4wMzQsMC4wMDMsMC4wNjQsMC4wMTEsMC4xMDEsMC4wMTZjMC4xMzUsMC4wMTYsMC4yNywwLjAzNCwwLjQwMiwwLjA2MWMwLjAxMiwwLjAwMiwwLjAyNCwwLjAwNywwLjAzOSwwLjAxDQoJCQljMC4zMDcsMC4wNjUsMC42MDMsMC4xNTgsMC44ODUsMC4yNzdMOS42NzcsOC4yMkM5LjY3NCw4LjIxOSw5LjY3LDguMjE4LDkuNjY3LDguMjE4VjMuNjk4eiBNOS42NjcsMTAuNDU3bDAuNjc5LDMuMjMzDQoJCQljLTAuMjI0LDAuMDM2LTAuNDQ3LDAuMDczLTAuNjc5LDAuMDc3VjEwLjQ1N3ogTTkuNjY3LDE0LjE4YzAuMjYtMC4wMDQsMC41MTMtMC4wNDYsMC43NjQtMC4wODVsMC4xMjIsMC41ODQNCgkJCWMtMC4yOTEsMC4wNDctMC41ODUsMC4wOTQtMC44ODYsMC4wOThWMTQuMTh6IE05LjQ2LDIuNjg5djAuNTk2QzkuMzExLDMuMjg3LDkuMTYsMy4yOTMsOS4wMSwzLjMwOA0KCQkJQzguOTksMy4zMTEsOC45NjksMy4zMTUsOC45NDgsMy4zMTdDOC40MzMsMy4zNzUsNy45MywzLjUwMiw3LjQ2LDMuNzAxTDcuMjE4LDMuMTU2QzcuOTIsMi44NjIsOC42NzcsMi43MDIsOS40NiwyLjY4OXoNCgkJCSBNOS4xMDEsOC40MTVsLTQuMS0xLjgwN2MwLjIzNi0wLjUwNSwwLjU1Mi0wLjk2MywwLjkzMS0xLjM2MUw5LjEwMSw4LjQxNXogTTYuMDc4LDUuMTAxQzYuNDc2LDQuNzIsNi45MzUsNC40MDUsNy40NCw0LjE2OQ0KCQkJbDEuODA5LDQuMUw2LjA3OCw1LjEwMXogTTkuMDUyLDguNjJDOS4wNTEsOC42MjMsOS4wNTEsOC42MjcsOS4wNTEsOC42M2gtNC41MkM0LjUzMiw4LjQ5Myw0LjUzNiw4LjM1Niw0LjU1LDguMjIxDQoJCQljMC4wMDItMC4wMjMsMC4wMDgtMC4wNDQsMC4wMTEtMC4wNjdjMC4wNTUtMC40NzYsMC4xNzMtMC45MzQsMC4zNTItMS4zNkw5LjA1Miw4LjYyeiBNOS4wNTEsOC44MzUNCgkJCWMwLDAuMDA0LDAuMDAxLDAuMDA3LDAuMDAxLDAuMDFsLTQuMTM5LDEuODI2Yy0wLjEyMS0wLjI5Mi0wLjIxNi0wLjU5NC0wLjI4Mi0wLjkwOUM0LjYzLDkuNzU2LDQuNjI4LDkuNzUyLDQuNjI3LDkuNzQ3DQoJCQlDNC41OTgsOS42MDgsNC41NzksOS40NjksNC41NjQsOS4zMjhjLTAuMDAzLTAuMDI5LTAuMDEtMC4wNTctMC4wMTMtMC4wODZDNC41MzYsOS4xMDksNC41MzIsOC45NzIsNC41Myw4LjgzNUg5LjA1MXoNCgkJCSBNOS4xMDEsOS4wNWwtMy4xNjksMy4xNjhDNS41NTIsMTEuODIyLDUuMjM2LDExLjM2Myw1LDEwLjg1OUw5LjEwMSw5LjA1eiBNOS4xOTgsOS4yNDZMOS4xNzMsOS4zNjVsLTEuNzMyLDMuOTMxDQoJCQljLTAuNTA2LTAuMjM1LTAuOTYzLTAuNTUyLTEuMzYxLTAuOTMxTDkuMTk4LDkuMjQ2eiBNOC45NjgsMTAuMzM4bC0wLjY4MiwzLjI1Yy0wLjIyNi0wLjA1OS0wLjQ1MS0wLjExNi0wLjY2MS0wLjIwNA0KCQkJTDguOTY4LDEwLjMzOHogTTguNjk0LDE0LjA5NWMwLjI1MywwLjA0LDAuNTA3LDAuMDgxLDAuNzY2LDAuMDg2djAuNTk2Yy0wLjMwMi0wLjAwNC0wLjU5Ni0wLjA1Mi0wLjg4OS0wLjA5OUw4LjY5NCwxNC4wOTV6DQoJCQkgTTguNzc4LDEzLjY4OWwwLjY4Mi0zLjI0NXYzLjMyM0M5LjIyOCwxMy43NjMsOS4wMDMsMTMuNzI1LDguNzc4LDEzLjY4OXogTTkuNDUxLDguMjJMNy42MjYsNC4wODINCgkJCWMwLjQyOS0wLjE4LDAuODg3LTAuMywxLjM2Ny0wLjM1NGMwLjAyMS0wLjAwMiwwLjA0MS0wLjAwNiwwLjA2Mi0wLjAwOWMwLjEzMi0wLjAxNCwwLjI3LTAuMDE4LDAuNDA1LTAuMDIxdjQuNTINCgkJCUM5LjQ1Nyw4LjIxOSw5LjQ1NCw4LjIxOSw5LjQ1MSw4LjIyeiBNNy4wMzIsMy4yNDVMNy4yNzMsMy43OUM2LjczLDQuMDQyLDYuMjI5LDQuMzgyLDUuNzg2LDQuODFMNS4zNjUsNC4zODYNCgkJCUM1Ljg2LDMuOTA3LDYuNDIzLDMuNTI0LDcuMDMyLDMuMjQ1eiBNNS4yMTksNC41MzNMNS42NCw0Ljk1NUM1LjIxNCw1LjM5OCw0Ljg3Miw1Ljg5OCw0LjYyLDYuNDQxbC0wLjU0NC0wLjI0DQoJCQlDNC4zNTgsNS41OSw0LjczOSw1LjAyNyw1LjIxOSw0LjUzM3ogTTMuOTg5LDYuMzg2bDAuNTQ1LDAuMjRjLTAuMTM0LDAuMzIxLTAuMjM3LDAuNjU3LTAuMzA4LDFjMCwwLjAwMy0wLjAwMSwwLjAwNi0wLjAwMiwwLjAwOQ0KCQkJQzQuMTkyLDcuNzkxLDQuMTY5LDcuOTQ4LDQuMTUxLDguMTA2QzQuMTQ5LDguMTMsNC4xNDMsOC4xNTQsNC4xNDEsOC4xNzlDNC4xMjUsOC4zMjgsNC4xMiw4LjQ3Nyw0LjExOCw4LjYyOUgzLjUyMQ0KCQkJQzMuNTMzLDcuODQ2LDMuNjkyLDcuMDg4LDMuOTg5LDYuMzg2eiBNMy41MjEsOC44MzVoMC41OTZDNC4xMiw4Ljk4Niw0LjEyNCw5LjEzNiw0LjE0LDkuMjg1YzAuMDA0LDAuMDMsMC4wMSwwLjA2MSwwLjAxNSwwLjA5Mg0KCQkJYzAuMDE2LDAuMTUyLDAuMDM4LDAuMzAxLDAuMDY3LDAuNDUxYzAuMDAzLDAuMDEsMC4wMDYsMC4wMiwwLjAwNywwLjAyOGMwLjA3MiwwLjMzNywwLjE3MywwLjY2NywwLjMwNCwwLjk4MWwtMC41NDUsMC4yNA0KCQkJQzMuNjkyLDEwLjM3NSwzLjUzMyw5LjYxOSwzLjUyMSw4LjgzNXogTTQuMDc3LDExLjI2NmwwLjU0NS0wLjI0MWMwLjI1MiwwLjU0MywwLjU5MiwxLjA0NSwxLjAxOSwxLjQ4N2wtMC40MjIsMC40MjINCgkJCUM0LjczOSwxMi40MzgsNC4zNTgsMTEuODc1LDQuMDc3LDExLjI2NnogTTUuMzY1LDEzLjA3OWwwLjQyMS0wLjQyMmMwLjQ0MiwwLjQyNSwwLjk0MywwLjc2NiwxLjQ4NiwxLjAxN2wtMC4yNCwwLjU0Ng0KCQkJQzYuNDIzLDEzLjkzOSw1Ljg2LDEzLjU1OSw1LjM2NSwxMy4wNzl6IE03LjIxOCwxNC4zMDlsMC4yNDEtMC41NDdjMC4yMzgsMC4xMDEsMC40OTEsMC4xNjcsMC43NDIsMC4yM2wtMC4xMjMsMC41ODUNCgkJCUM3Ljc4NiwxNC41MDQsNy40OTQsMTQuNDI1LDcuMjE4LDE0LjMwOXogTTcuODM1LDE4LjE4M0w4LjM5OSwxNS41YzAuMzgxLDAuMDY1LDAuNzcxLDAuMTA1LDEuMTY3LDAuMTA1DQoJCQljMC4zOTQsMCwwLjc4MS0wLjA0LDEuMTYxLTAuMTA0bDAuNTYzLDIuNjgyQzExLjI4OSwxOC4xODMsNy44MzUsMTguMTgzLDcuODM1LDE4LjE4M3oiLz4NCgk8L2c+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8L3N2Zz4NCg==" />
								${continent.name}</a></span>
						</c:forEach>
					</p>
				</div>
			</div>
		</div>
	</div>



	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-start mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading">Promowane</span>
					<h2 class="mb-4">Nasze <strong>najlepsze wycieczki</strong> </h2>
				</div>
			</div>
		</div>

		<!-- dodać oferty promowane -->
		<div class="container-fluid">
			<div class="row">
				<c:forEach items="${listOfPromoted}" var="promoted">
				<div class="col-sm col-md-6 col-lg ftco-animate">
					<div class="destination">
						<a href="#" class="img img-2 d-flex justify-content-center align-items-center"
							style="background-image: url(<c:url value="/resources/images/destination-3.jpg"/>);">
							<div class="icon d-flex justify-content-center align-items-center">
								<span class="icon-search2"></span>
							</div>
						</a>
						<div class="text p-3">
							<div class="d-flex">
								<div class="one">
									<h3><a href="#">${promoted.name}</a></h3>
									<p class="foodType">${promoted.type}
									</p>
								</div>
								<div class="two">
									<span class="price">${promoted.cost} zł/noc</span>
								</div>
							</div>
							<p>Hotel: ${promoted.hotelEntity.name}<br>
								Ilość miejsc dla dorosłych: ${promoted.maxAdult}<br>
								Ilość miejsc dla dzieci: ${promoted.maxChild}
							</p>
							<p class="days"><span>${promoted.fromDate} -> ${promoted.toDate}, ${promoted.days} dni</span></p>
							<hr>

							<span><span class="material-icons">
									flight_takeoff
								</span> ${promoted.fromAirport.name}, ${promoted.fromAirport.cityEntity.name}</span>
							<button type="button" class="btn btn-info btn-lg btn-block">Więcej</button>

						</div>
					</div>
				</div>
				</c:forEach>
					</div>
				</div>
			</div>
		</div>

	</section>

<section class="ftco-section bg-light">
	<div class="container">
		<div class="row justify-content-start mb-5 pb-3">
			<div class="col-md-7 heading-section ftco-animate">
				<span class="subheading">Wycieczki</span>
				<h2 class="mb-4"> <strong>Wszystkie wycieczki</strong> </h2>
			</div>
		</div>
	</div>

	<!-- dodać oferty promowane -->
	<div class="container-fluid">
		<div class="row">
			<c:forEach items="${listOfTravels}" var="travel">
				<div class="col-sm col-md-6 col-lg ftco-animate">
					<div class="destination">
						<a href="#" class="img img-2 d-flex justify-content-center align-items-center"
						   style="background-image: url(<c:url value="/resources/images/destination-3.jpg"/>);">
							<div class="icon d-flex justify-content-center align-items-center">
								<span class="icon-search2"></span>
							</div>
						</a>
						<div class="text p-3">
							<div class="d-flex">
								<div class="one">
									<h3><a href="#">${travel.name}</a></h3>
									<p class="foodType">${travel.type}
									</p>
								</div>
								<div class="two">
									<span class="price">${travel.cost} zł/noc</span>
								</div>
							</div>
							<p>Hotel: ${travel.hotelEntity.name}<br>
								Ilość miejsc dla dorosłych: ${travel.maxAdult}<br>
								Ilość miejsc dla dzieci: ${travel.maxChild}
							</p>
							<p class="days"><span>${travel.fromDate} -> ${travel.toDate}, ${travel.days} dni</span></p>
							<hr>

							<span><span class="material-icons">
									flight_takeoff
								</span> ${travel.fromAirport.name}, ${travel.fromAirport.cityEntity.name}</span>
							<button type="button" class="btn btn-info btn-lg btn-block">Więcej</button>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	</div>
	</div>

</section>
<%@include file="dynamic/footer.jspf"%>

<%@include file="dynamic/js.jspf"%>

</body>

</html>