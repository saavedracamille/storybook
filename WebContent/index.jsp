<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript"
	src="http://connect.facebook.net/en_US/all.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.ba-bbq/1.2.1/jquery.ba-bbq.min.js"></script>
<title>StoryBook</title>

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
				FB.api("me?fields=birthday,first_name,gender,hometown,last_name,middle_name,location,family{name,relationship},id,education,work, posts.limit(10){with_tags,message,place,updated_time,id}, likes{name,category,id}, events{name,place,id,rsvp_status}",
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
			callServlet(response);
		}

		var familyIterate = function(response) {
			family.push(response);
			console.log(JSON.stringify(response))
			if (response.paging != "undefined") {
				if (i < 3) {
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
				if (j < 3) {
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
				if (k < 3) {
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
				if (l < 3) {
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
				    //window.location.href = "NewHTML";
		           },
				error: function (response) {
			           console.error(response);
			        }
		      });
		}
					
	</script>

	<fb:login-button
		scope="public_profile,email,user_posts,user_about_me,user_birthday, user_education_history,user_friends,user_hometown,user_likes,user_location,user_relationships,user_work_history,user_events,rsvp_event"
		onlogin="checkLoginState();">
	</fb:login-button>

	<div id="status"></div>


</body>
</html>