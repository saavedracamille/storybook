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
</head>
<body>
	<script language="JavaScript">
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

		// Here we run a very simple test of the Graph API after login is
		// successful.  See statusChangeCallback() for when this call is made.
		function testAPI() {
			console.log('Welcome!  Fetching your information.... ');
			FB.api('/me',function(response) {
				console.log('Successful login for: '
						+ response.name);
				document.getElementById('status').innerHTML = 'Thanks for logging in, ' + response.name + '!';
				FB.api("me?fields=birthday,first_name,gender,hometown,last_name,middle_name,location,family{name,relationship},id,education,work,posts.limit(10){with_tags,message,place,updated_time,id}, likes{name,category,id}, events{name,place,id,rsvp_status}",
								{since : 'yesterday','limit' : '3'}, getPost);
			});
		}
		var i, j, k, l= 0;
		var family = [];
		var posts = [];
		var events = [];
		var likes = [];
		
		var getPost = function(response) {
			
			family.push(response.family.data);
			console.log(JSON.stringify(response.family.data))
			if (response.paging != "undefined") {
				nextPage = response.family.paging.next;
				$.get(nextPage, familyIterate, "json");
			}
			
			posts.push(response.posts.data);
			if (response.posts.paging != "undefined") {
				nextPage = response.posts.paging.next;
				$.get(nextPage, postsIterate, "json");
			}
			
			events.push(response.events.data);
			if (response.posts.paging != "undefined") {
				nextPage = response.events.paging.next;
				$.get(nextPage, eventsIterate, "json");
			}
			
			likes.push(response.likes.data);
			if (response.posts.paging != "undefined") {
				nextPage = response.likes.paging.next;
				$.get(nextPage, likesIterate, "json");
			}
			//alert(JSON.stringify(response));
			//callServlet(response);
		}

		var familyIterate = function(response) {
			family.push(response);
			console.log(JSON.stringify(response))
			if (response.paging != "undefined") {
				if (i < 2) {
					nextPage = response.paging.next;
					i++;
					$.get(nextPage, familyIterate, "json");
				}
			}
		}

		var postsIterate = function(response) {
			posts.push(response);
			console.log(JSON.stringify(response))
			if (response.paging != "undefined") {
				if (j < 2) {
					nextPage = response.paging.next;
					j++;
					$.get(nextPage, postIterate, "json");
				}
			}
		}
		
		var eventsIterate = function(response) {
			events.push(response);
			console.log(JSON.stringify(response))
			if (response.paging != "undefined") {
				if (k < 2) {
					nextPage = response.paging.next;
					k++;
					$.get(nextPage, eventsIterate, "json");
				}
			}
		}
		
		var likesIterate = function(response) {
			likes.push(response);
			console.log(JSON.stringify(response))
			if (response.paging != "undefined") {
				if (l < 2) {
					nextPage = response.paging.next;
					l++;
					$.get(nextPage, likesIterate, "json");
				}
			}
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
					//var obj = jQuery.parseJSON(response);
				    //   alert(obj);
		           },
				error: function (response) {
			           console.error(response);
			        }
		      });
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