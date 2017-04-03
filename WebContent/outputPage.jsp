<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>FB Stories: Output</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
	<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:100,300,400'>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="main">
  		<header>
  			<h1>Camille Saavedra</h1>
  		</header>

  		<h2></h2>

  		<section class="information">
  			<c:out value="${sessionScope.story}"/>
  		</section>

		<div class="detail">
    		<svg class="close">
      			<use xlink:href="#close"></use>
    		</svg>
    		<div class="inf">
				<img src="http://movium.io/data/posters/eqFckcHuFCT1FrzLOAvXBb4jHwq.jpg" alt="" class="poster" />
      			<div class="title">About FB Stories</div>
      			<div class="desc">
       	 			Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
      			</div>
    		</div>
  		</div>

  		<div class="button-div" style="left: -10%">
  			<input type="submit" class="button" onclick="window.location='OutputPage';" value="Try Again">
			<input type="submit" class="button" value="Give Us Your Feedback" style="width:25%">
		</div>
	</div>

	<!-- Icons -->
	<svg  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="display:none;">
	  <symbol id="close" viewBox="0 0 212.982 212.982">
	    <g>
	      <path style="fill-rule:evenodd;clip-rule:evenodd;" d="M131.804,106.491l75.936-75.936c6.99-6.99,6.99-18.323,0-25.312   c-6.99-6.99-18.322-6.99-25.312,0l-75.937,75.937L30.554,5.242c-6.99-6.99-18.322-6.99-25.312,0c-6.989,6.99-6.989,18.323,0,25.312   l75.937,75.936L5.242,182.427c-6.989,6.99-6.989,18.323,0,25.312c6.99,6.99,18.322,6.99,25.312,0l75.937-75.937l75.937,75.937   c6.989,6.99,18.322,6.99,25.312,0c6.99-6.99,6.99-18.322,0-25.312L131.804,106.491z" fill="#525661"/>
	    </g>
	  </symbol>
	</svg>

	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
    <script src="js/index.js"></script>
</body>
</html>