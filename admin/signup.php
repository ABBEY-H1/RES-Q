<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Admin Signup</title>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/all.css'>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/fontawesome.css'><link rel="stylesheet" href="assets/css/style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="container">
	<div class="screen">
		<div class="screen__content">
			<form class="login" method="post">
				<div class="login__field">
					<i class="login__icon fas fa-user"></i>
					<input name="user_name" type="text" class="login__input" placeholder="Username">
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>
					<input name="password" type="password" class="login__input" placeholder="Password">
				</div>
				<button class="button login__submit">
					<span class="button__text">Sign Up</span>
					<i class="button__icon fas fa-chevron-right"></i>
				</button>				
			</form>
            <?php 
				/*error_reporting(0);
				ini_set('display_errors', 0);*/
session_start();

	include("connection.php");
	include("functions.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$user_name = $_POST['user_name'];
		$password = $_POST['password'];
		if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
		{

			//save to database
			$query = "insert into admin (user_name,password) values ('$user_name','$password')";
			mysqli_query($con, $query);
			header("Location: login.php");
            echo "You have been succesfully registered";
			die;
		}else
		{
			echo "Please enter some valid information!";
		}
	}
?>
		</div>
		<div class="screen__background">
			<span class="screen__background__shape screen__background__shape4"></span>
			<span class="screen__background__shape screen__background__shape3"></span>		
			<span class="screen__background__shape screen__background__shape2"></span>
			<span class="screen__background__shape screen__background__shape1"></span>
		</div>		
	</div>
</div>
<!-- partial -->
  
</body>
</html>