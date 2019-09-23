<!-- View Code -->
<?php
	error_reporting(0);
	ini_set('display_errors', 0);
	
?>
<html>
	<head>
		<title>Student</title>
		<link href="css/Login.css" rel="stylesheet" type="text/css" media="all"/>
		<link rel="stylesheet" href="css/font-awesome.css">

	</head>

	<body>
	<?php include 'header.php';?>
		<div class="pio-right" style="background-image: url(school/1.jpg); background-size:cover; background-attachment:fixed;">
			<form name="form1" action="student.php" method="post">
				<div class="pio-right-h2">
					<h2>STUDENT SEARCH</h2>
				</div>
				
				<div class="pio-name">
					<span><i class="fa fa-envelope" aria-hidden="true"></i></span>
					<input type="text" name="matric" placeholder="Matriculation Number" required=""/>
				</div>
				
				<div class="pio-submit">
					<input type="submit" value="SEARCH" name="loginid">
				</div>
			</form>
		</div>
<?php
	$mat = $_POST['matric'];
	
	if (isset($_POST['loginid'])){
		require "connect.php";
		try{
			$sql = "SELECT * FROM student WHERE matricNo = '$mat'";
			$stmt = $conn->query($sql);
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
		}
		catch (PDOException $e){
			die("Could not connect to the database $db :" . $e->getMessage());
		}


?>
		<div class="clear"></div>
		


			<center style="margin-top:50px;">
			<h2>Student Records</h2>
			<table cellspacing="20px" bgcolor="" `border="1" width="60%" height="300px">
					
					
					<!-- Condtion for fetching from database -->
					<?php
						while ($row = $stmt->fetch()){
					?>

					<tr><th class="column1">Matric Number</th> <td class="column1"><?php echo ($row['matricNo']);?></td> </tr>
					<tr><th class="column2">Department</th> <td class="column2"><?php echo ($row['departmentName']);?></td></tr>
					<tr><th class="column3">Name</th> <td class="column3"><?php echo ($row['Name']);?></td> </tr>
					<tr><th class="column4">Gender</th> <td class="column4"><?php echo ($row['Gender']);?></td> </tr>
					<tr><th class="column5">Date Of Birth</th> <td class="column5"><?php echo ($row['date_of_birth']);?></td>
					<tr><th class="column6">Level</th> <td class="column6"><?php echo ($row['level']);?></td> </td>
					
					<?php
						}
					?>
					
					<!-- Close Fetch Condition -->
			</table>
			</center>

		<?php
		
			$conn=null;
	}
		?>

		<?php include 'footer.php';?>


	</body>
</html>