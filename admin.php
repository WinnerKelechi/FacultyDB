<?php
	error_reporting(0);
	ini_set('display_errors', 0);
?>

<?php
    include('connect.php');

	$userName = $_POST["userid"];
	$passWord = $_POST["passid"];
	$submit = $_POST["submitid"];

    if (isset($submit)){
		try
		{	
			$stmt = $conn->prepare("SELECT * FROM admin WHERE name =:name");
			$stmt->execute(array(":name"=>$userName));
			$row = $stmt->fetch(PDO::FETCH_ASSOC);
			$count = $stmt->rowCount();
			
			if($row['password']==$passWord){
				SESSION_START();	
				$_SESSION['admin_pass']= $passWord;
				$_SESSION['admin_name']= $userName;
				$_SESSION['admin_id']= $row['staffId'];
				echo "<script language='JavaScript'>
				window.location.assign('admin_panel.php');</script>";
			}
			else{
			 $msg="<span class='msg'>email or password does not exist in the db.</span>"; // wrong details 
			}
		}
		catch(PDOException $e){
			echo $e->getMessage();
		}
		$conn = null;
	}
?>

<html>
	<head>
		<title>Admin Login</title>
		<link href="css/Login.css" rel="stylesheet" type="text/css" media="all"/>
		<link rel="stylesheet" href="css/font-awesome.css">
<style>
<!--
.msg {
	padding:10px 20px 10px 20px;
	background:#ff0000;
	color:#fff;
	margin:auto;
}
-->

</style>
	</head>

	<body>
	<?php include 'header.php';?>
		<div class="pio-right">
			<form name="form1" action="admin.php" method="post">
				<div class="pio-right-h2">
					<h2>ADMIN LOGIN</h2>
					<center>
					<?php 
					 echo $msg;
					?>
					</center>
				</div>
				
				<div class="pio-name">
					<span><i class="fa fa-envelope" aria-hidden="true"></i></span>
					<input type="text" name="userid" placeholder="Username" required=""/>
				</div>
	
				<div class="pio-psw">
					<span><i class="fa fa-lock" aria-hidden="true"></i></span>
					<input type="password" name="passid" placeholder="Password" required=""/>
				</div>
				<div class="clear"></div>
				
				<div class="pio-submit">
					<input type="submit" value="Login" name="submitid">
				</div>
			</form>
		</div>
		
		<div class="clear"></div>

		<?php include 'footer.php';?>


	</body>
</html>