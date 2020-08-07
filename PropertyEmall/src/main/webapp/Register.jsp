<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport"
	content="width=device-width, initial-scale=1.0">
<title>Register_page</title>
<style>
body, html {
	height: 100%;
	font-family: Arial, Helvetica, sans-serif;
}

body {
	background-image:
		url("https://images.unsplash.com/photo-1519567241046-7f570eee3ce6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80.jpg");
	background-color: lightseagreen;
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	position: relative;
}

* {
	box-sizing: border-box;
}

.regform {
	position: absolute;
	right: 0;
	max-width: 350px;
	margin: 120px;
	padding: 25px;
	background-color: white;
}

.data, #pwd, #confirmpwd {
	width: 100%;
	padding: 15px;
	margin: 10px 0 22px 0;
	border: none;
	background: rgb(241, 231, 231);
}

.btn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.cmpy {
	font-size: 70px;
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande',
		'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	color: white;
	float: left;
	padding-left: 170px;
	padding-top: 90px;
	text-shadow: 3px 3px 10px black;
	position: fixed;
}
</style>
<script>
	function myFunction() {
		var p1 = document.getElementById("pwd").value;
		var p2 = document.getElementById("confirmpwd").value;
		if ((p1.localeCompare(p2)) == 0) {
			alert("Password is Confirmed");
			return true;
		}
		if (p1.localeCompare(p2) != 0) {
			alert("Please enter the same password as above");
			return false;
		}
	}
</script>
</head>

<body>
	<section class="cmpy">
		<p>
		<center>
			<b>ABC Mall</b>
		</center>
		Welcomes You
		</p>
	</section>
	<section>
		<div>
			<form action="LoginRegister" class="regform" method="POST"
				onsubmit="return myFunction(this);">
				<h2>
					<center>Registration Form</center>
				</h2>
				<br> <label for="name"><b>UserName</b></label>
				 <input type="text" class="data" placeholder="Enter UserName"
					name="username" required> <label for="email"><b>Email</b></label>
				
				<input type="text" class="data" placeholder="Enter Email"
					name="email" required> <label for="phone number"><b>Phone
						Number</b></label> 
				<input type="text" class="data"	placeholder="Enter Phone number" name="Phno" required> <label
					for="psw"><b>Password</b></label>
				 <input type="password" id="pwd" placeholder="Enter Password" name="password1" minlength="8" required>

				<label for="psw"><b>Confirm Password</b></label> 
				<input type="password" id="confirmpwd" placeholder="Confirm Password" name="password2" required> <label for="usertype"><b>Select
						UserType</b></label> <br> <br><justify>
				<input type="radio" class="type" name="usertype"
					value="Marketing Staff"> <label for="type1"><b>Marketing
						Staff</b></label> <br>
				<input type="radio" class="type" name="usertype" value="Space owner"
					required> <label for="type2"><b>Space Owner</b></label></justify>
				<br> <br>
				<input type="submit" class="btn" value="Register">
				<br> <br> <a href="Login.jsp">
					<center>Already have account?Login</center>
				</a> <br>
			</form>
		</div>
	</section>
</body>

</html>