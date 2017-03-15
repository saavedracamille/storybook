<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>FB Stories</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
	<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:100,300,400'>
	<link rel="stylesheet" href="css/style.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
	<script type="text/javascript" src="http://connect.facebook.net/en_US/all.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.ba-bbq/1.2.1/jquery.ba-bbq.min.js"></script>
</head>
<body>
	<script language="JavaScript">
		var i = 0, j = 0, k = 0, l = 0;
		var fString = "", pString = "", eString = "", lString = "";
		var family = [];
		var posts = [];
		var events = [];
		var likes = [];
		var fFlag = false, pFlag = false, eFlag = false, lFlag = false;
		
		
		function statusChangeCallback(response) {
			console.log('statusChangeCallback');
			console.log(response);
			if (response.status === 'connected') {
				// Logged into your app and Facebook.
				testAPI();
			} else if (response.status === 'not_authorized') {
				// The person is logged into Facebook, but not your app.
				document.getElementById('status').innerHTML = 'Please log '
						+ 'into this app.';
			} else {
				// The person is not logged into Facebook, so we're not sure if
				// they are logged into this app or not.
				document.getElementById('status').innerHTML = 'Please log '
						+ 'into Facebook.';
			}
		}

		function checkLoginState() {
			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});
		}

		window.fbAsyncInit = function() {
			FB.init({
				appId : '313729792316097',
				cookie : true, // enable cookies to allow the server to access 
				// the session
				xfbml : true, // parse social plugins on this page
				version : 'v2.8' // use graph api version 2.5
			});

			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});

		};

		// Load the SDK asynchronously
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "https://connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		function testAPI() {
			console.log('Welcome!  Fetching your information.... ');
			FB.api('/me',function(response) {
				console.log('Successful login for: '
						+ response.name);
				document.getElementById('status').innerHTML = 'Thanks for logging in, ' + response.name + '!';
				FB.api("me?fields=birthday,first_name,gender,hometown,last_name,middle_name,location,family{name,relationship},id,education,work, posts{with_tags,message,place,updated_time,id,story}, likes{name,category,id}, events{name,place,id,rsvp_status}",
						callServlet);
			});	
		}
		
		function callServlet(about) {
			 $.ajax({
				type : "POST",
				url : 'ToDB',
				data : {
					family : JSON.stringify(family),
					about : JSON.stringify(about),
					events : JSON.stringify(events),
					likes : JSON.stringify(likes),
					posts : JSON.stringify(posts)
				},
				dataType : 'json',
				success: function(response) {
		           },
				error: function (response) {
			           console.error(response);
			        }
		      }); 
		}

		var checker = function(response) {
			if (fFlag && pFlag && eFlag && lFlag) {
				callServlet(response);
				console.log("in checker in condition");
			}
		}
			
		var getFamily = function(response) {
			origresponse = response;
			console.log("family");
			fString += JSON.stringify(response.family.data).substring(0, JSON.stringify(response.family.data).length - 1);
			console.log(fString);
			if (response.paging != undefined) {
				nextPage = response.family.paging.next;
				$.get(nextPage, familyIterate = function(response) {
					if (JSON.stringify(response.data) != "[]"){
						var temp = JSON.stringify(response.data).substring(1, JSON.stringify(response.data).length - 1);
						fString += "," + temp;
						if (response.paging != undefined) {
							console.log("i " + i);
							nextPage = response.paging.next;
							i++;
							$.get(nextPage, familyIterate, "json");
						} else if (response.paging == undefined) {
							fString += "]";
							family.push(JSON.parse(fString));
							fFlag = true;
		 					getPosts(origresponse);
		 					checker(origresponse);
						}
					} else {
						fString += "]";
						family.push(JSON.parse(fString));
						fFlag = true;
						getPosts(origresponse);
					}
				}, "json");
			} else {
				fString += "]";
				family.push(JSON.parse(fString));
				fFlag = true;
				getPosts(origresponse);
			}
		}
				
		function getPosts(response) {
			origresponse = response;
			console.log("posts");
			pString += JSON.stringify(response.posts.data).substring(0, JSON.stringify(response.posts.data).length - 1);
			if (response.posts.paging != undefined) {
				nextPage = response.posts.paging.next;
				$.get(nextPage, postsIterate = function(response) {
					if (JSON.stringify(response.data) != "[]"){
						var temp = JSON.stringify(response.data).substring(1, JSON.stringify(response.data).length - 1);
						pString += "," + temp;
						if (response.paging.next != undefined) {
							console.log("j " + j)
							nextPage = response.paging.next;
							console.log("next page " + nextPage);
							j++;
							$.get(nextPage, postsIterate, "json");
						} else if (response.paging == undefined) {
							pString += "]";
							posts.push(JSON.parse(pString));
							pFlag = true;
							getEvents(origresponse);
							checker(origresponse);
						}
					} else {
						pString += "]";
						posts.push(JSON.parse(pString));
						pFlag = true;
						getEvents(origresponse);
					}
				}, "json");
			} else {
				pString += "]";
				posts.push(JSON.parse(pString));
				pFlag = true;
				getEvents(origresponse);
			}
		}
		
		function getEvents(response) {
			origresponse = response;
			console.log("events");
			eString += JSON.stringify(response.events.data).substring(0, JSON.stringify(response.events.data).length - 1);
			if (response.events.paging.next != undefined) {
					nextPage = response.events.paging.next;
				console.log("events nextpage is " + nextPage);
					$.get(nextPage, eventsIterate = function(response) {
						if (JSON.stringify(response.data) != "[]"){
		 					var temp = JSON.stringify(response.data).substring(1, JSON.stringify(response.data).length - 1);
		 					eString += "," + temp;
							if (response.paging.next != undefined) {
								console.log("k " + k)
								nextPage = response.paging.next;
								console.log("inside events nextPage " + nextPage)
								k++;
								$.get(nextPage, eventsIterate, "json");
							}
							else {
								eString += "]";
							events.push(JSON.parse(eString));
			 					eFlag = true;
			 					getLikes(origresponse);
			 					checker(origresponse);
			 				}
						} else {
							eString += "]";
							events.push(JSON.parse(eString));
							eFlag = true;
							getLikes(origresponse);
						}
					}, "json");
					
			} else {
				eString += "]";
				events.push(JSON.parse(eString));
				eFlag = true;
				getLikes(origresponse);
			}
		}
		
		function getLikes(response) {	
			origresponse = response;
			console.log("likes");
			lString += JSON.stringify(response.likes.data).substring(0, JSON.stringify(response.likes.data).length - 1);
			if (response.likes.paging.next != undefined) {
				nextPage = response.likes.paging.next;
				$.get(nextPage, likesIterate = function(response) {
					if (JSON.stringify(response.data) != "[]"){
						var temp = JSON.stringify(response.data).substring(1, JSON.stringify(response.data).length - 1);
							lString += "," + temp;
						if (response.paging.next != undefined) {
							console.log("l " + l)
							nextPage = response.paging.next;
							l++;
							$.get(nextPage, likesIterate, "json");							
						} else {
							lString += "]";
							likes.push(JSON.parse(lString));
		 					lFlag = true;
		 					checker(origresponse);
		 				}
					} else {
						lString += "]";
						likes.push(JSON.parse(lString));
						lFlag = true;
						checker(origresponse);
					}
				}, "json");
			} else {
				lString += "]";
				likes.push(JSON.parse(lString));
				lFlag = true;
				checker(origresponse);
			}
		}

	</script>
	<div class="main">
  		<header>
  			<h1><strong>SB</strong> StoryBook</h1>
  		</header>

  		<h2></h2>

  		<section class="information">
  			<div class="inf">
  				<img src="http://movium.io/data/posters/eqFckcHuFCT1FrzLOAvXBb4jHwq.jpg" alt="" class="poster" />
  				<div class="title">About Storybook</div>
  				<div class="desc">
					Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
				</div>
  			</div>
  			<div class="inf">
  				<img src="http://movium.io/data/posters/eqFckcHuFCT1FrzLOAvXBb4jHwq.jpg" alt="" class="poster" />
  				<div class="title">Something</div>
  				<div class="desc">
					Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
				</div>
  			</div>
  			<div class="inf">
  				<img src="http://movium.io/data/posters/eqFckcHuFCT1FrzLOAvXBb4jHwq.jpg" alt="" class="poster" />
  				<div class="title">Meet The Developers</div>
  				<div class="desc">
					Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
				</div>
  			</div>
  			<div class="inf">
				<img src="http://movium.io/data/posters/eqFckcHuFCT1FrzLOAvXBb4jHwq.jpg" alt="" class="poster" />
				<div class="title">Diclaimer</div>
				<div class="desc">
					Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
				</div>
			</div>
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

  		<div class="button-div">
			<fb:login-button
				scope="public_profile,email,user_posts,user_about_me,user_birthday, user_education_history,user_friends,user_hometown,user_likes,user_location,user_relationships,user_work_history,user_events,rsvp_event"
				onlogin="checkLoginState();"
				data-auto-logout-link="true">
			</fb:login-button>
			<div id="status"></div>
			<!-- <form action="OutputPage" method="get">
   			 	<input type="submit" class="button" value="Try Me!">
			</form> -->
			<input type="submit" class="button" onclick="window.location='OutputPage';" value="Try Me!">
			<input type="submit" class="button" value="Contact Us">
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