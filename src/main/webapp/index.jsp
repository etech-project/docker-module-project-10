<head>
	<div class="container flex-column-container full-height">
		<div class="container-body flex-body flex-row-container align-items-center align-content-center">
			<h1 style="text-align:center;">
            <img src="./assets/img/common.svg" onclick="location.href='index.jsp'" alt="Common" />
          </h1>
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<style>
			body {
				font-family: Arial, Helvetica, sans-serif;
				background-color: #b3d2d4
			}
			
			
			input[type=text],
			input[type=password] {
				width: 100%;
				padding: 12px 20px;
				margin: 8px 0;
				display: inline-block;
				border: 1px solid rgb(167, 158, 158);
				box-sizing: border-box;
			}
			
			button {
				background-color: #0c1d17;
				color: white;
				padding: 14px 20px;
				margin: 8px 0;
				border: none;
				cursor: pointer;
				width: 100%;
			}
			
			button:hover {
				opacity: 0.8;
			}
			
			.cancelbtn {
				width: auto;
				padding: 10px 18px;
				background-color: #d63226;
			}
			
			.imgcontainer {
				text-align: center;
				margin: 24px 0 12px 0;
			}
			
			img.avatar {
				width: 15%;
			}
			
			.container {
				padding: 16px;
			}
			
			span.psw {
				float: right;
				padding-top: 16px;
			}
			/* Change styles for span and cancel button on extra small screens */
			
			@media screen and (max-width: 300px) {
				span.psw {
					display: block;
					float: none;
				}
				.cancelbtn {
					width: 100%;
				}
			}
			</style>
			<form action="http://ec2-18-116-71-121.us-east-2.compute.amazonaws.com:8080/" method="post">
				<div class="imgcontainer"> <img src="./assets/img/img_avatar2.png" alt="Avatar" class="avatar"> </div>
				<div class="container">
					<label for="uname"><strong>Joe Na Chairman!!!</strong></label>
					<input type="text" pattern="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" placeholder="Enter Email" name="uname" required>
					<label for="psw"><strong>Password</strong></label>
					<input type="password" placeholder="Enter Password" name="psw" id="myInput" required>
					<input type="checkbox" onclick="myFunction()">Show Password

					<script>
					function myFunction() {
					  var x = document.getElementById("myInput");
					  if (x.type === "password") {
						x.type = "text";
					  } else {
						x.type = "password";
					  }
					}
					</script>
					
					<button type="submit">Login</button>
					<label>
						<input type="checkbox" checked="checked" name="remember"> Remember me </label>
				</div>
				<div class="container" style="background-color:#E6F6F7">
					<button onclick="document.getElementById('id01').style.display='block'" type="button" class="cancelbtn">Register</button> 
          <span onclick="location='page2.jsp';" value="click here" 
          class="psw"><a href="#">New Login Experience?</a></span> </div>
          
			</form>
		</div>
	</div>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
	body {
		font-family: Arial, Helvetica, sans-serif;
		background-color: #E6F6F7
	}
	/* Full-width input fields */
	
	input[type=text],
	input[type=password] {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		display: inline-block;
		border: 1px solid #ccc;
		box-sizing: border-box;
	}
	/* Set a style for all buttons */
	
	button {
		background-color: #04AA6D;
		color: white;
		padding: 14px 20px;
		margin: 8px 0;
		border: none;
		cursor: pointer;
		width: 100%;
	}
	
	button:hover {
		opacity: 0.8;
	}
	/* Extra styles for the cancel button */
	
	.cancelbtn {
		width: auto;
		padding: 10px 18px;
		background-color: #f44336;
	}
	/* Center the image and position the close button */
	
	.imgcontainer {
		text-align: center;
		margin: 24px 0 12px 0;
		position: relative;
	}
	
	/* img.avatar {
		width: 20%;
	} */
	
	.container {
		padding: 16px;
	}
	
	span.psw {
		float: right;
		padding-top: 16px;
	}
	/* The Modal (background) */
	
	.modal {
		display: none;
		/* Hidden by default */
		position: fixed;
		/* Stay in place */
		z-index: 1;
		/* Sit on top */
		left: 0;
		top: 0;
		width: 100%;
		/* Full width */
		height: 100%;
		/* Full height */
		overflow: auto;
		/* Enable scroll if needed */
		background-color: rgb(0, 0, 0);
		/* Fallback color */
		background-color: rgba(0, 0, 0, 0.4);
		/* Black w/ opacity */
		padding-top: 60px;
	}
	/* Modal Content/Box */
	
	.modal-content {
		background-color: #fefefe;
		margin: 5% auto 15% auto;
		/* 5% from the top, 15% from the bottom and centered */
		border: 1px solid #888;
		width: 80%;
		/* Could be more or less, depending on screen size */
	}
	/* The Close Button (x) */
	
	.close {
		position: absolute;
		right: 25px;
		top: 0;
		color: #000;
		font-size: 35px;
		font-weight: bold;
	}
	
	.close:hover,
	.close:focus {
		color: red;
		cursor: pointer;
	}
	/* Add Zoom Animation */
	
	.animate {
		-webkit-animation: animatezoom 0.6s;
		animation: animatezoom 0.6s
	}
	
	@-webkit-keyframes animatezoom {
		from {
			-webkit-transform: scale(0)
		}
		to {
			-webkit-transform: scale(1)
		}
	}
	
	@keyframes animatezoom {
		from {
			transform: scale(0)
		}
		to {
			transform: scale(1)
		}
	}
	/* Change styles for span and cancel button on extra small screens */
	
	@media screen and (max-width: 300px) {
		span.psw {
			display: block;
			float: none;
		}
		.cancelbtn {
			width: 100%;
		}
	}
	</style>
	<!-- The Modal (contains the Sign Up form) -->
	<div id="id01" class="modal"> <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal"></span>
		<form class="modal-content" action="http://ec2-3-142-149-113.us-east-2.compute.amazonaws.com:8080/">
			<div class="container">
				<h1>Sign Up</h1>
				<p>Please fill in this form to create an account..</p>
				<hr>
				<label for="email"><strong>Username</strong></label>
				<input type="text" placeholder="Enter Email" name="email" required>
				<label for="psw"><strong>Password</strong></label>
				<input type="password" placeholder="Enter Password" name="psw" required>
				<label for="psw-repeat"><strong>Repeat Password</strong></label>
				<input type="password" placeholder="Repeat Password" name="psw-repeat" required>
				<label>
					<input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me </label>
				<p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
				<div class="clearfix">
					<button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
					<button type="submit" class="signup">Sign Up</button>
				</div>
			</div>
		</form>
	</div>
	</body>

	</html>
